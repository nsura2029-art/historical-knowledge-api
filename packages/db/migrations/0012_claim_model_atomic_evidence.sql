-- ========================================
-- Migration 0012: Atomic-claim model additions (KP-003)
-- Per the Britannica-inspired PRD, every fact must be a typed claim
-- with sources, certainty, precision, validity, and review status.
-- This migration ADDS the missing tables — most of the claim graph
-- (claim, claim_source, source_record, claim_conflict_group,
-- media_rights) was created by an earlier iteration of the project
-- and is being adopted as the canonical schema.
-- ========================================

-- ============================================================
-- 0. SCHEMA NOTES (adopted from existing tables, not redefined)
-- ============================================================
-- claim: id, subject_entity_id, predicate, object_entity_id,
--        literal_value, value_type, valid_from INTEGER, valid_to INTEGER,
--        date_precision, certainty, confidence, sensitivity_level,
--        status, preferred, generated_by, generated_by_model, timestamps
-- source_record: id, source_id, external_id, external_url,
--        raw_payload_key, raw_payload_hash, content_hash, fetched_at,
--        fetch_status, fetch_error, raw_size_bytes, raw_format,
--        parse_status, parse_error, normalized_at, expires_at, created_at
-- claim_source: id, claim_id, source_record_id, support_type,
--        locator, evidence_note, retrieved_at
-- claim_conflict_group: id, subject_entity_id, predicate, description,
--        resolution_status, resolution_note, resolved_at, resolved_by
-- media_rights: id, media_asset_id, creator_name, copyright_holder,
--        license_code, license_url, rights_statement, attribution_text,
--        commercial_use_allowed, derivatives_allowed, attribution_required,
--        share_alike_required, editorial_use_only, expiry_date,
--        rights_verified_at, rights_reviewer, source_id, created_at
-- ============================================================

-- ============================================================
-- 1. editorial_revision: change history (audit trail) — NEW
-- ============================================================
CREATE TABLE IF NOT EXISTS editorial_revision (
  id TEXT PRIMARY KEY,                          -- ed_rev_<uuid>
  target_entity_id TEXT NOT NULL REFERENCES entity(id),
  target_claim_id TEXT REFERENCES claim(id),
  field_name TEXT NOT NULL,                     -- 'description', 'birth_date', 'preferred', etc.
  old_value TEXT,
  new_value TEXT NOT NULL,
  revision_type TEXT NOT NULL DEFAULT 'enhancement'
    CHECK (revision_type IN ('initial','correction','enhancement','merge','split')),
  contributor_id TEXT,                          -- 'system', 'editor:alice', 'agent:mavis', 'llm:gpt-4'
  contributor_role TEXT NOT NULL DEFAULT 'system'
    CHECK (contributor_role IN ('system','editor','curator','llm','agent')),
  source_id TEXT REFERENCES source_registry(id),
  review_status TEXT NOT NULL DEFAULT 'pending'
    CHECK (review_status IN ('pending','approved','rejected','auto_approved')),
  reviewed_by TEXT,
  reviewed_at INTEGER,
  notes TEXT,
  created_at INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX IF NOT EXISTS idx_editorial_revision_target ON editorial_revision(target_entity_id);
CREATE INDEX IF NOT EXISTS idx_editorial_revision_claim ON editorial_revision(target_claim_id);
CREATE INDEX IF NOT EXISTS idx_editorial_revision_status ON editorial_revision(review_status);
CREATE INDEX IF NOT EXISTS idx_editorial_revision_created ON editorial_revision(created_at);

-- ============================================================
-- 2. content_section: narrative paragraphs claim-linked — NEW
--    (KP-003 creates the table; KP-016 populates it with quiz hooks)
-- ============================================================
CREATE TABLE IF NOT EXISTS content_section (
  id TEXT PRIMARY KEY,                          -- cs_<uuid>
  entity_id TEXT NOT NULL REFERENCES entity(id),
  section_type TEXT NOT NULL DEFAULT 'narrative'
    CHECK (section_type IN ('narrative','biography_intro','early_life','career','legacy','overview','quick_facts','timeline','quiz_hook')),
  heading TEXT,                                -- "Early Life"
  body_markdown TEXT NOT NULL,                 -- the prose
  claim_ids TEXT,                              -- JSON array of claim IDs
  source_ids TEXT,                             -- JSON array of source_registry IDs
  reading_level TEXT NOT NULL DEFAULT 'general'
    CHECK (reading_level IN ('child','general','advanced','expert')),
  language TEXT NOT NULL DEFAULT 'en',
  author_type TEXT NOT NULL DEFAULT 'human'
    CHECK (author_type IN ('human','assisted','generated')),
  generator_version TEXT,                      -- 'gpt-4-turbo-2024-04-09' etc.
  editorial_status TEXT NOT NULL DEFAULT 'pending'
    CHECK (editorial_status IN ('pending','approved','rejected','auto_approved')),
  version INTEGER NOT NULL DEFAULT 1,
  created_at INTEGER NOT NULL DEFAULT (unixepoch()),
  updated_at INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX IF NOT EXISTS idx_content_section_entity ON content_section(entity_id);
CREATE INDEX IF NOT EXISTS idx_content_section_status ON content_section(editorial_status);
CREATE INDEX IF NOT EXISTS idx_content_section_type ON content_section(section_type);

-- ============================================================
-- 3. entity rows for otd_event subjects (events need entity to be claim targets)
-- ============================================================
INSERT OR IGNORE INTO entity (id, type, status, canonical_name, slug, created_at, updated_at)
SELECT
  oe.id,
  'work',  -- entity.type CHECK constraint is ('person', 'place', 'work', 'organization', 'award', 'media')
  'published',
  substr(COALESCE(oe.title, oe.category), 1, 200),
  'otd-event-' || oe.id,
  strftime('%s', '2026-08-06'),
  strftime('%s', '2026-08-06')
FROM otd_event oe
WHERE NOT EXISTS (SELECT 1 FROM entity WHERE id = oe.id);

-- ============================================================
-- 4. Backfill: source_record for legacy career_event + otd_event sources
--    (only if not already present — idempotent)
-- ============================================================
INSERT OR IGNORE INTO source_record
  (id, source_id, external_id, external_url, fetched_at, fetch_status, created_at)
SELECT
  'sr_rec_legacy_ce_' || ce.id,
  ce.source_id,
  ce.id,
  COALESCE(ce.source_url, 'https://legacy.unknown/' || ce.id),
  strftime('%s', '2026-08-06'),
  'success',
  strftime('%s', '2026-08-06')
FROM career_event ce
WHERE ce.source_id IS NOT NULL
  AND NOT EXISTS (SELECT 1 FROM source_record WHERE id = 'sr_rec_legacy_ce_' || ce.id);

INSERT OR IGNORE INTO source_record
  (id, source_id, external_id, external_url, fetched_at, fetch_status, created_at)
SELECT
  'sr_rec_legacy_oe_' || oe.id,
  oe.source_id,
  oe.id,
  COALESCE(oe.source_url, 'https://legacy.unknown/' || oe.id),
  strftime('%s', '2026-08-06'),
  'success',
  strftime('%s', '2026-08-06')
FROM otd_event oe
WHERE oe.source_id IS NOT NULL
  AND NOT EXISTS (SELECT 1 FROM source_record WHERE id = 'sr_rec_legacy_oe_' || oe.id);

-- ============================================================
-- 5. Backfill: claim rows from career_event (per-person facts)
-- ============================================================
INSERT OR IGNORE INTO claim
  (id, subject_entity_id, predicate, object_entity_id,
   literal_value, value_type, valid_from, valid_to,
   date_precision, certainty, confidence, sensitivity_level,
   status, preferred, generated_by, generated_by_model)
SELECT
  'clm_legacy_ce_' || ce.id,
  ce.person_id,
  CASE ce.event_type
    WHEN 'birth' THEN 'born_on'
    WHEN 'death' THEN 'died_on'
    WHEN 'marriage' THEN 'married_to'
    WHEN 'divorce' THEN 'divorced_from'
    WHEN 'education' THEN 'educated_at'
    WHEN 'work_start' THEN 'work_started_at'
    WHEN 'work_end' THEN 'work_ended_at'
    WHEN 'award_received' THEN 'received_award'
    WHEN 'role_assumed' THEN 'assumed_role'
    WHEN 'custom' THEN 'custom_event'
    WHEN 'cultural_impact' THEN 'cultural_impact'
    ELSE 'unknown_event'
  END,
  ce.organization_id,
  substr(COALESCE(ce.description, ce.event_type), 1, 500),
  'string',
  CASE WHEN ce.start_date IS NOT NULL
    THEN CAST(strftime('%s', substr(ce.start_date, 1, 10)) AS INTEGER)
    ELSE NULL END,
  CASE WHEN ce.end_date IS NOT NULL
    THEN CAST(strftime('%s', substr(ce.end_date, 1, 10)) AS INTEGER)
    ELSE NULL END,
  'day',
  'undisputed',
  0.7,
  'public',
  'approved',
  1,
  'legacy-v1',
  'kp-003-migration-0012'
FROM career_event ce
WHERE NOT EXISTS (SELECT 1 FROM claim WHERE id = 'clm_legacy_ce_' || ce.id);

-- ============================================================
-- 6. Backfill: claim rows from otd_event (per-day events)
-- ============================================================
INSERT OR IGNORE INTO claim
  (id, subject_entity_id, predicate, literal_value, value_type,
   valid_from, date_precision, certainty, confidence, sensitivity_level,
   status, preferred, generated_by, generated_by_model)
SELECT
  'clm_legacy_oe_' || oe.id,
  oe.id,  -- otd_event IS the subject entity
  'occurred_on',
  substr(COALESCE(oe.title, oe.category), 1, 500),
  'string',
  CASE WHEN oe.start_date IS NOT NULL
    THEN CAST(strftime('%s', substr(oe.start_date, 1, 10)) AS INTEGER)
    ELSE NULL END,
  'day',
  'undisputed',
  0.7,
  'public',
  'approved',
  1,
  'legacy-v1',
  'kp-003-migration-0012'
FROM otd_event oe
WHERE NOT EXISTS (SELECT 1 FROM claim WHERE id = 'clm_legacy_oe_' || oe.id);

-- ============================================================
-- 7. claim_source join rows (one per legacy claim)
-- ============================================================
INSERT OR IGNORE INTO claim_source
  (id, claim_id, source_record_id, support_type, locator, evidence_note, retrieved_at)
SELECT
  'cs_legacy_ce_' || ce.id,
  'clm_legacy_ce_' || ce.id,
  'sr_rec_legacy_ce_' || ce.id,
  'primary_record',
  ce.source_locator,
  'auto-generated from legacy career_event',
  strftime('%s', '2026-08-06')
FROM career_event ce
WHERE ce.source_id IS NOT NULL
  AND NOT EXISTS (SELECT 1 FROM claim_source WHERE id = 'cs_legacy_ce_' || ce.id);

INSERT OR IGNORE INTO claim_source
  (id, claim_id, source_record_id, support_type, locator, evidence_note, retrieved_at)
SELECT
  'cs_legacy_oe_' || oe.id,
  'clm_legacy_oe_' || oe.id,
  'sr_rec_legacy_oe_' || oe.id,
  'primary_record',
  oe.source_locator,
  'auto-generated from legacy otd_event',
  strftime('%s', '2026-08-06')
FROM otd_event oe
WHERE oe.source_id IS NOT NULL
  AND NOT EXISTS (SELECT 1 FROM claim_source WHERE id = 'cs_legacy_oe_' || oe.id);

-- ============================================================
-- 8. editorial_revision: initial revision for the backfill
-- ============================================================
INSERT OR REPLACE INTO editorial_revision
  (id, target_entity_id, target_claim_id, field_name, old_value, new_value,
   revision_type, contributor_id, contributor_role, review_status, reviewed_by, reviewed_at, notes)
SELECT
  'ed_rev_0012_' || cl.id,
  cl.subject_entity_id,
  cl.id,
  'claim',
  NULL,
  'created',
  'initial',
  'system',
  'system',
  'auto_approved',
  'kp-003-migration-0012',
  strftime('%s', '2026-08-06'),
  'initial claim created from legacy career_event/otd_event backfill'
FROM claim cl
WHERE cl.id LIKE 'clm_legacy_%'
  AND NOT EXISTS (SELECT 1 FROM editorial_revision WHERE id = 'ed_rev_0012_' || cl.id);

-- ============================================================
-- 9. ingestion_run record
-- ============================================================
INSERT OR REPLACE INTO ingestion_run
  (id, source_id, connector_version, started_at, completed_at, status, records_fetched, records_imported, records_skipped, records_failed, idempotency_key, triggered_by)
VALUES
  ('run_0012_claim_model', 'src_wikipedia', 'kp-003-claim-model-v1',
   strftime('%s', '2026-08-06'), strftime('%s', '2026-08-06'), 'succeeded',
   (SELECT COUNT(*) FROM career_event) + (SELECT COUNT(*) FROM otd_event),
   (SELECT COUNT(*) FROM claim WHERE id LIKE 'clm_legacy_%'),
   0, 0, 'kp-003-claim-model-v1', 'manual');
