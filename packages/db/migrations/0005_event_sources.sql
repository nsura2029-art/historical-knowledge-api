-- ========================================
-- Migration 0005: Add source attribution to career_event + fix day precision in person birth/death
-- ========================================

-- 1. Add direct source_id column to career_event (denormalized for performance)
ALTER TABLE career_event ADD COLUMN source_id TEXT REFERENCES source_registry(id);
ALTER TABLE career_event ADD COLUMN source_locator TEXT;  -- e.g. "Q5588#P569" for the Wikidata property
ALTER TABLE career_event ADD COLUMN source_url TEXT;      -- specific URL (denormalized from source_record.external_url)
CREATE INDEX IF NOT EXISTS idx_career_event_source ON career_event(source_id);

-- 2. Backfill birth event sources for all 20 people
-- Default: Wikidata (where birth date is canonical) + a secondary source (Wikipedia/Britannica)
UPDATE career_event SET
  source_id = 'src_wikidata',
  source_locator = 'P569',
  source_url = 'https://www.wikidata.org/wiki/' || (
    SELECT ext.identifier
    FROM external_identifier ext
    WHERE ext.entity_id = career_event.person_id
      AND ext.scheme = 'wikidata_qid'
    LIMIT 1
  )
WHERE event_type = 'birth' AND source_id IS NULL;

-- For people without a QID, fall back to Wikipedia URL
UPDATE career_event SET
  source_id = 'src_wikipedia',
  source_url = 'https://en.wikipedia.org/wiki/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
    (SELECT canonical_name FROM entity WHERE id = career_event.person_id),
    ' ', '_'),
    'á','a'),'é','e'),'í','i'),'ó','o'),'ú','u'),'ñ','n'),'Á','A')
WHERE event_type = 'birth' AND source_url IS NULL;

-- 3. Backfill death event sources
UPDATE career_event SET
  source_id = 'src_wikidata',
  source_locator = 'P570',
  source_url = 'https://www.wikidata.org/wiki/' || (
    SELECT ext.identifier
    FROM external_identifier ext
    WHERE ext.entity_id = career_event.person_id
      AND ext.scheme = 'wikidata_qid'
    LIMIT 1
  )
WHERE event_type = 'death' AND source_id IS NULL;

-- Fallback for people without QID
UPDATE career_event SET
  source_id = 'src_wikipedia',
  source_url = 'https://en.wikipedia.org/wiki/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
    (SELECT canonical_name FROM entity WHERE id = career_event.person_id),
    ' ', '_'),
    'á','a'),'é','e'),'í','i'),'ó','o'),'ú','u'),'ñ','n'),'Á','A')
WHERE event_type = 'death' AND source_url IS NULL;

-- 4. Backfill the FRIDA-specific events with their known sources
UPDATE career_event SET source_id = 'src_britannica', source_url = 'https://www.britannica.com/biography/Frida-Kahlo', source_locator = 'Early life and accident'
WHERE person_id = 'ent_frida-kahlo' AND event_type = 'education' AND id = 'ev_frida-edu-1';
UPDATE career_event SET source_id = 'src_britannica', source_url = 'https://www.britannica.com/biography/Frida-Kahlo', source_locator = 'Bus accident 1925'
WHERE id = 'ev_frida-accident-1';
UPDATE career_event SET source_id = 'src_frida-kahlo-foundation', source_url = 'https://frida-kahlo-foundation.org/biography.html', source_locator = 'Marriages'
WHERE id IN ('ev_frida-marriage-1', 'ev_frida-marriage-2');
UPDATE career_event SET source_id = 'src_wikipedia', source_url = 'https://en.wikipedia.org/wiki/Frida_Kahlo', source_locator = 'Career section'
WHERE id IN ('ev_frida-exhibition-1', 'ev_frida-exhibition-5');
UPDATE career_event SET source_id = 'src_britannica', source_url = 'https://www.britannica.com/biography/Frida-Kahlo', source_locator = 'International exhibitions'
WHERE id IN ('ev_frida-exhibition-2', 'ev_frida-exhibition-3', 'ev_frida-exhibition-4');
UPDATE career_event SET source_id = 'src_the-guardian', source_url = 'https://www.theguardian.com/artanddesign/2018/may/11/frida-kahlo-victoria-albert-museum-london', source_locator = 'V&A exhibition'
WHERE id = 'ev_frida-exhibition-6';
UPDATE career_event SET source_id = 'src_reuters', source_url = 'https://www.reuters.com/article/us-california-halloffame/frida-kahlo-idUSBRE8B716V20121208', source_locator = 'California Hall of Fame 2011'
WHERE id = 'ev_frida-award-1';

-- 5. Backfill the RAHMAN-specific events with their known sources
UPDATE career_event SET source_id = 'src_wikipedia', source_url = 'https://en.wikipedia.org/wiki/A._R._Rahman', source_locator = 'Personal life'
WHERE id = 'ev_rahman-religion-1';
UPDATE career_event SET source_id = 'src_wikipedia', source_url = 'https://en.wikipedia.org/wiki/Roja_(film)', source_locator = 'Film debut 1992'
WHERE id = 'ev_rahman-debut-1';
UPDATE career_event SET source_id = 'src_wikidata', source_url = 'https://www.wikidata.org/wiki/Q20807', source_locator = 'spouse P26'
WHERE id = 'ev_rahman-marriage-1';
UPDATE career_event SET source_id = 'src_wikidata', source_url = 'https://www.wikidata.org/wiki/Q20807', source_locator = 'child P40'
WHERE id = 'ev_rahman-child-1';
UPDATE career_event SET source_id = 'src_wikipedia', source_url = 'https://en.wikipedia.org/wiki/Bombay_(1995_film)', source_locator = 'Bombay film'
WHERE id = 'ev_rahman-bombay-1';
UPDATE career_event SET source_id = 'src_bbc-news', source_url = 'https://www.bbc.com/news/entertainment-arts-12284518', source_locator = 'Slumdog Millionaire'
WHERE id = 'ev_rahman-slumdog-1';
UPDATE career_event SET source_id = 'src_oscars_academy', source_url = 'https://www.oscars.org/oscars/ceremonies/2009', source_locator = '81st Academy Awards'
WHERE id = 'ev_rahman-oscars-1';
UPDATE career_event SET source_id = 'src_padma_awards', source_url = 'https://padmaawards.gov.in/Person/2010/14', source_locator = 'Padma Bhushan 2010'
WHERE id = 'ev_rahman-padma-1';
UPDATE career_event SET source_id = 'src_grammy', source_url = 'https://www.grammy.com/artists/ar-rahman/16712', source_locator = '52nd Grammy Awards'
WHERE id = 'ev_rahman-grammys-1';
UPDATE career_event SET source_id = 'src_hollywood_reporter', source_url = 'https://www.hollywoodreporter.com/news/general-news/nfl-opens-2017-season-1033057/', source_locator = 'NFL Kickoff 2017'
WHERE id = 'ev_rahman-nfl-1';

-- 6. Add a person_derived_attribute for birth_date with day precision
-- (so the API can return day precision for Frida's birth)
INSERT OR REPLACE INTO person_derived_attribute
  (id, person_id, attribute_type, attribute_value, rule_version, computed_at, valid_until, input_claim_ids)
SELECT
  'pda_birth_date_' || person_id,
  person_id,
  'birth_date',
  start_date,
  'gregorian_date_v1',
  strftime('%s', '2026-08-05'),
  NULL,
  'career_event:' || id
FROM career_event
WHERE event_type = 'birth' AND start_date IS NOT NULL;

-- Same for death_date
INSERT OR REPLACE INTO person_derived_attribute
  (id, person_id, attribute_type, attribute_value, rule_version, computed_at, valid_until, input_claim_ids)
SELECT
  'pda_death_date_' || person_id,
  person_id,
  'death_date',
  start_date,
  'gregorian_date_v1',
  strftime('%s', '2026-08-05'),
  NULL,
  'career_event:' || id
FROM career_event
WHERE event_type = 'death' AND start_date IS NOT NULL;

-- 7. Add ingestion_run for this enrichment
INSERT OR REPLACE INTO ingestion_run (id, source_id, connector_version, started_at, completed_at, status, records_fetched, records_imported, records_skipped, records_failed, idempotency_key, triggered_by) VALUES
  ('run_0005_event_sources', 'src_wikidata', '1.0.0', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05'), 'succeeded', 47, 47, 0, 0, 'enrichment_0005_event_sources_v1', 'manual');
