import pytest
from pydantic import ValidationError
from schemas import CitizenProfile, parse_annual_income


def test_standard_integer():
    """1. Standard integer input (e.g., 120000) casts cleanly to float."""
    profile = CitizenProfile(
        age=30,
        gender="female",
        marital_status="married",
        annual_income=120000,
        occupation="teacher",
    )
    assert profile.annual_income == 120000.0
    assert isinstance(profile.annual_income, float)


def test_raw_float():
    """2. Raw float input (e.g., 120000.50) preserves decimal precision."""
    profile = CitizenProfile(
        age=45,
        gender="male",
        marital_status="married",
        annual_income=120000.50,
        occupation="clerk",
    )
    assert profile.annual_income == 120000.50
    assert isinstance(profile.annual_income, float)


def test_null_value():
    """3. Null / None input defaults safely to 0.0 without validation crash."""
    data = {
        "age": 28,
        "gender": "female",
        "marital_status": "unmarried",
        "annual_income": None,
        "occupation": "student",
    }
    profile = CitizenProfile.model_validate(data)
    assert profile.annual_income == 0.0


def test_formatted_comma_string():
    """4. Comma-separated Indian numerical string (e.g., '1,20,000') strips commas."""
    data = {
        "age": 35,
        "gender": "male",
        "marital_status": "married",
        "annual_income": "1,20,000",
        "occupation": "driver",
    }
    profile = CitizenProfile.model_validate(data)
    assert profile.annual_income == 120000.0


def test_rupee_currency_symbol_with_commas():
    """5. Currency symbol string with ₹ (e.g., '₹1,50,000') parses to numeric float."""
    data = {
        "age": 52,
        "gender": "female",
        "marital_status": "widow",
        "annual_income": "₹1,50,000",
        "occupation": "homemaker",
    }
    profile = CitizenProfile.model_validate(data)
    assert profile.annual_income == 150000.0


def test_rs_and_inr_prefixes():
    """6. 'Rs' and 'INR' prefixes (e.g., 'Rs 60000', 'INR 45,000') strip cleanly."""
    profile_rs = CitizenProfile.model_validate({
        "age": 40,
        "gender": "male",
        "marital_status": "married",
        "annual_income": "Rs 60000",
        "occupation": "artisan",
    })
    assert profile_rs.annual_income == 60000.0

    profile_inr = CitizenProfile.model_validate({
        "age": 40,
        "gender": "male",
        "marital_status": "married",
        "annual_income": "INR 45,000",
        "occupation": "artisan",
    })
    assert profile_inr.annual_income == 45000.0


def test_colloquial_lakh_and_lac():
    """7. Indian phrasing with 'Lakh' / 'Lac' (e.g., '1.2 Lakh', '2.5 lac') multiplies by 100,000."""
    profile_lakh = CitizenProfile.model_validate({
        "age": 60,
        "gender": "male",
        "marital_status": "married",
        "annual_income": "1.2 Lakh",
        "occupation": "retired",
    })
    assert profile_lakh.annual_income == 120000.0

    profile_lac = CitizenProfile.model_validate({
        "age": 60,
        "gender": "male",
        "marital_status": "married",
        "annual_income": "₹ 2.5 lac",
        "occupation": "retired",
    })
    assert profile_lac.annual_income == 250000.0


def test_colloquial_thousands_k():
    """8. Colloquial 'k' notation (e.g., '75k', '50K') multiplies by 1,000."""
    profile_k = CitizenProfile.model_validate({
        "age": 22,
        "gender": "female",
        "marital_status": "unmarried",
        "annual_income": "75k",
        "occupation": "apprentice",
    })
    assert profile_k.annual_income == 75000.0

    profile_upper_k = CitizenProfile.model_validate({
        "age": 22,
        "gender": "female",
        "marital_status": "unmarried",
        "annual_income": "50K",
        "occupation": "apprentice",
    })
    assert profile_upper_k.annual_income == 50000.0


def test_hindi_transliterated_nil_strings():
    """9. Hindi transliterated zero expressions ('shunya', 'shunya rupaye') return 0.0."""
    for phrase in ["shunya", "shunya rupaye", "shoonya", "shunya rupeye"]:
        profile = CitizenProfile.model_validate({
            "age": 65,
            "gender": "female",
            "marital_status": "widow",
            "annual_income": phrase,
            "occupation": "homemaker",
        })
        assert profile.annual_income == 0.0, f"Failed for Hindi phrase: {phrase}"


def test_english_nil_tokens_and_empty_string():
    """10. Textual nil tokens ('nil', 'zero', 'none', '') return 0.0."""
    for token in ["nil", "zero", "none", "", "   ", "N/A", "-"]:
        profile = CitizenProfile.model_validate({
            "age": 30,
            "gender": "other",
            "marital_status": "unmarried",
            "annual_income": token,
            "occupation": "daily_wage",
        })
        assert profile.annual_income == 0.0, f"Failed for token: {token!r}"


def test_unparseable_malformed_string_fallback():
    """Bonus: Unparseable random text defaults gracefully to 0.0 without uncaught exceptions."""
    profile = CitizenProfile.model_validate({
        "age": 38,
        "gender": "male",
        "marital_status": "married",
        "annual_income": "not-applicable-random-string",
        "occupation": "farmer",
    })
    assert profile.annual_income == 0.0

