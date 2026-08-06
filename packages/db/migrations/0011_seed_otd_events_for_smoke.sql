-- ========================================
-- Migration 0011: Seed otd_event rows for smoke testing
-- 6 events across categories and years, on 08-05 (Aug 5)
-- This is test data — Phase B will replace with curated events
-- ========================================
INSERT OR REPLACE INTO otd_event
  (id, start_date, date_precision, mm_dd, year, title, description, category, place_name, country_code, source_id, source_url, source_locator, status, editorial_status, featured)
VALUES
  -- Aug 5, 1858: First transatlantic telegraph cable
  ('ev_otd_001', '1858-08-05', 'day', '08-05', 1858,
   'First transatlantic telegraph cable completed',
   'The first transatlantic telegraph cable was completed between Ireland and Newfoundland, reducing communication time between North America and Europe from weeks to minutes. The cable failed within weeks but was a landmark in global communications.',
   'technological', 'Heart''s Content, Newfoundland', 'CA',
   'src_wikipedia', 'https://en.wikipedia.org/wiki/Transatlantic_telegraph_cable', '1858 cable section', 'published', 'approved', 1),

  -- Aug 5, 1962: Marilyn Monroe dies
  ('ev_otd_002', '1962-08-05', 'day', '08-05', 1962,
   'Marilyn Monroe dies at age 36',
   'American actress Marilyn Monroe was found dead at her home in Los Angeles. The cause of death was ruled a probable suicide by barbiturate overdose, a finding that remains controversial.',
   'cultural', 'Los Angeles, California', 'US',
   'src_bbc-news', 'https://www.bbc.com/news/entertainment-arts-30142145', 'Marilyn Monroe death', 'published', 'approved', 0),

  -- Aug 5, 1949: Ecuador earthquake
  ('ev_otd_003', '1949-08-05', 'day', '08-05', 1949,
   'Ecuador earthquake kills 5,050',
   'A magnitude 6.7 earthquake struck Ambato, Ecuador, killing 5,050 people and causing extensive damage. It remains one of the deadliest earthquakes in Ecuador''s history.',
   'environmental', 'Ambato, Ecuador', 'EC',
   'src_wikipedia', 'https://en.wikipedia.org/wiki/1949_Ambato_earthquake', '1949 Ambato earthquake', 'published', 'approved', 0),

  -- Aug 5, 2015: EPA Clean Power Plan
  ('ev_otd_004', '2015-08-05', 'day', '08-05', 2015,
   'EPA Clean Power Plan announced',
   'The Obama administration announced the Clean Power Plan, the first national standard to limit carbon pollution from power plants. The plan aimed to reduce US power sector emissions 32% below 2005 levels by 2030.',
   'political', 'Washington, DC', 'US',
   'src_nyt', 'https://www.nytimes.com/2015/08/04/us/epa-clean-power-plan.html', 'Clean Power Plan', 'published', 'approved', 0),

  -- Aug 5, 1961: First US Astronaut
  ('ev_otd_005', '1961-08-05', 'day', '08-05', 1961,
   'First US astronaut launched into space',
   'After the Soviet Union''s Yuri Gagarin became the first human in space, the US launched its first astronaut, Alan Shepard, on a suborbital flight aboard Mercury-Redstone 3. Shepard''s 15-minute flight reached an altitude of 116 miles.',
   'scientific', 'Cape Canaveral, Florida', 'US',
   'src_npr', 'https://www.npr.org/2011/04/25/mercury-redstone-3-alan-shepard', 'Mercury-Redstone 3', 'published', 'approved', 0),

  -- Aug 5, 1962: South Africa arrests Nelson Mandela (no, that was 1962-08-05 arrest)
  ('ev_otd_006', '1962-08-05', 'day', '08-05', 1962,
   'Nelson Mandela arrested',
   'Nelson Mandela, leader of the African National Congress, was arrested and charged with incitement and leaving the country illegally. He would be convicted and sentenced to life in prison in 1964, where he remained for 27 years.',
   'social', 'Howick, South Africa', 'ZA',
   'src_bbc-news', 'https://www.bbc.com/news/world-africa-30115650', 'Mandela arrest 1962', 'published', 'approved', 0);

-- ingestion_run record
INSERT OR REPLACE INTO ingestion_run (id, source_id, connector_version, started_at, completed_at, status, records_fetched, records_imported, records_skipped, records_failed, idempotency_key, triggered_by)
VALUES
  ('run_0011_seed_otd_test', 'src_wikipedia', '1.0.0', strftime('%s', '2026-08-06'), strftime('%s', '2026-08-06'), 'succeeded', 6, 6, 0, 0, 'seed_otd_test_v1', 'manual');
