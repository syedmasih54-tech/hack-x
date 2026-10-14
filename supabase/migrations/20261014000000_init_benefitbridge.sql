-- ========================================================================
-- BenefitBridge Civic-Tech Welfare Engine
-- Schema DDL for Supabase PostgreSQL
-- ========================================================================

-- Enable UUID extension (built-in on Supabase)
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- 1. Citizens Table
CREATE TABLE IF NOT EXISTS citizens (
    id VARCHAR(64) PRIMARY KEY,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
    preferred_language VARCHAR(16) NOT NULL DEFAULT 'en',
    consent_given BOOLEAN NOT NULL DEFAULT FALSE,
    digilocker_id VARCHAR(64) UNIQUE,
    full_name VARCHAR(128),
    dob VARCHAR(16),
    age INTEGER,
    gender VARCHAR(32),
    marital_status VARCHAR(32),
    annual_income DOUBLE PRECISION NOT NULL DEFAULT 0.0,
    occupation VARCHAR(64),
    disability_status VARCHAR(64) DEFAULT 'none',
    is_digilocker_verified BOOLEAN NOT NULL DEFAULT FALSE,
    digilocker_token_expiry TIMESTAMP WITHOUT TIME ZONE,
    direct_apply_payload_json TEXT
);

-- 2. Schemes Table
CREATE TABLE IF NOT EXISTS schemes (
    scheme_id VARCHAR(64) PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    ministry_or_department VARCHAR(255) NOT NULL,
    state_or_level VARCHAR(64) NOT NULL DEFAULT 'Central',
    rule_version VARCHAR(32) NOT NULL,
    processing_deadline_days INTEGER NOT NULL,
    official_portal_url VARCHAR(512) NOT NULL,
    citizen_charter_clause VARCHAR(255),
    official_guidelines_url VARCHAR(512),
    last_synced_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
    is_live_source BOOLEAN NOT NULL DEFAULT TRUE,
    official_source_name VARCHAR(255),
    source_gazette_or_guideline_url VARCHAR(512),
    last_verified_date VARCHAR(32),
    is_live_data_source BOOLEAN DEFAULT TRUE
);

-- 3. Applications Table
CREATE TABLE IF NOT EXISTS applications (
    id VARCHAR(64) PRIMARY KEY,
    citizen_id VARCHAR(64) NOT NULL REFERENCES citizens (id) ON DELETE CASCADE,
    scheme_id VARCHAR(64) NOT NULL REFERENCES schemes (scheme_id) ON DELETE CASCADE,
    status VARCHAR(32) NOT NULL DEFAULT 'draft',
    submitted_at TIMESTAMP WITHOUT TIME ZONE,
    expected_resolution_date TIMESTAMP WITHOUT TIME ZONE
);

-- 4. DigiLocker Documents Table
CREATE TABLE IF NOT EXISTS digilocker_documents (
    id SERIAL PRIMARY KEY,
    citizen_id VARCHAR(64) NOT NULL REFERENCES citizens (id) ON DELETE CASCADE,
    doc_type VARCHAR(64) NOT NULL,
    doc_name VARCHAR(255) NOT NULL,
    issuer_name VARCHAR(255) NOT NULL,
    issuer_id VARCHAR(128),
    doc_uri VARCHAR(512) NOT NULL,
    extracted_data_json TEXT NOT NULL,
    verification_status VARCHAR(32) NOT NULL DEFAULT 'VERIFIED',
    fetched_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW()
);

-- 5. Voice Interaction Logs Table
CREATE TABLE IF NOT EXISTS voice_interaction_logs (
    id SERIAL PRIMARY KEY,
    citizen_id VARCHAR(64) REFERENCES citizens (id) ON DELETE CASCADE,
    audio_language VARCHAR(16) NOT NULL DEFAULT 'hi-IN',
    raw_transcript TEXT NOT NULL,
    extracted_entities_json TEXT,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW()
);

-- 6. Application Events Table
CREATE TABLE IF NOT EXISTS application_events (
    id SERIAL PRIMARY KEY,
    application_id VARCHAR(64) NOT NULL REFERENCES applications (id) ON DELETE CASCADE,
    event_type VARCHAR(64) NOT NULL,
    message TEXT NOT NULL,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW()
);

-- 7. Document Checks Table
CREATE TABLE IF NOT EXISTS document_checks (
    id SERIAL PRIMARY KEY,
    application_id VARCHAR(64) REFERENCES applications (id) ON DELETE CASCADE,
    document_type VARCHAR(64) NOT NULL,
    extracted_fields_json TEXT NOT NULL,
    mismatch_warnings_json TEXT NOT NULL,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW()
);

-- 8. Grievances Table
CREATE TABLE IF NOT EXISTS grievances (
    id SERIAL PRIMARY KEY,
    application_id VARCHAR(64) NOT NULL REFERENCES applications (id) ON DELETE CASCADE,
    draft_text TEXT NOT NULL,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
    status VARCHAR(32) NOT NULL DEFAULT 'drafted'
);

-- Indexes for optimal lookup and query performance
CREATE INDEX IF NOT EXISTS idx_citizens_digilocker ON citizens(digilocker_id);
CREATE INDEX IF NOT EXISTS idx_applications_citizen ON applications(citizen_id);
CREATE INDEX IF NOT EXISTS idx_applications_scheme ON applications(scheme_id);
CREATE INDEX IF NOT EXISTS idx_app_events_app ON application_events(application_id);
CREATE INDEX IF NOT EXISTS idx_grievances_app ON grievances(application_id);
CREATE INDEX IF NOT EXISTS idx_digilocker_citizen ON digilocker_documents(citizen_id);
CREATE INDEX IF NOT EXISTS idx_voice_logs_citizen ON voice_interaction_logs(citizen_id);
