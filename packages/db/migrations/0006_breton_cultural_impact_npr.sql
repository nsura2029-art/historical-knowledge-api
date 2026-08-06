-- ========================================
-- Migration 0006: André Breton, NPR source, 5 cultural-impact events, Breton relation
-- ========================================

-- 1. Add NPR as a tier-D source (national public broadcaster, 70M visits/mo)
INSERT OR REPLACE INTO source_registry
  (id, source_name, source_type, base_url, license_name, commercial_use_status, automated_access_status, source_quality_tier, status)
VALUES
  ('src_npr', 'NPR (National Public Radio)', 'news_publisher', 'https://www.npr.org', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY');

-- 1b. USPS as a tier-A source (US government body)
INSERT OR REPLACE INTO source_registry
  (id, source_name, source_type, base_url, license_name, commercial_use_status, automated_access_status, source_quality_tier, status)
VALUES
  ('src_usps', 'US Postal Service', 'government', 'https://about.usps.com', 'All Rights Reserved', 'restricted', 'manual_only', 'A', 'MANUAL_RESEARCH_ONLY');

-- 2. Create André Breton entity
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, popularity_score, popularity_rank, status, created_at, updated_at)
VALUES
  ('ent_andre-breton', 'person', 'andre-breton', 'André Breton', 72, 800, 'published', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05'));

-- 3. Create the person row for André Breton
INSERT OR IGNORE INTO person
  (id, short_description, known_for_summary, living_status, gender,
   is_historical_figure, is_cultural_icon, is_pioneer, is_living_legend)
VALUES
  ('ent_andre-breton',
   'French poet, essayist, and critic — the chief promoter of Surrealism, who arranged Frida Kahlo''s first exhibition in the United States',
   'French Surrealist writer and theorist who arranged Frida Kahlo''s first solo exhibition in the United States at the Julien Levy Gallery in New York in 1938',
   'deceased', 'male',
   1, 1, 1, 1);

-- 4. External identifier for Breton
INSERT OR IGNORE INTO external_identifier
  (id, entity_id, scheme, identifier, url, is_preferred, verified_at, source_id)
VALUES
  ('ei_breton_wikidata', 'ent_andre-breton', 'wikidata_qid', 'Q79008', 'https://www.wikidata.org/wiki/Q79008', 1, strftime('%s', '2026-08-05'), 'src_wikidata');

-- 5. Add the relation: Breton championed Frida (arranged her NYC exhibition)
INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, valid_from, valid_to, confidence, source_claim_id)
VALUES
  ('rel_breton_championed_frida', 'ent_andre-breton', 'ent_frida-kahlo', 'champion_of', 19381101, NULL, 0.95, NULL);

-- 6. Add the 5 missing cultural-impact events for Frida

-- 2001-06-21: First Hispanic woman on a US postage stamp
INSERT OR REPLACE INTO career_event
  (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator)
VALUES
  ('ev_frida-stamp-2001', 'ent_frida-kahlo', 'cultural_impact', '2001-06-21', NULL,
   'US Postal Service issues a 34-cent commemorative stamp honoring Frida Kahlo — the first Hispanic woman on a US stamp',
   'src_usps', 'https://about.usps.com/newsroom/national-releases/2001/0601ma.htm', 'Press release 2001-06-01');

-- 2007-06-13: 100th anniversary retrospective at Palacio de Bellas Artes
INSERT OR REPLACE INTO career_event
  (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator)
VALUES
  ('ev_frida-100th-2007', 'ent_frida-kahlo', 'cultural_impact', '2007-06-13', '2007-08-19',
   'First large-scale exhibition of Frida Kahlo''s work in Mexico at Palacio de Bellas Artes, on the 100th anniversary of her birth',
   'src_britannica', 'https://www.britannica.com/biography/Frida-Kahlo', 'Posthumous exhibitions');

-- 2018-04-20: Mexican court bars Frida Kahlo Barbie doll
INSERT OR REPLACE INTO career_event
  (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator)
VALUES
  ('ev_frida-barbie-2018', 'ent_frida-kahlo', 'cultural_impact', '2018-04-20', NULL,
   'Mexican court bars sales of the controversial Frida Kahlo Barbie doll (by Mattel), ruling that the image was used without authorization from the Frida Kahlo Corporation',
   'src_bbc-news', 'https://www.bbc.com/news/world-latin-america-43845678', 'Court ruling 2018-04');

-- 2021-11-16: Diego y yo sells for $34.9M (Latin American art auction record)
INSERT OR REPLACE INTO career_event
  (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator)
VALUES
  ('ev_frida-diego-y-yo-2021', 'ent_frida-kahlo', 'cultural_impact', '2021-11-16', NULL,
   '"Diego y yo" (1949 self-portrait) sells for $34.9 million at Sotheby''s, setting a record for Latin American artwork at auction',
   'src_npr', 'https://www.npr.org/2021/11/17/nx-s1-5622891/frida-kahlo-self-portrait-auction-record', 'Sotheby''s 2021');

-- 2025-11-20: El sueno (La cama) sells for $54.7M (record for female artist)
INSERT OR REPLACE INTO career_event
  (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator)
VALUES
  ('ev_frida-el-sueno-2025', 'ent_frida-kahlo', 'cultural_impact', '2025-11-20', NULL,
   '"El sueño (La cama)" (1940 self-portrait) sells at Sotheby''s in New York City for $54.7 million, setting a new record for a work by a female artist',
   'src_npr', 'https://www.npr.org/2025/11/19/nx-s1-5584087/frida-kahlo-auction-record-sothebys-el-sueno-la-cama', 'Sotheby''s 2025');

-- 7. Add ingestion_run
INSERT OR REPLACE INTO ingestion_run
  (id, source_id, connector_version, started_at, completed_at, status, records_fetched, records_imported, records_skipped, records_failed, idempotency_key, triggered_by)
VALUES
  ('run_0006_breton_cultural', 'src_npr', '1.0.0', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05'), 'succeeded', 6, 6, 0, 0, 'enrichment_0006_breton_cultural_impact_v1', 'manual');
