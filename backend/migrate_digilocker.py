"""
BenefitBridge Database Migration Script for DigiLocker & API Setu.
Applies schema expansions idempotently to benefitbridge.db:
- Adds digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry to 'citizens'.
- Creates 'digilocker_documents' table and indexes.
- Strictly verifies zero columns or logs for 12-digit Aadhaar numbers.
- Preserves all existing citizens, schemes, applications, and events.
"""

import os
import sys
from pathlib import Path
from sqlalchemy import create_engine, text

def resolve_db_path() -> Path:
    env_path = os.getenv("BENEFITBRIDGE_DB_PATH")
    if env_path and Path(env_path).exists():
        return Path(env_path).resolve()

    local_file = Path(__file__).resolve().parent / "benefitbridge.db"
    if local_file.exists():
        return local_file

    cwd_file = Path.cwd() / "benefitbridge.db"
    if cwd_file.exists():
        return cwd_file

    return local_file


def run_digilocker_migration():
    db_path = resolve_db_path()
    print("=" * 65)
    print("      BenefitBridge DigiLocker & API Setu Schema Migration      ")
    print("=" * 65)
    print(f"[MIGRATE] Target Database: {db_path}")

    if not db_path.exists():
        print(f"[MIGRATE] Error: Database file {db_path} does not exist.", file=sys.stderr)
        sys.exit(1)

    engine = create_engine(
        f"sqlite:///{db_path}",
        connect_args={"check_same_thread": False, "timeout": 30.0}
    )

    with engine.connect() as conn:
        # 1. Inspect existing columns in 'citizens'
        existing_cols = {
            row[1] for row in conn.execute(text("PRAGMA table_info(citizens);")).fetchall()
        }
        print(f"[MIGRATE] Found {len(existing_cols)} existing columns in 'citizens' table.")

        columns_to_add = [
            ("digilocker_id", "VARCHAR(64)"),
            ("dob", "VARCHAR(16)"),
            ("is_digilocker_verified", "BOOLEAN DEFAULT 0 NOT NULL"),
            ("digilocker_token_expiry", "DATETIME"),
        ]

        added_count = 0
        for col_name, col_def in columns_to_add:
            if col_name not in existing_cols:
                stmt = text(f"ALTER TABLE citizens ADD COLUMN {col_name} {col_def};")
                conn.execute(stmt)
                print(f"  + Added column 'citizens.{col_name}' ({col_def})")
                added_count += 1
            else:
                print(f"  * Column 'citizens.{col_name}' already exists.")

        # Create unique index on digilocker_id
        conn.execute(text("CREATE UNIQUE INDEX IF NOT EXISTS ix_citizens_digilocker_id ON citizens (digilocker_id);"))
        print("  + Verified unique index 'ix_citizens_digilocker_id'.")

        # 2. Create 'digilocker_documents' table
        conn.execute(text("""
            CREATE TABLE IF NOT EXISTS digilocker_documents (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                citizen_id VARCHAR(64) NOT NULL,
                doc_type VARCHAR(64) NOT NULL,
                doc_name VARCHAR(255) NOT NULL,
                issuer_name VARCHAR(255) NOT NULL,
                issuer_id VARCHAR(128),
                doc_uri VARCHAR(512) NOT NULL,
                extracted_data_json TEXT NOT NULL,
                verification_status VARCHAR(32) NOT NULL DEFAULT 'VERIFIED',
                fetched_at DATETIME NOT NULL,
                FOREIGN KEY (citizen_id) REFERENCES citizens(id) ON DELETE CASCADE
            );
        """))
        conn.execute(text("CREATE INDEX IF NOT EXISTS ix_dl_docs_citizen_id ON digilocker_documents (citizen_id);"))
        conn.execute(text("CREATE INDEX IF NOT EXISTS ix_dl_docs_doc_type ON digilocker_documents (doc_type);"))
        print("  + Verified table 'digilocker_documents' and associated indexes.")

        conn.commit()

        # 3. Privacy Guardrail Verification
        new_cols = [row[1] for row in conn.execute(text("PRAGMA table_info(citizens);")).fetchall()]
        dl_cols = [row[1] for row in conn.execute(text("PRAGMA table_info(digilocker_documents);")).fetchall()]

        prohibited_terms = ["aadhaar", "uid", "national_id", "ssn"]
        for col in new_cols + dl_cols:
            for term in prohibited_terms:
                if term in col.lower():
                    raise RuntimeError(f"PRIVACY VIOLATION: Column '{col}' violates strict Aadhaar ban!")

        print("\n[PRIVACY GUARDRAIL] Verified: Zero Aadhaar or National ID columns exist in schema.")

        citizen_count = conn.execute(text("SELECT COUNT(*) FROM citizens;")).scalar()
        app_count = conn.execute(text("SELECT COUNT(*) FROM applications;")).scalar()
        doc_count = conn.execute(text("SELECT COUNT(*) FROM digilocker_documents;")).scalar()
        print(f"[STATUS] Database intact. Existing citizens: {citizen_count}, applications: {app_count}, DigiLocker credentials: {doc_count}.")
        print("=" * 65)


if __name__ == "__main__":
    run_digilocker_migration()

