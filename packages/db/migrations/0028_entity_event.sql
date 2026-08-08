-- ========================================
-- Migration 0028: entity_event table
-- Stores date-anchored events extracted from each person's content_sections.
-- One row per notable event with a year/date.
-- ========================================

CREATE TABLE IF NOT EXISTS entity_event (
  id              TEXT PRIMARY KEY,
  entity_id       TEXT NOT NULL REFERENCES entity(id) ON DELETE CASCADE,
  event_date      TEXT,        -- 'YYYY-MM-DD' if day known, NULL if year-only
  event_year      INTEGER,     -- YYYY (always present)
  event_type      TEXT NOT NULL CHECK (event_type IN (
    'personal_life', 'career', 'award', 'publication', 'public_appearance',
    'legal', 'political', 'athletic', 'scientific', 'creative',
    'travel', 'education', 'death', 'birth', 'founding', 'controversy'
  )),
  category        TEXT NOT NULL DEFAULT 'life',  -- broader grouping (life, work, public, etc.)
  title           TEXT NOT NULL,                 -- short event title (LLM-generated if available, else auto)
  body            TEXT NOT NULL,                 -- event description (1-3 sentences)
  source_id       TEXT REFERENCES source_registry(id),
  source_section  TEXT,                          -- which content_section the event came from
  confidence      REAL DEFAULT 0.5,              -- 0..1, higher = more confident
  display_order   INTEGER DEFAULT 0,
  lang            TEXT DEFAULT 'en',
  fetched_at      INTEGER NOT NULL DEFAULT (unixepoch()),
  last_verified_at INTEGER NOT NULL DEFAULT (unixepoch()),
  created_at      INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX IF NOT EXISTS idx_entity_event_entity ON entity_event(entity_id);
CREATE INDEX IF NOT EXISTS idx_entity_event_year ON entity_event(event_year);
CREATE INDEX IF NOT EXISTS idx_entity_event_type ON entity_event(event_type);
CREATE INDEX IF NOT EXISTS idx_entity_event_date ON entity_event(event_date);
CREATE INDEX IF NOT EXISTS idx_entity_event_category ON entity_event(category);
