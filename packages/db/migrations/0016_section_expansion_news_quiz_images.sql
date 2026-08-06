-- ========================================
-- Migration 0016: Section expansion + news + quiz + image gallery
-- Per the Biographies vertical PRD, every person page should have:
--   - 8-12 narrative sections (was 4: early/career/personal/legacy)
--   - 8 quick_facts (was 2: born/nationality)
--   - 5+ image gallery (was 1 hero image)
--   - Latest news strip
--   - Quizzes (4 questions per top-5 entity)
-- This migration ADDs only the new tables and columns. Existing tables
-- (entity, content_section, media_asset, media_rights) are extended in place.
-- ========================================

-- ============================================================
-- 1. entity.summary — short summary shown in search and overview cards
-- ============================================================
ALTER TABLE entity ADD COLUMN summary TEXT;
ALTER TABLE entity ADD COLUMN summary_source_ids TEXT; -- JSON array of source_registry ids
ALTER TABLE entity ADD COLUMN summary_updated_at INTEGER;

-- ============================================================
-- 2. content_section extensions — for richer essay types
-- ============================================================
-- Add new section_type values to the existing CHECK by creating a wider enum
-- (SQLite CHECK constraints can't be altered; we instead document accepted values
-- in this comment and validate in application code):
--   biography_intro, early_life, education, career, business, media,
--   narrative, personal, family, residences, legal, indictments, scandals,
--   awards, legacy, overview, timeline, quick_facts, quiz_hook,
--   election_year, term_in_office, post_tenure, transition, inauguration,
--   first_term, second_term, policy_area, foreign_policy, economic_policy,
--   style_rhetoric, at_a_glance, news_summary, gallery_caption
ALTER TABLE content_section ADD COLUMN target_year INTEGER;       -- year this essay is primarily about
ALTER TABLE content_section ADD COLUMN target_year_end INTEGER;   -- optional end year (for term ranges)
ALTER TABLE content_section ADD COLUMN display_order INTEGER DEFAULT 100; -- manual sort within section_type
ALTER TABLE content_section ADD COLUMN claim_count INTEGER DEFAULT 0;      -- denormalized count
ALTER TABLE content_section ADD COLUMN source_count INTEGER DEFAULT 0;     -- denormalized count
ALTER TABLE content_section ADD COLUMN word_count INTEGER DEFAULT 0;       -- body_markdown word count
ALTER TABLE content_section ADD COLUMN last_verified_at INTEGER;            -- when editorial_status was last re-validated
ALTER TABLE content_section ADD COLUMN last_verified_by TEXT;                -- editor id or 'auto' or 'llm'

-- ============================================================
-- 3. news_article — per-entity news headlines (GDELT + curated)
-- ============================================================
CREATE TABLE news_article (
  id TEXT PRIMARY KEY,
  entity_id TEXT NOT NULL REFERENCES entity(id),
  headline TEXT NOT NULL,
  url TEXT NOT NULL,
  source_id TEXT NOT NULL,                    -- e.g. src_ap, src_nyt, src_fox_news
  source_name TEXT NOT NULL,                  -- denormalized for display
  published_at INTEGER NOT NULL,              -- unix epoch seconds
  snippet TEXT,                               -- 1-2 sentence summary
  language TEXT DEFAULT 'en',
  image_url TEXT,                             -- optional thumbnail
  tone TEXT,                                  -- neutral, positive, negative
  topic_tags TEXT,                            -- JSON array
  gdelt_id TEXT,                              -- GDELT GKG record id if applicable
  fetched_at INTEGER NOT NULL DEFAULT (unixepoch()),
  last_verified_at INTEGER
);
CREATE INDEX idx_news_entity ON news_article(entity_id, published_at DESC);
CREATE INDEX idx_news_source ON news_article(source_id);

-- ============================================================
-- 4. quiz_question + quiz_session + quiz_attempt
-- ============================================================
CREATE TABLE quiz_question (
  id TEXT PRIMARY KEY,
  entity_id TEXT NOT NULL REFERENCES entity(id),
  section_id TEXT,                            -- optional: bound to a content_section
  question TEXT NOT NULL,
  options_json TEXT NOT NULL,                 -- JSON array of 4 strings
  correct_index INTEGER NOT NULL CHECK (correct_index BETWEEN 0 AND 3),
  explanation TEXT NOT NULL,                  -- why this answer is correct
  difficulty TEXT NOT NULL CHECK (difficulty IN ('easy', 'medium', 'hard')) DEFAULT 'medium',
  category TEXT,                              -- e.g. 'biography', 'policy', 'trivia'
  claim_ids TEXT,                             -- JSON array of claim ids backing the answer
  source_ids TEXT,                            -- JSON array of source_registry ids
  version INTEGER NOT NULL DEFAULT 1,
  status TEXT NOT NULL CHECK (status IN ('draft', 'approved', 'rejected', 'live')) DEFAULT 'live',
  created_at INTEGER NOT NULL DEFAULT (unixepoch()),
  updated_at INTEGER NOT NULL DEFAULT (unixepoch())
);
CREATE INDEX idx_qq_entity ON quiz_question(entity_id, difficulty);
CREATE INDEX idx_qq_status ON quiz_question(status);

CREATE TABLE quiz_session (
  id TEXT PRIMARY KEY,
  user_token TEXT NOT NULL,                   -- anon cookie or user id (no PII)
  entity_id TEXT NOT NULL REFERENCES entity(id),
  question_ids TEXT NOT NULL,                 -- JSON array of quiz_question ids in order presented
  started_at INTEGER NOT NULL DEFAULT (unixepoch()),
  completed_at INTEGER,
  score INTEGER,                              -- 0..N
  total INTEGER                               -- N
);
CREATE INDEX idx_qs_user ON quiz_session(user_token, started_at DESC);
CREATE INDEX idx_qs_entity ON quiz_session(entity_id);

CREATE TABLE quiz_attempt (
  id TEXT PRIMARY KEY,
  session_id TEXT NOT NULL REFERENCES quiz_session(id),
  question_id TEXT NOT NULL REFERENCES quiz_question(id),
  selected_index INTEGER NOT NULL CHECK (selected_index BETWEEN 0 AND 3),
  is_correct INTEGER NOT NULL CHECK (is_correct IN (0, 1)),
  answered_at INTEGER NOT NULL DEFAULT (unixepoch())
);
CREATE INDEX idx_qa_session ON quiz_attempt(session_id);
CREATE INDEX idx_qa_question ON quiz_attempt(question_id);

-- ============================================================
-- 5. entity_image — gallery images (Wikimedia → R2)
-- ============================================================
CREATE TABLE entity_image (
  id TEXT PRIMARY KEY,
  entity_id TEXT NOT NULL REFERENCES entity(id),
  source_id TEXT NOT NULL,                    -- e.g. src_wikimedia_commons
  wikimedia_file TEXT,                        -- original File: name on Commons
  url_original TEXT NOT NULL,                 -- Wikimedia direct URL
  url_r2 TEXT,                                -- R2 mirror URL (NULL if not yet downloaded)
  url_thumb_r2 TEXT,                          -- R2 thumbnail URL
  attribution TEXT NOT NULL,                  -- author + license
  license_code TEXT NOT NULL,                 -- CC-BY-4.0, CC0-1.0, PublicDomain, etc.
  license_url TEXT,
  width INTEGER,
  height INTEGER,
  caption TEXT,
  alt_text TEXT,
  is_primary INTEGER NOT NULL DEFAULT 0,      -- 0/1 — used as hero if true
  display_order INTEGER NOT NULL DEFAULT 100, -- lower = shown first
  fetched_at INTEGER NOT NULL DEFAULT (unixepoch()),
  last_verified_at INTEGER
);
CREATE INDEX idx_eimg_entity ON entity_image(entity_id, display_order);
CREATE INDEX idx_eimg_license ON entity_image(license_code);
CREATE UNIQUE INDEX uq_eimg_wikimedia ON entity_image(entity_id, wikimedia_file) WHERE wikimedia_file IS NOT NULL;
