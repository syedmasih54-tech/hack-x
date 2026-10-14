"""
Comprehensive Test Suite for BenefitBridge DigiLocker & API Setu Integration.
Verifies OAuth 2.0 flows, credential extraction, XML parsing, privacy guardrails,
and automated application creation under statutory SLA guarantees.
"""

import asyncio
import pytest
import re
from fastapi.testclient import TestClient
from sqlalchemy.orm import Session

from main import app
from database import get_db, SessionLocal
from models import Citizen, DigiLockerDocument, Application
from digilocker_service import (
    get_authorization_url,
    generate_authorization_url,
    exchange_code_for_token,
    fetch_issued_documents,
    parse_document_payload,
    parse_doc_metadata,
    sanitize_aadhaar,
    calculate_age_from_dob,
)
import config
from schemas import DigiLockerLoginResponse, DigiLockerCallbackResponse


@pytest.fixture(scope="module")
def client():
    with TestClient(app) as c:
        yield c


@pytest.fixture(scope="module")
def db_session():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


def test_generate_and_get_authorization_url():
    state = "test_state_nonce_123"
    url1 = get_authorization_url(state, "widow_pension")
    url2 = generate_authorization_url(f"{state}:widow_pension")

    assert url1.startswith(config.DIGILOCKER_AUTH_URL)
    assert url2.startswith(config.DIGILOCKER_AUTH_URL)
    assert "response_type=code" in url1
    assert f"client_id={config.DIGILOCKER_CLIENT_ID}" in url1
    assert "state=test_state_nonce_123%3Awidow_pension" in url1
    assert "scope=openid+email+profile" in url1 or "scope=openid%20email%20profile" in url1


def test_exchange_code_for_token_sandbox():
    token_data = asyncio.run(exchange_code_for_token("demo_auth_code_987"))
    assert "access_token" in token_data
    assert token_data["token_type"] == "Bearer"
    assert token_data["digilockerid"] in ("DL-981240182", "DL-IND-8829103")
    assert token_data["name"] == "Sunita Devi"
    assert token_data["dob"] == "12/04/1959"
    assert token_data["gender"] == "F"


def test_fetch_issued_documents_sandbox():
    docs = asyncio.run(fetch_issued_documents("mock_token_123"))
    assert len(docs) >= 2
    types = [d["doc_type"] for d in docs]
    assert "ration_card" in types
    assert "income_certificate" in types
    assert any("Delhi" in d["issuer"] for d in docs)


def test_parse_doc_metadata_and_aadhaar_redaction():
    mock_raw = {
        "doc_type": "income_certificate",
        "name": "Annual Income Certificate",
        "issuer": "Revenue Department, Govt of NCT Delhi",
        "xml_content": """<?xml version="1.0" encoding="UTF-8"?>
<Certificate xmlns="http://digilocker.gov.in/schema">
  <IssuedTo>
    <Person name="Sunita Devi" dob="12/04/1959" gender="F" uid="9876 5432 1098" />
  </IssuedTo>
  <CertificateData>
    <IncomeCertificate issuingAuthority="Tehsildar Sadar">
      <AnnualIncome inr="0.00" inWords="Zero Rupees" />
      <Category>Vidhwa / BPL</Category>
    </IncomeCertificate>
  </CertificateData>
</Certificate>"""
    }

    meta = parse_doc_metadata(mock_raw)
    assert meta["full_name"] == "Sunita Devi"
    assert meta["annual_income"] == 0.0
    assert meta["dob"] == "12/04/1959"
    assert meta["category"] == "Vidhwa / BPL"

    # Privacy check: Aadhaar number 9876 5432 1098 must be scrubbed
    raw_str = str(meta)
    assert "9876 5432 1098" not in raw_str
    assert not re.search(r"\b\d{4}\s+\d{4}\s+\d{4}\b", raw_str)


def test_parse_document_payload_wrapper():
    mock_doc_item = {
        "doc_type": "income_certificate",
        "name": "State Income Assessment",
        "issuer": "Revenue Department, Govt of NCT Delhi",
        "uri": "in.gov.delhi.revenue-INCER-TEST-01",
        "xml_content": """<?xml version="1.0" encoding="UTF-8"?>
<Certificate xmlns="http://digilocker.gov.in/schema">
  <IssuedTo>
    <Person name="Sunita Devi" dob="12/04/1959" gender="F" uid="1111 2222 3333" />
  </IssuedTo>
  <CertificateData>
    <IncomeCertificate issuingAuthority="Tehsildar">
      <AnnualIncome inr="0.00" inWords="Zero Rupees" />
    </IncomeCertificate>
  </CertificateData>
</Certificate>"""
    }

    parsed = asyncio.run(parse_document_payload(mock_doc_item, "mock_token_123"))
    assert parsed["doc_type"] == "income_certificate"
    assert parsed["verification_status"] == "VERIFIED"
    assert parsed["extracted_data"]["full_name"] == "Sunita Devi"
    assert parsed["extracted_data"]["annual_income"] == 0.0
    assert "1111 2222 3333" not in str(parsed)


def test_calculate_age_from_dob():
    age = calculate_age_from_dob("12/04/1959")
    assert age is not None
    assert 60 <= age <= 75
    assert calculate_age_from_dob("invalid-date") is None
    assert calculate_age_from_dob(None) is None


def test_endpoint_digilocker_login_json(client: TestClient):
    resp = client.get("/auth/digilocker/login?format=json&target_scheme_id=widow_pension")
    assert resp.status_code == 200
    data = resp.json()
    assert "auth_url" in data or "authorization_url" in data
    assert "state" in data
    assert "widow_pension" in data["state"]


def test_endpoint_digilocker_login_redirect(client: TestClient):
    resp = client.get("/auth/digilocker/login?target_scheme_id=widow_pension", follow_redirects=False)
    assert resp.status_code == 307
    assert "location" in resp.headers
    assert config.DIGILOCKER_AUTH_URL in resp.headers["location"]


def test_endpoint_digilocker_callback_end_to_end(client: TestClient, db_session: Session):
    state = "test_nonce_state:widow_pension"
    code = "sandbox_auth_code_live_demo"

    resp = client.get(f"/auth/digilocker/callback?code={code}&state={state}&target_scheme_id=widow_pension")
    assert resp.status_code == 200
    data = resp.json()

    assert data["citizen_id"] is not None
    assert data["full_name"] == "Sunita Devi"
    assert data["digilocker_verified"] is True
    assert len(data["verified_documents"]) >= 2
    assert data["eligibility_status"] in ("eligible", "partially_eligible")
    assert data["application_id"] is not None
    assert data["application_id"].startswith("APP-")
    assert data["scheme_id"] == "widow_pension"
    assert data["statutory_deadline_days"] == 30
    assert len(data["expected_resolution_date"]) > 0
    assert "SLA" in data["confirmation_message"] or "statutory" in data["confirmation_message"]

    # Verify database persistence
    citizen = db_session.query(Citizen).filter(Citizen.id == data["citizen_id"]).first()
    assert citizen is not None
    assert citizen.is_digilocker_verified is True
    assert citizen.digilocker_id in ("DL-981240182", "DL-IND-8829103")
    assert citizen.full_name == "Sunita Devi"
    assert citizen.age >= 60

    # Verify created application
    app_record = db_session.query(Application).filter(Application.id == data["application_id"]).first()
    assert app_record is not None
    assert app_record.status == "submitted"
    assert app_record.scheme_id == "widow_pension"

    # Test GET /citizens/{citizen_id}/digilocker-documents
    docs_resp = client.get(f"/citizens/{citizen.id}/digilocker-documents")
    assert docs_resp.status_code == 200
    docs_data = docs_resp.json()
    assert len(docs_data) >= 2
    assert all(d["verified"] is True for d in docs_data)

