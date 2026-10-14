import os
from sqlalchemy import create_engine, event
from sqlalchemy.orm import declarative_base, sessionmaker

from pathlib import Path

DEFAULT_DB_PATH = str(Path(__file__).resolve().parent / "benefitbridge.db")
DATABASE_FILE = os.getenv("BENEFITBRIDGE_DB_PATH", DEFAULT_DB_PATH)
DATABASE_URL = f"sqlite:///{DATABASE_FILE}"

# check_same_thread=False is needed for SQLite when used with FastAPI multi-threading
# timeout=30 sets SQLite's busy timeout to prevent thread lock errors
engine = create_engine(
    DATABASE_URL,
    connect_args={
        "check_same_thread": False,
        "timeout": 30.0,
    },
    pool_size=10,
    max_overflow=20,
    pool_timeout=30.0,
    pool_pre_ping=True,
)


@event.listens_for(engine, "connect")
def set_sqlite_pragma(dbapi_connection, connection_record):
    """Enable Write-Ahead Logging (WAL) and busy handling for multi-threaded SQLite."""
    cursor = dbapi_connection.cursor()
    cursor.execute("PRAGMA journal_mode=WAL")
    cursor.execute("PRAGMA synchronous=NORMAL")
    cursor.execute("PRAGMA foreign_keys=ON")
    cursor.close()


SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()


def get_db():
    """Dependency generator that provides a SQLAlchemy session per request."""
    db = SessionLocal()
    try:
        yield db
    except Exception:
        db.rollback()
        raise
    finally:
        db.close()

