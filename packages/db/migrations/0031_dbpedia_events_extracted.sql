-- ========================================
-- Migration 0031: DBpedia-sourced events for 494 people
-- Generated: 2026-08-08 03:34:43 UTC
-- Source: DBpedia SPARQL endpoint (https://dbpedia.org/sparql)
-- Date-anchored properties only
-- ========================================

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_donald-trump_birthDate_1946_0', 'ent_donald-trump', '1946-06-14', 1946, 'birth', 'life',
   'Born (1946)', 'Donald Trump: born on 1946-06-14.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_donald-trump_spouse_1977_1', 'ent_donald-trump', '1977-04-09', 1977, 'personal_life', 'life',
   'Marriage (1977)', 'Donald Trump: marriage on 1977-04-09.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_donald-trump_spouse_1990_2', 'ent_donald-trump', '1990-12-11', 1990, 'personal_life', 'life',
   'Marriage (1990)', 'Donald Trump: marriage on 1990-12-11.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_donald-trump_spouse_1993_3', 'ent_donald-trump', '1993-12-20', 1993, 'personal_life', 'life',
   'Marriage (1993)', 'Donald Trump: marriage on 1993-12-20.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_donald-trump_spouse_1999_4', 'ent_donald-trump', '1999-06-08', 1999, 'personal_life', 'life',
   'Marriage (1999)', 'Donald Trump: marriage on 1999-06-08.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_donald-trump_spouse_2005_5', 'ent_donald-trump', '2005-01-22', 2005, 'personal_life', 'life',
   'Marriage (2005)', 'Donald Trump: marriage on 2005-01-22.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_donald-trump_termStart_2017_6', 'ent_donald-trump', '2017-01-20', 2017, 'political', 'public',
   'Term started (2017)', 'Donald Trump: term started on 2017-01-20.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_donald-trump_termEnd_2021_7', 'ent_donald-trump', '2021-01-20', 2021, 'political', 'public',
   'Term ended (2021)', 'Donald Trump: term ended on 2021-01-20.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_donald-trump_termStart_2025_8', 'ent_donald-trump', '2025-01-20', 2025, 'political', 'public',
   'Term started (2025)', 'Donald Trump: term started on 2025-01-20.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_carlos-slim_birthDate_1940_0', 'ent_carlos-slim', '1940-01-28', 1940, 'birth', 'life',
   'Born (1940)', 'Carlos Slim: born on 1940-01-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_carlos-slim_birthYear_1940_1', 'ent_carlos-slim', '1940', 1940, 'career', 'work',
   'Notable event (1940)', 'Carlos Slim: notable event on 1940.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frida-kahlo_birthDate_1907_0', 'ent_frida-kahlo', '1907-07-06', 1907, 'birth', 'life',
   'Born (1907)', 'Frida Kahlo: born on 1907-07-06.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frida-kahlo_deathDate_1954_1', 'ent_frida-kahlo', '1954-07-13', 1954, 'death', 'life',
   'Died (1954)', 'Frida Kahlo: died on 1954-07-13.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frida-kahlo_image_2013_2', 'ent_frida-kahlo', '2013-12-22', 2013, 'career', 'work',
   'Notable event (2013)', 'Frida Kahlo: notable event on 2013-12-22.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_melania-trump_birthDate_1970_0', 'ent_melania-trump', '1970-04-26', 1970, 'birth', 'life',
   'Born (1970)', 'Melania Trump: born on 1970-04-26.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_melania-trump_spouse_2005_1', 'ent_melania-trump', '2005-01-22', 2005, 'personal_life', 'life',
   'Marriage (2005)', 'Melania Trump: marriage on 2005-01-22.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_melania-trump_termStart_2017_2', 'ent_melania-trump', '2017-01-20', 2017, 'political', 'public',
   'Term started (2017)', 'Melania Trump: term started on 2017-01-20.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_melania-trump_termEnd_2021_3', 'ent_melania-trump', '2021-01-20', 2021, 'political', 'public',
   'Term ended (2021)', 'Melania Trump: term ended on 2021-01-20.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_melania-trump_termStart_2025_4', 'ent_melania-trump', '2025-01-20', 2025, 'political', 'public',
   'Term started (2025)', 'Melania Trump: term started on 2025-01-20.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_rumi_birthDate_1207_0', 'ent_rumi', '1207-09-30', 1207, 'birth', 'life',
   'Born (1207)', 'Rumi: born on 1207-09-30.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_rumi_deathDate_1273_1', 'ent_rumi', '1273-12-17', 1273, 'death', 'life',
   'Died (1273)', 'Rumi: died on 1273-12-17.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ivanka-trump_birthDate_1981_0', 'ent_ivanka-trump', '1981-10-30', 1981, 'birth', 'life',
   'Born (1981)', 'Ivanka Trump: born on 1981-10-30.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ivanka-trump_spouse_2009_1', 'ent_ivanka-trump', '2009-10-25', 2009, 'personal_life', 'life',
   'Marriage (2009)', 'Ivanka Trump: marriage on 2009-10-25.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ivanka-trump_termStart_2017_2', 'ent_ivanka-trump', '2017-03-29', 2017, 'political', 'public',
   'Term started (2017)', 'Ivanka Trump: term started on 2017-03-29.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ivanka-trump_date_2018_3', 'ent_ivanka-trump', '2018-01-27', 2018, 'career', 'work',
   'Notable event (2018)', 'Ivanka Trump: notable event on 2018-01-27.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ivanka-trump_termEnd_2021_4', 'ent_ivanka-trump', '2021-01-20', 2021, 'political', 'public',
   'Term ended (2021)', 'Ivanka Trump: term ended on 2021-01-20.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_golda-meir_birthDate_1898_0', 'ent_golda-meir', '1898-05-03', 1898, 'birth', 'life',
   'Born (1898)', 'Golda Meir: born on 1898-05-03.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_golda-meir_spouse_1917_1', 'ent_golda-meir', '1917-12-24', 1917, 'personal_life', 'life',
   'Marriage (1917)', 'Golda Meir: marriage on 1917-12-24.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_golda-meir_termStart_1948_2', 'ent_golda-meir', '1948-09-10', 1948, 'political', 'public',
   'Term started (1948)', 'Golda Meir: term started on 1948-09-10.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_golda-meir_termEnd_1949_3', 'ent_golda-meir', '1949-01-25', 1949, 'political', 'public',
   'Term ended (1949)', 'Golda Meir: term ended on 1949-01-25.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_golda-meir_spouse_1951_4', 'ent_golda-meir', '1951-05-25', 1951, 'personal_life', 'life',
   'Marriage (1951)', 'Golda Meir: marriage on 1951-05-25.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_golda-meir_termEnd_1956_5', 'ent_golda-meir', '1956-06-19', 1956, 'political', 'public',
   'Term ended (1956)', 'Golda Meir: term ended on 1956-06-19.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_golda-meir_termEnd_1966_6', 'ent_golda-meir', '1966-01-12', 1966, 'political', 'public',
   'Term ended (1966)', 'Golda Meir: term ended on 1966-01-12.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_golda-meir_termStart_1969_7', 'ent_golda-meir', '1969-03-17', 1969, 'political', 'public',
   'Term started (1969)', 'Golda Meir: term started on 1969-03-17.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_golda-meir_termEnd_1970_8', 'ent_golda-meir', '1970-09-01', 1970, 'political', 'public',
   'Term ended (1970)', 'Golda Meir: term ended on 1970-09-01.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_golda-meir_termEnd_1974_9', 'ent_golda-meir', '1974-06-03', 1974, 'political', 'public',
   'Term ended (1974)', 'Golda Meir: term ended on 1974-06-03.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_golda-meir_deathDate_1978_10', 'ent_golda-meir', '1978-12-08', 1978, 'death', 'life',
   'Died (1978)', 'Golda Meir: died on 1978-12-08.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_golda-meir_date_2020_11', 'ent_golda-meir', '2020-03-29', 2020, 'career', 'work',
   'Notable event (2020)', 'Golda Meir: notable event on 2020-03-29.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_golda-meir_date_2021_12', 'ent_golda-meir', '2021-09-03', 2021, 'career', 'work',
   'Notable event (2021)', 'Golda Meir: notable event on 2021-09-03.', 'src_dbpedia', 0.8, 12, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-kuan-yew_birthDate_1923_0', 'ent_lee-kuan-yew', '1923-09-16', 1923, 'birth', 'life',
   'Born (1923)', 'Lee Kuan Yew: born on 1923-09-16.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-kuan-yew_termStart_1954_1', 'ent_lee-kuan-yew', '1954-11-21', 1954, 'political', 'public',
   'Term started (1954)', 'Lee Kuan Yew: term started on 1954-11-21.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-kuan-yew_termStart_1955_2', 'ent_lee-kuan-yew', '1955-04-02', 1955, 'political', 'public',
   'Term started (1955)', 'Lee Kuan Yew: term started on 1955-04-02.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-kuan-yew_termEnd_1957_3', 'ent_lee-kuan-yew', '1957-04-26', 1957, 'political', 'public',
   'Term ended (1957)', 'Lee Kuan Yew: term ended on 1957-04-26.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-kuan-yew_termEnd_1959_4', 'ent_lee-kuan-yew', '1959-03-31', 1959, 'political', 'public',
   'Term ended (1959)', 'Lee Kuan Yew: term ended on 1959-03-31.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-kuan-yew_termEnd_1990_5', 'ent_lee-kuan-yew', '1990-11-28', 1990, 'political', 'public',
   'Term ended (1990)', 'Lee Kuan Yew: term ended on 1990-11-28.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-kuan-yew_termEnd_1991_6', 'ent_lee-kuan-yew', '1991-08-14', 1991, 'political', 'public',
   'Term ended (1991)', 'Lee Kuan Yew: term ended on 1991-08-14.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-kuan-yew_termEnd_1992_7', 'ent_lee-kuan-yew', '1992-11-14', 1992, 'political', 'public',
   'Term ended (1992)', 'Lee Kuan Yew: term ended on 1992-11-14.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-kuan-yew_deathDate_2015_8', 'ent_lee-kuan-yew', '2015-03-23', 2015, 'death', 'life',
   'Died (2015)', 'Lee Kuan Yew: died on 2015-03-23.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-kuan-yew_termEnd_2015_9', 'ent_lee-kuan-yew', '2015-03-23', 2015, 'political', 'public',
   'Term ended (2015)', 'Lee Kuan Yew: term ended on 2015-03-23.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_sachin-tendulkar_birthDate_1973_0', 'ent_sachin-tendulkar', '1973-04-24', 1973, 'birth', 'life',
   'Born (1973)', 'Sachin Tendulkar: born on 1973-04-24.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ivana-trump_birthDate_1949_0', 'ent_ivana-trump', '1949-02-20', 1949, 'birth', 'life',
   'Born (1949)', 'Ivana Trump: born on 1949-02-20.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ivana-trump_birthYear_1949_1', 'ent_ivana-trump', '1949', 1949, 'career', 'work',
   'Notable event (1949)', 'Ivana Trump: notable event on 1949.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ivana-trump_activeYearsStartYear_1970_2', 'ent_ivana-trump', '1970', 1970, 'career', 'work',
   'Notable event (1970)', 'Ivana Trump: notable event on 1970.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ivana-trump_deathDate_2022_3', 'ent_ivana-trump', '2022-07-14', 2022, 'death', 'life',
   'Died (2022)', 'Ivana Trump: died on 2022-07-14.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ivana-trump_activeYearsEndYear_2022_4', 'ent_ivana-trump', '2022', 2022, 'career', 'work',
   'Notable event (2022)', 'Ivana Trump: notable event on 2022.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eric-trump_birthDate_1984_0', 'ent_eric-trump', '1984-01-06', 1984, 'birth', 'life',
   'Born (1984)', 'Eric Trump: born on 1984-01-06.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eric-trump_birthYear_1984_1', 'ent_eric-trump', '1984', 1984, 'career', 'work',
   'Notable event (1984)', 'Eric Trump: notable event on 1984.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eric-trump_activeYearsStartYear_2004_2', 'ent_eric-trump', '2004', 2004, 'career', 'work',
   'Notable event (2004)', 'Eric Trump: notable event on 2004.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eric-trump_spouse_2014_3', 'ent_eric-trump', '2014-11-08', 2014, 'personal_life', 'life',
   'Marriage (2014)', 'Eric Trump: marriage on 2014-11-08.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-hsien-loong_birthDate_1952_0', 'ent_lee-hsien-loong', '1952-02-10', 1952, 'birth', 'life',
   'Born (1952)', 'Lee Hsien Loong: born on 1952-02-10.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-hsien-loong_spouse_1978_1', 'ent_lee-hsien-loong', '1978-05-20', 1978, 'personal_life', 'life',
   'Marriage (1978)', 'Lee Hsien Loong: marriage on 1978-05-20.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-hsien-loong_spouse_1982_2', 'ent_lee-hsien-loong', '1982-10-28', 1982, 'personal_life', 'life',
   'Marriage (1982)', 'Lee Hsien Loong: marriage on 1982-10-28.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-hsien-loong_termStart_1984_3', 'ent_lee-hsien-loong', '1984-12-22', 1984, 'political', 'public',
   'Term started (1984)', 'Lee Hsien Loong: term started on 1984-12-22.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-hsien-loong_spouse_1985_4', 'ent_lee-hsien-loong', '1985-12-17', 1985, 'personal_life', 'life',
   'Marriage (1985)', 'Lee Hsien Loong: marriage on 1985-12-17.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-hsien-loong_termStart_1987_5', 'ent_lee-hsien-loong', '1987-01-01', 1987, 'political', 'public',
   'Term started (1987)', 'Lee Hsien Loong: term started on 1987-01-01.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-hsien-loong_termEnd_1990_6', 'ent_lee-hsien-loong', '1990-11-27', 1990, 'political', 'public',
   'Term ended (1990)', 'Lee Hsien Loong: term ended on 1990-11-27.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-hsien-loong_termEnd_1991_7', 'ent_lee-hsien-loong', '1991-08-14', 1991, 'political', 'public',
   'Term ended (1991)', 'Lee Hsien Loong: term ended on 1991-08-14.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-hsien-loong_termEnd_1992_8', 'ent_lee-hsien-loong', '1992-12-06', 1992, 'political', 'public',
   'Term ended (1992)', 'Lee Hsien Loong: term ended on 1992-12-06.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-hsien-loong_termStart_2001_9', 'ent_lee-hsien-loong', '2001-11-10', 2001, 'political', 'public',
   'Term started (2001)', 'Lee Hsien Loong: term started on 2001-11-10.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-hsien-loong_termEnd_2004_10', 'ent_lee-hsien-loong', '2004-08-12', 2004, 'political', 'public',
   'Term ended (2004)', 'Lee Hsien Loong: term ended on 2004-08-12.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-hsien-loong_termEnd_2007_11', 'ent_lee-hsien-loong', '2007-12-01', 2007, 'political', 'public',
   'Term ended (2007)', 'Lee Hsien Loong: term ended on 2007-12-01.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-hsien-loong_termEnd_2024_12', 'ent_lee-hsien-loong', '2024-05-15', 2024, 'political', 'public',
   'Term ended (2024)', 'Lee Hsien Loong: term ended on 2024-05-15.', 'src_dbpedia', 0.8, 12, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_narendra-modi_birthDate_1950_0', 'ent_narendra-modi', '1950-09-17', 1950, 'birth', 'life',
   'Born (1950)', 'Narendra Modi: born on 1950-09-17.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_narendra-modi_termStart_1998_1', 'ent_narendra-modi', '1998-01-05', 1998, 'political', 'public',
   'Term started (1998)', 'Narendra Modi: term started on 1998-01-05.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_narendra-modi_termEnd_2001_2', 'ent_narendra-modi', '2001-10-07', 2001, 'political', 'public',
   'Term ended (2001)', 'Narendra Modi: term ended on 2001-10-07.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_narendra-modi_termStart_2002_3', 'ent_narendra-modi', '2002-12-15', 2002, 'political', 'public',
   'Term started (2002)', 'Narendra Modi: term started on 2002-12-15.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_narendra-modi_termEnd_2014_4', 'ent_narendra-modi', '2014-05-16', 2014, 'political', 'public',
   'Term ended (2014)', 'Narendra Modi: term ended on 2014-05-16.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_narendra-modi_years_2020_5', 'ent_narendra-modi', '2020-11-30', 2020, 'career', 'work',
   'Notable event (2020)', 'Narendra Modi: notable event on 2020-11-30.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_fred-trump_birthDate_1905_0', 'ent_fred-trump', '1905-10-11', 1905, 'birth', 'life',
   'Born (1905)', 'Fred Trump: born on 1905-10-11.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_fred-trump_birthYear_1905_1', 'ent_fred-trump', '1905', 1905, 'career', 'work',
   'Notable event (1905)', 'Fred Trump: notable event on 1905.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_fred-trump_deathDate_1999_2', 'ent_fred-trump', '1999-06-25', 1999, 'death', 'life',
   'Died (1999)', 'Fred Trump: died on 1999-06-25.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_fred-trump_deathYear_1999_3', 'ent_fred-trump', '1999', 1999, 'career', 'work',
   'Notable event (1999)', 'Fred Trump: notable event on 1999.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-carnegie_birthDate_1835_0', 'ent_andrew-carnegie', '1835-11-25', 1835, 'birth', 'life',
   'Born (1835)', 'Andrew Carnegie: born on 1835-11-25.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-carnegie_birthYear_1835_1', 'ent_andrew-carnegie', '1835', 1835, 'career', 'work',
   'Notable event (1835)', 'Andrew Carnegie: notable event on 1835.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-carnegie_spouse_1887_2', 'ent_andrew-carnegie', '1887-04-22', 1887, 'personal_life', 'life',
   'Marriage (1887)', 'Andrew Carnegie: marriage on 1887-04-22.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-carnegie_deathDate_1919_3', 'ent_andrew-carnegie', '1919-08-11', 1919, 'death', 'life',
   'Died (1919)', 'Andrew Carnegie: died on 1919-08-11.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-carnegie_deathYear_1919_4', 'ent_andrew-carnegie', '1919', 1919, 'career', 'work',
   'Notable event (1919)', 'Andrew Carnegie: notable event on 1919.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-carnegie_date_2019_5', 'ent_andrew-carnegie', '2019-04-06', 2019, 'career', 'work',
   'Notable event (2019)', 'Andrew Carnegie: notable event on 2019-04-06.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-jackson_birthDate_1767_0', 'ent_andrew-jackson', '1767-03-15', 1767, 'birth', 'life',
   'Born (1767)', 'Andrew Jackson: born on 1767-03-15.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-jackson_spouse_1794_1', 'ent_andrew-jackson', '1794-01-18', 1794, 'personal_life', 'life',
   'Marriage (1794)', 'Andrew Jackson: marriage on 1794-01-18.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-jackson_termStart_1796_2', 'ent_andrew-jackson', '1796-12-04', 1796, 'political', 'public',
   'Term started (1796)', 'Andrew Jackson: term started on 1796-12-04.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-jackson_termEnd_1797_3', 'ent_andrew-jackson', '1797-09-26', 1797, 'political', 'public',
   'Term ended (1797)', 'Andrew Jackson: term ended on 1797-09-26.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-jackson_termEnd_1798_4', 'ent_andrew-jackson', '1798-04-01', 1798, 'political', 'public',
   'Term ended (1798)', 'Andrew Jackson: term ended on 1798-04-01.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-jackson_termEnd_1821_5', 'ent_andrew-jackson', '1821-12-31', 1821, 'political', 'public',
   'Term ended (1821)', 'Andrew Jackson: term ended on 1821-12-31.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-jackson_termStart_1823_6', 'ent_andrew-jackson', '1823-03-04', 1823, 'political', 'public',
   'Term started (1823)', 'Andrew Jackson: term started on 1823-03-04.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-jackson_termEnd_1825_7', 'ent_andrew-jackson', '1825-10-14', 1825, 'political', 'public',
   'Term ended (1825)', 'Andrew Jackson: term ended on 1825-10-14.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-jackson_spouse_1828_8', 'ent_andrew-jackson', '1828-12-22', 1828, 'personal_life', 'life',
   'Marriage (1828)', 'Andrew Jackson: marriage on 1828-12-22.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-jackson_termStart_1829_9', 'ent_andrew-jackson', '1829-03-04', 1829, 'political', 'public',
   'Term started (1829)', 'Andrew Jackson: term started on 1829-03-04.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-jackson_termEnd_1837_10', 'ent_andrew-jackson', '1837-03-04', 1837, 'political', 'public',
   'Term ended (1837)', 'Andrew Jackson: term ended on 1837-03-04.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-jackson_deathDate_1845_11', 'ent_andrew-jackson', '1845-06-08', 1845, 'death', 'life',
   'Died (1845)', 'Andrew Jackson: died on 1845-06-08.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-johnson_birthDate_1808_0', 'ent_andrew-johnson', '1808-12-29', 1808, 'birth', 'life',
   'Born (1808)', 'Andrew Johnson: born on 1808-12-29.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-johnson_spouse_1827_1', 'ent_andrew-johnson', '1827-05-17', 1827, 'personal_life', 'life',
   'Marriage (1827)', 'Andrew Johnson: marriage on 1827-05-17.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-johnson_termStart_1843_2', 'ent_andrew-johnson', '1843-03-04', 1843, 'political', 'public',
   'Term started (1843)', 'Andrew Johnson: term started on 1843-03-04.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-johnson_termEnd_1853_3', 'ent_andrew-johnson', '1853-03-03', 1853, 'political', 'public',
   'Term ended (1853)', 'Andrew Johnson: term ended on 1853-03-03.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-johnson_termEnd_1857_4', 'ent_andrew-johnson', '1857-11-03', 1857, 'political', 'public',
   'Term ended (1857)', 'Andrew Johnson: term ended on 1857-11-03.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-johnson_termEnd_1862_5', 'ent_andrew-johnson', '1862-03-04', 1862, 'political', 'public',
   'Term ended (1862)', 'Andrew Johnson: term ended on 1862-03-04.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-johnson_termEnd_1865_6', 'ent_andrew-johnson', '1865-03-04', 1865, 'political', 'public',
   'Term ended (1865)', 'Andrew Johnson: term ended on 1865-03-04.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-johnson_termEnd_1869_7', 'ent_andrew-johnson', '1869-03-04', 1869, 'political', 'public',
   'Term ended (1869)', 'Andrew Johnson: term ended on 1869-03-04.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-johnson_deathDate_1875_8', 'ent_andrew-johnson', '1875-07-31', 1875, 'death', 'life',
   'Died (1875)', 'Andrew Johnson: died on 1875-07-31.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-johnson_termEnd_1875_9', 'ent_andrew-johnson', '1875-07-31', 1875, 'political', 'public',
   'Term ended (1875)', 'Andrew Johnson: term ended on 1875-07-31.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-lloyd-webber_birthDate_1948_0', 'ent_andrew-lloyd-webber', '1948-03-22', 1948, 'birth', 'life',
   'Born (1948)', 'Andrew Lloyd Webber: born on 1948-03-22.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-lloyd-webber_birthYear_1948_1', 'ent_andrew-lloyd-webber', '1948', 1948, 'career', 'work',
   'Notable event (1948)', 'Andrew Lloyd Webber: notable event on 1948.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-lloyd-webber_activeYearsStartYear_1965_2', 'ent_andrew-lloyd-webber', '1965', 1965, 'career', 'work',
   'Notable event (1965)', 'Andrew Lloyd Webber: notable event on 1965.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-lloyd-webber_spouse_1971_3', 'ent_andrew-lloyd-webber', '1971-07-24', 1971, 'personal_life', 'life',
   'Marriage (1971)', 'Andrew Lloyd Webber: marriage on 1971-07-24.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-lloyd-webber_spouse_1983_4', 'ent_andrew-lloyd-webber', '1983-11-14', 1983, 'personal_life', 'life',
   'Marriage (1983)', 'Andrew Lloyd Webber: marriage on 1983-11-14.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-lloyd-webber_spouse_1984_5', 'ent_andrew-lloyd-webber', '1984-03-22', 1984, 'personal_life', 'life',
   'Marriage (1984)', 'Andrew Lloyd Webber: marriage on 1984-03-22.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-lloyd-webber_spouse_1990_6', 'ent_andrew-lloyd-webber', '1990-01-03', 1990, 'personal_life', 'life',
   'Marriage (1990)', 'Andrew Lloyd Webber: marriage on 1990-01-03.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-lloyd-webber_spouse_1991_7', 'ent_andrew-lloyd-webber', '1991-02-09', 1991, 'personal_life', 'life',
   'Marriage (1991)', 'Andrew Lloyd Webber: marriage on 1991-02-09.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-lloyd-webber_image_2008_8', 'ent_andrew-lloyd-webber', '2008-11-15', 2008, 'career', 'work',
   'Notable event (2008)', 'Andrew Lloyd Webber: notable event on 2008-11-15.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-young_birthDate_1932_0', 'ent_andrew-young', '1932-03-12', 1932, 'birth', 'life',
   'Born (1932)', 'Andrew Young: born on 1932-03-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-young_termStart_1973_1', 'ent_andrew-young', '1973-01-03', 1973, 'political', 'public',
   'Term started (1973)', 'Andrew Young: term started on 1973-01-03.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-young_termEnd_1977_2', 'ent_andrew-young', '1977-01-29', 1977, 'political', 'public',
   'Term ended (1977)', 'Andrew Young: term ended on 1977-01-29.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-young_termEnd_1979_3', 'ent_andrew-young', '1979-09-23', 1979, 'political', 'public',
   'Term ended (1979)', 'Andrew Young: term ended on 1979-09-23.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-young_termStart_1982_4', 'ent_andrew-young', '1982-01-04', 1982, 'political', 'public',
   'Term started (1982)', 'Andrew Young: term started on 1982-01-04.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-young_termEnd_1990_5', 'ent_andrew-young', '1990-01-02', 1990, 'political', 'public',
   'Term ended (1990)', 'Andrew Young: term ended on 1990-01-02.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andrew-young_date_2012_6', 'ent_andrew-young', '2012-10-10', 2012, 'career', 'work',
   'Notable event (2012)', 'Andrew Young: notable event on 2012-10-10.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andy-fang_birthYear_1992_0', 'ent_andy-fang', '1992', 1992, 'career', 'work',
   'Notable event (1992)', 'Andy Fang: notable event on 1992.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andy-warhol_birthDate_1928_0', 'ent_andy-warhol', '1928-08-06', 1928, 'birth', 'life',
   'Born (1928)', 'Andy Warhol: born on 1928-08-06.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_andy-warhol_deathDate_1987_1', 'ent_andy-warhol', '1987-02-22', 1987, 'death', 'life',
   'Died (1987)', 'Andy Warhol: died on 1987-02-22.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_anna-harrison_birthDate_1775_0', 'ent_anna-harrison', '1775-07-25', 1775, 'birth', 'life',
   'Born (1775)', 'Anna Harrison: born on 1775-07-25.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_anna-harrison_termEnd_1841_1', 'ent_anna-harrison', '1841-04-04', 1841, 'political', 'public',
   'Term ended (1841)', 'Anna Harrison: term ended on 1841-04-04.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_anna-harrison_deathDate_1864_2', 'ent_anna-harrison', '1864-02-25', 1864, 'death', 'life',
   'Died (1864)', 'Anna Harrison: died on 1864-02-25.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_anna-wintour_birthDate_1949_0', 'ent_anna-wintour', '1949-11-03', 1949, 'birth', 'life',
   'Born (1949)', 'Anna Wintour: born on 1949-11-03.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_anna-wintour_birthYear_1949_1', 'ent_anna-wintour', '1949', 1949, 'career', 'work',
   'Notable event (1949)', 'Anna Wintour: notable event on 1949.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_anna-wintour_activeYearsStartYear_1975_2', 'ent_anna-wintour', '1975', 1975, 'career', 'work',
   'Notable event (1975)', 'Anna Wintour: notable event on 1975.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_anthony-kennedy_birthDate_1936_0', 'ent_anthony-kennedy', '1936-07-23', 1936, 'birth', 'life',
   'Born (1936)', 'Anthony Kennedy: born on 1936-07-23.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_anthony-kennedy_termStart_1975_1', 'ent_anthony-kennedy', '1975-03-24', 1975, 'political', 'public',
   'Term started (1975)', 'Anthony Kennedy: term started on 1975-03-24.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_anthony-kennedy_termEnd_1988_2', 'ent_anthony-kennedy', '1988-02-18', 1988, 'political', 'public',
   'Term ended (1988)', 'Anthony Kennedy: term ended on 1988-02-18.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_anthony-kennedy_date_2014_3', 'ent_anthony-kennedy', '2014-02-09', 2014, 'career', 'work',
   'Notable event (2014)', 'Anthony Kennedy: notable event on 2014-02-09.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_anthony-kennedy_termEnd_2018_4', 'ent_anthony-kennedy', '2018-07-31', 2018, 'political', 'public',
   'Term ended (2018)', 'Anthony Kennedy: term ended on 2018-07-31.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_anthony-wayne_birthDate_1745_0', 'ent_anthony-wayne', '1745-01-01', 1745, 'birth', 'life',
   'Born (1745)', 'Anthony Wayne: born on 1745-01-01.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_anthony-wayne_termStart_1791_1', 'ent_anthony-wayne', '1791-03-04', 1791, 'political', 'public',
   'Term started (1791)', 'Anthony Wayne: term started on 1791-03-04.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_anthony-wayne_termEnd_1792_2', 'ent_anthony-wayne', '1792-03-21', 1792, 'political', 'public',
   'Term ended (1792)', 'Anthony Wayne: term ended on 1792-03-21.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_anthony-wayne_deathDate_1796_3', 'ent_anthony-wayne', '1796-12-15', 1796, 'death', 'life',
   'Died (1796)', 'Anthony Wayne: died on 1796-12-15.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_anthony-wayne_termEnd_1796_4', 'ent_anthony-wayne', '1796-12-15', 1796, 'political', 'public',
   'Term ended (1796)', 'Anthony Wayne: term ended on 1796-12-15.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_antonin-scalia_birthDate_1936_0', 'ent_antonin-scalia', '1936-03-11', 1936, 'birth', 'life',
   'Born (1936)', 'Antonin Scalia: born on 1936-03-11.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_antonin-scalia_spouse_1960_1', 'ent_antonin-scalia', '1960-09-10', 1960, 'personal_life', 'life',
   'Marriage (1960)', 'Antonin Scalia: marriage on 1960-09-10.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_antonin-scalia_termStart_1974_2', 'ent_antonin-scalia', '1974-08-22', 1974, 'political', 'public',
   'Term started (1974)', 'Antonin Scalia: term started on 1974-08-22.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_antonin-scalia_termEnd_1977_3', 'ent_antonin-scalia', '1977-01-20', 1977, 'political', 'public',
   'Term ended (1977)', 'Antonin Scalia: term ended on 1977-01-20.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_antonin-scalia_termStart_1982_4', 'ent_antonin-scalia', '1982-08-17', 1982, 'political', 'public',
   'Term started (1982)', 'Antonin Scalia: term started on 1982-08-17.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_antonin-scalia_termEnd_1986_5', 'ent_antonin-scalia', '1986-09-26', 1986, 'political', 'public',
   'Term ended (1986)', 'Antonin Scalia: term ended on 1986-09-26.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_antonin-scalia_deathDate_2016_6', 'ent_antonin-scalia', '2016-02-13', 2016, 'death', 'life',
   'Died (2016)', 'Antonin Scalia: died on 2016-02-13.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_antonin-scalia_termEnd_2016_7', 'ent_antonin-scalia', '2016-02-13', 2016, 'political', 'public',
   'Term ended (2016)', 'Antonin Scalia: term ended on 2016-02-13.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_antonin-scalia_date_2016_8', 'ent_antonin-scalia', '2016-02-22', 2016, 'career', 'work',
   'Notable event (2016)', 'Antonin Scalia: notable event on 2016-02-22.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_antony-blinken_birthDate_1962_0', 'ent_antony-blinken', '1962-04-16', 1962, 'birth', 'life',
   'Born (1962)', 'Antony Blinken: born on 1962-04-16.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_antony-blinken_termStart_2009_1', 'ent_antony-blinken', '2009-01-20', 2009, 'political', 'public',
   'Term started (2009)', 'Antony Blinken: term started on 2009-01-20.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_antony-blinken_termEnd_2013_2', 'ent_antony-blinken', '2013-01-20', 2013, 'political', 'public',
   'Term ended (2013)', 'Antony Blinken: term ended on 2013-01-20.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_antony-blinken_termEnd_2015_3', 'ent_antony-blinken', '2015-01-09', 2015, 'political', 'public',
   'Term ended (2015)', 'Antony Blinken: term ended on 2015-01-09.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_antony-blinken_termEnd_2017_4', 'ent_antony-blinken', '2017-01-20', 2017, 'political', 'public',
   'Term ended (2017)', 'Antony Blinken: term ended on 2017-01-20.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_antony-blinken_termStart_2021_5', 'ent_antony-blinken', '2021-01-26', 2021, 'political', 'public',
   'Term started (2021)', 'Antony Blinken: term started on 2021-01-26.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_antony-blinken_date_2021_6', 'ent_antony-blinken', '2021-01-20', 2021, 'career', 'work',
   'Notable event (2021)', 'Antony Blinken: notable event on 2021-01-20.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_antony-blinken_termEnd_2025_7', 'ent_antony-blinken', '2025-01-20', 2025, 'political', 'public',
   'Term ended (2025)', 'Antony Blinken: term ended on 2025-01-20.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ariana-grande_birthDate_1993_0', 'ent_ariana-grande', '1993-06-26', 1993, 'birth', 'life',
   'Born (1993)', 'Ariana Grande: born on 1993-06-26.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ariana-grande_birthYear_1993_1', 'ent_ariana-grande', '1993', 1993, 'career', 'work',
   'Notable event (1993)', 'Ariana Grande: notable event on 1993.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ariana-grande_activeYearsStartYear_2008_2', 'ent_ariana-grande', '2008', 2008, 'career', 'work',
   'Notable event (2008)', 'Ariana Grande: notable event on 2008.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_arianna-huffington_birthDate_1950_0', 'ent_arianna-huffington', '1950-07-15', 1950, 'birth', 'life',
   'Born (1950)', 'Arianna Huffington: born on 1950-07-15.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_arianna-huffington_birthYear_1950_1', 'ent_arianna-huffington', '1950', 1950, 'career', 'work',
   'Notable event (1950)', 'Arianna Huffington: notable event on 1950.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_arnold-palmer_birthDate_1929_0', 'ent_arnold-palmer', '1929-09-10', 1929, 'birth', 'life',
   'Born (1929)', 'Arnold Palmer: born on 1929-09-10.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_arnold-palmer_date_2014_1', 'ent_arnold-palmer', '2014-07-15', 2014, 'career', 'work',
   'Notable event (2014)', 'Arnold Palmer: notable event on 2014-07-15.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_arnold-palmer_deathDate_2016_2', 'ent_arnold-palmer', '2016-09-25', 2016, 'death', 'life',
   'Died (2016)', 'Arnold Palmer: died on 2016-09-25.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_art-blakey_birthDate_1919_0', 'ent_art-blakey', '1919-10-11', 1919, 'birth', 'life',
   'Born (1919)', 'Art Blakey: born on 1919-10-11.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_art-blakey_activeYearsStartYear_1942_1', 'ent_art-blakey', '1942', 1942, 'career', 'work',
   'Notable event (1942)', 'Art Blakey: notable event on 1942.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_art-blakey_deathDate_1990_2', 'ent_art-blakey', '1990-10-16', 1990, 'death', 'life',
   'Died (1990)', 'Art Blakey: died on 1990-10-16.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_art-blakey_activeYearsEndYear_1990_3', 'ent_art-blakey', '1990', 1990, 'career', 'work',
   'Notable event (1990)', 'Art Blakey: notable event on 1990.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_arthur-ashe_birthDate_1943_0', 'ent_arthur-ashe', '1943-07-10', 1943, 'birth', 'life',
   'Born (1943)', 'Arthur Ashe: born on 1943-07-10.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_arthur-ashe_deathDate_1993_1', 'ent_arthur-ashe', '1993-02-06', 1993, 'death', 'life',
   'Died (1993)', 'Arthur Ashe: died on 1993-02-06.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_arthur-penn_birthDate_1922_0', 'ent_arthur-penn', '1922-09-27', 1922, 'birth', 'life',
   'Born (1922)', 'Arthur Penn: born on 1922-09-27.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_arthur-penn_birthYear_1922_1', 'ent_arthur-penn', '1922', 1922, 'career', 'work',
   'Notable event (1922)', 'Arthur Penn: notable event on 1922.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_arthur-penn_deathDate_2010_2', 'ent_arthur-penn', '2010-09-28', 2010, 'death', 'life',
   'Died (2010)', 'Arthur Penn: died on 2010-09-28.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_arthur-penn_deathYear_2010_3', 'ent_arthur-penn', '2010', 2010, 'career', 'work',
   'Notable event (2010)', 'Arthur Penn: notable event on 2010.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_audre-lorde_birthDate_1934_0', 'ent_audre-lorde', '1934-02-18', 1934, 'birth', 'life',
   'Born (1934)', 'Audre Lorde: born on 1934-02-18.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_audre-lorde_deathDate_1992_1', 'ent_audre-lorde', '1992-11-17', 1992, 'death', 'life',
   'Died (1992)', 'Audre Lorde: died on 1992-11-17.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_audre-lorde_date_2020_2', 'ent_audre-lorde', '2020-10-28', 2020, 'career', 'work',
   'Notable event (2020)', 'Audre Lorde: notable event on 2020-10-28.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_audrey-hepburn_birthDate_1929_0', 'ent_audrey-hepburn', '1929-05-04', 1929, 'birth', 'life',
   'Born (1929)', 'Audrey Hepburn: born on 1929-05-04.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_audrey-hepburn_birthYear_1929_1', 'ent_audrey-hepburn', '1929', 1929, 'career', 'work',
   'Notable event (1929)', 'Audrey Hepburn: notable event on 1929.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_audrey-hepburn_activeYearsStartYear_1948_2', 'ent_audrey-hepburn', '1948', 1948, 'career', 'work',
   'Notable event (1948)', 'Audrey Hepburn: notable event on 1948.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_audrey-hepburn_activeYearsEndYear_1989_3', 'ent_audrey-hepburn', '1989', 1989, 'career', 'work',
   'Notable event (1989)', 'Audrey Hepburn: notable event on 1989.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_audrey-hepburn_deathDate_1993_4', 'ent_audrey-hepburn', '1993-01-20', 1993, 'death', 'life',
   'Died (1993)', 'Audrey Hepburn: died on 1993-01-20.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_audrey-hepburn_deathYear_1993_5', 'ent_audrey-hepburn', '1993', 1993, 'career', 'work',
   'Notable event (1993)', 'Audrey Hepburn: notable event on 1993.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_avicii_birthDate_1989_0', 'ent_avicii', '1989-09-08', 1989, 'birth', 'life',
   'Born (1989)', 'Avicii: born on 1989-09-08.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_avicii_birthYear_1989_1', 'ent_avicii', '1989', 1989, 'career', 'work',
   'Notable event (1989)', 'Avicii: notable event on 1989.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_avicii_activeYearsStartYear_2006_2', 'ent_avicii', '2006', 2006, 'career', 'work',
   'Notable event (2006)', 'Avicii: notable event on 2006.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_avicii_deathDate_2018_3', 'ent_avicii', '2018-04-20', 2018, 'death', 'life',
   'Died (2018)', 'Avicii: died on 2018-04-20.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_avicii_activeYearsEndYear_2018_4', 'ent_avicii', '2018', 2018, 'career', 'work',
   'Notable event (2018)', 'Avicii: notable event on 2018.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_babe-ruth_birthDate_1895_0', 'ent_babe-ruth', '1895-02-06', 1895, 'birth', 'life',
   'Born (1895)', 'Babe Ruth: born on 1895-02-06.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_babe-ruth_years_1917_1', 'ent_babe-ruth', '1917-06-23', 1917, 'career', 'work',
   'Notable event (1917)', 'Babe Ruth: notable event on 1917-06-23.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_babe-ruth_deathDate_1948_2', 'ent_babe-ruth', '1948-08-16', 1948, 'death', 'life',
   'Died (1948)', 'Babe Ruth: died on 1948-08-16.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bad-bunny_birthDate_1994_0', 'ent_bad-bunny', '1994-03-10', 1994, 'birth', 'life',
   'Born (1994)', 'Bad Bunny: born on 1994-03-10.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bad-bunny_birthYear_1994_1', 'ent_bad-bunny', '1994', 1994, 'career', 'work',
   'Notable event (1994)', 'Bad Bunny: notable event on 1994.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bad-bunny_activeYearsStartYear_2013_2', 'ent_bad-bunny', '2013', 2013, 'career', 'work',
   'Notable event (2013)', 'Bad Bunny: notable event on 2013.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bad-bunny_debut_2021_3', 'ent_bad-bunny', '2021-04-10', 2021, 'career', 'work',
   'Notable event (2021)', 'Bad Bunny: notable event on 2021-04-10.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barack-obama_birthDate_1961_0', 'ent_barack-obama', '1961-08-04', 1961, 'birth', 'life',
   'Born (1961)', 'Barack Obama: born on 1961-08-04.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barack-obama_spouse_1992_1', 'ent_barack-obama', '1992-10-03', 1992, 'personal_life', 'life',
   'Marriage (1992)', 'Barack Obama: marriage on 1992-10-03.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barack-obama_termStart_1997_2', 'ent_barack-obama', '1997-01-08', 1997, 'political', 'public',
   'Term started (1997)', 'Barack Obama: term started on 1997-01-08.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barack-obama_termEnd_2004_3', 'ent_barack-obama', '2004-11-04', 2004, 'political', 'public',
   'Term ended (2004)', 'Barack Obama: term ended on 2004-11-04.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barack-obama_termStart_2005_4', 'ent_barack-obama', '2005-01-03', 2005, 'political', 'public',
   'Term started (2005)', 'Barack Obama: term started on 2005-01-03.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barack-obama_termEnd_2008_5', 'ent_barack-obama', '2008-11-16', 2008, 'political', 'public',
   'Term ended (2008)', 'Barack Obama: term ended on 2008-11-16.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barack-obama_termStart_2009_6', 'ent_barack-obama', '2009-01-20', 2009, 'political', 'public',
   'Term started (2009)', 'Barack Obama: term started on 2009-01-20.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barack-obama_termEnd_2017_7', 'ent_barack-obama', '2017-01-20', 2017, 'political', 'public',
   'Term ended (2017)', 'Barack Obama: term ended on 2017-01-20.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barack-obama_date_2023_8', 'ent_barack-obama', '2023-06-27', 2023, 'career', 'work',
   'Notable event (2023)', 'Barack Obama: notable event on 2023-06-27.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barbara-bush_birthDate_1925_0', 'ent_barbara-bush', '1925-06-08', 1925, 'birth', 'life',
   'Born (1925)', 'Barbara Bush: born on 1925-06-08.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barbara-bush_termStart_1981_1', 'ent_barbara-bush', '1981-01-20', 1981, 'political', 'public',
   'Term started (1981)', 'Barbara Bush: term started on 1981-01-20.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barbara-bush_termEnd_1989_2', 'ent_barbara-bush', '1989-01-20', 1989, 'political', 'public',
   'Term ended (1989)', 'Barbara Bush: term ended on 1989-01-20.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barbara-bush_termEnd_1993_3', 'ent_barbara-bush', '1993-01-20', 1993, 'political', 'public',
   'Term ended (1993)', 'Barbara Bush: term ended on 1993-01-20.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barbara-bush_deathDate_2018_4', 'ent_barbara-bush', '2018-04-17', 2018, 'death', 'life',
   'Died (2018)', 'Barbara Bush: died on 2018-04-17.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barbara-walters_birthDate_1929_0', 'ent_barbara-walters', '1929-09-25', 1929, 'birth', 'life',
   'Born (1929)', 'Barbara Walters: born on 1929-09-25.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barbara-walters_birthYear_1929_1', 'ent_barbara-walters', '1929', 1929, 'career', 'work',
   'Notable event (1929)', 'Barbara Walters: notable event on 1929.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barbara-walters_activeYearsStartYear_1951_2', 'ent_barbara-walters', '1951', 1951, 'career', 'work',
   'Notable event (1951)', 'Barbara Walters: notable event on 1951.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barbara-walters_activeYearsEndYear_2016_3', 'ent_barbara-walters', '2016', 2016, 'career', 'work',
   'Notable event (2016)', 'Barbara Walters: notable event on 2016.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barbara-walters_deathDate_2022_4', 'ent_barbara-walters', '2022-12-30', 2022, 'death', 'life',
   'Died (2022)', 'Barbara Walters: died on 2022-12-30.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barbara-walters_deathYear_2022_5', 'ent_barbara-walters', '2022', 2022, 'career', 'work',
   'Notable event (2022)', 'Barbara Walters: notable event on 2022.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barry-sanders_birthDate_1968_0', 'ent_barry-sanders', '1968-07-16', 1968, 'birth', 'life',
   'Born (1968)', 'Barry Sanders: born on 1968-07-16.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barry-sanders_draftYear_1989_1', 'ent_barry-sanders', '1989', 1989, 'career', 'work',
   'Notable event (1989)', 'Barry Sanders: notable event on 1989.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ben-affleck_birthDate_1972_0', 'ent_ben-affleck', '1972-08-15', 1972, 'birth', 'life',
   'Born (1972)', 'Ben Affleck: born on 1972-08-15.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ben-affleck_birthYear_1972_1', 'ent_ben-affleck', '1972', 1972, 'career', 'work',
   'Notable event (1972)', 'Ben Affleck: notable event on 1972.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ben-affleck_activeYearsStartYear_1981_2', 'ent_ben-affleck', '1981', 1981, 'career', 'work',
   'Notable event (1981)', 'Ben Affleck: notable event on 1981.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benedict-arnold_birthDate_1741_0', 'ent_benedict-arnold', '1741-01-14', 1741, 'birth', 'life',
   'Born (1741)', 'Benedict Arnold: born on 1741-01-14.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benedict-arnold_spouse_1767_1', 'ent_benedict-arnold', '1767-02-22', 1767, 'personal_life', 'life',
   'Marriage (1767)', 'Benedict Arnold: marriage on 1767-02-22.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benedict-arnold_spouse_1775_2', 'ent_benedict-arnold', '1775-06-19', 1775, 'personal_life', 'life',
   'Marriage (1775)', 'Benedict Arnold: marriage on 1775-06-19.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benedict-arnold_spouse_1779_3', 'ent_benedict-arnold', '1779-04-08', 1779, 'personal_life', 'life',
   'Marriage (1779)', 'Benedict Arnold: marriage on 1779-04-08.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benedict-arnold_serviceStartYear_1780_4', 'ent_benedict-arnold', '1780', 1780, 'career', 'work',
   'Notable event (1780)', 'Benedict Arnold: notable event on 1780.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benedict-arnold_serviceEndYear_1781_5', 'ent_benedict-arnold', '1781', 1781, 'career', 'work',
   'Notable event (1781)', 'Benedict Arnold: notable event on 1781.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benedict-arnold_deathDate_1801_6', 'ent_benedict-arnold', '1801-06-14', 1801, 'death', 'life',
   'Died (1801)', 'Benedict Arnold: died on 1801-06-14.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benedict-arnold_date_2018_7', 'ent_benedict-arnold', '2018-05-28', 2018, 'career', 'work',
   'Notable event (2018)', 'Benedict Arnold: notable event on 2018-05-28.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benedict-arnold_date_2019_8', 'ent_benedict-arnold', '2019-09-29', 2019, 'career', 'work',
   'Notable event (2019)', 'Benedict Arnold: notable event on 2019-09-29.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benedict-arnold_date_2023_9', 'ent_benedict-arnold', '2023-06-25', 2023, 'career', 'work',
   'Notable event (2023)', 'Benedict Arnold: notable event on 2023-06-25.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benedict-arnold_date_2024_10', 'ent_benedict-arnold', '2024-03-03', 2024, 'career', 'work',
   'Notable event (2024)', 'Benedict Arnold: notable event on 2024-03-03.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-banneker_birthDate_1731_0', 'ent_benjamin-banneker', '1731-11-09', 1731, 'birth', 'life',
   'Born (1731)', 'Benjamin Banneker: born on 1731-11-09.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-banneker_birthYear_1731_1', 'ent_benjamin-banneker', '1731', 1731, 'career', 'work',
   'Notable event (1731)', 'Benjamin Banneker: notable event on 1731.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-banneker_deathDate_1806_2', 'ent_benjamin-banneker', '1806-10-19', 1806, 'death', 'life',
   'Died (1806)', 'Benjamin Banneker: died on 1806-10-19.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-banneker_deathYear_1806_3', 'ent_benjamin-banneker', '1806', 1806, 'career', 'work',
   'Notable event (1806)', 'Benjamin Banneker: notable event on 1806.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_spouse_1730_0', 'ent_benjamin-franklin', '1730-09-01', 1730, 'personal_life', 'life',
   'Marriage (1730)', 'Benjamin Franklin: marriage on 1730-09-01.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_termStart_1736_1', 'ent_benjamin-franklin', '1736-10-14', 1736, 'political', 'public',
   'Term started (1736)', 'Benjamin Franklin: term started on 1736-10-14.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_termStart_1749_2', 'ent_benjamin-franklin', '1749-11-13', 1749, 'political', 'public',
   'Term started (1749)', 'Benjamin Franklin: term started on 1749-11-13.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_termEnd_1751_3', 'ent_benjamin-franklin', '1751-05-13', 1751, 'political', 'public',
   'Term ended (1751)', 'Benjamin Franklin: term ended on 1751-05-13.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_termStart_1753_4', 'ent_benjamin-franklin', '1753-08-10', 1753, 'political', 'public',
   'Term started (1753)', 'Benjamin Franklin: term started on 1753-08-10.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_termEnd_1754_5', 'ent_benjamin-franklin', '1754-05-24', 1754, 'political', 'public',
   'Term ended (1754)', 'Benjamin Franklin: term ended on 1754-05-24.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_termEnd_1764_6', 'ent_benjamin-franklin', '1764-10-11', 1764, 'political', 'public',
   'Term ended (1764)', 'Benjamin Franklin: term ended on 1764-10-11.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_termEnd_1774_7', 'ent_benjamin-franklin', '1774-01-31', 1774, 'political', 'public',
   'Term ended (1774)', 'Benjamin Franklin: term ended on 1774-01-31.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_termStart_1775_8', 'ent_benjamin-franklin', '1775-05-10', 1775, 'political', 'public',
   'Term started (1775)', 'Benjamin Franklin: term started on 1775-05-10.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_termEnd_1776_9', 'ent_benjamin-franklin', '1776-10-26', 1776, 'political', 'public',
   'Term ended (1776)', 'Benjamin Franklin: term ended on 1776-10-26.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_termStart_1779_10', 'ent_benjamin-franklin', '1779-03-23', 1779, 'political', 'public',
   'Term started (1779)', 'Benjamin Franklin: term started on 1779-03-23.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_termStart_1782_11', 'ent_benjamin-franklin', '1782-09-28', 1782, 'political', 'public',
   'Term started (1782)', 'Benjamin Franklin: term started on 1782-09-28.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_termEnd_1783_12', 'ent_benjamin-franklin', '1783-04-03', 1783, 'political', 'public',
   'Term ended (1783)', 'Benjamin Franklin: term ended on 1783-04-03.', 'src_dbpedia', 0.8, 12, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_termEnd_1785_13', 'ent_benjamin-franklin', '1785-05-17', 1785, 'political', 'public',
   'Term ended (1785)', 'Benjamin Franklin: term ended on 1785-05-17.', 'src_dbpedia', 0.8, 13, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_termStart_1787_14', 'ent_benjamin-franklin', '1787-04-23', 1787, 'political', 'public',
   'Term started (1787)', 'Benjamin Franklin: term started on 1787-04-23.', 'src_dbpedia', 0.8, 14, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_termEnd_1788_15', 'ent_benjamin-franklin', '1788-11-05', 1788, 'political', 'public',
   'Term ended (1788)', 'Benjamin Franklin: term ended on 1788-11-05.', 'src_dbpedia', 0.8, 15, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_deathDate_1790_16', 'ent_benjamin-franklin', '1790-04-17', 1790, 'death', 'life',
   'Died (1790)', 'Benjamin Franklin: died on 1790-04-17.', 'src_dbpedia', 0.8, 16, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_termEnd_1790_17', 'ent_benjamin-franklin', '1790-04-17', 1790, 'political', 'public',
   'Term ended (1790)', 'Benjamin Franklin: term ended on 1790-04-17.', 'src_dbpedia', 0.8, 17, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_designation1Date_1990_18', 'ent_benjamin-franklin', '1990-06-30', 1990, 'career', 'work',
   'Notable event (1990)', 'Benjamin Franklin: notable event on 1990-06-30.', 'src_dbpedia', 0.8, 18, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_date_2008_19', 'ent_benjamin-franklin', '2008-08-20', 2008, 'career', 'work',
   'Notable event (2008)', 'Benjamin Franklin: notable event on 2008-08-20.', 'src_dbpedia', 0.8, 19, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_date_2010_20', 'ent_benjamin-franklin', '2010-03-16', 2010, 'career', 'work',
   'Notable event (2010)', 'Benjamin Franklin: notable event on 2010-03-16.', 'src_dbpedia', 0.8, 20, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_date_2017_21', 'ent_benjamin-franklin', '2017-08-14', 2017, 'career', 'work',
   'Notable event (2017)', 'Benjamin Franklin: notable event on 2017-08-14.', 'src_dbpedia', 0.8, 21, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-franklin_date_2021_22', 'ent_benjamin-franklin', '2021-01-15', 2021, 'career', 'work',
   'Notable event (2021)', 'Benjamin Franklin: notable event on 2021-01-15.', 'src_dbpedia', 0.8, 22, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-harrison_birthDate_1833_0', 'ent_benjamin-harrison', '1833-08-20', 1833, 'birth', 'life',
   'Born (1833)', 'Benjamin Harrison: born on 1833-08-20.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-harrison_spouse_1853_1', 'ent_benjamin-harrison', '1853-10-20', 1853, 'personal_life', 'life',
   'Marriage (1853)', 'Benjamin Harrison: marriage on 1853-10-20.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-harrison_termStart_1881_2', 'ent_benjamin-harrison', '1881-03-04', 1881, 'political', 'public',
   'Term started (1881)', 'Benjamin Harrison: term started on 1881-03-04.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-harrison_termEnd_1887_3', 'ent_benjamin-harrison', '1887-03-03', 1887, 'political', 'public',
   'Term ended (1887)', 'Benjamin Harrison: term ended on 1887-03-03.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-harrison_termStart_1889_4', 'ent_benjamin-harrison', '1889-03-04', 1889, 'political', 'public',
   'Term started (1889)', 'Benjamin Harrison: term started on 1889-03-04.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-harrison_spouse_1892_5', 'ent_benjamin-harrison', '1892-10-25', 1892, 'personal_life', 'life',
   'Marriage (1892)', 'Benjamin Harrison: marriage on 1892-10-25.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-harrison_termEnd_1893_6', 'ent_benjamin-harrison', '1893-03-04', 1893, 'political', 'public',
   'Term ended (1893)', 'Benjamin Harrison: term ended on 1893-03-04.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-harrison_spouse_1896_7', 'ent_benjamin-harrison', '1896-04-06', 1896, 'personal_life', 'life',
   'Marriage (1896)', 'Benjamin Harrison: marriage on 1896-04-06.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-harrison_deathDate_1901_8', 'ent_benjamin-harrison', '1901-03-13', 1901, 'death', 'life',
   'Died (1901)', 'Benjamin Harrison: died on 1901-03-13.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-harrison_date_2012_9', 'ent_benjamin-harrison', '2012-06-08', 2012, 'career', 'work',
   'Notable event (2012)', 'Benjamin Harrison: notable event on 2012-06-08.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benjamin-harrison_date_2016_10', 'ent_benjamin-harrison', '2016-07-29', 2016, 'career', 'work',
   'Notable event (2016)', 'Benjamin Harrison: notable event on 2016-07-29.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benny-goodman_birthDate_1909_0', 'ent_benny-goodman', '1909-05-30', 1909, 'birth', 'life',
   'Born (1909)', 'Benny Goodman: born on 1909-05-30.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benny-goodman_activeYearsStartYear_1926_1', 'ent_benny-goodman', '1926', 1926, 'career', 'work',
   'Notable event (1926)', 'Benny Goodman: notable event on 1926.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benny-goodman_deathDate_1986_2', 'ent_benny-goodman', '1986-06-13', 1986, 'death', 'life',
   'Died (1986)', 'Benny Goodman: died on 1986-06-13.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benny-goodman_activeYearsEndYear_1986_3', 'ent_benny-goodman', '1986', 1986, 'career', 'work',
   'Notable event (1986)', 'Benny Goodman: notable event on 1986.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benny-hinn_birthDate_1952_0', 'ent_benny-hinn', '1952-12-03', 1952, 'birth', 'life',
   'Born (1952)', 'Benny Hinn: born on 1952-12-03.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_benny-hinn_date_2016_1', 'ent_benny-hinn', '2016-02-05', 2016, 'career', 'work',
   'Notable event (2016)', 'Benny Hinn: notable event on 2016-02-05.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bernard-lafayette_birthDate_1940_0', 'ent_bernard-lafayette', '1940-07-29', 1940, 'birth', 'life',
   'Born (1940)', 'Bernard Lafayette: born on 1940-07-29.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bernard-lafayette_birthYear_1940_1', 'ent_bernard-lafayette', '1940', 1940, 'career', 'work',
   'Notable event (1940)', 'Bernard Lafayette: notable event on 1940.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bernice-robinson_birthDate_1914_0', 'ent_bernice-robinson', '1914-02-07', 1914, 'birth', 'life',
   'Born (1914)', 'Bernice Robinson: born on 1914-02-07.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bernice-robinson_birthYear_1914_1', 'ent_bernice-robinson', '1914', 1914, 'career', 'work',
   'Notable event (1914)', 'Bernice Robinson: notable event on 1914.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bernice-robinson_activeYearsStartYear_1936_2', 'ent_bernice-robinson', '1936', 1936, 'career', 'work',
   'Notable event (1936)', 'Bernice Robinson: notable event on 1936.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bernice-robinson_activeYearsEndYear_1982_3', 'ent_bernice-robinson', '1982', 1982, 'career', 'work',
   'Notable event (1982)', 'Bernice Robinson: notable event on 1982.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bernice-robinson_deathDate_1994_4', 'ent_bernice-robinson', '1994-09-03', 1994, 'death', 'life',
   'Died (1994)', 'Bernice Robinson: died on 1994-09-03.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bernice-robinson_deathYear_1994_5', 'ent_bernice-robinson', '1994', 1994, 'career', 'work',
   'Notable event (1994)', 'Bernice Robinson: notable event on 1994.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bess-truman_birthDate_1885_0', 'ent_bess-truman', '1885-02-13', 1885, 'birth', 'life',
   'Born (1885)', 'Bess Truman: born on 1885-02-13.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bess-truman_termEnd_1945_1', 'ent_bess-truman', '1945-04-12', 1945, 'political', 'public',
   'Term ended (1945)', 'Bess Truman: term ended on 1945-04-12.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bess-truman_termEnd_1953_2', 'ent_bess-truman', '1953-01-20', 1953, 'political', 'public',
   'Term ended (1953)', 'Bess Truman: term ended on 1953-01-20.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bess-truman_deathDate_1982_3', 'ent_bess-truman', '1982-10-18', 1982, 'death', 'life',
   'Died (1982)', 'Bess Truman: died on 1982-10-18.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_betty-ford_birthDate_1918_0', 'ent_betty-ford', '1918-04-08', 1918, 'birth', 'life',
   'Born (1918)', 'Betty Ford: born on 1918-04-08.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_betty-ford_termStart_1973_1', 'ent_betty-ford', '1973-12-06', 1973, 'political', 'public',
   'Term started (1973)', 'Betty Ford: term started on 1973-12-06.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_betty-ford_termEnd_1974_2', 'ent_betty-ford', '1974-08-09', 1974, 'political', 'public',
   'Term ended (1974)', 'Betty Ford: term ended on 1974-08-09.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_betty-ford_termEnd_1977_3', 'ent_betty-ford', '1977-01-20', 1977, 'political', 'public',
   'Term ended (1977)', 'Betty Ford: term ended on 1977-01-20.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_betty-ford_termStart_1982_4', 'ent_betty-ford', '1982-10-04', 1982, 'political', 'public',
   'Term started (1982)', 'Betty Ford: term started on 1982-10-04.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_betty-ford_termEnd_2005_5', 'ent_betty-ford', '2005-01-25', 2005, 'political', 'public',
   'Term ended (2005)', 'Betty Ford: term ended on 2005-01-25.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_betty-ford_deathDate_2011_6', 'ent_betty-ford', '2011-07-08', 2011, 'death', 'life',
   'Died (2011)', 'Betty Ford: died on 2011-07-08.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_betty-ford_date_2011_7', 'ent_betty-ford', '2011-12-21', 2011, 'career', 'work',
   'Notable event (2011)', 'Betty Ford: notable event on 2011-12-21.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bill-clinton_birthDate_1946_0', 'ent_bill-clinton', '1946-08-19', 1946, 'birth', 'life',
   'Born (1946)', 'Bill Clinton: born on 1946-08-19.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bill-clinton_spouse_1975_1', 'ent_bill-clinton', '1975-10-11', 1975, 'personal_life', 'life',
   'Marriage (1975)', 'Bill Clinton: marriage on 1975-10-11.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bill-clinton_termStart_1977_2', 'ent_bill-clinton', '1977-01-03', 1977, 'political', 'public',
   'Term started (1977)', 'Bill Clinton: term started on 1977-01-03.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bill-clinton_termEnd_1979_3', 'ent_bill-clinton', '1979-01-09', 1979, 'political', 'public',
   'Term ended (1979)', 'Bill Clinton: term ended on 1979-01-09.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bill-clinton_termEnd_1981_4', 'ent_bill-clinton', '1981-01-19', 1981, 'political', 'public',
   'Term ended (1981)', 'Bill Clinton: term ended on 1981-01-19.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bill-clinton_termStart_1983_5', 'ent_bill-clinton', '1983-01-11', 1983, 'political', 'public',
   'Term started (1983)', 'Bill Clinton: term started on 1983-01-11.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bill-clinton_termEnd_1992_6', 'ent_bill-clinton', '1992-12-12', 1992, 'political', 'public',
   'Term ended (1992)', 'Bill Clinton: term ended on 1992-12-12.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bill-clinton_termStart_1993_7', 'ent_bill-clinton', '1993-01-20', 1993, 'political', 'public',
   'Term started (1993)', 'Bill Clinton: term started on 1993-01-20.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bill-clinton_termEnd_2001_8', 'ent_bill-clinton', '2001-01-20', 2001, 'political', 'public',
   'Term ended (2001)', 'Bill Clinton: term ended on 2001-01-20.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bill-clinton_date_2017_9', 'ent_bill-clinton', '2017-03-13', 2017, 'career', 'work',
   'Notable event (2017)', 'Bill Clinton: notable event on 2017-03-13.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bill-gates_birthDate_1955_0', 'ent_bill-gates', '1955-10-28', 1955, 'birth', 'life',
   'Born (1955)', 'Bill Gates: born on 1955-10-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bill-gates_birthYear_1955_1', 'ent_bill-gates', '1955', 1955, 'career', 'work',
   'Notable event (1955)', 'Bill Gates: notable event on 1955.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bill-gates_activeYearsStartYear_1972_2', 'ent_bill-gates', '1972', 1972, 'career', 'work',
   'Notable event (1972)', 'Bill Gates: notable event on 1972.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bill-russell_birthDate_1934_0', 'ent_bill-russell', '1934-02-12', 1934, 'birth', 'life',
   'Born (1934)', 'Bill Russell: born on 1934-02-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bill-russell_activeYearsStartYear_1956_1', 'ent_bill-russell', '1956', 1956, 'career', 'work',
   'Notable event (1956)', 'Bill Russell: notable event on 1956.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bill-russell_activeYearsEndYear_1969_2', 'ent_bill-russell', '1969', 1969, 'career', 'work',
   'Notable event (1969)', 'Bill Russell: notable event on 1969.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bill-russell_deathDate_2022_3', 'ent_bill-russell', '2022-07-31', 2022, 'death', 'life',
   'Died (2022)', 'Bill Russell: died on 2022-07-31.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billie-eilish_birthDate_2001_0', 'ent_billie-eilish', '2001-12-18', 2001, 'birth', 'life',
   'Born (2001)', 'Billie Eilish: born on 2001-12-18.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billie-eilish_birthYear_2001_1', 'ent_billie-eilish', '2001', 2001, 'career', 'work',
   'Notable event (2001)', 'Billie Eilish: notable event on 2001.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billie-eilish_activeYearsStartYear_2015_2', 'ent_billie-eilish', '2015', 2015, 'career', 'work',
   'Notable event (2015)', 'Billie Eilish: notable event on 2015.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billie-holiday_birthDate_1915_0', 'ent_billie-holiday', '1915-04-07', 1915, 'birth', 'life',
   'Born (1915)', 'Billie Holiday: born on 1915-04-07.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billie-holiday_birthYear_1915_1', 'ent_billie-holiday', '1915', 1915, 'career', 'work',
   'Notable event (1915)', 'Billie Holiday: notable event on 1915.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billie-holiday_activeYearsStartYear_1930_2', 'ent_billie-holiday', '1930', 1930, 'career', 'work',
   'Notable event (1930)', 'Billie Holiday: notable event on 1930.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billie-holiday_deathDate_1959_3', 'ent_billie-holiday', '1959-07-17', 1959, 'death', 'life',
   'Died (1959)', 'Billie Holiday: died on 1959-07-17.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billie-holiday_activeYearsEndYear_1959_4', 'ent_billie-holiday', '1959', 1959, 'career', 'work',
   'Notable event (1959)', 'Billie Holiday: notable event on 1959.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billie-jean-king_birthDate_1943_0', 'ent_billie-jean-king', '1943-11-22', 1943, 'birth', 'life',
   'Born (1943)', 'Billie Jean King: born on 1943-11-22.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billie-jean-king_birthYear_1943_1', 'ent_billie-jean-king', '1943', 1943, 'career', 'work',
   'Notable event (1943)', 'Billie Jean King: notable event on 1943.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billy-graham_birthDate_1918_0', 'ent_billy-graham', '1918-11-07', 1918, 'birth', 'life',
   'Born (1918)', 'Billy Graham: born on 1918-11-07.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billy-graham_spouse_2007_1', 'ent_billy-graham', '2007-06-14', 2007, 'personal_life', 'life',
   'Marriage (2007)', 'Billy Graham: marriage on 2007-06-14.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billy-graham_deathDate_2018_2', 'ent_billy-graham', '2018-02-21', 2018, 'death', 'life',
   'Died (2018)', 'Billy Graham: died on 2018-02-21.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billy-joel_birthDate_1949_0', 'ent_billy-joel', '1949-05-09', 1949, 'birth', 'life',
   'Born (1949)', 'Billy Joel: born on 1949-05-09.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billy-joel_birthYear_1949_1', 'ent_billy-joel', '1949', 1949, 'career', 'work',
   'Notable event (1949)', 'Billy Joel: notable event on 1949.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billy-joel_activeYearsStartYear_1965_2', 'ent_billy-joel', '1965', 1965, 'career', 'work',
   'Notable event (1965)', 'Billy Joel: notable event on 1965.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billy-joel_spouse_1982_3', 'ent_billy-joel', '1982-07-20', 1982, 'personal_life', 'life',
   'Marriage (1982)', 'Billy Joel: marriage on 1982-07-20.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billy-joel_spouse_1994_4', 'ent_billy-joel', '1994-08-26', 1994, 'personal_life', 'life',
   'Marriage (1994)', 'Billy Joel: marriage on 1994-08-26.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billy-joel_spouse_2004_5', 'ent_billy-joel', '2004-10-02', 2004, 'personal_life', 'life',
   'Marriage (2004)', 'Billy Joel: marriage on 2004-10-02.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billy-joel_spouse_2009_6', 'ent_billy-joel', '2009-06-17', 2009, 'personal_life', 'life',
   'Marriage (2009)', 'Billy Joel: marriage on 2009-06-17.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billy-joel_spouse_2015_7', 'ent_billy-joel', '2015-07-04', 2015, 'personal_life', 'life',
   'Marriage (2015)', 'Billy Joel: marriage on 2015-07-04.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billy-wilder_birthDate_1906_0', 'ent_billy-wilder', '1906-06-22', 1906, 'birth', 'life',
   'Born (1906)', 'Billy Wilder: born on 1906-06-22.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_billy-wilder_deathDate_2002_1', 'ent_billy-wilder', '2002-03-27', 2002, 'death', 'life',
   'Died (2002)', 'Billy Wilder: died on 2002-03-27.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bing-crosby_birthDate_1903_0', 'ent_bing-crosby', '1903-05-03', 1903, 'birth', 'life',
   'Born (1903)', 'Bing Crosby: born on 1903-05-03.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bing-crosby_birthYear_1903_1', 'ent_bing-crosby', '1903', 1903, 'career', 'work',
   'Notable event (1903)', 'Bing Crosby: notable event on 1903.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bing-crosby_activeYearsStartYear_1923_2', 'ent_bing-crosby', '1923', 1923, 'career', 'work',
   'Notable event (1923)', 'Bing Crosby: notable event on 1923.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bing-crosby_deathDate_1977_3', 'ent_bing-crosby', '1977-10-14', 1977, 'death', 'life',
   'Died (1977)', 'Bing Crosby: died on 1977-10-14.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bing-crosby_activeYearsEndYear_1977_4', 'ent_bing-crosby', '1977', 1977, 'career', 'work',
   'Notable event (1977)', 'Bing Crosby: notable event on 1977.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_biz-stone_birthDate_1974_0', 'ent_biz-stone', '1974-03-10', 1974, 'birth', 'life',
   'Born (1974)', 'Biz Stone: born on 1974-03-10.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_biz-stone_birthYear_1974_1', 'ent_biz-stone', '1974', 1974, 'career', 'work',
   'Notable event (1974)', 'Biz Stone: notable event on 1974.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bjarne-stroustrup_birthDate_1950_0', 'ent_bjarne-stroustrup', '1950-12-30', 1950, 'birth', 'life',
   'Born (1950)', 'Bjarne Stroustrup: born on 1950-12-30.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_black-elk_birthDate_1863_0', 'ent_black-elk', '1863-12-01', 1863, 'birth', 'life',
   'Born (1863)', 'Black Elk: born on 1863-12-01.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_black-elk_birthYear_1863_1', 'ent_black-elk', '1863', 1863, 'career', 'work',
   'Notable event (1863)', 'Black Elk: notable event on 1863.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_black-elk_deathDate_1950_2', 'ent_black-elk', '1950-08-19', 1950, 'death', 'life',
   'Died (1950)', 'Black Elk: died on 1950-08-19.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_black-elk_deathYear_1950_3', 'ent_black-elk', '1950', 1950, 'career', 'work',
   'Notable event (1950)', 'Black Elk: notable event on 1950.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_black-elk_date_2018_4', 'ent_black-elk', '2018-04-25', 2018, 'career', 'work',
   'Notable event (2018)', 'Black Elk: notable event on 2018-04-25.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_blake-shelton_birthDate_1976_0', 'ent_blake-shelton', '1976-06-18', 1976, 'birth', 'life',
   'Born (1976)', 'Blake Shelton: born on 1976-06-18.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_blake-shelton_birthYear_1976_1', 'ent_blake-shelton', '1976', 1976, 'career', 'work',
   'Notable event (1976)', 'Blake Shelton: notable event on 1976.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_blake-shelton_activeYearsStartYear_2001_2', 'ent_blake-shelton', '2001', 2001, 'career', 'work',
   'Notable event (2001)', 'Blake Shelton: notable event on 2001.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_blake-shelton_spouse_2011_3', 'ent_blake-shelton', '2011-05-14', 2011, 'personal_life', 'life',
   'Marriage (2011)', 'Blake Shelton: marriage on 2011-05-14.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_blake-shelton_spouse_2015_4', 'ent_blake-shelton', '2015-07-20', 2015, 'personal_life', 'life',
   'Marriage (2015)', 'Blake Shelton: marriage on 2015-07-20.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_blake-shelton_years_2015_5', 'ent_blake-shelton', '2015-01-24', 2015, 'career', 'work',
   'Notable event (2015)', 'Blake Shelton: notable event on 2015-01-24.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_blake-shelton_spouse_2021_6', 'ent_blake-shelton', '2021-07-03', 2021, 'personal_life', 'life',
   'Marriage (2021)', 'Blake Shelton: marriage on 2021-07-03.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bob-fosse_birthDate_1927_0', 'ent_bob-fosse', '1927-06-23', 1927, 'birth', 'life',
   'Born (1927)', 'Bob Fosse: born on 1927-06-23.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bob-fosse_birthYear_1927_1', 'ent_bob-fosse', '1927', 1927, 'career', 'work',
   'Notable event (1927)', 'Bob Fosse: notable event on 1927.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bob-fosse_activeYearsStartYear_1947_2', 'ent_bob-fosse', '1947', 1947, 'career', 'work',
   'Notable event (1947)', 'Bob Fosse: notable event on 1947.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bob-fosse_deathDate_1987_3', 'ent_bob-fosse', '1987-09-23', 1987, 'death', 'life',
   'Died (1987)', 'Bob Fosse: died on 1987-09-23.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bob-fosse_activeYearsEndYear_1987_4', 'ent_bob-fosse', '1987', 1987, 'career', 'work',
   'Notable event (1987)', 'Bob Fosse: notable event on 1987.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bob-gibson_birthDate_1935_0', 'ent_bob-gibson', '1935-11-09', 1935, 'birth', 'life',
   'Born (1935)', 'Bob Gibson: born on 1935-11-09.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bob-gibson_years_1971_1', 'ent_bob-gibson', '1971-08-14', 1971, 'career', 'work',
   'Notable event (1971)', 'Bob Gibson: notable event on 1971-08-14.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bob-gibson_deathDate_2020_2', 'ent_bob-gibson', '2020-10-02', 2020, 'death', 'life',
   'Died (2020)', 'Bob Gibson: died on 2020-10-02.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bobby-murphy_birthDate_1988_0', 'ent_bobby-murphy', '1988-07-19', 1988, 'birth', 'life',
   'Born (1988)', 'Bobby Murphy: born on 1988-07-19.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bobby-murphy_birthYear_1988_1', 'ent_bobby-murphy', '1988', 1988, 'career', 'work',
   'Notable event (1988)', 'Bobby Murphy: notable event on 1988.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bobby-murphy_activeYearsStartYear_2011_2', 'ent_bobby-murphy', '2011', 2011, 'career', 'work',
   'Notable event (2011)', 'Bobby Murphy: notable event on 2011.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_brad-paisley_birthDate_1972_0', 'ent_brad-paisley', '1972-10-28', 1972, 'birth', 'life',
   'Born (1972)', 'Brad Paisley: born on 1972-10-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_brad-paisley_birthYear_1972_1', 'ent_brad-paisley', '1972', 1972, 'career', 'work',
   'Notable event (1972)', 'Brad Paisley: notable event on 1972.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_brad-paisley_date_2017_2', 'ent_brad-paisley', '2017-06-22', 2017, 'career', 'work',
   'Notable event (2017)', 'Brad Paisley: notable event on 2017-06-22.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_brad-pitt_birthDate_1963_0', 'ent_brad-pitt', '1963-12-18', 1963, 'birth', 'life',
   'Born (1963)', 'Brad Pitt: born on 1963-12-18.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_brad-pitt_birthYear_1963_1', 'ent_brad-pitt', '1963', 1963, 'career', 'work',
   'Notable event (1963)', 'Brad Pitt: notable event on 1963.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_brad-pitt_activeYearsStartYear_1987_2', 'ent_brad-pitt', '1987', 1987, 'career', 'work',
   'Notable event (1987)', 'Brad Pitt: notable event on 1987.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_brett-kavanaugh_birthDate_1965_0', 'ent_brett-kavanaugh', '1965-02-12', 1965, 'birth', 'life',
   'Born (1965)', 'Brett Kavanaugh: born on 1965-02-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_brett-kavanaugh_termStart_2003_1', 'ent_brett-kavanaugh', '2003-06-06', 2003, 'political', 'public',
   'Term started (2003)', 'Brett Kavanaugh: term started on 2003-06-06.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_brett-kavanaugh_termEnd_2006_2', 'ent_brett-kavanaugh', '2006-05-30', 2006, 'political', 'public',
   'Term ended (2006)', 'Brett Kavanaugh: term ended on 2006-05-30.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_brett-kavanaugh_termEnd_2018_3', 'ent_brett-kavanaugh', '2018-10-06', 2018, 'political', 'public',
   'Term ended (2018)', 'Brett Kavanaugh: term ended on 2018-10-06.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_brian-chesky_birthDate_1981_0', 'ent_brian-chesky', '1981-08-29', 1981, 'birth', 'life',
   'Born (1981)', 'Brian Chesky: born on 1981-08-29.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_brian-chesky_birthYear_1981_1', 'ent_brian-chesky', '1981', 1981, 'career', 'work',
   'Notable event (1981)', 'Brian Chesky: notable event on 1981.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_brian-de-palma_birthDate_1940_0', 'ent_brian-de-palma', '1940-09-11', 1940, 'birth', 'life',
   'Born (1940)', 'Brian De Palma: born on 1940-09-11.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_brian-de-palma_birthYear_1940_1', 'ent_brian-de-palma', '1940', 1940, 'career', 'work',
   'Notable event (1940)', 'Brian De Palma: notable event on 1940.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_brian-de-palma_activeYearsStartYear_1960_2', 'ent_brian-de-palma', '1960', 1960, 'career', 'work',
   'Notable event (1960)', 'Brian De Palma: notable event on 1960.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_brian-kernighan_birthDate_1942_0', 'ent_brian-kernighan', '1942-01-30', 1942, 'birth', 'life',
   'Born (1942)', 'Brian Kernighan: born on 1942-01-30.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_britney-spears_birthDate_1981_0', 'ent_britney-spears', '1981-12-02', 1981, 'birth', 'life',
   'Born (1981)', 'Britney Spears: born on 1981-12-02.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_britney-spears_birthYear_1981_1', 'ent_britney-spears', '1981', 1981, 'career', 'work',
   'Notable event (1981)', 'Britney Spears: notable event on 1981.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_britney-spears_activeYearsStartYear_1992_2', 'ent_britney-spears', '1992', 1992, 'career', 'work',
   'Notable event (1992)', 'Britney Spears: notable event on 1992.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bruce-springsteen_birthDate_1949_0', 'ent_bruce-springsteen', '1949-09-23', 1949, 'birth', 'life',
   'Born (1949)', 'Bruce Springsteen: born on 1949-09-23.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_bruce-springsteen_birthYear_1949_1', 'ent_bruce-springsteen', '1949', 1949, 'career', 'work',
   'Notable event (1949)', 'Bruce Springsteen: notable event on 1949.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_buster-keaton_birthDate_1895_0', 'ent_buster-keaton', '1895-10-04', 1895, 'birth', 'life',
   'Born (1895)', 'Buster Keaton: born on 1895-10-04.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_buster-keaton_birthYear_1895_1', 'ent_buster-keaton', '1895', 1895, 'career', 'work',
   'Notable event (1895)', 'Buster Keaton: notable event on 1895.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_buster-keaton_activeYearsStartYear_1899_2', 'ent_buster-keaton', '1899', 1899, 'career', 'work',
   'Notable event (1899)', 'Buster Keaton: notable event on 1899.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_buster-keaton_deathDate_1966_3', 'ent_buster-keaton', '1966-02-01', 1966, 'death', 'life',
   'Died (1966)', 'Buster Keaton: died on 1966-02-01.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_buster-keaton_activeYearsEndYear_1966_4', 'ent_buster-keaton', '1966', 1966, 'career', 'work',
   'Notable event (1966)', 'Buster Keaton: notable event on 1966.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_buster-keaton_date_2021_5', 'ent_buster-keaton', '2021-01-27', 2021, 'career', 'work',
   'Notable event (2021)', 'Buster Keaton: notable event on 2021-01-27.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_buzz-aldrin_birthDate_1930_0', 'ent_buzz-aldrin', '1930-01-20', 1930, 'birth', 'life',
   'Born (1930)', 'Buzz Aldrin: born on 1930-01-20.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_buzz-aldrin_retired_1971_1', 'ent_buzz-aldrin', '1971-07-01', 1971, 'career', 'work',
   'Notable event (1971)', 'Buzz Aldrin: notable event on 1971-07-01.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_buzz-aldrin_date_2015_2', 'ent_buzz-aldrin', '2015-09-04', 2015, 'career', 'work',
   'Notable event (2015)', 'Buzz Aldrin: notable event on 2015-09-04.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_calvin-coolidge_birthDate_1872_0', 'ent_calvin-coolidge', '1872-07-04', 1872, 'birth', 'life',
   'Born (1872)', 'Calvin Coolidge: born on 1872-07-04.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_calvin-coolidge_spouse_1905_1', 'ent_calvin-coolidge', '1905-10-04', 1905, 'personal_life', 'life',
   'Marriage (1905)', 'Calvin Coolidge: marriage on 1905-10-04.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_calvin-coolidge_termStart_1907_2', 'ent_calvin-coolidge', '1907-01-02', 1907, 'political', 'public',
   'Term started (1907)', 'Calvin Coolidge: term started on 1907-01-02.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_calvin-coolidge_termEnd_1909_3', 'ent_calvin-coolidge', '1909-01-06', 1909, 'political', 'public',
   'Term ended (1909)', 'Calvin Coolidge: term ended on 1909-01-06.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_calvin-coolidge_termStart_1910_4', 'ent_calvin-coolidge', '1910-01-03', 1910, 'political', 'public',
   'Term started (1910)', 'Calvin Coolidge: term started on 1910-01-03.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_calvin-coolidge_termEnd_1912_5', 'ent_calvin-coolidge', '1912-01-01', 1912, 'political', 'public',
   'Term ended (1912)', 'Calvin Coolidge: term ended on 1912-01-01.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_calvin-coolidge_termStart_1914_6', 'ent_calvin-coolidge', '1914-01-07', 1914, 'political', 'public',
   'Term started (1914)', 'Calvin Coolidge: term started on 1914-01-07.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_calvin-coolidge_termEnd_1915_7', 'ent_calvin-coolidge', '1915-01-06', 1915, 'political', 'public',
   'Term ended (1915)', 'Calvin Coolidge: term ended on 1915-01-06.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_calvin-coolidge_termStart_1916_8', 'ent_calvin-coolidge', '1916-01-06', 1916, 'political', 'public',
   'Term started (1916)', 'Calvin Coolidge: term started on 1916-01-06.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_calvin-coolidge_termEnd_1919_9', 'ent_calvin-coolidge', '1919-01-02', 1919, 'political', 'public',
   'Term ended (1919)', 'Calvin Coolidge: term ended on 1919-01-02.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_calvin-coolidge_termEnd_1921_10', 'ent_calvin-coolidge', '1921-01-06', 1921, 'political', 'public',
   'Term ended (1921)', 'Calvin Coolidge: term ended on 1921-01-06.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_calvin-coolidge_termEnd_1923_11', 'ent_calvin-coolidge', '1923-08-02', 1923, 'political', 'public',
   'Term ended (1923)', 'Calvin Coolidge: term ended on 1923-08-02.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_calvin-coolidge_termEnd_1929_12', 'ent_calvin-coolidge', '1929-03-04', 1929, 'political', 'public',
   'Term ended (1929)', 'Calvin Coolidge: term ended on 1929-03-04.', 'src_dbpedia', 0.8, 12, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_calvin-coolidge_deathDate_1933_13', 'ent_calvin-coolidge', '1933-01-05', 1933, 'death', 'life',
   'Died (1933)', 'Calvin Coolidge: died on 1933-01-05.', 'src_dbpedia', 0.8, 13, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_cardi-b_birthDate_1992_0', 'ent_cardi-b', '1992-10-11', 1992, 'birth', 'life',
   'Born (1992)', 'Cardi B: born on 1992-10-11.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_cardi-b_birthYear_1992_1', 'ent_cardi-b', '1992', 1992, 'career', 'work',
   'Notable event (1992)', 'Cardi B: notable event on 1992.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_cardi-b_activeYearsStartYear_2015_2', 'ent_cardi-b', '2015', 2015, 'career', 'work',
   'Notable event (2015)', 'Cardi B: notable event on 2015.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_carl-lewis_birthDate_1961_0', 'ent_carl-lewis', '1961-07-01', 1961, 'birth', 'life',
   'Born (1961)', 'Carl Lewis: born on 1961-07-01.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_carly-simon_birthDate_1943_0', 'ent_carly-simon', '1943-06-25', 1943, 'birth', 'life',
   'Born (1943)', 'Carly Simon: born on 1943-06-25.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_carly-simon_birthYear_1943_1', 'ent_carly-simon', '1943', 1943, 'career', 'work',
   'Notable event (1943)', 'Carly Simon: notable event on 1943.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_carly-simon_activeYearsStartYear_1963_2', 'ent_carly-simon', '1963', 1963, 'career', 'work',
   'Notable event (1963)', 'Carly Simon: notable event on 1963.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_carole-king_birthDate_1942_0', 'ent_carole-king', '1942-02-09', 1942, 'birth', 'life',
   'Born (1942)', 'Carole King: born on 1942-02-09.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_carole-king_birthYear_1942_1', 'ent_carole-king', '1942', 1942, 'career', 'work',
   'Notable event (1942)', 'Carole King: notable event on 1942.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_carole-king_activeYearsStartYear_1958_2', 'ent_carole-king', '1958', 1958, 'career', 'work',
   'Notable event (1958)', 'Carole King: notable event on 1958.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_caroline-harrison_birthDate_1832_0', 'ent_caroline-harrison', '1832-10-01', 1832, 'birth', 'life',
   'Born (1832)', 'Caroline Harrison: born on 1832-10-01.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_caroline-harrison_termStart_1889_1', 'ent_caroline-harrison', '1889-03-04', 1889, 'political', 'public',
   'Term started (1889)', 'Caroline Harrison: term started on 1889-03-04.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_caroline-harrison_deathDate_1892_2', 'ent_caroline-harrison', '1892-10-25', 1892, 'death', 'life',
   'Died (1892)', 'Caroline Harrison: died on 1892-10-25.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_caroline-harrison_termEnd_1892_3', 'ent_caroline-harrison', '1892-10-25', 1892, 'political', 'public',
   'Term ended (1892)', 'Caroline Harrison: term ended on 1892-10-25.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_caroline-harrison_date_2012_4', 'ent_caroline-harrison', '2012-05-09', 2012, 'career', 'work',
   'Notable event (2012)', 'Caroline Harrison: notable event on 2012-05-09.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_carrie-underwood_birthDate_1983_0', 'ent_carrie-underwood', '1983-03-10', 1983, 'birth', 'life',
   'Born (1983)', 'Carrie Underwood: born on 1983-03-10.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_carrie-underwood_activeYearsStartYear_2005_1', 'ent_carrie-underwood', '2005', 2005, 'career', 'work',
   'Notable event (2005)', 'Carrie Underwood: notable event on 2005.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_cate-blanchett_birthDate_1969_0', 'ent_cate-blanchett', '1969-05-14', 1969, 'birth', 'life',
   'Born (1969)', 'Cate Blanchett: born on 1969-05-14.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_celine-dion_birthDate_1968_0', 'ent_celine-dion', '1968-03-30', 1968, 'birth', 'life',
   'Born (1968)', 'Celine Dion: born on 1968-03-30.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_celine-dion_birthYear_1968_1', 'ent_celine-dion', '1968', 1968, 'career', 'work',
   'Notable event (1968)', 'Celine Dion: notable event on 1968.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_celine-dion_activeYearsStartYear_1980_2', 'ent_celine-dion', '1980', 1980, 'career', 'work',
   'Notable event (1980)', 'Celine Dion: notable event on 1980.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_celine-dion_date_2011_3', 'ent_celine-dion', '2011-08-07', 2011, 'career', 'work',
   'Notable event (2011)', 'Celine Dion: notable event on 2011-08-07.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_celine-dion_date_2012_4', 'ent_celine-dion', '2012-10-23', 2012, 'career', 'work',
   'Notable event (2012)', 'Celine Dion: notable event on 2012-10-23.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chad-hurley_birthDate_1977_0', 'ent_chad-hurley', '1977-01-24', 1977, 'birth', 'life',
   'Born (1977)', 'Chad Hurley: born on 1977-01-24.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chad-hurley_birthYear_1977_1', 'ent_chad-hurley', '1977', 1977, 'career', 'work',
   'Notable event (1977)', 'Chad Hurley: notable event on 1977.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-curtis_birthDate_1860_0', 'ent_charles-curtis', '1860-01-25', 1860, 'birth', 'life',
   'Born (1860)', 'Charles Curtis: born on 1860-01-25.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-curtis_termStart_1893_1', 'ent_charles-curtis', '1893-03-04', 1893, 'political', 'public',
   'Term started (1893)', 'Charles Curtis: term started on 1893-03-04.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-curtis_termEnd_1907_2', 'ent_charles-curtis', '1907-01-28', 1907, 'political', 'public',
   'Term ended (1907)', 'Charles Curtis: term ended on 1907-01-28.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-curtis_termEnd_1913_3', 'ent_charles-curtis', '1913-03-03', 1913, 'political', 'public',
   'Term ended (1913)', 'Charles Curtis: term ended on 1913-03-03.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-curtis_termStart_1915_4', 'ent_charles-curtis', '1915-03-04', 1915, 'political', 'public',
   'Term started (1915)', 'Charles Curtis: term started on 1915-03-04.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-curtis_termEnd_1929_5', 'ent_charles-curtis', '1929-03-03', 1929, 'political', 'public',
   'Term ended (1929)', 'Charles Curtis: term ended on 1929-03-03.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-curtis_termEnd_1933_6', 'ent_charles-curtis', '1933-03-04', 1933, 'political', 'public',
   'Term ended (1933)', 'Charles Curtis: term ended on 1933-03-04.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-curtis_deathDate_1936_7', 'ent_charles-curtis', '1936-02-08', 1936, 'death', 'life',
   'Died (1936)', 'Charles Curtis: died on 1936-02-08.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-curtis_date_2011_8', 'ent_charles-curtis', '2011-02-02', 2011, 'career', 'work',
   'Notable event (2011)', 'Charles Curtis: notable event on 2011-02-02.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-curtis_date_2021_9', 'ent_charles-curtis', '2021-08-13', 2021, 'career', 'work',
   'Notable event (2021)', 'Charles Curtis: notable event on 2021-08-13.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-duke_birthDate_1935_0', 'ent_charles-duke', '1935-10-03', 1935, 'birth', 'life',
   'Born (1935)', 'Charles Duke: born on 1935-10-03.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-duke_retired_1976_1', 'ent_charles-duke', '1976-01-01', 1976, 'career', 'work',
   'Notable event (1976)', 'Charles Duke: notable event on 1976-01-01.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-evans-hughes_birthDate_1862_0', 'ent_charles-evans-hughes', '1862-04-11', 1862, 'birth', 'life',
   'Born (1862)', 'Charles Evans Hughes: born on 1862-04-11.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-evans-hughes_spouse_1888_1', 'ent_charles-evans-hughes', '1888-12-05', 1888, 'personal_life', 'life',
   'Marriage (1888)', 'Charles Evans Hughes: marriage on 1888-12-05.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-evans-hughes_termStart_1907_2', 'ent_charles-evans-hughes', '1907-01-01', 1907, 'political', 'public',
   'Term started (1907)', 'Charles Evans Hughes: term started on 1907-01-01.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-evans-hughes_termEnd_1910_3', 'ent_charles-evans-hughes', '1910-10-06', 1910, 'political', 'public',
   'Term ended (1910)', 'Charles Evans Hughes: term ended on 1910-10-06.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-evans-hughes_termEnd_1916_4', 'ent_charles-evans-hughes', '1916-06-10', 1916, 'political', 'public',
   'Term ended (1916)', 'Charles Evans Hughes: term ended on 1916-06-10.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-evans-hughes_termStart_1921_5', 'ent_charles-evans-hughes', '1921-03-05', 1921, 'political', 'public',
   'Term started (1921)', 'Charles Evans Hughes: term started on 1921-03-05.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-evans-hughes_years_1924_6', 'ent_charles-evans-hughes', '1924-12-29', 1924, 'career', 'work',
   'Notable event (1924)', 'Charles Evans Hughes: notable event on 1924-12-29.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-evans-hughes_termEnd_1925_7', 'ent_charles-evans-hughes', '1925-03-04', 1925, 'political', 'public',
   'Term ended (1925)', 'Charles Evans Hughes: term ended on 1925-03-04.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-evans-hughes_termStart_1928_8', 'ent_charles-evans-hughes', '1928-09-08', 1928, 'political', 'public',
   'Term started (1928)', 'Charles Evans Hughes: term started on 1928-09-08.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-evans-hughes_termEnd_1930_9', 'ent_charles-evans-hughes', '1930-02-15', 1930, 'political', 'public',
   'Term ended (1930)', 'Charles Evans Hughes: term ended on 1930-02-15.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-evans-hughes_termEnd_1941_10', 'ent_charles-evans-hughes', '1941-06-30', 1941, 'political', 'public',
   'Term ended (1941)', 'Charles Evans Hughes: term ended on 1941-06-30.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-evans-hughes_spouse_1945_11', 'ent_charles-evans-hughes', '1945-12-06', 1945, 'personal_life', 'life',
   'Marriage (1945)', 'Charles Evans Hughes: marriage on 1945-12-06.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-evans-hughes_deathDate_1948_12', 'ent_charles-evans-hughes', '1948-08-27', 1948, 'death', 'life',
   'Died (1948)', 'Charles Evans Hughes: died on 1948-08-27.', 'src_dbpedia', 0.8, 12, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-hamilton-houston_birthDate_1895_0', 'ent_charles-hamilton-houston', '1895-09-03', 1895, 'birth', 'life',
   'Born (1895)', 'Charles Hamilton Houston: born on 1895-09-03.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-hamilton-houston_birthYear_1895_1', 'ent_charles-hamilton-houston', '1895', 1895, 'career', 'work',
   'Notable event (1895)', 'Charles Hamilton Houston: notable event on 1895.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-hamilton-houston_deathDate_1950_2', 'ent_charles-hamilton-houston', '1950-04-22', 1950, 'death', 'life',
   'Died (1950)', 'Charles Hamilton Houston: died on 1950-04-22.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-hamilton-houston_deathYear_1950_3', 'ent_charles-hamilton-houston', '1950', 1950, 'career', 'work',
   'Notable event (1950)', 'Charles Hamilton Houston: notable event on 1950.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-hamilton-houston_date_2015_4', 'ent_charles-hamilton-houston', '2015-09-12', 2015, 'career', 'work',
   'Notable event (2015)', 'Charles Hamilton Houston: notable event on 2015-09-12.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-mingus_birthDate_1922_0', 'ent_charles-mingus', '1922-04-22', 1922, 'birth', 'life',
   'Born (1922)', 'Charles Mingus: born on 1922-04-22.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-mingus_activeYearsStartYear_1943_1', 'ent_charles-mingus', '1943', 1943, 'career', 'work',
   'Notable event (1943)', 'Charles Mingus: notable event on 1943.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-mingus_deathDate_1979_2', 'ent_charles-mingus', '1979-01-05', 1979, 'death', 'life',
   'Died (1979)', 'Charles Mingus: died on 1979-01-05.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charles-mingus_activeYearsEndYear_1979_3', 'ent_charles-mingus', '1979', 1979, 'career', 'work',
   'Notable event (1979)', 'Charles Mingus: notable event on 1979.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charlie-chaplin_birthDate_1889_0', 'ent_charlie-chaplin', '1889-04-16', 1889, 'birth', 'life',
   'Born (1889)', 'Charlie Chaplin: born on 1889-04-16.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charlie-chaplin_birthYear_1889_1', 'ent_charlie-chaplin', '1889', 1889, 'career', 'work',
   'Notable event (1889)', 'Charlie Chaplin: notable event on 1889.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charlie-chaplin_activeYearsStartYear_1899_2', 'ent_charlie-chaplin', '1899', 1899, 'career', 'work',
   'Notable event (1899)', 'Charlie Chaplin: notable event on 1899.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charlie-chaplin_activeYearsEndYear_1975_3', 'ent_charlie-chaplin', '1975', 1975, 'career', 'work',
   'Notable event (1975)', 'Charlie Chaplin: notable event on 1975.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charlie-chaplin_deathDate_1977_4', 'ent_charlie-chaplin', '1977-12-25', 1977, 'death', 'life',
   'Died (1977)', 'Charlie Chaplin: died on 1977-12-25.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charlie-chaplin_deathYear_1977_5', 'ent_charlie-chaplin', '1977', 1977, 'career', 'work',
   'Notable event (1977)', 'Charlie Chaplin: notable event on 1977.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charlie-parker_birthDate_1920_0', 'ent_charlie-parker', '1920-08-29', 1920, 'birth', 'life',
   'Born (1920)', 'Charlie Parker: born on 1920-08-29.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charlie-parker_activeYearsStartYear_1937_1', 'ent_charlie-parker', '1937', 1937, 'career', 'work',
   'Notable event (1937)', 'Charlie Parker: notable event on 1937.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charlie-parker_deathDate_1955_2', 'ent_charlie-parker', '1955-03-12', 1955, 'death', 'life',
   'Died (1955)', 'Charlie Parker: died on 1955-03-12.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charlie-parker_activeYearsEndYear_1955_3', 'ent_charlie-parker', '1955', 1955, 'career', 'work',
   'Notable event (1955)', 'Charlie Parker: notable event on 1955.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charlie-parker_added_1994_4', 'ent_charlie-parker', '1994-04-07', 1994, 'career', 'work',
   'Notable event (1994)', 'Charlie Parker: notable event on 1994-04-07.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charlie-parker_designatedOther2Date_1999_5', 'ent_charlie-parker', '1999-05-18', 1999, 'career', 'work',
   'Notable event (1999)', 'Charlie Parker: notable event on 1999-05-18.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_charlie-parker_date_2021_6', 'ent_charlie-parker', '2021-05-14', 2021, 'career', 'work',
   'Notable event (2021)', 'Charlie Parker: notable event on 2021-05-14.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chester-bennington_birthDate_1976_0', 'ent_chester-bennington', '1976-03-20', 1976, 'birth', 'life',
   'Born (1976)', 'Chester Bennington: born on 1976-03-20.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chester-bennington_birthYear_1976_1', 'ent_chester-bennington', '1976', 1976, 'career', 'work',
   'Notable event (1976)', 'Chester Bennington: notable event on 1976.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chester-bennington_activeYearsStartYear_1992_2', 'ent_chester-bennington', '1992', 1992, 'career', 'work',
   'Notable event (1992)', 'Chester Bennington: notable event on 1992.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chester-bennington_deathDate_2017_3', 'ent_chester-bennington', '2017-07-20', 2017, 'death', 'life',
   'Died (2017)', 'Chester Bennington: died on 2017-07-20.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chester-bennington_activeYearsEndYear_2017_4', 'ent_chester-bennington', '2017', 2017, 'career', 'work',
   'Notable event (2017)', 'Chester Bennington: notable event on 2017.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chet-baker_birthDate_1929_0', 'ent_chet-baker', '1929-12-23', 1929, 'birth', 'life',
   'Born (1929)', 'Chet Baker: born on 1929-12-23.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chet-baker_activeYearsStartYear_1949_1', 'ent_chet-baker', '1949', 1949, 'career', 'work',
   'Notable event (1949)', 'Chet Baker: notable event on 1949.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chet-baker_deathDate_1988_2', 'ent_chet-baker', '1988-05-13', 1988, 'death', 'life',
   'Died (1988)', 'Chet Baker: died on 1988-05-13.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chet-baker_activeYearsEndYear_1988_3', 'ent_chet-baker', '1988', 1988, 'career', 'work',
   'Notable event (1988)', 'Chet Baker: notable event on 1988.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chick-corea_birthDate_1941_0', 'ent_chick-corea', '1941-06-12', 1941, 'birth', 'life',
   'Born (1941)', 'Chick Corea: born on 1941-06-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chick-corea_activeYearsStartYear_1962_1', 'ent_chick-corea', '1962', 1962, 'career', 'work',
   'Notable event (1962)', 'Chick Corea: notable event on 1962.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chick-corea_deathDate_2021_2', 'ent_chick-corea', '2021-02-09', 2021, 'death', 'life',
   'Died (2021)', 'Chick Corea: died on 2021-02-09.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chick-corea_activeYearsEndYear_2021_3', 'ent_chick-corea', '2021', 2021, 'career', 'work',
   'Notable event (2021)', 'Chick Corea: notable event on 2021.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chief-joseph_birthDate_1840_0', 'ent_chief-joseph', '1840-03-03', 1840, 'birth', 'life',
   'Born (1840)', 'Chief Joseph: born on 1840-03-03.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chief-joseph_birthYear_1840_1', 'ent_chief-joseph', '1840', 1840, 'career', 'work',
   'Notable event (1840)', 'Chief Joseph: notable event on 1840.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chief-joseph_deathDate_1904_2', 'ent_chief-joseph', '1904-09-21', 1904, 'death', 'life',
   'Died (1904)', 'Chief Joseph: died on 1904-09-21.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chief-joseph_deathYear_1904_3', 'ent_chief-joseph', '1904', 1904, 'career', 'work',
   'Notable event (1904)', 'Chief Joseph: notable event on 1904.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chris-cornell_birthDate_1964_0', 'ent_chris-cornell', '1964-07-20', 1964, 'birth', 'life',
   'Born (1964)', 'Chris Cornell: born on 1964-07-20.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chris-cornell_birthYear_1964_1', 'ent_chris-cornell', '1964', 1964, 'career', 'work',
   'Notable event (1964)', 'Chris Cornell: notable event on 1964.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chris-cornell_activeYearsStartYear_1983_2', 'ent_chris-cornell', '1983', 1983, 'career', 'work',
   'Notable event (1983)', 'Chris Cornell: notable event on 1983.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chris-cornell_deathDate_2017_3', 'ent_chris-cornell', '2017-05-18', 2017, 'death', 'life',
   'Died (2017)', 'Chris Cornell: died on 2017-05-18.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chris-cornell_activeYearsEndYear_2017_4', 'ent_chris-cornell', '2017', 2017, 'career', 'work',
   'Notable event (2017)', 'Chris Cornell: notable event on 2017.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chris-evert_birthDate_1954_0', 'ent_chris-evert', '1954-12-21', 1954, 'birth', 'life',
   'Born (1954)', 'Chris Evert: born on 1954-12-21.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chris-stapleton_birthDate_1978_0', 'ent_chris-stapleton', '1978-04-15', 1978, 'birth', 'life',
   'Born (1978)', 'Chris Stapleton: born on 1978-04-15.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_chris-stapleton_activeYearsStartYear_2001_1', 'ent_chris-stapleton', '2001', 2001, 'career', 'work',
   'Notable event (2001)', 'Chris Stapleton: notable event on 2001.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_christina-aguilera_birthDate_1980_0', 'ent_christina-aguilera', '1980-12-18', 1980, 'birth', 'life',
   'Born (1980)', 'Christina Aguilera: born on 1980-12-18.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_christina-aguilera_spouse_2005_1', 'ent_christina-aguilera', '2005-11-19', 2005, 'personal_life', 'life',
   'Marriage (2005)', 'Christina Aguilera: marriage on 2005-11-19.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_christina-aguilera_spouse_2011_2', 'ent_christina-aguilera', '2011-04-15', 2011, 'personal_life', 'life',
   'Marriage (2011)', 'Christina Aguilera: marriage on 2011-04-15.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_christopher-nolan_birthDate_1970_0', 'ent_christopher-nolan', '1970-07-30', 1970, 'birth', 'life',
   'Born (1970)', 'Christopher Nolan: born on 1970-07-30.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_christopher-nolan_birthYear_1970_1', 'ent_christopher-nolan', '1970', 1970, 'career', 'work',
   'Notable event (1970)', 'Christopher Nolan: notable event on 1970.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_christopher-nolan_activeYearsStartYear_1993_2', 'ent_christopher-nolan', '1993', 1993, 'career', 'work',
   'Notable event (1993)', 'Christopher Nolan: notable event on 1993.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ciara_birthDate_1985_0', 'ent_ciara', '1985-10-25', 1985, 'birth', 'life',
   'Born (1985)', 'Ciara: born on 1985-10-25.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ciara_birthYear_1985_1', 'ent_ciara', '1985', 1985, 'career', 'work',
   'Notable event (1985)', 'Ciara: notable event on 1985.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ciara_activeYearsStartYear_2001_2', 'ent_ciara', '2001', 2001, 'career', 'work',
   'Notable event (2001)', 'Ciara: notable event on 2001.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_claes-oldenburg_birthDate_1929_0', 'ent_claes-oldenburg', '1929-01-28', 1929, 'birth', 'life',
   'Born (1929)', 'Claes Oldenburg: born on 1929-01-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_claes-oldenburg_deathDate_2022_1', 'ent_claes-oldenburg', '2022-07-18', 2022, 'death', 'life',
   'Died (2022)', 'Claes Oldenburg: died on 2022-07-18.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_clarence-thomas_birthDate_1948_0', 'ent_clarence-thomas', '1948-06-23', 1948, 'birth', 'life',
   'Born (1948)', 'Clarence Thomas: born on 1948-06-23.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_clarence-thomas_termStart_1981_1', 'ent_clarence-thomas', '1981-06-26', 1981, 'political', 'public',
   'Term started (1981)', 'Clarence Thomas: term started on 1981-06-26.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_clarence-thomas_termEnd_1982_2', 'ent_clarence-thomas', '1982-05-06', 1982, 'political', 'public',
   'Term ended (1982)', 'Clarence Thomas: term ended on 1982-05-06.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_clarence-thomas_termEnd_1990_3', 'ent_clarence-thomas', '1990-03-08', 1990, 'political', 'public',
   'Term ended (1990)', 'Clarence Thomas: term ended on 1990-03-08.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_clarence-thomas_termEnd_1991_4', 'ent_clarence-thomas', '1991-10-23', 1991, 'political', 'public',
   'Term ended (1991)', 'Clarence Thomas: term ended on 1991-10-23.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_claude-shannon_birthDate_1916_0', 'ent_claude-shannon', '1916-04-30', 1916, 'birth', 'life',
   'Born (1916)', 'Claude Shannon: born on 1916-04-30.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_claude-shannon_deathDate_2001_1', 'ent_claude-shannon', '2001-02-24', 2001, 'death', 'life',
   'Died (2001)', 'Claude Shannon: died on 2001-02-24.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_cokie-roberts_birthDate_1943_0', 'ent_cokie-roberts', '1943-12-27', 1943, 'birth', 'life',
   'Born (1943)', 'Cokie Roberts: born on 1943-12-27.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_cokie-roberts_birthYear_1943_1', 'ent_cokie-roberts', '1943', 1943, 'career', 'work',
   'Notable event (1943)', 'Cokie Roberts: notable event on 1943.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_cokie-roberts_date_2012_2', 'ent_cokie-roberts', '2012-02-05', 2012, 'career', 'work',
   'Notable event (2012)', 'Cokie Roberts: notable event on 2012-02-05.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_cokie-roberts_deathDate_2019_3', 'ent_cokie-roberts', '2019-09-17', 2019, 'death', 'life',
   'Died (2019)', 'Cokie Roberts: died on 2019-09-17.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_cokie-roberts_deathYear_2019_4', 'ent_cokie-roberts', '2019', 2019, 'career', 'work',
   'Notable event (2019)', 'Cokie Roberts: notable event on 2019.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_colin-powell_birthDate_1937_0', 'ent_colin-powell', '1937-04-05', 1937, 'birth', 'life',
   'Born (1937)', 'Colin Powell: born on 1937-04-05.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_colin-powell_spouse_1962_1', 'ent_colin-powell', '1962-08-25', 1962, 'personal_life', 'life',
   'Marriage (1962)', 'Colin Powell: marriage on 1962-08-25.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_colin-powell_termStart_1986_2', 'ent_colin-powell', '1986-12-02', 1986, 'political', 'public',
   'Term started (1986)', 'Colin Powell: term started on 1986-12-02.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_colin-powell_termEnd_1987_3', 'ent_colin-powell', '1987-11-23', 1987, 'political', 'public',
   'Term ended (1987)', 'Colin Powell: term ended on 1987-11-23.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_colin-powell_termEnd_1989_4', 'ent_colin-powell', '1989-01-20', 1989, 'political', 'public',
   'Term ended (1989)', 'Colin Powell: term ended on 1989-01-20.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_colin-powell_termEnd_1993_5', 'ent_colin-powell', '1993-09-30', 1993, 'political', 'public',
   'Term ended (1993)', 'Colin Powell: term ended on 1993-09-30.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_colin-powell_termStart_2001_6', 'ent_colin-powell', '2001-01-20', 2001, 'political', 'public',
   'Term started (2001)', 'Colin Powell: term started on 2001-01-20.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_colin-powell_termEnd_2005_7', 'ent_colin-powell', '2005-01-26', 2005, 'political', 'public',
   'Term ended (2005)', 'Colin Powell: term ended on 2005-01-26.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_colin-powell_deathDate_2021_8', 'ent_colin-powell', '2021-10-18', 2021, 'death', 'life',
   'Died (2021)', 'Colin Powell: died on 2021-10-18.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_condoleezza-rice_birthDate_1954_0', 'ent_condoleezza-rice', '1954-11-14', 1954, 'birth', 'life',
   'Born (1954)', 'Condoleezza Rice: born on 1954-11-14.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_condoleezza-rice_termStart_1993_1', 'ent_condoleezza-rice', '1993-09-01', 1993, 'political', 'public',
   'Term started (1993)', 'Condoleezza Rice: term started on 1993-09-01.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_condoleezza-rice_termEnd_1999_2', 'ent_condoleezza-rice', '1999-06-30', 1999, 'political', 'public',
   'Term ended (1999)', 'Condoleezza Rice: term ended on 1999-06-30.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_condoleezza-rice_termStart_2001_3', 'ent_condoleezza-rice', '2001-01-20', 2001, 'political', 'public',
   'Term started (2001)', 'Condoleezza Rice: term started on 2001-01-20.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_condoleezza-rice_termEnd_2005_4', 'ent_condoleezza-rice', '2005-01-26', 2005, 'political', 'public',
   'Term ended (2005)', 'Condoleezza Rice: term ended on 2005-01-26.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_condoleezza-rice_termEnd_2009_5', 'ent_condoleezza-rice', '2009-01-20', 2009, 'political', 'public',
   'Term ended (2009)', 'Condoleezza Rice: term ended on 2009-01-20.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_condoleezza-rice_date_2019_6', 'ent_condoleezza-rice', '2019-05-27', 2019, 'career', 'work',
   'Notable event (2019)', 'Condoleezza Rice: notable event on 2019-05-27.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_condoleezza-rice_termStart_2020_7', 'ent_condoleezza-rice', '2020-09-01', 2020, 'political', 'public',
   'Term started (2020)', 'Condoleezza Rice: term started on 2020-09-01.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_condoleezza-rice_date_2023_8', 'ent_condoleezza-rice', '2023-04-24', 2023, 'career', 'work',
   'Notable event (2023)', 'Condoleezza Rice: notable event on 2023-04-24.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_connie-chung_birthDate_1946_0', 'ent_connie-chung', '1946-08-20', 1946, 'birth', 'life',
   'Born (1946)', 'Connie Chung: born on 1946-08-20.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_connie-chung_date_2008_1', 'ent_connie-chung', '2008-11-03', 2008, 'career', 'work',
   'Notable event (2008)', 'Connie Chung: notable event on 2008-11-03.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_constance-baker-motley_birthDate_1921_0', 'ent_constance-baker-motley', '1921-09-14', 1921, 'birth', 'life',
   'Born (1921)', 'Constance Baker Motley: born on 1921-09-14.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_constance-baker-motley_termStart_1964_1', 'ent_constance-baker-motley', '1964-02-04', 1964, 'political', 'public',
   'Term started (1964)', 'Constance Baker Motley: term started on 1964-02-04.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_constance-baker-motley_termEnd_1965_2', 'ent_constance-baker-motley', '1965-02-23', 1965, 'political', 'public',
   'Term ended (1965)', 'Constance Baker Motley: term ended on 1965-02-23.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_constance-baker-motley_termEnd_1966_3', 'ent_constance-baker-motley', '1966-08-30', 1966, 'political', 'public',
   'Term ended (1966)', 'Constance Baker Motley: term ended on 1966-08-30.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_constance-baker-motley_termStart_1982_4', 'ent_constance-baker-motley', '1982-05-31', 1982, 'political', 'public',
   'Term started (1982)', 'Constance Baker Motley: term started on 1982-05-31.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_constance-baker-motley_termEnd_1986_5', 'ent_constance-baker-motley', '1986-09-30', 1986, 'political', 'public',
   'Term ended (1986)', 'Constance Baker Motley: term ended on 1986-09-30.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_constance-baker-motley_deathDate_2005_6', 'ent_constance-baker-motley', '2005-09-28', 2005, 'death', 'life',
   'Died (2005)', 'Constance Baker Motley: died on 2005-09-28.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_constance-baker-motley_termEnd_2005_7', 'ent_constance-baker-motley', '2005-09-28', 2005, 'political', 'public',
   'Term ended (2005)', 'Constance Baker Motley: term ended on 2005-09-28.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_cornelius-vanderbilt_birthDate_1794_0', 'ent_cornelius-vanderbilt', '1794-05-27', 1794, 'birth', 'life',
   'Born (1794)', 'Cornelius Vanderbilt: born on 1794-05-27.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_cornelius-vanderbilt_birthYear_1794_1', 'ent_cornelius-vanderbilt', '1794', 1794, 'career', 'work',
   'Notable event (1794)', 'Cornelius Vanderbilt: notable event on 1794.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_cornelius-vanderbilt_deathDate_1877_2', 'ent_cornelius-vanderbilt', '1877-01-04', 1877, 'death', 'life',
   'Died (1877)', 'Cornelius Vanderbilt: died on 1877-01-04.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_cornelius-vanderbilt_deathYear_1877_3', 'ent_cornelius-vanderbilt', '1877', 1877, 'career', 'work',
   'Notable event (1877)', 'Cornelius Vanderbilt: notable event on 1877.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_count-basie_birthDate_1904_0', 'ent_count-basie', '1904-08-21', 1904, 'birth', 'life',
   'Born (1904)', 'Count Basie: born on 1904-08-21.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_count-basie_activeYearsStartYear_1924_1', 'ent_count-basie', '1924', 1924, 'career', 'work',
   'Notable event (1924)', 'Count Basie: notable event on 1924.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_count-basie_deathDate_1984_2', 'ent_count-basie', '1984-04-26', 1984, 'death', 'life',
   'Died (1984)', 'Count Basie: died on 1984-04-26.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_count-basie_activeYearsEndYear_1984_3', 'ent_count-basie', '1984', 1984, 'career', 'work',
   'Notable event (1984)', 'Count Basie: notable event on 1984.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_count-basie_date_2011_4', 'ent_count-basie', '2011-04-25', 2011, 'career', 'work',
   'Notable event (2011)', 'Count Basie: notable event on 2011-04-25.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_count-basie_date_2023_5', 'ent_count-basie', '2023-04-17', 2023, 'career', 'work',
   'Notable event (2023)', 'Count Basie: notable event on 2023-04-17.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_crazy-horse_deathDate_1877_0', 'ent_crazy-horse', '1877-09-05', 1877, 'death', 'life',
   'Died (1877)', 'Crazy Horse: died on 1877-09-05.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_creflo-dollar_birthDate_1962_0', 'ent_creflo-dollar', '1962-01-28', 1962, 'birth', 'life',
   'Born (1962)', 'Creflo Dollar: born on 1962-01-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_creflo-dollar_birthYear_1962_1', 'ent_creflo-dollar', '1962', 1962, 'career', 'work',
   'Notable event (1962)', 'Creflo Dollar: notable event on 1962.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_creighton-abrams_birthDate_1914_0', 'ent_creighton-abrams', '1914-09-15', 1914, 'birth', 'life',
   'Born (1914)', 'Creighton Abrams: born on 1914-09-15.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_creighton-abrams_serviceStartYear_1936_1', 'ent_creighton-abrams', '1936', 1936, 'career', 'work',
   'Notable event (1936)', 'Creighton Abrams: notable event on 1936.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_creighton-abrams_deathDate_1974_2', 'ent_creighton-abrams', '1974-09-04', 1974, 'death', 'life',
   'Died (1974)', 'Creighton Abrams: died on 1974-09-04.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_creighton-abrams_serviceEndYear_1974_3', 'ent_creighton-abrams', '1974', 1974, 'career', 'work',
   'Notable event (1974)', 'Creighton Abrams: notable event on 1974.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_crispus-attucks_birthYear_1723_0', 'ent_crispus-attucks', '1723', 1723, 'career', 'work',
   'Notable event (1723)', 'Crispus Attucks: notable event on 1723.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_crispus-attucks_deathDate_1770_1', 'ent_crispus-attucks', '1770-03-05', 1770, 'death', 'life',
   'Died (1770)', 'Crispus Attucks: died on 1770-03-05.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_crispus-attucks_deathYear_1770_2', 'ent_crispus-attucks', '1770', 1770, 'career', 'work',
   'Notable event (1770)', 'Crispus Attucks: notable event on 1770.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dalai-lama_incumbentsince_1940_0', 'ent_dalai-lama', '1940-02-22', 1940, 'career', 'work',
   'Notable event (1940)', 'Dalai Lama: notable event on 1940-02-22.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dan-quayle_birthDate_1947_0', 'ent_dan-quayle', '1947-02-04', 1947, 'birth', 'life',
   'Born (1947)', 'Dan Quayle: born on 1947-02-04.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dan-quayle_termStart_1977_1', 'ent_dan-quayle', '1977-01-03', 1977, 'political', 'public',
   'Term started (1977)', 'Dan Quayle: term started on 1977-01-03.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dan-quayle_termEnd_1981_2', 'ent_dan-quayle', '1981-01-03', 1981, 'political', 'public',
   'Term ended (1981)', 'Dan Quayle: term ended on 1981-01-03.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dan-quayle_termEnd_1989_3', 'ent_dan-quayle', '1989-01-03', 1989, 'political', 'public',
   'Term ended (1989)', 'Dan Quayle: term ended on 1989-01-03.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dan-quayle_termEnd_1993_4', 'ent_dan-quayle', '1993-01-20', 1993, 'political', 'public',
   'Term ended (1993)', 'Dan Quayle: term ended on 1993-01-20.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dan-quayle_date_2009_5', 'ent_dan-quayle', '2009-06-18', 2009, 'career', 'work',
   'Notable event (2009)', 'Dan Quayle: notable event on 2009-06-18.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dan-quayle_date_2010_6', 'ent_dan-quayle', '2010-07-03', 2010, 'career', 'work',
   'Notable event (2010)', 'Dan Quayle: notable event on 2010-07-03.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dan-quayle_date_2015_7', 'ent_dan-quayle', '2015-04-02', 2015, 'career', 'work',
   'Notable event (2015)', 'Dan Quayle: notable event on 2015-04-02.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dan-quayle_date_2016_8', 'ent_dan-quayle', '2016-03-04', 2016, 'career', 'work',
   'Notable event (2016)', 'Dan Quayle: notable event on 2016-03-04.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dan-quayle_date_2019_9', 'ent_dan-quayle', '2019-05-18', 2019, 'career', 'work',
   'Notable event (2019)', 'Dan Quayle: notable event on 2019-05-18.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_daniel-boone_birthDate_1734_0', 'ent_daniel-boone', '1734-11-02', 1734, 'birth', 'life',
   'Born (1734)', 'Daniel Boone: born on 1734-11-02.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_daniel-boone_spouse_1756_1', 'ent_daniel-boone', '1756-08-14', 1756, 'personal_life', 'life',
   'Marriage (1756)', 'Daniel Boone: marriage on 1756-08-14.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_daniel-boone_spouse_1813_2', 'ent_daniel-boone', '1813-03-18', 1813, 'personal_life', 'life',
   'Marriage (1813)', 'Daniel Boone: marriage on 1813-03-18.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_daniel-boone_deathDate_1820_3', 'ent_daniel-boone', '1820-09-26', 1820, 'death', 'life',
   'Died (1820)', 'Daniel Boone: died on 1820-09-26.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_daniel-boone_date_2006_4', 'ent_daniel-boone', '2006-06-20', 2006, 'career', 'work',
   'Notable event (2006)', 'Daniel Boone: notable event on 2006-06-20.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_daniel-ek_birthDate_1983_0', 'ent_daniel-ek', '1983-02-21', 1983, 'birth', 'life',
   'Born (1983)', 'Daniel Ek: born on 1983-02-21.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_daniel-ek_birthYear_1983_1', 'ent_daniel-ek', '1983', 1983, 'career', 'work',
   'Notable event (1983)', 'Daniel Ek: notable event on 1983.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_daniel-ek_activeYearsStartYear_2006_2', 'ent_daniel-ek', '2006', 2006, 'career', 'work',
   'Notable event (2006)', 'Daniel Ek: notable event on 2006.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dara-khosrowshahi_birthDate_1969_0', 'ent_dara-khosrowshahi', '1969-05-28', 1969, 'birth', 'life',
   'Born (1969)', 'Dara Khosrowshahi: born on 1969-05-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dara-khosrowshahi_birthYear_1969_1', 'ent_dara-khosrowshahi', '1969', 1969, 'career', 'work',
   'Notable event (1969)', 'Dara Khosrowshahi: notable event on 1969.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_darius-rucker_birthDate_1966_0', 'ent_darius-rucker', '1966-05-13', 1966, 'birth', 'life',
   'Born (1966)', 'Darius Rucker: born on 1966-05-13.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_darius-rucker_activeYearsStartYear_1986_1', 'ent_darius-rucker', '1986', 1986, 'career', 'work',
   'Notable event (1986)', 'Darius Rucker: notable event on 1986.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dave-brubeck_birthDate_1920_0', 'ent_dave-brubeck', '1920-12-06', 1920, 'birth', 'life',
   'Born (1920)', 'Dave Brubeck: born on 1920-12-06.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dave-brubeck_activeYearsStartYear_1940_1', 'ent_dave-brubeck', '1940', 1940, 'career', 'work',
   'Notable event (1940)', 'Dave Brubeck: notable event on 1940.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dave-brubeck_deathDate_2012_2', 'ent_dave-brubeck', '2012-12-05', 2012, 'death', 'life',
   'Died (2012)', 'Dave Brubeck: died on 2012-12-05.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dave-brubeck_activeYearsEndYear_2012_3', 'ent_dave-brubeck', '2012', 2012, 'career', 'work',
   'Notable event (2012)', 'Dave Brubeck: notable event on 2012.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-bowie_birthDate_1947_0', 'ent_david-bowie', '1947-01-08', 1947, 'birth', 'life',
   'Born (1947)', 'David Bowie: born on 1947-01-08.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-bowie_birthYear_1947_1', 'ent_david-bowie', '1947', 1947, 'career', 'work',
   'Notable event (1947)', 'David Bowie: notable event on 1947.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-bowie_activeYearsStartYear_1962_2', 'ent_david-bowie', '1962', 1962, 'career', 'work',
   'Notable event (1962)', 'David Bowie: notable event on 1962.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-bowie_spouse_1970_3', 'ent_david-bowie', '1970-03-19', 1970, 'personal_life', 'life',
   'Marriage (1970)', 'David Bowie: marriage on 1970-03-19.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-bowie_spouse_1980_4', 'ent_david-bowie', '1980-02-08', 1980, 'personal_life', 'life',
   'Marriage (1980)', 'David Bowie: marriage on 1980-02-08.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-bowie_spouse_1992_5', 'ent_david-bowie', '1992-04-24', 1992, 'personal_life', 'life',
   'Marriage (1992)', 'David Bowie: marriage on 1992-04-24.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-bowie_deathDate_2016_6', 'ent_david-bowie', '2016-01-10', 2016, 'death', 'life',
   'Died (2016)', 'David Bowie: died on 2016-01-10.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-bowie_activeYearsEndYear_2016_7', 'ent_david-bowie', '2016', 2016, 'career', 'work',
   'Notable event (2016)', 'David Bowie: notable event on 2016.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-fincher_birthDate_1962_0', 'ent_david-fincher', '1962-08-28', 1962, 'birth', 'life',
   'Born (1962)', 'David Fincher: born on 1962-08-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-fincher_birthYear_1962_1', 'ent_david-fincher', '1962', 1962, 'career', 'work',
   'Notable event (1962)', 'David Fincher: notable event on 1962.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-fincher_activeYearsStartYear_1980_2', 'ent_david-fincher', '1980', 1980, 'career', 'work',
   'Notable event (1980)', 'David Fincher: notable event on 1980.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-gilmour_birthDate_1946_0', 'ent_david-gilmour', '1946-03-06', 1946, 'birth', 'life',
   'Born (1946)', 'David Gilmour: born on 1946-03-06.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-gilmour_birthYear_1946_1', 'ent_david-gilmour', '1946', 1946, 'career', 'work',
   'Notable event (1946)', 'David Gilmour: notable event on 1946.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-gilmour_activeYearsStartYear_1963_2', 'ent_david-gilmour', '1963', 1963, 'career', 'work',
   'Notable event (1963)', 'David Gilmour: notable event on 1963.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-gilmour_spouse_1975_3', 'ent_david-gilmour', '1975-07-07', 1975, 'personal_life', 'life',
   'Marriage (1975)', 'David Gilmour: marriage on 1975-07-07.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-letterman_birthDate_1947_0', 'ent_david-letterman', '1947-04-12', 1947, 'birth', 'life',
   'Born (1947)', 'David Letterman: born on 1947-04-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-packard_birthDate_1912_0', 'ent_david-packard', '1912-09-07', 1912, 'birth', 'life',
   'Born (1912)', 'David Packard: born on 1912-09-07.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-packard_termStart_1969_1', 'ent_david-packard', '1969-01-24', 1969, 'political', 'public',
   'Term started (1969)', 'David Packard: term started on 1969-01-24.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-packard_termEnd_1971_2', 'ent_david-packard', '1971-12-13', 1971, 'political', 'public',
   'Term ended (1971)', 'David Packard: term ended on 1971-12-13.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-packard_deathDate_1996_3', 'ent_david-packard', '1996-03-26', 1996, 'death', 'life',
   'Died (1996)', 'David Packard: died on 1996-03-26.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-packard_date_2018_4', 'ent_david-packard', '2018-12-15', 2018, 'career', 'work',
   'Notable event (2018)', 'David Packard: notable event on 2018-12-15.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-petraeus_birthDate_1952_0', 'ent_david-petraeus', '1952-11-07', 1952, 'birth', 'life',
   'Born (1952)', 'David Petraeus: born on 1952-11-07.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-petraeus_termStart_2008_1', 'ent_david-petraeus', '2008-10-31', 2008, 'political', 'public',
   'Term started (2008)', 'David Petraeus: term started on 2008-10-31.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-petraeus_termEnd_2010_2', 'ent_david-petraeus', '2010-06-30', 2010, 'political', 'public',
   'Term ended (2010)', 'David Petraeus: term ended on 2010-06-30.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-petraeus_termEnd_2011_3', 'ent_david-petraeus', '2011-07-18', 2011, 'political', 'public',
   'Term ended (2011)', 'David Petraeus: term ended on 2011-07-18.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-petraeus_termEnd_2012_4', 'ent_david-petraeus', '2012-11-09', 2012, 'political', 'public',
   'Term ended (2012)', 'David Petraeus: term ended on 2012-11-09.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-remnick_birthDate_1958_0', 'ent_david-remnick', '1958-10-29', 1958, 'birth', 'life',
   'Born (1958)', 'David Remnick: born on 1958-10-29.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-remnick_birthYear_1958_1', 'ent_david-remnick', '1958', 1958, 'career', 'work',
   'Notable event (1958)', 'David Remnick: notable event on 1958.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-souter_birthDate_1939_0', 'ent_david-souter', '1939-09-17', 1939, 'birth', 'life',
   'Born (1939)', 'David Souter: born on 1939-09-17.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-souter_termStart_1976_1', 'ent_david-souter', '1976-07-17', 1976, 'political', 'public',
   'Term started (1976)', 'David Souter: term started on 1976-07-17.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-souter_termEnd_1978_2', 'ent_david-souter', '1978-09-19', 1978, 'political', 'public',
   'Term ended (1978)', 'David Souter: term ended on 1978-09-19.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-souter_termEnd_1990_3', 'ent_david-souter', '1990-10-09', 1990, 'political', 'public',
   'Term ended (1990)', 'David Souter: term ended on 1990-10-09.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-souter_termEnd_2009_4', 'ent_david-souter', '2009-06-29', 2009, 'political', 'public',
   'Term ended (2009)', 'David Souter: term ended on 2009-06-29.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_david-souter_deathDate_2025_5', 'ent_david-souter', '2025-05-08', 2025, 'death', 'life',
   'Died (2025)', 'David Souter: died on 2025-05-08.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_davy-crockett_birthDate_1786_0', 'ent_davy-crockett', '1786-08-17', 1786, 'birth', 'life',
   'Born (1786)', 'Davy Crockett: born on 1786-08-17.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_davy-crockett_termStart_1827_1', 'ent_davy-crockett', '1827-03-04', 1827, 'political', 'public',
   'Term started (1827)', 'Davy Crockett: term started on 1827-03-04.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_davy-crockett_termEnd_1831_2', 'ent_davy-crockett', '1831-03-04', 1831, 'political', 'public',
   'Term ended (1831)', 'Davy Crockett: term ended on 1831-03-04.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_davy-crockett_termStart_1833_3', 'ent_davy-crockett', '1833-03-04', 1833, 'political', 'public',
   'Term started (1833)', 'Davy Crockett: term started on 1833-03-04.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_davy-crockett_termEnd_1835_4', 'ent_davy-crockett', '1835-03-04', 1835, 'political', 'public',
   'Term ended (1835)', 'Davy Crockett: term ended on 1835-03-04.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_davy-crockett_deathDate_1836_5', 'ent_davy-crockett', '1836-03-06', 1836, 'death', 'life',
   'Died (1836)', 'Davy Crockett: died on 1836-03-06.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dean-rusk_birthDate_1909_0', 'ent_dean-rusk', '1909-02-09', 1909, 'birth', 'life',
   'Born (1909)', 'Dean Rusk: born on 1909-02-09.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dean-rusk_spouse_1937_1', 'ent_dean-rusk', '1937-06-09', 1937, 'personal_life', 'life',
   'Marriage (1937)', 'Dean Rusk: marriage on 1937-06-09.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dean-rusk_termEnd_1949_2', 'ent_dean-rusk', '1949-05-26', 1949, 'political', 'public',
   'Term ended (1949)', 'Dean Rusk: term ended on 1949-05-26.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dean-rusk_termStart_1950_3', 'ent_dean-rusk', '1950-03-28', 1950, 'political', 'public',
   'Term started (1950)', 'Dean Rusk: term started on 1950-03-28.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dean-rusk_termEnd_1951_4', 'ent_dean-rusk', '1951-12-09', 1951, 'political', 'public',
   'Term ended (1951)', 'Dean Rusk: term ended on 1951-12-09.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dean-rusk_termStart_1961_5', 'ent_dean-rusk', '1961-01-21', 1961, 'political', 'public',
   'Term started (1961)', 'Dean Rusk: term started on 1961-01-21.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dean-rusk_termEnd_1969_6', 'ent_dean-rusk', '1969-01-20', 1969, 'political', 'public',
   'Term ended (1969)', 'Dean Rusk: term ended on 1969-01-20.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dean-rusk_deathDate_1994_7', 'ent_dean-rusk', '1994-12-20', 1994, 'death', 'life',
   'Died (1994)', 'Dean Rusk: died on 1994-12-20.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_deion-sanders_birthDate_1967_0', 'ent_deion-sanders', '1967-08-09', 1967, 'birth', 'life',
   'Born (1967)', 'Deion Sanders: born on 1967-08-09.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_deion-sanders_draftYear_1989_1', 'ent_deion-sanders', '1989', 1989, 'career', 'work',
   'Notable event (1989)', 'Deion Sanders: notable event on 1989.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_demi-lovato_birthDate_1992_0', 'ent_demi-lovato', '1992-08-20', 1992, 'birth', 'life',
   'Born (1992)', 'Demi Lovato: born on 1992-08-20.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_demi-lovato_birthYear_1992_1', 'ent_demi-lovato', '1992', 1992, 'career', 'work',
   'Notable event (1992)', 'Demi Lovato: notable event on 1992.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_demi-lovato_activeYearsStartYear_2002_2', 'ent_demi-lovato', '2002', 2002, 'career', 'work',
   'Notable event (2002)', 'Demi Lovato: notable event on 2002.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_demi-lovato_spouse_2025_3', 'ent_demi-lovato', '2025-05-25', 2025, 'personal_life', 'life',
   'Marriage (2025)', 'Demi Lovato: marriage on 2025-05-25.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_demis-hassabis_birthDate_1976_0', 'ent_demis-hassabis', '1976-07-27', 1976, 'birth', 'life',
   'Born (1976)', 'Demis Hassabis: born on 1976-07-27.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_denise-levertov_birthDate_1923_0', 'ent_denise-levertov', '1923-10-24', 1923, 'birth', 'life',
   'Born (1923)', 'Denise Levertov: born on 1923-10-24.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_denise-levertov_activeYearsStartYear_1946_1', 'ent_denise-levertov', '1946', 1946, 'career', 'work',
   'Notable event (1946)', 'Denise Levertov: notable event on 1946.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_denise-levertov_deathDate_1997_2', 'ent_denise-levertov', '1997-12-20', 1997, 'death', 'life',
   'Died (1997)', 'Denise Levertov: died on 1997-12-20.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_denise-levertov_activeYearsEndYear_1997_3', 'ent_denise-levertov', '1997', 1997, 'career', 'work',
   'Notable event (1997)', 'Denise Levertov: notable event on 1997.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_denise-levertov_date_2009_4', 'ent_denise-levertov', '2009-02-01', 2009, 'career', 'work',
   'Notable event (2009)', 'Denise Levertov: notable event on 2009-02-01.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dennis-ritchie_birthDate_1941_0', 'ent_dennis-ritchie', '1941-09-09', 1941, 'birth', 'life',
   'Born (1941)', 'Dennis Ritchie: born on 1941-09-09.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dennis-ritchie_deathDate_2011_1', 'ent_dennis-ritchie', '2011-10-12', 2011, 'death', 'life',
   'Died (2011)', 'Dennis Ritchie: died on 2011-10-12.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_denzel-washington_birthDate_1954_0', 'ent_denzel-washington', '1954-12-28', 1954, 'birth', 'life',
   'Born (1954)', 'Denzel Washington: born on 1954-12-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_denzel-washington_birthYear_1954_1', 'ent_denzel-washington', '1954', 1954, 'career', 'work',
   'Notable event (1954)', 'Denzel Washington: notable event on 1954.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_denzel-washington_activeYearsStartYear_1975_2', 'ent_denzel-washington', '1975', 1975, 'career', 'work',
   'Notable event (1975)', 'Denzel Washington: notable event on 1975.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_derek-jeter_birthDate_1974_0', 'ent_derek-jeter', '1974-06-26', 1974, 'birth', 'life',
   'Born (1974)', 'Derek Jeter: born on 1974-06-26.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_desmond-tutu_birthDate_1931_0', 'ent_desmond-tutu', '1931-10-07', 1931, 'birth', 'life',
   'Born (1931)', 'Desmond Tutu: born on 1931-10-07.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_desmond-tutu_spouse_1955_1', 'ent_desmond-tutu', '1955-07-02', 1955, 'personal_life', 'life',
   'Marriage (1955)', 'Desmond Tutu: marriage on 1955-07-02.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_desmond-tutu_enthroned_1986_2', 'ent_desmond-tutu', '1986-09-07', 1986, 'career', 'work',
   'Notable event (1986)', 'Desmond Tutu: notable event on 1986-09-07.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_desmond-tutu_deathDate_2021_3', 'ent_desmond-tutu', '2021-12-26', 2021, 'death', 'life',
   'Died (2021)', 'Desmond Tutu: died on 2021-12-26.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_diana-ross_birthDate_1944_0', 'ent_diana-ross', '1944-03-26', 1944, 'birth', 'life',
   'Born (1944)', 'Diana Ross: born on 1944-03-26.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_diana-ross_birthYear_1944_1', 'ent_diana-ross', '1944', 1944, 'career', 'work',
   'Notable event (1944)', 'Diana Ross: notable event on 1944.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_diana-ross_activeYearsStartYear_1959_2', 'ent_diana-ross', '1959', 1959, 'career', 'work',
   'Notable event (1959)', 'Diana Ross: notable event on 1959.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_diana-vreeland_birthDate_1903_0', 'ent_diana-vreeland', '1903-09-29', 1903, 'birth', 'life',
   'Born (1903)', 'Diana Vreeland: born on 1903-09-29.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_diana-vreeland_birthYear_1903_1', 'ent_diana-vreeland', '1903', 1903, 'career', 'work',
   'Notable event (1903)', 'Diana Vreeland: notable event on 1903.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_diana-vreeland_activeYearsStartYear_1936_2', 'ent_diana-vreeland', '1936', 1936, 'career', 'work',
   'Notable event (1936)', 'Diana Vreeland: notable event on 1936.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_diana-vreeland_deathDate_1989_3', 'ent_diana-vreeland', '1989-08-22', 1989, 'death', 'life',
   'Died (1989)', 'Diana Vreeland: died on 1989-08-22.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_diana-vreeland_activeYearsEndYear_1989_4', 'ent_diana-vreeland', '1989', 1989, 'career', 'work',
   'Notable event (1989)', 'Diana Vreeland: notable event on 1989.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_diane-nash_birthDate_1938_0', 'ent_diane-nash', '1938-05-15', 1938, 'birth', 'life',
   'Born (1938)', 'Diane Nash: born on 1938-05-15.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_diane-nash_birthYear_1938_1', 'ent_diane-nash', '1938', 1938, 'career', 'work',
   'Notable event (1938)', 'Diane Nash: notable event on 1938.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_diane-nash_date_2018_2', 'ent_diane-nash', '2018-01-07', 2018, 'career', 'work',
   'Notable event (2018)', 'Diane Nash: notable event on 2018-01-07.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_diane-sawyer_birthDate_1945_0', 'ent_diane-sawyer', '1945-12-22', 1945, 'birth', 'life',
   'Born (1945)', 'Diane Sawyer: born on 1945-12-22.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_diane-sawyer_birthYear_1945_1', 'ent_diane-sawyer', '1945', 1945, 'career', 'work',
   'Notable event (1945)', 'Diane Sawyer: notable event on 1945.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_diane-sawyer_activeYearsStartYear_1962_2', 'ent_diane-sawyer', '1962', 1962, 'career', 'work',
   'Notable event (1962)', 'Diane Sawyer: notable event on 1962.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dick-cheney_birthDate_1941_0', 'ent_dick-cheney', '1941-01-30', 1941, 'birth', 'life',
   'Born (1941)', 'Dick Cheney: born on 1941-01-30.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dick-cheney_termStart_1974_1', 'ent_dick-cheney', '1974-12-18', 1974, 'political', 'public',
   'Term started (1974)', 'Dick Cheney: term started on 1974-12-18.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dick-cheney_termEnd_1975_2', 'ent_dick-cheney', '1975-11-21', 1975, 'political', 'public',
   'Term ended (1975)', 'Dick Cheney: term ended on 1975-11-21.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dick-cheney_termEnd_1977_3', 'ent_dick-cheney', '1977-01-20', 1977, 'political', 'public',
   'Term ended (1977)', 'Dick Cheney: term ended on 1977-01-20.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dick-cheney_termStart_1979_4', 'ent_dick-cheney', '1979-01-03', 1979, 'political', 'public',
   'Term started (1979)', 'Dick Cheney: term started on 1979-01-03.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dick-cheney_termStart_1987_5', 'ent_dick-cheney', '1987-06-04', 1987, 'political', 'public',
   'Term started (1987)', 'Dick Cheney: term started on 1987-06-04.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dick-cheney_termEnd_1989_6', 'ent_dick-cheney', '1989-01-03', 1989, 'political', 'public',
   'Term ended (1989)', 'Dick Cheney: term ended on 1989-01-03.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dick-cheney_termEnd_1993_7', 'ent_dick-cheney', '1993-01-20', 1993, 'political', 'public',
   'Term ended (1993)', 'Dick Cheney: term ended on 1993-01-20.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dick-cheney_termStart_2001_8', 'ent_dick-cheney', '2001-01-20', 2001, 'political', 'public',
   'Term started (2001)', 'Dick Cheney: term started on 2001-01-20.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dick-cheney_termEnd_2009_9', 'ent_dick-cheney', '2009-01-20', 2009, 'political', 'public',
   'Term ended (2009)', 'Dick Cheney: term ended on 2009-01-20.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dierks-bentley_birthDate_1975_0', 'ent_dierks-bentley', '1975-11-20', 1975, 'birth', 'life',
   'Born (1975)', 'Dierks Bentley: born on 1975-11-20.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dierks-bentley_activeYearsStartYear_2001_1', 'ent_dierks-bentley', '2001', 2001, 'career', 'work',
   'Notable event (2001)', 'Dierks Bentley: notable event on 2001.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dizzy-gillespie_birthDate_1917_0', 'ent_dizzy-gillespie', '1917-10-21', 1917, 'birth', 'life',
   'Born (1917)', 'Dizzy Gillespie: born on 1917-10-21.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dizzy-gillespie_activeYearsStartYear_1935_1', 'ent_dizzy-gillespie', '1935', 1935, 'career', 'work',
   'Notable event (1935)', 'Dizzy Gillespie: notable event on 1935.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dizzy-gillespie_deathDate_1993_2', 'ent_dizzy-gillespie', '1993-01-06', 1993, 'death', 'life',
   'Died (1993)', 'Dizzy Gillespie: died on 1993-01-06.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dizzy-gillespie_activeYearsEndYear_1993_3', 'ent_dizzy-gillespie', '1993', 1993, 'career', 'work',
   'Notable event (1993)', 'Dizzy Gillespie: notable event on 1993.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_doja-cat_birthDate_1995_0', 'ent_doja-cat', '1995-10-21', 1995, 'birth', 'life',
   'Born (1995)', 'Doja Cat: born on 1995-10-21.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_doja-cat_birthYear_1995_1', 'ent_doja-cat', '1995', 1995, 'career', 'work',
   'Notable event (1995)', 'Doja Cat: notable event on 1995.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_doja-cat_activeYearsStartYear_2012_2', 'ent_doja-cat', '2012', 2012, 'career', 'work',
   'Notable event (2012)', 'Doja Cat: notable event on 2012.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dolley-madison_birthDate_1768_0', 'ent_dolley-madison', '1768-05-20', 1768, 'birth', 'life',
   'Born (1768)', 'Dolley Madison: born on 1768-05-20.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dolley-madison_termStart_1809_1', 'ent_dolley-madison', '1809-03-04', 1809, 'political', 'public',
   'Term started (1809)', 'Dolley Madison: term started on 1809-03-04.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dolley-madison_termEnd_1817_2', 'ent_dolley-madison', '1817-03-04', 1817, 'political', 'public',
   'Term ended (1817)', 'Dolley Madison: term ended on 1817-03-04.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dolley-madison_deathDate_1849_3', 'ent_dolley-madison', '1849-07-12', 1849, 'death', 'life',
   'Died (1849)', 'Dolley Madison: died on 1849-07-12.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dolley-madison_date_2010_4', 'ent_dolley-madison', '2010-02-15', 2010, 'career', 'work',
   'Notable event (2010)', 'Dolley Madison: notable event on 2010-02-15.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dolley-madison_date_2016_5', 'ent_dolley-madison', '2016-07-22', 2016, 'career', 'work',
   'Notable event (2016)', 'Dolley Madison: notable event on 2016-07-22.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dolly-parton_birthDate_1946_0', 'ent_dolly-parton', '1946-01-19', 1946, 'birth', 'life',
   'Born (1946)', 'Dolly Parton: born on 1946-01-19.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dolly-parton_birthYear_1946_1', 'ent_dolly-parton', '1946', 1946, 'career', 'work',
   'Notable event (1946)', 'Dolly Parton: notable event on 1946.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dolly-parton_activeYearsStartYear_1956_2', 'ent_dolly-parton', '1956', 1956, 'career', 'work',
   'Notable event (1956)', 'Dolly Parton: notable event on 1956.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dolly-parton_spouse_1966_3', 'ent_dolly-parton', '1966-05-30', 1966, 'personal_life', 'life',
   'Marriage (1966)', 'Dolly Parton: marriage on 1966-05-30.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dolly-parton_spouse_2025_4', 'ent_dolly-parton', '2025-03-03', 2025, 'personal_life', 'life',
   'Marriage (2025)', 'Dolly Parton: marriage on 2025-03-03.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_don-henley_birthDate_1947_0', 'ent_don-henley', '1947-07-22', 1947, 'birth', 'life',
   'Born (1947)', 'Don Henley: born on 1947-07-22.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_don-henley_activeYearsStartYear_1970_1', 'ent_don-henley', '1970', 1970, 'career', 'work',
   'Notable event (1970)', 'Don Henley: notable event on 1970.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_don-henley_date_2005_2', 'ent_don-henley', '2005-07-06', 2005, 'career', 'work',
   'Notable event (2005)', 'Don Henley: notable event on 2005-07-06.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_donna-summer_birthDate_1948_0', 'ent_donna-summer', '1948-12-31', 1948, 'birth', 'life',
   'Born (1948)', 'Donna Summer: born on 1948-12-31.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_donna-summer_activeYearsStartYear_1968_1', 'ent_donna-summer', '1968', 1968, 'career', 'work',
   'Notable event (1968)', 'Donna Summer: notable event on 1968.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_donna-summer_deathDate_2012_2', 'ent_donna-summer', '2012-05-17', 2012, 'death', 'life',
   'Died (2012)', 'Donna Summer: died on 2012-05-17.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_donna-summer_activeYearsEndYear_2012_3', 'ent_donna-summer', '2012', 2012, 'career', 'work',
   'Notable event (2012)', 'Donna Summer: notable event on 2012.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_donna-tartt_birthDate_1963_0', 'ent_donna-tartt', '1963-12-23', 1963, 'birth', 'life',
   'Born (1963)', 'Donna Tartt: born on 1963-12-23.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_donna-tartt_activeYearsStartYear_1992_1', 'ent_donna-tartt', '1992', 1992, 'career', 'work',
   'Notable event (1992)', 'Donna Tartt: notable event on 1992.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_donna-tartt_date_2012_2', 'ent_donna-tartt', '2012-02-07', 2012, 'career', 'work',
   'Notable event (2012)', 'Donna Tartt: notable event on 2012-02-07.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_donna-tartt_date_2013_3', 'ent_donna-tartt', '2013-04-07', 2013, 'career', 'work',
   'Notable event (2013)', 'Donna Tartt: notable event on 2013-04-07.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_donna-tartt_date_2015_4', 'ent_donna-tartt', '2015-06-04', 2015, 'career', 'work',
   'Notable event (2015)', 'Donna Tartt: notable event on 2015-06-04.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dorothy-height_birthDate_1912_0', 'ent_dorothy-height', '1912-03-24', 1912, 'birth', 'life',
   'Born (1912)', 'Dorothy Height: born on 1912-03-24.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dorothy-height_birthYear_1912_1', 'ent_dorothy-height', '1912', 1912, 'career', 'work',
   'Notable event (1912)', 'Dorothy Height: notable event on 1912.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dorothy-height_deathDate_2010_2', 'ent_dorothy-height', '2010-04-20', 2010, 'death', 'life',
   'Died (2010)', 'Dorothy Height: died on 2010-04-20.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dorothy-height_deathYear_2010_3', 'ent_dorothy-height', '2010', 2010, 'career', 'work',
   'Notable event (2010)', 'Dorothy Height: notable event on 2010.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dred-scott_birthYear_1799_0', 'ent_dred-scott', '1799', 1799, 'career', 'work',
   'Notable event (1799)', 'Dred Scott: notable event on 1799.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dred-scott_deathDate_1858_1', 'ent_dred-scott', '1858-09-17', 1858, 'death', 'life',
   'Died (1858)', 'Dred Scott: died on 1858-09-17.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dred-scott_deathYear_1858_2', 'ent_dred-scott', '1858', 1858, 'career', 'work',
   'Notable event (1858)', 'Dred Scott: notable event on 1858.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_drew-houston_birthDate_1983_0', 'ent_drew-houston', '1983-03-04', 1983, 'birth', 'life',
   'Born (1983)', 'Drew Houston: born on 1983-03-04.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_drew-houston_birthYear_1983_1', 'ent_drew-houston', '1983', 1983, 'career', 'work',
   'Notable event (1983)', 'Drew Houston: notable event on 1983.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dua-lipa_birthDate_1995_0', 'ent_dua-lipa', '1995-08-22', 1995, 'birth', 'life',
   'Born (1995)', 'Dua Lipa: born on 1995-08-22.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dua-lipa_birthYear_1995_1', 'ent_dua-lipa', '1995', 1995, 'career', 'work',
   'Notable event (1995)', 'Dua Lipa: notable event on 1995.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dua-lipa_activeYearsStartYear_2013_2', 'ent_dua-lipa', '2013', 2013, 'career', 'work',
   'Notable event (2013)', 'Dua Lipa: notable event on 2013.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_duke-ellington_birthDate_1899_0', 'ent_duke-ellington', '1899-04-29', 1899, 'birth', 'life',
   'Born (1899)', 'Duke Ellington: born on 1899-04-29.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_duke-ellington_activeYearsStartYear_1914_1', 'ent_duke-ellington', '1914', 1914, 'career', 'work',
   'Notable event (1914)', 'Duke Ellington: notable event on 1914.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_duke-ellington_deathDate_1974_2', 'ent_duke-ellington', '1974-05-24', 1974, 'death', 'life',
   'Died (1974)', 'Duke Ellington: died on 1974-05-24.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_duke-ellington_activeYearsEndYear_1974_3', 'ent_duke-ellington', '1974', 1974, 'career', 'work',
   'Notable event (1974)', 'Duke Ellington: notable event on 1974.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dustin-hoffman_birthDate_1937_0', 'ent_dustin-hoffman', '1937-08-08', 1937, 'birth', 'life',
   'Born (1937)', 'Dustin Hoffman: born on 1937-08-08.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dustin-hoffman_birthYear_1937_1', 'ent_dustin-hoffman', '1937', 1937, 'career', 'work',
   'Notable event (1937)', 'Dustin Hoffman: notable event on 1937.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_dustin-hoffman_activeYearsStartYear_1960_2', 'ent_dustin-hoffman', '1960', 1960, 'career', 'work',
   'Notable event (1960)', 'Dustin Hoffman: notable event on 1960.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_earl-warren_birthDate_1891_0', 'ent_earl-warren', '1891-03-19', 1891, 'birth', 'life',
   'Born (1891)', 'Earl Warren: born on 1891-03-19.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_earl-warren_spouse_1925_1', 'ent_earl-warren', '1925-10-04', 1925, 'personal_life', 'life',
   'Marriage (1925)', 'Earl Warren: marriage on 1925-10-04.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_earl-warren_termStart_1939_2', 'ent_earl-warren', '1939-01-03', 1939, 'political', 'public',
   'Term started (1939)', 'Earl Warren: term started on 1939-01-03.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_earl-warren_termEnd_1943_3', 'ent_earl-warren', '1943-01-04', 1943, 'political', 'public',
   'Term ended (1943)', 'Earl Warren: term ended on 1943-01-04.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_earl-warren_termEnd_1953_4', 'ent_earl-warren', '1953-10-05', 1953, 'political', 'public',
   'Term ended (1953)', 'Earl Warren: term ended on 1953-10-05.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_earl-warren_termEnd_1969_5', 'ent_earl-warren', '1969-06-23', 1969, 'political', 'public',
   'Term ended (1969)', 'Earl Warren: term ended on 1969-06-23.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_earl-warren_deathDate_1974_6', 'ent_earl-warren', '1974-07-09', 1974, 'death', 'life',
   'Died (1974)', 'Earl Warren: died on 1974-07-09.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_earl-warren_date_2001_7', 'ent_earl-warren', '2001-11-27', 2001, 'career', 'work',
   'Notable event (2001)', 'Earl Warren: notable event on 2001-11-27.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_earl-warren_date_2007_8', 'ent_earl-warren', '2007-01-06', 2007, 'career', 'work',
   'Notable event (2007)', 'Earl Warren: notable event on 2007-01-06.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_earl-warren_date_2011_9', 'ent_earl-warren', '2011-06-13', 2011, 'career', 'work',
   'Notable event (2011)', 'Earl Warren: notable event on 2011-06-13.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ed-sheeran_birthDate_1991_0', 'ent_ed-sheeran', '1991-02-17', 1991, 'birth', 'life',
   'Born (1991)', 'Ed Sheeran: born on 1991-02-17.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ed-sheeran_birthYear_1991_1', 'ent_ed-sheeran', '1991', 1991, 'career', 'work',
   'Notable event (1991)', 'Ed Sheeran: notable event on 1991.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ed-sheeran_activeYearsStartYear_2004_2', 'ent_ed-sheeran', '2004', 2004, 'career', 'work',
   'Notable event (2004)', 'Ed Sheeran: notable event on 2004.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edgar-allan-poe_birthDate_1809_0', 'ent_edgar-allan-poe', '1809-01-19', 1809, 'birth', 'life',
   'Born (1809)', 'Edgar Allan Poe: born on 1809-01-19.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edgar-allan-poe_deathDate_1849_1', 'ent_edgar-allan-poe', '1849-10-07', 1849, 'death', 'life',
   'Died (1849)', 'Edgar Allan Poe: died on 1849-10-07.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edgar-allan-poe_date_2009_2', 'ent_edgar-allan-poe', '2009-12-19', 2009, 'career', 'work',
   'Notable event (2009)', 'Edgar Allan Poe: notable event on 2009-12-19.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edgar-allan-poe_date_2012_3', 'ent_edgar-allan-poe', '2012-03-01', 2012, 'career', 'work',
   'Notable event (2012)', 'Edgar Allan Poe: notable event on 2012-03-01.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edgar-allan-poe_date_2015_4', 'ent_edgar-allan-poe', '2015-02-23', 2015, 'career', 'work',
   'Notable event (2015)', 'Edgar Allan Poe: notable event on 2015-02-23.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edgar-allan-poe_date_2016_5', 'ent_edgar-allan-poe', '2016-01-12', 2016, 'career', 'work',
   'Notable event (2016)', 'Edgar Allan Poe: notable event on 2016-01-12.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edith-roosevelt_birthDate_1861_0', 'ent_edith-roosevelt', '1861-08-06', 1861, 'birth', 'life',
   'Born (1861)', 'Edith Roosevelt: born on 1861-08-06.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edith-roosevelt_termStart_1899_1', 'ent_edith-roosevelt', '1899-01-01', 1899, 'political', 'public',
   'Term started (1899)', 'Edith Roosevelt: term started on 1899-01-01.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edith-roosevelt_termEnd_1900_2', 'ent_edith-roosevelt', '1900-12-31', 1900, 'political', 'public',
   'Term ended (1900)', 'Edith Roosevelt: term ended on 1900-12-31.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edith-roosevelt_termEnd_1901_3', 'ent_edith-roosevelt', '1901-09-14', 1901, 'political', 'public',
   'Term ended (1901)', 'Edith Roosevelt: term ended on 1901-09-14.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edith-roosevelt_termEnd_1909_4', 'ent_edith-roosevelt', '1909-03-04', 1909, 'political', 'public',
   'Term ended (1909)', 'Edith Roosevelt: term ended on 1909-03-04.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edith-roosevelt_deathDate_1948_5', 'ent_edith-roosevelt', '1948-09-30', 1948, 'death', 'life',
   'Died (1948)', 'Edith Roosevelt: died on 1948-09-30.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edith-wilson_birthDate_1872_0', 'ent_edith-wilson', '1872-10-15', 1872, 'birth', 'life',
   'Born (1872)', 'Edith Wilson: born on 1872-10-15.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edith-wilson_termStart_1915_1', 'ent_edith-wilson', '1915-12-18', 1915, 'political', 'public',
   'Term started (1915)', 'Edith Wilson: term started on 1915-12-18.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edith-wilson_termEnd_1921_2', 'ent_edith-wilson', '1921-03-04', 1921, 'political', 'public',
   'Term ended (1921)', 'Edith Wilson: term ended on 1921-03-04.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edith-wilson_deathDate_1961_3', 'ent_edith-wilson', '1961-12-28', 1961, 'death', 'life',
   'Died (1961)', 'Edith Wilson: died on 1961-12-28.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edward-douglass-white_birthDate_1845_0', 'ent_edward-douglass-white', '1845-11-03', 1845, 'birth', 'life',
   'Born (1845)', 'Edward Douglass White: born on 1845-11-03.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edward-douglass-white_termStart_1891_1', 'ent_edward-douglass-white', '1891-03-04', 1891, 'political', 'public',
   'Term started (1891)', 'Edward Douglass White: term started on 1891-03-04.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edward-douglass-white_termEnd_1894_2', 'ent_edward-douglass-white', '1894-03-12', 1894, 'political', 'public',
   'Term ended (1894)', 'Edward Douglass White: term ended on 1894-03-12.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edward-douglass-white_termEnd_1910_3', 'ent_edward-douglass-white', '1910-12-18', 1910, 'political', 'public',
   'Term ended (1910)', 'Edward Douglass White: term ended on 1910-12-18.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edward-douglass-white_deathDate_1921_4', 'ent_edward-douglass-white', '1921-05-19', 1921, 'death', 'life',
   'Died (1921)', 'Edward Douglass White: died on 1921-05-19.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edward-douglass-white_termEnd_1921_5', 'ent_edward-douglass-white', '1921-05-19', 1921, 'political', 'public',
   'Term ended (1921)', 'Edward Douglass White: term ended on 1921-05-19.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edward-douglass-white_date_2010_6', 'ent_edward-douglass-white', '2010-11-03', 2010, 'career', 'work',
   'Notable event (2010)', 'Edward Douglass White: notable event on 2010-11-03.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edward-douglass-white_date_2011_7', 'ent_edward-douglass-white', '2011-09-27', 2011, 'career', 'work',
   'Notable event (2011)', 'Edward Douglass White: notable event on 2011-09-27.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edward-douglass-white_date_2012_8', 'ent_edward-douglass-white', '2012-02-20', 2012, 'career', 'work',
   'Notable event (2012)', 'Edward Douglass White: notable event on 2012-02-20.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edward-hopper_birthDate_1882_0', 'ent_edward-hopper', '1882-07-22', 1882, 'birth', 'life',
   'Born (1882)', 'Edward Hopper: born on 1882-07-22.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edward-hopper_deathDate_1967_1', 'ent_edward-hopper', '1967-05-15', 1967, 'death', 'life',
   'Died (1967)', 'Edward Hopper: died on 1967-05-15.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edward-hopper_date_2016_2', 'ent_edward-hopper', '2016-03-03', 2016, 'career', 'work',
   'Notable event (2016)', 'Edward Hopper: notable event on 2016-03-03.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edward-teller_birthDate_1908_0', 'ent_edward-teller', '1908-01-15', 1908, 'birth', 'life',
   'Born (1908)', 'Edward Teller: born on 1908-01-15.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edward-teller_deathDate_2003_1', 'ent_edward-teller', '2003-09-09', 2003, 'death', 'life',
   'Died (2003)', 'Edward Teller: died on 2003-09-09.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_edward-teller_date_2011_2', 'ent_edward-teller', '2011-06-28', 2011, 'career', 'work',
   'Notable event (2011)', 'Edward Teller: notable event on 2011-06-28.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eleanor-roosevelt_birthDate_1884_0', 'ent_eleanor-roosevelt', '1884-10-11', 1884, 'birth', 'life',
   'Born (1884)', 'Eleanor Roosevelt: born on 1884-10-11.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eleanor-roosevelt_termStart_1929_1', 'ent_eleanor-roosevelt', '1929-01-01', 1929, 'political', 'public',
   'Term started (1929)', 'Eleanor Roosevelt: term started on 1929-01-01.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eleanor-roosevelt_termEnd_1932_2', 'ent_eleanor-roosevelt', '1932-12-31', 1932, 'political', 'public',
   'Term ended (1932)', 'Eleanor Roosevelt: term ended on 1932-12-31.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eleanor-roosevelt_termStart_1933_3', 'ent_eleanor-roosevelt', '1933-03-04', 1933, 'political', 'public',
   'Term started (1933)', 'Eleanor Roosevelt: term started on 1933-03-04.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eleanor-roosevelt_termEnd_1945_4', 'ent_eleanor-roosevelt', '1945-04-12', 1945, 'political', 'public',
   'Term ended (1945)', 'Eleanor Roosevelt: term ended on 1945-04-12.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eleanor-roosevelt_termStart_1946_5', 'ent_eleanor-roosevelt', '1946-04-29', 1946, 'political', 'public',
   'Term started (1946)', 'Eleanor Roosevelt: term started on 1946-04-29.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eleanor-roosevelt_termStart_1947_6', 'ent_eleanor-roosevelt', '1947-01-27', 1947, 'political', 'public',
   'Term started (1947)', 'Eleanor Roosevelt: term started on 1947-01-27.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eleanor-roosevelt_termEnd_1952_7', 'ent_eleanor-roosevelt', '1952-12-30', 1952, 'political', 'public',
   'Term ended (1952)', 'Eleanor Roosevelt: term ended on 1952-12-30.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eleanor-roosevelt_termEnd_1953_8', 'ent_eleanor-roosevelt', '1953-01-20', 1953, 'political', 'public',
   'Term ended (1953)', 'Eleanor Roosevelt: term ended on 1953-01-20.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eleanor-roosevelt_termStart_1961_9', 'ent_eleanor-roosevelt', '1961-01-20', 1961, 'political', 'public',
   'Term started (1961)', 'Eleanor Roosevelt: term started on 1961-01-20.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eleanor-roosevelt_deathDate_1962_10', 'ent_eleanor-roosevelt', '1962-11-07', 1962, 'death', 'life',
   'Died (1962)', 'Eleanor Roosevelt: died on 1962-11-07.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eleanor-roosevelt_termEnd_1962_11', 'ent_eleanor-roosevelt', '1962-11-07', 1962, 'political', 'public',
   'Term ended (1962)', 'Eleanor Roosevelt: term ended on 1962-11-07.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eleanor-roosevelt_date_2011_12', 'ent_eleanor-roosevelt', '2011-07-07', 2011, 'career', 'work',
   'Notable event (2011)', 'Eleanor Roosevelt: notable event on 2011-07-07.', 'src_dbpedia', 0.8, 12, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eleanor-roosevelt_date_2018_13', 'ent_eleanor-roosevelt', '2018-10-08', 2018, 'career', 'work',
   'Notable event (2018)', 'Eleanor Roosevelt: notable event on 2018-10-08.', 'src_dbpedia', 0.8, 13, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elena-kagan_birthDate_1960_0', 'ent_elena-kagan', '1960-04-28', 1960, 'birth', 'life',
   'Born (1960)', 'Elena Kagan: born on 1960-04-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elena-kagan_termStart_2003_1', 'ent_elena-kagan', '2003-07-01', 2003, 'political', 'public',
   'Term started (2003)', 'Elena Kagan: term started on 2003-07-01.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elena-kagan_termEnd_2009_2', 'ent_elena-kagan', '2009-03-19', 2009, 'political', 'public',
   'Term ended (2009)', 'Elena Kagan: term ended on 2009-03-19.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elena-kagan_termEnd_2010_3', 'ent_elena-kagan', '2010-05-17', 2010, 'political', 'public',
   'Term ended (2010)', 'Elena Kagan: term ended on 2010-05-17.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eli-whitney_birthDate_1765_0', 'ent_eli-whitney', '1765-12-08', 1765, 'birth', 'life',
   'Born (1765)', 'Eli Whitney: born on 1765-12-08.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eli-whitney_deathDate_1825_1', 'ent_eli-whitney', '1825-01-08', 1825, 'death', 'life',
   'Died (1825)', 'Eli Whitney: died on 1825-01-08.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eli-whitney_date_2013_2', 'ent_eli-whitney', '2013-04-05', 2013, 'career', 'work',
   'Notable event (2013)', 'Eli Whitney: notable event on 2013-04-05.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elia-kazan_birthDate_1909_0', 'ent_elia-kazan', '1909-09-07', 1909, 'birth', 'life',
   'Born (1909)', 'Elia Kazan: born on 1909-09-07.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elia-kazan_birthYear_1909_1', 'ent_elia-kazan', '1909', 1909, 'career', 'work',
   'Notable event (1909)', 'Elia Kazan: notable event on 1909.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elia-kazan_activeYearsStartYear_1934_2', 'ent_elia-kazan', '1934', 1934, 'career', 'work',
   'Notable event (1934)', 'Elia Kazan: notable event on 1934.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elia-kazan_activeYearsEndYear_1976_3', 'ent_elia-kazan', '1976', 1976, 'career', 'work',
   'Notable event (1976)', 'Elia Kazan: notable event on 1976.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elia-kazan_deathDate_2003_4', 'ent_elia-kazan', '2003-09-28', 2003, 'death', 'life',
   'Died (2003)', 'Elia Kazan: died on 2003-09-28.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elia-kazan_deathYear_2003_5', 'ent_elia-kazan', '2003', 2003, 'career', 'work',
   'Notable event (2003)', 'Elia Kazan: notable event on 2003.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elijah-muhammad_birthDate_1897_0', 'ent_elijah-muhammad', '1897-10-07', 1897, 'birth', 'life',
   'Born (1897)', 'Elijah Muhammad: born on 1897-10-07.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elijah-muhammad_deathDate_1975_1', 'ent_elijah-muhammad', '1975-02-25', 1975, 'death', 'life',
   'Died (1975)', 'Elijah Muhammad: died on 1975-02-25.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-bishop_birthDate_1911_0', 'ent_elizabeth-bishop', '1911-02-08', 1911, 'birth', 'life',
   'Born (1911)', 'Elizabeth Bishop: born on 1911-02-08.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-bishop_deathDate_1979_1', 'ent_elizabeth-bishop', '1979-10-06', 1979, 'death', 'life',
   'Died (1979)', 'Elizabeth Bishop: died on 1979-10-06.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-bishop_date_2020_2', 'ent_elizabeth-bishop', '2020-07-31', 2020, 'career', 'work',
   'Notable event (2020)', 'Elizabeth Bishop: notable event on 2020-07-31.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-bishop_date_2021_3', 'ent_elizabeth-bishop', '2021-06-14', 2021, 'career', 'work',
   'Notable event (2021)', 'Elizabeth Bishop: notable event on 2021-06-14.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-blackwell_birthDate_1821_0', 'ent_elizabeth-blackwell', '1821-02-03', 1821, 'birth', 'life',
   'Born (1821)', 'Elizabeth Blackwell: born on 1821-02-03.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-blackwell_birthYear_1821_1', 'ent_elizabeth-blackwell', '1821', 1821, 'career', 'work',
   'Notable event (1821)', 'Elizabeth Blackwell: notable event on 1821.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-blackwell_deathDate_1910_2', 'ent_elizabeth-blackwell', '1910-05-31', 1910, 'death', 'life',
   'Died (1910)', 'Elizabeth Blackwell: died on 1910-05-31.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-blackwell_deathYear_1910_3', 'ent_elizabeth-blackwell', '1910', 1910, 'career', 'work',
   'Notable event (1910)', 'Elizabeth Blackwell: notable event on 1910.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-blackwell_date_2008_4', 'ent_elizabeth-blackwell', '2008-05-16', 2008, 'career', 'work',
   'Notable event (2008)', 'Elizabeth Blackwell: notable event on 2008-05-16.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-blackwell_date_2021_5', 'ent_elizabeth-blackwell', '2021-05-08', 2021, 'career', 'work',
   'Notable event (2021)', 'Elizabeth Blackwell: notable event on 2021-05-08.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-cady-stanton_birthDate_1815_0', 'ent_elizabeth-cady-stanton', '1815-11-12', 1815, 'birth', 'life',
   'Born (1815)', 'Elizabeth Cady Stanton: born on 1815-11-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-cady-stanton_birthYear_1815_1', 'ent_elizabeth-cady-stanton', '1815', 1815, 'career', 'work',
   'Notable event (1815)', 'Elizabeth Cady Stanton: notable event on 1815.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-cady-stanton_spouse_1840_2', 'ent_elizabeth-cady-stanton', '1840-05-01', 1840, 'personal_life', 'life',
   'Marriage (1840)', 'Elizabeth Cady Stanton: marriage on 1840-05-01.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-cady-stanton_spouse_1887_3', 'ent_elizabeth-cady-stanton', '1887-01-14', 1887, 'personal_life', 'life',
   'Marriage (1887)', 'Elizabeth Cady Stanton: marriage on 1887-01-14.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-cady-stanton_deathDate_1902_4', 'ent_elizabeth-cady-stanton', '1902-10-26', 1902, 'death', 'life',
   'Died (1902)', 'Elizabeth Cady Stanton: died on 1902-10-26.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-cady-stanton_deathYear_1902_5', 'ent_elizabeth-cady-stanton', '1902', 1902, 'career', 'work',
   'Notable event (1902)', 'Elizabeth Cady Stanton: notable event on 1902.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-cady-stanton_date_2020_6', 'ent_elizabeth-cady-stanton', '2020-08-14', 2020, 'career', 'work',
   'Notable event (2020)', 'Elizabeth Cady Stanton: notable event on 2020-08-14.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-cady-stanton_date_2022_7', 'ent_elizabeth-cady-stanton', '2022-04-07', 2022, 'career', 'work',
   'Notable event (2022)', 'Elizabeth Cady Stanton: notable event on 2022-04-07.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-monroe_birthDate_1768_0', 'ent_elizabeth-monroe', '1768-06-30', 1768, 'birth', 'life',
   'Born (1768)', 'Elizabeth Monroe: born on 1768-06-30.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-monroe_termStart_1799_1', 'ent_elizabeth-monroe', '1799-12-28', 1799, 'political', 'public',
   'Term started (1799)', 'Elizabeth Monroe: term started on 1799-12-28.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-monroe_termEnd_1802_2', 'ent_elizabeth-monroe', '1802-12-01', 1802, 'political', 'public',
   'Term ended (1802)', 'Elizabeth Monroe: term ended on 1802-12-01.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-monroe_termEnd_1811_3', 'ent_elizabeth-monroe', '1811-04-02', 1811, 'political', 'public',
   'Term ended (1811)', 'Elizabeth Monroe: term ended on 1811-04-02.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-monroe_termStart_1817_4', 'ent_elizabeth-monroe', '1817-03-04', 1817, 'political', 'public',
   'Term started (1817)', 'Elizabeth Monroe: term started on 1817-03-04.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-monroe_termEnd_1825_5', 'ent_elizabeth-monroe', '1825-03-04', 1825, 'political', 'public',
   'Term ended (1825)', 'Elizabeth Monroe: term ended on 1825-03-04.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-monroe_deathDate_1830_6', 'ent_elizabeth-monroe', '1830-09-23', 1830, 'death', 'life',
   'Died (1830)', 'Elizabeth Monroe: died on 1830-09-23.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_birthDate_1932_0', 'ent_elizabeth-taylor', '1932-02-27', 1932, 'birth', 'life',
   'Born (1932)', 'Elizabeth Taylor: born on 1932-02-27.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_birthYear_1932_1', 'ent_elizabeth-taylor', '1932', 1932, 'career', 'work',
   'Notable event (1932)', 'Elizabeth Taylor: notable event on 1932.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_activeYearsStartYear_1941_2', 'ent_elizabeth-taylor', '1941', 1941, 'career', 'work',
   'Notable event (1941)', 'Elizabeth Taylor: notable event on 1941.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_spouses_1950_3', 'ent_elizabeth-taylor', '1950-05-06', 1950, 'career', 'work',
   'Notable event (1950)', 'Elizabeth Taylor: notable event on 1950-05-06.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_spouses_1951_4', 'ent_elizabeth-taylor', '1951-01-29', 1951, 'career', 'work',
   'Notable event (1951)', 'Elizabeth Taylor: notable event on 1951-01-29.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_spouses_1952_5', 'ent_elizabeth-taylor', '1952-02-21', 1952, 'career', 'work',
   'Notable event (1952)', 'Elizabeth Taylor: notable event on 1952-02-21.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_spouses_1957_6', 'ent_elizabeth-taylor', '1957-01-26', 1957, 'career', 'work',
   'Notable event (1957)', 'Elizabeth Taylor: notable event on 1957-01-26.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_spouses_1958_7', 'ent_elizabeth-taylor', '1958-03-22', 1958, 'career', 'work',
   'Notable event (1958)', 'Elizabeth Taylor: notable event on 1958-03-22.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_spouses_1959_8', 'ent_elizabeth-taylor', '1959-05-12', 1959, 'career', 'work',
   'Notable event (1959)', 'Elizabeth Taylor: notable event on 1959-05-12.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_spouses_1964_9', 'ent_elizabeth-taylor', '1964-03-05', 1964, 'career', 'work',
   'Notable event (1964)', 'Elizabeth Taylor: notable event on 1964-03-05.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_spouses_1974_10', 'ent_elizabeth-taylor', '1974-06-26', 1974, 'career', 'work',
   'Notable event (1974)', 'Elizabeth Taylor: notable event on 1974-06-26.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_spouses_1975_11', 'ent_elizabeth-taylor', '1975-10-10', 1975, 'career', 'work',
   'Notable event (1975)', 'Elizabeth Taylor: notable event on 1975-10-10.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_spouses_1976_12', 'ent_elizabeth-taylor', '1976-07-29', 1976, 'career', 'work',
   'Notable event (1976)', 'Elizabeth Taylor: notable event on 1976-07-29.', 'src_dbpedia', 0.8, 12, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_spouses_1982_13', 'ent_elizabeth-taylor', '1982-11-05', 1982, 'career', 'work',
   'Notable event (1982)', 'Elizabeth Taylor: notable event on 1982-11-05.', 'src_dbpedia', 0.8, 13, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_spouses_1991_14', 'ent_elizabeth-taylor', '1991-10-06', 1991, 'career', 'work',
   'Notable event (1991)', 'Elizabeth Taylor: notable event on 1991-10-06.', 'src_dbpedia', 0.8, 14, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_spouses_1996_15', 'ent_elizabeth-taylor', '1996-10-31', 1996, 'career', 'work',
   'Notable event (1996)', 'Elizabeth Taylor: notable event on 1996-10-31.', 'src_dbpedia', 0.8, 15, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_activeYearsEndYear_2007_16', 'ent_elizabeth-taylor', '2007', 2007, 'career', 'work',
   'Notable event (2007)', 'Elizabeth Taylor: notable event on 2007.', 'src_dbpedia', 0.8, 16, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_deathDate_2011_17', 'ent_elizabeth-taylor', '2011-03-23', 2011, 'death', 'life',
   'Died (2011)', 'Elizabeth Taylor: died on 2011-03-23.', 'src_dbpedia', 0.8, 17, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elizabeth-taylor_deathYear_2011_18', 'ent_elizabeth-taylor', '2011', 2011, 'career', 'work',
   'Notable event (2011)', 'Elizabeth Taylor: notable event on 2011.', 'src_dbpedia', 0.8, 18, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ella-baker_birthDate_1903_0', 'ent_ella-baker', '1903-12-13', 1903, 'birth', 'life',
   'Born (1903)', 'Ella Baker: born on 1903-12-13.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ella-baker_birthYear_1903_1', 'ent_ella-baker', '1903', 1903, 'career', 'work',
   'Notable event (1903)', 'Ella Baker: notable event on 1903.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ella-baker_deathDate_1986_2', 'ent_ella-baker', '1986-12-13', 1986, 'death', 'life',
   'Died (1986)', 'Ella Baker: died on 1986-12-13.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ella-baker_deathYear_1986_3', 'ent_ella-baker', '1986', 1986, 'career', 'work',
   'Notable event (1986)', 'Ella Baker: notable event on 1986.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ella-baker_date_2016_4', 'ent_ella-baker', '2016-07-16', 2016, 'career', 'work',
   'Notable event (2016)', 'Ella Baker: notable event on 2016-07-16.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ella-fitzgerald_birthDate_1917_0', 'ent_ella-fitzgerald', '1917-04-25', 1917, 'birth', 'life',
   'Born (1917)', 'Ella Fitzgerald: born on 1917-04-25.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ella-fitzgerald_birthYear_1917_1', 'ent_ella-fitzgerald', '1917', 1917, 'career', 'work',
   'Notable event (1917)', 'Ella Fitzgerald: notable event on 1917.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ella-fitzgerald_deathDate_1996_2', 'ent_ella-fitzgerald', '1996-06-15', 1996, 'death', 'life',
   'Died (1996)', 'Ella Fitzgerald: died on 1996-06-15.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ella-fitzgerald_deathYear_1996_3', 'ent_ella-fitzgerald', '1996', 1996, 'career', 'work',
   'Notable event (1996)', 'Ella Fitzgerald: notable event on 1996.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ella-fitzgerald_date_2022_4', 'ent_ella-fitzgerald', '2022-06-13', 2022, 'career', 'work',
   'Notable event (2022)', 'Ella Fitzgerald: notable event on 2022-06-13.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elon-musk_birthDate_1971_0', 'ent_elon-musk', '1971-06-28', 1971, 'birth', 'life',
   'Born (1971)', 'Elon Musk: born on 1971-06-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elon-musk_archiveDate_2022_1', 'ent_elon-musk', '2022-11-07', 2022, 'career', 'work',
   'Notable event (2022)', 'Elon Musk: notable event on 2022-11-07.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elon-musk_termEnd_2025_2', 'ent_elon-musk', '2025-05-30', 2025, 'political', 'public',
   'Term ended (2025)', 'Elon Musk: term ended on 2025-05-30.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elon-musk_date_2025_3', 'ent_elon-musk', '2025-06-05', 2025, 'career', 'work',
   'Notable event (2025)', 'Elon Musk: notable event on 2025-06-05.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elton-john_birthDate_1947_0', 'ent_elton-john', '1947-03-25', 1947, 'birth', 'life',
   'Born (1947)', 'Elton John: born on 1947-03-25.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elton-john_birthYear_1947_1', 'ent_elton-john', '1947', 1947, 'career', 'work',
   'Notable event (1947)', 'Elton John: notable event on 1947.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_elton-john_activeYearsStartYear_1962_2', 'ent_elton-john', '1962', 1962, 'career', 'work',
   'Notable event (1962)', 'Elton John: notable event on 1962.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_emily-dickinson_birthDate_1830_0', 'ent_emily-dickinson', '1830-12-10', 1830, 'birth', 'life',
   'Born (1830)', 'Emily Dickinson: born on 1830-12-10.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_emily-dickinson_deathDate_1886_1', 'ent_emily-dickinson', '1886-05-15', 1886, 'death', 'life',
   'Died (1886)', 'Emily Dickinson: died on 1886-05-15.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_emily-dickinson_date_2010_2', 'ent_emily-dickinson', '2010-06-25', 2010, 'career', 'work',
   'Notable event (2010)', 'Emily Dickinson: notable event on 2010-06-25.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_emma-stone_birthDate_1988_0', 'ent_emma-stone', '1988-11-06', 1988, 'birth', 'life',
   'Born (1988)', 'Emma Stone: born on 1988-11-06.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_emma-stone_birthYear_1988_1', 'ent_emma-stone', '1988', 1988, 'career', 'work',
   'Notable event (1988)', 'Emma Stone: notable event on 1988.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_emma-stone_activeYearsStartYear_2004_2', 'ent_emma-stone', '2004', 2004, 'career', 'work',
   'Notable event (2004)', 'Emma Stone: notable event on 2004.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_emmitt-smith_birthDate_1969_0', 'ent_emmitt-smith', '1969-05-15', 1969, 'birth', 'life',
   'Born (1969)', 'Emmitt Smith: born on 1969-05-15.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_emmitt-smith_draftYear_1990_1', 'ent_emmitt-smith', '1990', 1990, 'career', 'work',
   'Notable event (1990)', 'Emmitt Smith: notable event on 1990.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_enrico-fermi_birthDate_1901_0', 'ent_enrico-fermi', '1901-09-29', 1901, 'birth', 'life',
   'Born (1901)', 'Enrico Fermi: born on 1901-09-29.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_enrico-fermi_deathDate_1954_1', 'ent_enrico-fermi', '1954-11-28', 1954, 'death', 'life',
   'Died (1954)', 'Enrico Fermi: died on 1954-11-28.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eric-church_birthDate_1977_0', 'ent_eric-church', '1977-05-03', 1977, 'birth', 'life',
   'Born (1977)', 'Eric Church: born on 1977-05-03.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eric-church_birthYear_1977_1', 'ent_eric-church', '1977', 1977, 'career', 'work',
   'Notable event (1977)', 'Eric Church: notable event on 1977.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eric-church_activeYearsStartYear_2005_2', 'ent_eric-church', '2005', 2005, 'career', 'work',
   'Notable event (2005)', 'Eric Church: notable event on 2005.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eric-clapton_birthDate_1945_0', 'ent_eric-clapton', '1945-03-30', 1945, 'birth', 'life',
   'Born (1945)', 'Eric Clapton: born on 1945-03-30.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eric-clapton_birthYear_1945_1', 'ent_eric-clapton', '1945', 1945, 'career', 'work',
   'Notable event (1945)', 'Eric Clapton: notable event on 1945.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_eric-clapton_activeYearsStartYear_1962_2', 'ent_eric-clapton', '1962', 1962, 'career', 'work',
   'Notable event (1962)', 'Eric Clapton: notable event on 1962.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ernest-hemingway_birthDate_1899_0', 'ent_ernest-hemingway', '1899-07-21', 1899, 'birth', 'life',
   'Born (1899)', 'Ernest Hemingway: born on 1899-07-21.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ernest-hemingway_deathDate_1961_1', 'ent_ernest-hemingway', '1961-07-02', 1961, 'death', 'life',
   'Died (1961)', 'Ernest Hemingway: died on 1961-07-02.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ernest-hemingway_date_2016_2', 'ent_ernest-hemingway', '2016-08-23', 2016, 'career', 'work',
   'Notable event (2016)', 'Ernest Hemingway: notable event on 2016-08-23.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ethan-allen_birthDate_1738_0', 'ent_ethan-allen', '1738-01-21', 1738, 'birth', 'life',
   'Born (1738)', 'Ethan Allen: born on 1738-01-21.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ethan-allen_date_2010_1', 'ent_ethan-allen', '2010-01-14', 2010, 'career', 'work',
   'Notable event (2010)', 'Ethan Allen: notable event on 2010-01-14.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ethan-coen_birthDate_1957_0', 'ent_ethan-coen', '1957-09-21', 1957, 'birth', 'life',
   'Born (1957)', 'Ethan Coen: born on 1957-09-21.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ethan-coen_birthYear_1957_1', 'ent_ethan-coen', '1957', 1957, 'career', 'work',
   'Notable event (1957)', 'Ethan Coen: notable event on 1957.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ethan-coen_activeYearsStartYear_1984_2', 'ent_ethan-coen', '1984', 1984, 'career', 'work',
   'Notable event (1984)', 'Ethan Coen: notable event on 1984.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_evan-spiegel_birthDate_1990_0', 'ent_evan-spiegel', '1990-06-04', 1990, 'birth', 'life',
   'Born (1990)', 'Evan Spiegel: born on 1990-06-04.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_evan-spiegel_birthYear_1990_1', 'ent_evan-spiegel', '1990', 1990, 'career', 'work',
   'Notable event (1990)', 'Evan Spiegel: notable event on 1990.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_evan-spiegel_activeYearsStartYear_2011_2', 'ent_evan-spiegel', '2011', 2011, 'career', 'work',
   'Notable event (2011)', 'Evan Spiegel: notable event on 2011.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_faith-hill_birthDate_1967_0', 'ent_faith-hill', '1967-09-21', 1967, 'birth', 'life',
   'Born (1967)', 'Faith Hill: born on 1967-09-21.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_faith-hill_activeYearsStartYear_1993_1', 'ent_faith-hill', '1993', 1993, 'career', 'work',
   'Notable event (1993)', 'Faith Hill: notable event on 1993.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_fannie-lou-hamer_birthDate_1917_0', 'ent_fannie-lou-hamer', '1917-10-06', 1917, 'birth', 'life',
   'Born (1917)', 'Fannie Lou Hamer: born on 1917-10-06.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_fannie-lou-hamer_birthYear_1917_1', 'ent_fannie-lou-hamer', '1917', 1917, 'career', 'work',
   'Notable event (1917)', 'Fannie Lou Hamer: notable event on 1917.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_fannie-lou-hamer_deathDate_1977_2', 'ent_fannie-lou-hamer', '1977-03-14', 1977, 'death', 'life',
   'Died (1977)', 'Fannie Lou Hamer: died on 1977-03-14.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_fannie-lou-hamer_deathYear_1977_3', 'ent_fannie-lou-hamer', '1977', 1977, 'career', 'work',
   'Notable event (1977)', 'Fannie Lou Hamer: notable event on 1977.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_farrah-franklin_birthDate_1981_0', 'ent_farrah-franklin', '1981-05-03', 1981, 'birth', 'life',
   'Born (1981)', 'Farrah Franklin: born on 1981-05-03.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_farrah-franklin_activeYearsStartYear_1999_1', 'ent_farrah-franklin', '1999', 1999, 'career', 'work',
   'Notable event (1999)', 'Farrah Franklin: notable event on 1999.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_florence-harding_birthDate_1860_0', 'ent_florence-harding', '1860-08-15', 1860, 'birth', 'life',
   'Born (1860)', 'Florence Harding: born on 1860-08-15.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_florence-harding_termStart_1904_1', 'ent_florence-harding', '1904-01-11', 1904, 'political', 'public',
   'Term started (1904)', 'Florence Harding: term started on 1904-01-11.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_florence-harding_termEnd_1906_2', 'ent_florence-harding', '1906-01-08', 1906, 'political', 'public',
   'Term ended (1906)', 'Florence Harding: term ended on 1906-01-08.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_florence-harding_termStart_1921_3', 'ent_florence-harding', '1921-03-04', 1921, 'political', 'public',
   'Term started (1921)', 'Florence Harding: term started on 1921-03-04.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_florence-harding_termEnd_1923_4', 'ent_florence-harding', '1923-08-02', 1923, 'political', 'public',
   'Term ended (1923)', 'Florence Harding: term ended on 1923-08-02.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_florence-harding_deathDate_1924_5', 'ent_florence-harding', '1924-11-21', 1924, 'death', 'life',
   'Died (1924)', 'Florence Harding: died on 1924-11-21.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_florence-harding_date_2012_6', 'ent_florence-harding', '2012-05-09', 2012, 'career', 'work',
   'Notable event (2012)', 'Florence Harding: notable event on 2012-05-09.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frances-cleveland_birthDate_1864_0', 'ent_frances-cleveland', '1864-07-21', 1864, 'birth', 'life',
   'Born (1864)', 'Frances Cleveland: born on 1864-07-21.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frances-cleveland_termStart_1886_1', 'ent_frances-cleveland', '1886-06-02', 1886, 'political', 'public',
   'Term started (1886)', 'Frances Cleveland: term started on 1886-06-02.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frances-cleveland_termEnd_1889_2', 'ent_frances-cleveland', '1889-03-04', 1889, 'political', 'public',
   'Term ended (1889)', 'Frances Cleveland: term ended on 1889-03-04.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frances-cleveland_termStart_1893_3', 'ent_frances-cleveland', '1893-03-04', 1893, 'political', 'public',
   'Term started (1893)', 'Frances Cleveland: term started on 1893-03-04.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frances-cleveland_termEnd_1897_4', 'ent_frances-cleveland', '1897-03-04', 1897, 'political', 'public',
   'Term ended (1897)', 'Frances Cleveland: term ended on 1897-03-04.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frances-cleveland_deathDate_1947_5', 'ent_frances-cleveland', '1947-10-29', 1947, 'death', 'life',
   'Died (1947)', 'Frances Cleveland: died on 1947-10-29.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_francis-crick_birthDate_1916_0', 'ent_francis-crick', '1916-06-08', 1916, 'birth', 'life',
   'Born (1916)', 'Francis Crick: born on 1916-06-08.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_francis-crick_deathDate_2004_1', 'ent_francis-crick', '2004-07-28', 2004, 'death', 'life',
   'Died (2004)', 'Francis Crick: died on 2004-07-28.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_francis-crick_date_2009_2', 'ent_francis-crick', '2009-03-03', 2009, 'career', 'work',
   'Notable event (2009)', 'Francis Crick: notable event on 2009-03-03.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_francis-ford-coppola_birthDate_1939_0', 'ent_francis-ford-coppola', '1939-04-07', 1939, 'birth', 'life',
   'Born (1939)', 'Francis Ford Coppola: born on 1939-04-07.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_francis-ford-coppola_birthYear_1939_1', 'ent_francis-ford-coppola', '1939', 1939, 'career', 'work',
   'Notable event (1939)', 'Francis Ford Coppola: notable event on 1939.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_francis-ford-coppola_activeYearsStartYear_1962_2', 'ent_francis-ford-coppola', '1962', 1962, 'career', 'work',
   'Notable event (1962)', 'Francis Ford Coppola: notable event on 1962.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_francis-ford-coppola_spouse_1963_3', 'ent_francis-ford-coppola', '1963-02-02', 1963, 'personal_life', 'life',
   'Marriage (1963)', 'Francis Ford Coppola: marriage on 1963-02-02.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_francis-ford-coppola_spouse_2024_4', 'ent_francis-ford-coppola', '2024-04-12', 2024, 'personal_life', 'life',
   'Marriage (2024)', 'Francis Ford Coppola: marriage on 2024-04-12.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_francis-marion_serviceStartYear_1757_0', 'ent_francis-marion', '1757', 1757, 'career', 'work',
   'Notable event (1757)', 'Francis Marion: notable event on 1757.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_francis-marion_serviceEndYear_1782_1', 'ent_francis-marion', '1782', 1782, 'career', 'work',
   'Notable event (1782)', 'Francis Marion: notable event on 1782.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_francis-marion_deathDate_1795_2', 'ent_francis-marion', '1795-02-27', 1795, 'death', 'life',
   'Died (1795)', 'Francis Marion: died on 1795-02-27.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frank-sinatra_birthDate_1915_0', 'ent_frank-sinatra', '1915-12-12', 1915, 'birth', 'life',
   'Born (1915)', 'Frank Sinatra: born on 1915-12-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frank-sinatra_birthYear_1915_1', 'ent_frank-sinatra', '1915', 1915, 'career', 'work',
   'Notable event (1915)', 'Frank Sinatra: notable event on 1915.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frank-sinatra_activeYearsStartYear_1935_2', 'ent_frank-sinatra', '1935', 1935, 'career', 'work',
   'Notable event (1935)', 'Frank Sinatra: notable event on 1935.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frank-sinatra_spouse_1939_3', 'ent_frank-sinatra', '1939-02-04', 1939, 'personal_life', 'life',
   'Marriage (1939)', 'Frank Sinatra: marriage on 1939-02-04.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frank-sinatra_spouse_1951_4', 'ent_frank-sinatra', '1951-10-29', 1951, 'personal_life', 'life',
   'Marriage (1951)', 'Frank Sinatra: marriage on 1951-10-29.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frank-sinatra_spouse_1966_5', 'ent_frank-sinatra', '1966-07-19', 1966, 'personal_life', 'life',
   'Marriage (1966)', 'Frank Sinatra: marriage on 1966-07-19.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frank-sinatra_spouse_1976_6', 'ent_frank-sinatra', '1976-07-11', 1976, 'personal_life', 'life',
   'Marriage (1976)', 'Frank Sinatra: marriage on 1976-07-11.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frank-sinatra_activeYearsEndYear_1995_7', 'ent_frank-sinatra', '1995', 1995, 'career', 'work',
   'Notable event (1995)', 'Frank Sinatra: notable event on 1995.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frank-sinatra_deathDate_1998_8', 'ent_frank-sinatra', '1998-05-14', 1998, 'death', 'life',
   'Died (1998)', 'Frank Sinatra: died on 1998-05-14.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frank-sinatra_deathYear_1998_9', 'ent_frank-sinatra', '1998', 1998, 'career', 'work',
   'Notable event (1998)', 'Frank Sinatra: notable event on 1998.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frank-sinatra_date_2018_10', 'ent_frank-sinatra', '2018-05-11', 2018, 'career', 'work',
   'Notable event (2018)', 'Frank Sinatra: notable event on 2018-05-11.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_franklin-pierce_birthDate_1804_0', 'ent_franklin-pierce', '1804-11-23', 1804, 'birth', 'life',
   'Born (1804)', 'Franklin Pierce: born on 1804-11-23.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_franklin-pierce_termStart_1829_1', 'ent_franklin-pierce', '1829-01-07', 1829, 'political', 'public',
   'Term started (1829)', 'Franklin Pierce: term started on 1829-01-07.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_franklin-pierce_termStart_1831_2', 'ent_franklin-pierce', '1831-01-05', 1831, 'political', 'public',
   'Term started (1831)', 'Franklin Pierce: term started on 1831-01-05.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_franklin-pierce_termEnd_1833_3', 'ent_franklin-pierce', '1833-01-02', 1833, 'political', 'public',
   'Term ended (1833)', 'Franklin Pierce: term ended on 1833-01-02.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_franklin-pierce_spouse_1834_4', 'ent_franklin-pierce', '1834-11-19', 1834, 'personal_life', 'life',
   'Marriage (1834)', 'Franklin Pierce: marriage on 1834-11-19.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_franklin-pierce_termEnd_1837_5', 'ent_franklin-pierce', '1837-03-03', 1837, 'political', 'public',
   'Term ended (1837)', 'Franklin Pierce: term ended on 1837-03-03.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_franklin-pierce_termEnd_1842_6', 'ent_franklin-pierce', '1842-02-28', 1842, 'political', 'public',
   'Term ended (1842)', 'Franklin Pierce: term ended on 1842-02-28.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_franklin-pierce_termStart_1853_7', 'ent_franklin-pierce', '1853-03-04', 1853, 'political', 'public',
   'Term started (1853)', 'Franklin Pierce: term started on 1853-03-04.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_franklin-pierce_termEnd_1857_8', 'ent_franklin-pierce', '1857-03-04', 1857, 'political', 'public',
   'Term ended (1857)', 'Franklin Pierce: term ended on 1857-03-04.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_franklin-pierce_spouse_1863_9', 'ent_franklin-pierce', '1863-12-02', 1863, 'personal_life', 'life',
   'Marriage (1863)', 'Franklin Pierce: marriage on 1863-12-02.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_franklin-pierce_deathDate_1869_10', 'ent_franklin-pierce', '1869-10-08', 1869, 'death', 'life',
   'Died (1869)', 'Franklin Pierce: died on 1869-10-08.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_franklin-pierce_date_2022_11', 'ent_franklin-pierce', '2022-06-18', 2022, 'career', 'work',
   'Notable event (2022)', 'Franklin Pierce: notable event on 2022-06-18.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_freddie-mercury_birthDate_1946_0', 'ent_freddie-mercury', '1946-09-05', 1946, 'birth', 'life',
   'Born (1946)', 'Freddie Mercury: born on 1946-09-05.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_freddie-mercury_birthYear_1946_1', 'ent_freddie-mercury', '1946', 1946, 'career', 'work',
   'Notable event (1946)', 'Freddie Mercury: notable event on 1946.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_freddie-mercury_activeYearsStartYear_1969_2', 'ent_freddie-mercury', '1969', 1969, 'career', 'work',
   'Notable event (1969)', 'Freddie Mercury: notable event on 1969.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_freddie-mercury_deathDate_1991_3', 'ent_freddie-mercury', '1991-11-24', 1991, 'death', 'life',
   'Died (1991)', 'Freddie Mercury: died on 1991-11-24.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_freddie-mercury_activeYearsEndYear_1991_4', 'ent_freddie-mercury', '1991', 1991, 'career', 'work',
   'Notable event (1991)', 'Freddie Mercury: notable event on 1991.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frederic-remington_birthDate_1861_0', 'ent_frederic-remington', '1861-10-04', 1861, 'birth', 'life',
   'Born (1861)', 'Frederic Remington: born on 1861-10-04.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frederic-remington_deathDate_1909_1', 'ent_frederic-remington', '1909-12-26', 1909, 'death', 'life',
   'Died (1909)', 'Frederic Remington: died on 1909-12-26.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frederic-remington_date_2012_2', 'ent_frederic-remington', '2012-10-22', 2012, 'career', 'work',
   'Notable event (2012)', 'Frederic Remington: notable event on 2012-10-22.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frederic-remington_date_2019_3', 'ent_frederic-remington', '2019-12-05', 2019, 'career', 'work',
   'Notable event (2019)', 'Frederic Remington: notable event on 2019-12-05.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frederic-remington_date_2021_4', 'ent_frederic-remington', '2021-05-12', 2021, 'career', 'work',
   'Notable event (2021)', 'Frederic Remington: notable event on 2021-05-12.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frederick-douglass_birthDate_1818_0', 'ent_frederick-douglass', '1818-02-14', 1818, 'birth', 'life',
   'Born (1818)', 'Frederick Douglass: born on 1818-02-14.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frederick-douglass_termStart_1889_1', 'ent_frederick-douglass', '1889-11-14', 1889, 'political', 'public',
   'Term started (1889)', 'Frederick Douglass: term started on 1889-11-14.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frederick-douglass_termEnd_1891_2', 'ent_frederick-douglass', '1891-07-30', 1891, 'political', 'public',
   'Term ended (1891)', 'Frederick Douglass: term ended on 1891-07-30.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_frederick-douglass_deathDate_1895_3', 'ent_frederick-douglass', '1895-02-20', 1895, 'death', 'life',
   'Died (1895)', 'Frederick Douglass: died on 1895-02-20.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_garret-hobart_birthDate_1844_0', 'ent_garret-hobart', '1844-06-03', 1844, 'birth', 'life',
   'Born (1844)', 'Garret Hobart: born on 1844-06-03.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_garret-hobart_termStart_1873_1', 'ent_garret-hobart', '1873-01-14', 1873, 'political', 'public',
   'Term started (1873)', 'Garret Hobart: term started on 1873-01-14.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_garret-hobart_termStart_1874_2', 'ent_garret-hobart', '1874-01-13', 1874, 'political', 'public',
   'Term started (1874)', 'Garret Hobart: term started on 1874-01-13.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_garret-hobart_termEnd_1875_3', 'ent_garret-hobart', '1875-01-12', 1875, 'political', 'public',
   'Term ended (1875)', 'Garret Hobart: term ended on 1875-01-12.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_garret-hobart_termStart_1877_4', 'ent_garret-hobart', '1877-01-09', 1877, 'political', 'public',
   'Term started (1877)', 'Garret Hobart: term started on 1877-01-09.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_garret-hobart_termStart_1881_5', 'ent_garret-hobart', '1881-01-11', 1881, 'political', 'public',
   'Term started (1881)', 'Garret Hobart: term started on 1881-01-11.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_garret-hobart_termEnd_1883_6', 'ent_garret-hobart', '1883-01-09', 1883, 'political', 'public',
   'Term ended (1883)', 'Garret Hobart: term ended on 1883-01-09.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_garret-hobart_termStart_1897_7', 'ent_garret-hobart', '1897-03-04', 1897, 'political', 'public',
   'Term started (1897)', 'Garret Hobart: term started on 1897-03-04.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_garret-hobart_deathDate_1899_8', 'ent_garret-hobart', '1899-11-21', 1899, 'death', 'life',
   'Died (1899)', 'Garret Hobart: died on 1899-11-21.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_garret-hobart_termEnd_1899_9', 'ent_garret-hobart', '1899-11-21', 1899, 'political', 'public',
   'Term ended (1899)', 'Garret Hobart: term ended on 1899-11-21.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_garrett-camp_birthDate_1978_0', 'ent_garrett-camp', '1978-10-04', 1978, 'birth', 'life',
   'Born (1978)', 'Garrett Camp: born on 1978-10-04.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_garrett-camp_birthYear_1978_1', 'ent_garrett-camp', '1978', 1978, 'career', 'work',
   'Notable event (1978)', 'Garrett Camp: notable event on 1978.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_garth-brooks_birthDate_1962_0', 'ent_garth-brooks', '1962-02-07', 1962, 'birth', 'life',
   'Born (1962)', 'Garth Brooks: born on 1962-02-07.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_garth-brooks_birthYear_1962_1', 'ent_garth-brooks', '1962', 1962, 'career', 'work',
   'Notable event (1962)', 'Garth Brooks: notable event on 1962.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-clooney_birthDate_1961_0', 'ent_george-clooney', '1961-05-06', 1961, 'birth', 'life',
   'Born (1961)', 'George Clooney: born on 1961-05-06.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-clooney_birthYear_1961_1', 'ent_george-clooney', '1961', 1961, 'career', 'work',
   'Notable event (1961)', 'George Clooney: notable event on 1961.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-clooney_activeYearsStartYear_1978_2', 'ent_george-clooney', '1978', 1978, 'career', 'work',
   'Notable event (1978)', 'George Clooney: notable event on 1978.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-eastman_birthDate_1854_0', 'ent_george-eastman', '1854-07-12', 1854, 'birth', 'life',
   'Born (1854)', 'George Eastman: born on 1854-07-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-eastman_birthYear_1854_1', 'ent_george-eastman', '1854', 1854, 'career', 'work',
   'Notable event (1854)', 'George Eastman: notable event on 1854.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-eastman_years_1924_2', 'ent_george-eastman', '1924-03-31', 1924, 'career', 'work',
   'Notable event (1924)', 'George Eastman: notable event on 1924-03-31.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-eastman_deathDate_1932_3', 'ent_george-eastman', '1932-03-14', 1932, 'death', 'life',
   'Died (1932)', 'George Eastman: died on 1932-03-14.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-eastman_deathYear_1932_4', 'ent_george-eastman', '1932', 1932, 'career', 'work',
   'Notable event (1932)', 'George Eastman: notable event on 1932.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-eastman_date_2021_5', 'ent_george-eastman', '2021-12-02', 2021, 'career', 'work',
   'Notable event (2021)', 'George Eastman: notable event on 2021-12-02.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-gershwin_birthDate_1898_0', 'ent_george-gershwin', '1898-09-26', 1898, 'birth', 'life',
   'Born (1898)', 'George Gershwin: born on 1898-09-26.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-gershwin_birthYear_1898_1', 'ent_george-gershwin', '1898', 1898, 'career', 'work',
   'Notable event (1898)', 'George Gershwin: notable event on 1898.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-gershwin_activeYearsStartYear_1916_2', 'ent_george-gershwin', '1916', 1916, 'career', 'work',
   'Notable event (1916)', 'George Gershwin: notable event on 1916.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-gershwin_deathDate_1937_3', 'ent_george-gershwin', '1937-07-11', 1937, 'death', 'life',
   'Died (1937)', 'George Gershwin: died on 1937-07-11.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-gershwin_activeYearsEndYear_1937_4', 'ent_george-gershwin', '1937', 1937, 'career', 'work',
   'Notable event (1937)', 'George Gershwin: notable event on 1937.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-gershwin_date_2025_5', 'ent_george-gershwin', '2025-01-27', 2025, 'career', 'work',
   'Notable event (2025)', 'George Gershwin: notable event on 2025-01-27.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-jones_birthDate_1931_0', 'ent_george-jones', '1931-09-12', 1931, 'birth', 'life',
   'Born (1931)', 'George Jones: born on 1931-09-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-jones_birthYear_1931_1', 'ent_george-jones', '1931', 1931, 'career', 'work',
   'Notable event (1931)', 'George Jones: notable event on 1931.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-jones_activeYearsStartYear_1947_2', 'ent_george-jones', '1947', 1947, 'career', 'work',
   'Notable event (1947)', 'George Jones: notable event on 1947.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-jones_deathDate_2013_3', 'ent_george-jones', '2013-04-26', 2013, 'death', 'life',
   'Died (2013)', 'George Jones: died on 2013-04-26.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-jones_activeYearsEndYear_2013_4', 'ent_george-jones', '2013', 2013, 'career', 'work',
   'Notable event (2013)', 'George Jones: notable event on 2013.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-lucas_birthDate_1944_0', 'ent_george-lucas', '1944-05-14', 1944, 'birth', 'life',
   'Born (1944)', 'George Lucas: born on 1944-05-14.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-lucas_birthYear_1944_1', 'ent_george-lucas', '1944', 1944, 'career', 'work',
   'Notable event (1944)', 'George Lucas: notable event on 1944.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-lucas_activeYearsStartYear_1965_2', 'ent_george-lucas', '1965', 1965, 'career', 'work',
   'Notable event (1965)', 'George Lucas: notable event on 1965.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-pickett_birthDate_1825_0', 'ent_george-pickett', '1825-01-16', 1825, 'birth', 'life',
   'Born (1825)', 'George Pickett: born on 1825-01-16.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-pickett_serviceEndYear_1846_1', 'ent_george-pickett', '1846', 1846, 'career', 'work',
   'Notable event (1846)', 'George Pickett: notable event on 1846.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-pickett_deathDate_1875_2', 'ent_george-pickett', '1875-07-30', 1875, 'death', 'life',
   'Died (1875)', 'George Pickett: died on 1875-07-30.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-pickett_date_2009_3', 'ent_george-pickett', '2009-09-13', 2009, 'career', 'work',
   'Notable event (2009)', 'George Pickett: notable event on 2009-09-13.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-shultz_birthDate_1920_0', 'ent_george-shultz', '1920-12-13', 1920, 'birth', 'life',
   'Born (1920)', 'George Shultz: born on 1920-12-13.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-shultz_spouse_1946_1', 'ent_george-shultz', '1946-02-16', 1946, 'personal_life', 'life',
   'Marriage (1946)', 'George Shultz: marriage on 1946-02-16.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-shultz_termStart_1969_2', 'ent_george-shultz', '1969-01-22', 1969, 'political', 'public',
   'Term started (1969)', 'George Shultz: term started on 1969-01-22.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-shultz_termEnd_1970_3', 'ent_george-shultz', '1970-07-01', 1970, 'political', 'public',
   'Term ended (1970)', 'George Shultz: term ended on 1970-07-01.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-shultz_termEnd_1972_4', 'ent_george-shultz', '1972-06-11', 1972, 'political', 'public',
   'Term ended (1972)', 'George Shultz: term ended on 1972-06-11.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-shultz_termEnd_1974_5', 'ent_george-shultz', '1974-05-08', 1974, 'political', 'public',
   'Term ended (1974)', 'George Shultz: term ended on 1974-05-08.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-shultz_termStart_1982_6', 'ent_george-shultz', '1982-07-16', 1982, 'political', 'public',
   'Term started (1982)', 'George Shultz: term started on 1982-07-16.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-shultz_termEnd_1989_7', 'ent_george-shultz', '1989-01-20', 1989, 'political', 'public',
   'Term ended (1989)', 'George Shultz: term ended on 1989-01-20.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-shultz_date_2018_8', 'ent_george-shultz', '2018-06-14', 2018, 'career', 'work',
   'Notable event (2018)', 'George Shultz: notable event on 2018-06-14.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-shultz_deathDate_2021_9', 'ent_george-shultz', '2021-02-06', 2021, 'death', 'life',
   'Died (2021)', 'George Shultz: died on 2021-02-06.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-washington_birthDate_1732_0', 'ent_george-washington', '1732-02-22', 1732, 'birth', 'life',
   'Born (1732)', 'George Washington: born on 1732-02-22.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-washington_termStart_1758_1', 'ent_george-washington', '1758-07-24', 1758, 'political', 'public',
   'Term started (1758)', 'George Washington: term started on 1758-07-24.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-washington_spouse_1759_2', 'ent_george-washington', '1759-01-06', 1759, 'personal_life', 'life',
   'Marriage (1759)', 'George Washington: marriage on 1759-01-06.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-washington_termStart_1774_3', 'ent_george-washington', '1774-09-05', 1774, 'political', 'public',
   'Term started (1774)', 'George Washington: term started on 1774-09-05.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-washington_termEnd_1775_4', 'ent_george-washington', '1775-06-16', 1775, 'political', 'public',
   'Term ended (1775)', 'George Washington: term ended on 1775-06-16.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-washington_termEnd_1783_5', 'ent_george-washington', '1783-12-23', 1783, 'political', 'public',
   'Term ended (1783)', 'George Washington: term ended on 1783-12-23.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-washington_termStart_1788_6', 'ent_george-washington', '1788-04-30', 1788, 'political', 'public',
   'Term started (1788)', 'George Washington: term started on 1788-04-30.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-washington_termStart_1789_7', 'ent_george-washington', '1789-04-30', 1789, 'political', 'public',
   'Term started (1789)', 'George Washington: term started on 1789-04-30.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-washington_termEnd_1797_8', 'ent_george-washington', '1797-03-04', 1797, 'political', 'public',
   'Term ended (1797)', 'George Washington: term ended on 1797-03-04.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-washington_deathDate_1799_9', 'ent_george-washington', '1799-12-14', 1799, 'death', 'life',
   'Died (1799)', 'George Washington: died on 1799-12-14.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-washington_termEnd_1799_10', 'ent_george-washington', '1799-12-14', 1799, 'political', 'public',
   'Term ended (1799)', 'George Washington: term ended on 1799-12-14.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-westinghouse_birthDate_1846_0', 'ent_george-westinghouse', '1846-10-06', 1846, 'birth', 'life',
   'Born (1846)', 'George Westinghouse: born on 1846-10-06.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_george-westinghouse_deathDate_1914_1', 'ent_george-westinghouse', '1914-03-12', 1914, 'death', 'life',
   'Died (1914)', 'George Westinghouse: died on 1914-03-12.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_gerald-ford_birthDate_1913_0', 'ent_gerald-ford', '1913-07-14', 1913, 'birth', 'life',
   'Born (1913)', 'Gerald Ford: born on 1913-07-14.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_gerald-ford_spouse_1948_1', 'ent_gerald-ford', '1948-10-15', 1948, 'personal_life', 'life',
   'Marriage (1948)', 'Gerald Ford: marriage on 1948-10-15.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_gerald-ford_termStart_1949_2', 'ent_gerald-ford', '1949-01-03', 1949, 'political', 'public',
   'Term started (1949)', 'Gerald Ford: term started on 1949-01-03.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_gerald-ford_termEnd_1973_3', 'ent_gerald-ford', '1973-12-06', 1973, 'political', 'public',
   'Term ended (1973)', 'Gerald Ford: term ended on 1973-12-06.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_gerald-ford_termEnd_1974_4', 'ent_gerald-ford', '1974-08-09', 1974, 'political', 'public',
   'Term ended (1974)', 'Gerald Ford: term ended on 1974-08-09.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_gerald-ford_termEnd_1977_5', 'ent_gerald-ford', '1977-01-20', 1977, 'political', 'public',
   'Term ended (1977)', 'Gerald Ford: term ended on 1977-01-20.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_gerald-ford_deathDate_2006_6', 'ent_gerald-ford', '2006-12-26', 2006, 'death', 'life',
   'Died (2006)', 'Gerald Ford: died on 2006-12-26.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_gerald-ford_date_2020_7', 'ent_gerald-ford', '2020-01-26', 2020, 'career', 'work',
   'Notable event (2020)', 'Gerald Ford: notable event on 2020-01-26.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_gerald-ford_date_2021_8', 'ent_gerald-ford', '2021-08-20', 2021, 'career', 'work',
   'Notable event (2021)', 'Gerald Ford: notable event on 2021-08-20.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_geronimo_birthDate_1829_0', 'ent_geronimo', '1829-06-16', 1829, 'birth', 'life',
   'Born (1829)', 'Geronimo: born on 1829-06-16.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_geronimo_deathDate_1909_1', 'ent_geronimo', '1909-02-17', 1909, 'death', 'life',
   'Died (1909)', 'Geronimo: died on 1909-02-17.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_glenn-frey_birthDate_1948_0', 'ent_glenn-frey', '1948-11-06', 1948, 'birth', 'life',
   'Born (1948)', 'Glenn Frey: born on 1948-11-06.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_glenn-frey_birthYear_1948_1', 'ent_glenn-frey', '1948', 1948, 'career', 'work',
   'Notable event (1948)', 'Glenn Frey: notable event on 1948.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_glenn-frey_activeYearsStartYear_1966_2', 'ent_glenn-frey', '1966', 1966, 'career', 'work',
   'Notable event (1966)', 'Glenn Frey: notable event on 1966.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_glenn-frey_activeYearsEndYear_2015_3', 'ent_glenn-frey', '2015', 2015, 'career', 'work',
   'Notable event (2015)', 'Glenn Frey: notable event on 2015.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_glenn-frey_deathDate_2016_4', 'ent_glenn-frey', '2016-01-18', 2016, 'death', 'life',
   'Died (2016)', 'Glenn Frey: died on 2016-01-18.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_glenn-frey_deathYear_2016_5', 'ent_glenn-frey', '2016', 2016, 'career', 'work',
   'Notable event (2016)', 'Glenn Frey: notable event on 2016.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-coddington_birthDate_1941_0', 'ent_grace-coddington', '1941-04-20', 1941, 'birth', 'life',
   'Born (1941)', 'Grace Coddington: born on 1941-04-20.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-coddington_birthYear_1941_1', 'ent_grace-coddington', '1941', 1941, 'career', 'work',
   'Notable event (1941)', 'Grace Coddington: notable event on 1941.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-coolidge_birthDate_1879_0', 'ent_grace-coolidge', '1879-01-03', 1879, 'birth', 'life',
   'Born (1879)', 'Grace Coolidge: born on 1879-01-03.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-coolidge_termStart_1910_1', 'ent_grace-coolidge', '1910-01-03', 1910, 'political', 'public',
   'Term started (1910)', 'Grace Coolidge: term started on 1910-01-03.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-coolidge_termEnd_1912_2', 'ent_grace-coolidge', '1912-01-01', 1912, 'political', 'public',
   'Term ended (1912)', 'Grace Coolidge: term ended on 1912-01-01.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-coolidge_termStart_1916_3', 'ent_grace-coolidge', '1916-01-06', 1916, 'political', 'public',
   'Term started (1916)', 'Grace Coolidge: term started on 1916-01-06.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-coolidge_termEnd_1919_4', 'ent_grace-coolidge', '1919-01-02', 1919, 'political', 'public',
   'Term ended (1919)', 'Grace Coolidge: term ended on 1919-01-02.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-coolidge_termEnd_1921_5', 'ent_grace-coolidge', '1921-01-06', 1921, 'political', 'public',
   'Term ended (1921)', 'Grace Coolidge: term ended on 1921-01-06.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-coolidge_termEnd_1923_6', 'ent_grace-coolidge', '1923-08-02', 1923, 'political', 'public',
   'Term ended (1923)', 'Grace Coolidge: term ended on 1923-08-02.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-coolidge_termEnd_1929_7', 'ent_grace-coolidge', '1929-03-04', 1929, 'political', 'public',
   'Term ended (1929)', 'Grace Coolidge: term ended on 1929-03-04.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-coolidge_deathDate_1957_8', 'ent_grace-coolidge', '1957-07-08', 1957, 'death', 'life',
   'Died (1957)', 'Grace Coolidge: died on 1957-07-08.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-coolidge_date_2017_9', 'ent_grace-coolidge', '2017-11-14', 2017, 'career', 'work',
   'Notable event (2017)', 'Grace Coolidge: notable event on 2017-11-14.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-coolidge_date_2018_10', 'ent_grace-coolidge', '2018-02-03', 2018, 'career', 'work',
   'Notable event (2018)', 'Grace Coolidge: notable event on 2018-02-03.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-hopper_birthDate_1906_0', 'ent_grace-hopper', '1906-12-09', 1906, 'birth', 'life',
   'Born (1906)', 'Grace Hopper: born on 1906-12-09.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-hopper_birthYear_1906_1', 'ent_grace-hopper', '1906', 1906, 'career', 'work',
   'Notable event (1906)', 'Grace Hopper: notable event on 1906.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-hopper_deathDate_1992_2', 'ent_grace-hopper', '1992-01-01', 1992, 'death', 'life',
   'Died (1992)', 'Grace Hopper: died on 1992-01-01.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-hopper_deathYear_1992_3', 'ent_grace-hopper', '1992', 1992, 'career', 'work',
   'Notable event (1992)', 'Grace Hopper: notable event on 1992.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-hopper_date_2010_4', 'ent_grace-hopper', '2010-02-24', 2010, 'career', 'work',
   'Notable event (2010)', 'Grace Hopper: notable event on 2010-02-24.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-hopper_date_2017_5', 'ent_grace-hopper', '2017-09-22', 2017, 'career', 'work',
   'Notable event (2017)', 'Grace Hopper: notable event on 2017-09-22.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-kelly_birthDate_1929_0', 'ent_grace-kelly', '1929-11-12', 1929, 'birth', 'life',
   'Born (1929)', 'Grace Kelly: born on 1929-11-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-kelly_activeYearsEndYear_1956_1', 'ent_grace-kelly', '1956', 1956, 'career', 'work',
   'Notable event (1956)', 'Grace Kelly: notable event on 1956.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-kelly_deathDate_1982_2', 'ent_grace-kelly', '1982-09-14', 1982, 'death', 'life',
   'Died (1982)', 'Grace Kelly: died on 1982-09-14.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grace-kelly_burialDate_1982_3', 'ent_grace-kelly', '1982-09-18', 1982, 'career', 'work',
   'Notable event (1982)', 'Grace Kelly: notable event on 1982-09-18.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grant-wood_birthDate_1891_0', 'ent_grant-wood', '1891-02-13', 1891, 'birth', 'life',
   'Born (1891)', 'Grant Wood: born on 1891-02-13.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grant-wood_deathDate_1942_1', 'ent_grant-wood', '1942-02-12', 1942, 'death', 'life',
   'Died (1942)', 'Grant Wood: died on 1942-02-12.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grant-wood_date_2010_2', 'ent_grant-wood', '2010-11-26', 2010, 'career', 'work',
   'Notable event (2010)', 'Grant Wood: notable event on 2010-11-26.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grant-wood_date_2019_3', 'ent_grant-wood', '2019-05-24', 2019, 'career', 'work',
   'Notable event (2019)', 'Grant Wood: notable event on 2019-05-24.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_graydon-carter_birthDate_1949_0', 'ent_graydon-carter', '1949-07-14', 1949, 'birth', 'life',
   'Born (1949)', 'Graydon Carter: born on 1949-07-14.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_graydon-carter_birthYear_1949_1', 'ent_graydon-carter', '1949', 1949, 'career', 'work',
   'Notable event (1949)', 'Graydon Carter: notable event on 1949.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grover-cleveland_birthDate_1837_0', 'ent_grover-cleveland', '1837-03-18', 1837, 'birth', 'life',
   'Born (1837)', 'Grover Cleveland: born on 1837-03-18.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grover-cleveland_termStart_1871_1', 'ent_grover-cleveland', '1871-01-01', 1871, 'political', 'public',
   'Term started (1871)', 'Grover Cleveland: term started on 1871-01-01.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grover-cleveland_termEnd_1873_2', 'ent_grover-cleveland', '1873-12-31', 1873, 'political', 'public',
   'Term ended (1873)', 'Grover Cleveland: term ended on 1873-12-31.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grover-cleveland_termEnd_1882_3', 'ent_grover-cleveland', '1882-11-20', 1882, 'political', 'public',
   'Term ended (1882)', 'Grover Cleveland: term ended on 1882-11-20.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grover-cleveland_termStart_1883_4', 'ent_grover-cleveland', '1883-01-01', 1883, 'political', 'public',
   'Term started (1883)', 'Grover Cleveland: term started on 1883-01-01.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grover-cleveland_termEnd_1885_5', 'ent_grover-cleveland', '1885-01-06', 1885, 'political', 'public',
   'Term ended (1885)', 'Grover Cleveland: term ended on 1885-01-06.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grover-cleveland_spouse_1886_6', 'ent_grover-cleveland', '1886-06-02', 1886, 'personal_life', 'life',
   'Marriage (1886)', 'Grover Cleveland: marriage on 1886-06-02.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grover-cleveland_termEnd_1889_7', 'ent_grover-cleveland', '1889-03-04', 1889, 'political', 'public',
   'Term ended (1889)', 'Grover Cleveland: term ended on 1889-03-04.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grover-cleveland_termStart_1893_8', 'ent_grover-cleveland', '1893-03-04', 1893, 'political', 'public',
   'Term started (1893)', 'Grover Cleveland: term started on 1893-03-04.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grover-cleveland_termEnd_1897_9', 'ent_grover-cleveland', '1897-03-04', 1897, 'political', 'public',
   'Term ended (1897)', 'Grover Cleveland: term ended on 1897-03-04.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grover-cleveland_deathDate_1908_10', 'ent_grover-cleveland', '1908-06-24', 1908, 'death', 'life',
   'Died (1908)', 'Grover Cleveland: died on 1908-06-24.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grover-cleveland_date_2011_11', 'ent_grover-cleveland', '2011-11-23', 2011, 'career', 'work',
   'Notable event (2011)', 'Grover Cleveland: notable event on 2011-11-23.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_grover-cleveland_date_2012_12', 'ent_grover-cleveland', '2012-06-08', 2012, 'career', 'work',
   'Notable event (2012)', 'Grover Cleveland: notable event on 2012-06-08.', 'src_dbpedia', 0.8, 12, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hank-aaron_birthDate_1934_0', 'ent_hank-aaron', '1934-02-05', 1934, 'birth', 'life',
   'Born (1934)', 'Hank Aaron: born on 1934-02-05.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hank-aaron_deathDate_2021_1', 'ent_hank-aaron', '2021-01-22', 2021, 'death', 'life',
   'Died (2021)', 'Hank Aaron: died on 2021-01-22.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hannibal-hamlin_birthDate_1809_0', 'ent_hannibal-hamlin', '1809-08-27', 1809, 'birth', 'life',
   'Born (1809)', 'Hannibal Hamlin: born on 1809-08-27.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hannibal-hamlin_termStart_1843_1', 'ent_hannibal-hamlin', '1843-03-04', 1843, 'political', 'public',
   'Term started (1843)', 'Hannibal Hamlin: term started on 1843-03-04.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hannibal-hamlin_termEnd_1847_2', 'ent_hannibal-hamlin', '1847-03-03', 1847, 'political', 'public',
   'Term ended (1847)', 'Hannibal Hamlin: term ended on 1847-03-03.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hannibal-hamlin_termStart_1848_3', 'ent_hannibal-hamlin', '1848-06-08', 1848, 'political', 'public',
   'Term started (1848)', 'Hannibal Hamlin: term started on 1848-06-08.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hannibal-hamlin_termEnd_1857_4', 'ent_hannibal-hamlin', '1857-01-07', 1857, 'political', 'public',
   'Term ended (1857)', 'Hannibal Hamlin: term ended on 1857-01-07.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hannibal-hamlin_termEnd_1861_5', 'ent_hannibal-hamlin', '1861-01-17', 1861, 'political', 'public',
   'Term ended (1861)', 'Hannibal Hamlin: term ended on 1861-01-17.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hannibal-hamlin_termEnd_1865_6', 'ent_hannibal-hamlin', '1865-03-04', 1865, 'political', 'public',
   'Term ended (1865)', 'Hannibal Hamlin: term ended on 1865-03-04.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hannibal-hamlin_termStart_1869_7', 'ent_hannibal-hamlin', '1869-03-04', 1869, 'political', 'public',
   'Term started (1869)', 'Hannibal Hamlin: term started on 1869-03-04.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hannibal-hamlin_termEnd_1881_8', 'ent_hannibal-hamlin', '1881-03-03', 1881, 'political', 'public',
   'Term ended (1881)', 'Hannibal Hamlin: term ended on 1881-03-03.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hannibal-hamlin_termEnd_1882_9', 'ent_hannibal-hamlin', '1882-10-17', 1882, 'political', 'public',
   'Term ended (1882)', 'Hannibal Hamlin: term ended on 1882-10-17.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hannibal-hamlin_deathDate_1891_10', 'ent_hannibal-hamlin', '1891-07-04', 1891, 'death', 'life',
   'Died (1891)', 'Hannibal Hamlin: died on 1891-07-04.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_harold-lloyd_birthDate_1893_0', 'ent_harold-lloyd', '1893-04-20', 1893, 'birth', 'life',
   'Born (1893)', 'Harold Lloyd: born on 1893-04-20.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_harold-lloyd_birthYear_1893_1', 'ent_harold-lloyd', '1893', 1893, 'career', 'work',
   'Notable event (1893)', 'Harold Lloyd: notable event on 1893.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_harold-lloyd_activeYearsStartYear_1913_2', 'ent_harold-lloyd', '1913', 1913, 'career', 'work',
   'Notable event (1913)', 'Harold Lloyd: notable event on 1913.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_harold-lloyd_activeYearsEndYear_1963_3', 'ent_harold-lloyd', '1963', 1963, 'career', 'work',
   'Notable event (1963)', 'Harold Lloyd: notable event on 1963.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_harold-lloyd_deathDate_1971_4', 'ent_harold-lloyd', '1971-03-08', 1971, 'death', 'life',
   'Died (1971)', 'Harold Lloyd: died on 1971-03-08.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_harold-lloyd_deathYear_1971_5', 'ent_harold-lloyd', '1971', 1971, 'career', 'work',
   'Notable event (1971)', 'Harold Lloyd: notable event on 1971.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_harper-lee_birthDate_1926_0', 'ent_harper-lee', '1926-04-28', 1926, 'birth', 'life',
   'Born (1926)', 'Harper Lee: born on 1926-04-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_harper-lee_activeYearsStartYear_1960_1', 'ent_harper-lee', '1960', 1960, 'career', 'work',
   'Notable event (1960)', 'Harper Lee: notable event on 1960.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_harper-lee_deathDate_2016_2', 'ent_harper-lee', '2016-02-19', 2016, 'death', 'life',
   'Died (2016)', 'Harper Lee: died on 2016-02-19.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_harper-lee_activeYearsEndYear_2016_3', 'ent_harper-lee', '2016', 2016, 'career', 'work',
   'Notable event (2016)', 'Harper Lee: notable event on 2016.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_harriet-tubman_birthYear_1822_0', 'ent_harriet-tubman', '1822', 1822, 'career', 'work',
   'Notable event (1822)', 'Harriet Tubman: notable event on 1822.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_harrison-schmitt_birthDate_1935_0', 'ent_harrison-schmitt', '1935-07-03', 1935, 'birth', 'life',
   'Born (1935)', 'Harrison Schmitt: born on 1935-07-03.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_harrison-schmitt_termStart_1977_1', 'ent_harrison-schmitt', '1977-01-03', 1977, 'political', 'public',
   'Term started (1977)', 'Harrison Schmitt: term started on 1977-01-03.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_harrison-schmitt_termEnd_1983_2', 'ent_harrison-schmitt', '1983-01-03', 1983, 'political', 'public',
   'Term ended (1983)', 'Harrison Schmitt: term ended on 1983-01-03.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_harry-styles_birthDate_1994_0', 'ent_harry-styles', '1994-02-01', 1994, 'birth', 'life',
   'Born (1994)', 'Harry Styles: born on 1994-02-01.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_harry-styles_birthYear_1994_1', 'ent_harry-styles', '1994', 1994, 'career', 'work',
   'Notable event (1994)', 'Harry Styles: notable event on 1994.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_harry-styles_activeYearsStartYear_2010_2', 'ent_harry-styles', '2010', 2010, 'career', 'work',
   'Notable event (2010)', 'Harry Styles: notable event on 2010.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hart-crane_birthDate_1899_0', 'ent_hart-crane', '1899-07-21', 1899, 'birth', 'life',
   'Born (1899)', 'Hart Crane: born on 1899-07-21.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hart-crane_activeYearsStartYear_1916_1', 'ent_hart-crane', '1916', 1916, 'career', 'work',
   'Notable event (1916)', 'Hart Crane: notable event on 1916.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hart-crane_deathDate_1932_2', 'ent_hart-crane', '1932-04-27', 1932, 'death', 'life',
   'Died (1932)', 'Hart Crane: died on 1932-04-27.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hart-crane_activeYearsEndYear_1932_3', 'ent_hart-crane', '1932', 1932, 'career', 'work',
   'Notable event (1932)', 'Hart Crane: notable event on 1932.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hart-crane_date_2008_4', 'ent_hart-crane', '2008-12-19', 2008, 'career', 'work',
   'Notable event (2008)', 'Hart Crane: notable event on 2008-12-19.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_haym-salomon_deathDate_1740_0', 'ent_haym-salomon', '1740-04-07', 1740, 'death', 'life',
   'Died (1740)', 'Haym Salomon: died on 1740-04-07.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_haym-salomon_birthDate_1740_1', 'ent_haym-salomon', '1740-04-07', 1740, 'birth', 'life',
   'Born (1740)', 'Haym Salomon: born on 1740-04-07.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_haym-salomon_birthYear_1740_2', 'ent_haym-salomon', '1740', 1740, 'career', 'work',
   'Notable event (1740)', 'Haym Salomon: notable event on 1740.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hedy-lamarr_birthDate_1914_0', 'ent_hedy-lamarr', '1914-11-09', 1914, 'birth', 'life',
   'Born (1914)', 'Hedy Lamarr: born on 1914-11-09.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hedy-lamarr_birthYear_1914_1', 'ent_hedy-lamarr', '1914', 1914, 'career', 'work',
   'Notable event (1914)', 'Hedy Lamarr: notable event on 1914.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hedy-lamarr_activeYearsStartYear_1930_2', 'ent_hedy-lamarr', '1930', 1930, 'career', 'work',
   'Notable event (1930)', 'Hedy Lamarr: notable event on 1930.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hedy-lamarr_activeYearsEndYear_1958_3', 'ent_hedy-lamarr', '1958', 1958, 'career', 'work',
   'Notable event (1958)', 'Hedy Lamarr: notable event on 1958.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hedy-lamarr_deathDate_2000_4', 'ent_hedy-lamarr', '2000-01-19', 2000, 'death', 'life',
   'Died (2000)', 'Hedy Lamarr: died on 2000-01-19.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hedy-lamarr_deathYear_2000_5', 'ent_hedy-lamarr', '2000', 2000, 'career', 'work',
   'Notable event (2000)', 'Hedy Lamarr: notable event on 2000.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_helen-frankenthaler_birthDate_1928_0', 'ent_helen-frankenthaler', '1928-12-12', 1928, 'birth', 'life',
   'Born (1928)', 'Helen Frankenthaler: born on 1928-12-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_helen-frankenthaler_date_2007_1', 'ent_helen-frankenthaler', '2007-09-29', 2007, 'career', 'work',
   'Notable event (2007)', 'Helen Frankenthaler: notable event on 2007-09-29.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_helen-frankenthaler_deathDate_2011_2', 'ent_helen-frankenthaler', '2011-12-27', 2011, 'death', 'life',
   'Died (2011)', 'Helen Frankenthaler: died on 2011-12-27.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_helen-frankenthaler_date_2015_3', 'ent_helen-frankenthaler', '2015-06-01', 2015, 'career', 'work',
   'Notable event (2015)', 'Helen Frankenthaler: notable event on 2015-06-01.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-david-thoreau_birthDate_1817_0', 'ent_henry-david-thoreau', '1817-07-12', 1817, 'birth', 'life',
   'Born (1817)', 'Henry David Thoreau: born on 1817-07-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-david-thoreau_birthYear_1817_1', 'ent_henry-david-thoreau', '1817', 1817, 'career', 'work',
   'Notable event (1817)', 'Henry David Thoreau: notable event on 1817.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-david-thoreau_deathDate_1862_2', 'ent_henry-david-thoreau', '1862-05-06', 1862, 'death', 'life',
   'Died (1862)', 'Henry David Thoreau: died on 1862-05-06.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-david-thoreau_deathYear_1862_3', 'ent_henry-david-thoreau', '1862', 1862, 'career', 'work',
   'Notable event (1862)', 'Henry David Thoreau: notable event on 1862.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-david-thoreau_date_2006_4', 'ent_henry-david-thoreau', '2006-04-05', 2006, 'career', 'work',
   'Notable event (2006)', 'Henry David Thoreau: notable event on 2006-04-05.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-david-thoreau_date_2007_5', 'ent_henry-david-thoreau', '2007-06-12', 2007, 'career', 'work',
   'Notable event (2007)', 'Henry David Thoreau: notable event on 2007-06-12.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-david-thoreau_date_2010_6', 'ent_henry-david-thoreau', '2010-12-04', 2010, 'career', 'work',
   'Notable event (2010)', 'Henry David Thoreau: notable event on 2010-12-04.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-david-thoreau_date_2014_7', 'ent_henry-david-thoreau', '2014-09-14', 2014, 'career', 'work',
   'Notable event (2014)', 'Henry David Thoreau: notable event on 2014-09-14.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-david-thoreau_date_2016_8', 'ent_henry-david-thoreau', '2016-03-04', 2016, 'career', 'work',
   'Notable event (2016)', 'Henry David Thoreau: notable event on 2016-03-04.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-david-thoreau_date_2017_9', 'ent_henry-david-thoreau', '2017-10-19', 2017, 'career', 'work',
   'Notable event (2017)', 'Henry David Thoreau: notable event on 2017-10-19.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-david-thoreau_date_2021_10', 'ent_henry-david-thoreau', '2021-04-17', 2021, 'career', 'work',
   'Notable event (2021)', 'Henry David Thoreau: notable event on 2021-04-17.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-ford_birthDate_1863_0', 'ent_henry-ford', '1863-07-30', 1863, 'birth', 'life',
   'Born (1863)', 'Henry Ford: born on 1863-07-30.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-ford_birthYear_1863_1', 'ent_henry-ford', '1863', 1863, 'career', 'work',
   'Notable event (1863)', 'Henry Ford: notable event on 1863.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-ford_activeYearsStartYear_1891_2', 'ent_henry-ford', '1891', 1891, 'career', 'work',
   'Notable event (1891)', 'Henry Ford: notable event on 1891.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-ford_activeYearsEndYear_1945_3', 'ent_henry-ford', '1945', 1945, 'career', 'work',
   'Notable event (1945)', 'Henry Ford: notable event on 1945.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-ford_deathDate_1947_4', 'ent_henry-ford', '1947-04-07', 1947, 'death', 'life',
   'Died (1947)', 'Henry Ford: died on 1947-04-07.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-ford_deathYear_1947_5', 'ent_henry-ford', '1947', 1947, 'career', 'work',
   'Notable event (1947)', 'Henry Ford: notable event on 1947.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-kissinger_birthDate_1923_0', 'ent_henry-kissinger', '1923-05-27', 1923, 'birth', 'life',
   'Born (1923)', 'Henry Kissinger: born on 1923-05-27.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-kissinger_spouse_1949_1', 'ent_henry-kissinger', '1949-02-06', 1949, 'personal_life', 'life',
   'Marriage (1949)', 'Henry Kissinger: marriage on 1949-02-06.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-kissinger_termStart_1969_2', 'ent_henry-kissinger', '1969-01-20', 1969, 'political', 'public',
   'Term started (1969)', 'Henry Kissinger: term started on 1969-01-20.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-kissinger_termStart_1973_3', 'ent_henry-kissinger', '1973-09-22', 1973, 'political', 'public',
   'Term started (1973)', 'Henry Kissinger: term started on 1973-09-22.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-kissinger_spouse_1974_4', 'ent_henry-kissinger', '1974-03-30', 1974, 'personal_life', 'life',
   'Marriage (1974)', 'Henry Kissinger: marriage on 1974-03-30.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-kissinger_termEnd_1975_5', 'ent_henry-kissinger', '1975-11-03', 1975, 'political', 'public',
   'Term ended (1975)', 'Henry Kissinger: term ended on 1975-11-03.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-kissinger_termEnd_1977_6', 'ent_henry-kissinger', '1977-01-20', 1977, 'political', 'public',
   'Term ended (1977)', 'Henry Kissinger: term ended on 1977-01-20.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-kissinger_termStart_2000_7', 'ent_henry-kissinger', '2000-07-01', 2000, 'political', 'public',
   'Term started (2000)', 'Henry Kissinger: term started on 2000-07-01.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-kissinger_termEnd_2002_8', 'ent_henry-kissinger', '2002-12-14', 2002, 'political', 'public',
   'Term ended (2002)', 'Henry Kissinger: term ended on 2002-12-14.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-kissinger_termEnd_2005_9', 'ent_henry-kissinger', '2005-10-01', 2005, 'political', 'public',
   'Term ended (2005)', 'Henry Kissinger: term ended on 2005-10-01.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-kissinger_deathDate_2023_10', 'ent_henry-kissinger', '2023-11-29', 2023, 'death', 'life',
   'Died (2023)', 'Henry Kissinger: died on 2023-11-29.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-kissinger_date_2023_11', 'ent_henry-kissinger', '2023-07-16', 2023, 'career', 'work',
   'Notable event (2023)', 'Henry Kissinger: notable event on 2023-07-16.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-knox_birthDate_1750_0', 'ent_henry-knox', '1750-07-25', 1750, 'birth', 'life',
   'Born (1750)', 'Henry Knox: born on 1750-07-25.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-knox_termStart_1783_1', 'ent_henry-knox', '1783-12-23', 1783, 'political', 'public',
   'Term started (1783)', 'Henry Knox: term started on 1783-12-23.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-knox_termEnd_1784_2', 'ent_henry-knox', '1784-06-20', 1784, 'political', 'public',
   'Term ended (1784)', 'Henry Knox: term ended on 1784-06-20.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-knox_termStart_1785_3', 'ent_henry-knox', '1785-03-08', 1785, 'political', 'public',
   'Term started (1785)', 'Henry Knox: term started on 1785-03-08.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-knox_termEnd_1794_4', 'ent_henry-knox', '1794-12-31', 1794, 'political', 'public',
   'Term ended (1794)', 'Henry Knox: term ended on 1794-12-31.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-knox_deathDate_1806_5', 'ent_henry-knox', '1806-10-25', 1806, 'death', 'life',
   'Died (1806)', 'Henry Knox: died on 1806-10-25.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-wadsworth-longfellow_birthDate_1807_0', 'ent_henry-wadsworth-longfellow', '1807-02-27', 1807, 'birth', 'life',
   'Born (1807)', 'Henry Wadsworth Longfellow: born on 1807-02-27.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-wadsworth-longfellow_deathDate_1882_1', 'ent_henry-wadsworth-longfellow', '1882-03-24', 1882, 'death', 'life',
   'Died (1882)', 'Henry Wadsworth Longfellow: died on 1882-03-24.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-wilson_birthDate_1812_0', 'ent_henry-wilson', '1812-02-16', 1812, 'birth', 'life',
   'Born (1812)', 'Henry Wilson: born on 1812-02-16.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-wilson_spouse_1840_1', 'ent_henry-wilson', '1840-10-28', 1840, 'personal_life', 'life',
   'Marriage (1840)', 'Henry Wilson: marriage on 1840-10-28.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-wilson_termStart_1841_2', 'ent_henry-wilson', '1841-01-05', 1841, 'political', 'public',
   'Term started (1841)', 'Henry Wilson: term started on 1841-01-05.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-wilson_termEnd_1843_3', 'ent_henry-wilson', '1843-01-03', 1843, 'political', 'public',
   'Term ended (1843)', 'Henry Wilson: term ended on 1843-01-03.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-wilson_termStart_1844_4', 'ent_henry-wilson', '1844-01-03', 1844, 'political', 'public',
   'Term started (1844)', 'Henry Wilson: term started on 1844-01-03.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-wilson_termEnd_1846_5', 'ent_henry-wilson', '1846-01-01', 1846, 'political', 'public',
   'Term ended (1846)', 'Henry Wilson: term ended on 1846-01-01.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-wilson_termStart_1851_6', 'ent_henry-wilson', '1851-01-02', 1851, 'political', 'public',
   'Term started (1851)', 'Henry Wilson: term started on 1851-01-02.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-wilson_termEnd_1853_7', 'ent_henry-wilson', '1853-01-06', 1853, 'political', 'public',
   'Term ended (1853)', 'Henry Wilson: term ended on 1853-01-06.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-wilson_termStart_1855_8', 'ent_henry-wilson', '1855-01-31', 1855, 'political', 'public',
   'Term started (1855)', 'Henry Wilson: term started on 1855-01-31.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-wilson_termStart_1861_9', 'ent_henry-wilson', '1861-03-04', 1861, 'political', 'public',
   'Term started (1861)', 'Henry Wilson: term started on 1861-03-04.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-wilson_termEnd_1873_10', 'ent_henry-wilson', '1873-03-03', 1873, 'political', 'public',
   'Term ended (1873)', 'Henry Wilson: term ended on 1873-03-03.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-wilson_deathDate_1875_11', 'ent_henry-wilson', '1875-11-22', 1875, 'death', 'life',
   'Died (1875)', 'Henry Wilson: died on 1875-11-22.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_henry-wilson_termEnd_1875_12', 'ent_henry-wilson', '1875-11-22', 1875, 'political', 'public',
   'Term ended (1875)', 'Henry Wilson: term ended on 1875-11-22.', 'src_dbpedia', 0.8, 12, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herbert-hoover_birthDate_1874_0', 'ent_herbert-hoover', '1874-08-10', 1874, 'birth', 'life',
   'Born (1874)', 'Herbert Hoover: born on 1874-08-10.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herbert-hoover_spouse_1899_1', 'ent_herbert-hoover', '1899-02-10', 1899, 'personal_life', 'life',
   'Marriage (1899)', 'Herbert Hoover: marriage on 1899-02-10.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herbert-hoover_termStart_1914_2', 'ent_herbert-hoover', '1914-10-22', 1914, 'political', 'public',
   'Term started (1914)', 'Herbert Hoover: term started on 1914-10-22.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herbert-hoover_termEnd_1917_3', 'ent_herbert-hoover', '1917-04-14', 1917, 'political', 'public',
   'Term ended (1917)', 'Herbert Hoover: term ended on 1917-04-14.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herbert-hoover_termEnd_1918_4', 'ent_herbert-hoover', '1918-11-16', 1918, 'political', 'public',
   'Term ended (1918)', 'Herbert Hoover: term ended on 1918-11-16.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herbert-hoover_termStart_1921_5', 'ent_herbert-hoover', '1921-03-05', 1921, 'political', 'public',
   'Term started (1921)', 'Herbert Hoover: term started on 1921-03-05.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herbert-hoover_termEnd_1928_6', 'ent_herbert-hoover', '1928-08-21', 1928, 'political', 'public',
   'Term ended (1928)', 'Herbert Hoover: term ended on 1928-08-21.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herbert-hoover_termStart_1929_7', 'ent_herbert-hoover', '1929-03-04', 1929, 'political', 'public',
   'Term started (1929)', 'Herbert Hoover: term started on 1929-03-04.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herbert-hoover_termEnd_1933_8', 'ent_herbert-hoover', '1933-03-04', 1933, 'political', 'public',
   'Term ended (1933)', 'Herbert Hoover: term ended on 1933-03-04.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herbert-hoover_spouse_1944_9', 'ent_herbert-hoover', '1944-01-07', 1944, 'personal_life', 'life',
   'Marriage (1944)', 'Herbert Hoover: marriage on 1944-01-07.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herbert-hoover_deathDate_1964_10', 'ent_herbert-hoover', '1964-10-20', 1964, 'death', 'life',
   'Died (1964)', 'Herbert Hoover: died on 1964-10-20.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herbert-hoover_date_2020_11', 'ent_herbert-hoover', '2020-05-28', 2020, 'career', 'work',
   'Notable event (2020)', 'Herbert Hoover: notable event on 2020-05-28.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herbie-hancock_birthDate_1940_0', 'ent_herbie-hancock', '1940-04-12', 1940, 'birth', 'life',
   'Born (1940)', 'Herbie Hancock: born on 1940-04-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herbie-hancock_activeYearsStartYear_1961_1', 'ent_herbie-hancock', '1961', 1961, 'career', 'work',
   'Notable event (1961)', 'Herbie Hancock: notable event on 1961.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herman-melville_birthDate_1819_0', 'ent_herman-melville', '1819-08-01', 1819, 'birth', 'life',
   'Born (1819)', 'Herman Melville: born on 1819-08-01.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herman-melville_deathDate_1891_1', 'ent_herman-melville', '1891-09-28', 1891, 'death', 'life',
   'Died (1891)', 'Herman Melville: died on 1891-09-28.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herman-melville_date_2010_2', 'ent_herman-melville', '2010-05-14', 2010, 'career', 'work',
   'Notable event (2010)', 'Herman Melville: notable event on 2010-05-14.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herman-melville_date_2020_3', 'ent_herman-melville', '2020-08-01', 2020, 'career', 'work',
   'Notable event (2020)', 'Herman Melville: notable event on 2020-08-01.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_herman-melville_date_2021_4', 'ent_herman-melville', '2021-05-03', 2021, 'career', 'work',
   'Notable event (2021)', 'Herman Melville: notable event on 2021-05-03.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hillary-clinton_birthDate_1947_0', 'ent_hillary-clinton', '1947-10-26', 1947, 'birth', 'life',
   'Born (1947)', 'Hillary Clinton: born on 1947-10-26.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hillary-clinton_spouse_1975_1', 'ent_hillary-clinton', '1975-10-11', 1975, 'personal_life', 'life',
   'Marriage (1975)', 'Hillary Clinton: marriage on 1975-10-11.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hillary-clinton_termStart_1979_2', 'ent_hillary-clinton', '1979-01-09', 1979, 'political', 'public',
   'Term started (1979)', 'Hillary Clinton: term started on 1979-01-09.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hillary-clinton_termEnd_1981_3', 'ent_hillary-clinton', '1981-01-19', 1981, 'political', 'public',
   'Term ended (1981)', 'Hillary Clinton: term ended on 1981-01-19.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hillary-clinton_termStart_1983_4', 'ent_hillary-clinton', '1983-01-11', 1983, 'political', 'public',
   'Term started (1983)', 'Hillary Clinton: term started on 1983-01-11.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hillary-clinton_termEnd_1992_5', 'ent_hillary-clinton', '1992-12-12', 1992, 'political', 'public',
   'Term ended (1992)', 'Hillary Clinton: term ended on 1992-12-12.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hillary-clinton_termStart_1993_6', 'ent_hillary-clinton', '1993-01-20', 1993, 'political', 'public',
   'Term started (1993)', 'Hillary Clinton: term started on 1993-01-20.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hillary-clinton_termEnd_2001_7', 'ent_hillary-clinton', '2001-01-20', 2001, 'political', 'public',
   'Term ended (2001)', 'Hillary Clinton: term ended on 2001-01-20.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hillary-clinton_termEnd_2009_8', 'ent_hillary-clinton', '2009-01-21', 2009, 'political', 'public',
   'Term ended (2009)', 'Hillary Clinton: term ended on 2009-01-21.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hillary-clinton_termEnd_2013_9', 'ent_hillary-clinton', '2013-02-01', 2013, 'political', 'public',
   'Term ended (2013)', 'Hillary Clinton: term ended on 2013-02-01.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hillary-clinton_termStart_2020_10', 'ent_hillary-clinton', '2020-01-02', 2020, 'political', 'public',
   'Term started (2020)', 'Hillary Clinton: term started on 2020-01-02.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_howard-schultz_birthDate_1953_0', 'ent_howard-schultz', '1953-07-19', 1953, 'birth', 'life',
   'Born (1953)', 'Howard Schultz: born on 1953-07-19.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_howard-schultz_birthYear_1953_1', 'ent_howard-schultz', '1953', 1953, 'career', 'work',
   'Notable event (1953)', 'Howard Schultz: notable event on 1953.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_howard-stern_birthDate_1954_0', 'ent_howard-stern', '1954-01-12', 1954, 'birth', 'life',
   'Born (1954)', 'Howard Stern: born on 1954-01-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_howard-stern_birthYear_1954_1', 'ent_howard-stern', '1954', 1954, 'career', 'work',
   'Notable event (1954)', 'Howard Stern: notable event on 1954.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_howard-stern_activeYearsStartYear_1975_2', 'ent_howard-stern', '1975', 1975, 'career', 'work',
   'Notable event (1975)', 'Howard Stern: notable event on 1975.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_howard-stern_spouse_2008_3', 'ent_howard-stern', '2008-10-03', 2008, 'personal_life', 'life',
   'Marriage (2008)', 'Howard Stern: marriage on 2008-10-03.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hubert-humphrey_birthDate_1911_0', 'ent_hubert-humphrey', '1911-05-27', 1911, 'birth', 'life',
   'Born (1911)', 'Hubert Humphrey: born on 1911-05-27.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hubert-humphrey_spouse_1936_1', 'ent_hubert-humphrey', '1936-09-03', 1936, 'personal_life', 'life',
   'Marriage (1936)', 'Hubert Humphrey: marriage on 1936-09-03.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hubert-humphrey_termStart_1945_2', 'ent_hubert-humphrey', '1945-07-02', 1945, 'political', 'public',
   'Term started (1945)', 'Hubert Humphrey: term started on 1945-07-02.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hubert-humphrey_termEnd_1948_3', 'ent_hubert-humphrey', '1948-11-30', 1948, 'political', 'public',
   'Term ended (1948)', 'Hubert Humphrey: term ended on 1948-11-30.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hubert-humphrey_termStart_1949_4', 'ent_hubert-humphrey', '1949-01-03', 1949, 'political', 'public',
   'Term started (1949)', 'Hubert Humphrey: term started on 1949-01-03.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hubert-humphrey_termEnd_1964_5', 'ent_hubert-humphrey', '1964-12-29', 1964, 'political', 'public',
   'Term ended (1964)', 'Hubert Humphrey: term ended on 1964-12-29.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hubert-humphrey_termStart_1965_6', 'ent_hubert-humphrey', '1965-01-20', 1965, 'political', 'public',
   'Term started (1965)', 'Hubert Humphrey: term started on 1965-01-20.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hubert-humphrey_termEnd_1969_7', 'ent_hubert-humphrey', '1969-01-20', 1969, 'political', 'public',
   'Term ended (1969)', 'Hubert Humphrey: term ended on 1969-01-20.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hubert-humphrey_termStart_1971_8', 'ent_hubert-humphrey', '1971-01-03', 1971, 'political', 'public',
   'Term started (1971)', 'Hubert Humphrey: term started on 1971-01-03.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hubert-humphrey_deathDate_1978_9', 'ent_hubert-humphrey', '1978-01-13', 1978, 'death', 'life',
   'Died (1978)', 'Hubert Humphrey: died on 1978-01-13.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hubert-humphrey_termEnd_1978_10', 'ent_hubert-humphrey', '1978-01-13', 1978, 'political', 'public',
   'Term ended (1978)', 'Hubert Humphrey: term ended on 1978-01-13.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_hubert-humphrey_date_2011_11', 'ent_hubert-humphrey', '2011-07-26', 2011, 'career', 'work',
   'Notable event (2011)', 'Hubert Humphrey: notable event on 2011-07-26.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_irving-berlin_birthDate_1888_0', 'ent_irving-berlin', '1888-05-11', 1888, 'birth', 'life',
   'Born (1888)', 'Irving Berlin: born on 1888-05-11.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_irving-berlin_birthYear_1888_1', 'ent_irving-berlin', '1888', 1888, 'career', 'work',
   'Notable event (1888)', 'Irving Berlin: notable event on 1888.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_irving-berlin_deathDate_1989_2', 'ent_irving-berlin', '1989-09-22', 1989, 'death', 'life',
   'Died (1989)', 'Irving Berlin: died on 1989-09-22.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_irving-berlin_deathYear_1989_3', 'ent_irving-berlin', '1989', 1989, 'career', 'work',
   'Notable event (1989)', 'Irving Berlin: notable event on 1989.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jack-dorsey_birthDate_1976_0', 'ent_jack-dorsey', '1976-11-19', 1976, 'birth', 'life',
   'Born (1976)', 'Jack Dorsey: born on 1976-11-19.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jack-dorsey_birthYear_1976_1', 'ent_jack-dorsey', '1976', 1976, 'career', 'work',
   'Notable event (1976)', 'Jack Dorsey: notable event on 1976.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jack-kerouac_birthDate_1922_0', 'ent_jack-kerouac', '1922-03-12', 1922, 'birth', 'life',
   'Born (1922)', 'Jack Kerouac: born on 1922-03-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jack-kerouac_activeYearsStartYear_1942_1', 'ent_jack-kerouac', '1942', 1942, 'career', 'work',
   'Notable event (1942)', 'Jack Kerouac: notable event on 1942.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jack-kerouac_deathDate_1969_2', 'ent_jack-kerouac', '1969-10-21', 1969, 'death', 'life',
   'Died (1969)', 'Jack Kerouac: died on 1969-10-21.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jack-kerouac_activeYearsEndYear_1969_3', 'ent_jack-kerouac', '1969', 1969, 'career', 'work',
   'Notable event (1969)', 'Jack Kerouac: notable event on 1969.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jack-kerouac_date_2010_4', 'ent_jack-kerouac', '2010-06-24', 2010, 'career', 'work',
   'Notable event (2010)', 'Jack Kerouac: notable event on 2010-06-24.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jack-kerouac_date_2013_5', 'ent_jack-kerouac', '2013-08-29', 2013, 'career', 'work',
   'Notable event (2013)', 'Jack Kerouac: notable event on 2013-08-29.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jack-kerouac_date_2016_6', 'ent_jack-kerouac', '2016-03-13', 2016, 'career', 'work',
   'Notable event (2016)', 'Jack Kerouac: notable event on 2016-03-13.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jack-kerouac_date_2017_7', 'ent_jack-kerouac', '2017-09-11', 2017, 'career', 'work',
   'Notable event (2017)', 'Jack Kerouac: notable event on 2017-09-11.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jack-kerouac_date_2019_8', 'ent_jack-kerouac', '2019-10-18', 2019, 'career', 'work',
   'Notable event (2019)', 'Jack Kerouac: notable event on 2019-10-18.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jack-kerouac_date_2020_9', 'ent_jack-kerouac', '2020-07-13', 2020, 'career', 'work',
   'Notable event (2020)', 'Jack Kerouac: notable event on 2020-07-13.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jack-kerouac_date_2022_10', 'ent_jack-kerouac', '2022-08-14', 2022, 'career', 'work',
   'Notable event (2022)', 'Jack Kerouac: notable event on 2022-08-14.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jack-nicholson_birthDate_1937_0', 'ent_jack-nicholson', '1937-04-22', 1937, 'birth', 'life',
   'Born (1937)', 'Jack Nicholson: born on 1937-04-22.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jack-nicholson_birthYear_1937_1', 'ent_jack-nicholson', '1937', 1937, 'career', 'work',
   'Notable event (1937)', 'Jack Nicholson: notable event on 1937.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jack-nicklaus_birthDate_1940_0', 'ent_jack-nicklaus', '1940-01-21', 1940, 'birth', 'life',
   'Born (1940)', 'Jack Nicklaus: born on 1940-01-21.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jack-nicklaus_spouse_1960_1', 'ent_jack-nicklaus', '1960-07-23', 1960, 'personal_life', 'life',
   'Marriage (1960)', 'Jack Nicklaus: marriage on 1960-07-23.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jackie-robinson_birthDate_1919_0', 'ent_jackie-robinson', '1919-01-31', 1919, 'birth', 'life',
   'Born (1919)', 'Jackie Robinson: born on 1919-01-31.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jackie-robinson_years_1948_1', 'ent_jackie-robinson', '1948-08-29', 1948, 'career', 'work',
   'Notable event (1948)', 'Jackie Robinson: notable event on 1948-08-29.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jackie-robinson_deathDate_1972_2', 'ent_jackie-robinson', '1972-10-24', 1972, 'death', 'life',
   'Died (1972)', 'Jackie Robinson: died on 1972-10-24.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jackson-browne_birthDate_1948_0', 'ent_jackson-browne', '1948-10-09', 1948, 'birth', 'life',
   'Born (1948)', 'Jackson Browne: born on 1948-10-09.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jackson-browne_activeYearsStartYear_1964_1', 'ent_jackson-browne', '1964', 1964, 'career', 'work',
   'Notable event (1964)', 'Jackson Browne: notable event on 1964.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jackson-pollock_birthDate_1912_0', 'ent_jackson-pollock', '1912-01-28', 1912, 'birth', 'life',
   'Born (1912)', 'Jackson Pollock: born on 1912-01-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jackson-pollock_birthYear_1912_1', 'ent_jackson-pollock', '1912', 1912, 'career', 'work',
   'Notable event (1912)', 'Jackson Pollock: notable event on 1912.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jackson-pollock_deathDate_1956_2', 'ent_jackson-pollock', '1956-08-11', 1956, 'death', 'life',
   'Died (1956)', 'Jackson Pollock: died on 1956-08-11.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jackson-pollock_deathYear_1956_3', 'ent_jackson-pollock', '1956', 1956, 'career', 'work',
   'Notable event (1956)', 'Jackson Pollock: notable event on 1956.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-baker_birthDate_1930_0', 'ent_james-baker', '1930-04-28', 1930, 'birth', 'life',
   'Born (1930)', 'James Baker: born on 1930-04-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-baker_termStart_1975_1', 'ent_james-baker', '1975-08-02', 1975, 'political', 'public',
   'Term started (1975)', 'James Baker: term started on 1975-08-02.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-baker_termEnd_1976_2', 'ent_james-baker', '1976-05-07', 1976, 'political', 'public',
   'Term ended (1976)', 'James Baker: term ended on 1976-05-07.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-baker_termStart_1981_3', 'ent_james-baker', '1981-01-20', 1981, 'political', 'public',
   'Term started (1981)', 'James Baker: term started on 1981-01-20.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-baker_termEnd_1985_4', 'ent_james-baker', '1985-02-03', 1985, 'political', 'public',
   'Term ended (1985)', 'James Baker: term ended on 1985-02-03.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-baker_termEnd_1988_5', 'ent_james-baker', '1988-08-17', 1988, 'political', 'public',
   'Term ended (1988)', 'James Baker: term ended on 1988-08-17.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-baker_termStart_1989_6', 'ent_james-baker', '1989-01-25', 1989, 'political', 'public',
   'Term started (1989)', 'James Baker: term started on 1989-01-25.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-baker_termEnd_1992_7', 'ent_james-baker', '1992-08-23', 1992, 'political', 'public',
   'Term ended (1992)', 'James Baker: term ended on 1992-08-23.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-baker_termEnd_1993_8', 'ent_james-baker', '1993-01-20', 1993, 'political', 'public',
   'Term ended (1993)', 'James Baker: term ended on 1993-01-20.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-baker_date_2017_9', 'ent_james-baker', '2017-06-29', 2017, 'career', 'work',
   'Notable event (2017)', 'James Baker: notable event on 2017-06-29.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-baldwin_birthDate_1924_0', 'ent_james-baldwin', '1924-08-02', 1924, 'birth', 'life',
   'Born (1924)', 'James Baldwin: born on 1924-08-02.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-baldwin_date_2008_1', 'ent_james-baldwin', '2008-04-20', 2008, 'career', 'work',
   'Notable event (2008)', 'James Baldwin: notable event on 2008-04-20.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-baldwin_date_2013_2', 'ent_james-baldwin', '2013-05-21', 2013, 'career', 'work',
   'Notable event (2013)', 'James Baldwin: notable event on 2013-05-21.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-baldwin_date_2018_3', 'ent_james-baldwin', '2018-08-30', 2018, 'career', 'work',
   'Notable event (2018)', 'James Baldwin: notable event on 2018-08-30.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-bevel_birthDate_1936_0', 'ent_james-bevel', '1936-10-19', 1936, 'birth', 'life',
   'Born (1936)', 'James Bevel: born on 1936-10-19.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-bevel_birthYear_1936_1', 'ent_james-bevel', '1936', 1936, 'career', 'work',
   'Notable event (1936)', 'James Bevel: notable event on 1936.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-bevel_deathDate_2008_2', 'ent_james-bevel', '2008-12-19', 2008, 'death', 'life',
   'Died (2008)', 'James Bevel: died on 2008-12-19.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-bevel_deathYear_2008_3', 'ent_james-bevel', '2008', 2008, 'career', 'work',
   'Notable event (2008)', 'James Bevel: notable event on 2008.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-buchanan_birthDate_1791_0', 'ent_james-buchanan', '1791-04-23', 1791, 'birth', 'life',
   'Born (1791)', 'James Buchanan: born on 1791-04-23.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-buchanan_termStart_1814_1', 'ent_james-buchanan', '1814-12-06', 1814, 'political', 'public',
   'Term started (1814)', 'James Buchanan: term started on 1814-12-06.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-buchanan_termEnd_1816_2', 'ent_james-buchanan', '1816-12-02', 1816, 'political', 'public',
   'Term ended (1816)', 'James Buchanan: term ended on 1816-12-02.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-buchanan_termStart_1821_3', 'ent_james-buchanan', '1821-03-04', 1821, 'political', 'public',
   'Term started (1821)', 'James Buchanan: term started on 1821-03-04.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-buchanan_termEnd_1831_4', 'ent_james-buchanan', '1831-03-03', 1831, 'political', 'public',
   'Term ended (1831)', 'James Buchanan: term ended on 1831-03-03.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-buchanan_termStart_1832_5', 'ent_james-buchanan', '1832-06-11', 1832, 'political', 'public',
   'Term started (1832)', 'James Buchanan: term started on 1832-06-11.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-buchanan_termEnd_1833_6', 'ent_james-buchanan', '1833-08-05', 1833, 'political', 'public',
   'Term ended (1833)', 'James Buchanan: term ended on 1833-08-05.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-buchanan_termStart_1834_7', 'ent_james-buchanan', '1834-12-06', 1834, 'political', 'public',
   'Term started (1834)', 'James Buchanan: term started on 1834-12-06.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-buchanan_termEnd_1845_8', 'ent_james-buchanan', '1845-03-05', 1845, 'political', 'public',
   'Term ended (1845)', 'James Buchanan: term ended on 1845-03-05.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-buchanan_termEnd_1849_9', 'ent_james-buchanan', '1849-03-07', 1849, 'political', 'public',
   'Term ended (1849)', 'James Buchanan: term ended on 1849-03-07.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-buchanan_termStart_1853_10', 'ent_james-buchanan', '1853-08-23', 1853, 'political', 'public',
   'Term started (1853)', 'James Buchanan: term started on 1853-08-23.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-buchanan_termEnd_1856_11', 'ent_james-buchanan', '1856-03-15', 1856, 'political', 'public',
   'Term ended (1856)', 'James Buchanan: term ended on 1856-03-15.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-buchanan_termStart_1857_12', 'ent_james-buchanan', '1857-03-04', 1857, 'political', 'public',
   'Term started (1857)', 'James Buchanan: term started on 1857-03-04.', 'src_dbpedia', 0.8, 12, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-buchanan_termEnd_1861_13', 'ent_james-buchanan', '1861-03-04', 1861, 'political', 'public',
   'Term ended (1861)', 'James Buchanan: term ended on 1861-03-04.', 'src_dbpedia', 0.8, 13, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-buchanan_deathDate_1868_14', 'ent_james-buchanan', '1868-06-01', 1868, 'death', 'life',
   'Died (1868)', 'James Buchanan: died on 1868-06-01.', 'src_dbpedia', 0.8, 14, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-buchanan_date_2008_15', 'ent_james-buchanan', '2008-07-09', 2008, 'career', 'work',
   'Notable event (2008)', 'James Buchanan: notable event on 2008-07-09.', 'src_dbpedia', 0.8, 15, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-buchanan_date_2010_16', 'ent_james-buchanan', '2010-05-26', 2010, 'career', 'work',
   'Notable event (2010)', 'James Buchanan: notable event on 2010-05-26.', 'src_dbpedia', 0.8, 16, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-buchanan_date_2018_17', 'ent_james-buchanan', '2018-09-12', 2018, 'career', 'work',
   'Notable event (2018)', 'James Buchanan: notable event on 2018-09-12.', 'src_dbpedia', 0.8, 17, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-corden_birthDate_1978_0', 'ent_james-corden', '1978-08-22', 1978, 'birth', 'life',
   'Born (1978)', 'James Corden: born on 1978-08-22.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-corden_birthYear_1978_1', 'ent_james-corden', '1978', 1978, 'career', 'work',
   'Notable event (1978)', 'James Corden: notable event on 1978.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-corden_activeYearsStartYear_1996_2', 'ent_james-corden', '1996', 1996, 'career', 'work',
   'Notable event (1996)', 'James Corden: notable event on 1996.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-corden_spouse_2012_3', 'ent_james-corden', '2012-09-15', 2012, 'personal_life', 'life',
   'Marriage (2012)', 'James Corden: marriage on 2012-09-15.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-dean_birthDate_1931_0', 'ent_james-dean', '1931-02-08', 1931, 'birth', 'life',
   'Born (1931)', 'James Dean: born on 1931-02-08.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-dean_birthYear_1931_1', 'ent_james-dean', '1931', 1931, 'career', 'work',
   'Notable event (1931)', 'James Dean: notable event on 1931.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-dean_activeYearsStartYear_1950_2', 'ent_james-dean', '1950', 1950, 'career', 'work',
   'Notable event (1950)', 'James Dean: notable event on 1950.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-dean_deathDate_1955_3', 'ent_james-dean', '1955-09-30', 1955, 'death', 'life',
   'Died (1955)', 'James Dean: died on 1955-09-30.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-dean_activeYearsEndYear_1955_4', 'ent_james-dean', '1955', 1955, 'career', 'work',
   'Notable event (1955)', 'James Dean: notable event on 1955.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-forten_birthDate_1766_0', 'ent_james-forten', '1766-09-02', 1766, 'birth', 'life',
   'Born (1766)', 'James Forten: born on 1766-09-02.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-forten_birthYear_1766_1', 'ent_james-forten', '1766', 1766, 'career', 'work',
   'Notable event (1766)', 'James Forten: notable event on 1766.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-forten_deathDate_1842_2', 'ent_james-forten', '1842-03-04', 1842, 'death', 'life',
   'Died (1842)', 'James Forten: died on 1842-03-04.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-forten_deathYear_1842_3', 'ent_james-forten', '1842', 1842, 'career', 'work',
   'Notable event (1842)', 'James Forten: notable event on 1842.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-forten_date_2014_4', 'ent_james-forten', '2014-04-20', 2014, 'career', 'work',
   'Notable event (2014)', 'James Forten: notable event on 2014-04-20.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-madison_birthDate_1751_0', 'ent_james-madison', '1751-03-16', 1751, 'birth', 'life',
   'Born (1751)', 'James Madison: born on 1751-03-16.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-madison_termStart_1781_1', 'ent_james-madison', '1781-03-01', 1781, 'political', 'public',
   'Term started (1781)', 'James Madison: term started on 1781-03-01.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-madison_termEnd_1783_2', 'ent_james-madison', '1783-11-01', 1783, 'political', 'public',
   'Term ended (1783)', 'James Madison: term ended on 1783-11-01.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-madison_termStart_1786_3', 'ent_james-madison', '1786-11-06', 1786, 'political', 'public',
   'Term started (1786)', 'James Madison: term started on 1786-11-06.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-madison_termStart_1789_4', 'ent_james-madison', '1789-03-04', 1789, 'political', 'public',
   'Term started (1789)', 'James Madison: term started on 1789-03-04.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-madison_spouse_1794_5', 'ent_james-madison', '1794-09-15', 1794, 'personal_life', 'life',
   'Marriage (1794)', 'James Madison: marriage on 1794-09-15.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-madison_termStart_1801_6', 'ent_james-madison', '1801-05-02', 1801, 'political', 'public',
   'Term started (1801)', 'James Madison: term started on 1801-05-02.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-madison_termStart_1809_7', 'ent_james-madison', '1809-03-04', 1809, 'political', 'public',
   'Term started (1809)', 'James Madison: term started on 1809-03-04.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-madison_deathDate_1836_8', 'ent_james-madison', '1836-06-28', 1836, 'death', 'life',
   'Died (1836)', 'James Madison: died on 1836-06-28.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_birthDate_1758_0', 'ent_james-monroe', '1758-04-28', 1758, 'birth', 'life',
   'Born (1758)', 'James Monroe: born on 1758-04-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_termStart_1783_1', 'ent_james-monroe', '1783-11-03', 1783, 'political', 'public',
   'Term started (1783)', 'James Monroe: term started on 1783-11-03.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_spouse_1786_2', 'ent_james-monroe', '1786-02-16', 1786, 'personal_life', 'life',
   'Marriage (1786)', 'James Monroe: marriage on 1786-02-16.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_termEnd_1786_3', 'ent_james-monroe', '1786-11-07', 1786, 'political', 'public',
   'Term ended (1786)', 'James Monroe: term ended on 1786-11-07.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_termStart_1790_4', 'ent_james-monroe', '1790-11-09', 1790, 'political', 'public',
   'Term started (1790)', 'James Monroe: term started on 1790-11-09.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_termEnd_1794_5', 'ent_james-monroe', '1794-05-27', 1794, 'political', 'public',
   'Term ended (1794)', 'James Monroe: term ended on 1794-05-27.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_termEnd_1796_6', 'ent_james-monroe', '1796-12-09', 1796, 'political', 'public',
   'Term ended (1796)', 'James Monroe: term ended on 1796-12-09.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_termStart_1799_7', 'ent_james-monroe', '1799-12-28', 1799, 'political', 'public',
   'Term started (1799)', 'James Monroe: term started on 1799-12-28.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_termEnd_1802_8', 'ent_james-monroe', '1802-12-01', 1802, 'political', 'public',
   'Term ended (1802)', 'James Monroe: term ended on 1802-12-01.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_termStart_1803_9', 'ent_james-monroe', '1803-08-17', 1803, 'political', 'public',
   'Term started (1803)', 'James Monroe: term started on 1803-08-17.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_termEnd_1807_10', 'ent_james-monroe', '1807-10-07', 1807, 'political', 'public',
   'Term ended (1807)', 'James Monroe: term ended on 1807-10-07.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_termEnd_1811_11', 'ent_james-monroe', '1811-04-02', 1811, 'political', 'public',
   'Term ended (1811)', 'James Monroe: term ended on 1811-04-02.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_termStart_1814_12', 'ent_james-monroe', '1814-09-27', 1814, 'political', 'public',
   'Term started (1814)', 'James Monroe: term started on 1814-09-27.', 'src_dbpedia', 0.8, 12, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_termEnd_1815_13', 'ent_james-monroe', '1815-03-02', 1815, 'political', 'public',
   'Term ended (1815)', 'James Monroe: term ended on 1815-03-02.', 'src_dbpedia', 0.8, 13, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_termEnd_1817_14', 'ent_james-monroe', '1817-03-04', 1817, 'political', 'public',
   'Term ended (1817)', 'James Monroe: term ended on 1817-03-04.', 'src_dbpedia', 0.8, 14, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_termEnd_1825_15', 'ent_james-monroe', '1825-03-04', 1825, 'political', 'public',
   'Term ended (1825)', 'James Monroe: term ended on 1825-03-04.', 'src_dbpedia', 0.8, 15, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_spouse_1830_16', 'ent_james-monroe', '1830-09-23', 1830, 'personal_life', 'life',
   'Marriage (1830)', 'James Monroe: marriage on 1830-09-23.', 'src_dbpedia', 0.8, 16, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_deathDate_1831_17', 'ent_james-monroe', '1831-07-04', 1831, 'death', 'life',
   'Died (1831)', 'James Monroe: died on 1831-07-04.', 'src_dbpedia', 0.8, 17, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_date_2011_18', 'ent_james-monroe', '2011-06-23', 2011, 'career', 'work',
   'Notable event (2011)', 'James Monroe: notable event on 2011-06-23.', 'src_dbpedia', 0.8, 18, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-monroe_date_2013_19', 'ent_james-monroe', '2013-10-24', 2013, 'career', 'work',
   'Notable event (2013)', 'James Monroe: notable event on 2013-10-24.', 'src_dbpedia', 0.8, 19, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-taylor_birthDate_1948_0', 'ent_james-taylor', '1948-03-12', 1948, 'birth', 'life',
   'Born (1948)', 'James Taylor: born on 1948-03-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-taylor_birthYear_1948_1', 'ent_james-taylor', '1948', 1948, 'career', 'work',
   'Notable event (1948)', 'James Taylor: notable event on 1948.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-taylor_activeYearsStartYear_1966_2', 'ent_james-taylor', '1966', 1966, 'career', 'work',
   'Notable event (1966)', 'James Taylor: notable event on 1966.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-watson_birthDate_1928_0', 'ent_james-watson', '1928-04-06', 1928, 'birth', 'life',
   'Born (1928)', 'James Watson: born on 1928-04-06.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_james-watson_date_2011_1', 'ent_james-watson', '2011-12-12', 2011, 'career', 'work',
   'Notable event (2011)', 'James Watson: notable event on 2011-12-12.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jane-pierce_birthDate_1806_0', 'ent_jane-pierce', '1806-03-12', 1806, 'birth', 'life',
   'Born (1806)', 'Jane Pierce: born on 1806-03-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jane-pierce_spouse_1834_1', 'ent_jane-pierce', '1834-11-19', 1834, 'personal_life', 'life',
   'Marriage (1834)', 'Jane Pierce: marriage on 1834-11-19.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jane-pierce_termStart_1853_2', 'ent_jane-pierce', '1853-03-04', 1853, 'political', 'public',
   'Term started (1853)', 'Jane Pierce: term started on 1853-03-04.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jane-pierce_termEnd_1857_3', 'ent_jane-pierce', '1857-03-04', 1857, 'political', 'public',
   'Term ended (1857)', 'Jane Pierce: term ended on 1857-03-04.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jane-pierce_deathDate_1863_4', 'ent_jane-pierce', '1863-12-02', 1863, 'death', 'life',
   'Died (1863)', 'Jane Pierce: died on 1863-12-02.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_janet-jackson_birthDate_1966_0', 'ent_janet-jackson', '1966-05-16', 1966, 'birth', 'life',
   'Born (1966)', 'Janet Jackson: born on 1966-05-16.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_janet-jackson_birthYear_1966_1', 'ent_janet-jackson', '1966', 1966, 'career', 'work',
   'Notable event (1966)', 'Janet Jackson: notable event on 1966.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_janet-jackson_activeYearsStartYear_1974_2', 'ent_janet-jackson', '1974', 1974, 'career', 'work',
   'Notable event (1974)', 'Janet Jackson: notable event on 1974.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jann-wenner_birthDate_1946_0', 'ent_jann-wenner', '1946-01-07', 1946, 'birth', 'life',
   'Born (1946)', 'Jann Wenner: born on 1946-01-07.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jann-wenner_birthYear_1946_1', 'ent_jann-wenner', '1946', 1946, 'career', 'work',
   'Notable event (1946)', 'Jann Wenner: notable event on 1946.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jason-aldean_birthDate_1977_0', 'ent_jason-aldean', '1977-02-28', 1977, 'birth', 'life',
   'Born (1977)', 'Jason Aldean: born on 1977-02-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jason-aldean_activeYearsStartYear_1998_1', 'ent_jason-aldean', '1998', 1998, 'career', 'work',
   'Notable event (1998)', 'Jason Aldean: notable event on 1998.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jason-goldman_activeYearsStartYear_1999_0', 'ent_jason-goldman', '1999', 1999, 'career', 'work',
   'Notable event (1999)', 'Jason Goldman: notable event on 1999.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jason-goldman_date_2016_1', 'ent_jason-goldman', '2016-08-15', 2016, 'career', 'work',
   'Notable event (2016)', 'Jason Goldman: notable event on 2016-08-15.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jasper-johns_birthDate_1930_0', 'ent_jasper-johns', '1930-05-15', 1930, 'birth', 'life',
   'Born (1930)', 'Jasper Johns: born on 1930-05-15.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jawed-karim_birthDate_1979_0', 'ent_jawed-karim', '1979-10-28', 1979, 'birth', 'life',
   'Born (1979)', 'Jawed Karim: born on 1979-10-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jawed-karim_birthYear_1979_1', 'ent_jawed-karim', '1979', 1979, 'career', 'work',
   'Notable event (1979)', 'Jawed Karim: notable event on 1979.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jay-leno_birthDate_1950_0', 'ent_jay-leno', '1950-04-28', 1950, 'birth', 'life',
   'Born (1950)', 'Jay Leno: born on 1950-04-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jay-leno_date_2014_1', 'ent_jay-leno', '2014-02-03', 2014, 'career', 'work',
   'Notable event (2014)', 'Jay Leno: notable event on 2014-02-03.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jay-leno_date_2017_2', 'ent_jay-leno', '2017-01-08', 2017, 'career', 'work',
   'Notable event (2017)', 'Jay Leno: notable event on 2017-01-08.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jeff-bezos_birthDate_1964_0', 'ent_jeff-bezos', '1964-01-12', 1964, 'birth', 'life',
   'Born (1964)', 'Jeff Bezos: born on 1964-01-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jeff-bezos_birthYear_1964_1', 'ent_jeff-bezos', '1964', 1964, 'career', 'work',
   'Notable event (1964)', 'Jeff Bezos: notable event on 1964.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jeffrey-goldberg_birthYear_1965_0', 'ent_jeffrey-goldberg', '1965', 1965, 'career', 'work',
   'Notable event (1965)', 'Jeffrey Goldberg: notable event on 1965.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jennifer-lawrence_birthDate_1990_0', 'ent_jennifer-lawrence', '1990-08-15', 1990, 'birth', 'life',
   'Born (1990)', 'Jennifer Lawrence: born on 1990-08-15.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jennifer-lawrence_birthYear_1990_1', 'ent_jennifer-lawrence', '1990', 1990, 'career', 'work',
   'Notable event (1990)', 'Jennifer Lawrence: notable event on 1990.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jennifer-lawrence_activeYearsStartYear_2006_2', 'ent_jennifer-lawrence', '2006', 2006, 'career', 'work',
   'Notable event (2006)', 'Jennifer Lawrence: notable event on 2006.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jerry-falwell_birthDate_1933_0', 'ent_jerry-falwell', '1933-08-11', 1933, 'birth', 'life',
   'Born (1933)', 'Jerry Falwell: born on 1933-08-11.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jerry-falwell_birthYear_1933_1', 'ent_jerry-falwell', '1933', 1933, 'career', 'work',
   'Notable event (1933)', 'Jerry Falwell: notable event on 1933.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jerry-falwell_deathDate_2007_2', 'ent_jerry-falwell', '2007-05-15', 2007, 'death', 'life',
   'Died (2007)', 'Jerry Falwell: died on 2007-05-15.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jerry-falwell_deathYear_2007_3', 'ent_jerry-falwell', '2007', 2007, 'career', 'work',
   'Notable event (2007)', 'Jerry Falwell: notable event on 2007.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jerry-rice_birthDate_1962_0', 'ent_jerry-rice', '1962-10-13', 1962, 'birth', 'life',
   'Born (1962)', 'Jerry Rice: born on 1962-10-13.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jerry-rice_draftYear_1985_1', 'ent_jerry-rice', '1985', 1985, 'career', 'work',
   'Notable event (1985)', 'Jerry Rice: notable event on 1985.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jesse-duplantis_birthDate_1949_0', 'ent_jesse-duplantis', '1949-07-09', 1949, 'birth', 'life',
   'Born (1949)', 'Jesse Duplantis: born on 1949-07-09.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jesse-jackson_birthDate_1941_0', 'ent_jesse-jackson', '1941-10-08', 1941, 'birth', 'life',
   'Born (1941)', 'Jesse Jackson: born on 1941-10-08.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jesse-jackson_termStart_1991_1', 'ent_jesse-jackson', '1991-01-03', 1991, 'political', 'public',
   'Term started (1991)', 'Jesse Jackson: term started on 1991-01-03.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jesse-jackson_termEnd_1997_2', 'ent_jesse-jackson', '1997-01-03', 1997, 'political', 'public',
   'Term ended (1997)', 'Jesse Jackson: term ended on 1997-01-03.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jesse-owens_birthDate_1913_0', 'ent_jesse-owens', '1913-09-12', 1913, 'birth', 'life',
   'Born (1913)', 'Jesse Owens: born on 1913-09-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jesse-owens_deathDate_1980_1', 'ent_jesse-owens', '1980-03-31', 1980, 'death', 'life',
   'Died (1980)', 'Jesse Owens: died on 1980-03-31.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jesse-owens_date_2006_2', 'ent_jesse-owens', '2006-07-05', 2006, 'career', 'work',
   'Notable event (2006)', 'Jesse Owens: notable event on 2006-07-05.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jesse-owens_date_2013_3', 'ent_jesse-owens', '2013-10-06', 2013, 'career', 'work',
   'Notable event (2013)', 'Jesse Owens: notable event on 2013-10-06.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jesse-owens_date_2017_4', 'ent_jesse-owens', '2017-02-24', 2017, 'career', 'work',
   'Notable event (2017)', 'Jesse Owens: notable event on 2017-02-24.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jesse-owens_date_2021_5', 'ent_jesse-owens', '2021-02-27', 2021, 'career', 'work',
   'Notable event (2021)', 'Jesse Owens: notable event on 2021-02-27.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jill-biden_birthDate_1951_0', 'ent_jill-biden', '1951-06-03', 1951, 'birth', 'life',
   'Born (1951)', 'Jill Biden: born on 1951-06-03.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jill-biden_termStart_2009_1', 'ent_jill-biden', '2009-01-20', 2009, 'political', 'public',
   'Term started (2009)', 'Jill Biden: term started on 2009-01-20.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jill-biden_termEnd_2017_2', 'ent_jill-biden', '2017-01-20', 2017, 'political', 'public',
   'Term ended (2017)', 'Jill Biden: term ended on 2017-01-20.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jill-biden_date_2020_3', 'ent_jill-biden', '2020-11-28', 2020, 'career', 'work',
   'Notable event (2020)', 'Jill Biden: notable event on 2020-11-28.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jill-biden_termStart_2021_4', 'ent_jill-biden', '2021-01-20', 2021, 'political', 'public',
   'Term started (2021)', 'Jill Biden: term started on 2021-01-20.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jill-biden_termEnd_2025_5', 'ent_jill-biden', '2025-01-20', 2025, 'political', 'public',
   'Term ended (2025)', 'Jill Biden: term ended on 2025-01-20.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jim-bridger_birthDate_1804_0', 'ent_jim-bridger', '1804-03-17', 1804, 'birth', 'life',
   'Born (1804)', 'Jim Bridger: born on 1804-03-17.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jim-bridger_birthYear_1804_1', 'ent_jim-bridger', '1804', 1804, 'career', 'work',
   'Notable event (1804)', 'Jim Bridger: notable event on 1804.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jim-bridger_deathDate_1881_2', 'ent_jim-bridger', '1881-07-17', 1881, 'death', 'life',
   'Died (1881)', 'Jim Bridger: died on 1881-07-17.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jim-bridger_deathYear_1881_3', 'ent_jim-bridger', '1881', 1881, 'career', 'work',
   'Notable event (1881)', 'Jim Bridger: notable event on 1881.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jim-brown_birthDate_1936_0', 'ent_jim-brown', '1936-02-17', 1936, 'birth', 'life',
   'Born (1936)', 'Jim Brown: born on 1936-02-17.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jim-brown_draftYear_1957_1', 'ent_jim-brown', '1957', 1957, 'career', 'work',
   'Notable event (1957)', 'Jim Brown: notable event on 1957.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jim-brown_deathDate_2023_2', 'ent_jim-brown', '2023-05-18', 2023, 'death', 'life',
   'Died (2023)', 'Jim Brown: died on 2023-05-18.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jim-thorpe_deathDate_1953_0', 'ent_jim-thorpe', '1953-03-28', 1953, 'death', 'life',
   'Died (1953)', 'Jim Thorpe: died on 1953-03-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jim-thorpe_deathYear_1953_1', 'ent_jim-thorpe', '1953', 1953, 'career', 'work',
   'Notable event (1953)', 'Jim Thorpe: notable event on 1953.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-carter_birthDate_1924_0', 'ent_jimmy-carter', '1924-10-01', 1924, 'birth', 'life',
   'Born (1924)', 'Jimmy Carter: born on 1924-10-01.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-carter_spouse_1946_1', 'ent_jimmy-carter', '1946-07-07', 1946, 'personal_life', 'life',
   'Marriage (1946)', 'Jimmy Carter: marriage on 1946-07-07.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-carter_termStart_1963_2', 'ent_jimmy-carter', '1963-01-14', 1963, 'political', 'public',
   'Term started (1963)', 'Jimmy Carter: term started on 1963-01-14.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-carter_termEnd_1967_3', 'ent_jimmy-carter', '1967-01-09', 1967, 'political', 'public',
   'Term ended (1967)', 'Jimmy Carter: term ended on 1967-01-09.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-carter_termStart_1971_4', 'ent_jimmy-carter', '1971-01-12', 1971, 'political', 'public',
   'Term started (1971)', 'Jimmy Carter: term started on 1971-01-12.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-carter_termEnd_1975_5', 'ent_jimmy-carter', '1975-01-14', 1975, 'political', 'public',
   'Term ended (1975)', 'Jimmy Carter: term ended on 1975-01-14.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-carter_termStart_1977_6', 'ent_jimmy-carter', '1977-01-20', 1977, 'political', 'public',
   'Term started (1977)', 'Jimmy Carter: term started on 1977-01-20.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-carter_termEnd_1981_7', 'ent_jimmy-carter', '1981-01-20', 1981, 'political', 'public',
   'Term ended (1981)', 'Jimmy Carter: term ended on 1981-01-20.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-carter_date_2016_8', 'ent_jimmy-carter', '2016-01-08', 2016, 'career', 'work',
   'Notable event (2016)', 'Jimmy Carter: notable event on 2016-01-08.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-carter_date_2021_9', 'ent_jimmy-carter', '2021-03-31', 2021, 'career', 'work',
   'Notable event (2021)', 'Jimmy Carter: notable event on 2021-03-31.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-carter_date_2022_10', 'ent_jimmy-carter', '2022-01-25', 2022, 'career', 'work',
   'Notable event (2022)', 'Jimmy Carter: notable event on 2022-01-25.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-carter_spouse_2023_11', 'ent_jimmy-carter', '2023-11-19', 2023, 'personal_life', 'life',
   'Marriage (2023)', 'Jimmy Carter: marriage on 2023-11-19.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-carter_date_2023_12', 'ent_jimmy-carter', '2023-08-10', 2023, 'career', 'work',
   'Notable event (2023)', 'Jimmy Carter: notable event on 2023-08-10.', 'src_dbpedia', 0.8, 12, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-carter_deathDate_2024_13', 'ent_jimmy-carter', '2024-12-29', 2024, 'death', 'life',
   'Died (2024)', 'Jimmy Carter: died on 2024-12-29.', 'src_dbpedia', 0.8, 13, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-fallon_birthDate_1974_0', 'ent_jimmy-fallon', '1974-09-19', 1974, 'birth', 'life',
   'Born (1974)', 'Jimmy Fallon: born on 1974-09-19.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-kimmel_birthDate_1967_0', 'ent_jimmy-kimmel', '1967-11-13', 1967, 'birth', 'life',
   'Born (1967)', 'Jimmy Kimmel: born on 1967-11-13.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-page_birthDate_1944_0', 'ent_jimmy-page', '1944-01-09', 1944, 'birth', 'life',
   'Born (1944)', 'Jimmy Page: born on 1944-01-09.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-page_birthYear_1944_1', 'ent_jimmy-page', '1944', 1944, 'career', 'work',
   'Notable event (1944)', 'Jimmy Page: notable event on 1944.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-page_activeYearsStartYear_1957_2', 'ent_jimmy-page', '1957', 1957, 'career', 'work',
   'Notable event (1957)', 'Jimmy Page: notable event on 1957.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-wales_birthDate_1966_0', 'ent_jimmy-wales', '1966-08-07', 1966, 'birth', 'life',
   'Born (1966)', 'Jimmy Wales: born on 1966-08-07.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-wales_birthYear_1966_1', 'ent_jimmy-wales', '1966', 1966, 'career', 'work',
   'Notable event (1966)', 'Jimmy Wales: notable event on 1966.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jimmy-wales_date_2017_2', 'ent_jimmy-wales', '2017-01-09', 2017, 'career', 'work',
   'Notable event (2017)', 'Jimmy Wales: notable event on 2017-01-09.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joan-mitchell_birthDate_1925_0', 'ent_joan-mitchell', '1925-02-12', 1925, 'birth', 'life',
   'Born (1925)', 'Joan Mitchell: born on 1925-02-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joan-mitchell_deathDate_1992_1', 'ent_joan-mitchell', '1992-10-30', 1992, 'death', 'life',
   'Died (1992)', 'Joan Mitchell: died on 1992-10-30.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joaquin-phoenix_birthDate_1974_0', 'ent_joaquin-phoenix', '1974-10-28', 1974, 'birth', 'life',
   'Born (1974)', 'Joaquin Phoenix: born on 1974-10-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joaquin-phoenix_birthYear_1974_1', 'ent_joaquin-phoenix', '1974', 1974, 'career', 'work',
   'Notable event (1974)', 'Joaquin Phoenix: notable event on 1974.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joaquin-phoenix_activeYearsStartYear_1982_2', 'ent_joaquin-phoenix', '1982', 1982, 'career', 'work',
   'Notable event (1982)', 'Joaquin Phoenix: notable event on 1982.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jodie-foster_birthDate_1962_0', 'ent_jodie-foster', '1962-11-19', 1962, 'birth', 'life',
   'Born (1962)', 'Jodie Foster: born on 1962-11-19.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jodie-foster_birthYear_1962_1', 'ent_jodie-foster', '1962', 1962, 'career', 'work',
   'Notable event (1962)', 'Jodie Foster: notable event on 1962.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jodie-foster_activeYearsStartYear_1965_2', 'ent_jodie-foster', '1965', 1965, 'career', 'work',
   'Notable event (1965)', 'Jodie Foster: notable event on 1965.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-biden_birthDate_1942_0', 'ent_joe-biden', '1942-11-20', 1942, 'birth', 'life',
   'Born (1942)', 'Joe Biden: born on 1942-11-20.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-biden_termStart_1971_1', 'ent_joe-biden', '1971-01-05', 1971, 'political', 'public',
   'Term started (1971)', 'Joe Biden: term started on 1971-01-05.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-biden_termEnd_1973_2', 'ent_joe-biden', '1973-01-01', 1973, 'political', 'public',
   'Term ended (1973)', 'Joe Biden: term ended on 1973-01-01.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-biden_termEnd_2009_3', 'ent_joe-biden', '2009-01-15', 2009, 'political', 'public',
   'Term ended (2009)', 'Joe Biden: term ended on 2009-01-15.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-biden_termEnd_2017_4', 'ent_joe-biden', '2017-01-20', 2017, 'political', 'public',
   'Term ended (2017)', 'Joe Biden: term ended on 2017-01-20.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-biden_termStart_2021_5', 'ent_joe-biden', '2021-01-20', 2021, 'political', 'public',
   'Term started (2021)', 'Joe Biden: term started on 2021-01-20.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-biden_date_2024_6', 'ent_joe-biden', '2024-07-18', 2024, 'career', 'work',
   'Notable event (2024)', 'Joe Biden: notable event on 2024-07-18.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-biden_termEnd_2025_7', 'ent_joe-biden', '2025-01-20', 2025, 'political', 'public',
   'Term ended (2025)', 'Joe Biden: term ended on 2025-01-20.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-gebbia_birthDate_1981_0', 'ent_joe-gebbia', '1981-08-21', 1981, 'birth', 'life',
   'Born (1981)', 'Joe Gebbia: born on 1981-08-21.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-gebbia_termStart_2025_1', 'ent_joe-gebbia', '2025-08-21', 2025, 'political', 'public',
   'Term started (2025)', 'Joe Gebbia: term started on 2025-08-21.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-louis_birthDate_1914_0', 'ent_joe-louis', '1914-05-13', 1914, 'birth', 'life',
   'Born (1914)', 'Joe Louis: born on 1914-05-13.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-louis_deathDate_1981_1', 'ent_joe-louis', '1981-04-12', 1981, 'death', 'life',
   'Died (1981)', 'Joe Louis: died on 1981-04-12.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-montana_birthDate_1956_0', 'ent_joe-montana', '1956-06-11', 1956, 'birth', 'life',
   'Born (1956)', 'Joe Montana: born on 1956-06-11.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-montana_draftYear_1979_1', 'ent_joe-montana', '1979', 1979, 'career', 'work',
   'Notable event (1979)', 'Joe Montana: notable event on 1979.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-morgan_birthDate_1943_0', 'ent_joe-morgan', '1943-09-19', 1943, 'birth', 'life',
   'Born (1943)', 'Joe Morgan: born on 1943-09-19.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-morgan_deathDate_2020_1', 'ent_joe-morgan', '2020-10-11', 2020, 'death', 'life',
   'Died (2020)', 'Joe Morgan: died on 2020-10-11.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-rogan_birthDate_1967_0', 'ent_joe-rogan', '1967-08-11', 1967, 'birth', 'life',
   'Born (1967)', 'Joe Rogan: born on 1967-08-11.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-rogan_birthYear_1967_1', 'ent_joe-rogan', '1967', 1967, 'career', 'work',
   'Notable event (1967)', 'Joe Rogan: notable event on 1967.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joe-rogan_activeYearsStartYear_1988_2', 'ent_joe-rogan', '1988', 1988, 'career', 'work',
   'Notable event (1988)', 'Joe Rogan: notable event on 1988.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joel-coen_birthDate_1954_0', 'ent_joel-coen', '1954-11-29', 1954, 'birth', 'life',
   'Born (1954)', 'Joel Coen: born on 1954-11-29.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joel-coen_birthYear_1954_1', 'ent_joel-coen', '1954', 1954, 'career', 'work',
   'Notable event (1954)', 'Joel Coen: notable event on 1954.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joel-coen_activeYearsStartYear_1984_2', 'ent_joel-coen', '1984', 1984, 'career', 'work',
   'Notable event (1984)', 'Joel Coen: notable event on 1984.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joel-osteen_birthDate_1963_0', 'ent_joel-osteen', '1963-03-05', 1963, 'birth', 'life',
   'Born (1963)', 'Joel Osteen: born on 1963-03-05.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-adams_spouse_1764_0', 'ent_john-adams', '1764-10-25', 1764, 'personal_life', 'life',
   'Marriage (1764)', 'John Adams: marriage on 1764-10-25.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-adams_termStart_1770_1', 'ent_john-adams', '1770-06-07', 1770, 'political', 'public',
   'Term started (1770)', 'John Adams: term started on 1770-06-07.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-adams_termEnd_1771_2', 'ent_john-adams', '1771-04-16', 1771, 'political', 'public',
   'Term ended (1771)', 'John Adams: term ended on 1771-04-16.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-adams_termStart_1774_3', 'ent_john-adams', '1774-09-05', 1774, 'political', 'public',
   'Term started (1774)', 'John Adams: term started on 1774-09-05.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-adams_termStart_1775_4', 'ent_john-adams', '1775-10-13', 1775, 'political', 'public',
   'Term started (1775)', 'John Adams: term started on 1775-10-13.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-adams_termEnd_1777_5', 'ent_john-adams', '1777-11-28', 1777, 'political', 'public',
   'Term ended (1777)', 'John Adams: term ended on 1777-11-28.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-adams_termEnd_1779_6', 'ent_john-adams', '1779-10-28', 1779, 'political', 'public',
   'Term ended (1779)', 'John Adams: term ended on 1779-10-28.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-adams_termStart_1782_7', 'ent_john-adams', '1782-04-19', 1782, 'political', 'public',
   'Term started (1782)', 'John Adams: term started on 1782-04-19.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-adams_termStart_1785_8', 'ent_john-adams', '1785-04-01', 1785, 'political', 'public',
   'Term started (1785)', 'John Adams: term started on 1785-04-01.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-adams_termEnd_1788_9', 'ent_john-adams', '1788-02-20', 1788, 'political', 'public',
   'Term ended (1788)', 'John Adams: term ended on 1788-02-20.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-adams_termStart_1789_10', 'ent_john-adams', '1789-04-21', 1789, 'political', 'public',
   'Term started (1789)', 'John Adams: term started on 1789-04-21.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-adams_termEnd_1797_11', 'ent_john-adams', '1797-03-04', 1797, 'political', 'public',
   'Term ended (1797)', 'John Adams: term ended on 1797-03-04.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-adams_termEnd_1801_12', 'ent_john-adams', '1801-03-04', 1801, 'political', 'public',
   'Term ended (1801)', 'John Adams: term ended on 1801-03-04.', 'src_dbpedia', 0.8, 12, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-adams_spouse_1818_13', 'ent_john-adams', '1818-10-28', 1818, 'personal_life', 'life',
   'Marriage (1818)', 'John Adams: marriage on 1818-10-28.', 'src_dbpedia', 0.8, 13, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-adams_deathDate_1826_14', 'ent_john-adams', '1826-07-04', 1826, 'death', 'life',
   'Died (1826)', 'John Adams: died on 1826-07-04.', 'src_dbpedia', 0.8, 14, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-carlos_birthDate_1945_0', 'ent_john-carlos', '1945-06-05', 1945, 'birth', 'life',
   'Born (1945)', 'John Carlos: born on 1945-06-05.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-collison_birthDate_1990_0', 'ent_john-collison', '1990-08-06', 1990, 'birth', 'life',
   'Born (1990)', 'John Collison: born on 1990-08-06.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-collison_birthYear_1990_1', 'ent_john-collison', '1990', 1990, 'career', 'work',
   'Notable event (1990)', 'John Collison: notable event on 1990.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-coltrane_birthDate_1926_0', 'ent_john-coltrane', '1926-09-23', 1926, 'birth', 'life',
   'Born (1926)', 'John Coltrane: born on 1926-09-23.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-coltrane_activeYearsStartYear_1945_1', 'ent_john-coltrane', '1945', 1945, 'career', 'work',
   'Notable event (1945)', 'John Coltrane: notable event on 1945.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-coltrane_deathDate_1967_2', 'ent_john-coltrane', '1967-07-17', 1967, 'death', 'life',
   'Died (1967)', 'John Coltrane: died on 1967-07-17.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-coltrane_activeYearsEndYear_1967_3', 'ent_john-coltrane', '1967', 1967, 'career', 'work',
   'Notable event (1967)', 'John Coltrane: notable event on 1967.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-deere_foundingYear_1837_0', 'ent_john-deere', '1837', 1837, 'career', 'work',
   'Notable event (1837)', 'John Deere: notable event on 1837.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-ford_birthDate_1894_0', 'ent_john-ford', '1894-02-01', 1894, 'birth', 'life',
   'Born (1894)', 'John Ford: born on 1894-02-01.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-ford_birthYear_1894_1', 'ent_john-ford', '1894', 1894, 'career', 'work',
   'Notable event (1894)', 'John Ford: notable event on 1894.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-ford_activeYearsStartYear_1913_2', 'ent_john-ford', '1913', 1913, 'career', 'work',
   'Notable event (1913)', 'John Ford: notable event on 1913.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-ford_activeYearsEndYear_1966_3', 'ent_john-ford', '1966', 1966, 'career', 'work',
   'Notable event (1966)', 'John Ford: notable event on 1966.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-ford_deathDate_1973_4', 'ent_john-ford', '1973-08-31', 1973, 'death', 'life',
   'Died (1973)', 'John Ford: died on 1973-08-31.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-ford_deathYear_1973_5', 'ent_john-ford', '1973', 1973, 'career', 'work',
   'Notable event (1973)', 'John Ford: notable event on 1973.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-glenn_birthDate_1921_0', 'ent_john-glenn', '1921-07-18', 1921, 'birth', 'life',
   'Born (1921)', 'John Glenn: born on 1921-07-18.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-glenn_termStart_1974_1', 'ent_john-glenn', '1974-12-24', 1974, 'political', 'public',
   'Term started (1974)', 'John Glenn: term started on 1974-12-24.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-glenn_termStart_1987_2', 'ent_john-glenn', '1987-01-03', 1987, 'political', 'public',
   'Term started (1987)', 'John Glenn: term started on 1987-01-03.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-glenn_termEnd_1995_3', 'ent_john-glenn', '1995-01-03', 1995, 'political', 'public',
   'Term ended (1995)', 'John Glenn: term ended on 1995-01-03.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-glenn_termEnd_1999_4', 'ent_john-glenn', '1999-01-03', 1999, 'political', 'public',
   'Term ended (1999)', 'John Glenn: term ended on 1999-01-03.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-glenn_date_2006_5', 'ent_john-glenn', '2006-08-31', 2006, 'career', 'work',
   'Notable event (2006)', 'John Glenn: notable event on 2006-08-31.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-glenn_deathDate_2016_6', 'ent_john-glenn', '2016-12-08', 2016, 'death', 'life',
   'Died (2016)', 'John Glenn: died on 2016-12-08.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-hancock_birthDate_1737_0', 'ent_john-hancock', '1737-01-23', 1737, 'birth', 'life',
   'Born (1737)', 'John Hancock: born on 1737-01-23.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-hancock_termStart_1774_1', 'ent_john-hancock', '1774-10-07', 1774, 'political', 'public',
   'Term started (1774)', 'John Hancock: term started on 1774-10-07.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-hancock_termEnd_1775_2', 'ent_john-hancock', '1775-05-02', 1775, 'political', 'public',
   'Term ended (1775)', 'John Hancock: term ended on 1775-05-02.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-hancock_termEnd_1777_3', 'ent_john-hancock', '1777-10-31', 1777, 'political', 'public',
   'Term ended (1777)', 'John Hancock: term ended on 1777-10-31.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-hancock_termStart_1780_4', 'ent_john-hancock', '1780-10-25', 1780, 'political', 'public',
   'Term started (1780)', 'John Hancock: term started on 1780-10-25.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-hancock_termEnd_1785_5', 'ent_john-hancock', '1785-01-29', 1785, 'political', 'public',
   'Term ended (1785)', 'John Hancock: term ended on 1785-01-29.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-hancock_termEnd_1786_6', 'ent_john-hancock', '1786-06-05', 1786, 'political', 'public',
   'Term ended (1786)', 'John Hancock: term ended on 1786-06-05.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-hancock_termStart_1787_7', 'ent_john-hancock', '1787-05-30', 1787, 'political', 'public',
   'Term started (1787)', 'John Hancock: term started on 1787-05-30.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-hancock_deathDate_1793_8', 'ent_john-hancock', '1793-10-08', 1793, 'death', 'life',
   'Died (1793)', 'John Hancock: died on 1793-10-08.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-hancock_termEnd_1793_9', 'ent_john-hancock', '1793-10-08', 1793, 'political', 'public',
   'Term ended (1793)', 'John Hancock: term ended on 1793-10-08.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-huston_birthDate_1906_0', 'ent_john-huston', '1906-08-05', 1906, 'birth', 'life',
   'Born (1906)', 'John Huston: born on 1906-08-05.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-huston_birthYear_1906_1', 'ent_john-huston', '1906', 1906, 'career', 'work',
   'Notable event (1906)', 'John Huston: notable event on 1906.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-huston_activeYearsStartYear_1930_2', 'ent_john-huston', '1930', 1930, 'career', 'work',
   'Notable event (1930)', 'John Huston: notable event on 1930.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-huston_deathDate_1987_3', 'ent_john-huston', '1987-08-28', 1987, 'death', 'life',
   'Died (1987)', 'John Huston: died on 1987-08-28.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-huston_activeYearsEndYear_1987_4', 'ent_john-huston', '1987', 1987, 'career', 'work',
   'Notable event (1987)', 'John Huston: notable event on 1987.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jacob-astor_birthDate_1763_0', 'ent_john-jacob-astor', '1763-07-17', 1763, 'birth', 'life',
   'Born (1763)', 'John Jacob Astor: born on 1763-07-17.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jacob-astor_birthYear_1763_1', 'ent_john-jacob-astor', '1763', 1763, 'career', 'work',
   'Notable event (1763)', 'John Jacob Astor: notable event on 1763.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jacob-astor_deathDate_1848_2', 'ent_john-jacob-astor', '1848-03-29', 1848, 'death', 'life',
   'Died (1848)', 'John Jacob Astor: died on 1848-03-29.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jacob-astor_deathYear_1848_3', 'ent_john-jacob-astor', '1848', 1848, 'career', 'work',
   'Notable event (1848)', 'John Jacob Astor: notable event on 1848.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jay_birthDate_1745_0', 'ent_john-jay', '1745-12-23', 1745, 'birth', 'life',
   'Born (1745)', 'John Jay: born on 1745-12-23.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jay_termStart_1775_1', 'ent_john-jay', '1775-05-10', 1775, 'political', 'public',
   'Term started (1775)', 'John Jay: term started on 1775-05-10.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jay_termEnd_1776_2', 'ent_john-jay', '1776-05-22', 1776, 'political', 'public',
   'Term ended (1776)', 'John Jay: term ended on 1776-05-22.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jay_termStart_1778_3', 'ent_john-jay', '1778-12-07', 1778, 'political', 'public',
   'Term started (1778)', 'John Jay: term started on 1778-12-07.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jay_termEnd_1779_4', 'ent_john-jay', '1779-09-28', 1779, 'political', 'public',
   'Term ended (1779)', 'John Jay: term ended on 1779-09-28.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jay_termEnd_1782_5', 'ent_john-jay', '1782-05-20', 1782, 'political', 'public',
   'Term ended (1782)', 'John Jay: term ended on 1782-05-20.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jay_termStart_1784_6', 'ent_john-jay', '1784-12-21', 1784, 'political', 'public',
   'Term started (1784)', 'John Jay: term started on 1784-12-21.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jay_termEnd_1789_7', 'ent_john-jay', '1789-03-03', 1789, 'political', 'public',
   'Term ended (1789)', 'John Jay: term ended on 1789-03-03.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jay_termEnd_1790_8', 'ent_john-jay', '1790-03-22', 1790, 'political', 'public',
   'Term ended (1790)', 'John Jay: term ended on 1790-03-22.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jay_termEnd_1795_9', 'ent_john-jay', '1795-06-29', 1795, 'political', 'public',
   'Term ended (1795)', 'John Jay: term ended on 1795-06-29.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jay_termEnd_1801_10', 'ent_john-jay', '1801-06-30', 1801, 'political', 'public',
   'Term ended (1801)', 'John Jay: term ended on 1801-06-30.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jay_deathDate_1829_11', 'ent_john-jay', '1829-05-17', 1829, 'death', 'life',
   'Died (1829)', 'John Jay: died on 1829-05-17.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jay_date_2010_12', 'ent_john-jay', '2010-02-11', 2010, 'career', 'work',
   'Notable event (2010)', 'John Jay: notable event on 2010-02-11.', 'src_dbpedia', 0.8, 12, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jay_date_2012_13', 'ent_john-jay', '2012-05-05', 2012, 'career', 'work',
   'Notable event (2012)', 'John Jay: notable event on 2012-05-05.', 'src_dbpedia', 0.8, 13, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-jay_date_2016_14', 'ent_john-jay', '2016-01-27', 2016, 'career', 'work',
   'Notable event (2016)', 'John Jay: notable event on 2016-01-27.', 'src_dbpedia', 0.8, 14, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-kerry_birthDate_1943_0', 'ent_john-kerry', '1943-12-11', 1943, 'birth', 'life',
   'Born (1943)', 'John Kerry: born on 1943-12-11.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-kerry_termStart_1983_1', 'ent_john-kerry', '1983-01-06', 1983, 'political', 'public',
   'Term started (1983)', 'John Kerry: term started on 1983-01-06.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-kerry_termEnd_1985_2', 'ent_john-kerry', '1985-01-02', 1985, 'political', 'public',
   'Term ended (1985)', 'John Kerry: term ended on 1985-01-02.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-kerry_termEnd_2013_3', 'ent_john-kerry', '2013-02-01', 2013, 'political', 'public',
   'Term ended (2013)', 'John Kerry: term ended on 2013-02-01.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-kerry_date_2014_4', 'ent_john-kerry', '2014-04-05', 2014, 'career', 'work',
   'Notable event (2014)', 'John Kerry: notable event on 2014-04-05.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-kerry_termEnd_2017_5', 'ent_john-kerry', '2017-01-20', 2017, 'political', 'public',
   'Term ended (2017)', 'John Kerry: term ended on 2017-01-20.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-kerry_termStart_2021_6', 'ent_john-kerry', '2021-01-20', 2021, 'political', 'public',
   'Term started (2021)', 'John Kerry: term started on 2021-01-20.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-kerry_termEnd_2024_7', 'ent_john-kerry', '2024-03-06', 2024, 'political', 'public',
   'Term ended (2024)', 'John Kerry: term ended on 2024-03-06.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-lewis_birthDate_1940_0', 'ent_john-lewis', '1940-02-21', 1940, 'birth', 'life',
   'Born (1940)', 'John Lewis: born on 1940-02-21.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-lewis_termStart_1982_1', 'ent_john-lewis', '1982-01-01', 1982, 'political', 'public',
   'Term started (1982)', 'John Lewis: term started on 1982-01-01.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-lewis_termEnd_1985_2', 'ent_john-lewis', '1985-09-03', 1985, 'political', 'public',
   'Term ended (1985)', 'John Lewis: term ended on 1985-09-03.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-lewis_termStart_1987_3', 'ent_john-lewis', '1987-01-03', 1987, 'political', 'public',
   'Term started (1987)', 'John Lewis: term started on 1987-01-03.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-lewis_termStart_2003_4', 'ent_john-lewis', '2003-01-03', 2003, 'political', 'public',
   'Term started (2003)', 'John Lewis: term started on 2003-01-03.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-lewis_date_2013_5', 'ent_john-lewis', '2013-10-29', 2013, 'career', 'work',
   'Notable event (2013)', 'John Lewis: notable event on 2013-10-29.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-lewis_deathDate_2020_6', 'ent_john-lewis', '2020-07-17', 2020, 'death', 'life',
   'Died (2020)', 'John Lewis: died on 2020-07-17.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-lewis_termEnd_2020_7', 'ent_john-lewis', '2020-07-17', 2020, 'political', 'public',
   'Term ended (2020)', 'John Lewis: term ended on 2020-07-17.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-lewis_date_2020_8', 'ent_john-lewis', '2020-02-23', 2020, 'career', 'work',
   'Notable event (2020)', 'John Lewis: notable event on 2020-02-23.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-marshall_birthDate_1755_0', 'ent_john-marshall', '1755-09-24', 1755, 'birth', 'life',
   'Born (1755)', 'John Marshall: born on 1755-09-24.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-marshall_termStart_1799_1', 'ent_john-marshall', '1799-03-05', 1799, 'political', 'public',
   'Term started (1799)', 'John Marshall: term started on 1799-03-05.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-marshall_termEnd_1800_2', 'ent_john-marshall', '1800-06-06', 1800, 'political', 'public',
   'Term ended (1800)', 'John Marshall: term ended on 1800-06-06.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-marshall_termEnd_1801_3', 'ent_john-marshall', '1801-03-04', 1801, 'political', 'public',
   'Term ended (1801)', 'John Marshall: term ended on 1801-03-04.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-marshall_deathDate_1835_4', 'ent_john-marshall', '1835-07-06', 1835, 'death', 'life',
   'Died (1835)', 'John Marshall: died on 1835-07-06.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-marshall_termEnd_1835_5', 'ent_john-marshall', '1835-07-06', 1835, 'political', 'public',
   'Term ended (1835)', 'John Marshall: term ended on 1835-07-06.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-marshall_date_2009_6', 'ent_john-marshall', '2009-01-31', 2009, 'career', 'work',
   'Notable event (2009)', 'John Marshall: notable event on 2009-01-31.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-marshall_date_2010_7', 'ent_john-marshall', '2010-07-08', 2010, 'career', 'work',
   'Notable event (2010)', 'John Marshall: notable event on 2010-07-08.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-marshall_date_2015_8', 'ent_john-marshall', '2015-10-17', 2015, 'career', 'work',
   'Notable event (2015)', 'John Marshall: notable event on 2015-10-17.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-marshall_date_2019_9', 'ent_john-marshall', '2019-08-05', 2019, 'career', 'work',
   'Notable event (2019)', 'John Marshall: notable event on 2019-08-05.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-marshall_date_2020_10', 'ent_john-marshall', '2020-07-04', 2020, 'career', 'work',
   'Notable event (2020)', 'John Marshall: notable event on 2020-07-04.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-nance-garner_birthDate_1868_0', 'ent_john-nance-garner', '1868-11-22', 1868, 'birth', 'life',
   'Born (1868)', 'John Nance Garner: born on 1868-11-22.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-nance-garner_spouse_1895_1', 'ent_john-nance-garner', '1895-11-25', 1895, 'personal_life', 'life',
   'Marriage (1895)', 'John Nance Garner: marriage on 1895-11-25.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-nance-garner_termStart_1899_2', 'ent_john-nance-garner', '1899-01-10', 1899, 'political', 'public',
   'Term started (1899)', 'John Nance Garner: term started on 1899-01-10.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-nance-garner_termEnd_1903_3', 'ent_john-nance-garner', '1903-01-13', 1903, 'political', 'public',
   'Term ended (1903)', 'John Nance Garner: term ended on 1903-01-13.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-nance-garner_termStart_1929_4', 'ent_john-nance-garner', '1929-03-04', 1929, 'political', 'public',
   'Term started (1929)', 'John Nance Garner: term started on 1929-03-04.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-nance-garner_termEnd_1931_5', 'ent_john-nance-garner', '1931-03-03', 1931, 'political', 'public',
   'Term ended (1931)', 'John Nance Garner: term ended on 1931-03-03.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-nance-garner_termEnd_1933_6', 'ent_john-nance-garner', '1933-03-03', 1933, 'political', 'public',
   'Term ended (1933)', 'John Nance Garner: term ended on 1933-03-03.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-nance-garner_termEnd_1941_7', 'ent_john-nance-garner', '1941-01-20', 1941, 'political', 'public',
   'Term ended (1941)', 'John Nance Garner: term ended on 1941-01-20.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-nance-garner_spouse_1948_8', 'ent_john-nance-garner', '1948-08-17', 1948, 'personal_life', 'life',
   'Marriage (1948)', 'John Nance Garner: marriage on 1948-08-17.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-nance-garner_deathDate_1967_9', 'ent_john-nance-garner', '1967-11-07', 1967, 'death', 'life',
   'Died (1967)', 'John Nance Garner: died on 1967-11-07.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-nance-garner_date_2017_10', 'ent_john-nance-garner', '2017-10-22', 2017, 'career', 'work',
   'Notable event (2017)', 'John Nance Garner: notable event on 2017-10-22.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-oliver_birthDate_1977_0', 'ent_john-oliver', '1977-04-23', 1977, 'birth', 'life',
   'Born (1977)', 'John Oliver: born on 1977-04-23.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_birthDate_1767_0', 'ent_john-quincy-adams', '1767-07-11', 1767, 'birth', 'life',
   'Born (1767)', 'John Quincy Adams: born on 1767-07-11.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_termStart_1794_1', 'ent_john-quincy-adams', '1794-11-06', 1794, 'political', 'public',
   'Term started (1794)', 'John Quincy Adams: term started on 1794-11-06.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_spouse_1797_2', 'ent_john-quincy-adams', '1797-07-26', 1797, 'personal_life', 'life',
   'Marriage (1797)', 'John Quincy Adams: marriage on 1797-07-26.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_termEnd_1797_3', 'ent_john-quincy-adams', '1797-06-20', 1797, 'political', 'public',
   'Term ended (1797)', 'John Quincy Adams: term ended on 1797-06-20.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_termEnd_1801_4', 'ent_john-quincy-adams', '1801-05-05', 1801, 'political', 'public',
   'Term ended (1801)', 'John Quincy Adams: term ended on 1801-05-05.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_termStart_1802_5', 'ent_john-quincy-adams', '1802-04-20', 1802, 'political', 'public',
   'Term started (1802)', 'John Quincy Adams: term started on 1802-04-20.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_termEnd_1803_6', 'ent_john-quincy-adams', '1803-03-04', 1803, 'political', 'public',
   'Term ended (1803)', 'John Quincy Adams: term ended on 1803-03-04.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_termEnd_1808_7', 'ent_john-quincy-adams', '1808-06-08', 1808, 'political', 'public',
   'Term ended (1808)', 'John Quincy Adams: term ended on 1808-06-08.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_termStart_1809_8', 'ent_john-quincy-adams', '1809-11-05', 1809, 'political', 'public',
   'Term started (1809)', 'John Quincy Adams: term started on 1809-11-05.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_termEnd_1814_9', 'ent_john-quincy-adams', '1814-04-28', 1814, 'political', 'public',
   'Term ended (1814)', 'John Quincy Adams: term ended on 1814-04-28.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_termStart_1815_10', 'ent_john-quincy-adams', '1815-06-08', 1815, 'political', 'public',
   'Term started (1815)', 'John Quincy Adams: term started on 1815-06-08.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_termEnd_1817_11', 'ent_john-quincy-adams', '1817-05-14', 1817, 'political', 'public',
   'Term ended (1817)', 'John Quincy Adams: term ended on 1817-05-14.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_termEnd_1825_12', 'ent_john-quincy-adams', '1825-03-03', 1825, 'political', 'public',
   'Term ended (1825)', 'John Quincy Adams: term ended on 1825-03-03.', 'src_dbpedia', 0.8, 12, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_termEnd_1829_13', 'ent_john-quincy-adams', '1829-03-04', 1829, 'political', 'public',
   'Term ended (1829)', 'John Quincy Adams: term ended on 1829-03-04.', 'src_dbpedia', 0.8, 13, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_termStart_1831_14', 'ent_john-quincy-adams', '1831-03-04', 1831, 'political', 'public',
   'Term started (1831)', 'John Quincy Adams: term started on 1831-03-04.', 'src_dbpedia', 0.8, 14, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_termStart_1844_15', 'ent_john-quincy-adams', '1844-04-22', 1844, 'political', 'public',
   'Term started (1844)', 'John Quincy Adams: term started on 1844-04-22.', 'src_dbpedia', 0.8, 15, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_deathDate_1848_16', 'ent_john-quincy-adams', '1848-02-23', 1848, 'death', 'life',
   'Died (1848)', 'John Quincy Adams: died on 1848-02-23.', 'src_dbpedia', 0.8, 16, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_termEnd_1848_17', 'ent_john-quincy-adams', '1848-02-23', 1848, 'political', 'public',
   'Term ended (1848)', 'John Quincy Adams: term ended on 1848-02-23.', 'src_dbpedia', 0.8, 17, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-quincy-adams_date_2012_18', 'ent_john-quincy-adams', '2012-02-18', 2012, 'career', 'work',
   'Notable event (2012)', 'John Quincy Adams: notable event on 2012-02-18.', 'src_dbpedia', 0.8, 18, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-roberts_birthDate_1955_0', 'ent_john-roberts', '1955-01-27', 1955, 'birth', 'life',
   'Born (1955)', 'John Roberts: born on 1955-01-27.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-roberts_termStart_1982_1', 'ent_john-roberts', '1982-11-28', 1982, 'political', 'public',
   'Term started (1982)', 'John Roberts: term started on 1982-11-28.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-roberts_termEnd_1986_2', 'ent_john-roberts', '1986-04-11', 1986, 'political', 'public',
   'Term ended (1986)', 'John Roberts: term ended on 1986-04-11.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-roberts_termStart_1989_3', 'ent_john-roberts', '1989-10-24', 1989, 'political', 'public',
   'Term started (1989)', 'John Roberts: term started on 1989-10-24.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-roberts_termStart_2003_4', 'ent_john-roberts', '2003-06-02', 2003, 'political', 'public',
   'Term started (2003)', 'John Roberts: term started on 2003-06-02.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-roberts_termEnd_2005_5', 'ent_john-roberts', '2005-09-29', 2005, 'political', 'public',
   'Term ended (2005)', 'John Roberts: term ended on 2005-09-29.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-singer-sargent_birthDate_1856_0', 'ent_john-singer-sargent', '1856-01-12', 1856, 'birth', 'life',
   'Born (1856)', 'John Singer Sargent: born on 1856-01-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-singer-sargent_deathDate_1925_1', 'ent_john-singer-sargent', '1925-04-15', 1925, 'death', 'life',
   'Died (1925)', 'John Singer Sargent: died on 1925-04-15.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-steinbeck_birthDate_1902_0', 'ent_john-steinbeck', '1902-02-27', 1902, 'birth', 'life',
   'Born (1902)', 'John Steinbeck: born on 1902-02-27.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-steinbeck_deathDate_1968_1', 'ent_john-steinbeck', '1968-12-20', 1968, 'death', 'life',
   'Died (1968)', 'John Steinbeck: died on 1968-12-20.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-steinbeck_date_2008_2', 'ent_john-steinbeck', '2008-10-07', 2008, 'career', 'work',
   'Notable event (2008)', 'John Steinbeck: notable event on 2008-10-07.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-steinbeck_date_2010_3', 'ent_john-steinbeck', '2010-01-09', 2010, 'career', 'work',
   'Notable event (2010)', 'John Steinbeck: notable event on 2010-01-09.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-steinbeck_date_2011_4', 'ent_john-steinbeck', '2011-04-16', 2011, 'career', 'work',
   'Notable event (2011)', 'John Steinbeck: notable event on 2011-04-16.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-steinbeck_date_2015_5', 'ent_john-steinbeck', '2015-08-10', 2015, 'career', 'work',
   'Notable event (2015)', 'John Steinbeck: notable event on 2015-08-10.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-steinbeck_date_2016_6', 'ent_john-steinbeck', '2016-03-12', 2016, 'career', 'work',
   'Notable event (2016)', 'John Steinbeck: notable event on 2016-03-12.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-steinbeck_date_2018_7', 'ent_john-steinbeck', '2018-11-12', 2018, 'career', 'work',
   'Notable event (2018)', 'John Steinbeck: notable event on 2018-11-12.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-steinbeck_date_2019_8', 'ent_john-steinbeck', '2019-01-12', 2019, 'career', 'work',
   'Notable event (2019)', 'John Steinbeck: notable event on 2019-01-12.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-steinbeck_date_2022_9', 'ent_john-steinbeck', '2022-01-05', 2022, 'career', 'work',
   'Notable event (2022)', 'John Steinbeck: notable event on 2022-01-05.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-steinbeck_date_2023_10', 'ent_john-steinbeck', '2023-12-04', 2023, 'career', 'work',
   'Notable event (2023)', 'John Steinbeck: notable event on 2023-12-04.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-tyler_birthDate_1790_0', 'ent_john-tyler', '1790-03-29', 1790, 'birth', 'life',
   'Born (1790)', 'John Tyler: born on 1790-03-29.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-tyler_spouse_1813_1', 'ent_john-tyler', '1813-03-29', 1813, 'personal_life', 'life',
   'Marriage (1813)', 'John Tyler: marriage on 1813-03-29.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-tyler_termStart_1816_2', 'ent_john-tyler', '1816-12-17', 1816, 'political', 'public',
   'Term started (1816)', 'John Tyler: term started on 1816-12-17.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-tyler_termEnd_1821_3', 'ent_john-tyler', '1821-03-03', 1821, 'political', 'public',
   'Term ended (1821)', 'John Tyler: term ended on 1821-03-03.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-tyler_termStart_1825_4', 'ent_john-tyler', '1825-12-10', 1825, 'political', 'public',
   'Term started (1825)', 'John Tyler: term started on 1825-12-10.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-tyler_termEnd_1827_5', 'ent_john-tyler', '1827-03-04', 1827, 'political', 'public',
   'Term ended (1827)', 'John Tyler: term ended on 1827-03-04.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-tyler_termEnd_1835_6', 'ent_john-tyler', '1835-12-06', 1835, 'political', 'public',
   'Term ended (1835)', 'John Tyler: term ended on 1835-12-06.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-tyler_termEnd_1836_7', 'ent_john-tyler', '1836-02-29', 1836, 'political', 'public',
   'Term ended (1836)', 'John Tyler: term ended on 1836-02-29.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-tyler_termEnd_1841_8', 'ent_john-tyler', '1841-04-04', 1841, 'political', 'public',
   'Term ended (1841)', 'John Tyler: term ended on 1841-04-04.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-tyler_termstart_1841_9', 'ent_john-tyler', '1841-04-04', 1841, 'career', 'work',
   'Notable event (1841)', 'John Tyler: notable event on 1841-04-04.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-tyler_spouse_1842_10', 'ent_john-tyler', '1842-09-10', 1842, 'personal_life', 'life',
   'Marriage (1842)', 'John Tyler: marriage on 1842-09-10.', 'src_dbpedia', 0.8, 10, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-tyler_spouse_1844_11', 'ent_john-tyler', '1844-06-26', 1844, 'personal_life', 'life',
   'Marriage (1844)', 'John Tyler: marriage on 1844-06-26.', 'src_dbpedia', 0.8, 11, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-tyler_termEnd_1845_12', 'ent_john-tyler', '1845-03-04', 1845, 'political', 'public',
   'Term ended (1845)', 'John Tyler: term ended on 1845-03-04.', 'src_dbpedia', 0.8, 12, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-tyler_termend_1845_13', 'ent_john-tyler', '1845-03-04', 1845, 'career', 'work',
   'Notable event (1845)', 'John Tyler: notable event on 1845-03-04.', 'src_dbpedia', 0.8, 13, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-tyler_termStart_1861_14', 'ent_john-tyler', '1861-02-04', 1861, 'political', 'public',
   'Term started (1861)', 'John Tyler: term started on 1861-02-04.', 'src_dbpedia', 0.8, 14, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-tyler_deathDate_1862_15', 'ent_john-tyler', '1862-01-18', 1862, 'death', 'life',
   'Died (1862)', 'John Tyler: died on 1862-01-18.', 'src_dbpedia', 0.8, 15, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-tyler_termEnd_1862_16', 'ent_john-tyler', '1862-01-17', 1862, 'political', 'public',
   'Term ended (1862)', 'John Tyler: term ended on 1862-01-17.', 'src_dbpedia', 0.8, 16, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-updike_birthDate_1932_0', 'ent_john-updike', '1932-03-18', 1932, 'birth', 'life',
   'Born (1932)', 'John Updike: born on 1932-03-18.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-updike_deathDate_2009_1', 'ent_john-updike', '2009-01-27', 2009, 'death', 'life',
   'Died (2009)', 'John Updike: died on 2009-01-27.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-updike_date_2014_2', 'ent_john-updike', '2014-01-22', 2014, 'career', 'work',
   'Notable event (2014)', 'John Updike: notable event on 2014-01-22.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-wesley-powell_birthDate_1834_0', 'ent_john-wesley-powell', '1834-03-24', 1834, 'birth', 'life',
   'Born (1834)', 'John Wesley Powell: born on 1834-03-24.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-wesley-powell_deathDate_1902_1', 'ent_john-wesley-powell', '1902-09-23', 1902, 'death', 'life',
   'Died (1902)', 'John Wesley Powell: died on 1902-09-23.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-wesley-powell_date_2020_2', 'ent_john-wesley-powell', '2020-05-17', 2020, 'career', 'work',
   'Notable event (2020)', 'John Wesley Powell: notable event on 2020-05-17.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-wilkes-booth_birthDate_1838_0', 'ent_john-wilkes-booth', '1838-05-10', 1838, 'birth', 'life',
   'Born (1838)', 'John Wilkes Booth: born on 1838-05-10.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-wilkes-booth_deathDate_1865_1', 'ent_john-wilkes-booth', '1865-04-26', 1865, 'death', 'life',
   'Died (1865)', 'John Wilkes Booth: died on 1865-04-26.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-zorn_birthDate_1953_0', 'ent_john-zorn', '1953-09-02', 1953, 'birth', 'life',
   'Born (1953)', 'John Zorn: born on 1953-09-02.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-zorn_activeYearsStartYear_1973_1', 'ent_john-zorn', '1973', 1973, 'career', 'work',
   'Notable event (1973)', 'John Zorn: notable event on 1973.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-zorn_date_2008_2', 'ent_john-zorn', '2008-02-29', 2008, 'career', 'work',
   'Notable event (2008)', 'John Zorn: notable event on 2008-02-29.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_john-zorn_date_2017_3', 'ent_john-zorn', '2017-10-24', 2017, 'career', 'work',
   'Notable event (2017)', 'John Zorn: notable event on 2017-10-24.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_johnny-bench_birthDate_1947_0', 'ent_johnny-bench', '1947-12-07', 1947, 'birth', 'life',
   'Born (1947)', 'Johnny Bench: born on 1947-12-07.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_johnny-bench_date_2015_1', 'ent_johnny-bench', '2015-04-02', 2015, 'career', 'work',
   'Notable event (2015)', 'Johnny Bench: notable event on 2015-04-02.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jon-stewart_birthDate_1962_0', 'ent_jon-stewart', '1962-11-28', 1962, 'birth', 'life',
   'Born (1962)', 'Jon Stewart: born on 1962-11-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jonas-salk_birthDate_1914_0', 'ent_jonas-salk', '1914-10-28', 1914, 'birth', 'life',
   'Born (1914)', 'Jonas Salk: born on 1914-10-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jonas-salk_deathDate_1995_1', 'ent_jonas-salk', '1995-06-23', 1995, 'death', 'life',
   'Died (1995)', 'Jonas Salk: died on 1995-06-23.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_jonas-salk_date_2008_2', 'ent_jonas-salk', '2008-09-05', 2008, 'career', 'work',
   'Notable event (2008)', 'Jonas Salk: notable event on 2008-09-05.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joni-mitchell_birthDate_1943_0', 'ent_joni-mitchell', '1943-11-07', 1943, 'birth', 'life',
   'Born (1943)', 'Joni Mitchell: born on 1943-11-07.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joni-mitchell_birthYear_1943_1', 'ent_joni-mitchell', '1943', 1943, 'career', 'work',
   'Notable event (1943)', 'Joni Mitchell: notable event on 1943.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joni-mitchell_date_2011_2', 'ent_joni-mitchell', '2011-04-06', 2011, 'career', 'work',
   'Notable event (2011)', 'Joni Mitchell: notable event on 2011-04-06.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joni-mitchell_date_2020_3', 'ent_joni-mitchell', '2020-05-31', 2020, 'career', 'work',
   'Notable event (2020)', 'Joni Mitchell: notable event on 2020-05-31.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joni-mitchell_date_2021_4', 'ent_joni-mitchell', '2021-06-07', 2021, 'career', 'work',
   'Notable event (2021)', 'Joni Mitchell: notable event on 2021-06-07.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_josephine-baker_birthDate_1906_0', 'ent_josephine-baker', '1906-06-03', 1906, 'birth', 'life',
   'Born (1906)', 'Josephine Baker: born on 1906-06-03.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_josephine-baker_birthYear_1906_1', 'ent_josephine-baker', '1906', 1906, 'career', 'work',
   'Notable event (1906)', 'Josephine Baker: notable event on 1906.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_josephine-baker_activeYearsStartYear_1921_2', 'ent_josephine-baker', '1921', 1921, 'career', 'work',
   'Notable event (1921)', 'Josephine Baker: notable event on 1921.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_josephine-baker_image_1925_3', 'ent_josephine-baker', '1925-10-02', 1925, 'career', 'work',
   'Notable event (1925)', 'Josephine Baker: notable event on 1925-10-02.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_josephine-baker_deathDate_1975_4', 'ent_josephine-baker', '1975-04-12', 1975, 'death', 'life',
   'Died (1975)', 'Josephine Baker: died on 1975-04-12.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_josephine-baker_activeYearsEndYear_1975_5', 'ent_josephine-baker', '1975', 1975, 'career', 'work',
   'Notable event (1975)', 'Josephine Baker: notable event on 1975.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_juice-wrld_birthDate_1998_0', 'ent_juice-wrld', '1998-12-02', 1998, 'birth', 'life',
   'Born (1998)', 'Juice Wrld: born on 1998-12-02.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_juice-wrld_birthYear_1998_1', 'ent_juice-wrld', '1998', 1998, 'career', 'work',
   'Notable event (1998)', 'Juice Wrld: notable event on 1998.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_juice-wrld_activeYearsStartYear_2015_2', 'ent_juice-wrld', '2015', 2015, 'career', 'work',
   'Notable event (2015)', 'Juice Wrld: notable event on 2015.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_juice-wrld_deathDate_2019_3', 'ent_juice-wrld', '2019-12-08', 2019, 'death', 'life',
   'Died (2019)', 'Juice Wrld: died on 2019-12-08.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_juice-wrld_activeYearsEndYear_2019_4', 'ent_juice-wrld', '2019', 2019, 'career', 'work',
   'Notable event (2019)', 'Juice Wrld: notable event on 2019.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_julia-grant_birthDate_1826_0', 'ent_julia-grant', '1826-01-26', 1826, 'birth', 'life',
   'Born (1826)', 'Julia Grant: born on 1826-01-26.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_julia-grant_spouse_1848_1', 'ent_julia-grant', '1848-08-22', 1848, 'personal_life', 'life',
   'Marriage (1848)', 'Julia Grant: marriage on 1848-08-22.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_julia-grant_termStart_1869_2', 'ent_julia-grant', '1869-03-04', 1869, 'political', 'public',
   'Term started (1869)', 'Julia Grant: term started on 1869-03-04.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_julia-grant_termEnd_1877_3', 'ent_julia-grant', '1877-03-04', 1877, 'political', 'public',
   'Term ended (1877)', 'Julia Grant: term ended on 1877-03-04.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_julia-grant_spouse_1885_4', 'ent_julia-grant', '1885-07-23', 1885, 'personal_life', 'life',
   'Marriage (1885)', 'Julia Grant: marriage on 1885-07-23.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_julia-grant_deathDate_1902_5', 'ent_julia-grant', '1902-12-14', 1902, 'death', 'life',
   'Died (1902)', 'Julia Grant: died on 1902-12-14.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_julia-roberts_birthDate_1967_0', 'ent_julia-roberts', '1967-10-28', 1967, 'birth', 'life',
   'Born (1967)', 'Julia Roberts: born on 1967-10-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_julia-roberts_birthYear_1967_1', 'ent_julia-roberts', '1967', 1967, 'career', 'work',
   'Notable event (1967)', 'Julia Roberts: notable event on 1967.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_julia-roberts_activeYearsStartYear_1987_2', 'ent_julia-roberts', '1987', 1987, 'career', 'work',
   'Notable event (1987)', 'Julia Roberts: notable event on 1987.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_justin-bieber_birthDate_1994_0', 'ent_justin-bieber', '1994-03-21', 1994, 'birth', 'life',
   'Born (1994)', 'Justin Bieber: born on 1994-03-21.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_justin-bieber_spouse_2018_1', 'ent_justin-bieber', '2018-09-13', 2018, 'personal_life', 'life',
   'Marriage (2018)', 'Justin Bieber: marriage on 2018-09-13.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kacey-musgraves_birthDate_1988_0', 'ent_kacey-musgraves', '1988-08-21', 1988, 'birth', 'life',
   'Born (1988)', 'Kacey Musgraves: born on 1988-08-21.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kacey-musgraves_birthYear_1988_1', 'ent_kacey-musgraves', '1988', 1988, 'career', 'work',
   'Notable event (1988)', 'Kacey Musgraves: notable event on 1988.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kacey-musgraves_activeYearsStartYear_1999_2', 'ent_kacey-musgraves', '1999', 1999, 'career', 'work',
   'Notable event (1999)', 'Kacey Musgraves: notable event on 1999.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kamala-harris_birthDate_1964_0', 'ent_kamala-harris', '1964-10-20', 1964, 'birth', 'life',
   'Born (1964)', 'Kamala Harris: born on 1964-10-20.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kamala-harris_termStart_2004_1', 'ent_kamala-harris', '2004-01-08', 2004, 'political', 'public',
   'Term started (2004)', 'Kamala Harris: term started on 2004-01-08.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kamala-harris_termEnd_2011_2', 'ent_kamala-harris', '2011-01-03', 2011, 'political', 'public',
   'Term ended (2011)', 'Kamala Harris: term ended on 2011-01-03.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kamala-harris_spouse_2014_3', 'ent_kamala-harris', '2014-08-22', 2014, 'personal_life', 'life',
   'Marriage (2014)', 'Kamala Harris: marriage on 2014-08-22.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kamala-harris_termEnd_2017_4', 'ent_kamala-harris', '2017-01-03', 2017, 'political', 'public',
   'Term ended (2017)', 'Kamala Harris: term ended on 2017-01-03.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kamala-harris_termEnd_2021_5', 'ent_kamala-harris', '2021-01-18', 2021, 'political', 'public',
   'Term ended (2021)', 'Kamala Harris: term ended on 2021-01-18.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kamala-harris_termEnd_2025_6', 'ent_kamala-harris', '2025-01-20', 2025, 'political', 'public',
   'Term ended (2025)', 'Kamala Harris: term ended on 2025-01-20.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_katharine-hepburn_birthDate_1907_0', 'ent_katharine-hepburn', '1907-05-12', 1907, 'birth', 'life',
   'Born (1907)', 'Katharine Hepburn: born on 1907-05-12.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_katharine-hepburn_birthYear_1907_1', 'ent_katharine-hepburn', '1907', 1907, 'career', 'work',
   'Notable event (1907)', 'Katharine Hepburn: notable event on 1907.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_katharine-hepburn_deathDate_2003_2', 'ent_katharine-hepburn', '2003-06-29', 2003, 'death', 'life',
   'Died (2003)', 'Katharine Hepburn: died on 2003-06-29.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_katharine-hepburn_deathYear_2003_3', 'ent_katharine-hepburn', '2003', 2003, 'career', 'work',
   'Notable event (2003)', 'Katharine Hepburn: notable event on 2003.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_katie-couric_birthDate_1957_0', 'ent_katie-couric', '1957-01-07', 1957, 'birth', 'life',
   'Born (1957)', 'Katie Couric: born on 1957-01-07.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_katie-couric_birthYear_1957_1', 'ent_katie-couric', '1957', 1957, 'career', 'work',
   'Notable event (1957)', 'Katie Couric: notable event on 1957.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_katie-couric_activeYearsStartYear_1979_2', 'ent_katie-couric', '1979', 1979, 'career', 'work',
   'Notable event (1979)', 'Katie Couric: notable event on 1979.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_keith-jarrett_birthDate_1945_0', 'ent_keith-jarrett', '1945-05-08', 1945, 'birth', 'life',
   'Born (1945)', 'Keith Jarrett: born on 1945-05-08.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_keith-jarrett_activeYearsStartYear_1966_1', 'ent_keith-jarrett', '1966', 1966, 'career', 'work',
   'Notable event (1966)', 'Keith Jarrett: notable event on 1966.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_keith-jarrett_activeYearsEndYear_2018_2', 'ent_keith-jarrett', '2018', 2018, 'career', 'work',
   'Notable event (2018)', 'Keith Jarrett: notable event on 2018.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_keith-jarrett_date_2020_3', 'ent_keith-jarrett', '2020-11-16', 2020, 'career', 'work',
   'Notable event (2020)', 'Keith Jarrett: notable event on 2020-11-16.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_keith-richards_birthDate_1943_0', 'ent_keith-richards', '1943-12-18', 1943, 'birth', 'life',
   'Born (1943)', 'Keith Richards: born on 1943-12-18.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_keith-richards_birthYear_1943_1', 'ent_keith-richards', '1943', 1943, 'career', 'work',
   'Notable event (1943)', 'Keith Richards: notable event on 1943.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_keith-richards_activeYearsStartYear_1960_2', 'ent_keith-richards', '1960', 1960, 'career', 'work',
   'Notable event (1960)', 'Keith Richards: notable event on 1960.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_keith-urban_birthDate_1967_0', 'ent_keith-urban', '1967-10-26', 1967, 'birth', 'life',
   'Born (1967)', 'Keith Urban: born on 1967-10-26.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_keith-urban_birthYear_1967_1', 'ent_keith-urban', '1967', 1967, 'career', 'work',
   'Notable event (1967)', 'Keith Urban: notable event on 1967.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kelly-clarkson_birthDate_1982_0', 'ent_kelly-clarkson', '1982-04-24', 1982, 'birth', 'life',
   'Born (1982)', 'Kelly Clarkson: born on 1982-04-24.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kelly-clarkson_birthYear_1982_1', 'ent_kelly-clarkson', '1982', 1982, 'career', 'work',
   'Notable event (1982)', 'Kelly Clarkson: notable event on 1982.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kelly-clarkson_activeYearsStartYear_2002_2', 'ent_kelly-clarkson', '2002', 2002, 'career', 'work',
   'Notable event (2002)', 'Kelly Clarkson: notable event on 2002.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kelly-clarkson_date_2011_3', 'ent_kelly-clarkson', '2011-08-21', 2011, 'career', 'work',
   'Notable event (2011)', 'Kelly Clarkson: notable event on 2011-08-21.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kelly-clarkson_date_2012_4', 'ent_kelly-clarkson', '2012-11-10', 2012, 'career', 'work',
   'Notable event (2012)', 'Kelly Clarkson: notable event on 2012-11-10.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kelly-rowland_birthDate_1981_0', 'ent_kelly-rowland', '1981-02-11', 1981, 'birth', 'life',
   'Born (1981)', 'Kelly Rowland: born on 1981-02-11.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kelly-rowland_birthYear_1981_1', 'ent_kelly-rowland', '1981', 1981, 'career', 'work',
   'Notable event (1981)', 'Kelly Rowland: notable event on 1981.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kelly-rowland_activeYearsStartYear_1992_2', 'ent_kelly-rowland', '1992', 1992, 'career', 'work',
   'Notable event (1992)', 'Kelly Rowland: notable event on 1992.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ken-thompson_birthDate_1943_0', 'ent_ken-thompson', '1943-02-04', 1943, 'birth', 'life',
   'Born (1943)', 'Ken Thompson: born on 1943-02-04.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kendrick-lamar_birthDate_1987_0', 'ent_kendrick-lamar', '1987-06-17', 1987, 'birth', 'life',
   'Born (1987)', 'Kendrick Lamar: born on 1987-06-17.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kendrick-lamar_birthYear_1987_1', 'ent_kendrick-lamar', '1987', 1987, 'career', 'work',
   'Notable event (1987)', 'Kendrick Lamar: notable event on 1987.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kendrick-lamar_activeYearsStartYear_2003_2', 'ent_kendrick-lamar', '2003', 2003, 'career', 'work',
   'Notable event (2003)', 'Kendrick Lamar: notable event on 2003.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kenneth-copeland_birthDate_1936_0', 'ent_kenneth-copeland', '1936-12-06', 1936, 'birth', 'life',
   'Born (1936)', 'Kenneth Copeland: born on 1936-12-06.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kenneth-copeland_birthYear_1936_1', 'ent_kenneth-copeland', '1936', 1936, 'career', 'work',
   'Notable event (1936)', 'Kenneth Copeland: notable event on 1936.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ketanji-brown-jackson_birthDate_1970_0', 'ent_ketanji-brown-jackson', '1970-09-14', 1970, 'birth', 'life',
   'Born (1970)', 'Ketanji Brown Jackson: born on 1970-09-14.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ketanji-brown-jackson_termStart_2010_1', 'ent_ketanji-brown-jackson', '2010-02-12', 2010, 'political', 'public',
   'Term started (2010)', 'Ketanji Brown Jackson: term started on 2010-02-12.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ketanji-brown-jackson_termStart_2013_2', 'ent_ketanji-brown-jackson', '2013-03-26', 2013, 'political', 'public',
   'Term started (2013)', 'Ketanji Brown Jackson: term started on 2013-03-26.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ketanji-brown-jackson_termEnd_2021_3', 'ent_ketanji-brown-jackson', '2021-06-17', 2021, 'political', 'public',
   'Term ended (2021)', 'Ketanji Brown Jackson: term ended on 2021-06-17.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_ketanji-brown-jackson_termEnd_2022_4', 'ent_ketanji-brown-jackson', '2022-06-29', 2022, 'political', 'public',
   'Term ended (2022)', 'Ketanji Brown Jackson: term ended on 2022-06-29.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_keyshia-cole_birthDate_1981_0', 'ent_keyshia-cole', '1981-10-15', 1981, 'birth', 'life',
   'Born (1981)', 'Keyshia Cole: born on 1981-10-15.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_keyshia-cole_birthYear_1981_1', 'ent_keyshia-cole', '1981', 1981, 'career', 'work',
   'Notable event (1981)', 'Keyshia Cole: notable event on 1981.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_keyshia-cole_activeYearsStartYear_1998_2', 'ent_keyshia-cole', '1998', 1998, 'career', 'work',
   'Notable event (1998)', 'Keyshia Cole: notable event on 1998.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kim-kardashian_birthDate_1980_0', 'ent_kim-kardashian', '1980-10-21', 1980, 'birth', 'life',
   'Born (1980)', 'Kim Kardashian: born on 1980-10-21.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kim-kardashian_birthYear_1980_1', 'ent_kim-kardashian', '1980', 1980, 'career', 'work',
   'Notable event (1980)', 'Kim Kardashian: notable event on 1980.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kim-kardashian_spouse_2000_2', 'ent_kim-kardashian', '2000-01-22', 2000, 'personal_life', 'life',
   'Marriage (2000)', 'Kim Kardashian: marriage on 2000-01-22.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kim-kardashian_activeYearsStartYear_2003_3', 'ent_kim-kardashian', '2003', 2003, 'career', 'work',
   'Notable event (2003)', 'Kim Kardashian: notable event on 2003.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kim-kardashian_spouse_2011_4', 'ent_kim-kardashian', '2011-08-20', 2011, 'personal_life', 'life',
   'Marriage (2011)', 'Kim Kardashian: marriage on 2011-08-20.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kim-kardashian_spouse_2013_5', 'ent_kim-kardashian', '2013-06-03', 2013, 'personal_life', 'life',
   'Marriage (2013)', 'Kim Kardashian: marriage on 2013-06-03.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kit-carson_birthDate_1809_0', 'ent_kit-carson', '1809-12-24', 1809, 'birth', 'life',
   'Born (1809)', 'Kit Carson: born on 1809-12-24.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kit-carson_birthYear_1809_1', 'ent_kit-carson', '1809', 1809, 'career', 'work',
   'Notable event (1809)', 'Kit Carson: notable event on 1809.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kit-carson_deathDate_1868_2', 'ent_kit-carson', '1868-05-23', 1868, 'death', 'life',
   'Died (1868)', 'Kit Carson: died on 1868-05-23.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kit-carson_deathYear_1868_3', 'ent_kit-carson', '1868', 1868, 'career', 'work',
   'Notable event (1868)', 'Kit Carson: notable event on 1868.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kit-carson_date_2017_4', 'ent_kit-carson', '2017-04-04', 2017, 'career', 'work',
   'Notable event (2017)', 'Kit Carson: notable event on 2017-04-04.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kobe-bryant_birthDate_1978_0', 'ent_kobe-bryant', '1978-08-23', 1978, 'birth', 'life',
   'Born (1978)', 'Kobe Bryant: born on 1978-08-23.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kobe-bryant_activeYearsStartYear_1996_1', 'ent_kobe-bryant', '1996', 1996, 'career', 'work',
   'Notable event (1996)', 'Kobe Bryant: notable event on 1996.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kobe-bryant_activeYearsEndYear_2016_2', 'ent_kobe-bryant', '2016', 2016, 'career', 'work',
   'Notable event (2016)', 'Kobe Bryant: notable event on 2016.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kobe-bryant_deathDate_2020_3', 'ent_kobe-bryant', '2020-01-26', 2020, 'death', 'life',
   'Died (2020)', 'Kobe Bryant: died on 2020-01-26.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kurt-cobain_birthDate_1967_0', 'ent_kurt-cobain', '1967-02-20', 1967, 'birth', 'life',
   'Born (1967)', 'Kurt Cobain: born on 1967-02-20.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kurt-cobain_birthYear_1967_1', 'ent_kurt-cobain', '1967', 1967, 'career', 'work',
   'Notable event (1967)', 'Kurt Cobain: notable event on 1967.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_kurt-cobain_bodyDiscovered_1994_2', 'ent_kurt-cobain', '1994-04-08', 1994, 'career', 'work',
   'Notable event (1994)', 'Kurt Cobain: notable event on 1994-04-08.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lady-bird-johnson_birthDate_1912_0', 'ent_lady-bird-johnson', '1912-12-22', 1912, 'birth', 'life',
   'Born (1912)', 'Lady Bird Johnson: born on 1912-12-22.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lady-bird-johnson_termStart_1961_1', 'ent_lady-bird-johnson', '1961-01-20', 1961, 'political', 'public',
   'Term started (1961)', 'Lady Bird Johnson: term started on 1961-01-20.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lady-bird-johnson_termEnd_1963_2', 'ent_lady-bird-johnson', '1963-11-22', 1963, 'political', 'public',
   'Term ended (1963)', 'Lady Bird Johnson: term ended on 1963-11-22.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lady-bird-johnson_termEnd_1969_3', 'ent_lady-bird-johnson', '1969-01-20', 1969, 'political', 'public',
   'Term ended (1969)', 'Lady Bird Johnson: term ended on 1969-01-20.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lady-bird-johnson_deathDate_2007_4', 'ent_lady-bird-johnson', '2007-07-11', 2007, 'death', 'life',
   'Died (2007)', 'Lady Bird Johnson: died on 2007-07-11.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lady-gaga_birthDate_1986_0', 'ent_lady-gaga', '1986-03-28', 1986, 'birth', 'life',
   'Born (1986)', 'Lady Gaga: born on 1986-03-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lady-gaga_birthYear_1986_1', 'ent_lady-gaga', '1986', 1986, 'career', 'work',
   'Notable event (1986)', 'Lady Gaga: notable event on 1986.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lady-gaga_activeYearsStartYear_2000_2', 'ent_lady-gaga', '2000', 2000, 'career', 'work',
   'Notable event (2000)', 'Lady Gaga: notable event on 2000.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_langston-hughes_birthDate_1901_0', 'ent_langston-hughes', '1901-02-01', 1901, 'birth', 'life',
   'Born (1901)', 'Langston Hughes: born on 1901-02-01.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_langston-hughes_activeYearsStartYear_1926_1', 'ent_langston-hughes', '1926', 1926, 'career', 'work',
   'Notable event (1926)', 'Langston Hughes: notable event on 1926.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_langston-hughes_activeYearsEndYear_1964_2', 'ent_langston-hughes', '1964', 1964, 'career', 'work',
   'Notable event (1964)', 'Langston Hughes: notable event on 1964.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_langston-hughes_deathDate_1967_3', 'ent_langston-hughes', '1967-05-22', 1967, 'death', 'life',
   'Died (1967)', 'Langston Hughes: died on 1967-05-22.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_langston-hughes_date_2015_4', 'ent_langston-hughes', '2015-09-18', 2015, 'career', 'work',
   'Notable event (2015)', 'Langston Hughes: notable event on 2015-09-18.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_larry-bird_birthDate_1956_0', 'ent_larry-bird', '1956-12-07', 1956, 'birth', 'life',
   'Born (1956)', 'Larry Bird: born on 1956-12-07.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_larry-bird_draftYear_1978_1', 'ent_larry-bird', '1978', 1978, 'career', 'work',
   'Notable event (1978)', 'Larry Bird: notable event on 1978.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_larry-bird_activeYearsStartYear_1979_2', 'ent_larry-bird', '1979', 1979, 'career', 'work',
   'Notable event (1979)', 'Larry Bird: notable event on 1979.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_larry-bird_activeYearsEndYear_1992_3', 'ent_larry-bird', '1992', 1992, 'career', 'work',
   'Notable event (1992)', 'Larry Bird: notable event on 1992.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_larry-doby_birthDate_1923_0', 'ent_larry-doby', '1923-12-13', 1923, 'birth', 'life',
   'Born (1923)', 'Larry Doby: born on 1923-12-13.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_larry-doby_years_1952_1', 'ent_larry-doby', '1952-06-04', 1952, 'career', 'work',
   'Notable event (1952)', 'Larry Doby: notable event on 1952-06-04.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_larry-doby_deathDate_2003_2', 'ent_larry-doby', '2003-06-18', 2003, 'death', 'life',
   'Died (2003)', 'Larry Doby: died on 2003-06-18.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_larry-ellison_birthDate_1944_0', 'ent_larry-ellison', '1944-08-17', 1944, 'birth', 'life',
   'Born (1944)', 'Larry Ellison: born on 1944-08-17.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_larry-ellison_birthYear_1944_1', 'ent_larry-ellison', '1944', 1944, 'career', 'work',
   'Notable event (1944)', 'Larry Ellison: notable event on 1944.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_larry-page_birthDate_1973_0', 'ent_larry-page', '1973-03-26', 1973, 'birth', 'life',
   'Born (1973)', 'Larry Page: born on 1973-03-26.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_larry-page_birthYear_1973_1', 'ent_larry-page', '1973', 1973, 'career', 'work',
   'Notable event (1973)', 'Larry Page: notable event on 1973.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_larry-page_spouse_2007_2', 'ent_larry-page', '2007-12-08', 2007, 'personal_life', 'life',
   'Marriage (2007)', 'Larry Page: marriage on 2007-12-08.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_larry-sanger_birthDate_1968_0', 'ent_larry-sanger', '1968-07-16', 1968, 'birth', 'life',
   'Born (1968)', 'Larry Sanger: born on 1968-07-16.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_larry-sanger_birthYear_1968_1', 'ent_larry-sanger', '1968', 1968, 'career', 'work',
   'Notable event (1968)', 'Larry Sanger: notable event on 1968.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_laura-bush_birthDate_1946_0', 'ent_laura-bush', '1946-11-04', 1946, 'birth', 'life',
   'Born (1946)', 'Laura Bush: born on 1946-11-04.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_laura-bush_termStart_1995_1', 'ent_laura-bush', '1995-01-17', 1995, 'political', 'public',
   'Term started (1995)', 'Laura Bush: term started on 1995-01-17.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_laura-bush_termEnd_2000_2', 'ent_laura-bush', '2000-12-21', 2000, 'political', 'public',
   'Term ended (2000)', 'Laura Bush: term ended on 2000-12-21.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_laura-bush_termStart_2001_3', 'ent_laura-bush', '2001-01-20', 2001, 'political', 'public',
   'Term started (2001)', 'Laura Bush: term started on 2001-01-20.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_laura-bush_termEnd_2009_4', 'ent_laura-bush', '2009-01-20', 2009, 'political', 'public',
   'Term ended (2009)', 'Laura Bush: term ended on 2009-01-20.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_laura-bush_date_2009_5', 'ent_laura-bush', '2009-05-01', 2009, 'career', 'work',
   'Notable event (2009)', 'Laura Bush: notable event on 2009-05-01.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_laura-bush_date_2011_6', 'ent_laura-bush', '2011-09-19', 2011, 'career', 'work',
   'Notable event (2011)', 'Laura Bush: notable event on 2011-09-19.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_laura-bush_date_2014_7', 'ent_laura-bush', '2014-11-03', 2014, 'career', 'work',
   'Notable event (2014)', 'Laura Bush: notable event on 2014-11-03.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_laura-bush_date_2021_8', 'ent_laura-bush', '2021-09-03', 2021, 'career', 'work',
   'Notable event (2021)', 'Laura Bush: notable event on 2021-09-03.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_laura-bush_date_2024_9', 'ent_laura-bush', '2024-03-12', 2024, 'career', 'work',
   'Notable event (2024)', 'Laura Bush: notable event on 2024-03-12.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lawrence-eagleburger_birthDate_1930_0', 'ent_lawrence-eagleburger', '1930-08-01', 1930, 'birth', 'life',
   'Born (1930)', 'Lawrence Eagleburger: born on 1930-08-01.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lawrence-eagleburger_termStart_1977_1', 'ent_lawrence-eagleburger', '1977-06-21', 1977, 'political', 'public',
   'Term started (1977)', 'Lawrence Eagleburger: term started on 1977-06-21.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lawrence-eagleburger_termEnd_1981_2', 'ent_lawrence-eagleburger', '1981-01-24', 1981, 'political', 'public',
   'Term ended (1981)', 'Lawrence Eagleburger: term ended on 1981-01-24.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lawrence-eagleburger_termEnd_1982_3', 'ent_lawrence-eagleburger', '1982-01-26', 1982, 'political', 'public',
   'Term ended (1982)', 'Lawrence Eagleburger: term ended on 1982-01-26.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lawrence-eagleburger_termEnd_1984_4', 'ent_lawrence-eagleburger', '1984-05-01', 1984, 'political', 'public',
   'Term ended (1984)', 'Lawrence Eagleburger: term ended on 1984-05-01.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lawrence-eagleburger_termStart_1989_5', 'ent_lawrence-eagleburger', '1989-03-20', 1989, 'political', 'public',
   'Term started (1989)', 'Lawrence Eagleburger: term started on 1989-03-20.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lawrence-eagleburger_termEnd_1992_6', 'ent_lawrence-eagleburger', '1992-12-08', 1992, 'political', 'public',
   'Term ended (1992)', 'Lawrence Eagleburger: term ended on 1992-12-08.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lawrence-eagleburger_termEnd_1993_7', 'ent_lawrence-eagleburger', '1993-01-20', 1993, 'political', 'public',
   'Term ended (1993)', 'Lawrence Eagleburger: term ended on 1993-01-20.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lawrence-eagleburger_date_2008_8', 'ent_lawrence-eagleburger', '2008-07-24', 2008, 'career', 'work',
   'Notable event (2008)', 'Lawrence Eagleburger: notable event on 2008-07-24.', 'src_dbpedia', 0.8, 8, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lawrence-eagleburger_deathDate_2011_9', 'ent_lawrence-eagleburger', '2011-06-04', 2011, 'death', 'life',
   'Died (2011)', 'Lawrence Eagleburger: died on 2011-06-04.', 'src_dbpedia', 0.8, 9, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-krasner_birthDate_1908_0', 'ent_lee-krasner', '1908-10-27', 1908, 'birth', 'life',
   'Born (1908)', 'Lee Krasner: born on 1908-10-27.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-krasner_deathDate_1984_1', 'ent_lee-krasner', '1984-06-19', 1984, 'death', 'life',
   'Died (1984)', 'Lee Krasner: died on 1984-06-19.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lee-krasner_date_2007_2', 'ent_lee-krasner', '2007-09-29', 2007, 'career', 'work',
   'Notable event (2007)', 'Lee Krasner: notable event on 2007-09-29.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_leonard-bernstein_birthDate_1918_0', 'ent_leonard-bernstein', '1918-08-25', 1918, 'birth', 'life',
   'Born (1918)', 'Leonard Bernstein: born on 1918-08-25.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_leonard-bernstein_birthYear_1918_1', 'ent_leonard-bernstein', '1918', 1918, 'career', 'work',
   'Notable event (1918)', 'Leonard Bernstein: notable event on 1918.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_leonard-bernstein_spouse_1951_2', 'ent_leonard-bernstein', '1951-09-09', 1951, 'personal_life', 'life',
   'Marriage (1951)', 'Leonard Bernstein: marriage on 1951-09-09.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_leonard-bernstein_spouse_1978_3', 'ent_leonard-bernstein', '1978-06-16', 1978, 'personal_life', 'life',
   'Marriage (1978)', 'Leonard Bernstein: marriage on 1978-06-16.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_leonard-bernstein_deathDate_1990_4', 'ent_leonard-bernstein', '1990-10-14', 1990, 'death', 'life',
   'Died (1990)', 'Leonard Bernstein: died on 1990-10-14.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_leonard-bernstein_deathYear_1990_5', 'ent_leonard-bernstein', '1990', 1990, 'career', 'work',
   'Notable event (1990)', 'Leonard Bernstein: notable event on 1990.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lex-fridman_birthDate_1983_0', 'ent_lex-fridman', '1983-08-15', 1983, 'birth', 'life',
   'Born (1983)', 'Lex Fridman: born on 1983-08-15.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_linda-ronstadt_birthDate_1946_0', 'ent_linda-ronstadt', '1946-07-15', 1946, 'birth', 'life',
   'Born (1946)', 'Linda Ronstadt: born on 1946-07-15.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_linda-ronstadt_activeYearsStartYear_1965_1', 'ent_linda-ronstadt', '1965', 1965, 'career', 'work',
   'Notable event (1965)', 'Linda Ronstadt: notable event on 1965.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_linda-ronstadt_activeYearsEndYear_2011_2', 'ent_linda-ronstadt', '2011', 2011, 'career', 'work',
   'Notable event (2011)', 'Linda Ronstadt: notable event on 2011.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_linus-pauling_birthDate_1901_0', 'ent_linus-pauling', '1901-02-28', 1901, 'birth', 'life',
   'Born (1901)', 'Linus Pauling: born on 1901-02-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_linus-pauling_spouse_1923_1', 'ent_linus-pauling', '1923-06-17', 1923, 'personal_life', 'life',
   'Marriage (1923)', 'Linus Pauling: marriage on 1923-06-17.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_linus-pauling_spouse_1981_2', 'ent_linus-pauling', '1981-12-07', 1981, 'personal_life', 'life',
   'Marriage (1981)', 'Linus Pauling: marriage on 1981-12-07.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_linus-pauling_deathDate_1994_3', 'ent_linus-pauling', '1994-08-19', 1994, 'death', 'life',
   'Died (1994)', 'Linus Pauling: died on 1994-08-19.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_linus-pauling_date_2018_4', 'ent_linus-pauling', '2018-10-16', 2018, 'career', 'work',
   'Notable event (2018)', 'Linus Pauling: notable event on 2018-10-16.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_linus-pauling_date_2019_5', 'ent_linus-pauling', '2019-07-19', 2019, 'career', 'work',
   'Notable event (2019)', 'Linus Pauling: notable event on 2019-07-19.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_linus-pauling_date_2020_6', 'ent_linus-pauling', '2020-10-31', 2020, 'career', 'work',
   'Notable event (2020)', 'Linus Pauling: notable event on 2020-10-31.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_linus-torvalds_birthDate_1969_0', 'ent_linus-torvalds', '1969-12-28', 1969, 'birth', 'life',
   'Born (1969)', 'Linus Torvalds: born on 1969-12-28.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_linus-torvalds_birthYear_1969_1', 'ent_linus-torvalds', '1969', 1969, 'career', 'work',
   'Notable event (1969)', 'Linus Torvalds: notable event on 1969.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lizzo_birthDate_1988_0', 'ent_lizzo', '1988-04-27', 1988, 'birth', 'life',
   'Born (1988)', 'Lizzo: born on 1988-04-27.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lizzo_birthYear_1988_1', 'ent_lizzo', '1988', 1988, 'career', 'work',
   'Notable event (1988)', 'Lizzo: notable event on 1988.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lizzo_activeYearsStartYear_2011_2', 'ent_lizzo', '2011', 2011, 'career', 'work',
   'Notable event (2011)', 'Lizzo: notable event on 2011.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lloyd-austin_birthDate_1953_0', 'ent_lloyd-austin', '1953-08-08', 1953, 'birth', 'life',
   'Born (1953)', 'Lloyd Austin: born on 1953-08-08.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lloyd-austin_termStart_2009_1', 'ent_lloyd-austin', '2009-08-09', 2009, 'political', 'public',
   'Term started (2009)', 'Lloyd Austin: term started on 2009-08-09.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lloyd-austin_termEnd_2010_2', 'ent_lloyd-austin', '2010-06-30', 2010, 'political', 'public',
   'Term ended (2010)', 'Lloyd Austin: term ended on 2010-06-30.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lloyd-austin_termStart_2012_3', 'ent_lloyd-austin', '2012-02-08', 2012, 'political', 'public',
   'Term started (2012)', 'Lloyd Austin: term started on 2012-02-08.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lloyd-austin_termEnd_2013_4', 'ent_lloyd-austin', '2013-03-08', 2013, 'political', 'public',
   'Term ended (2013)', 'Lloyd Austin: term ended on 2013-03-08.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lloyd-austin_termEnd_2016_5', 'ent_lloyd-austin', '2016-03-30', 2016, 'political', 'public',
   'Term ended (2016)', 'Lloyd Austin: term ended on 2016-03-30.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lloyd-austin_termStart_2021_6', 'ent_lloyd-austin', '2021-01-22', 2021, 'political', 'public',
   'Term started (2021)', 'Lloyd Austin: term started on 2021-01-22.', 'src_dbpedia', 0.8, 6, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lloyd-austin_termEnd_2025_7', 'ent_lloyd-austin', '2025-01-20', 2025, 'political', 'public',
   'Term ended (2025)', 'Lloyd Austin: term ended on 2025-01-20.', 'src_dbpedia', 0.8, 7, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lola-montez_birthDate_1821_0', 'ent_lola-montez', '1821-02-17', 1821, 'birth', 'life',
   'Born (1821)', 'Lola Montez: born on 1821-02-17.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lola-montez_birthYear_1821_1', 'ent_lola-montez', '1821', 1821, 'career', 'work',
   'Notable event (1821)', 'Lola Montez: notable event on 1821.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lola-montez_deathDate_1861_2', 'ent_lola-montez', '1861-01-17', 1861, 'death', 'life',
   'Died (1861)', 'Lola Montez: died on 1861-01-17.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lola-montez_deathYear_1861_3', 'ent_lola-montez', '1861', 1861, 'career', 'work',
   'Notable event (1861)', 'Lola Montez: notable event on 1861.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_loretta-lynn_birthDate_1932_0', 'ent_loretta-lynn', '1932-04-14', 1932, 'birth', 'life',
   'Born (1932)', 'Loretta Lynn: born on 1932-04-14.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_loretta-lynn_deathDate_2022_1', 'ent_loretta-lynn', '2022-10-04', 2022, 'death', 'life',
   'Died (2022)', 'Loretta Lynn: died on 2022-10-04.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lou-brock_birthDate_1939_0', 'ent_lou-brock', '1939-06-18', 1939, 'birth', 'life',
   'Born (1939)', 'Lou Brock: born on 1939-06-18.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lou-brock_years_1975_1', 'ent_lou-brock', '1975-05-27', 1975, 'career', 'work',
   'Notable event (1975)', 'Lou Brock: notable event on 1975-05-27.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lou-brock_deathDate_2020_2', 'ent_lou-brock', '2020-09-06', 2020, 'death', 'life',
   'Died (2020)', 'Lou Brock: died on 2020-09-06.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lou-gehrig_birthDate_1903_0', 'ent_lou-gehrig', '1903-06-19', 1903, 'birth', 'life',
   'Born (1903)', 'Lou Gehrig: born on 1903-06-19.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_lou-gehrig_deathDate_1941_1', 'ent_lou-gehrig', '1941-06-02', 1941, 'death', 'life',
   'Died (1941)', 'Lou Gehrig: died on 1941-06-02.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_octavio-paz_birthDate_1914_0', 'ent_octavio-paz', '1914-03-31', 1914, 'birth', 'life',
   'Born (1914)', 'Octavio Paz: born on 1914-03-31.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_octavio-paz_activeYearsStartYear_1931_1', 'ent_octavio-paz', '1931', 1931, 'career', 'work',
   'Notable event (1931)', 'Octavio Paz: notable event on 1931.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_octavio-paz_activeYearsEndYear_1965_2', 'ent_octavio-paz', '1965', 1965, 'career', 'work',
   'Notable event (1965)', 'Octavio Paz: notable event on 1965.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_octavio-paz_deathDate_1998_3', 'ent_octavio-paz', '1998-04-19', 1998, 'death', 'life',
   'Died (1998)', 'Octavio Paz: died on 1998-04-19.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_halimah-yacob_birthDate_1954_0', 'ent_halimah-yacob', '1954-08-23', 1954, 'birth', 'life',
   'Born (1954)', 'Halimah Yacob: born on 1954-08-23.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_halimah-yacob_termStart_2017_1', 'ent_halimah-yacob', '2017-09-14', 2017, 'political', 'public',
   'Term started (2017)', 'Halimah Yacob: term started on 2017-09-14.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_halimah-yacob_termEnd_2023_2', 'ent_halimah-yacob', '2023-09-14', 2023, 'political', 'public',
   'Term ended (2023)', 'Halimah Yacob: term ended on 2023-09-14.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_marla-maples_birthDate_1963_0', 'ent_marla-maples', '1963-10-27', 1963, 'birth', 'life',
   'Born (1963)', 'Marla Maples: born on 1963-10-27.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_marla-maples_birthYear_1963_1', 'ent_marla-maples', '1963', 1963, 'career', 'work',
   'Notable event (1963)', 'Marla Maples: notable event on 1963.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_marla-maples_activeYearsStartYear_1981_2', 'ent_marla-maples', '1981', 1981, 'career', 'work',
   'Notable event (1981)', 'Marla Maples: notable event on 1981.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_marla-maples_spouse_1993_3', 'ent_marla-maples', '1993-12-20', 1993, 'personal_life', 'life',
   'Marriage (1993)', 'Marla Maples: marriage on 1993-12-20.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_marla-maples_spouse_1999_4', 'ent_marla-maples', '1999-06-08', 1999, 'personal_life', 'life',
   'Marriage (1999)', 'Marla Maples: marriage on 1999-06-08.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_tiffany-trump_birthDate_1993_0', 'ent_tiffany-trump', '1993-10-13', 1993, 'birth', 'life',
   'Born (1993)', 'Tiffany Trump: born on 1993-10-13.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_tiffany-trump_birthYear_1993_1', 'ent_tiffany-trump', '1993', 1993, 'career', 'work',
   'Notable event (1993)', 'Tiffany Trump: notable event on 1993.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_tiffany-trump_spouse_2022_2', 'ent_tiffany-trump', '2022-11-12', 2022, 'personal_life', 'life',
   'Marriage (2022)', 'Tiffany Trump: marriage on 2022-11-12.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_salma-hayek_birthDate_1966_0', 'ent_salma-hayek', '1966-09-02', 1966, 'birth', 'life',
   'Born (1966)', 'Salma Hayek: born on 1966-09-02.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_salma-hayek_birthYear_1966_1', 'ent_salma-hayek', '1966', 1966, 'career', 'work',
   'Notable event (1966)', 'Salma Hayek: notable event on 1966.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_salma-hayek_activeYearsStartYear_1988_2', 'ent_salma-hayek', '1988', 1988, 'career', 'work',
   'Notable event (1988)', 'Salma Hayek: notable event on 1988.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_mahatma-gandhi_birthDate_1869_0', 'ent_mahatma-gandhi', '1869-10-02', 1869, 'birth', 'life',
   'Born (1869)', 'Mahatma Gandhi: born on 1869-10-02.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_mahatma-gandhi_birthYear_1869_1', 'ent_mahatma-gandhi', '1869', 1869, 'career', 'work',
   'Notable event (1869)', 'Mahatma Gandhi: notable event on 1869.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_mahatma-gandhi_activeYearsStartYear_1893_2', 'ent_mahatma-gandhi', '1893', 1893, 'career', 'work',
   'Notable event (1893)', 'Mahatma Gandhi: notable event on 1893.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_mahatma-gandhi_deathDate_1948_3', 'ent_mahatma-gandhi', '1948-01-30', 1948, 'death', 'life',
   'Died (1948)', 'Mahatma Gandhi: died on 1948-01-30.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_mahatma-gandhi_activeYearsEndYear_1948_4', 'ent_mahatma-gandhi', '1948', 1948, 'career', 'work',
   'Notable event (1948)', 'Mahatma Gandhi: notable event on 1948.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barron-trump_birthDate_2006_0', 'ent_barron-trump', '2006-03-20', 2006, 'birth', 'life',
   'Born (2006)', 'Barron Trump: born on 2006-03-20.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_barron-trump_birthYear_2006_1', 'ent_barron-trump', '2006', 2006, 'career', 'work',
   'Notable event (2006)', 'Barron Trump: notable event on 2006.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_joseph-schooling_birthDate_1995_0', 'ent_joseph-schooling', '1995-06-16', 1995, 'birth', 'life',
   'Born (1995)', 'Joseph Schooling: born on 1995-06-16.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_diego-rivera_birthDate_1886_0', 'ent_diego-rivera', '1886-12-08', 1886, 'birth', 'life',
   'Born (1886)', 'Diego Rivera: born on 1886-12-08.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_diego-rivera_deathDate_1957_1', 'ent_diego-rivera', '1957-11-24', 1957, 'death', 'life',
   'Died (1957)', 'Diego Rivera: died on 1957-11-24.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_cristina-kahlo_birthDate_1908_0', 'ent_cristina-kahlo', '1908-06-07', 1908, 'birth', 'life',
   'Born (1908)', 'Cristina Kahlo: born on 1908-06-07.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_cristina-kahlo_birthYear_1908_1', 'ent_cristina-kahlo', '1908', 1908, 'career', 'work',
   'Notable event (1908)', 'Cristina Kahlo: notable event on 1908.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_cristina-kahlo_deathDate_1964_2', 'ent_cristina-kahlo', '1964-02-08', 1964, 'death', 'life',
   'Died (1964)', 'Cristina Kahlo: died on 1964-02-08.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_cristina-kahlo_deathYear_1964_3', 'ent_cristina-kahlo', '1964', 1964, 'career', 'work',
   'Notable event (1964)', 'Cristina Kahlo: notable event on 1964.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_saira-banu_birthDate_1944_0', 'ent_saira-banu', '1944-08-23', 1944, 'birth', 'life',
   'Born (1944)', 'Saira Banu: born on 1944-08-23.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_saira-banu_birthYear_1944_1', 'ent_saira-banu', '1944', 1944, 'career', 'work',
   'Notable event (1944)', 'Saira Banu: notable event on 1944.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_saira-banu_activeYearsStartYear_1961_2', 'ent_saira-banu', '1961', 1961, 'career', 'work',
   'Notable event (1961)', 'Saira Banu: notable event on 1961.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_saira-banu_spouse_1966_3', 'ent_saira-banu', '1966-10-11', 1966, 'personal_life', 'life',
   'Marriage (1966)', 'Saira Banu: marriage on 1966-10-11.', 'src_dbpedia', 0.8, 3, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_saira-banu_activeYearsEndYear_1984_4', 'ent_saira-banu', '1984', 1984, 'career', 'work',
   'Notable event (1984)', 'Saira Banu: notable event on 1984.', 'src_dbpedia', 0.8, 4, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_saira-banu_spouse_2021_5', 'ent_saira-banu', '2021-07-07', 2021, 'personal_life', 'life',
   'Marriage (2021)', 'Saira Banu: marriage on 2021-07-07.', 'src_dbpedia', 0.8, 5, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_khatija-rahman_birthDate_1995_0', 'ent_khatija-rahman', '1995-12-29', 1995, 'birth', 'life',
   'Born (1995)', 'Khatija Rahman: born on 1995-12-29.', 'src_dbpedia', 0.8, 0, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_khatija-rahman_birthYear_1995_1', 'ent_khatija-rahman', '1995', 1995, 'career', 'work',
   'Notable event (1995)', 'Khatija Rahman: notable event on 1995.', 'src_dbpedia', 0.8, 1, 'en',
   unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('ev_db_khatija-rahman_activeYearsStartYear_2010_2', 'ent_khatija-rahman', '2010', 2010, 'career', 'work',
   'Notable event (2010)', 'Khatija Rahman: notable event on 2010.', 'src_dbpedia', 0.8, 2, 'en',
   unixepoch(), unixepoch());
