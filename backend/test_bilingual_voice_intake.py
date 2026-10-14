import pytest
from voice_service import (
    extract_intake_from_speech,
    sanitize_speech_transcript,
    detect_language,
    extract_age,
    extract_gender,
    extract_marital_status,
    extract_annual_income,
    extract_occupation,
    extract_disability_status,
    detect_intended_scheme,
)


def test_widow_pension_hindi_transcript():
    transcript = (
        "Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. "
        "Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. "
        "Mera Aadhaar number 9876 5432 1098 hai aur mere paas ration card aur bank passbook hai."
    )
    result = extract_intake_from_speech(transcript)

    assert result["language_detected"] == "hi"
    assert result["intended_scheme_id"] == "widow_pension"
    assert result["profile"]["age"] == 65
    assert result["profile"]["gender"] == "female"
    assert result["profile"]["marital_status"] == "widow"
    assert result["profile"]["annual_income"] == 0.0
    assert result["profile"]["occupation"] == "homemaker"
    assert result["profile"]["disability_status"] == "none"
    assert "9876 5432 1098" not in str(result)
    assert "987654321098" not in str(result)


def test_student_scholarship_english_hinglish():
    transcript = (
        "Hello, my age is twenty years, I am an unmarried male student. "
        "Household income is dus hazaar mahina. I want scholarship. "
        "Aadhaar 1234 5678 9012."
    )
    result = extract_intake_from_speech(transcript)

    assert result["intended_scheme_id"] == "scholarship"
    assert result["profile"]["age"] == 20
    assert result["profile"]["gender"] == "male"
    assert result["profile"]["marital_status"] in ["single", "unmarried"]
    assert result["profile"]["annual_income"] == 120000.0  # 10,000 * 12
    assert result["profile"]["occupation"] == "student"
    assert "1234 5678 9012" not in str(result)


def test_kisan_yojna_farmer_hindi():
    transcript = (
        "Meri umar 45 saal hai, main ek kisan hoon, kheti karta hoon. "
        "Mujhe kisan yojna chahiye, mere paas khatauni aur bank passbook hai."
    )
    result = extract_intake_from_speech(transcript)

    assert result["language_detected"] == "hi"
    assert result["intended_scheme_id"] == "kisan_yojna"
    assert result["profile"]["age"] == 45
    assert result["profile"]["annual_income"] == 0.0
    assert result["profile"]["occupation"] == "farmer"
    assert "land_records_khatauni" in result["profile"]["available_documents"]
    assert "bank_passbook" in result["profile"]["available_documents"]


def test_annual_income_variations():
    # 1. Zero/nil
    assert extract_annual_income("koi aamdani nahi hai") == 0.0
    assert extract_annual_income("zero") == 0.0
    assert extract_annual_income("nil") == 0.0

    # 2. Lakh saalana
    assert extract_annual_income("ek lakh saalana") == 100000.0

    # 3. Monthly to annual
    assert extract_annual_income("dus hazaar mahina") == 120000.0

    # 4. Thousands
    assert extract_annual_income("50 hazar") == 50000.0
    assert extract_annual_income("1.5 lakh") == 150000.0
    assert extract_annual_income("75k") == 75000.0


def test_unspecified_scheme_returns_null():
    transcript = "Hello, my age is twenty years. I have no income."
    result = extract_intake_from_speech(transcript)
    assert result["intended_scheme_id"] is None


def test_privacy_guardrail_scrubbing():
    transcript = "Citizen id details 1111 2222 3333 and phone 9876543210"
    cleaned = sanitize_speech_transcript(transcript)
    assert "1111 2222 3333" not in cleaned
    assert "[REDACTED-AADHAAR]" in cleaned


def test_generate_voice_confirmation_hindi():
    from voice_service import generate_voice_confirmation_message
    msg = generate_voice_confirmation_message(
        language="hi",
        citizen_reference="सुनीता देवी",
        scheme_title="इंदिरा गांधी राष्ट्रीय विधवा पेंशन योजना",
        application_id="APP-A065E7DD",
        deadline_days=30
    )
    assert "सुनीता देवी" in msg
    assert "इंदिरा गांधी राष्ट्रीय विधवा पेंशन योजना" in msg
    assert "APP-A065E7DD" in msg
    assert "30" in msg
    assert "पक्की गारंटी" in msg
    # Verify sentence count (2-3 sentences)
    sentences = [s.strip() for s in msg.split("।") if s.strip()]
    assert 2 <= len(sentences) <= 3


def test_generate_voice_confirmation_english():
    from voice_service import generate_voice_confirmation_message
    msg = generate_voice_confirmation_message(
        language="en",
        citizen_reference="Sunita Devi",
        scheme_title="Indira Gandhi National Widow Pension Scheme",
        application_id="APP-A065E7DD",
        deadline_days=30
    )
    assert "Sunita Devi" in msg
    assert "Indira Gandhi National Widow Pension Scheme" in msg
    assert "APP-A065E7DD" in msg
    assert "30 days" in msg
    assert "citizen charter" in msg
    # Verify sentence count (2-3 sentences)
    sentences = [s.strip() for s in msg.split(".") if s.strip()]
    assert 2 <= len(sentences) <= 3


