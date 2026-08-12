-- ========================================
-- Migration 0081: Add missing states (Indiana + Washington)
-- Generated: 2026-08-12
-- Strategy: Rename small PA cities to disambiguated slugs, then add states
-- Background: 
--   - plc_indiana (slug=indiana) is a small city in Pennsylvania (pop ~13K)
--   - plc_washington (slug=washington) is a small city in Pennsylvania (pop ~13K)
--   - These conflict with state slugs; neither state existed in the DB
-- Coverage: +2 states (Indiana, Washington) — bringing US state coverage to 50/50
-- ========================================

-- 1. Rename the conflicting city slugs
UPDATE entity SET slug = 'indiana-pennsylvania' WHERE id = 'plc_indiana';
UPDATE entity SET slug = 'washington-pennsylvania' WHERE id = 'plc_washington';

-- 2. Add slug_redirect entries for backwards compatibility
INSERT OR IGNORE INTO slug_redirect (id, entity_id, old_slug, new_slug, redirect_type, reason, effective_at, created_at)
VALUES
  ('redir_plc_indiana', 'plc_indiana', 'indiana', 'indiana-pennsylvania', 'rename', 'Disambiguate from Indiana state (plc_indiana-state, see migration 0081)', unixepoch(), unixepoch()),
  ('redir_plc_washington', 'plc_washington', 'washington', 'washington-pennsylvania', 'rename', 'Disambiguate from Washington state (plc_washington-state, see migration 0081)', unixepoch(), unixepoch());

-- 3. Add new state entities
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, language_default, popularity_score, popularity_rank, created_at, updated_at)
VALUES
  ('plc_indiana-state', 'place', 'indiana-state', 'Indiana', 'published', 'en', 85, 22, unixepoch(), unixepoch()),
  ('plc_washington-state', 'place', 'washington-state', 'Washington', 'published', 'en', 85, 23, unixepoch(), unixepoch());

-- 4. Add corresponding place rows
INSERT OR IGNORE INTO place (id, place_type, latitude, longitude, country_code, wikidata_qid, founding_year)
VALUES
  ('plc_indiana-state', 'state', 40.2672, -86.1349, 'US', 'Q1415', 1816),
  ('plc_washington-state', 'state', 47.7511, -120.7401, 'US', 'Q1223', 1889);
