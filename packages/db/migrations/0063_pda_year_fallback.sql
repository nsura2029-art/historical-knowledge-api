-- ========================================
-- Migration 0063: Populate person_derived_attribute using event_year as fallback
-- For persons with YEAR-precision birth/death events but no DAY event
-- Generated: 2026-08-09
-- ========================================

-- For persons without birth_year, use MIN(event_year) from birth events
INSERT OR IGNORE INTO person_derived_attribute (id, person_id, attribute_type, attribute_value, rule_version, computed_at, status, source_id)
SELECT 
  'pda_' || SUBSTR(p.id, 5) || '_birth_year',
  p.id,
  'birth_year',
  MIN(ee.event_year),
  'v1_wiki_rule_v3',
  unixepoch(),
  'current',
  'src_en_wikipedia'
FROM person p
JOIN entity_event ee ON ee.entity_id = p.id AND ee.event_type = 'birth' AND ee.event_year IS NOT NULL
WHERE NOT EXISTS (SELECT 1 FROM person_derived_attribute WHERE person_id = p.id AND attribute_type = 'birth_year')
GROUP BY p.id
HAVING MIN(ee.event_year) IS NOT NULL;

-- For persons without death_year, use MAX(event_year) from death events
INSERT OR IGNORE INTO person_derived_attribute (id, person_id, attribute_type, attribute_value, rule_version, computed_at, status, source_id)
SELECT 
  'pda_' || SUBSTR(p.id, 5) || '_death_year',
  p.id,
  'death_year',
  MAX(ee.event_year),
  'v1_wiki_rule_v3',
  unixepoch(),
  'current',
  'src_en_wikipedia'
FROM person p
JOIN entity_event ee ON ee.entity_id = p.id AND ee.event_type = 'death' AND ee.event_year IS NOT NULL
WHERE NOT EXISTS (SELECT 1 FROM person_derived_attribute WHERE person_id = p.id AND attribute_type = 'death_year')
GROUP BY p.id
HAVING MAX(ee.event_year) IS NOT NULL;
