-- ========================================
-- Migration 0056: Add US citizenship for all 1054 persons who don't have one
-- Generated: 2026-08-09
-- ========================================

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
SELECT 
  'pcs_' || SUBSTR(p.id, 5) || '_us',
  p.id,
  'ent_usa',
  1,
  NULL,
  unixepoch()
FROM person p
WHERE NOT EXISTS (
  SELECT 1 FROM person_citizenship pcs WHERE pcs.person_id = p.id AND pcs.country_id = 'ent_usa'
);
