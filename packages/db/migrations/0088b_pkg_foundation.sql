-- ========================================
-- Migration 0088b: People Knowledge Graph (PKG) foundation (delta)
-- Spec: PKG Phase 1 Product & Data Specification v1.0 (2026-08-16)
--
-- Migration 0088 ran the ALTERs on source_registry + person. This file
-- 0088b runs only the NEW tables + seed data (idempotent).
-- ========================================

-- ========================================
-- 1) PERSON_FAMILY_RELATION — temporal family edges
-- ========================================
CREATE TABLE IF NOT EXISTS person_family_relation (
  id                TEXT PRIMARY KEY,
  person_id         TEXT NOT NULL REFERENCES person(id),
  related_person_id TEXT NOT NULL REFERENCES person(id),
  relation_type     TEXT NOT NULL CHECK (relation_type IN (
    'parent_of','child_of','spouse_of','sibling_of',
    'stepparent_of','stepchild_of','partner_of','relative_of'
  )),
  start_date        TEXT,
  end_date          TEXT,
  is_current        INTEGER NOT NULL DEFAULT 1,
  source_id         TEXT NOT NULL REFERENCES source_registry(id),
  source_url        TEXT,
  source_locator    TEXT,
  confidence        REAL NOT NULL DEFAULT 0.9,
  verification_state TEXT NOT NULL DEFAULT 'auto_verified',
  privacy_class     TEXT NOT NULL DEFAULT 'public_record' CHECK (privacy_class IN ('public_record','editorial_consensus','unverified','private')),
  created_at        INTEGER NOT NULL DEFAULT (unixepoch()),
  UNIQUE(person_id, related_person_id, relation_type, start_date)
);

CREATE INDEX IF NOT EXISTS idx_pfr_person         ON person_family_relation(person_id);
CREATE INDEX IF NOT EXISTS idx_pfr_related        ON person_family_relation(related_person_id);
CREATE INDEX IF NOT EXISTS idx_pfr_type           ON person_family_relation(relation_type);
CREATE INDEX IF NOT EXISTS idx_pfr_privacy        ON person_family_relation(privacy_class);

-- ========================================
-- 2) SOCIAL_METRIC_OBSERVATION — time-series
-- ========================================
CREATE TABLE IF NOT EXISTS social_metric_observation (
  id                TEXT PRIMARY KEY,
  social_account_id TEXT NOT NULL REFERENCES social_profile(id),
  metric            TEXT NOT NULL CHECK (metric IN (
    'followers','subscribers','following','total_views','total_likes',
    'video_count','post_count','avg_views','avg_comments','avg_likes',
    'stream_viewers','peak_concurrent_viewers','podcast_followers',
    'repository_followers','repository_stars','listeners','monthly_listeners'
  )),
  value             REAL NOT NULL,
  observed_at       INTEGER NOT NULL,
  source_id         TEXT NOT NULL REFERENCES source_registry(id),
  source_record_id  TEXT,
  collection_method TEXT NOT NULL CHECK (collection_method IN (
    'official_api','third_party_scraper','public_page_scrape','manual','estimated'
  )),
  terms_class       TEXT NOT NULL DEFAULT 'publicly_visible' CHECK (terms_class IN (
    'publicly_visible','platform_authorized','private_disclosed','not_permitted'
  )),
  quality           REAL NOT NULL DEFAULT 0.9,
  notes             TEXT,
  created_at        INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX IF NOT EXISTS idx_smo_account_time  ON social_metric_observation(social_account_id, observed_at);
CREATE INDEX IF NOT EXISTS idx_smo_metric        ON social_metric_observation(metric);
CREATE INDEX IF NOT EXISTS idx_smo_observed      ON social_metric_observation(observed_at);

-- ========================================
-- 3) ENTITY_MERGE_HISTORY
-- ========================================
CREATE TABLE IF NOT EXISTS entity_merge_history (
  id                TEXT PRIMARY KEY,
  surviving_id      TEXT NOT NULL REFERENCES entity(id),
  absorbed_id       TEXT NOT NULL REFERENCES entity(id),
  merge_method      TEXT NOT NULL CHECK (merge_method IN (
    'deterministic_id_match','alias_match','composite_match',
    'probabilistic_threshold','manual_review','auto_merge_threshold'
  )),
  confidence        REAL NOT NULL,
  evidence_json     TEXT,
  approved_by       TEXT,
  approved_at       INTEGER NOT NULL,
  reversed_at       INTEGER,
  reversal_reason   TEXT,
  notes             TEXT,
  created_at        INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX IF NOT EXISTS idx_emh_surviving ON entity_merge_history(surviving_id);
CREATE INDEX IF NOT EXISTS idx_emh_absorbed  ON entity_merge_history(absorbed_id);
CREATE INDEX IF NOT EXISTS idx_emh_method    ON entity_merge_history(merge_method);

-- ========================================
-- 4) ENTITY_REVIEW_QUEUE
-- ========================================
CREATE TABLE IF NOT EXISTS entity_review_queue (
  id                TEXT PRIMARY KEY,
  candidate_a_id    TEXT NOT NULL REFERENCES entity(id),
  candidate_b_id    TEXT NOT NULL REFERENCES entity(id),
  match_score       REAL NOT NULL,
  match_signals     TEXT,
  proposed_action   TEXT NOT NULL CHECK (proposed_action IN ('merge','keep_separate','needs_investigation')),
  priority          TEXT NOT NULL DEFAULT 'medium' CHECK (priority IN ('low','medium','high','urgent')),
  assigned_to       TEXT,
  status            TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending','in_review','resolved','deferred')),
  resolution        TEXT,
  resolved_by       TEXT,
  resolved_at       INTEGER,
  notes             TEXT,
  created_at        INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX IF NOT EXISTS idx_erq_status   ON entity_review_queue(status);
CREATE INDEX IF NOT EXISTS idx_erq_priority ON entity_review_queue(priority);
CREATE INDEX IF NOT EXISTS idx_erq_a        ON entity_review_queue(candidate_a_id);
CREATE INDEX IF NOT EXISTS idx_erq_b        ON entity_review_queue(candidate_b_id);

-- ========================================
-- 5) ATTENTION_EVENT
-- ========================================
CREATE TABLE IF NOT EXISTS attention_event (
  id                  TEXT PRIMARY KEY,
  event_type          TEXT NOT NULL CHECK (event_type IN (
    'person_profile_view','entity_search','autocomplete_select',
    'related_person_click','social_link_click','follow','watchlist_add',
    'quiz_interaction','share','return_visit','news_attribution'
  )),
  person_id           TEXT REFERENCES person(id),
  entity_id           TEXT REFERENCES entity(id),
  session_id          TEXT,
  country_code        TEXT,
  referrer_class      TEXT CHECK (referrer_class IN ('search','internal','social','direct','email','news','ai_assistant','other')),
  referrer_url_host   TEXT,
  privacy_consent     TEXT NOT NULL DEFAULT 'none' CHECK (privacy_consent IN ('none','cookie_consent','gdpr_explicit','ccpa_opt_out')),
  user_agent_class    TEXT CHECK (user_agent_class IN ('desktop','mobile','tablet','bot','unknown')),
  search_query        TEXT,
  dwell_ms            INTEGER,
  scroll_depth_pct    INTEGER,
  metadata_json       TEXT,
  occurred_at         INTEGER NOT NULL,
  ingested_at         INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX IF NOT EXISTS idx_ae_type_time    ON attention_event(event_type, occurred_at);
CREATE INDEX IF NOT EXISTS idx_ae_person       ON attention_event(person_id);
CREATE INDEX IF NOT EXISTS idx_ae_country      ON attention_event(country_code);
CREATE INDEX IF NOT EXISTS idx_ae_session      ON attention_event(session_id);

-- ========================================
-- 6) IDENTIFIER_SCHEME
-- ========================================
CREATE TABLE IF NOT EXISTS identifier_scheme (
  id                TEXT PRIMARY KEY,
  scheme            TEXT NOT NULL UNIQUE,
  display_name      TEXT NOT NULL,
  base_url_pattern  TEXT,
  validation_regex  TEXT,
  source_id         TEXT REFERENCES source_registry(id),
  is_preferred      INTEGER NOT NULL DEFAULT 0,
  created_at        INTEGER NOT NULL DEFAULT (unixepoch())
);

-- ========================================
-- 7) CLAIM_PREDICATE
-- ========================================
CREATE TABLE IF NOT EXISTS claim_predicate (
  id                TEXT PRIMARY KEY,
  predicate         TEXT NOT NULL UNIQUE,
  display_name      TEXT NOT NULL,
  description       TEXT,
  object_kind       TEXT NOT NULL CHECK (object_kind IN ('text','date','number','entity','url','qid','boolean')),
  wikidata_property TEXT,
  inverse_predicate TEXT,
  search_intent     TEXT,
  category          TEXT NOT NULL CHECK (category IN (
    'identity','birth_death','geography','family','career',
    'education','work','creation','award','social',
    'platform_metric','research','political','organizational'
  )),
  is_sensitive      INTEGER NOT NULL DEFAULT 0,
  created_at        INTEGER NOT NULL DEFAULT (unixepoch())
);

-- ========================================
-- 8) PERSON_PROVENANCE_SUMMARY
-- ========================================
CREATE TABLE IF NOT EXISTS person_provenance_summary (
  person_id              TEXT PRIMARY KEY REFERENCES person(id),
  total_claims           INTEGER NOT NULL DEFAULT 0,
  verified_claims        INTEGER NOT NULL DEFAULT 0,
  auto_verified_claims   INTEGER NOT NULL DEFAULT 0,
  disputed_claims        INTEGER NOT NULL DEFAULT 0,
  unique_sources         INTEGER NOT NULL DEFAULT 0,
  has_dob                INTEGER NOT NULL DEFAULT 0,
  has_pob                INTEGER NOT NULL DEFAULT 0,
  has_citizenship        INTEGER NOT NULL DEFAULT 0,
  has_image              INTEGER NOT NULL DEFAULT 0,
  has_social_account     INTEGER NOT NULL DEFAULT 0,
  has_family             INTEGER NOT NULL DEFAULT 0,
  has_employer_or_school INTEGER NOT NULL DEFAULT 0,
  last_refreshed_at      INTEGER NOT NULL DEFAULT (unixepoch()),
  data_quality_score     REAL NOT NULL DEFAULT 0
);

CREATE INDEX IF NOT EXISTS idx_pps_quality ON person_provenance_summary(data_quality_score);
CREATE INDEX IF NOT EXISTS idx_pps_refresh ON person_provenance_summary(last_refreshed_at);

-- ========================================
-- 9) Extend person table (idempotent — skip if already done in 0088)
-- ========================================
-- These columns may already exist from 0088 attempt; SQLite will throw
-- "duplicate column" if so. Wrangler will run 0088b alone now, so the
-- person table is still missing these columns:
ALTER TABLE person ADD COLUMN last_claim_verified_at INTEGER;
ALTER TABLE person ADD COLUMN claim_count          INTEGER NOT NULL DEFAULT 0;
ALTER TABLE person ADD COLUMN source_count         INTEGER NOT NULL DEFAULT 0;

CREATE INDEX IF NOT EXISTS idx_person_last_verified ON person(last_claim_verified_at);

-- ========================================
-- 10) Seed source_registry with PKG-spec sources
-- ========================================
INSERT OR IGNORE INTO source_registry (id, source_name, source_type, base_url, license_name, commercial_use_status, attribution_required, redistribution_allowed, automated_access_status, source_quality_tier, status, policy_last_checked_at, policy_owner, ai_training_allowed, max_retention_days) VALUES
  ('src_official_website', 'Official Website (per-person)', 'official_site', null, 'Varies', 'unknown', 0, 0, 'manual_only', 'A', 'MANUAL_RESEARCH_ONLY', unixepoch(), 'editorial', 0, null),
  ('src_viaf',              'VIAF (Virtual International Authority File)', 'library_authority', 'https://viaf.org', 'CC0', 'allowed', 1, 1, 'allowed', 'A', 'APPROVED_BULK', unixepoch(), 'data-eng', 0, null),
  ('src_isni',              'ISNI', 'library_authority', 'https://isni.org', 'CC0', 'allowed', 1, 1, 'allowed', 'A', 'APPROVED_BULK', unixepoch(), 'data-eng', 0, null),
  ('src_musicbrainz',       'MusicBrainz', 'music_database', 'https://musicbrainz.org', 'CC0', 'allowed', 1, 1, 'allowed', 'A', 'APPROVED_BULK', unixepoch(), 'data-eng', 0, null),
  ('src_openalex',          'OpenAlex', 'research_database', 'https://openalex.org', 'CC0', 'allowed', 1, 1, 'allowed', 'A', 'APPROVED_BULK', unixepoch(), 'data-eng', 1, null),
  ('src_orcid',             'ORCID', 'research_database', 'https://orcid.org', 'CC0', 'allowed', 1, 1, 'allowed', 'A', 'APPROVED_BULK', unixepoch(), 'data-eng', 0, null),
  ('src_crossref',          'Crossref', 'research_database', 'https://www.crossref.org', 'CC0', 'allowed', 1, 1, 'allowed', 'A', 'APPROVED_BULK', unixepoch(), 'data-eng', 0, null),
  ('src_ror',               'ROR', 'library_authority', 'https://ror.org', 'CC0', 'allowed', 1, 1, 'allowed', 'A', 'APPROVED_BULK', unixepoch(), 'data-eng', 0, null),
  ('src_imdb',              'IMDb (licensed)', 'entertainment_database', 'https://www.imdb.com', 'All Rights Reserved', 'restricted', 1, 0, 'license_required', 'B', 'LICENSE_REQUIRED', unixepoch(), 'legal', 0, null),
  ('src_tmdb',              'TMDB', 'entertainment_database', 'https://www.themoviedb.org', 'CC-BY-4.0 (metadata)', 'allowed', 1, 1, 'allowed', 'B', 'APPROVED_API', unixepoch(), 'data-eng', 0, null),
  ('src_youtube_official',  'YouTube Data API', 'platform_api', 'https://www.youtube.com', 'YouTube API License', 'allowed', 1, 0, 'platform_authorized', 'B', 'APPROVED_API', unixepoch(), 'data-eng', 0, 90),
  ('src_instagram_official','Instagram Graph API', 'platform_api', 'https://www.instagram.com', 'All Rights Reserved', 'restricted', 1, 0, 'platform_authorized', 'B', 'APPROVED_API', unixepoch(), 'legal', 0, 30),
  ('src_x_api',             'X (Twitter) API', 'platform_api', 'https://x.com', 'All Rights Reserved', 'restricted', 1, 0, 'platform_authorized', 'B', 'APPROVED_API', unixepoch(), 'legal', 0, 30),
  ('src_tiktok_display',    'TikTok Display API', 'platform_api', 'https://www.tiktok.com', 'All Rights Reserved', 'restricted', 1, 0, 'platform_authorized', 'B', 'APPROVED_API', unixepoch(), 'legal', 0, 30),
  ('src_twitch_helix',      'Twitch Helix API', 'platform_api', 'https://www.twitch.tv', 'All Rights Reserved', 'allowed', 1, 0, 'platform_authorized', 'B', 'APPROVED_API', unixepoch(), 'data-eng', 0, 30),
  ('src_github_official',   'GitHub REST API', 'platform_api', 'https://api.github.com', 'All Rights Reserved', 'allowed', 1, 0, 'platform_authorized', 'B', 'APPROVED_API', unixepoch(), 'data-eng', 0, 90),
  ('src_spotify_web',       'Spotify Web API', 'platform_api', 'https://api.spotify.com', 'All Rights Reserved', 'restricted', 1, 0, 'platform_authorized', 'B', 'APPROVED_API', unixepoch(), 'legal', 0, 30);

-- ========================================
-- 11) Seed identifier_scheme
-- ========================================
INSERT OR IGNORE INTO identifier_scheme (id, scheme, display_name, base_url_pattern, source_id, is_preferred) VALUES
  ('sch_wikidata',  'wikidata_qid',   'Wikidata QID',  'https://www.wikidata.org/wiki/{id}',     'src_wikidata', 1),
  ('sch_viaf',      'viaf',           'VIAF',          'https://viaf.org/viaf/{id}/',            'src_viaf',     0),
  ('sch_isni',      'isni',           'ISNI',          'https://isni.org/isni/{id}',             'src_isni',     0),
  ('sch_orcid',     'orcid',          'ORCID',         'https://orcid.org/{id}',                 'src_orcid',    0),
  ('sch_musicbrainz','musicbrainz_artist','MusicBrainz','https://musicbrainz.org/artist/{id}',   'src_musicbrainz', 0),
  ('sch_openalex',  'openalex_aid',   'OpenAlex Author','https://openalex.org/authors/{id}',    'src_openalex', 0),
  ('sch_imdb',      'imdb_nm',        'IMDb',          'https://www.imdb.com/name/{id}/',        'src_imdb',     0),
  ('sch_tmdb',      'tmdb_person',    'TMDB Person',   'https://www.themoviedb.org/person/{id}', 'src_tmdb',     0),
  ('sch_youtube',   'youtube_channel','YouTube Channel','https://www.youtube.com/channel/{id}',   'src_youtube_official', 0),
  ('sch_tiktok',    'tiktok_uid',     'TikTok',        'https://www.tiktok.com/@{id}',           'src_tiktok_display', 0),
  ('sch_x',         'x_user_id',      'X (Twitter)',   'https://x.com/i/user/{id}',              'src_x_api',    0),
  ('sch_twitch',    'twitch_user_id', 'Twitch',        'https://www.twitch.tv/{id}',             'src_twitch_helix', 0),
  ('sch_github',    'github_login',   'GitHub',        'https://github.com/{id}',                'src_github_official', 0),
  ('sch_spotify',   'spotify_artist', 'Spotify Artist','https://open.spotify.com/artist/{id}',   'src_spotify_web', 0);

-- ========================================
-- 12) Seed claim_predicate vocabulary
-- ========================================
INSERT OR IGNORE INTO claim_predicate (id, predicate, display_name, description, object_kind, wikidata_property, inverse_predicate, search_intent, category, is_sensitive) VALUES
  ('pred_dob',           'DATE_OF_BIRTH',         'Date of birth',     'YYYY-MM-DD per ISO 8601, or YYYY-BC-MM-DD for BCE', 'date',   'P569',  null,            'birthday', 'birth_death', 0),
  ('pred_dod',           'DATE_OF_DEATH',         'Date of death',     'YYYY-MM-DD per ISO 8601',                              'date',   'P570',  null,            'death',    'birth_death', 0),
  ('pred_pob',           'PLACE_OF_BIRTH',        'Place of birth',    'Wikidata QID for the city/region',                     'qid',    'P19',   null,            'birthplace','geography', 0),
  ('pred_pod',           'PLACE_OF_DEATH',        'Place of death',    'Wikidata QID for the city/region',                     'qid',    'P20',   null,            'deathplace','geography', 0),
  ('pred_nationality',   'NATIONALITY',           'Country citizenship','ISO 3166-1 alpha-2 code',                            'text',   'P27',   null,            'nationality','geography', 0),
  ('pred_occupation',    'HAS_OCCUPATION',        'Occupation',        'Free-text or Wikidata QID',                             'qid',    'P106',  null,            'profession','career', 0),
  ('pred_employer',      'WORKED_FOR',            'Employer',          'Wikidata QID for the organization',                     'qid',    'P108',  null,            'company',  'career', 0),
  ('pred_education',     'EDUCATED_AT',           'Education',         'Wikidata QID for the institution',                      'qid',    'P69',   null,            'education','education', 0),
  ('pred_member_of',     'MEMBER_OF',             'Member of',         'Group / band / organization',                            'qid',    'P463',  null,            'membership','organizational', 0),
  ('pred_position',      'HELD_POSITION',         'Position held',     'Office / role title',                                   'text',   'P39',   null,            'career',   'career', 0),
  ('pred_award',         'WON_AWARD',             'Award received',    'Award name',                                            'text',   'P166',  null,            'awards',   'award', 0),
  ('pred_genre',         'GENRE',                 'Genre',             'Creative genre',                                        'text',   'P136',  null,            'work',     'creation', 0),
  ('pred_language',      'SPEAKS_LANGUAGE',       'Language',          'ISO 639-1 code or full name',                          'text',   'P1412', null,            'language', 'identity', 0),
  ('pred_religion',      'RELIGION',              'Religion',          'Public-record only (Spec §29)',                         'text',   'P140',  null,            'religion', 'identity', 1),
  ('pred_political_party','POLITICAL_PARTY',      'Political party',   'Party name',                                            'text',   'P102',  null,            'politics', 'political', 0),
  ('pred_notable_work',  'KNOWN_FOR',             'Notable work',      'Most-famous work or achievement',                       'text',   'P800',  null,            'known_for','creation', 0),
  ('pred_parent_of',     'PARENT_OF',             'Parent of',         'Person is parent of subject',                           'qid',    'P40',   'CHILD_OF',      'family',   'family', 0),
  ('pred_child_of',      'CHILD_OF',              'Child of',          'Person is child of subject',                            'qid',    'P22',   'PARENT_OF',     'family',   'family', 0),
  ('pred_spouse_of',     'SPOUSE_OF',             'Spouse of',         'Married or partnered with',                             'qid',    'P26',   null,            'family',   'family', 0),
  ('pred_sibling_of',    'SIBLING_OF',            'Sibling of',        'Share one or both parents',                             'qid',    'P3373', null,            'family',   'family', 0),
  ('pred_website',       'OFFICIAL_WEBSITE',      'Official website',  'URL',                                                    'url',    'P856',  null,            'website',  'identity', 0),
  ('pred_image',         'PRIMARY_IMAGE',         'Primary image',     'Wikimedia Commons URL or R2 key',                       'url',    'P18',   null,            'image',    'identity', 0),
  ('pred_gender',        'GENDER',                'Gender',            'Public-record only (Spec §29)',                         'text',   'P21',   null,            'identity', 'identity', 1);

-- ========================================
-- 13) Backfill provenance summary
-- ========================================
INSERT OR IGNORE INTO person_provenance_summary (person_id) SELECT id FROM person;

-- ========================================
-- End of 0088b
-- ========================================
