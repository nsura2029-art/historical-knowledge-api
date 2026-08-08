-- ========================================
-- Migration 0016b: Widen content_section.section_type CHECK constraint
-- The original migration 0012 created a CHECK constraint allowing only 9
-- section_type values. Per the KP-017 content expansion, we need 20+ types
-- (election_year, first_term, second_term, indictments, style_rhetoric,
-- foreign_policy, etc.) for the Britannica-style 6-vertical platform.
-- SQLite CHECK constraints cannot be altered; we use the standard
-- "rename old → create new → copy → drop old → rename new" rebuild pattern.
-- ========================================

PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

-- 1. Capture existing data
CREATE TABLE _content_section_backup AS
  SELECT id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
         reading_level, language, author_type, generator_version, editorial_status,
         version, created_at, updated_at, target_year, target_year_end, display_order,
         claim_count, source_count, word_count, last_verified_at, last_verified_by
  FROM content_section;

-- 2. Drop the original (with CHECK constraint)
DROP TABLE content_section;

-- 3. Recreate with wider section_type enum
CREATE TABLE content_section (
  id TEXT PRIMARY KEY,
  entity_id TEXT NOT NULL REFERENCES entity(id),
  section_type TEXT NOT NULL DEFAULT 'narrative'
    CHECK (section_type IN (
      'narrative','biography_intro','early_life','career','legacy','overview',
      'quick_facts','timeline','quiz_hook',
      -- KP-017 expanded types
      'election_year','first_term','second_term','indictments',
      'transition','inauguration','policy_area','foreign_policy','economic_policy',
      'style_rhetoric','at_a_glance','news_summary','gallery_caption',
      'business','media','family','residences','legal','scandals','awards'
    )),
  heading TEXT,
  body_markdown TEXT NOT NULL,
  claim_ids TEXT,
  source_ids TEXT,
  reading_level TEXT NOT NULL DEFAULT 'general'
    CHECK (reading_level IN ('child','general','advanced','expert')),
  language TEXT NOT NULL DEFAULT 'en',
  author_type TEXT NOT NULL DEFAULT 'human'
    CHECK (author_type IN ('human','assisted','generated')),
  generator_version TEXT,
  editorial_status TEXT NOT NULL DEFAULT 'pending'
    CHECK (editorial_status IN ('pending','approved','rejected','auto_approved')),
  version INTEGER NOT NULL DEFAULT 1,
  created_at INTEGER NOT NULL DEFAULT (unixepoch()),
  updated_at INTEGER NOT NULL DEFAULT (unixepoch()),
  target_year INTEGER,
  target_year_end INTEGER,
  display_order INTEGER DEFAULT 100,
  claim_count INTEGER DEFAULT 0,
  source_count INTEGER DEFAULT 0,
  word_count INTEGER DEFAULT 0,
  last_verified_at INTEGER,
  last_verified_by TEXT
);

-- 4. Restore data
INSERT INTO content_section
  SELECT * FROM _content_section_backup;

-- 5. Recreate indexes (original migration didn't add any, so this is a no-op)
-- CREATE INDEX idx_cs_entity ON content_section(entity_id, display_order);

-- 6. Drop backup
DROP TABLE _content_section_backup;

COMMIT;
PRAGMA foreign_keys=ON;
