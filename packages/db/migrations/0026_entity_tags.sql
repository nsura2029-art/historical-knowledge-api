-- ========================================
-- Migration 0026: Entity tags (profession/dimension index)
-- Per the user's request for "top 500 by profession" / "all dimensions"
-- indexing, this migration adds a tag dimension table.
--
-- Schema:
--   tag         — canonical profession/dimension name (e.g. "politician", "athlete")
--   entity_tag  — many-to-many between entity and tag
-- ========================================

CREATE TABLE tag (
  id TEXT PRIMARY KEY,                    -- e.g. "tag_politician", "tag_athlete"
  label TEXT NOT NULL,                    -- e.g. "Politician", "Athlete"
  category TEXT NOT NULL,                 -- e.g. "profession", "dimension", "era"
  description TEXT,
  display_order INTEGER NOT NULL DEFAULT 100,
  icon TEXT,                              -- icon name from icon set (lucide, etc.)
  created_at INTEGER NOT NULL DEFAULT (unixepoch())
);
CREATE INDEX idx_tag_category ON tag(category, display_order);

CREATE TABLE entity_tag (
  id TEXT PRIMARY KEY,
  entity_id TEXT NOT NULL REFERENCES entity(id),
  tag_id TEXT NOT NULL REFERENCES tag(id),
  source TEXT NOT NULL DEFAULT 'curated',  -- curated, wikipedia, llm
  confidence REAL NOT NULL DEFAULT 1.0,
  created_at INTEGER NOT NULL DEFAULT (unixepoch()),
  UNIQUE(entity_id, tag_id)
);
CREATE INDEX idx_et_entity ON entity_tag(entity_id);
CREATE INDEX idx_et_tag ON entity_tag(tag_id, confidence DESC);
