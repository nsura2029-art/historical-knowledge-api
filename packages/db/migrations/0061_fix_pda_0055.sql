-- ========================================
-- Migration 0061: Fix person_derived_attribute from 0055 migration
-- Delete wrong entries (use slug format IDs) and re-create with DAY-precision only
-- Generated: 2026-08-09
-- ========================================

-- Delete wrong entries from 0055
DELETE FROM person_derived_attribute 
WHERE id LIKE 'pda_%_birth_year' OR id LIKE 'pda_%_death_year' 
   OR id LIKE 'pda_%_birth_date' OR id LIKE 'pda_%_death_date'
   AND rule_version = 'v1_wiki_rule';

-- Re-insert using DAY-precision events only
INSERT OR IGNORE INTO person_derived_attribute (id, person_id, attribute_type, attribute_value, rule_version, computed_at, status, source_id)
SELECT 
  'pda_' || SUBSTR(p.id, 5) || '_birth_year',
  p.id,
  'birth_year',
  CAST(strftime('%Y', MIN(ee.event_date)) AS INTEGER),
  'v1_wiki_rule_v2',
  unixepoch(),
  'current',
  'src_en_wikipedia'
FROM person p
JOIN entity_event ee ON ee.entity_id = p.id AND ee.event_type = 'birth' AND ee.date_precision = 'DAY'
GROUP BY p.id;

INSERT OR IGNORE INTO person_derived_attribute (id, person_id, attribute_type, attribute_value, rule_version, computed_at, status, source_id)
SELECT 
  'pda_' || SUBSTR(p.id, 5) || '_death_year',
  p.id,
  'death_year',
  CAST(strftime('%Y', MAX(ee.event_date)) AS INTEGER),
  'v1_wiki_rule_v2',
  unixepoch(),
  'current',
  'src_en_wikipedia'
FROM person p
JOIN entity_event ee ON ee.entity_id = p.id AND ee.event_type = 'death' AND ee.date_precision = 'DAY'
GROUP BY p.id;

INSERT OR IGNORE INTO person_derived_attribute (id, person_id, attribute_type, attribute_value, rule_version, computed_at, status, source_id)
SELECT 
  'pda_' || SUBSTR(p.id, 5) || '_birth_date',
  p.id,
  'birth_date',
  MIN(ee.event_date),
  'v1_wiki_rule_v2',
  unixepoch(),
  'current',
  'src_en_wikipedia'
FROM person p
JOIN entity_event ee ON ee.entity_id = p.id AND ee.event_type = 'birth' AND ee.date_precision = 'DAY'
GROUP BY p.id;

INSERT OR IGNORE INTO person_derived_attribute (id, person_id, attribute_type, attribute_value, rule_version, computed_at, status, source_id)
SELECT 
  'pda_' || SUBSTR(p.id, 5) || '_death_date',
  p.id,
  'death_date',
  MAX(ee.event_date),
  'v1_wiki_rule_v2',
  unixepoch(),
  'current',
  'src_en_wikipedia'
FROM person p
JOIN entity_event ee ON ee.entity_id = p.id AND ee.event_type = 'death' AND ee.date_precision = 'DAY'
GROUP BY p.id;
