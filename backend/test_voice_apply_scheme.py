import io
import pytest
from fastapi.testclient import TestClient
from main import app
from database import SessionLocal
from models import Citizen, VoiceInteractionLog, Application, ApplicationEvent, Scheme

client = TestClient(app)


def test_voice_apply_scheme_widow_success():
    """
    Tests end-to-end POST /voice/apply-scheme with multipart audio upload.
    Verifies Whisper/LLM processing, Aadhaar scrubbing, DB persistence,
    deterministic eligibility check, and application creation with statutory SLA.
    """
    speech_text = (
        "Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. "
        "Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. "
        "Mera Aadhaar number 9876 5432 1098 hai aur mere paas ration card aur bank passbook hai."
    )
    audio_file_payload = io.BytesIO(speech_text.encode("utf-8"))

    response = client.post(
        "/voice/apply-scheme",
        files={"audio_file": ("citizen_audio.wav", audio_file_payload, "audio/wav")},
        data={"preferred_language": "hi-IN"}
    )

    assert response.status_code == 200, f"Error: {response.text}"
    data = response.json()

    # 1. Verification of unified JSON response schema
    assert "transcript" in data
    assert "extracted_profile" in data
    assert "application_id" in data
    assert "scheme_id" in data
    assert "status" in data
    assert "confirmation_message" in data

    assert data["status"] == "submitted"
    assert data["scheme_id"] == "widow_pension"
    assert data["application_id"].startswith("APP-")
    assert data["application_id"] in data["confirmation_message"]

    # 2. Privacy Check
    assert "9876 5432 1098" not in str(data)
    assert "987654321098" not in str(data)
    assert "[REDACTED-AADHAAR]" in data["transcript"]

    # 3. Profile verification
    prof = data["extracted_profile"]
    assert prof["age"] == 65
    assert prof["gender"] == "female"
    assert prof["marital_status"] == "widow"
    assert prof["annual_income"] == 0.0

    # 4. Database verification
    db = SessionLocal()
    try:
        app_record = db.query(Application).filter(Application.id == data["application_id"]).first()
        assert app_record is not None
        assert app_record.status == "submitted"
        assert app_record.scheme_id == "widow_pension"
        assert app_record.expected_resolution_date is not None

        # SLA calculation check: widow_pension processing deadline is 30 days
        diff = app_record.expected_resolution_date - app_record.submitted_at
        assert round(diff.total_seconds() / 86400) == 30

        # Citizen record check
        citizen = db.query(Citizen).filter(Citizen.id == app_record.citizen_id).first()
        assert citizen is not None
        assert citizen.age == 65
        assert citizen.marital_status == "widow"
        assert citizen.consent_given is True

        # Voice interaction log check
        voice_log = db.query(VoiceInteractionLog).filter(VoiceInteractionLog.citizen_id == citizen.id).first()
        assert voice_log is not None
        assert "9876 5432 1098" not in voice_log.raw_transcript
        assert "[REDACTED-AADHAAR]" in voice_log.raw_transcript

        # Event audit log check
        event = db.query(ApplicationEvent).filter(ApplicationEvent.application_id == app_record.id).first()
        assert event is not None
        assert event.event_type == "application_created"
    finally:
        db.close()


def test_voice_apply_scheme_student_scholarship_success():
    """
    Tests application creation for a student applying for post-matric scholarship.
    """
    speech_text = (
        "Hello, my age is twenty years, I am an unmarried male student. "
        "Household income is dus hazaar mahina. I want scholarship. "
        "Aadhaar 1111 2222 3333."
    )
    audio_file_payload = io.BytesIO(speech_text.encode("utf-8"))

    response = client.post(
        "/voice/apply-scheme",
        files={"audio_file": ("speech_student.wav", audio_file_payload, "audio/wav")},
        data={"preferred_language": "en-IN"}
    )

    assert response.status_code == 200, f"Error: {response.text}"
    data = response.json()

    assert data["status"] == "submitted"
    assert data["scheme_id"] == "scholarship"
    assert data["application_id"].startswith("APP-")
    assert data["extracted_profile"]["age"] == 20
    assert data["extracted_profile"]["annual_income"] == 120000.0  # 10,000 * 12
    assert "1111 2222 3333" not in str(data)

    db = SessionLocal()
    try:
        app_record = db.query(Application).filter(Application.id == data["application_id"]).first()
        assert app_record is not None
        # SLA calculation check: scholarship processing deadline is 60 days
        diff = app_record.expected_resolution_date - app_record.submitted_at
        assert round(diff.total_seconds() / 86400) == 60
    finally:
        db.close()


def test_voice_apply_scheme_empty_audio_error_boundary():
    """
    Tests error boundary when an empty audio file is uploaded (HTTP 400).
    """
    empty_payload = io.BytesIO(b"")

    response = client.post(
        "/voice/apply-scheme",
        files={"audio_file": ("empty.wav", empty_payload, "audio/wav")},
        data={"preferred_language": "auto"}
    )

    assert response.status_code == 400
    err_data = response.json()
    assert "Empty audio file received" in err_data.get("detail", "")


def test_voice_apply_scheme_ineligible_criteria_error_boundary():
    """
    Tests error boundary when a citizen is completely ineligible (HTTP 400).
    E.g. A 25yo male with 25 lakh annual income asking for widow pension.
    """
    speech_text = (
        "Namaste, meri umar 25 saal hai, purush hoon, unmarried hoon. "
        "Meri aamdani 25 lakh saalana hai. Mujhe vidhwa pension chahiye."
    )
    audio_file_payload = io.BytesIO(speech_text.encode("utf-8"))

    response = client.post(
        "/voice/apply-scheme",
        files={"audio_file": ("ineligible.wav", audio_file_payload, "audio/wav")},
        data={"preferred_language": "hi-IN"}
    )

    assert response.status_code == 400
    err_data = response.json()
    assert "ineligible" in err_data.get("detail", "").lower()


def test_voice_apply_scheme_kisan_yojna_success():
    """
    Tests application creation for a farmer applying for PM-KISAN Yojna.
    """
    speech_text = (
        "Namaste, meri umar 45 saal hai. Main ek kisan hoon, kheti karta hoon. "
        "Meri aamdani ek lakh saalana hai. Mujhe Kisan Yojna ke liye aavedan karna hai. "
        "Mere paas khatauni aur bank passbook hai. Mera Aadhaar 9988 7766 5544 hai."
    )
    audio_file_payload = io.BytesIO(speech_text.encode("utf-8"))

    response = client.post(
        "/voice/apply-scheme",
        files={"audio_file": ("kisan_voice.wav", audio_file_payload, "audio/wav")},
        data={"preferred_language": "hi-IN"}
    )

    assert response.status_code == 200, f"Error: {response.text}"
    data = response.json()

    assert data["status"] == "submitted"
    assert data["scheme_id"] == "kisan_yojna"
    assert data["application_id"].startswith("APP-")
    assert data["extracted_profile"]["age"] == 45
    assert data["extracted_profile"]["occupation"] == "farmer"
    assert data["extracted_profile"]["annual_income"] == 100000.0
    assert "9988 7766 5544" not in str(data)

    db = SessionLocal()
    try:
        app_record = db.query(Application).filter(Application.id == data["application_id"]).first()
        assert app_record is not None
        # SLA calculation check: kisan_yojna processing deadline is 30 days
        diff = app_record.expected_resolution_date - app_record.submitted_at
        assert round(diff.total_seconds() / 86400) == 30
    finally:
        db.close()


