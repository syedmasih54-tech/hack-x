# BenefitBridge Backend 🇮🇳
### *Citizen-Side Welfare Navigator for India*

[![FastAPI](https://img.shields.io/badge/FastAPI-0.110+-009688.svg?logo=fastapi&logoColor=white)](https://fastapi.tiangolo.com)
[![Python](https://img.shields.io/badge/Python-3.11+-3776AB.svg?logo=python&logoColor=white)](https://python.org)
[![SQLAlchemy](https://img.shields.io/badge/SQLAlchemy-2.0+-D71F00.svg)](https://www.sqlalchemy.org)
[![Pydantic v2](https://img.shields.io/badge/Pydantic-v2-E92063.svg)](https://docs.pydantic.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

---

## 📖 Product Overview

Welfare delivery in India faces a **last-mile navigation challenge**: eligible citizens struggle to decipher opaque scheme criteria, submit documents with subtle spelling discrepancies (e.g. *Sunita* vs *Sunitha*) that cause Direct Benefit Transfer (DBT) failures months later, lack real-time visibility into application progress, and have no easy way to claim statutory relief when processing deadlines elapse.

**BenefitBridge** serves as an intelligent assistance and preparation layer for citizens.

### What BenefitBridge Does:
1. **Discovers Eligible Welfare Schemes**: Deterministically matches citizen demographic and economic profiles against versioned scheme rules.
2. **Pre-Application Document Doctor**: Extracts fields from uploaded document photos, detecting phonetic and transliteration spelling variations and missing fields before submission.
3. **Citizen-Friendly Application Tracker**: Translates opaque bureaucratic codes into plain language and calculates statutory service-level guarantee (SLA) deadlines.
4. **Automated Grievance Escalator**: Prepares formal, legally sound grievance drafts for CPGRAMS and state CM helplines when statutory processing windows expire.

> [!IMPORTANT]
> **What BenefitBridge Does NOT Do:**
> BenefitBridge does **NOT** replace government portals, does **NOT** automatically submit applications on behalf of citizens, and does **NOT** make final benefit sanction determinations. It is strictly a preparatory and transparency layer.

---

## 🏛️ System Architecture

```
                             +-------------------------------+
                             |    Frontend (React / Vite)   |
                             +---------------+---------------+
                                             |  REST JSON / Multipart
                                             v
+-----------------------------------------------------------------------------------------+
|                               FastAPI Application Layer                                 |
|                                                                                         |
|   GET /schemes           POST /eligibility/check    POST /documents/scan                |
|   GET /schemes/{id}      (Rules Engine)             POST /documents/compare             |
|                                                     (OCR Doctor & Mismatch)             |
|                                                                                         |
|   POST /applications     GET /applications/{id}/status    POST /grievances/draft        |
|   (Tracker Service)      (SLA Citizen Tracker)            (Grievance Escalator)         |
+-----------------------------------------------------------------------------------------+
       |                                |                             |
       v                                v                             v
+------------------+         +---------------------+        +--------------------+
|  Rules Engine    |         |  OCR & Match Engine |        | SQLite Database    |
|  rules/*.json    |         |  pytesseract+Pillow |        | SQLAlchemy 2.0     |
|  - widow_pension |         |  - In-memory buffer |        | - citizens         |
|  - old_age       |         |  - Phonetic matcher |        | - schemes          |
|  - scholarship   |         |  - Redaction filter |        | - applications     |
+------------------+         +---------------------+        | - app_events       |
                                                            | - document_checks  |
                                                            | - grievances       |
                                                            +--------------------+
```

---

## 🔐 Privacy & Compliance Architecture

BenefitBridge follows strict Indian data protection principles under the Digital Personal Data Protection Act (DPDPA):

1. **Zero Permanent Image Storage**: Document image files uploaded to `POST /documents/scan` are parsed entirely in-memory using `io.BytesIO` and immediately discarded upon response delivery. No document images reside on disk or object storage.
2. **Strict Aadhaar Shielding**:
   - The database does **not** contain any column for Aadhaar numbers.
   - Raw text extracted from document photos passes through an automated regex scrubber (`\d{4}\s?\d{4}\s?\d{4}`) replacing any 12-digit sequence with `[REDACTED-AADHAAR-PROTECTED]` before any downstream processing or database logging.
3. **Explicit Consent Gate**: Citizen profile registration (`POST /citizens`) and application initiation require `consent_given: true`.

---

## 🔍 OCR Capabilities & Indian Document Reality

Indian government identity certificates present unique OCR challenges:
- **Transliteration variations**: Indian names frequently have multiple valid English spellings (e.g. *Sunita* vs *Sunitha*, *Geeta* vs *Geetha*, *Pooja* vs *Puja*, *Choudhary* vs *Chaudhary*).
- **Format disparities**: Date of Birth formats alternate across *DD/MM/YYYY*, *YYYY-MM-DD*, and *DD-Mon-YYYY*.
- **Low print quality / stamps**: Rural ration cards often carry faded ink or rubber stamps over names.

### How BenefitBridge Solves This:
- **Phonetic & Levenshtein Normalizer**: Collapses Indian phonemes (`th` $\to$ `t`, `ee` $\to$ `i`, `oo` $\to$ `u`, `w` $\to$ `v`) and handles honorific prefixes (`Smt`, `Shri`, `Kumari`).
- **Empathetic Citizen Guidance**: Never rejects or approves a citizen. If a variance like *Sunita Devi* vs *Sunitha Devi* is spotted, it issues an early alert:
  > *"Minor spelling variation noted. BenefitBridge does NOT reject your application, but resolving this spelling difference now will prevent DBT bank transfer delays later."*
- **Graceful Fallback**: If lighting is poor or OCR confidence drops below 60%, it returns `confidence_indicator: "LOW"` and sets `manual_verification_required: true`.

---

## 🚀 Quickstart & Local Setup

### Prerequisites
- Python 3.11+
- Git

### 1. Clone & Set Up Virtual Environment

```bash
cd benefitbridge-backend

# Create virtual environment
python -m venv venv

# Activate virtual environment
# Windows (PowerShell):
.\venv\Scripts\Activate.ps1
# Linux / macOS:
source venv/bin/activate
```

### 2. Install Dependencies

```bash
pip install -r requirements.txt
```

*(Optional)* If you wish to use system Tesseract OCR locally:
- **Ubuntu/Debian**: `sudo apt install tesseract-ocr`
- **macOS**: `brew install tesseract`
- **Windows**: Install via `winget install UB-Mannheim.TesseractOCR` or download the official installer.
*(Note: BenefitBridge includes built-in heuristic pattern extraction and fallback processing, so it operates reliably even in minimal environments without system binaries).*

### 3. Initialize & Seed Database

```bash
python seed_data.py
```
This generates the SQLite database (`benefitbridge.db`), compiles scheme rules, creates pre-configured demo citizens (*Sunita Devi*, *Rahul Sharma*), creates sample overdue and active applications, and synthesizes test document images (`sample_documents/`).

### 4. Run the Server

```bash
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
```

The interactive Swagger UI is available at: **http://127.0.0.1:8000/docs**  
ReDoc documentation is available at: **http://127.0.0.1:8000/redoc**

---

## 🧪 Running the Automated End-to-End Test Suite

Run the included verification suite to validate all 12 endpoints:

```bash
python test_backend.py
```

Expected output:
```text
==================================================
      BenefitBridge Backend Test Suite            
==================================================
[PASS] 1. GET /health -> healthy
[PASS] 2. GET /schemes -> Found 3 schemes
[PASS] 3. GET /schemes/widow_pension -> Title: Indira Gandhi National Widow Pension Scheme
[PASS] 4a. POST /eligibility/check (65yo widow) -> Eligible schemes: ['widow_pension']
[PASS] 4b. POST /eligibility/check (Student missing docs) -> Partial: ['Bonafide Student Certificate...']
[PASS] 5a. POST /documents/scan (Ration Card) -> Extracted Name: 'Sunita Devi'
[PASS] 5b. POST /documents/scan (Bank Passbook) -> Extracted Name: 'Sunitha Devi'
[PASS] 6. POST /documents/compare -> Status: likely_match_with_spelling_variation (Score: 0.95)
[PASS] 7. POST /applications -> Created ID: APP-...
[PASS] 8. GET /applications/{id} -> Events count: 1
[PASS] 9. GET /applications/{id}/status -> Stage: 'Application Received'
[PASS] 10. POST /applications/{id}/mock-status-update -> New Status: under_review
[PASS] 11. POST /grievances/draft -> Grievance ID: 1 (21 days overdue)
[PASS] 12. GET /grievances/1 -> Successfully retrieved draft text
==================================================
     ALL 12 ENDPOINTS PASSED WITH FLYING COLORS!   
==================================================
```

---

## 📡 Sample cURL Requests for Major Endpoints

### 1. Health Check
```bash
curl -X GET http://127.0.0.1:8000/health
```

### 2. List All Welfare Schemes
```bash
curl -X GET http://127.0.0.1:8000/schemes
```

### 3. Get Scheme Rules & SLA
```bash
curl -X GET http://127.0.0.1:8000/schemes/widow_pension
```

### 4. Check Citizen Eligibility (65-Year-Old Widow)
```bash
curl -X POST http://127.0.0.1:8000/eligibility/check \
  -H "Content-Type: application/json" \
  -d '{
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
  }'
```

### 5. Check Eligibility with Missing Documents (Student Scholarship)
```bash
curl -X POST http://127.0.0.1:8000/eligibility/check \
  -H "Content-Type: application/json" \
  -d '{
    "citizen_profile": {
      "age": 20,
      "gender": "male",
      "marital_status": "unmarried",
      "annual_income": 120000,
      "occupation": "student",
      "disability_status": "none",
      "available_documents": ["bank_passbook", "income_certificate"]
    }
  }'
```

### 6. Scan a Document Image (In-Memory OCR)
```bash
curl -X POST http://127.0.0.1:8000/documents/scan \
  -F "file=@sample_documents/ration_card_name_mismatch.jpg"
```

### 7. Compare Two Documents (Sunita Devi vs Sunitha Devi)
```bash
curl -X POST http://127.0.0.1:8000/documents/compare \
  -H "Content-Type: application/json" \
  -d '{
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
  }'
```

### 8. Create a Tracked Application
```bash
curl -X POST http://127.0.0.1:8000/applications \
  -H "Content-Type: application/json" \
  -d '{
    "citizen_id": "CIT-SUNITA-65",
    "scheme_id": "widow_pension",
    "status": "submitted"
  }'
```

### 9. Get Citizen-Friendly Status & Remaining SLA Days
```bash
curl -X GET http://127.0.0.1:8000/applications/APP-SUNITA-ACTIVE-01/status
```

### 10. Mock Department Status Update (For Live Demos)
```bash
curl -X POST http://127.0.0.1:8000/applications/APP-SUNITA-ACTIVE-01/mock-status-update \
  -H "Content-Type: application/json" \
  -d '{
    "status": "under_review",
    "message": "Block Development Officer initiated physical verification of household."
  }'
```

### 11. Generate Grievance Draft for Overdue Application
```bash
curl -X POST http://127.0.0.1:8000/grievances/draft \
  -H "Content-Type: application/json" \
  -d '{
    "application_id": "APP-SUNITA-OVERDUE-02",
    "citizen_remarks": "Visited the Tehsil office twice; clerk claimed file is still under scrutiny."
  }'
```

### 12. Retrieve Stored Grievance by ID
```bash
curl -X GET http://127.0.0.1:8000/grievances/1
```

---

## ☁️ Deployment Instructions

### Option 1: Deploy on Render (Recommended)
1. Fork or push this repository to GitHub.
2. In the [Render Dashboard](https://dashboard.render.com), click **New +** $\to$ **Web Service**.
3. Connect your repository.
4. Configure service settings:
   - **Environment**: `Python 3`
   - **Build Command**: `pip install -r requirements.txt && python seed_data.py`
   - **Start Command**: `uvicorn main:app --host 0.0.0.0 --port $PORT`
5. *(Optional)* Add Environment Variables:
   - `OPENAI_API_KEY`: *(Optional)* Only if enabling conversational LLM explanations.
6. Click **Deploy Web Service**.

### Option 2: Deploy on Railway
1. Install the Railway CLI or connect via GitHub on [railway.app](https://railway.app).
2. Add a `Procfile` (or specify command in Railway dashboard):
   ```text
   web: python seed_data.py && uvicorn main:app --host 0.0.0.0 --port $PORT
   ```
3. Deploy! Railway auto-detects Python and binds the port.

### Option 3: Deploy on Fly.io
1. Create a `Dockerfile`:
   ```dockerfile
   FROM python:3.11-slim
   WORKDIR /app
   RUN apt-get update && apt-get install -y tesseract-ocr libtesseract-dev && rm -rf /var/lib/apt/lists/*
   COPY requirements.txt .
   RUN pip install --no-cache-dir -r requirements.txt
   COPY . .
   RUN python seed_data.py
   EXPOSE 8000
   CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
   ```
2. Launch using:
   ```bash
   fly launch
   fly deploy
   ```

---

## 🏆 Judge Explanation: How the Backend Works

### 1. Deterministic Rules Engine (Zero-Hallucination Eligibility)
Government welfare criteria require absolute legal precision. We reject using LLMs for eligibility classification. Instead, BenefitBridge implements a **purely deterministic, versioned rules engine** driven by structured JSON schemas (`rules/*.json`).
- Hard demographic checks (Age, Gender, Marital Status, Income Ceiling, Disability, Occupation) are evaluated algebraically.
- Documents are partitioned into *Mandatory* and *Supporting*.
- Citizens who qualify on demographics but lack a certificate are classified as `partially_eligible`, providing an exact list of missing paperwork rather than a discouraging rejection.
- If an LLM is enabled (`OPENAI_API_KEY`), it is strictly confined to an isolated downstream function that rephrases the deterministic explanation for 5th-grade reading levels; it can never modify the eligibility classification.

### 2. Pre-Submission Document Doctor
Over 30% of welfare rejections in India occur due to clerical name discrepancies between Aadhaar and bank passbooks (e.g. *Sunita* on the ration card vs *Sunitha* on the bank passbook). BenefitBridge catches this **before** submission:
- The OCR service extracts names and dates from in-memory buffers.
- The `mismatch_checker` executes phonetic transliteration reduction and token-sorted Sequence Matching.
- When an intentional discrepancy is detected, the engine advises the citizen to obtain a 1-page affidavit or request a passbook update, preventing a 6-month DBT sanction stall.

### 3. Citizen-Friendly SLA Tracker & Citizen Charters
State Citizen Charters specify statutory service timelines (e.g. 30 days for Widow Pension, 45 days for Old Age Pension). BenefitBridge:
- Records submission timestamps and computes exact deadlines.
- Translates cryptic internal statuses into friendly stages with clear "Next Actions".
- Calculates live elapsed days and flags overdue files.

### 4. Overdue Grievance Escalator
When an application breaches its statutory timeline, the citizen receives access to a generated grievance draft formatted specifically for **CPGRAMS** and state **Chief Minister Helplines**. The draft embeds the statutory delay in days, citizen reference token, and specific relief sought, giving vulnerable citizens administrative leverage without bureaucratic intimidation.
