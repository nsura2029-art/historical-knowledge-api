-- ========================================
-- Migration 0003: Enrichment for 2 deep-dive people
-- Per the user's "quality not quantity" directive:
--   - add cause_of_death to person (ref doc §9)
--   - add industry to person (ref doc §2 intent: browse by industry)
--   - add era_slug to person (ref doc §2 intent: browse by historical era)
--   - normalize era_relevance via era table
--   - add slug_redirect for future-proofing
-- ========================================

-- Cause of death (only for deceased)
ALTER TABLE person ADD COLUMN cause_of_death TEXT;
-- Allowed values: 'natural', 'accident', 'illness', 'suicide', 'homicide', 'war', 'undisclosed', 'disputed', 'unknown'
-- For specific causes (e.g., 'pulmonary embolism', 'assassination'), use the text directly

-- Industry (broader than profession category)
ALTER TABLE person ADD COLUMN industry TEXT;
-- Allowed values: 'arts', 'music', 'film', 'literature', 'science', 'technology', 'politics', 'business', 'sports', 'media', 'religion', 'military', 'royalty', 'activism', 'law', 'academia', 'medicine', 'other'

-- Era (historical period)
ALTER TABLE person ADD COLUMN era_slug TEXT;
-- Allowed values: 'pre-1500', '1500-1700', '1700-1800', '1800-1900', '1900-1950', '1950-2000', '2000-present'

-- Add a slug_redirect table for renamed entities (per ref doc)
CREATE TABLE IF NOT EXISTS slug_redirect (
  id            TEXT PRIMARY KEY,
  entity_id     TEXT NOT NULL REFERENCES entity(id),
  old_slug      TEXT NOT NULL,
  new_slug      TEXT NOT NULL,
  redirect_type TEXT NOT NULL DEFAULT '301' CHECK (redirect_type IN ('301', '308', 'rewrite')),
  reason        TEXT,
  effective_at  INTEGER NOT NULL,
  expires_at    INTEGER,
  created_at    INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX IF NOT EXISTS idx_slug_redirect_entity ON slug_redirect(entity_id);
CREATE INDEX IF NOT EXISTS idx_slug_redirect_old ON slug_redirect(old_slug);

-- Add ingestion_run table (per ref doc §6.1)
CREATE TABLE IF NOT EXISTS ingestion_run (
  id                TEXT PRIMARY KEY,
  source_id         TEXT NOT NULL REFERENCES source_registry(id),
  connector_version TEXT NOT NULL,
  started_at        INTEGER NOT NULL,
  completed_at      INTEGER,
  status            TEXT NOT NULL CHECK (status IN ('pending', 'running', 'succeeded', 'failed', 'partial', 'cancelled')),
  records_fetched   INTEGER DEFAULT 0,
  records_imported  INTEGER DEFAULT 0,
  records_skipped   INTEGER DEFAULT 0,
  records_failed    INTEGER DEFAULT 0,
  error_message     TEXT,
  idempotency_key   TEXT NOT NULL UNIQUE,
  triggered_by      TEXT,
  created_at        INTEGER NOT NULL DEFAULT (unixepoch())
);

-- Add workflow_step_run table
CREATE TABLE IF NOT EXISTS workflow_step_run (
  id                  TEXT PRIMARY KEY,
  ingestion_run_id    TEXT REFERENCES ingestion_run(id),
  workflow_name       TEXT NOT NULL,
  step_name           TEXT NOT NULL,
  person_id           TEXT REFERENCES person(id),
  started_at          INTEGER NOT NULL,
  completed_at        INTEGER,
  status              TEXT NOT NULL,
  attempt             INTEGER NOT NULL DEFAULT 1,
  input_payload_key   TEXT,
  output_payload_key  TEXT,
  error_message       TEXT,
  idempotency_key     TEXT NOT NULL UNIQUE
);

-- Add quality_gate_result table
CREATE TABLE IF NOT EXISTS quality_gate_result (
  id                        TEXT PRIMARY KEY,
  person_id                 TEXT NOT NULL REFERENCES person(id),
  workflow_step_run_id      TEXT REFERENCES workflow_step_run(id),
  evaluated_at              INTEGER NOT NULL,
  identity_confidence       REAL NOT NULL,
  critical_fact_coverage    REAL NOT NULL,
  provenance_score          REAL NOT NULL,
  source_diversity          REAL NOT NULL,
  consistency               REAL NOT NULL,
  completeness              REAL NOT NULL,
  rights_readiness          REAL NOT NULL,
  social_confidence         REAL NOT NULL,
  freshness                 REAL NOT NULL,
  editorial_risk            TEXT NOT NULL,
  internal_link_integrity   REAL NOT NULL,
  api_readiness             REAL NOT NULL,
  approved_claims           INTEGER,
  disputed_claims           INTEGER,
  unsupported_claims        INTEGER,
  sources                   INTEGER,
  source_domains            INTEGER,
  media_assets              INTEGER,
  hero_eligible_media       INTEGER,
  verified_social_profiles  INTEGER,
  broken_links              INTEGER,
  duplicate_candidates      INTEGER,
  blocking_issues           TEXT,
  warnings                  TEXT,
  status                    TEXT NOT NULL CHECK (status IN ('PASS', 'FAIL', 'MANUAL_REVIEW')),
  reviewer_decision         TEXT,
  generated_at              INTEGER NOT NULL
);

-- Add review_case table
CREATE TABLE IF NOT EXISTS review_case (
  id                  TEXT PRIMARY KEY,
  entity_id           TEXT NOT NULL REFERENCES entity(id),
  review_type         TEXT NOT NULL,
  priority            TEXT NOT NULL DEFAULT 'normal' CHECK (priority IN ('low', 'normal', 'high', 'urgent')),
  assigned_to         TEXT,
  assigned_at         INTEGER,
  status              TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'in_review', 'approved', 'rejected', 'escalated')),
  decision            TEXT,
  decision_rationale  TEXT,
  decided_by          TEXT,
  decided_at          INTEGER,
  sla_due_at          INTEGER,
  created_at          INTEGER NOT NULL DEFAULT (unixepoch()),
  updated_at          INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX IF NOT EXISTS idx_review_case_entity ON review_case(entity_id);
CREATE INDEX IF NOT EXISTS idx_review_case_status ON review_case(status);

-- Add correction_request table
CREATE TABLE IF NOT EXISTS correction_request (
  id                TEXT PRIMARY KEY,
  entity_id         TEXT REFERENCES entity(id),
  claim_id          TEXT REFERENCES claim(id),
  submitter_email   TEXT,
  submitter_name    TEXT,
  submitter_user_id TEXT,
  field_path        TEXT NOT NULL,
  current_value     TEXT,
  proposed_value    TEXT,
  rationale         TEXT,
  source_url        TEXT,
  evidence_note     TEXT,
  status            TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'verified', 'rejected', 'merged', 'duplicate')),
  reviewer_id       TEXT,
  decision          TEXT,
  decision_note     TEXT,
  created_at        INTEGER NOT NULL DEFAULT (unixepoch()),
  updated_at        INTEGER NOT NULL DEFAULT (unixepoch())
);
