-- ========================================
-- Migration 0045: KP-005 — merge 5 known duplicate entities
-- Generated: 2026-08-09
-- Source: docs/quality-reports/SLUG-COLLISION-AUDIT.md
-- ========================================
-- Merges (5 total):
--   1. Beyonce × 3 → ent_beyonc (15 events absorbed)
--   2. Andrew Mellon × 2 → ent_andrew-w-mellon (50 events absorbed)
--   3. United States × 2 → ent_usa (0 events absorbed; ent_us had none)
-- Bonnie & Clyde: deferred to user (see spec §Bonnie & Clyde)
-- ========================================

-- 1a. Insert redirect rows for Beyonce
INSERT INTO slug_redirect (id, entity_id, old_slug, new_slug, redirect_type, reason, effective_at, created_at)
VALUES
  ('redr_beyonc-knowles', 'ent_beyonc', 'beyonc-knowles', 'beyonc', 'rewrite',
   'KP-005 merge: same person (Beyoncé Giselle Knowles-Carter); absorbed entity ent_beyonc-knowles', unixepoch(), unixepoch()),
  ('redr_beyonc-knowles-carter', 'ent_beyonc', 'beyonc-knowles-carter', 'beyonc', 'rewrite',
   'KP-005 merge: same person (Beyoncé Giselle Knowles-Carter); absorbed entity ent_beyonc-knowles-carter', unixepoch(), unixepoch());

-- 1b. Re-point Beyonce events to canonical
UPDATE entity_event SET entity_id = 'ent_beyonc' WHERE entity_id IN ('ent_beyonc-knowles', 'ent_beyonc-knowles-carter');

-- 1c. Re-point Beyonce-related person_citizenship and entity_relation rows (defensive)
UPDATE person_citizenship SET person_id = 'ent_beyonc' WHERE person_id IN ('ent_beyonc-knowles', 'ent_beyonc-knowles-carter');
UPDATE person_citizenship SET country_id = 'ent_beyonc' WHERE country_id IN ('ent_beyonc-knowles', 'ent_beyonc-knowles-carter');
UPDATE entity_relation SET entity_id_1 = 'ent_beyonc' WHERE entity_id_1 IN ('ent_beyonc-knowles', 'ent_beyonc-knowles-carter');
UPDATE entity_relation SET entity_id_2 = 'ent_beyonc' WHERE entity_id_2 IN ('ent_beyonc-knowles', 'ent_beyonc-knowles-carter');

-- 1d. Add entity_name aliases so search/UI can still find them
INSERT OR IGNORE INTO entity_name (id, entity_id, name_value, name_type, language_code, created_at)
VALUES
  ('enm_beyonc_knowles', 'ent_beyonc', 'Beyoncé Knowles', 'married', 'en', unixepoch()),
  ('enm_beyonc_knowles_carter', 'ent_beyonc', 'Beyoncé Knowles-Carter', 'married', 'en', unixepoch());

-- 1e. Delete absorbed child rows (person, organization) BEFORE entity
DELETE FROM person WHERE id IN ('ent_beyonc-knowles', 'ent_beyonc-knowles-carter');
DELETE FROM entity WHERE id IN ('ent_beyonc-knowles', 'ent_beyonc-knowles-carter');

-- 2a. Insert redirect for Andrew Mellon
INSERT INTO slug_redirect (id, entity_id, old_slug, new_slug, redirect_type, reason, effective_at, created_at)
VALUES
  ('redr_andrew-mellon', 'ent_andrew-w-mellon', 'andrew-mellon', 'andrew-w-mellon', 'rewrite',
   'KP-005 merge: same person (Andrew W. Mellon); canonical uses full name; absorbed entity ent_andrew-mellon', unixepoch(), unixepoch());

-- 2b. Re-point Andrew Mellon events
UPDATE entity_event SET entity_id = 'ent_andrew-w-mellon' WHERE entity_id = 'ent_andrew-mellon';
UPDATE person_citizenship SET person_id = 'ent_andrew-w-mellon' WHERE person_id = 'ent_andrew-mellon';
UPDATE person_citizenship SET country_id = 'ent_andrew-w-mellon' WHERE country_id = 'ent_andrew-mellon';
UPDATE entity_relation SET entity_id_1 = 'ent_andrew-w-mellon' WHERE entity_id_1 = 'ent_andrew-mellon';
UPDATE entity_relation SET entity_id_2 = 'ent_andrew-w-mellon' WHERE entity_id_2 = 'ent_andrew-mellon';

-- 2c. Add alias
INSERT OR IGNORE INTO entity_name (id, entity_id, name_value, name_type, language_code, created_at)
VALUES
  ('enm_andrew_mellon', 'ent_andrew-w-mellon', 'Andrew Mellon', 'common_misspelling', 'en', unixepoch());

-- 2d. Delete absorbed child + entity rows
DELETE FROM person WHERE id = 'ent_andrew-mellon';
DELETE FROM entity WHERE id = 'ent_andrew-mellon';

-- 3a. Insert redirect for United States
INSERT INTO slug_redirect (id, entity_id, old_slug, new_slug, redirect_type, reason, effective_at, created_at)
VALUES
  ('redr_us-country', 'ent_usa', 'us-country', 'united-states', 'rewrite',
   'KP-005 merge: same country; ent_usa has 47 events vs ent_us has 0; absorbed entity ent_us', unixepoch(), unixepoch());

-- 3b. Re-point ent_us references in child tables (defensive)
UPDATE person_citizenship SET country_id = 'ent_usa' WHERE country_id = 'ent_us';
UPDATE person_place_relation SET place_id = 'ent_usa' WHERE place_id = 'ent_us';
UPDATE entity_relation SET entity_id_1 = 'ent_usa' WHERE entity_id_1 = 'ent_us';
UPDATE entity_relation SET entity_id_2 = 'ent_usa' WHERE entity_id_2 = 'ent_us';
UPDATE otd_event SET place_id = 'ent_usa' WHERE place_id = 'ent_us';
UPDATE otd_event SET country_id = 'ent_usa' WHERE country_id = 'ent_us';
UPDATE career_event SET organization_id = 'ent_usa' WHERE organization_id = 'ent_us';
UPDATE career_event SET place_id = 'ent_usa' WHERE place_id = 'ent_us';

-- 3c. Add aliases (US, USA, United States of America)
INSERT OR IGNORE INTO entity_name (id, entity_id, name_value, name_type, language_code, created_at)
VALUES
  ('enm_us', 'ent_usa', 'US', 'common_misspelling', 'en', unixepoch()),
  ('enm_usa_alias', 'ent_usa', 'USA', 'common_misspelling', 'en', unixepoch()),
  ('enm_us_full', 'ent_usa', 'United States of America', 'common_misspelling', 'en', unixepoch()),
  ('enm_us_canonical', 'ent_usa', 'United States', 'canonical', 'en', unixepoch());

-- 3d. Delete absorbed child + entity rows (ent_us had no events, no UPDATE needed for entity_event)
DELETE FROM place WHERE id = 'ent_us';
DELETE FROM entity WHERE id = 'ent_us';
