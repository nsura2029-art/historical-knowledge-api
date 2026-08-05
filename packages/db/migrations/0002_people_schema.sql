-- ========================================
-- Migration 0002: People schema (famous-people experiment)
-- Source: famous-people-platform-spec.md v2.0
-- Scope: 24 tables for the experiment (entity, person, names, claims,
--        sources, places, citizenship, professions, career, works, awards,
--        social, media, derived attrs, relations).
-- Deferred to migration 0003+: ingestion_run, workflow_step_run,
--        quality_gate_result, review_case, correction_request, slug_redirect
-- ========================================

-- ========================================
-- FOUNDATION
-- ========================================

CREATE TABLE entity (
  id                  TEXT PRIMARY KEY,
  type                TEXT NOT NULL CHECK (type IN ('person', 'place', 'work', 'organization', 'award', 'media')),
  slug                TEXT NOT NULL UNIQUE,
  canonical_name      TEXT NOT NULL,
  created_at          INTEGER NOT NULL DEFAULT (unixepoch()),
  updated_at          INTEGER NOT NULL DEFAULT (unixepoch()),
  status              TEXT NOT NULL DEFAULT 'draft' CHECK (status IN ('draft', 'in_review', 'published', 'archived')),
  language_default    TEXT NOT NULL DEFAULT 'en',
  -- Denormalized quick-access fields (computed from claim/derived tables; rebuild daily)
  popularity_score    REAL NOT NULL DEFAULT 0,
  popularity_rank     INTEGER
);

CREATE INDEX idx_entity_type   ON entity(type);
CREATE INDEX idx_entity_status ON entity(status);
CREATE INDEX idx_entity_pop    ON entity(popularity_rank);
CREATE INDEX idx_entity_name   ON entity(canonical_name);

CREATE TABLE person (
  id                    TEXT PRIMARY KEY REFERENCES entity(id),
  living_status         TEXT NOT NULL CHECK (living_status IN ('living', 'deceased', 'undisclosed')),
  short_description     TEXT,
  known_for_summary     TEXT,
  birth_event_id        TEXT,
  death_event_id        TEXT,
  primary_profession_id TEXT,
  editorial_risk_level  TEXT NOT NULL DEFAULT 'low' CHECK (editorial_risk_level IN ('low', 'medium', 'high')),
  identity_confidence   REAL NOT NULL DEFAULT 0,
  completeness_score    REAL NOT NULL DEFAULT 0,
  provenance_score      REAL NOT NULL DEFAULT 0,
  last_reviewed_at      INTEGER,
  last_reviewed_by      TEXT,
  -- Cached derived attributes for fast queries
  current_age           INTEGER,
  age_at_death          INTEGER,
  generation_slug       TEXT,
  star_sign_slug        TEXT,
  chinese_zodiac_animal TEXT,
  active_years_min      INTEGER,
  active_years_max      INTEGER,
  fame_scope            TEXT,
  fame_intensity        TEXT,
  gender                TEXT CHECK (gender IN ('male', 'female', 'nonbinary', 'unknown')),
  controversy_level     INTEGER DEFAULT 0,
  era_relevance         TEXT,
  -- Fame flags (20 boolean flags)
  is_celebrity          INTEGER NOT NULL DEFAULT 0,
  is_historical_figure  INTEGER NOT NULL DEFAULT 0,
  is_professional       INTEGER NOT NULL DEFAULT 0,
  is_cultural_icon      INTEGER NOT NULL DEFAULT 0,
  is_royalty            INTEGER NOT NULL DEFAULT 0,
  is_controversial      INTEGER NOT NULL DEFAULT 0,
  is_living             INTEGER NOT NULL DEFAULT 0,
  is_military_leader    INTEGER NOT NULL DEFAULT 0,
  is_religious_spiritual INTEGER NOT NULL DEFAULT 0,
  is_activist           INTEGER NOT NULL DEFAULT 0,
  is_pioneer            INTEGER NOT NULL DEFAULT 0,
  is_internet_personality INTEGER NOT NULL DEFAULT 0,
  is_polarizing         INTEGER NOT NULL DEFAULT 0,
  is_living_legend      INTEGER NOT NULL DEFAULT 0,
  created_at            INTEGER NOT NULL DEFAULT (unixepoch()),
  updated_at            INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX idx_person_living ON person(living_status);
CREATE INDEX idx_person_generation ON person(generation_slug);
CREATE INDEX idx_person_country ON person(generation_slug, is_celebrity, is_historical_figure);
CREATE INDEX idx_person_celebrity ON person(is_celebrity, is_historical_figure);

-- ========================================
-- NAMES
-- ========================================

CREATE TABLE entity_name (
  id               TEXT PRIMARY KEY,
  entity_id        TEXT NOT NULL REFERENCES entity(id),
  name_value       TEXT NOT NULL,
  name_type        TEXT NOT NULL CHECK (name_type IN ('canonical', 'birth', 'stage', 'married', 'former', 'regnal', 'religious', 'pen', 'nickname', 'initials', 'transliteration', 'translated', 'common_misspelling')),
  language_code    TEXT,
  script_code      TEXT,
  valid_from       INTEGER,
  valid_to         INTEGER,
  is_preferred     INTEGER NOT NULL DEFAULT 0,
  normalized_value TEXT,
  created_at       INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX idx_en_entity     ON entity_name(entity_id);
CREATE INDEX idx_en_normalized ON entity_name(normalized_value);
CREATE INDEX idx_en_value      ON entity_name(name_value);

-- ========================================
-- CLAIMS
-- ========================================

CREATE TABLE claim (
  id                  TEXT PRIMARY KEY,
  subject_entity_id   TEXT NOT NULL REFERENCES entity(id),
  predicate           TEXT NOT NULL,
  object_entity_id    TEXT REFERENCES entity(id),
  literal_value       TEXT,
  value_type          TEXT CHECK (value_type IN ('entity_ref', 'date', 'string', 'number', 'boolean')),
  valid_from          INTEGER,
  valid_to            INTEGER,
  date_precision      TEXT CHECK (date_precision IN ('day', 'month', 'year', 'decade', 'century', 'approximate', 'before', 'after', 'range', 'unknown')),
  certainty           TEXT NOT NULL DEFAULT 'undisputed' CHECK (certainty IN ('undisputed', 'disputed', 'contested', 'traditional', 'unknown')),
  confidence          REAL NOT NULL DEFAULT 1.0,
  sensitivity_level   TEXT NOT NULL DEFAULT 'public' CHECK (sensitivity_level IN ('public', 'semi_sensitive', 'sensitive', 'restricted')),
  status              TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'approved', 'rejected', 'published', 'disputed')),
  preferred           INTEGER NOT NULL DEFAULT 0,
  generated_by        TEXT,
  generated_by_model  TEXT,
  created_at          INTEGER NOT NULL DEFAULT (unixepoch()),
  updated_at          INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX idx_claim_subject  ON claim(subject_entity_id);
CREATE INDEX idx_claim_object   ON claim(object_entity_id);
CREATE INDEX idx_claim_pred     ON claim(predicate, subject_entity_id);
CREATE INDEX idx_claim_status   ON claim(status, subject_entity_id);

-- ========================================
-- SOURCE REGISTRY
-- ========================================

CREATE TABLE source_registry (
  id                          TEXT PRIMARY KEY,
  source_name                 TEXT NOT NULL,
  source_type                 TEXT NOT NULL,
  base_url                    TEXT,
  api_base_url                TEXT,
  documentation_url           TEXT,
  terms_url                   TEXT,
  license_name                TEXT,
  license_url                 TEXT,
  commercial_use_status       TEXT NOT NULL,
  attribution_required        INTEGER NOT NULL DEFAULT 0,
  redistribution_allowed      INTEGER NOT NULL DEFAULT 0,
  media_reuse_status          TEXT,
  automated_access_status     TEXT NOT NULL,
  authentication_type         TEXT,
  rate_limit_policy           TEXT,
  refresh_frequency           TEXT,
  source_quality_tier         TEXT NOT NULL CHECK (source_quality_tier IN ('A', 'B', 'C', 'D', 'E')),
  allowed_fields              TEXT,
  prohibited_fields           TEXT,
  retention_policy            TEXT,
  connector_version           TEXT,
  last_terms_reviewed_at      INTEGER,
  legal_review_status         TEXT,
  status                      TEXT NOT NULL CHECK (status IN ('APPROVED_API', 'APPROVED_BULK', 'LINK_ONLY', 'MANUAL_RESEARCH_ONLY', 'LICENSE_REQUIRED', 'BLOCKED_OR_RESTRICTED', 'PROHIBITED')),
  notes                       TEXT,
  created_at                  INTEGER NOT NULL DEFAULT (unixepoch()),
  updated_at                  INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE TABLE source_record (
  id                TEXT PRIMARY KEY,
  source_id         TEXT NOT NULL REFERENCES source_registry(id),
  external_id       TEXT,
  external_url      TEXT,
  raw_payload_key   TEXT,
  raw_payload_hash  TEXT,
  content_hash      TEXT,
  fetched_at        INTEGER NOT NULL,
  fetch_status      TEXT NOT NULL CHECK (fetch_status IN ('success', 'partial', 'failed', 'blocked', 'rate_limited')),
  fetch_error       TEXT,
  raw_size_bytes    INTEGER,
  raw_format        TEXT,
  parse_status      TEXT,
  parse_error       TEXT,
  normalized_at     INTEGER,
  expires_at        INTEGER,
  created_at        INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX idx_sr_source ON source_record(source_id);
CREATE INDEX idx_sr_fetched ON source_record(fetched_at);

CREATE TABLE claim_source (
  id                    TEXT PRIMARY KEY,
  claim_id              TEXT NOT NULL REFERENCES claim(id),
  source_record_id      TEXT NOT NULL REFERENCES source_record(id),
  support_type          TEXT NOT NULL CHECK (support_type IN ('supports', 'contradicts', 'partially_supports', 'mentions', 'primary_record', 'derived_from')),
  locator               TEXT,
  evidence_note         TEXT,
  retrieved_at          INTEGER NOT NULL
);

CREATE INDEX idx_cs_claim ON claim_source(claim_id);
CREATE INDEX idx_cs_source ON claim_source(source_record_id);

-- ========================================
-- EXTERNAL IDS
-- ========================================

CREATE TABLE external_identifier (
  id            TEXT PRIMARY KEY,
  entity_id     TEXT NOT NULL REFERENCES entity(id),
  scheme        TEXT NOT NULL,
  identifier    TEXT NOT NULL,
  url           TEXT,
  is_preferred  INTEGER NOT NULL DEFAULT 1,
  verified_at   INTEGER,
  source_id     TEXT REFERENCES source_registry(id),
  created_at    INTEGER NOT NULL DEFAULT (unixepoch()),
  UNIQUE(scheme, identifier)
);

CREATE INDEX idx_ei_entity  ON external_identifier(entity_id);
CREATE INDEX idx_ei_scheme  ON external_identifier(scheme);

-- ========================================
-- PLACES
-- ========================================

CREATE TABLE place (
  id              TEXT PRIMARY KEY REFERENCES entity(id),
  place_type      TEXT NOT NULL,
  modern_id       TEXT REFERENCES place(id),
  latitude        REAL,
  longitude       REAL,
  country_code    TEXT,
  parent_id       TEXT REFERENCES place(id),
  valid_from      INTEGER,
  valid_to        INTEGER,
  wikidata_qid    TEXT
);

CREATE INDEX idx_place_country ON place(country_code);

-- ========================================
-- PERSON GEOGRAPHY
-- ========================================

CREATE TABLE person_citizenship (
  id              TEXT PRIMARY KEY,
  person_id       TEXT NOT NULL REFERENCES person(id),
  country_id      TEXT NOT NULL REFERENCES place(id),
  valid_from      INTEGER,
  valid_to        INTEGER,
  primary_flag    INTEGER NOT NULL DEFAULT 0,
  source_claim_id TEXT,
  created_at      INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX idx_pc_person ON person_citizenship(person_id);

CREATE TABLE person_place_relation (
  id              TEXT PRIMARY KEY,
  person_id       TEXT NOT NULL REFERENCES person(id),
  place_id        TEXT NOT NULL REFERENCES place(id),
  relation_type   TEXT NOT NULL CHECK (relation_type IN ('birthplace', 'residence', 'death_place', 'workplace', 'educated_at')),
  valid_from      INTEGER,
  valid_to        INTEGER,
  source_claim_id TEXT,
  created_at      INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX idx_ppr_person ON person_place_relation(person_id);

-- ========================================
-- PROFESSIONS
-- ========================================

CREATE TABLE profession (
  id            TEXT PRIMARY KEY,
  name          TEXT NOT NULL,
  category      TEXT NOT NULL,
  parent_id     TEXT REFERENCES profession(id),
  wikidata_qid  TEXT,
  is_active     INTEGER NOT NULL DEFAULT 1,
  created_at    INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE TABLE person_profession (
  id              TEXT PRIMARY KEY,
  person_id       TEXT NOT NULL REFERENCES person(id),
  profession_id   TEXT NOT NULL REFERENCES profession(id),
  is_primary      INTEGER NOT NULL DEFAULT 0,
  start_year      INTEGER,
  end_year        INTEGER,
  source_claim_id TEXT,
  created_at      INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX idx_pp_person ON person_profession(person_id);
CREATE INDEX idx_pp_profession ON person_profession(profession_id);

-- ========================================
-- CAREER: works, organizations, awards
-- ========================================

CREATE TABLE career_event (
  id              TEXT PRIMARY KEY,
  person_id       TEXT NOT NULL REFERENCES person(id),
  event_type      TEXT NOT NULL,
  start_date      TEXT,
  end_date        TEXT,
  description     TEXT,
  organization_id TEXT REFERENCES entity(id),
  place_id        TEXT REFERENCES place(id),
  source_claim_id TEXT
);

CREATE INDEX idx_ce_person ON career_event(person_id);

CREATE TABLE work (
  id              TEXT PRIMARY KEY REFERENCES entity(id),
  work_type       TEXT NOT NULL,
  release_date    TEXT,
  language        TEXT,
  isbn            TEXT,
  doi             TEXT,
  iswc            TEXT,
  wikidata_qid    TEXT
);

CREATE TABLE person_work_credit (
  id              TEXT PRIMARY KEY,
  person_id       TEXT NOT NULL REFERENCES person(id),
  work_id         TEXT NOT NULL REFERENCES work(id),
  role            TEXT NOT NULL,
  character_name  TEXT,
  start_year      INTEGER,
  end_year        INTEGER,
  is_primary      INTEGER NOT NULL DEFAULT 0,
  source_claim_id TEXT
);

CREATE INDEX idx_pwc_person ON person_work_credit(person_id);
CREATE INDEX idx_pwc_work ON person_work_credit(work_id);

CREATE TABLE organization (
  id              TEXT PRIMARY KEY REFERENCES entity(id),
  org_type        TEXT NOT NULL,
  founded_year    INTEGER,
  dissolved_year  INTEGER,
  parent_id       TEXT REFERENCES organization(id),
  wikidata_qid    TEXT
);

CREATE TABLE award (
  id              TEXT PRIMARY KEY REFERENCES entity(id),
  award_type      TEXT NOT NULL,
  field           TEXT,
  wikidata_qid    TEXT
);

CREATE TABLE person_award_result (
  id              TEXT PRIMARY KEY,
  person_id       TEXT NOT NULL REFERENCES person(id),
  award_id        TEXT NOT NULL REFERENCES award(id),
  year            INTEGER NOT NULL,
  result          TEXT NOT NULL CHECK (result IN ('won', 'nominated', 'shortlisted', 'announced', 'declined')),
  shared_with     TEXT,
  source_claim_id TEXT
);

CREATE INDEX idx_par_person ON person_award_result(person_id);

-- ========================================
-- SOCIAL PROFILES
-- ========================================

CREATE TABLE social_profile (
  id                          TEXT PRIMARY KEY,
  person_id                   TEXT NOT NULL REFERENCES person(id),
  platform                    TEXT NOT NULL CHECK (platform IN ('youtube', 'instagram', 'facebook', 'twitter', 'tiktok', 'linkedin', 'threads', 'mastodon', 'official_website', 'other')),
  handle                      TEXT,
  platform_account_id         TEXT,
  profile_url                 TEXT NOT NULL,
  account_type                TEXT CHECK (account_type IN ('personal', 'professional_page', 'fan_account', 'memorial', 'topic')),
  official_status             TEXT NOT NULL DEFAULT 'unknown' CHECK (official_status IN ('official_confirmed', 'likely_official', 'representative_or_agency', 'memorial', 'fan', 'parody', 'topic_or_auto_generated', 'unknown')),
  confidence                  REAL NOT NULL DEFAULT 0,
  verification_method         TEXT,
  evidence_source_record_id   TEXT REFERENCES source_record(id),
  follower_observation        INTEGER,
  follower_observed_at        INTEGER,
  follower_expires_at         INTEGER,
  first_seen_at               INTEGER NOT NULL,
  last_verified_at            INTEGER NOT NULL,
  status                      TEXT NOT NULL DEFAULT 'active' CHECK (status IN ('active', 'inactive', 'deleted', 'handle_changed', 'unverified')),
  source_id                   TEXT REFERENCES source_registry(id),
  created_at                  INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX idx_social_person   ON social_profile(person_id);
CREATE INDEX idx_social_platform ON social_profile(platform);
CREATE INDEX idx_social_official ON social_profile(official_status);

-- ========================================
-- MEDIA
-- ========================================

CREATE TABLE media_asset (
  id                    TEXT PRIMARY KEY REFERENCES entity(id),
  asset_type            TEXT NOT NULL CHECK (asset_type IN ('image', 'video', 'audio', 'document')),
  url                   TEXT NOT NULL,
  thumbnail_url         TEXT,
  r2_key                TEXT,
  width                 INTEGER,
  height                INTEGER,
  duration_sec          INTEGER,
  depiction_entity_id   TEXT NOT NULL REFERENCES entity(id),
  depiction_confidence  REAL NOT NULL DEFAULT 0,
  depiction_method      TEXT,
  status                TEXT NOT NULL DEFAULT 'pending_review' CHECK (status IN ('pending_review', 'approved', 'rejected')),
  created_at            INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX idx_ma_depiction ON media_asset(depiction_entity_id);

CREATE TABLE media_rights (
  id                    TEXT PRIMARY KEY,
  media_asset_id        TEXT NOT NULL UNIQUE REFERENCES media_asset(id),
  creator_name          TEXT,
  copyright_holder      TEXT,
  license_code          TEXT,
  license_url           TEXT,
  rights_statement      TEXT,
  attribution_text      TEXT NOT NULL,
  commercial_use_allowed    INTEGER NOT NULL DEFAULT 0,
  derivatives_allowed       INTEGER NOT NULL DEFAULT 0,
  attribution_required      INTEGER NOT NULL DEFAULT 1,
  share_alike_required      INTEGER NOT NULL DEFAULT 0,
  editorial_use_only        INTEGER NOT NULL DEFAULT 0,
  expiry_date           INTEGER,
  rights_verified_at    INTEGER,
  rights_reviewer       TEXT,
  source_id             TEXT REFERENCES source_registry(id),
  created_at            INTEGER NOT NULL DEFAULT (unixepoch())
);

-- ========================================
-- DERIVED ATTRIBUTES
-- ========================================

CREATE TABLE person_derived_attribute (
  id                TEXT PRIMARY KEY,
  person_id         TEXT NOT NULL REFERENCES person(id),
  attribute_type    TEXT NOT NULL,
  attribute_value   TEXT NOT NULL,
  rule_version      TEXT NOT NULL,
  input_claim_ids   TEXT,
  computed_at       INTEGER NOT NULL,
  valid_until       INTEGER,
  status            TEXT NOT NULL DEFAULT 'current' CHECK (status IN ('current', 'stale', 'invalidated')),
  source_id         TEXT REFERENCES source_registry(id),
  created_at        INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX idx_pda_person ON person_derived_attribute(person_id);
CREATE INDEX idx_pda_type   ON person_derived_attribute(attribute_type, person_id);

-- ========================================
-- RELATIONS
-- ========================================

CREATE TABLE entity_relation (
  id                TEXT PRIMARY KEY,
  subject_entity_id TEXT NOT NULL REFERENCES entity(id),
  object_entity_id  TEXT NOT NULL REFERENCES entity(id),
  relation_type     TEXT NOT NULL,
  valid_from        INTEGER,
  valid_to          INTEGER,
  confidence        REAL NOT NULL DEFAULT 1.0,
  source_claim_id   TEXT
);

CREATE INDEX idx_er_subject ON entity_relation(subject_entity_id);
CREATE INDEX idx_er_object  ON entity_relation(object_entity_id);
