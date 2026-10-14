-- ========================================================================
-- BenefitBridge Database Seed Export for Supabase PostgreSQL
-- ========================================================================

-- Table: citizens (104 rows)
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-SUNITA-65', '2026-07-15 11:53:13.864614', 'hi', 1, 67, 'female', 'widow', 0.0, 'homemaker', 'Sunita Devi', 'none', '{"age": 67, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["income_certificate", "ration_card", "death_certificate_of_husband", "bank_passbook"]}', 'DL-981240182', '12/04/1959', 1, '2026-10-14 01:09:39.845794') ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-RAHUL-20', '2026-09-23 11:53:13.865635', 'en', 1, 20, 'male', 'unmarried', 120000.0, 'student', 'Rahul Sharma', 'none', NULL, NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-B4200E1D', '2026-10-13 17:37:21.315625', 'hi', 1, 65, 'female', 'widow', 150000.0, 'homemaker', NULL, 'none', NULL, NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-DBEBE451', '2026-10-13 17:37:21.335651', 'en', 1, 30, 'male', 'single', 50000.0, 'carpenter', NULL, 'none', NULL, NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-BB67EFF3', '2026-10-13 17:37:21.349824', 'en', 1, NULL, NULL, NULL, 0.0, NULL, NULL, 'none', NULL, NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-39B284B7', '2026-10-13 17:37:21.362837', 'en', 1, NULL, NULL, NULL, 0.0, NULL, NULL, 'none', NULL, NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-81812A63', '2026-10-13 17:37:21.377844', 'en', 1, NULL, NULL, NULL, 120000.0, NULL, NULL, 'none', NULL, NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-D19C51AC', '2026-10-13 18:23:00.263276', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-542723', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-1705194A', '2026-10-13 18:23:00.410235', 'hi', 1, 20, 'male', 'single', 120000.0, 'student', 'Citizen-DD5463', 'none', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-B21DB4ED', '2026-10-13 18:23:00.578004', 'hi', 1, 25, 'female', 'widow', 2500000.0, 'homemaker', 'Citizen-4F55AF', 'none', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-4BE5E22A', '2026-10-13 18:23:53.292034', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-65680B', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-959524F8', '2026-10-13 18:24:40.133979', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-63498D', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-DEDE687E', '2026-10-13 18:25:06.123134', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-84EEBB', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-8A41573E', '2026-10-13 18:25:06.318933', 'hi', 1, 20, 'male', 'single', 120000.0, 'student', 'Citizen-1705C2', 'none', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-DA102FC3', '2026-10-13 18:25:06.446406', 'hi', 1, 25, 'female', 'widow', 2500000.0, 'homemaker', 'Citizen-3C830A', 'none', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-E42B2C42', '2026-10-13 18:28:09.518964', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-DD5B72', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-7677A77C', '2026-10-13 18:28:37.435065', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-94EB65', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-9E93CD0E', '2026-10-13 18:28:37.507285', 'hi', 1, 20, 'male', 'single', 120000.0, 'student', 'Citizen-CCACD6', 'none', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-9C921E68', '2026-10-13 18:28:37.590156', 'hi', 1, 25, 'female', 'widow', 2500000.0, 'homemaker', 'Citizen-813004', 'none', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-856DF45A', '2026-10-13 18:34:04.015909', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-CB4CB2', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-09608EB3', '2026-10-13 18:34:04.176754', 'hi', 1, 20, 'male', 'single', 120000.0, 'student', 'Citizen-47EEBF', 'none', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-CB3AAA1B', '2026-10-13 18:34:04.336834', 'hi', 1, 25, 'female', 'widow', 2500000.0, 'homemaker', 'Citizen-265D42', 'none', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-5DABB646', '2026-10-13 18:34:18.120164', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-6775CD', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-F078C638', '2026-10-13 18:34:35.920400', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-04E858', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-45C3628F', '2026-10-13 18:34:36.016793', 'hi', 1, 20, 'male', 'single', 120000.0, 'student', 'Citizen-1C7CAD', 'none', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-B15345A0', '2026-10-13 18:34:36.128540', 'hi', 1, 25, 'female', 'widow', 2500000.0, 'homemaker', 'Citizen-866732', 'none', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-10FE9B75', '2026-10-13 18:40:33.521910', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-700AB7', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-7FACCCF3', '2026-10-13 18:43:51.745877', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-C1C077', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-E4351FE0', '2026-10-13 18:44:20.575962', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-7093EC', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-A1395524', '2026-10-13 18:44:20.740754', 'hi', 1, 20, 'male', 'single', 120000.0, 'student', 'Citizen-6FB53D', 'none', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-733FD220', '2026-10-13 18:44:21.169193', 'hi', 1, 25, 'female', 'widow', 2500000.0, 'homemaker', 'Citizen-C48A19', 'none', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-F3D4FBFF', '2026-10-13 19:29:38.224970', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-6B3A93', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-A019924A', '2026-10-13 19:29:38.282789', 'hi', 1, 20, 'male', 'single', 120000.0, 'student', 'Citizen-CC1E36', 'none', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-D144BE2C', '2026-10-13 19:29:38.337430', 'hi', 1, 25, 'female', 'widow', 2500000.0, 'homemaker', 'Citizen-1036C5', 'none', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-9C1B19AF', '2026-10-13 19:31:11.385353', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-4AAF5A', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-C7FA3435', '2026-10-13 19:31:11.448731', 'hi', 1, 20, 'male', 'single', 120000.0, 'student', 'Citizen-CA7C36', 'none', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-E131163B', '2026-10-13 19:31:11.505182', 'hi', 1, 25, 'female', 'widow', 2500000.0, 'homemaker', 'Citizen-DB6587', 'none', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-A9A3F5F4', '2026-10-13 19:52:52.189158', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-2A6FDE', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-4180BA8B', '2026-10-13 19:52:52.317424', 'hi', 1, 20, 'male', 'single', 120000.0, 'student', 'Citizen-DA4AD8', 'none', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-73D0FE5B', '2026-10-13 19:52:52.458141', 'hi', 1, 25, 'female', 'widow', 2500000.0, 'homemaker', 'Citizen-80B8B5', 'none', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-12818FD0', '2026-10-13 19:52:52.521389', 'hi', 1, 45, 'male', 'single', 100000.0, 'farmer', 'Citizen-254679', 'none', '{"age": 45, "gender": "male", "marital_status": "single", "annual_income": 100000.0, "occupation": "farmer", "disability_status": "none", "available_documents": ["bank_passbook", "land_records_khatauni"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-9F6C7F43', '2026-10-13 19:53:14.287764', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-0A66B9', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-25499557', '2026-10-13 20:02:42.052833', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-EEB8DB', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-C9A2C6B1', '2026-10-13 20:02:42.394174', 'hi', 1, 20, 'male', 'single', 120000.0, 'student', 'Citizen-888B72', 'none', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-886F7ACE', '2026-10-13 20:02:42.551112', 'hi', 1, 25, 'female', 'widow', 2500000.0, 'homemaker', 'Citizen-FDABD2', 'none', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-00C3C58B', '2026-10-13 20:02:43.459978', 'hi', 1, 45, 'male', 'single', 100000.0, 'farmer', 'Citizen-0DE9A2', 'none', '{"age": 45, "gender": "male", "marital_status": "single", "annual_income": 100000.0, "occupation": "farmer", "disability_status": "none", "available_documents": ["bank_passbook", "land_records_khatauni"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-4CCF06A7', '2026-10-13 20:03:01.731189', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-D09C9D', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-88F8B9EB', '2026-10-13 20:04:53.668144', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-21ED3C', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-F1E6D980', '2026-10-13 20:04:53.736137', 'hi', 1, 20, 'male', 'single', 120000.0, 'student', 'Citizen-63461E', 'none', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-6D94F348', '2026-10-13 20:04:53.795898', 'hi', 1, 25, 'female', 'widow', 2500000.0, 'homemaker', 'Citizen-5CA441', 'none', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-A5AF8C70', '2026-10-13 20:04:53.824374', 'hi', 1, 45, 'male', 'single', 100000.0, 'farmer', 'Citizen-A849BC', 'none', '{"age": 45, "gender": "male", "marital_status": "single", "annual_income": 100000.0, "occupation": "farmer", "disability_status": "none", "available_documents": ["bank_passbook", "land_records_khatauni"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-095AA1AF', '2026-10-13 20:05:15.109951', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-28A8AF', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-5CAFC808', '2026-10-13 20:24:37.283136', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-E434C6', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-E9750035', '2026-10-13 20:24:37.345749', 'hi', 1, 20, 'male', 'single', 120000.0, 'student', 'Citizen-FA39FF', 'none', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-8ED559DD', '2026-10-13 20:24:37.410055', 'hi', 1, 25, 'female', 'widow', 2500000.0, 'homemaker', 'Citizen-5502EA', 'none', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-EB430E14', '2026-10-13 20:24:37.605521', 'hi', 1, 45, 'male', 'single', 100000.0, 'farmer', 'Citizen-F60221', 'none', '{"age": 45, "gender": "male", "marital_status": "single", "annual_income": 100000.0, "occupation": "farmer", "disability_status": "none", "available_documents": ["bank_passbook", "land_records_khatauni"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-C0221684', '2026-10-13 20:56:47.908763', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-FCBF99', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-C643C35F', '2026-10-13 20:56:47.975175', 'hi', 1, 20, 'male', 'single', 120000.0, 'student', 'Citizen-44665D', 'none', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-B2A8CBD4', '2026-10-13 20:56:48.028714', 'hi', 1, 25, 'female', 'widow', 2500000.0, 'homemaker', 'Citizen-B0CA24', 'none', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-84868A8C', '2026-10-13 20:56:48.074752', 'hi', 1, 45, 'male', 'single', 100000.0, 'farmer', 'Citizen-62ABBA', 'none', '{"age": 45, "gender": "male", "marital_status": "single", "annual_income": 100000.0, "occupation": "farmer", "disability_status": "none", "available_documents": ["bank_passbook", "land_records_khatauni"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-68A5B003', '2026-10-13 20:57:30.009416', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-F8D1B8', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-508AB10B', '2026-10-13 20:58:04.250827', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-B65C01', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-5454EA65', '2026-10-13 20:59:42.616725', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-D413F2', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-92BED64B', '2026-10-13 20:59:42.684018', 'hi', 1, 20, 'male', 'single', 120000.0, 'student', 'Citizen-417198', 'none', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-6E01CB45', '2026-10-13 20:59:42.738489', 'hi', 1, 25, 'female', 'widow', 2500000.0, 'homemaker', 'Citizen-E2B6FB', 'none', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-8EBD8B8B', '2026-10-13 20:59:42.762734', 'hi', 1, 45, 'male', 'single', 100000.0, 'farmer', 'Citizen-4E2761', 'none', '{"age": 45, "gender": "male", "marital_status": "single", "annual_income": 100000.0, "occupation": "farmer", "disability_status": "none", "available_documents": ["bank_passbook", "land_records_khatauni"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-48C26256', '2026-10-13 20:59:53.691623', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-669D20', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-F12279E0', '2026-10-13 21:11:32.996022', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-20DB6F', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-7B885C4D', '2026-10-13 21:11:33.053434', 'hi', 1, 20, 'male', 'single', 120000.0, 'student', 'Citizen-D22B9B', 'none', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-AA369A45', '2026-10-13 21:11:33.123817', 'hi', 1, 25, 'female', 'widow', 2500000.0, 'homemaker', 'Citizen-33AF18', 'none', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-2BCB32BD', '2026-10-13 21:11:33.320322', 'hi', 1, 45, 'male', 'single', 100000.0, 'farmer', 'Citizen-459080', 'none', '{"age": 45, "gender": "male", "marital_status": "single", "annual_income": 100000.0, "occupation": "farmer", "disability_status": "none", "available_documents": ["bank_passbook", "land_records_khatauni"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-AC45A42D', '2026-10-13 21:11:47.237030', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-A9AFED', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-1B8752A1', '2026-10-13 21:12:12.197906', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-BB3C1B', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-C073B8E0', '2026-10-13 21:20:36.009947', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-ED7AD0', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-24A28873', '2026-10-13 21:20:36.094617', 'hi', 1, 20, 'male', 'single', 120000.0, 'student', 'Citizen-956B04', 'none', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-06062455', '2026-10-13 21:20:36.175781', 'hi', 1, 25, 'female', 'widow', 2500000.0, 'homemaker', 'Citizen-39085F', 'none', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-FA4B330E', '2026-10-13 21:20:36.219229', 'hi', 1, 45, 'male', 'single', 100000.0, 'farmer', 'Citizen-D855F8', 'none', '{"age": 45, "gender": "male", "marital_status": "single", "annual_income": 100000.0, "occupation": "farmer", "disability_status": "none", "available_documents": ["bank_passbook", "land_records_khatauni"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-55698EEA', '2026-10-13 21:21:00.973288', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-86C119', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-014EE972', '2026-10-13 21:44:12.607135', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-DC7610', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-636482D0', '2026-10-13 21:44:12.722816', 'hi', 1, 20, 'male', 'single', 120000.0, 'student', 'Citizen-F8F53C', 'none', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-F81C7910', '2026-10-13 21:44:12.960183', 'hi', 1, 25, 'female', 'widow', 2500000.0, 'homemaker', 'Citizen-5408D1', 'none', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-97221FFC', '2026-10-13 21:44:13.071176', 'hi', 1, 45, 'male', 'single', 100000.0, 'farmer', 'Citizen-565983', 'none', '{"age": 45, "gender": "male", "marital_status": "single", "annual_income": 100000.0, "occupation": "farmer", "disability_status": "none", "available_documents": ["bank_passbook", "land_records_khatauni"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-29168D10', '2026-10-13 21:51:10.684810', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-A2DB30', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-F7949858', '2026-10-13 22:33:24.238728', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-126009', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-75C587F5', '2026-10-13 22:36:30.222401', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-F25EFB', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-58B2F4C2', '2026-10-13 22:37:58.333707', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-ACE49C', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-156C5A6E', '2026-10-13 22:49:37.513735', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-3A84D3', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-CB8C5F52', '2026-10-13 22:56:34.230687', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-11653E', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-DE3561CC', '2026-10-13 23:09:38.629931', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-3DE5D7', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-70A5C4C1', '2026-10-13 23:11:39.398614', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-3A9E7C', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-8AB61932', '2026-10-13 23:14:01.289029', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-27843D', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-2A6C1C48', '2026-10-13 23:15:56.724338', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-EC1121', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-887F9F17', '2026-10-13 23:17:36.794170', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-18D913', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-6CBEA44A', '2026-10-13 23:32:06.573921', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-9D0568', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-E6BDCE5C', '2026-10-13 23:43:31.993917', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-1E9396', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-C3CEB459', '2026-10-13 23:49:19.487769', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-CF6960', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-1BC5B18F', '2026-10-13 23:53:25.572101', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-1023DA', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-F5FFC10D', '2026-10-13 23:56:12.653938', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-946640', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-7D11A88D', '2026-10-13 23:57:53.796784', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-8467BB', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-426D92FA', '2026-10-13 23:59:44.499644', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-544B3D', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-0AEC3355', '2026-10-14 00:02:50.805684', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-DE88E8', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-9326E3C5', '2026-10-14 00:04:00.571674', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-4F717C', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-FD3D4A33', '2026-10-14 00:05:58.329377', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-901674', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;
INSERT INTO citizens (id, created_at, preferred_language, consent_given, age, gender, marital_status, annual_income, occupation, full_name, disability_status, direct_apply_payload_json, digilocker_id, dob, is_digilocker_verified, digilocker_token_expiry) VALUES ('CIT-C30E3C72', '2026-10-14 00:09:39.809797', 'hi', 1, 65, 'female', 'widow', 0.0, 'homemaker', 'Citizen-1509B7', 'none', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', NULL, NULL, 0, NULL) ON CONFLICT DO NOTHING;

-- Table: schemes (5 rows)
INSERT INTO schemes (scheme_id, title, rule_version, processing_deadline_days, official_portal_url, official_source_name, source_gazette_or_guideline_url, citizen_charter_clause, last_verified_date, is_live_data_source, ministry_or_department, state_or_level, official_guidelines_url, last_synced_at, is_live_source) VALUES ('scholarship', 'Post-Matric Scholarship for SC/ST/OBC Students', 'v3.0.2', 60, 'https://scholarships.gov.in', 'Ministry of Social Justice & Empowerment, Govt of India / National Scholarship Portal (NSP)', 'https://scholarships.gov.in/public/schemeGuidelines/Post_Matric_Scholarship_Guidelines.pdf', 'Mandated under National Scholarship Portal Citizen''s Charter, Para 3.2 & DBT Service Rules (Statutory SLA: 60 days)', '14-Oct-2026', 1, 'Ministry of Social Justice & Empowerment, Govt of India / National Scholarship Portal (NSP)', 'Central / State Ministry of Social Justice & Empowerment', 'https://scholarships.gov.in/public/schemeGuidelines/Post_Matric_Scholarship_Guidelines.pdf', '2026-10-14 00:10:03.706861', 1) ON CONFLICT DO NOTHING;
INSERT INTO schemes (scheme_id, title, rule_version, processing_deadline_days, official_portal_url, official_source_name, source_gazette_or_guideline_url, citizen_charter_clause, last_verified_date, is_live_data_source, ministry_or_department, state_or_level, official_guidelines_url, last_synced_at, is_live_source) VALUES ('widow_pension', 'Indira Gandhi National Widow Pension Scheme (IGNWPS)', 'v1.4.0', 30, 'https://nsap.dord.gov.in', 'Ministry of Rural Development, Govt of India / National Social Assistance Programme (NSAP)', 'https://nsap.dord.gov.in/Guidelines/National_Social_Assistance_Programme_Guidelines.pdf', 'Mandated under State Right to Public Services Act, Sec 4 & NSAP Citizen''s Charter (Statutory SLA: 30 days)', '14-Oct-2026', 1, 'Ministry of Rural Development, Govt of India / National Social Assistance Programme (NSAP)', 'Central / State Sponsored', 'https://nsap.dord.gov.in/Guidelines/National_Social_Assistance_Programme_Guidelines.pdf', '2026-10-14 00:10:03.707859', 1) ON CONFLICT DO NOTHING;
INSERT INTO schemes (scheme_id, title, rule_version, processing_deadline_days, official_portal_url, official_source_name, source_gazette_or_guideline_url, citizen_charter_clause, last_verified_date, is_live_data_source, ministry_or_department, state_or_level, official_guidelines_url, last_synced_at, is_live_source) VALUES ('kisan_yojna', 'Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)', 'v2.4.0', 30, 'https://pmkisan.gov.in', 'Department of Agriculture & Farmers Welfare, Ministry of Agriculture & Farmers Welfare, Govt of India', 'https://pmkisan.gov.in/Documents/RevisedPMKisanGuidelines.pdf', 'PM-KISAN Operational Guidelines Clause 8.1 & Citizen''s Charter on Public Service Guarantees (Statutory SLA: 30 days)', '14-Oct-2026', 1, 'Department of Agriculture & Farmers Welfare, Ministry of Agriculture & Farmers Welfare, Govt of India', 'Central Sector Scheme, Ministry of Agriculture & Farmers Welfare', 'https://pmkisan.gov.in/Documents/RevisedPMKisanGuidelines.pdf', '2026-10-14 00:10:03.702860', 1) ON CONFLICT DO NOTHING;
INSERT INTO schemes (scheme_id, title, rule_version, processing_deadline_days, official_portal_url, official_source_name, source_gazette_or_guideline_url, citizen_charter_clause, last_verified_date, is_live_data_source, ministry_or_department, state_or_level, official_guidelines_url, last_synced_at, is_live_source) VALUES ('old_age_pension', 'Indira Gandhi National Old Age Pension Scheme (IGNOAPS)', 'v1.4.0', 45, 'https://nsap.dord.gov.in', 'Ministry of Rural Development, Govt of India / National Social Assistance Programme (NSAP)', 'https://nsap.dord.gov.in/Guidelines/National_Social_Assistance_Programme_Guidelines.pdf', 'Statutory SLA under NSAP Citizen''s Charter & State Right to Public Services Act (Statutory SLA: 45 days)', '14-Oct-2026', 1, 'Ministry of Rural Development, Govt of India / National Social Assistance Programme (NSAP)', 'Central / State Sponsored', 'https://nsap.dord.gov.in/Guidelines/National_Social_Assistance_Programme_Guidelines.pdf', '2026-10-14 00:10:03.703859', 1) ON CONFLICT DO NOTHING;
INSERT INTO schemes (scheme_id, title, rule_version, processing_deadline_days, official_portal_url, official_source_name, source_gazette_or_guideline_url, citizen_charter_clause, last_verified_date, is_live_data_source, ministry_or_department, state_or_level, official_guidelines_url, last_synced_at, is_live_source) VALUES ('family_benefit', 'National Family Benefit Scheme (NFBS)', 'v1.2.0', 30, 'https://nsap.dord.gov.in', 'Ministry of Rural Development, Govt of India / National Social Assistance Programme (NSAP)', 'https://nsap.dord.gov.in/Guidelines/National_Social_Assistance_Programme_Guidelines.pdf', 'Statutory Service Guarantee under NSAP Citizen''s Charter (Statutory SLA: 30 days)', '14-Oct-2026', 1, 'Ministry of Rural Development, Govt of India / National Social Assistance Programme (NSAP)', 'Central / State Sponsored', 'https://nsap.dord.gov.in/Guidelines/National_Social_Assistance_Programme_Guidelines.pdf', '2026-10-14 00:10:03.702860', 1) ON CONFLICT DO NOTHING;

-- Table: applications (186 rows)
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-SUNITA-ACTIVE-01', 'CIT-SUNITA-65', 'widow_pension', 'rejected', '2026-10-08 11:53:13.875714', '2026-11-07 11:53:13.875714') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-SUNITA-OVERDUE-02', 'CIT-SUNITA-65', 'kisan_yojna', 'under_review', '2026-08-09 11:53:13.878715', '2026-09-23 11:53:13.878715') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-RAHUL-SCHOLAR-03', 'CIT-RAHUL-20', 'scholarship', 'pending_documents', '2026-10-01 11:53:13.881712', '2026-11-30 11:53:13.881712') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-29F3D0B9', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 11:54:02.992447', '2026-11-12 11:54:02.992447') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-83245D6E', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 11:54:26.744035', '2026-11-12 11:54:26.744035') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-9AC67F71', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 11:54:54.168886', '2026-11-12 11:54:54.168886') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-342DB9EE', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 13:41:16.907717', '2026-11-12 13:41:16.907717') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-3674B845', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 13:41:48.357286', '2026-11-12 13:41:48.357286') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-C13E81FE', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 16:55:01.277191', '2026-11-12 16:55:01.277191') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-187FAD1D', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 17:34:11.712979', '2026-11-12 17:34:11.712979') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-88381F61', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 17:36:57.364570', '2026-11-12 17:36:57.364570') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-51ACA45A', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 17:43:23.157678', '2026-11-12 17:43:23.157678') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-CEA7F3E5', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 17:44:14.986003', '2026-11-12 17:44:14.986003') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-3ED71161', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 17:47:26.828205', '2026-11-12 17:47:26.828205') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-4F136837', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 17:57:47.694651', '2026-11-12 17:57:47.694651') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-BB4C908F', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 17:58:17.982988', '2026-11-12 17:58:17.982988') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-7ADC21F4', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 17:58:35.152613', '2026-11-12 17:58:35.152613') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-A08503BC', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 18:03:04.015976', '2026-11-12 18:03:04.015976') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-13995A0C', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 18:04:31.178011', '2026-11-12 18:04:31.178011') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-59A1F5FB', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 18:08:57.566650', '2026-11-12 18:08:57.566650') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-9B2D4DD4', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 18:11:09.809560', '2026-11-12 18:11:09.809560') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-CD2F4D39', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 18:12:42.809881', '2026-11-12 18:12:42.809881') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-2EB2D923', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 18:22:21.282280', '2026-11-12 18:22:21.282280') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-C102EE4C', 'CIT-D19C51AC', 'widow_pension', 'submitted', '2026-10-13 18:23:00.285283', '2026-11-12 18:23:00.285283') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-C4623FC5', 'CIT-1705194A', 'scholarship', 'submitted', '2026-10-13 18:23:00.418231', '2026-12-12 18:23:00.418231') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-FB7CDD88', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 18:23:52.716457', '2026-11-12 18:23:52.716457') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-A065E7DD', 'CIT-4BE5E22A', 'widow_pension', 'submitted', '2026-10-13 18:23:53.300031', '2026-11-12 18:23:53.300031') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-7018F1A9', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 18:24:39.565027', '2026-11-12 18:24:39.565027') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-84414EDA', 'CIT-959524F8', 'widow_pension', 'submitted', '2026-10-13 18:24:40.140995', '2026-11-12 18:24:40.140995') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-F0E7B121', 'CIT-DEDE687E', 'widow_pension', 'submitted', '2026-10-13 18:25:06.144135', '2026-11-12 18:25:06.144135') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-03366FC9', 'CIT-8A41573E', 'scholarship', 'submitted', '2026-10-13 18:25:06.325937', '2026-12-12 18:25:06.325937') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-85D75C99', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 18:28:08.885617', '2026-11-12 18:28:08.885617') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-5F72E76C', 'CIT-E42B2C42', 'widow_pension', 'submitted', '2026-10-13 18:28:09.529973', '2026-11-12 18:28:09.529973') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-7453ADC6', 'CIT-7677A77C', 'widow_pension', 'submitted', '2026-10-13 18:28:37.453073', '2026-11-12 18:28:37.453073') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-D01FAD58', 'CIT-9E93CD0E', 'scholarship', 'submitted', '2026-10-13 18:28:37.517285', '2026-12-12 18:28:37.517285') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-3620346B', 'CIT-856DF45A', 'widow_pension', 'submitted', '2026-10-13 18:34:04.041908', '2026-11-12 18:34:04.041908') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-F957B323', 'CIT-09608EB3', 'scholarship', 'submitted', '2026-10-13 18:34:04.183755', '2026-12-12 18:34:04.183755') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-402CA08B', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 18:34:17.151987', '2026-11-12 18:34:17.151987') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-1C59FD97', 'CIT-5DABB646', 'widow_pension', 'submitted', '2026-10-13 18:34:18.131161', '2026-11-12 18:34:18.131161') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-189DD704', 'CIT-F078C638', 'widow_pension', 'submitted', '2026-10-13 18:34:35.938399', '2026-11-12 18:34:35.938399') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-C0534495', 'CIT-45C3628F', 'scholarship', 'submitted', '2026-10-13 18:34:36.027792', '2026-12-12 18:34:36.027792') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-FED785A1', 'CIT-10FE9B75', 'widow_pension', 'submitted', '2026-10-13 18:40:33.532909', '2026-11-12 18:40:33.532909') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-6781FF09', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 18:43:51.344686', '2026-11-12 18:43:51.344686') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-BDBFEB8F', 'CIT-7FACCCF3', 'widow_pension', 'submitted', '2026-10-13 18:43:51.752880', '2026-11-12 18:43:51.752880') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-7DF67D92', 'CIT-E4351FE0', 'widow_pension', 'submitted', '2026-10-13 18:44:20.618964', '2026-11-12 18:44:20.618964') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-822E53E3', 'CIT-A1395524', 'scholarship', 'submitted', '2026-10-13 18:44:20.753752', '2026-12-12 18:44:20.753752') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-8C2CB8D3', 'CIT-F3D4FBFF', 'widow_pension', 'submitted', '2026-10-13 19:29:38.240971', '2026-11-12 19:29:38.240971') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-4A2A6248', 'CIT-A019924A', 'scholarship', 'submitted', '2026-10-13 19:29:38.290794', '2026-12-12 19:29:38.290794') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-123C9766', 'CIT-9C1B19AF', 'widow_pension', 'submitted', '2026-10-13 19:31:11.401355', '2026-11-12 19:31:11.401355') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-85A16270', 'CIT-C7FA3435', 'scholarship', 'submitted', '2026-10-13 19:31:11.453736', '2026-12-12 19:31:11.453736') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-F180F6EB', 'CIT-A9A3F5F4', 'widow_pension', 'submitted', '2026-10-13 19:52:52.212809', '2026-11-12 19:52:52.212809') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-93C8F890', 'CIT-4180BA8B', 'scholarship', 'submitted', '2026-10-13 19:52:52.326425', '2026-12-12 19:52:52.326425') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-9249AC56', 'CIT-12818FD0', 'kisan_yojna', 'submitted', '2026-10-13 19:52:52.528392', '2026-11-12 19:52:52.528392') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-B4EDF49A', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 19:53:14.051629', '2026-11-12 19:53:14.051629') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-18E4122E', 'CIT-9F6C7F43', 'widow_pension', 'submitted', '2026-10-13 19:53:14.299767', '2026-11-12 19:53:14.299767') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-FA118C7A', 'CIT-25499557', 'widow_pension', 'submitted', '2026-10-13 20:02:42.077850', '2026-11-12 20:02:42.077850') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-427A8789', 'CIT-C9A2C6B1', 'scholarship', 'submitted', '2026-10-13 20:02:42.400182', '2026-12-12 20:02:42.400182') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-378E0DBE', 'CIT-00C3C58B', 'kisan_yojna', 'submitted', '2026-10-13 20:02:43.465980', '2026-11-12 20:02:43.465980') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-A16E4B23', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 20:03:01.516093', '2026-11-12 20:03:01.516093') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-C48D6304', 'CIT-4CCF06A7', 'widow_pension', 'submitted', '2026-10-13 20:03:01.740195', '2026-11-12 20:03:01.740195') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-FB406AFB', 'CIT-88F8B9EB', 'widow_pension', 'submitted', '2026-10-13 20:04:53.685169', '2026-11-12 20:04:53.685169') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-7DFD874F', 'CIT-F1E6D980', 'scholarship', 'submitted', '2026-10-13 20:04:53.741658', '2026-12-12 20:04:53.741658') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-2FD6E0E0', 'CIT-A5AF8C70', 'kisan_yojna', 'submitted', '2026-10-13 20:04:53.832372', '2026-11-12 20:04:53.832372') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-C2CF3D5A', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 20:05:14.816703', '2026-11-12 20:05:14.816703') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-09D15028', 'CIT-095AA1AF', 'widow_pension', 'submitted', '2026-10-13 20:05:15.116956', '2026-11-12 20:05:15.116956') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-49CBE712', 'CIT-5CAFC808', 'widow_pension', 'submitted', '2026-10-13 20:24:37.298127', '2026-11-12 20:24:37.298127') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-19BC6659', 'CIT-E9750035', 'scholarship', 'submitted', '2026-10-13 20:24:37.351280', '2026-12-12 20:24:37.351280') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-9559B35F', 'CIT-EB430E14', 'kisan_yojna', 'submitted', '2026-10-13 20:24:37.610528', '2026-11-12 20:24:37.610528') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-AA1712A0', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 20:52:25.621002', '2026-11-12 20:52:25.621002') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-5ABC0183', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 20:53:10.079423', '2026-11-12 20:53:10.079423') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-614B05AA', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 20:54:07.024776', '2026-11-12 20:54:07.024776') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-62C9CBED', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 20:56:36.096968', '2026-11-12 20:56:36.096968') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-735816AE', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 20:56:47.817053', '2026-11-12 20:56:47.817053') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-22B5A124', 'CIT-C0221684', 'widow_pension', 'submitted', '2026-10-13 20:56:47.916757', '2026-11-12 20:56:47.916757') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-319A9670', 'CIT-C643C35F', 'scholarship', 'submitted', '2026-10-13 20:56:47.981174', '2026-12-12 20:56:47.981174') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-90AF66EC', 'CIT-84868A8C', 'kisan_yojna', 'submitted', '2026-10-13 20:56:48.080759', '2026-11-12 20:56:48.080759') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-78ECA52A', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 20:57:29.813383', '2026-11-12 20:57:29.813383') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-974F857D', 'CIT-68A5B003', 'widow_pension', 'submitted', '2026-10-13 20:57:30.016422', '2026-11-12 20:57:30.016422') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-16D9E4CC', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 20:58:04.051686', '2026-11-12 20:58:04.051686') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-E5F3EB2A', 'CIT-508AB10B', 'widow_pension', 'submitted', '2026-10-13 20:58:04.255837', '2026-11-12 20:58:04.255837') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-B3F28707', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 20:58:04.310890', '2026-11-12 20:58:04.310890') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-6AC16D2C', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 20:58:36.864036', '2026-11-12 20:58:36.864036') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-6444EEA4', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 20:59:42.527308', '2026-11-12 20:59:42.527308') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-A67D3759', 'CIT-5454EA65', 'widow_pension', 'submitted', '2026-10-13 20:59:42.624727', '2026-11-12 20:59:42.624727') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-2DB1338F', 'CIT-92BED64B', 'scholarship', 'submitted', '2026-10-13 20:59:42.691029', '2026-12-12 20:59:42.691029') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-985BA010', 'CIT-8EBD8B8B', 'kisan_yojna', 'submitted', '2026-10-13 20:59:42.770480', '2026-11-12 20:59:42.770480') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-04FB4B7A', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 20:59:53.489731', '2026-11-12 20:59:53.489731') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-072E2DC1', 'CIT-48C26256', 'widow_pension', 'submitted', '2026-10-13 20:59:53.697619', '2026-11-12 20:59:53.697619') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-D1D6C7D0', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 20:59:53.752612', '2026-11-12 20:59:53.752612') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-AED4E835', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 21:01:41.458691', '2026-11-12 21:01:41.458691') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-EB91B33A', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 21:01:48.875593', '2026-11-12 21:01:48.875593') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-70514525', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 21:02:47.227409', '2026-11-12 21:02:47.227409') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-86EFED47', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 21:02:48.715266', '2026-11-12 21:02:48.715266') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-1BEC56AF', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 21:03:00.462040', '2026-11-12 21:03:00.462040') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-F9C90F52', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 21:03:02.012319', '2026-11-12 21:03:02.012319') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-343C9455', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 21:11:08.268982', '2026-11-12 21:11:08.268982') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-67986217', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 21:11:32.900995', '2026-11-12 21:11:32.900995') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-EA9C85FC', 'CIT-F12279E0', 'widow_pension', 'submitted', '2026-10-13 21:11:33.002024', '2026-11-12 21:11:33.002024') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-AB1DB0AA', 'CIT-7B885C4D', 'scholarship', 'submitted', '2026-10-13 21:11:33.060439', '2026-12-12 21:11:33.060439') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-6800A978', 'CIT-2BCB32BD', 'kisan_yojna', 'submitted', '2026-10-13 21:11:33.328325', '2026-11-12 21:11:33.328325') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-04356744', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 21:11:47.043243', '2026-11-12 21:11:47.043243') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-044ED27C', 'CIT-AC45A42D', 'widow_pension', 'submitted', '2026-10-13 21:11:47.248035', '2026-11-12 21:11:47.248035') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-6508ACDB', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 21:12:12.006290', '2026-11-12 21:12:12.006290') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-DA67FA66', 'CIT-1B8752A1', 'widow_pension', 'submitted', '2026-10-13 21:12:12.205908', '2026-11-12 21:12:12.205908') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-1343B20E', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 21:12:12.264872', '2026-11-12 21:12:12.264872') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-57D0407B', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 21:12:46.898087', '2026-11-12 21:12:46.898087') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-4F2C109D', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 21:20:35.696305', '2026-11-12 21:20:35.696305') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-AFC4D9A9', 'CIT-C073B8E0', 'widow_pension', 'submitted', '2026-10-13 21:20:36.017949', '2026-11-12 21:20:36.017949') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-DAF00F79', 'CIT-24A28873', 'scholarship', 'submitted', '2026-10-13 21:20:36.100621', '2026-12-12 21:20:36.100621') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-E9C88A06', 'CIT-FA4B330E', 'kisan_yojna', 'submitted', '2026-10-13 21:20:36.227237', '2026-11-12 21:20:36.227237') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-82403435', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 21:21:00.776917', '2026-11-12 21:21:00.776917') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-6661AC6D', 'CIT-55698EEA', 'widow_pension', 'submitted', '2026-10-13 21:21:00.978290', '2026-11-12 21:21:00.978290') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-3A34500D', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 21:21:01.036326', '2026-11-12 21:21:01.036326') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-532DF10E', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 21:21:19.585725', '2026-11-12 21:21:19.585725') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-32E3F16A', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 21:22:12.325573', '2026-11-12 21:22:12.325573') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-67EDBACF', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 21:44:12.482546', '2026-11-12 21:44:12.482546') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-C8F21507', 'CIT-014EE972', 'widow_pension', 'submitted', '2026-10-13 21:44:12.614140', '2026-11-12 21:44:12.614140') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-EE545020', 'CIT-636482D0', 'scholarship', 'submitted', '2026-10-13 21:44:12.730822', '2026-12-12 21:44:12.730822') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-7CC8E6BC', 'CIT-97221FFC', 'kisan_yojna', 'submitted', '2026-10-13 21:44:13.077173', '2026-11-12 21:44:13.077173') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-4FE9D0A8', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 21:51:10.405305', '2026-11-12 21:51:10.405305') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-F7D9AE8E', 'CIT-29168D10', 'widow_pension', 'submitted', '2026-10-13 21:51:10.695810', '2026-11-12 21:51:10.695810') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-5E7D3955', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 21:51:10.774378', '2026-11-12 21:51:10.774378') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-07125869', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 22:03:39.034096', '2026-11-12 22:03:39.034096') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-17EEDF86', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 22:33:24.014606', '2026-11-12 22:33:24.014606') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-388159A3', 'CIT-F7949858', 'widow_pension', 'submitted', '2026-10-13 22:33:24.246749', '2026-11-12 22:33:24.246749') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-3F4B008D', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 22:33:24.310881', '2026-11-12 22:33:24.310881') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-0C708EE4', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 22:36:29.857401', '2026-11-12 22:36:29.857401') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-DC446A5B', 'CIT-75C587F5', 'widow_pension', 'submitted', '2026-10-13 22:36:30.233972', '2026-11-12 22:36:30.233972') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-4DD79500', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 22:36:30.336465', '2026-11-12 22:36:30.336465') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-05B5EF0C', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 22:37:58.117310', '2026-11-12 22:37:58.117310') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-E3A93483', 'CIT-58B2F4C2', 'widow_pension', 'submitted', '2026-10-13 22:37:58.340777', '2026-11-12 22:37:58.340777') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-B22181B1', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 22:37:58.406108', '2026-11-12 22:37:58.406108') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-614A2ADC', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 22:49:37.306049', '2026-11-12 22:49:37.306049') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-A18FE61A', 'CIT-156C5A6E', 'widow_pension', 'submitted', '2026-10-13 22:49:37.520733', '2026-11-12 22:49:37.520733') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-59E66879', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 22:49:37.580749', '2026-11-12 22:49:37.580749') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-D209CB86', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 22:56:34.023396', '2026-11-12 22:56:34.023396') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-5B9D9989', 'CIT-CB8C5F52', 'widow_pension', 'submitted', '2026-10-13 22:56:34.235898', '2026-11-12 22:56:34.235898') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-B878E030', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 22:56:34.302440', '2026-11-12 22:56:34.302440') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-1842E4F7', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 23:09:38.430676', '2026-11-12 23:09:38.430676') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-0A6FB83E', 'CIT-DE3561CC', 'widow_pension', 'submitted', '2026-10-13 23:09:38.635931', '2026-11-12 23:09:38.635931') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-9858768D', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 23:09:38.696488', '2026-11-12 23:09:38.696488') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-DFB95D94', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 23:11:39.201051', '2026-11-12 23:11:39.201051') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-DED582D1', 'CIT-70A5C4C1', 'widow_pension', 'submitted', '2026-10-13 23:11:39.404034', '2026-11-12 23:11:39.404034') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-E8CD9A7E', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 23:11:39.462778', '2026-11-12 23:11:39.462778') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-5BCC8A2A', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 23:14:01.089605', '2026-11-12 23:14:01.089605') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-C87819B2', 'CIT-8AB61932', 'widow_pension', 'submitted', '2026-10-13 23:14:01.296032', '2026-11-12 23:14:01.296032') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-6CEA588B', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 23:14:01.355945', '2026-11-12 23:14:01.355945') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-6767226C', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 23:15:56.521648', '2026-11-12 23:15:56.521648') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-7E76FF3F', 'CIT-2A6C1C48', 'widow_pension', 'submitted', '2026-10-13 23:15:56.729333', '2026-11-12 23:15:56.729333') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-AA0E4DD7', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 23:15:56.791279', '2026-11-12 23:15:56.791279') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-E6CED10B', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 23:17:36.593269', '2026-11-12 23:17:36.593269') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-D3940516', 'CIT-887F9F17', 'widow_pension', 'submitted', '2026-10-13 23:17:36.799180', '2026-11-12 23:17:36.799180') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-9C936915', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 23:17:36.860142', '2026-11-12 23:17:36.860142') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-4E0BFAD4', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 23:32:06.377043', '2026-11-12 23:32:06.377043') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-D755153C', 'CIT-6CBEA44A', 'widow_pension', 'submitted', '2026-10-13 23:32:06.582328', '2026-11-12 23:32:06.582328') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-5D1F0D31', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 23:32:06.647720', '2026-11-12 23:32:06.647720') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-856A0C6B', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 23:43:31.781166', '2026-11-12 23:43:31.781166') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-41F82696', 'CIT-E6BDCE5C', 'widow_pension', 'submitted', '2026-10-13 23:43:31.998924', '2026-11-12 23:43:31.998924') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-75064AE4', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 23:43:32.060730', '2026-11-12 23:43:32.060730') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-927BF9C8', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 23:49:19.283083', '2026-11-12 23:49:19.283083') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-7A5B7947', 'CIT-C3CEB459', 'widow_pension', 'submitted', '2026-10-13 23:49:19.494805', '2026-11-12 23:49:19.494805') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-48F656A0', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 23:49:19.553000', '2026-11-12 23:49:19.553000') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-8D701F27', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 23:53:25.371253', '2026-11-12 23:53:25.371253') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-7D338666', 'CIT-1BC5B18F', 'widow_pension', 'submitted', '2026-10-13 23:53:25.578101', '2026-11-12 23:53:25.578101') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-39AF3614', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 23:53:25.643397', '2026-11-12 23:53:25.643397') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-46A7C54E', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 23:56:12.462181', '2026-11-12 23:56:12.462181') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-8CCF97EF', 'CIT-F5FFC10D', 'widow_pension', 'submitted', '2026-10-13 23:56:12.660955', '2026-11-12 23:56:12.660955') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-76287F28', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 23:56:12.727155', '2026-11-12 23:56:12.727155') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-9C080C96', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 23:57:53.590888', '2026-11-12 23:57:53.590888') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-66205690', 'CIT-7D11A88D', 'widow_pension', 'submitted', '2026-10-13 23:57:53.802788', '2026-11-12 23:57:53.802788') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-CECC072B', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 23:57:53.868313', '2026-11-12 23:57:53.868313') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-8F1BF646', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-13 23:59:44.349773', '2026-11-12 23:59:44.349773') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-24605BD8', 'CIT-426D92FA', 'widow_pension', 'submitted', '2026-10-13 23:59:44.508647', '2026-11-12 23:59:44.508647') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-6CFC5BFE', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-13 23:59:44.573671', '2026-11-12 23:59:44.573671') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-BD88D5CB', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-14 00:02:50.652453', '2026-11-13 00:02:50.652453') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-4A3AF953', 'CIT-0AEC3355', 'widow_pension', 'submitted', '2026-10-14 00:02:50.813688', '2026-11-13 00:02:50.813688') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-59669C0B', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-14 00:02:50.870648', '2026-11-13 00:02:50.870648') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-B5650517', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-14 00:04:00.426763', '2026-11-13 00:04:00.426763') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-143F3CAD', 'CIT-9326E3C5', 'widow_pension', 'submitted', '2026-10-14 00:04:00.579640', '2026-11-13 00:04:00.579640') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-D7BE8D5C', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-14 00:04:00.643922', '2026-11-13 00:04:00.643922') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-0C51B64B', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-14 00:05:58.170012', '2026-11-13 00:05:58.170012') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-DF992C2F', 'CIT-FD3D4A33', 'widow_pension', 'submitted', '2026-10-14 00:05:58.336377', '2026-11-13 00:05:58.336377') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-567A4094', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-14 00:05:58.406471', '2026-11-13 00:05:58.406471') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-85B71275', 'CIT-SUNITA-65', 'widow_pension', 'under_review', '2026-10-14 00:09:39.675794', '2026-11-13 00:09:39.675794') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-9B37E1CA', 'CIT-C30E3C72', 'widow_pension', 'submitted', '2026-10-14 00:09:39.817798', '2026-11-13 00:09:39.817798') ON CONFLICT DO NOTHING;
INSERT INTO applications (id, citizen_id, scheme_id, status, submitted_at, expected_resolution_date) VALUES ('APP-595352AD', 'CIT-SUNITA-65', 'widow_pension', 'submitted', '2026-10-14 00:09:39.882064', '2026-11-13 00:09:39.882064') ON CONFLICT DO NOTHING;

-- Table: digilocker_documents (2 rows)
INSERT INTO digilocker_documents (id, citizen_id, doc_type, doc_name, issuer_name, issuer_id, doc_uri, extracted_data_json, verification_status, fetched_at) VALUES (1, 'CIT-SUNITA-65', 'ration_card', 'Ration Card (NFSA)', 'Department of Food Supplies and Consumer Affairs, Govt of NCT Delhi', 'in.gov.delhi.food', 'in.gov.delhi.food-RATION-DL07892140182', '{"full_name": "Sunita Devi", "dob": "12/04/1959", "annual_income": 0.0, "category": "BPL", "validity": "Valid", "raw_issuer": "Department of Food Supplies and Consumer Affairs, Govt of NCT Delhi", "digital_signature": "SHA256_RSA_DIGILOCKER_VERIFIED"}', 'VERIFIED', '2026-10-14 00:09:39.858792') ON CONFLICT DO NOTHING;
INSERT INTO digilocker_documents (id, citizen_id, doc_type, doc_name, issuer_name, issuer_id, doc_uri, extracted_data_json, verification_status, fetched_at) VALUES (2, 'CIT-SUNITA-65', 'income_certificate', 'Annual Income Certificate', 'Revenue Department, Govt of NCT Delhi', 'in.gov.delhi.revenue', 'in.gov.delhi.revenue-INCER-2024-981240182', '{"full_name": "Sunita Devi", "dob": "12/04/1959", "annual_income": 0.0, "category": "Below Poverty Line / Vidhwa", "validity": "Valid", "raw_issuer": "Revenue Department, Govt of NCT Delhi", "digital_signature": "SHA256_RSA_DIGILOCKER_VERIFIED"}', 'VERIFIED', '2026-10-14 00:09:39.864798') ON CONFLICT DO NOTHING;

-- Table: voice_interaction_logs (144 rows)
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (2, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 17:57:10.731615') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (3, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 17:58:18.109948') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (4, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 17:58:35.271615') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (5, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 1, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 18:03:04.128976') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (6, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 18:04:31.310383') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (7, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 18:08:57.708763') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (8, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 18:11:09.937562') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (9, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 18:12:42.973876') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (10, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 18:22:24.672249') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (11, 'CIT-D19C51AC', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 18:23:00.266278') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (12, 'CIT-1705194A', 'en-IN', 'Hello, my age is twenty years, I am an unmarried male student. Household income is dus hazaar mahina. I want scholarship. Aadhaar [REDACTED-AADHAAR].', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', '2026-10-13 18:23:00.411229') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (13, 'CIT-B21DB4ED', 'hi-IN', 'Namaste, meri umar 25 saal hai, purush hoon, unmarried hoon. Meri aamdani 25 lakh saalana hai. Mujhe vidhwa pension chahiye.', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', '2026-10-13 18:23:00.579005') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (14, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 18:23:53.243025') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (15, 'CIT-4BE5E22A', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 18:23:53.294022') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (16, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 18:24:40.088730') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (17, 'CIT-959524F8', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 18:24:40.134990') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (18, 'CIT-DEDE687E', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 18:25:06.127136') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (19, 'CIT-8A41573E', 'en-IN', 'Hello, my age is twenty years, I am an unmarried male student. Household income is dus hazaar mahina. I want scholarship. Aadhaar [REDACTED-AADHAAR].', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', '2026-10-13 18:25:06.319938') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (20, 'CIT-DA102FC3', 'hi-IN', 'Namaste, meri umar 25 saal hai, purush hoon, unmarried hoon. Meri aamdani 25 lakh saalana hai. Mujhe vidhwa pension chahiye.', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', '2026-10-13 18:25:06.447398') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (21, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 18:28:09.467185') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (22, 'CIT-E42B2C42', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 18:28:09.524969') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (23, 'CIT-7677A77C', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 18:28:37.438067') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (24, 'CIT-9E93CD0E', 'en-IN', 'Hello, my age is twenty years, I am an unmarried male student. Household income is dus hazaar mahina. I want scholarship. Aadhaar [REDACTED-AADHAAR].', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', '2026-10-13 18:28:37.512285') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (25, 'CIT-9C921E68', 'hi-IN', 'Namaste, meri umar 25 saal hai, purush hoon, unmarried hoon. Meri aamdani 25 lakh saalana hai. Mujhe vidhwa pension chahiye.', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', '2026-10-13 18:28:37.591149') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (26, 'CIT-856DF45A', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 18:34:04.019911') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (27, 'CIT-09608EB3', 'en-IN', 'Hello, my age is twenty years, I am an unmarried male student. Household income is dus hazaar mahina. I want scholarship. Aadhaar [REDACTED-AADHAAR].', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', '2026-10-13 18:34:04.178761') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (28, 'CIT-CB3AAA1B', 'hi-IN', 'Namaste, meri umar 25 saal hai, purush hoon, unmarried hoon. Meri aamdani 25 lakh saalana hai. Mujhe vidhwa pension chahiye.', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', '2026-10-13 18:34:04.337836') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (29, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 18:34:18.080163') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (30, 'CIT-5DABB646', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 18:34:18.121161') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (31, 'CIT-F078C638', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 18:34:35.927402') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (32, 'CIT-45C3628F', 'en-IN', 'Hello, my age is twenty years, I am an unmarried male student. Household income is dus hazaar mahina. I want scholarship. Aadhaar [REDACTED-AADHAAR].', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', '2026-10-13 18:34:36.018796') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (33, 'CIT-B15345A0', 'hi-IN', 'Namaste, meri umar 25 saal hai, purush hoon, unmarried hoon. Meri aamdani 25 lakh saalana hai. Mujhe vidhwa pension chahiye.', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', '2026-10-13 18:34:36.130547') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (34, NULL, 'hi-IN', 'Namaste, meri umar 65 saal hai, vidhwa hoon, koi aamdani nahi hai, vidhwa pension chahiye.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}}', '2026-10-13 18:40:07.866570') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (35, 'CIT-10FE9B75', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, vidhwa hoon, aamdani zero hai. Mujhe vidhwa pension chahiye. Mera Aadhaar [REDACTED-AADHAAR] hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', '2026-10-13 18:40:33.523913') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (36, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 18:43:51.702880') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (37, 'CIT-7FACCCF3', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 18:43:51.747879') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (38, 'CIT-E4351FE0', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 18:44:20.586967') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (39, 'CIT-A1395524', 'en-IN', 'Hello, my age is twenty years, I am an unmarried male student. Household income is dus hazaar mahina. I want scholarship. Aadhaar [REDACTED-AADHAAR].', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', '2026-10-13 18:44:20.742753') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (40, 'CIT-733FD220', 'hi-IN', 'Namaste, meri umar 25 saal hai, purush hoon, unmarried hoon. Meri aamdani 25 lakh saalana hai. Mujhe vidhwa pension chahiye.', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', '2026-10-13 18:44:21.171198') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (41, 'CIT-F3D4FBFF', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 19:29:38.226972') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (42, 'CIT-A019924A', 'en-IN', 'Hello, my age is twenty years, I am an unmarried male student. Household income is dus hazaar mahina. I want scholarship. Aadhaar [REDACTED-AADHAAR].', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', '2026-10-13 19:29:38.283790') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (43, 'CIT-D144BE2C', 'hi-IN', 'Namaste, meri umar 25 saal hai, purush hoon, unmarried hoon. Meri aamdani 25 lakh saalana hai. Mujhe vidhwa pension chahiye.', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', '2026-10-13 19:29:38.338431') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (44, 'CIT-9C1B19AF', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 19:31:11.388356') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (45, 'CIT-C7FA3435', 'en-IN', 'Hello, my age is twenty years, I am an unmarried male student. Household income is dus hazaar mahina. I want scholarship. Aadhaar [REDACTED-AADHAAR].', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', '2026-10-13 19:31:11.449735') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (46, 'CIT-E131163B', 'hi-IN', 'Namaste, meri umar 25 saal hai, purush hoon, unmarried hoon. Meri aamdani 25 lakh saalana hai. Mujhe vidhwa pension chahiye.', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', '2026-10-13 19:31:11.506181') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (47, 'CIT-A9A3F5F4', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 19:52:52.192154') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (48, 'CIT-4180BA8B', 'en-IN', 'Hello, my age is twenty years, I am an unmarried male student. Household income is dus hazaar mahina. I want scholarship. Aadhaar [REDACTED-AADHAAR].', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', '2026-10-13 19:52:52.319425') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (49, 'CIT-73D0FE5B', 'hi-IN', 'Namaste, meri umar 25 saal hai, purush hoon, unmarried hoon. Meri aamdani 25 lakh saalana hai. Mujhe vidhwa pension chahiye.', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', '2026-10-13 19:52:52.459138') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (50, 'CIT-12818FD0', 'hi-IN', 'Namaste, meri umar 45 saal hai. Main ek kisan hoon, kheti karta hoon. Meri aamdani ek lakh saalana hai. Mujhe Kisan Yojna ke liye aavedan karna hai. Mere paas khatauni aur bank passbook hai. Mera Aadhaar [REDACTED-AADHAAR] hai.', '{"age": 45, "gender": "male", "marital_status": "single", "annual_income": 100000.0, "occupation": "farmer", "disability_status": "none", "available_documents": ["bank_passbook", "land_records_khatauni"]}', '2026-10-13 19:52:52.522393') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (51, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 19:53:14.249767') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (52, 'CIT-9F6C7F43', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 19:53:14.289766') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (53, 'CIT-25499557', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 20:02:42.060833') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (54, 'CIT-C9A2C6B1', 'en-IN', 'Hello, my age is twenty years, I am an unmarried male student. Household income is dus hazaar mahina. I want scholarship. Aadhaar [REDACTED-AADHAAR].', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', '2026-10-13 20:02:42.395172') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (55, 'CIT-886F7ACE', 'hi-IN', 'Namaste, meri umar 25 saal hai, purush hoon, unmarried hoon. Meri aamdani 25 lakh saalana hai. Mujhe vidhwa pension chahiye.', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', '2026-10-13 20:02:42.552109') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (56, 'CIT-00C3C58B', 'hi-IN', 'Namaste, meri umar 45 saal hai. Main ek kisan hoon, kheti karta hoon. Meri aamdani ek lakh saalana hai. Mujhe Kisan Yojna ke liye aavedan karna hai. Mere paas khatauni aur bank passbook hai. Mera Aadhaar [REDACTED-AADHAAR] hai.', '{"age": 45, "gender": "male", "marital_status": "single", "annual_income": 100000.0, "occupation": "farmer", "disability_status": "none", "available_documents": ["bank_passbook", "land_records_khatauni"]}', '2026-10-13 20:02:43.460979') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (57, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 20:03:01.696191') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (58, 'CIT-4CCF06A7', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 20:03:01.732193') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (59, 'CIT-88F8B9EB', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 20:04:53.671145') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (60, 'CIT-F1E6D980', 'en-IN', 'Hello, my age is twenty years, I am an unmarried male student. Household income is dus hazaar mahina. I want scholarship. Aadhaar [REDACTED-AADHAAR].', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', '2026-10-13 20:04:53.737137') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (61, 'CIT-6D94F348', 'hi-IN', 'Namaste, meri umar 25 saal hai, purush hoon, unmarried hoon. Meri aamdani 25 lakh saalana hai. Mujhe vidhwa pension chahiye.', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', '2026-10-13 20:04:53.796898') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (62, 'CIT-A5AF8C70', 'hi-IN', 'Namaste, meri umar 45 saal hai. Main ek kisan hoon, kheti karta hoon. Meri aamdani ek lakh saalana hai. Mujhe Kisan Yojna ke liye aavedan karna hai. Mere paas khatauni aur bank passbook hai. Mera Aadhaar [REDACTED-AADHAAR] hai.', '{"age": 45, "gender": "male", "marital_status": "single", "annual_income": 100000.0, "occupation": "farmer", "disability_status": "none", "available_documents": ["bank_passbook", "land_records_khatauni"]}', '2026-10-13 20:04:53.827375') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (63, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 20:05:15.074953') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (64, 'CIT-095AA1AF', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 20:05:15.111952') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (65, 'CIT-5CAFC808', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 20:24:37.286128') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (66, 'CIT-E9750035', 'en-IN', 'Hello, my age is twenty years, I am an unmarried male student. Household income is dus hazaar mahina. I want scholarship. Aadhaar [REDACTED-AADHAAR].', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', '2026-10-13 20:24:37.345749') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (67, 'CIT-8ED559DD', 'hi-IN', 'Namaste, meri umar 25 saal hai, purush hoon, unmarried hoon. Meri aamdani 25 lakh saalana hai. Mujhe vidhwa pension chahiye.', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', '2026-10-13 20:24:37.411067') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (68, 'CIT-EB430E14', 'hi-IN', 'Namaste, meri umar 45 saal hai. Main ek kisan hoon, kheti karta hoon. Meri aamdani ek lakh saalana hai. Mujhe Kisan Yojna ke liye aavedan karna hai. Mere paas khatauni aur bank passbook hai. Mera Aadhaar [REDACTED-AADHAAR] hai.', '{"age": 45, "gender": "male", "marital_status": "single", "annual_income": 100000.0, "occupation": "farmer", "disability_status": "none", "available_documents": ["bank_passbook", "land_records_khatauni"]}', '2026-10-13 20:24:37.606525') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (69, 'CIT-C0221684', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 20:56:47.911756') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (70, 'CIT-C643C35F', 'en-IN', 'Hello, my age is twenty years, I am an unmarried male student. Household income is dus hazaar mahina. I want scholarship. Aadhaar [REDACTED-AADHAAR].', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', '2026-10-13 20:56:47.976176') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (71, 'CIT-B2A8CBD4', 'hi-IN', 'Namaste, meri umar 25 saal hai, purush hoon, unmarried hoon. Meri aamdani 25 lakh saalana hai. Mujhe vidhwa pension chahiye.', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', '2026-10-13 20:56:48.029710') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (72, 'CIT-84868A8C', 'hi-IN', 'Namaste, meri umar 45 saal hai. Main ek kisan hoon, kheti karta hoon. Meri aamdani ek lakh saalana hai. Mujhe Kisan Yojna ke liye aavedan karna hai. Mere paas khatauni aur bank passbook hai. Mera Aadhaar [REDACTED-AADHAAR] hai.', '{"age": 45, "gender": "male", "marital_status": "single", "annual_income": 100000.0, "occupation": "farmer", "disability_status": "none", "available_documents": ["bank_passbook", "land_records_khatauni"]}', '2026-10-13 20:56:48.075755') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (73, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 20:57:29.986417') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (74, 'CIT-68A5B003', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 20:57:30.010417') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (75, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 20:58:04.226829') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (76, 'CIT-508AB10B', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 20:58:04.251830') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (77, 'CIT-5454EA65', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 20:59:42.620726') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (78, 'CIT-92BED64B', 'en-IN', 'Hello, my age is twenty years, I am an unmarried male student. Household income is dus hazaar mahina. I want scholarship. Aadhaar [REDACTED-AADHAAR].', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', '2026-10-13 20:59:42.686026') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (79, 'CIT-6E01CB45', 'hi-IN', 'Namaste, meri umar 25 saal hai, purush hoon, unmarried hoon. Meri aamdani 25 lakh saalana hai. Mujhe vidhwa pension chahiye.', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', '2026-10-13 20:59:42.739480') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (80, 'CIT-8EBD8B8B', 'hi-IN', 'Namaste, meri umar 45 saal hai. Main ek kisan hoon, kheti karta hoon. Meri aamdani ek lakh saalana hai. Mujhe Kisan Yojna ke liye aavedan karna hai. Mere paas khatauni aur bank passbook hai. Mera Aadhaar [REDACTED-AADHAAR] hai.', '{"age": 45, "gender": "male", "marital_status": "single", "annual_income": 100000.0, "occupation": "farmer", "disability_status": "none", "available_documents": ["bank_passbook", "land_records_khatauni"]}', '2026-10-13 20:59:42.763736') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (81, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 20:59:53.668732') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (82, 'CIT-48C26256', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 20:59:53.693619') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (83, 'CIT-F12279E0', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 21:11:32.998021') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (84, 'CIT-7B885C4D', 'en-IN', 'Hello, my age is twenty years, I am an unmarried male student. Household income is dus hazaar mahina. I want scholarship. Aadhaar [REDACTED-AADHAAR].', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', '2026-10-13 21:11:33.056435') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (85, 'CIT-AA369A45', 'hi-IN', 'Namaste, meri umar 25 saal hai, purush hoon, unmarried hoon. Meri aamdani 25 lakh saalana hai. Mujhe vidhwa pension chahiye.', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', '2026-10-13 21:11:33.124819') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (86, 'CIT-2BCB32BD', 'hi-IN', 'Namaste, meri umar 45 saal hai. Main ek kisan hoon, kheti karta hoon. Meri aamdani ek lakh saalana hai. Mujhe Kisan Yojna ke liye aavedan karna hai. Mere paas khatauni aur bank passbook hai. Mera Aadhaar [REDACTED-AADHAAR] hai.', '{"age": 45, "gender": "male", "marital_status": "single", "annual_income": 100000.0, "occupation": "farmer", "disability_status": "none", "available_documents": ["bank_passbook", "land_records_khatauni"]}', '2026-10-13 21:11:33.324339') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (87, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 21:11:47.215029') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (88, 'CIT-AC45A42D', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 21:11:47.238030') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (89, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 21:12:12.174297') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (90, 'CIT-1B8752A1', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 21:12:12.200880') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (91, 'CIT-C073B8E0', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 21:20:36.012949') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (92, 'CIT-24A28873', 'en-IN', 'Hello, my age is twenty years, I am an unmarried male student. Household income is dus hazaar mahina. I want scholarship. Aadhaar [REDACTED-AADHAAR].', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', '2026-10-13 21:20:36.095624') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (93, 'CIT-06062455', 'hi-IN', 'Namaste, meri umar 25 saal hai, purush hoon, unmarried hoon. Meri aamdani 25 lakh saalana hai. Mujhe vidhwa pension chahiye.', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', '2026-10-13 21:20:36.176777') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (94, 'CIT-FA4B330E', 'hi-IN', 'Namaste, meri umar 45 saal hai. Main ek kisan hoon, kheti karta hoon. Meri aamdani ek lakh saalana hai. Mujhe Kisan Yojna ke liye aavedan karna hai. Mere paas khatauni aur bank passbook hai. Mera Aadhaar [REDACTED-AADHAAR] hai.', '{"age": 45, "gender": "male", "marital_status": "single", "annual_income": 100000.0, "occupation": "farmer", "disability_status": "none", "available_documents": ["bank_passbook", "land_records_khatauni"]}', '2026-10-13 21:20:36.220231') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (95, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 21:21:00.951295') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (96, 'CIT-55698EEA', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 21:21:00.974286') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (97, 'CIT-014EE972', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 21:44:12.609136') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (98, 'CIT-636482D0', 'en-IN', 'Hello, my age is twenty years, I am an unmarried male student. Household income is dus hazaar mahina. I want scholarship. Aadhaar [REDACTED-AADHAAR].', '{"age": 20, "gender": "male", "marital_status": "single", "annual_income": 120000.0, "occupation": "student", "disability_status": "none", "available_documents": []}', '2026-10-13 21:44:12.723811') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (99, 'CIT-F81C7910', 'hi-IN', 'Namaste, meri umar 25 saal hai, purush hoon, unmarried hoon. Meri aamdani 25 lakh saalana hai. Mujhe vidhwa pension chahiye.', '{"age": 25, "gender": "female", "marital_status": "widow", "annual_income": 2500000.0, "occupation": "homemaker", "disability_status": "none", "available_documents": []}', '2026-10-13 21:44:12.961188') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (100, 'CIT-97221FFC', 'hi-IN', 'Namaste, meri umar 45 saal hai. Main ek kisan hoon, kheti karta hoon. Meri aamdani ek lakh saalana hai. Mujhe Kisan Yojna ke liye aavedan karna hai. Mere paas khatauni aur bank passbook hai. Mera Aadhaar [REDACTED-AADHAAR] hai.', '{"age": 45, "gender": "male", "marital_status": "single", "annual_income": 100000.0, "occupation": "farmer", "disability_status": "none", "available_documents": ["bank_passbook", "land_records_khatauni"]}', '2026-10-13 21:44:13.072177') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (101, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card, death certificate aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook", "death_certificate_of_husband"]}}', '2026-10-13 21:50:03.852302') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (102, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 21:51:10.647814') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (103, 'CIT-29168D10', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 21:51:10.685811') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (104, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 22:33:24.214736') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (105, 'CIT-F7949858', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 22:33:24.241729') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (106, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 22:36:30.183175') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (107, 'CIT-75C587F5', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 22:36:30.226415') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (108, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 22:37:58.310377') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (109, 'CIT-58B2F4C2', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 22:37:58.334755') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (110, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 22:49:37.490737') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (111, 'CIT-156C5A6E', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 22:49:37.514732') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (112, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 22:56:34.206689') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (113, 'CIT-CB8C5F52', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 22:56:34.231685') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (114, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 23:09:38.607927') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (115, 'CIT-DE3561CC', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 23:09:38.630929') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (116, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 23:11:39.374206') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (117, 'CIT-70A5C4C1', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 23:11:39.399612') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (118, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 23:14:01.267033') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (119, 'CIT-8AB61932', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 23:14:01.290027') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (120, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 23:15:56.702322') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (121, 'CIT-2A6C1C48', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 23:15:56.725323') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (122, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 23:17:36.764396') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (123, 'CIT-887F9F17', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 23:17:36.795175') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (124, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 23:32:06.552058') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (125, 'CIT-6CBEA44A', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 23:32:06.576253') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (126, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 23:43:31.969924') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (127, 'CIT-E6BDCE5C', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 23:43:31.994922') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (128, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 23:49:19.464801') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (129, 'CIT-C3CEB459', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 23:49:19.489776') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (130, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 23:53:25.549102') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (131, 'CIT-1BC5B18F', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 23:53:25.573097') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (132, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 23:56:12.630988') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (133, 'CIT-F5FFC10D', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 23:56:12.654941') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (134, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 23:57:53.772643') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (135, 'CIT-7D11A88D', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 23:57:53.797785') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (136, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-13 23:59:44.478329') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (137, 'CIT-426D92FA', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-13 23:59:44.501643') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (138, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-14 00:02:50.776423') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (139, 'CIT-0AEC3355', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-14 00:02:50.808655') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (140, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-14 00:04:00.549680') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (141, 'CIT-9326E3C5', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-14 00:04:00.574646') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (142, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-14 00:05:58.296259') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (143, 'CIT-FD3D4A33', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-14 00:05:58.330380') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (144, NULL, 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"language_detected": "hi", "intended_scheme_id": "widow_pension", "profile": {"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}}', '2026-10-14 00:09:39.787799') ON CONFLICT DO NOTHING;
INSERT INTO voice_interaction_logs (id, citizen_id, audio_language, raw_transcript, extracted_entities_json, created_at) VALUES (145, 'CIT-C30E3C72', 'hi-IN', 'Namaste, meri umar painsath saal hai. Mere pati guzar gaye hain, main ek vidhwa aur grihini hoon. Meri koi aamdani nahi hai. Mujhe vidhwa pension ke liye aavedan karna hai. Mera Aadhaar number [REDACTED-AADHAAR] hai aur mere paas ration card aur bank passbook hai.', '{"age": 65, "gender": "female", "marital_status": "widow", "annual_income": 0.0, "occupation": "homemaker", "disability_status": "none", "available_documents": ["ration_card", "bank_passbook"]}', '2026-10-14 00:09:39.812798') ON CONFLICT DO NOTHING;

-- Table: application_events (310 rows)
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (1, 'APP-SUNITA-ACTIVE-01', 'application_created', 'Application successfully submitted by citizen Sunita Devi via CSC center.', '2026-10-08 11:53:13.875714') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (2, 'APP-SUNITA-ACTIVE-01', 'under_review', 'Under review by Block Social Welfare Officer (Tehsil North West).', '2026-10-10 11:53:13.875714') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (3, 'APP-SUNITA-OVERDUE-02', 'application_created', 'Application submitted for Indira Gandhi National Old Age Pension.', '2026-08-09 11:53:13.878715') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (4, 'APP-SUNITA-OVERDUE-02', 'under_review', 'Forwarded to District Social Welfare Officer.', '2026-08-19 11:53:13.878715') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (5, 'APP-RAHUL-SCHOLAR-03', 'application_created', 'Scholarship registration initiated.', '2026-10-01 11:53:13.881712') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (6, 'APP-RAHUL-SCHOLAR-03', 'pending_documents', 'Verification officer requested: Bonafide Student Certificate from College Dean.', '2026-10-05 11:53:13.881712') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (7, 'APP-29F3D0B9', 'application_created', 'Application APP-29F3D0B9 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 11:54:03.002042') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (8, 'APP-29F3D0B9', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 11:54:03.049768') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (9, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 11:54:03.070200') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (10, 'APP-83245D6E', 'application_created', 'Application APP-83245D6E created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 11:54:26.748065') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (11, 'APP-83245D6E', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 11:54:26.800978') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (12, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 11:54:26.822421') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (13, 'APP-9AC67F71', 'application_created', 'Application APP-9AC67F71 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 11:54:54.172886') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (14, 'APP-9AC67F71', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 11:54:54.226726') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (15, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 11:54:54.247663') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (16, 'APP-342DB9EE', 'application_created', 'Application APP-342DB9EE created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 13:41:16.913291') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (17, 'APP-342DB9EE', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 13:41:16.969974') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (18, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 13:41:16.993911') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (19, 'APP-3674B845', 'application_created', 'Application APP-3674B845 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 13:41:48.362339') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (20, 'APP-3674B845', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 13:41:48.423205') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (21, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 13:41:48.446071') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (22, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 13:52:14.581570') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (23, 'APP-SUNITA-ACTIVE-01', 'status_updated', 'Status updated to under_review during hackathon evaluation.', '2026-10-13 16:24:56.806433') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (24, 'APP-SUNITA-ACTIVE-01', 'status_updated', 'Status updated to under_review during hackathon evaluation.', '2026-10-13 16:24:58.863560') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (25, 'APP-SUNITA-ACTIVE-01', 'status_updated', 'Status updated to under_review during hackathon evaluation.', '2026-10-13 16:25:00.728607') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (26, 'APP-SUNITA-ACTIVE-01', 'status_updated', 'Status updated to pending_documents during hackathon evaluation.', '2026-10-13 16:25:02.244483') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (27, 'APP-SUNITA-ACTIVE-01', 'status_updated', 'Status updated to approved during hackathon evaluation.', '2026-10-13 16:25:05.595544') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (28, 'APP-SUNITA-ACTIVE-01', 'status_updated', 'Status updated to rejected during hackathon evaluation.', '2026-10-13 16:25:07.917907') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (29, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 16:25:21.190000') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (30, 'APP-C13E81FE', 'application_created', 'Application APP-C13E81FE created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 16:55:01.292191') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (31, 'APP-C13E81FE', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 16:55:01.400201') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (32, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 16:55:01.447032') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (33, 'APP-187FAD1D', 'application_created', 'Application APP-187FAD1D created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 17:34:11.722972') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (34, 'APP-187FAD1D', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 17:34:11.796973') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (35, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 17:34:11.827982') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (36, 'APP-88381F61', 'application_created', 'Application APP-88381F61 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 17:36:57.369570') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (37, 'APP-88381F61', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 17:36:57.794682') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (38, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 17:36:57.843839') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (39, 'APP-51ACA45A', 'application_created', 'Application APP-51ACA45A created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 17:43:23.162683') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (40, 'APP-51ACA45A', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 17:43:23.215677') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (41, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 17:43:23.240685') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (42, 'APP-CEA7F3E5', 'application_created', 'Application APP-CEA7F3E5 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 17:44:14.993006') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (43, 'APP-CEA7F3E5', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 17:44:15.053004') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (44, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 17:44:15.083005') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (45, 'APP-3ED71161', 'application_created', 'Application APP-3ED71161 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 17:47:26.833235') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (46, 'APP-3ED71161', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 17:47:26.893890') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (47, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 17:47:26.919446') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (48, 'APP-4F136837', 'application_created', 'Application APP-4F136837 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 17:57:47.699653') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (49, 'APP-4F136837', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 17:57:47.750652') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (50, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 17:57:47.772652') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (51, 'APP-BB4C908F', 'application_created', 'Application APP-BB4C908F created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 17:58:17.987989') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (52, 'APP-BB4C908F', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 17:58:18.045954') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (53, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 17:58:18.069953') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (54, 'APP-7ADC21F4', 'application_created', 'Application APP-7ADC21F4 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 17:58:35.157614') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (55, 'APP-7ADC21F4', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 17:58:35.211611') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (56, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 17:58:35.234612') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (57, 'APP-A08503BC', 'application_created', 'Application APP-A08503BC created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:03:04.020978') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (58, 'APP-A08503BC', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 18:03:04.072977') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (59, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 18:03:04.092978') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (60, 'APP-13995A0C', 'application_created', 'Application APP-13995A0C created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:04:31.183013') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (61, 'APP-13995A0C', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 18:04:31.236384') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (62, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 18:04:31.258383') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (63, 'APP-59A1F5FB', 'application_created', 'Application APP-59A1F5FB created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:08:57.571674') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (64, 'APP-59A1F5FB', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 18:08:57.629198') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (65, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 18:08:57.652194') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (66, 'APP-9B2D4DD4', 'application_created', 'Application APP-9B2D4DD4 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:11:09.814560') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (67, 'APP-9B2D4DD4', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 18:11:09.862558') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (68, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 18:11:09.882563') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (69, 'APP-CD2F4D39', 'application_created', 'Application APP-CD2F4D39 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:12:42.816876') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (70, 'APP-CD2F4D39', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 18:12:42.882870') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (71, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 18:12:42.908875') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (72, 'APP-2EB2D923', 'application_created', 'Application APP-2EB2D923 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:22:21.305278') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (73, 'APP-2EB2D923', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 18:22:24.076991') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (74, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 18:22:24.485247') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (75, 'APP-C102EE4C', 'application_created', 'Application APP-C102EE4C created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:23:00.293287') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (76, 'APP-C4623FC5', 'application_created', 'Application APP-C4623FC5 created for ''Post-Matric Scholarship for SC/ST/OBC Students'' with status ''submitted''.', '2026-10-13 18:23:00.420228') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (77, 'APP-FB7CDD88', 'application_created', 'Application APP-FB7CDD88 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:23:52.721460') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (78, 'APP-FB7CDD88', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 18:23:53.083028') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (79, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 18:23:53.132029') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (80, 'APP-A065E7DD', 'application_created', 'Application APP-A065E7DD created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:23:53.301032') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (81, 'APP-7018F1A9', 'application_created', 'Application APP-7018F1A9 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:24:39.571025') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (82, 'APP-7018F1A9', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 18:24:39.774387') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (83, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 18:24:39.864414') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (84, 'APP-84414EDA', 'application_created', 'Application APP-84414EDA created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:24:40.144985') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (85, 'APP-F0E7B121', 'application_created', 'Application APP-F0E7B121 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:25:06.153138') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (86, 'APP-03366FC9', 'application_created', 'Application APP-03366FC9 created for ''Post-Matric Scholarship for SC/ST/OBC Students'' with status ''submitted''.', '2026-10-13 18:25:06.326933') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (87, 'APP-85D75C99', 'application_created', 'Application APP-85D75C99 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:28:08.897614') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (88, 'APP-85D75C99', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 18:28:09.292619') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (89, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 18:28:09.334166') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (90, 'APP-5F72E76C', 'application_created', 'Application APP-5F72E76C created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:28:09.531942') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (91, 'APP-7453ADC6', 'application_created', 'Application APP-7453ADC6 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:28:37.457065') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (92, 'APP-D01FAD58', 'application_created', 'Application APP-D01FAD58 created for ''Post-Matric Scholarship for SC/ST/OBC Students'' with status ''submitted''.', '2026-10-13 18:28:37.518285') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (93, 'APP-3620346B', 'application_created', 'Application APP-3620346B created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:34:04.047914') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (94, 'APP-F957B323', 'application_created', 'Application APP-F957B323 created for ''Post-Matric Scholarship for SC/ST/OBC Students'' with status ''submitted''.', '2026-10-13 18:34:04.185757') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (95, 'APP-402CA08B', 'application_created', 'Application APP-402CA08B created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:34:17.156984') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (96, 'APP-402CA08B', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 18:34:17.218984') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (97, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 18:34:17.535357') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (98, 'APP-1C59FD97', 'application_created', 'Application APP-1C59FD97 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:34:18.133164') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (99, 'APP-189DD704', 'application_created', 'Application APP-189DD704 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:34:35.947412') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (100, 'APP-C0534495', 'application_created', 'Application APP-C0534495 created for ''Post-Matric Scholarship for SC/ST/OBC Students'' with status ''submitted''.', '2026-10-13 18:34:36.029797') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (101, 'APP-FED785A1', 'application_created', 'Application APP-FED785A1 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:40:33.541911') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (102, 'APP-6781FF09', 'application_created', 'Application APP-6781FF09 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:43:51.351214') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (103, 'APP-6781FF09', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 18:43:51.491108') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (104, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 18:43:51.582103') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (105, 'APP-BDBFEB8F', 'application_created', 'Application APP-BDBFEB8F created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:43:51.754877') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (106, 'APP-7DF67D92', 'application_created', 'Application APP-7DF67D92 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 18:44:20.630964') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (107, 'APP-822E53E3', 'application_created', 'Application APP-822E53E3 created for ''Post-Matric Scholarship for SC/ST/OBC Students'' with status ''submitted''.', '2026-10-13 18:44:20.755750') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (108, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 18:52:39.008274') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (109, 'APP-8C2CB8D3', 'application_created', 'Application APP-8C2CB8D3 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 19:29:38.244972') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (110, 'APP-4A2A6248', 'application_created', 'Application APP-4A2A6248 created for ''Post-Matric Scholarship for SC/ST/OBC Students'' with status ''submitted''.', '2026-10-13 19:29:38.291796') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (111, 'APP-123C9766', 'application_created', 'Application APP-123C9766 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 19:31:11.406352') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (112, 'APP-85A16270', 'application_created', 'Application APP-85A16270 created for ''Post-Matric Scholarship for SC/ST/OBC Students'' with status ''submitted''.', '2026-10-13 19:31:11.455732') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (113, 'APP-F180F6EB', 'application_created', 'Application APP-F180F6EB created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 19:52:52.222805') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (114, 'APP-93C8F890', 'application_created', 'Application APP-93C8F890 created for ''Post-Matric Scholarship for SC/ST/OBC Students'' with status ''submitted''.', '2026-10-13 19:52:52.328416') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (115, 'APP-9249AC56', 'application_created', 'Application APP-9249AC56 created for ''Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)'' with status ''submitted''.', '2026-10-13 19:52:52.529391') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (116, 'APP-B4EDF49A', 'application_created', 'Application APP-B4EDF49A created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 19:53:14.057626') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (117, 'APP-B4EDF49A', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 19:53:14.147633') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (118, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 19:53:14.171636') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (119, 'APP-18E4122E', 'application_created', 'Application APP-18E4122E created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 19:53:14.301765') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (120, 'APP-FA118C7A', 'application_created', 'Application APP-FA118C7A created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:02:42.129380') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (121, 'APP-427A8789', 'application_created', 'Application APP-427A8789 created for ''Post-Matric Scholarship for SC/ST/OBC Students'' with status ''submitted''.', '2026-10-13 20:02:42.402178') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (122, 'APP-378E0DBE', 'application_created', 'Application APP-378E0DBE created for ''Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)'' with status ''submitted''.', '2026-10-13 20:02:43.466980') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (123, 'APP-A16E4B23', 'application_created', 'Application APP-A16E4B23 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:03:01.524091') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (124, 'APP-A16E4B23', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 20:03:01.595085') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (125, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 20:03:01.622117') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (126, 'APP-C48D6304', 'application_created', 'Application APP-C48D6304 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:03:01.741190') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (127, 'APP-FB406AFB', 'application_created', 'Application APP-FB406AFB created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:04:53.690168') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (128, 'APP-7DFD874F', 'application_created', 'Application APP-7DFD874F created for ''Post-Matric Scholarship for SC/ST/OBC Students'' with status ''submitted''.', '2026-10-13 20:04:53.744662') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (129, 'APP-2FD6E0E0', 'application_created', 'Application APP-2FD6E0E0 created for ''Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)'' with status ''submitted''.', '2026-10-13 20:04:53.833374') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (130, 'APP-C2CF3D5A', 'application_created', 'Application APP-C2CF3D5A created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:05:14.825702') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (131, 'APP-C2CF3D5A', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 20:05:14.910954') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (132, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 20:05:14.935953') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (133, 'APP-09D15028', 'application_created', 'Application APP-09D15028 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:05:15.117953') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (134, 'APP-49CBE712', 'application_created', 'Application APP-49CBE712 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:24:37.304127') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (135, 'APP-19BC6659', 'application_created', 'Application APP-19BC6659 created for ''Post-Matric Scholarship for SC/ST/OBC Students'' with status ''submitted''.', '2026-10-13 20:24:37.353271') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (136, 'APP-9559B35F', 'application_created', 'Application APP-9559B35F created for ''Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)'' with status ''submitted''.', '2026-10-13 20:24:37.611522') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (137, 'APP-AA1712A0', 'application_created', 'Application APP-AA1712A0 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:52:25.626996') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (138, 'APP-5ABC0183', 'application_created', 'Application APP-5ABC0183 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:53:10.083420') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (139, 'APP-614B05AA', 'application_created', 'Application APP-614B05AA created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:54:07.028859') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (140, 'APP-62C9CBED', 'application_created', 'Application APP-62C9CBED created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:56:36.105961') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (141, 'APP-735816AE', 'application_created', 'Application APP-735816AE created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:56:47.821049') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (142, 'APP-22B5A124', 'application_created', 'Application APP-22B5A124 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:56:47.917758') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (143, 'APP-319A9670', 'application_created', 'Application APP-319A9670 created for ''Post-Matric Scholarship for SC/ST/OBC Students'' with status ''submitted''.', '2026-10-13 20:56:47.982177') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (144, 'APP-90AF66EC', 'application_created', 'Application APP-90AF66EC created for ''Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)'' with status ''submitted''.', '2026-10-13 20:56:48.081750') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (145, 'APP-78ECA52A', 'application_created', 'Application APP-78ECA52A created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:57:29.819381') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (146, 'APP-78ECA52A', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 20:57:29.868386') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (147, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 20:57:29.886385') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (148, 'APP-974F857D', 'application_created', 'Application APP-974F857D created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:57:30.017422') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (149, 'APP-16D9E4CC', 'application_created', 'Application APP-16D9E4CC created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:58:04.055679') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (150, 'APP-16D9E4CC', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 20:58:04.104680') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (151, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 20:58:04.121680') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (152, 'APP-E5F3EB2A', 'application_created', 'Application APP-E5F3EB2A created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:58:04.256827') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (153, 'APP-B3F28707', 'application_created', 'Application APP-B3F28707 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:58:04.311887') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (154, 'APP-6AC16D2C', 'application_created', 'Application APP-6AC16D2C created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:58:36.869000') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (155, 'APP-6444EEA4', 'application_created', 'Application APP-6444EEA4 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:59:42.532054') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (156, 'APP-A67D3759', 'application_created', 'Application APP-A67D3759 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:59:42.626729') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (157, 'APP-2DB1338F', 'application_created', 'Application APP-2DB1338F created for ''Post-Matric Scholarship for SC/ST/OBC Students'' with status ''submitted''.', '2026-10-13 20:59:42.693019') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (158, 'APP-985BA010', 'application_created', 'Application APP-985BA010 created for ''Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)'' with status ''submitted''.', '2026-10-13 20:59:42.771505') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (159, 'APP-04FB4B7A', 'application_created', 'Application APP-04FB4B7A created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:59:53.495730') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (160, 'APP-04FB4B7A', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 20:59:53.544731') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (161, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 20:59:53.561733') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (162, 'APP-072E2DC1', 'application_created', 'Application APP-072E2DC1 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:59:53.699618') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (163, 'APP-D1D6C7D0', 'application_created', 'Application APP-D1D6C7D0 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 20:59:53.753614') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (164, 'APP-AED4E835', 'application_created', 'Application APP-AED4E835 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:01:41.460687') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (165, 'APP-EB91B33A', 'application_created', 'Application APP-EB91B33A created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:01:48.876593') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (166, 'APP-70514525', 'application_created', 'Application APP-70514525 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:02:47.228406') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (167, 'APP-86EFED47', 'application_created', 'Application APP-86EFED47 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:02:48.717259') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (168, 'APP-1BEC56AF', 'application_created', 'Application APP-1BEC56AF created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:03:00.464042') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (169, 'APP-F9C90F52', 'application_created', 'Application APP-F9C90F52 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:03:02.013316') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (170, 'APP-343C9455', 'application_created', 'Application APP-343C9455 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:11:08.272983') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (171, 'APP-67986217', 'application_created', 'Application APP-67986217 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:11:32.906995') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (172, 'APP-EA9C85FC', 'application_created', 'Application APP-EA9C85FC created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:11:33.003023') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (173, 'APP-AB1DB0AA', 'application_created', 'Application APP-AB1DB0AA created for ''Post-Matric Scholarship for SC/ST/OBC Students'' with status ''submitted''.', '2026-10-13 21:11:33.061431') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (174, 'APP-6800A978', 'application_created', 'Application APP-6800A978 created for ''Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)'' with status ''submitted''.', '2026-10-13 21:11:33.329322') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (175, 'APP-04356744', 'application_created', 'Application APP-04356744 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:11:47.047235') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (176, 'APP-04356744', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 21:11:47.097236') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (177, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 21:11:47.114238') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (178, 'APP-044ED27C', 'application_created', 'Application APP-044ED27C created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:11:47.249031') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (179, 'APP-6508ACDB', 'application_created', 'Application APP-6508ACDB created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:12:12.010285') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (180, 'APP-6508ACDB', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 21:12:12.060287') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (181, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 21:12:12.077287') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (182, 'APP-DA67FA66', 'application_created', 'Application APP-DA67FA66 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:12:12.206916') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (183, 'APP-1343B20E', 'application_created', 'Application APP-1343B20E created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:12:12.267873') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (184, 'APP-57D0407B', 'application_created', 'Application APP-57D0407B created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:12:46.904085') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (185, 'APP-4F2C109D', 'application_created', 'Application APP-4F2C109D created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:20:35.701311') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (186, 'APP-AFC4D9A9', 'application_created', 'Application APP-AFC4D9A9 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:20:36.019947') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (187, 'APP-DAF00F79', 'application_created', 'Application APP-DAF00F79 created for ''Post-Matric Scholarship for SC/ST/OBC Students'' with status ''submitted''.', '2026-10-13 21:20:36.101625') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (188, 'APP-E9C88A06', 'application_created', 'Application APP-E9C88A06 created for ''Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)'' with status ''submitted''.', '2026-10-13 21:20:36.228233') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (189, 'APP-82403435', 'application_created', 'Application APP-82403435 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:21:00.783450') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (190, 'APP-82403435', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 21:21:00.834291') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (191, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 21:21:00.853291') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (192, 'APP-6661AC6D', 'application_created', 'Application APP-6661AC6D created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:21:00.980285') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (193, 'APP-3A34500D', 'application_created', 'Application APP-3A34500D created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:21:01.037323') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (194, 'APP-532DF10E', 'application_created', 'Application APP-532DF10E created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:21:19.589713') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (195, 'APP-32E3F16A', 'application_created', 'Application APP-32E3F16A created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:22:12.326574') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (196, 'APP-67EDBACF', 'application_created', 'Application APP-67EDBACF created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:44:12.488545') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (197, 'APP-C8F21507', 'application_created', 'Application APP-C8F21507 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:44:12.616142') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (198, 'APP-EE545020', 'application_created', 'Application APP-EE545020 created for ''Post-Matric Scholarship for SC/ST/OBC Students'' with status ''submitted''.', '2026-10-13 21:44:12.732817') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (199, 'APP-7CC8E6BC', 'application_created', 'Application APP-7CC8E6BC created for ''Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)'' with status ''submitted''.', '2026-10-13 21:44:13.078176') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (200, 'APP-4FE9D0A8', 'application_created', 'Application APP-4FE9D0A8 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:51:10.413850') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (201, 'APP-4FE9D0A8', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 21:51:10.480846') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (202, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 21:51:10.518402') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (203, 'APP-F7D9AE8E', 'application_created', 'Application APP-F7D9AE8E created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:51:10.697829') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (204, 'APP-5E7D3955', 'application_created', 'Application APP-5E7D3955 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 21:51:10.777379') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (205, 'APP-07125869', 'application_created', 'Application APP-07125869 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 22:03:39.037096') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (206, 'APP-17EEDF86', 'application_created', 'Application APP-17EEDF86 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 22:33:24.018604') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (207, 'APP-17EEDF86', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 22:33:24.077604') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (208, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 22:33:24.098606') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (209, 'APP-388159A3', 'application_created', 'Application APP-388159A3 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 22:33:24.247743') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (210, 'APP-3F4B008D', 'application_created', 'Application APP-3F4B008D created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 22:33:24.311880') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (211, 'APP-0C708EE4', 'application_created', 'Application APP-0C708EE4 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 22:36:29.867957') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (212, 'APP-0C708EE4', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 22:36:29.962321') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (213, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 22:36:29.990034') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (214, 'APP-DC446A5B', 'application_created', 'Application APP-DC446A5B created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 22:36:30.235978') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (215, 'APP-4DD79500', 'application_created', 'Application APP-4DD79500 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 22:36:30.338467') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (216, 'APP-05B5EF0C', 'application_created', 'Application APP-05B5EF0C created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 22:37:58.123283') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (217, 'APP-05B5EF0C', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 22:37:58.175366') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (218, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 22:37:58.198335') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (219, 'APP-E3A93483', 'application_created', 'Application APP-E3A93483 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 22:37:58.341772') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (220, 'APP-B22181B1', 'application_created', 'Application APP-B22181B1 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 22:37:58.408123') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (221, 'APP-614A2ADC', 'application_created', 'Application APP-614A2ADC created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 22:49:37.310047') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (222, 'APP-614A2ADC', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 22:49:37.362236') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (223, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 22:49:37.379236') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (224, 'APP-A18FE61A', 'application_created', 'Application APP-A18FE61A created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 22:49:37.522735') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (225, 'APP-59E66879', 'application_created', 'Application APP-59E66879 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 22:49:37.581749') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (226, 'APP-D209CB86', 'application_created', 'Application APP-D209CB86 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 22:56:34.027396') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (227, 'APP-D209CB86', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 22:56:34.084022') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (228, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 22:56:34.103312') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (229, 'APP-5B9D9989', 'application_created', 'Application APP-5B9D9989 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 22:56:34.239990') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (230, 'APP-B878E030', 'application_created', 'Application APP-B878E030 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 22:56:34.305403') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (231, 'APP-1842E4F7', 'application_created', 'Application APP-1842E4F7 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:09:38.434678') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (232, 'APP-1842E4F7', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 23:09:38.491528') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (233, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 23:09:38.508554') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (234, 'APP-0A6FB83E', 'application_created', 'Application APP-0A6FB83E created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:09:38.636929') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (235, 'APP-9858768D', 'application_created', 'Application APP-9858768D created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:09:38.697490') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (236, 'APP-DFB95D94', 'application_created', 'Application APP-DFB95D94 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:11:39.205051') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (237, 'APP-DFB95D94', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 23:11:39.254771') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (238, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 23:11:39.271817') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (239, 'APP-DED582D1', 'application_created', 'Application APP-DED582D1 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:11:39.405043') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (240, 'APP-E8CD9A7E', 'application_created', 'Application APP-E8CD9A7E created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:11:39.464781') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (241, 'APP-5BCC8A2A', 'application_created', 'Application APP-5BCC8A2A created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:14:01.095603') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (242, 'APP-5BCC8A2A', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 23:14:01.146608') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (243, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 23:14:01.163606') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (244, 'APP-C87819B2', 'application_created', 'Application APP-C87819B2 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:14:01.297028') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (245, 'APP-6CEA588B', 'application_created', 'Application APP-6CEA588B created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:14:01.356945') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (246, 'APP-6767226C', 'application_created', 'Application APP-6767226C created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:15:56.525646') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (247, 'APP-6767226C', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 23:15:56.575856') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (248, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 23:15:56.600500') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (249, 'APP-7E76FF3F', 'application_created', 'Application APP-7E76FF3F created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:15:56.730322') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (250, 'APP-AA0E4DD7', 'application_created', 'Application APP-AA0E4DD7 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:15:56.792277') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (251, 'APP-E6CED10B', 'application_created', 'Application APP-E6CED10B created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:17:36.597275') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (252, 'APP-E6CED10B', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 23:17:36.648277') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (253, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 23:17:36.666290') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (254, 'APP-D3940516', 'application_created', 'Application APP-D3940516 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:17:36.800172') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (255, 'APP-9C936915', 'application_created', 'Application APP-9C936915 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:17:36.861138') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (256, 'APP-4E0BFAD4', 'application_created', 'Application APP-4E0BFAD4 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:32:06.383046') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (257, 'APP-4E0BFAD4', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 23:32:06.434130') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (258, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 23:32:06.452314') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (259, 'APP-D755153C', 'application_created', 'Application APP-D755153C created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:32:06.583326') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (260, 'APP-5D1F0D31', 'application_created', 'Application APP-5D1F0D31 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:32:06.648718') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (261, 'APP-856A0C6B', 'application_created', 'Application APP-856A0C6B created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:43:31.784164') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (262, 'APP-856A0C6B', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 23:43:31.842327') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (263, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 23:43:31.860353') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (264, 'APP-41F82696', 'application_created', 'Application APP-41F82696 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:43:31.999919') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (265, 'APP-75064AE4', 'application_created', 'Application APP-75064AE4 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:43:32.061720') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (266, 'APP-927BF9C8', 'application_created', 'Application APP-927BF9C8 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:49:19.287083') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (267, 'APP-927BF9C8', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 23:49:19.340777') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (268, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 23:49:19.358809') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (269, 'APP-7A5B7947', 'application_created', 'Application APP-7A5B7947 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:49:19.495807') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (270, 'APP-48F656A0', 'application_created', 'Application APP-48F656A0 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:49:19.553999') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (271, 'APP-8D701F27', 'application_created', 'Application APP-8D701F27 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:53:25.375254') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (272, 'APP-8D701F27', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 23:53:25.425578') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (273, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 23:53:25.495755') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (274, 'APP-7D338666', 'application_created', 'Application APP-7D338666 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:53:25.579101') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (275, 'APP-39AF3614', 'application_created', 'Application APP-39AF3614 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:53:25.644391') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (276, 'APP-46A7C54E', 'application_created', 'Application APP-46A7C54E created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:56:12.466179') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (277, 'APP-46A7C54E', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 23:56:12.516970') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (278, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 23:56:12.581970') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (279, 'APP-8CCF97EF', 'application_created', 'Application APP-8CCF97EF created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:56:12.662945') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (280, 'APP-76287F28', 'application_created', 'Application APP-76287F28 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:56:12.728151') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (281, 'APP-9C080C96', 'application_created', 'Application APP-9C080C96 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:57:53.596894') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (282, 'APP-9C080C96', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 23:57:53.655856') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (283, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 23:57:53.721255') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (284, 'APP-66205690', 'application_created', 'Application APP-66205690 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:57:53.803785') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (285, 'APP-CECC072B', 'application_created', 'Application APP-CECC072B created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:57:53.869314') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (286, 'APP-8F1BF646', 'application_created', 'Application APP-8F1BF646 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:59:44.355774') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (287, 'APP-8F1BF646', 'status_updated', 'Block Officer began physical address verification.', '2026-10-13 23:59:44.402774') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (288, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-13 23:59:44.422778') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (289, 'APP-24605BD8', 'application_created', 'Application APP-24605BD8 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:59:44.509645') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (290, 'APP-6CFC5BFE', 'application_created', 'Application APP-6CFC5BFE created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-13 23:59:44.574670') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (291, 'APP-BD88D5CB', 'application_created', 'Application APP-BD88D5CB created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-14 00:02:50.656454') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (292, 'APP-BD88D5CB', 'status_updated', 'Block Officer began physical address verification.', '2026-10-14 00:02:50.706419') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (293, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-14 00:02:50.726421') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (294, 'APP-4A3AF953', 'application_created', 'Application APP-4A3AF953 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-14 00:02:50.814682') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (295, 'APP-59669C0B', 'application_created', 'Application APP-59669C0B created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-14 00:02:50.872685') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (296, 'APP-B5650517', 'application_created', 'Application APP-B5650517 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-14 00:04:00.430794') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (297, 'APP-B5650517', 'status_updated', 'Block Officer began physical address verification.', '2026-10-14 00:04:00.479324') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (298, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-14 00:04:00.497504') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (299, 'APP-143F3CAD', 'application_created', 'Application APP-143F3CAD created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-14 00:04:00.580637') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (300, 'APP-D7BE8D5C', 'application_created', 'Application APP-D7BE8D5C created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-14 00:04:00.645921') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (301, 'APP-0C51B64B', 'application_created', 'Application APP-0C51B64B created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-14 00:05:58.174018') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (302, 'APP-0C51B64B', 'status_updated', 'Block Officer began physical address verification.', '2026-10-14 00:05:58.229619') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (303, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-14 00:05:58.246671') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (304, 'APP-DF992C2F', 'application_created', 'Application APP-DF992C2F created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-14 00:05:58.338397') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (305, 'APP-567A4094', 'application_created', 'Application APP-567A4094 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-14 00:05:58.407482') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (306, 'APP-85B71275', 'application_created', 'Application APP-85B71275 created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-14 00:09:39.680792') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (307, 'APP-85B71275', 'status_updated', 'Block Officer began physical address verification.', '2026-10-14 00:09:39.724798') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (308, 'APP-SUNITA-OVERDUE-02', 'grievance_drafted', 'Grievance draft generated for overdue application (21 days past deadline).', '2026-10-14 00:09:39.741794') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (309, 'APP-9B37E1CA', 'application_created', 'Application APP-9B37E1CA created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-14 00:09:39.818797') ON CONFLICT DO NOTHING;
INSERT INTO application_events (id, application_id, event_type, message, created_at) VALUES (310, 'APP-595352AD', 'application_created', 'Application APP-595352AD created for ''Indira Gandhi National Widow Pension Scheme (IGNWPS)'' with status ''submitted''.', '2026-10-14 00:09:39.884059') ON CONFLICT DO NOTHING;

-- Table: document_checks (1 rows)
INSERT INTO document_checks (id, application_id, document_type, extracted_fields_json, mismatch_warnings_json, created_at) VALUES (1, 'APP-SUNITA-ACTIVE-01', 'ration_card_vs_passbook', '{"full_name_rc": "Sunita Devi", "full_name_passbook": "Sunitha Devi", "date_of_birth": "12/04/1959", "account_number": "30981240981", "ifsc_code": "SBIN0001234"}', '["Name spelling variance detected between Ration Card (''Sunita Devi'') and Bank Passbook (''Sunitha Devi'').", "Suggested action: Affidavit or passbook correction to avoid DBT credit rejection."]', '2026-10-08 11:53:13.885716') ON CONFLICT DO NOTHING;

-- Table: grievances (59 rows)
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (1, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 11:54:03.072504', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (2, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 11:54:26.824432', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (3, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 11:54:54.250663', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (4, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 13:41:16.995998', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (5, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 13:41:48.448200', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (6, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice; clerk claimed file is still under scrutiny."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 13:52:14.585110', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (7, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice; clerk claimed file is still under scrutiny."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 16:25:21.237653', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (8, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 16:55:01.454038', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (9, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 17:34:11.832977', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (10, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 17:36:57.845836', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (11, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 17:43:23.241674', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (12, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 17:44:15.084010', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (13, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 17:47:26.920441', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (14, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 17:57:47.774656', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (15, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 17:58:18.071954', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (16, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 17:58:35.236616', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (17, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 18:03:04.094978', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (18, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 18:04:31.260381', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (19, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 18:08:57.653193', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (20, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 18:11:09.883562', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (21, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 18:12:42.910875', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (22, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 18:22:24.487244', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (23, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 18:23:53.135027', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (24, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 18:24:39.866411', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (25, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 18:28:09.335165', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (26, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 18:34:17.537359', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (27, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 18:43:51.584107', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (28, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Indira Gandhi National Old Age Pension Scheme (IGNOAPS))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Indira Gandhi National Old Age Pension Scheme (IGNOAPS)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 45 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice; clerk claimed file is still under scrutiny."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 45 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 18:52:39.017273', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (29, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 19:53:14.173625', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (30, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 20:03:01.624111', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (31, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 20:05:14.940957', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (32, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 20:57:29.889383', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (33, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 20:58:04.124680', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (34, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 20:59:53.564732', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (35, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 21:11:47.165237', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (36, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 21:12:12.126285', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (37, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 21:21:00.902287', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (38, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 21:51:10.580406', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (39, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 22:33:24.151976', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (40, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 22:36:30.071550', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (41, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 22:37:58.252337', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (42, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 22:49:37.432610', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (43, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 22:56:34.151681', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (44, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 23:09:38.554924', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (45, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 23:11:39.320806', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (46, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 23:14:01.211573', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (47, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 23:15:56.648536', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (48, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 23:17:36.716276', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (49, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 23:32:06.502059', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (50, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 23:43:31.921359', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (51, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 23:49:19.408184', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (52, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 23:53:25.496755', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (53, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 23:56:12.582972', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (54, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 23:57:53.722252', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (55, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-13 23:59:44.423776', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (56, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-14 00:02:50.727420', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (57, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-14 00:04:00.498500', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (58, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-14 00:05:58.248663', 'drafted') ON CONFLICT DO NOTHING;
INSERT INTO grievances (id, application_id, draft_text, created_at, status) VALUES (59, 'APP-SUNITA-OVERDUE-02', 'TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: APP-SUNITA-OVERDUE-02 (Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna))

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: CIT-SUNITA-65
- Application ID / Acknowledgment Token: APP-SUNITA-OVERDUE-02
- Welfare Scheme Name: Pradhan Mantri Kisan Samman Nidhi (PM-KISAN Yojna)
- Date of Initial Submission: 09-Aug-2026
- Guaranteed Resolution Deadline: 23-Sep-2026 (Citizen Charter Limit: 30 days)
- Current Recorded Status: UNDER_REVIEW
- Duration Beyond Statutory Deadline: 21 day(s) overdue

Additional Citizen Remarks:
"Visited Tehsil office twice, clerk refused to provide file movement register number."

Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within 30 days. The delay of 21 days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: CIT-SUNITA-65
Application Token: APP-SUNITA-OVERDUE-02
Generated via BenefitBridge Welfare Navigator
', '2026-10-14 00:09:39.742792', 'drafted') ON CONFLICT DO NOTHING;

-- Synchronize PostgreSQL sequences
SELECT setval(pg_get_serial_sequence('digilocker_documents', 'id'), COALESCE(max(id), 1)) FROM digilocker_documents;
SELECT setval(pg_get_serial_sequence('voice_interaction_logs', 'id'), COALESCE(max(id), 1)) FROM voice_interaction_logs;
SELECT setval(pg_get_serial_sequence('application_events', 'id'), COALESCE(max(id), 1)) FROM application_events;
SELECT setval(pg_get_serial_sequence('document_checks', 'id'), COALESCE(max(id), 1)) FROM document_checks;
SELECT setval(pg_get_serial_sequence('grievances', 'id'), COALESCE(max(id), 1)) FROM grievances;