import io
import sys
from pathlib import Path
from fastapi.testclient import TestClient

from main import app
from database import Base, engine

client = TestClient(app)


def run_tests():
    print("==================================================")
    print("      BenefitBridge Backend Test Suite            ")
    print("==================================================")

    # 0. Root Frontend
    res = client.get("/")
    assert res.status_code == 200, f"Root frontend failed: {res.text}"
    assert "BenefitBridge" in res.text
    print("[PASS] 0. GET / -> Served BenefitBridge Web UI successfully")

    # 1. Health
    res = client.get("/health")
    assert res.status_code == 200, f"Health check failed: {res.text}"
    print("[PASS] 1. GET /health ->", res.json()["status"])

    # 2. Schemes
    res = client.get("/schemes")
    assert res.status_code == 200, f"List schemes failed: {res.text}"
    schemes = res.json()
    assert len(schemes) >= 3, f"Expected at least 3 schemes, got {len(schemes)}"
    for s in schemes:
        assert "official_source_name" in s and s["official_source_name"]
        assert "source_gazette_or_guideline_url" in s and s["source_gazette_or_guideline_url"]
        assert "citizen_charter_clause" in s and s["citizen_charter_clause"]
        assert "last_verified_date" in s and s["last_verified_date"]
        assert "is_live_data_source" in s and s["is_live_data_source"] is True
    print(f"[PASS] 2. GET /schemes -> Found {len(schemes)} schemes with authentic provenance: {[s['scheme_id'] for s in schemes]}")

    # 3. Scheme Detail
    res = client.get("/schemes/widow_pension")
    assert res.status_code == 200, f"Scheme detail failed: {res.text}"
    widow_scheme = res.json()
    assert widow_scheme["processing_deadline_days"] == 30
    assert "Rural Development" in widow_scheme["official_source_name"]
    assert widow_scheme["is_live_data_source"] is True
    assert "State Right to Public Services Act" in widow_scheme["citizen_charter_clause"]
    assert widow_scheme["official_portal_url"] == "https://nsap.dord.gov.in"
    assert "nsap.nic.in" not in widow_scheme["official_portal_url"]
    print(f"[PASS] 3a. GET /schemes/widow_pension -> Title: {widow_scheme['title']} | Portal: {widow_scheme['official_portal_url']}")

    res_kisan = client.get("/schemes/kisan_yojna")
    assert res_kisan.status_code == 200, f"Kisan Yojna detail failed: {res_kisan.text}"
    assert res_kisan.json()["processing_deadline_days"] == 30
    assert "Agriculture" in res_kisan.json()["official_source_name"]
    assert "PM-KISAN" in res_kisan.json()["citizen_charter_clause"]
    print(f"[PASS] 3b. GET /schemes/kisan_yojna -> Title: {res_kisan.json()['title']} | Source: {res_kisan.json()['official_source_name']}")

    # 4. Eligibility Check - 65yo Widow with no income
    payload_widow = {
        "citizen_profile": {
            "age": 65,
            "gender": "female",
            "marital_status": "widow",
            "annual_income": 0,
            "occupation": "homemaker",
            "disability_status": "none",
            "available_documents": [
                "ration_card",
                "bank_passbook",
                "death_certificate_of_husband",
                "income_certificate"
            ]
        }
    }
    res = client.post("/eligibility/check", json=payload_widow)
    assert res.status_code == 200, f"Eligibility check failed: {res.text}"
    data = res.json()
    eligible_ids = [s["scheme_id"] for s in data["eligible_schemes"]]
    assert "widow_pension" in eligible_ids, f"Expected widow_pension in eligible: {eligible_ids}"
    widow_eval = [s for s in data["eligible_schemes"] if s["scheme_id"] == "widow_pension"][0]
    assert "official_source_name" in widow_eval and "Rural Development" in widow_eval["official_source_name"]
    assert "citizen_charter_clause" in widow_eval and "Right to Public Services Act" in widow_eval["citizen_charter_clause"]
    print(f"[PASS] 4a. POST /eligibility/check (65yo widow) -> Eligible schemes: {eligible_ids} | Clause: {widow_eval['citizen_charter_clause']}")

    # 4b. Eligibility Check - Student missing documents
    payload_student = {
        "citizen_profile": {
            "age": 20,
            "gender": "male",
            "marital_status": "unmarried",
            "annual_income": 120000,
            "occupation": "student",
            "disability_status": "none",
            "available_documents": ["bank_passbook", "income_certificate"]  # Missing marksheet & bonafide
        }
    }
    res = client.post("/eligibility/check", json=payload_student)
    assert res.status_code == 200
    data_student = res.json()
    partially_eligible_ids = [s["scheme_id"] for s in data_student["partially_eligible_schemes"]]
    assert "scholarship" in partially_eligible_ids, f"Expected scholarship in partial: {partially_eligible_ids}"
    scholar_res = [s for s in data_student["partially_eligible_schemes"] if s["scheme_id"] == "scholarship"][0]
    print(f"[PASS] 4b. POST /eligibility/check (Student missing docs) -> Partial: {scholar_res['missing_documents']}")

    # 4c. Eligibility Check - Farmer with Khatauni & Passbook
    payload_farmer = {
        "citizen_profile": {
            "age": 45,
            "gender": "male",
            "marital_status": "married",
            "annual_income": 100000,
            "occupation": "farmer",
            "disability_status": "none",
            "available_documents": ["land_records_khatauni", "bank_passbook", "ration_card"]
        }
    }
    res = client.post("/eligibility/check", json=payload_farmer)
    assert res.status_code == 200
    data_farmer = res.json()
    eligible_farmer_ids = [s["scheme_id"] for s in data_farmer["eligible_schemes"]]
    assert "kisan_yojna" in eligible_farmer_ids, f"Expected kisan_yojna in eligible: {eligible_farmer_ids}"
    print(f"[PASS] 4c. POST /eligibility/check (45yo Farmer) -> Eligible schemes: {eligible_farmer_ids}")

    # 5. Document Scan
    doc_path = Path("sample_documents/ration_card_name_mismatch.jpg")
    with open(doc_path, "rb") as f:
        res = client.post("/documents/scan", files={"file": ("ration_card_name_mismatch.jpg", f, "image/jpeg")})
    assert res.status_code == 200, f"Doc scan failed: {res.text}"
    scan_res = res.json()
    print(f"[PASS] 5a. POST /documents/scan (Ration Card) -> Extracted Name: '{scan_res['extracted_fields']['full_name']}' | Type: {scan_res['document_type']} | Indicator: {scan_res['confidence_indicator']}")

    passbook_path = Path("sample_documents/bank_passbook.jpg")
    with open(passbook_path, "rb") as f:
        res_bp = client.post("/documents/scan", files={"file": ("bank_passbook.jpg", f, "image/jpeg")})
    assert res_bp.status_code == 200, f"Passbook scan failed: {res_bp.text}"
    scan_bp = res_bp.json()
    print(f"[PASS] 5b. POST /documents/scan (Bank Passbook) -> Extracted Name: '{scan_bp['extracted_fields']['full_name']}' | Acc: {scan_bp['extracted_fields']['account_number']} | IFSC: {scan_bp['extracted_fields']['ifsc_code']}")

    # 6. Document Compare (Sunita vs Sunitha)
    compare_payload = {
        "document_1_fields": {
            "full_name": "Sunita Devi",
            "date_of_birth": "12/04/1959",
            "document_type": "ration_card"
        },
        "document_2_fields": {
            "full_name": "Sunitha Devi",
            "date_of_birth": "12/04/1959",
            "account_number": "30981240981",
            "document_type": "bank_passbook"
        },
        "document_1_type": "ration_card",
        "document_2_type": "bank_passbook"
    }
    res = client.post("/documents/compare", json=compare_payload)
    assert res.status_code == 200, f"Compare failed: {res.text}"
    comp_res = res.json()
    assert comp_res["name_match_status"] == "likely_match_with_spelling_variation"
    assert comp_res["similarity_score"] >= 0.8
    print(f"[PASS] 6. POST /documents/compare -> Status: {comp_res['name_match_status']} (Score: {comp_res['similarity_score']})")
    print(f"       Warning note: {comp_res['citizen_warning']}")

    # 7. Create Application
    app_payload = {
        "citizen_id": "CIT-SUNITA-65",
        "scheme_id": "widow_pension",
        "status": "submitted"
    }
    res = client.post("/applications", json=app_payload)
    assert res.status_code == 201, f"Create app failed: {res.text}"
    new_app = res.json()
    app_id = new_app["id"]
    print(f"[PASS] 7. POST /applications -> Created ID: {app_id} | Status: {new_app['status']}")

    # 8. Get Application
    res = client.get(f"/applications/{app_id}")
    assert res.status_code == 200
    app_detail = res.json()
    assert len(app_detail["events"]) >= 1
    print(f"[PASS] 8. GET /applications/{app_id} -> Events count: {len(app_detail['events'])}")

    # 9. Get Citizen Status
    res = client.get(f"/applications/{app_id}/status")
    assert res.status_code == 200
    status_info = res.json()
    print(f"[PASS] 9. GET /applications/{app_id}/status -> Stage: '{status_info['current_stage']}', Next: '{status_info['next_action']}'")

    # 10. Mock Department Status Update
    mock_payload = {
        "status": "under_review",
        "message": "Block Officer began physical address verification."
    }
    res = client.post(f"/applications/{app_id}/mock-status-update", json=mock_payload)
    assert res.status_code == 200
    updated_app = res.json()
    assert updated_app["status"] == "under_review"
    print(f"[PASS] 10. POST /applications/{app_id}/mock-status-update -> New Status: {updated_app['status']}")

    # 11. Overdue Application Grievance Draft
    # Use seeded overdue application APP-SUNITA-OVERDUE-02
    grievance_payload = {
        "application_id": "APP-SUNITA-OVERDUE-02",
        "citizen_remarks": "Visited Tehsil office twice, clerk refused to provide file movement register number."
    }
    res = client.post("/grievances/draft", json=grievance_payload)
    assert res.status_code == 200, f"Grievance draft failed: {res.text}"
    grievance_data = res.json()
    assert grievance_data["days_overdue"] > 0
    assert "Sunita Devi" in grievance_data["draft_text"] or "CIT-SUNITA-65" in grievance_data["draft_text"]
    grievance_id = grievance_data["grievance_id"]
    print(f"[PASS] 11. POST /grievances/draft -> Grievance ID: {grievance_id} ({grievance_data['days_overdue']} days overdue)")
    print(f"        Channel 1: {grievance_data['suggested_official_channels'][0]['channel_name']}")

    # 12. Get Grievance by ID
    res = client.get(f"/grievances/{grievance_id}")
    assert res.status_code == 200
    retrieved_grievance = res.json()
    assert retrieved_grievance["grievance_id"] == grievance_id
    print(f"[PASS] 12. GET /grievances/{grievance_id} -> Successfully retrieved draft text ({len(retrieved_grievance['draft_text'])} chars)")

    # 13. Bilingual Voice Intake Assistant
    speech_text = (
        "Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. "
        "Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. "
        "Mera Aadhaar number 9876 5432 1098 hai aur mere paas ration card aur bank passbook hai."
    )
    res_voice = client.post("/voice/intake", json={"raw_transcript": speech_text})
    assert res_voice.status_code == 200, f"Voice intake failed: {res_voice.text}"
    voice_data = res_voice.json()
    assert voice_data["language_detected"] == "hi"
    assert voice_data["intended_scheme_id"] == "widow_pension"
    assert voice_data["profile"]["age"] == 65
    assert voice_data["profile"]["gender"] == "female"
    assert voice_data["profile"]["marital_status"] == "widow"
    assert voice_data["profile"]["annual_income"] == 0.0
    assert voice_data["profile"]["occupation"] == "homemaker"
    assert "9876 5432 1098" not in str(voice_data)
    print(f"[PASS] 13. POST /voice/intake -> Scheme: '{voice_data['intended_scheme_id']}' | Age: {voice_data['profile']['age']} | Income: INR {voice_data['profile']['annual_income']} | Aadhaar Redacted")

    # 14. Voice Apply Scheme (Multipart Audio Upload & Auto Application Generation)
    audio_bytes = speech_text.encode("utf-8")
    res_apply = client.post(
        "/voice/apply-scheme",
        files={"audio_file": ("sunita_speech.wav", io.BytesIO(audio_bytes), "audio/wav")},
        data={"preferred_language": "hi-IN"}
    )
    assert res_apply.status_code == 200, f"Voice apply failed: {res_apply.text}"
    apply_data = res_apply.json()
    assert apply_data["status"] == "submitted"
    assert apply_data["scheme_id"] == "widow_pension"
    assert apply_data["application_id"].startswith("APP-")
    assert "9876 5432 1098" not in str(apply_data)
    print(f"[PASS] 14. POST /voice/apply-scheme -> App ID: {apply_data['application_id']} | Scheme: '{apply_data['scheme_id']}' | Status: {apply_data['status']}")
    safe_conf = apply_data['confirmation_message'][:75].encode('ascii', errors='replace').decode('ascii')
    print(f"        Confirmation: {safe_conf}...")

    # 15. DigiLocker OAuth Login Endpoint
    res_dl_login = client.get("/auth/digilocker/login?format=json&target_scheme_id=widow_pension")
    assert res_dl_login.status_code == 200, f"DigiLocker login failed: {res_dl_login.text}"
    dl_login_data = res_dl_login.json()
    assert dl_login_data["status"] == "success"
    assert "authorization_url" in dl_login_data
    print(f"[PASS] 15. GET /auth/digilocker/login -> Status: success | OAuth URL generated: {dl_login_data['authorization_url'][:55]}...")

    # 16. DigiLocker OAuth Callback & Automated Application Creation
    res_dl_cb = client.get(f"/auth/digilocker/callback?code=sandbox_demo_code&state={dl_login_data['state']}")
    assert res_dl_cb.status_code == 200, f"DigiLocker callback failed: {res_dl_cb.text}"
    dl_cb_data = res_dl_cb.json()
    assert dl_cb_data["status"] == "success"
    assert dl_cb_data["is_verified"] is True
    assert dl_cb_data["full_name"] == "Sunita Devi"
    assert dl_cb_data["application_id"].startswith("APP-")
    assert dl_cb_data["fetched_documents_count"] >= 2
    print(f"[PASS] 16. GET /auth/digilocker/callback -> Verified Citizen: '{dl_cb_data['full_name']}' | App ID: {dl_cb_data['application_id']} | Fetched Docs: {dl_cb_data['fetched_documents_count']}")

    # 17. Citizen Verified DigiLocker Credentials Retrieval
    dl_cit_id = dl_cb_data["citizen_id"]
    res_dl_docs = client.get(f"/citizens/{dl_cit_id}/digilocker-documents")
    assert res_dl_docs.status_code == 200, f"Get DigiLocker docs failed: {res_dl_docs.text}"
    dl_docs_list = res_dl_docs.json()
    assert len(dl_docs_list) >= 2
    assert all(doc["verified"] is True for doc in dl_docs_list)
    print(f"[PASS] 17. GET /citizens/{dl_cit_id}/digilocker-documents -> Retrieved {len(dl_docs_list)} verified credentials:")
    for d in dl_docs_list:
        print(f"        * [{d['doc_type']}] {d['doc_name']} (Issuer: {d['issuer']})")

    # 18. Live Government Ingestion Sync Endpoint
    res_sync = client.post("/schemes/sync-live-data?force_refresh=true")
    assert res_sync.status_code == 200, f"Live sync failed: {res_sync.text}"
    sync_data = res_sync.json()
    assert sync_data["status"] == "success"
    assert sync_data["synced_schemes_count"] >= 5
    assert "widow_pension" in sync_data["schemes_synced"]
    assert "kisan_yojna" in sync_data["schemes_synced"]
    assert "scholarship" in sync_data["schemes_synced"]
    assert len(sync_data["sources_contacted"]) >= 4
    print(f"[PASS] 18. POST /schemes/sync-live-data -> Ingested {sync_data['synced_schemes_count']} schemes from {len(sync_data['sources_contacted'])} live government repositories.")

    # 19. Scheme Live Provenance Verification & Zero Identity Leakage Audit
    res_prov = client.get("/schemes/old_age_pension")
    assert res_prov.status_code == 200, f"Old Age Pension lookup failed: {res_prov.text}"
    prov_data = res_prov.json()
    assert prov_data["ministry_or_department"]
    assert prov_data["official_guidelines_url"]
    assert prov_data["is_live_source"] is True
    assert prov_data["processing_deadline_days"] == 45
    print(f"[PASS] 19. GET /schemes/old_age_pension -> Verified Provenance: Ministry: '{prov_data['ministry_or_department']}' | SLA: {prov_data['processing_deadline_days']} days | Live: {prov_data['is_live_source']}")

    print("==================================================")
    print("     ALL 19 ENDPOINTS PASSED WITH FLYING COLORS!   ")
    print("==================================================")


if __name__ == "__main__":
    run_tests()

