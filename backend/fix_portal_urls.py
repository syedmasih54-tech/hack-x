import os
import sys
import socket
from pathlib import Path
from sqlalchemy import create_engine, text

def resolve_db_path() -> Path:
    """Resolves benefitbridge.db path across execution directories."""
    env_path = os.getenv("BENEFITBRIDGE_DB_PATH")
    if env_path and Path(env_path).exists():
        return Path(env_path).resolve()

    local_file = Path(__file__).resolve().parent / "benefitbridge.db"
    if local_file.exists():
        return local_file

    cwd_file = Path.cwd() / "benefitbridge.db"
    if cwd_file.exists():
        return cwd_file

    codes_file = Path.cwd() / "codes" / "benefitbridge.db"
    if codes_file.exists():
        return codes_file

    return local_file


def patch_portal_urls():
    """
    Standalone database repair script for BenefitBridge.
    Patches legacy/unresolvable 'https://nsap.nic.in' URLs in the 'schemes' table
    to the active government portal 'https://nsap.dord.gov.in' and official myScheme mirrors.
    """
    db_path = resolve_db_path()
    print("=" * 65)
    print("      BenefitBridge Portal URL Audit & Patch Script       ")
    print("=" * 65)
    print(f"[AUDIT] Target Database: {db_path}")

    if not db_path.exists():
        print(f"[AUDIT] Error: Database file not found at {db_path}", file=sys.stderr)
        sys.exit(1)

    db_url = f"sqlite:///{db_path}"
    engine = create_engine(
        db_url,
        connect_args={"check_same_thread": False, "timeout": 30.0}
    )

    with engine.connect() as conn:
        # 1. Inspect existing records with legacy nsap.nic.in domain
        query_check = text(
            "SELECT scheme_id, title, official_portal_url, source_gazette_or_guideline_url "
            "FROM schemes "
            "WHERE official_portal_url LIKE '%nsap.nic.in%' "
            "   OR source_gazette_or_guideline_url LIKE '%nsap.nic.in%';"
        )
        legacy_rows = conn.execute(query_check).fetchall()
        print(f"[AUDIT] Found {len(legacy_rows)} scheme record(s) referencing legacy domain 'nsap.nic.in':")
        for row in legacy_rows:
            print(f"        * Scheme: {row[0]} | Portal: {row[2]} | Gazette: {row[3]}")

        # 2. Update widow_pension
        stmt_widow = text(
            "UPDATE schemes "
            "SET official_portal_url = 'https://nsap.dord.gov.in', "
            "    source_gazette_or_guideline_url = 'https://nsap.dord.gov.in/Guidelines/National_Social_Assistance_Programme_Guidelines.pdf' "
            "WHERE scheme_id = 'widow_pension';"
        )
        res_widow = conn.execute(stmt_widow)

        # 3. Update old_age_pension if present
        stmt_old_age = text(
            "UPDATE schemes "
            "SET official_portal_url = 'https://nsap.dord.gov.in', "
            "    source_gazette_or_guideline_url = 'https://nsap.dord.gov.in/Guidelines/National_Social_Assistance_Programme_Guidelines.pdf' "
            "WHERE scheme_id = 'old_age_pension';"
        )
        res_old_age = conn.execute(stmt_old_age)

        # 4. Catch-all for any other scheme records containing nsap.nic.in
        stmt_catchall_portal = text(
            "UPDATE schemes "
            "SET official_portal_url = REPLACE(official_portal_url, 'https://nsap.nic.in', 'https://nsap.dord.gov.in') "
            "WHERE official_portal_url LIKE '%nsap.nic.in%';"
        )
        res_catchall_p = conn.execute(stmt_catchall_portal)

        stmt_catchall_gazette = text(
            "UPDATE schemes "
            "SET source_gazette_or_guideline_url = REPLACE(source_gazette_or_guideline_url, 'https://nsap.nic.in', 'https://nsap.dord.gov.in') "
            "WHERE source_gazette_or_guideline_url LIKE '%nsap.nic.in%';"
        )
        res_catchall_g = conn.execute(stmt_catchall_gazette)

        conn.commit()

        total_affected = res_widow.rowcount + res_old_age.rowcount + res_catchall_p.rowcount + res_catchall_g.rowcount
        print(f"\n[PATCH] Execution completed. Total update operations applied: {total_affected} (affected schemes: {len(legacy_rows)}).")

        # 5. Verification: Fetch and display all active schemes
        query_verify = text(
            "SELECT scheme_id, title, official_portal_url, source_gazette_or_guideline_url "
            "FROM schemes;"
        )
        verified_rows = conn.execute(query_verify).fetchall()
        print("\n[VERIFY] Current 'schemes' table records in database:")
        for r in verified_rows:
            print(f"  [{r[0]}] {r[1]}")
            print(f"      Official Portal URL: {r[2]}")
            print(f"      Guideline URL:       {r[3]}")

        # 6. Verify zero remaining occurrences of legacy domain
        remaining_count = conn.execute(
            text("SELECT COUNT(*) FROM schemes WHERE official_portal_url LIKE '%nsap.nic.in%' OR source_gazette_or_guideline_url LIKE '%nsap.nic.in%';")
        ).scalar()

        if remaining_count == 0:
            print("\n[SUCCESS] Verification passed: 0 legacy 'nsap.nic.in' references remain in database.")
        else:
            print(f"\n[WARNING] Found {remaining_count} unpatched references.", file=sys.stderr)

    # 7. DNS Connectivity Check
    print("\n[CONNECTIVITY] Testing DNS resolution of active government domains:")
    for host in ["nsap.dord.gov.in", "www.myscheme.gov.in", "pmkisan.gov.in", "scholarships.gov.in"]:
        try:
            ip = socket.gethostbyname(host)
            print(f"  [OK] {host:24} -> {ip}")
        except Exception as err:
            print(f"  [FAIL] {host:24} -> {err}")

    print("=" * 65)


if __name__ == "__main__":
    patch_portal_urls()

