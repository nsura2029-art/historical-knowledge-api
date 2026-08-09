-- ========================================
-- Migration 0046: Bonnie & Clyde pair relationship
-- Per user 2026-08-09 (Option A): keep separate + add pair link
-- ========================================
-- Bonnie Parker and Clyde Barrow are a famous pair (1930s American outlaws),
-- not duplicate entities. They're kept as 2 separate person entities, with
-- a spouse_of relationship linking them so search for "Bonnie and Clyde"
-- can find both via the pair edge.
-- ========================================

-- Add 2 entity_relation rows (bidirectional so both can find the other)
INSERT OR IGNORE INTO entity_relation (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id)
VALUES
  ('rel_bonnie_clyde_1', 'ent_bonnie-parker', 'ent_clyde-barrow', 'spouse_of', 0.9, NULL),
  ('rel_bonnie_clyde_2', 'ent_clyde-barrow', 'ent_bonnie-parker', 'spouse_of', 0.9, NULL);

-- Add entity_name aliases so "Bonnie and Clyde" search returns both
INSERT OR IGNORE INTO entity_name (id, entity_id, name_value, name_type, language_code, created_at)
VALUES
  ('enm_bonnie_and_clyde_bonnie', 'ent_bonnie-parker', 'Bonnie and Clyde', 'common_misspelling', 'en', unixepoch()),
  ('enm_bonnie_and_clyde_clyde', 'ent_clyde-barrow', 'Bonnie and Clyde', 'common_misspelling', 'en', unixepoch());
