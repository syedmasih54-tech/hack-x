import os
import sqlite3
import sys
from pathlib import Path


def get_db_path() -> Path:
    """Resolves the SQLite database file path."""
    env_path = os.getenv("BENEFITBRIDGE_DB_PATH")
    if env_path:
        return Path(env_path).resolve()

    # Check current working directory and script directory
    cwd_db = Path.cwd() / "benefitbridge.db"
    if cwd_db.exists():
        return cwd_db

    script_dir_db = Path(__file__).resolve().parent / "benefitbridge.db"
    return script_dir_db


def repair_database():
    """
    Standalone migration and recovery script for BenefitBridge.
    Inspects PRAGMA table_info('citizens') and executes non-destructive
    ALTER TABLE statements to add missing demographic and economic columns.
    Preserves all existing application and citizen records intact.
    """
    db_path = get_db_path()
    print(f"[REPAIR] Connecting to SQLite database at: {db_path}")

    if not db_path.exists():
        print(f"[REPAIR] Error: Database file not found at {db_path}")
        sys.exit(1)

    conn = sqlite3.connect(str(db_path))
    cursor = conn.cursor()

    try:
        # 1. Enable WAL mode and busy timeout for high concurrency
        cursor.execute("PRAGMA journal_mode=WAL;")
        wal_status = cursor.fetchone()[0]
        cursor.execute("PRAGMA busy_timeout=5000;")
        print(f"[REPAIR] SQLite journal_mode configured: {wal_status.upper()}")

        # 2. Record pre-migration row counts to verify data integrity
        cursor.execute("SELECT count(*) FROM citizens;")
        pre_citizens_count = cursor.fetchone()[0]

        cursor.execute("SELECT count(*) FROM applications;")
        pre_applications_count = cursor.fetchone()[0]

        print(f"[REPAIR] Existing records before migration: {pre_citizens_count} citizens, {pre_applications_count} applications.")

        # 3. Inspect existing schema of 'citizens' table
        cursor.execute("PRAGMA table_info(citizens);")
        existing_cols = {col[1]: col[2] for col in cursor.fetchall()}
        print(f"[REPAIR] Detected existing columns in 'citizens': {list(existing_cols.keys())}")

        # Target demographic and economic columns required by BenefitBridge
        required_columns = [
            ("age", "INTEGER"),
            ("gender", "VARCHAR(32)"),
            ("marital_status", "VARCHAR(32)"),
            ("annual_income", "FLOAT DEFAULT 0.0 NOT NULL"),
            ("occupation", "VARCHAR(64)"),
        ]

        added_columns = []
        for col_name, col_def in required_columns:
            if col_name not in existing_cols:
                alter_stmt = f"ALTER TABLE citizens ADD COLUMN {col_name} {col_def};"
                print(f"[REPAIR] Executing migration: {alter_stmt}")
                cursor.execute(alter_stmt)
                added_columns.append(col_name)
            else:
                print(f"[REPAIR] Column '{col_name}' already exists. Skipping.")

        # 4. Optional backfill for default seeded demo records if demographic fields are NULL
        cursor.execute("""
            UPDATE citizens
            SET age = 65, gender = 'female', marital_status = 'widow', annual_income = 0.0, occupation = 'homemaker'
            WHERE id = 'CIT-SUNITA-65' AND (age IS NULL OR gender IS NULL);
        """)
        cursor.execute("""
            UPDATE citizens
            SET age = 20, gender = 'male', marital_status = 'unmarried', annual_income = 120000.0, occupation = 'student'
            WHERE id = 'CIT-RAHUL-20' AND (age IS NULL OR gender IS NULL);
        """)

        conn.commit()

        # 5. Verify post-migration integrity
        cursor.execute("SELECT count(*) FROM citizens;")
        post_citizens_count = cursor.fetchone()[0]

        cursor.execute("SELECT count(*) FROM applications;")
        post_applications_count = cursor.fetchone()[0]

        assert pre_citizens_count == post_citizens_count, "Citizen row count mismatch after migration!"
        assert pre_applications_count == post_applications_count, "Application row count mismatch after migration!"

        cursor.execute("PRAGMA table_info(citizens);")
        final_cols = [col[1] for col in cursor.fetchall()]

        print("==================================================")
        print("          DATABASE REPAIR & MIGRATION SUMMARY     ")
        print("==================================================")
        print(f"Columns Added       : {added_columns if added_columns else 'None (Already up-to-date)'}")
        print(f"Final Table Columns : {final_cols}")
        print(f"Citizens Preserved  : {post_citizens_count} (0 deleted)")
        print(f"Apps Preserved      : {post_applications_count} (0 deleted)")
        print("Status              : SUCCESS - Database is fully synchronized!")
        print("==================================================")

    except Exception as e:
        conn.rollback()
        print(f"[REPAIR] Migration failed with error: {e}", file=sys.stderr)
        raise e
    finally:
        conn.close()


if __name__ == "__main__":
    repair_database()

