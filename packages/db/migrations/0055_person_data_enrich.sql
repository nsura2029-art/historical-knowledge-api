-- ========================================
-- Migration 0055: Person data enrichment
-- For all 1054 persons, populate:
--   1. person.living_status = 'deceased' if they have a death event in entity_event
--   2. person.short_description = entity.summary (first 500 chars)
--   3. person.known_for_summary = entity.summary (first 500 chars)
--   4. person_derived_attribute: birth_year, death_year, birth_date, death_date
-- Generated: 2026-08-09
-- ========================================

-- Update person.living_status based on death events
UPDATE person SET living_status = 'deceased' WHERE id IN (
  SELECT DISTINCT entity_id FROM entity_event WHERE event_type='death' AND entity_id IN (SELECT id FROM person)
) AND living_status != 'deceased';

-- Update person.short_description from entity.summary
UPDATE person SET short_description = (
  SELECT summary FROM entity WHERE entity.id = person.id
) WHERE short_description IS NULL OR short_description = '';

-- Update person.known_for_summary from entity.summary
UPDATE person SET known_for_summary = (
  SELECT summary FROM entity WHERE entity.id = person.id
) WHERE known_for_summary IS NULL OR known_for_summary = '';

-- Insert person_derived_attribute: birth_year
INSERT OR IGNORE INTO person_derived_attribute (id, person_id, attribute_type, attribute_value, rule_version, computed_at, status, source_id)
SELECT 
  'pda_' || SUBSTR(p.id, 5) || '_birth_year',
  p.id,
  'birth_year',
  CAST(strftime('%Y', MIN(ee.event_date)) AS INTEGER),
  'v1_wiki_rule',
  unixepoch(),
  'current',
  'src_en_wikipedia'
FROM person p
JOIN entity_event ee ON ee.entity_id = p.id AND ee.event_type = 'birth' AND ee.event_date IS NOT NULL
GROUP BY p.id
HAVING MIN(ee.event_date) IS NOT NULL;

-- Insert person_derived_attribute: death_year
INSERT OR IGNORE INTO person_derived_attribute (id, person_id, attribute_type, attribute_value, rule_version, computed_at, status, source_id)
SELECT 
  'pda_' || SUBSTR(p.id, 5) || '_death_year',
  p.id,
  'death_year',
  CAST(strftime('%Y', MAX(ee.event_date)) AS INTEGER),
  'v1_wiki_rule',
  unixepoch(),
  'current',
  'src_en_wikipedia'
FROM person p
JOIN entity_event ee ON ee.entity_id = p.id AND ee.event_type = 'death' AND ee.event_date IS NOT NULL
GROUP BY p.id
HAVING MAX(ee.event_date) IS NOT NULL;

-- Insert person_derived_attribute: birth_date
INSERT OR IGNORE INTO person_derived_attribute (id, person_id, attribute_type, attribute_value, rule_version, computed_at, status, source_id)
SELECT 
  'pda_' || SUBSTR(p.id, 5) || '_birth_date',
  p.id,
  'birth_date',
  MIN(ee.event_date),
  'v1_wiki_rule',
  unixepoch(),
  'current',
  'src_en_wikipedia'
FROM person p
JOIN entity_event ee ON ee.entity_id = p.id AND ee.event_type = 'birth' AND ee.event_date IS NOT NULL
GROUP BY p.id
HAVING MIN(ee.event_date) IS NOT NULL;

-- Insert person_derived_attribute: death_date
INSERT OR IGNORE INTO person_derived_attribute (id, person_id, attribute_type, attribute_value, rule_version, computed_at, status, source_id)
SELECT 
  'pda_' || SUBSTR(p.id, 5) || '_death_date',
  p.id,
  'death_date',
  MAX(ee.event_date),
  'v1_wiki_rule',
  unixepoch(),
  'current',
  'src_en_wikipedia'
FROM person p
JOIN entity_event ee ON ee.entity_id = p.id AND ee.event_type = 'death' AND ee.event_date IS NOT NULL
GROUP BY p.id
HAVING MAX(ee.event_date) IS NOT NULL;
