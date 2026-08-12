-- ========================================
-- Migration 0082: Person death + residence + work location from Wikidata
-- Generated: 2026-08-12
-- Strategy: Fetch P570 (date of death), P20 (place of death), P551 (residence), P937 (work location)
-- Coverage goal: bring death_place from 6 → ~700+ persons
-- ========================================

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_andre-breton_1966', 'ent_andre-breton', '1966-09-28', 1966, 'death', 'biography',
   'André Breton died on 1966-09-28', 'André Breton died on 1966-09-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q161955', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_andre-breton';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ivana-trump_2022', 'ent_ivana-trump', '2022-07-14', 2022, 'death', 'biography',
   'Ivana Trump died on 2022-07-14', 'Ivana Trump died on 2022-07-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q242351', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 73, living_status = 'deceased' WHERE id = 'ent_ivana-trump';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_fred-trump_1999', 'ent_fred-trump', '1999-06-25', 1999, 'death', 'biography',
   'Fred Trump died on 1999-06-25', 'Fred Trump died on 1999-06-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q3752663', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 94, living_status = 'deceased' WHERE id = 'ent_fred-trump';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_andrew-carnegie_1919', 'ent_andrew-carnegie', '1919-08-11', 1919, 'death', 'biography',
   'Andrew Carnegie died on 1919-08-11', 'Andrew Carnegie died on 1919-08-11 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q484265', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 81, living_status = 'deceased' WHERE id = 'ent_andrew-carnegie';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_andrew-jackson_1845', 'ent_andrew-jackson', '1845-06-08', 1845, 'death', 'biography',
   'Andrew Jackson died on 1845-06-08', 'Andrew Jackson died on 1845-06-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q11817', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 65, living_status = 'deceased' WHERE id = 'ent_andrew-jackson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_andrew-johnson_1875', 'ent_andrew-johnson', '1875-07-31', 1875, 'death', 'biography',
   'Andrew Johnson died on 1875-07-31', 'Andrew Johnson died on 1875-07-31 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q8612', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 67, living_status = 'deceased' WHERE id = 'ent_andrew-johnson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_andy-warhol_1987', 'ent_andy-warhol', '1987-02-22', 1987, 'death', 'biography',
   'Andy Warhol died on 1987-02-22', 'Andy Warhol died on 1987-02-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q5603', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 59, living_status = 'deceased' WHERE id = 'ent_andy-warhol';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_anna-harrison_1864', 'ent_anna-harrison', '1864-02-25', 1864, 'death', 'biography',
   'Anna Harrison died on 1864-02-25', 'Anna Harrison died on 1864-02-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q255190', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 89, living_status = 'deceased' WHERE id = 'ent_anna-harrison';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_anna-julia-cooper_1964', 'ent_anna-julia-cooper', '1964-02-27', 1964, 'death', 'biography',
   'Anna J. Cooper died on 1964-02-27', 'Anna J. Cooper died on 1964-02-27 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q977118', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 106, living_status = 'deceased' WHERE id = 'ent_anna-julia-cooper';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_antonin-scalia_2016', 'ent_antonin-scalia', '2016-02-13', 2016, 'death', 'biography',
   'Antonin Scalia died on 2016-02-13', 'Antonin Scalia died on 2016-02-13 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q11156', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 56, living_status = 'deceased' WHERE id = 'ent_antonin-scalia';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_arnold-palmer_2016', 'ent_arnold-palmer', '2016-09-25', 2016, 'death', 'biography',
   'Arnold Palmer died on 2016-09-25', 'Arnold Palmer died on 2016-09-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q9434', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 88, living_status = 'deceased' WHERE id = 'ent_arnold-palmer';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_art-blakey_1990', 'ent_art-blakey', '1990-10-16', 1990, 'death', 'biography',
   'Art Blakey died on 1990-10-16', 'Art Blakey died on 1990-10-16 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q311715', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 90, living_status = 'deceased' WHERE id = 'ent_art-blakey';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_arthur-ashe_1993', 'ent_arthur-ashe', '1993-02-06', 1993, 'death', 'biography',
   'Arthur Ashe died on 1993-02-06', 'Arthur Ashe died on 1993-02-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q53325', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 40, living_status = 'deceased' WHERE id = 'ent_arthur-ashe';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_arthur-penn_2010', 'ent_arthur-penn', '2010-09-28', 2010, 'death', 'biography',
   'Arthur Penn died on 2010-09-28', 'Arthur Penn died on 2010-09-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q41136', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 88, living_status = 'deceased' WHERE id = 'ent_arthur-penn';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_audre-lorde_1992', 'ent_audre-lorde', '1992-11-17', 1992, 'death', 'biography',
   'Audre Lorde died on 1992-11-17', 'Audre Lorde died on 1992-11-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q463319', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 58, living_status = 'deceased' WHERE id = 'ent_audre-lorde';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_audrey-hepburn_1993', 'ent_audrey-hepburn', '1993-01-20', 1993, 'death', 'biography',
   'Audrey Hepburn died on 1993-01-20', 'Audrey Hepburn died on 1993-01-20 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q42786', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 122, living_status = 'deceased' WHERE id = 'ent_audrey-hepburn';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_avicii_2018', 'ent_avicii', '2018-04-20', 2018, 'death', 'biography',
   'Avicii died on 2018-04-20', 'Avicii died on 2018-04-20 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q505476', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 29, living_status = 'deceased' WHERE id = 'ent_avicii';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_babe-ruth_1948', 'ent_babe-ruth', '1948-08-16', 1948, 'death', 'biography',
   'Babe Ruth died on 1948-08-16', 'Babe Ruth died on 1948-08-16 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q213812', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 53, living_status = 'deceased' WHERE id = 'ent_babe-ruth';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_barbara-bush_2018', 'ent_barbara-bush', '2018-04-17', 2018, 'death', 'biography',
   'Barbara Bush died on 2018-04-17', 'Barbara Bush died on 2018-04-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q190628', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 73, living_status = 'deceased' WHERE id = 'ent_barbara-bush';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_barbara-mcclintock_1992', 'ent_barbara-mcclintock', '1992-09-02', 1992, 'death', 'biography',
   'Barbara McClintock died on 1992-09-02', 'Barbara McClintock died on 1992-09-02 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q199654', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 48, living_status = 'deceased' WHERE id = 'ent_barbara-mcclintock';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_barbara-walters_2022', 'ent_barbara-walters', '2022-12-30', 2022, 'death', 'biography',
   'Barbara Walters died on 2022-12-30', 'Barbara Walters died on 2022-12-30 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q231417', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 93, living_status = 'deceased' WHERE id = 'ent_barbara-walters';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_benedict-arnold_1801', 'ent_benedict-arnold', '1801-06-14', 1801, 'death', 'biography',
   'Benedict Arnold died on 1801-06-14', 'Benedict Arnold died on 1801-06-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q298237', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 60, living_status = 'deceased' WHERE id = 'ent_benedict-arnold';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_benjamin-banneker_1806', 'ent_benjamin-banneker', '1806-10-09', 1806, 'death', 'biography',
   'Benjamin Banneker died on 1806-10-09', 'Benjamin Banneker died on 1806-10-09 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q557600', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 75, living_status = 'deceased' WHERE id = 'ent_benjamin-banneker';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_benjamin-franklin_1790', 'ent_benjamin-franklin', '1790-04-17', 1790, 'death', 'biography',
   'Benjamin Franklin died on 1790-04-17', 'Benjamin Franklin died on 1790-04-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q34969', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 155, living_status = 'deceased' WHERE id = 'ent_benjamin-franklin';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_benjamin-harrison_1901', 'ent_benjamin-harrison', '1901-03-13', 1901, 'death', 'biography',
   'Benjamin Harrison died on 1901-03-13', 'Benjamin Harrison died on 1901-03-13 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q35678', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 271, living_status = 'deceased' WHERE id = 'ent_benjamin-harrison';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_benny-goodman_1986', 'ent_benny-goodman', '1986-06-13', 1986, 'death', 'biography',
   'Benny Goodman died on 1986-06-13', 'Benny Goodman died on 1986-06-13 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q46755', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 94, living_status = 'deceased' WHERE id = 'ent_benny-goodman';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_bernard-lafayette_2026', 'ent_bernard-lafayette', '2026-03-05', 2026, 'death', 'biography',
   'Bernard Lafayette died on 2026-03-05', 'Bernard Lafayette died on 2026-03-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q4893345', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 86, living_status = 'deceased' WHERE id = 'ent_bernard-lafayette';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_bernice-robinson_1994', 'ent_bernice-robinson', '1994-09-03', 1994, 'death', 'biography',
   'Bernice Robinson died on 1994-09-03', 'Bernice Robinson died on 1994-09-03 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q28600017', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 306, living_status = 'deceased' WHERE id = 'ent_bernice-robinson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_bess-truman_1982', 'ent_bess-truman', '1982-10-18', 1982, 'death', 'biography',
   'Bess Truman died on 1982-10-18', 'Bess Truman died on 1982-10-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q233652', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 97, living_status = 'deceased' WHERE id = 'ent_bess-truman';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_betty-ford_2011', 'ent_betty-ford', '2011-07-08', 2011, 'death', 'biography',
   'Betty Ford died on 2011-07-08', 'Betty Ford died on 2011-07-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q213122', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 107, living_status = 'deceased' WHERE id = 'ent_betty-ford';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_bill-russell_2022', 'ent_bill-russell', '2022-07-31', 2022, 'death', 'biography',
   'Bill Russell died on 2022-07-31', 'Bill Russell died on 2022-07-31 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q242185', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 88, living_status = 'deceased' WHERE id = 'ent_bill-russell';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_billie-holiday_1959', 'ent_billie-holiday', '1959-07-17', 1959, 'death', 'biography',
   'Billie Holiday died on 1959-07-17', 'Billie Holiday died on 1959-07-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q104358', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 69, living_status = 'deceased' WHERE id = 'ent_billie-holiday';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_billy-graham_2018', 'ent_billy-graham', '2018-02-21', 2018, 'death', 'biography',
   'Billy Graham died on 2018-02-21', 'Billy Graham died on 2018-02-21 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q213550', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 100, living_status = 'deceased' WHERE id = 'ent_billy-graham';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_billy-wilder_2002', 'ent_billy-wilder', '2002-03-27', 2002, 'death', 'biography',
   'Billy Wilder died on 2002-03-27', 'Billy Wilder died on 2002-03-27 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q51547', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 96, living_status = 'deceased' WHERE id = 'ent_billy-wilder';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_bing-crosby_1977', 'ent_bing-crosby', '1977-10-14', 1977, 'death', 'biography',
   'Bing Crosby died on 1977-10-14', 'Bing Crosby died on 1977-10-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q72984', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 333, living_status = 'deceased' WHERE id = 'ent_bing-crosby';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_black-elk_1950', 'ent_black-elk', '1950-08-19', 1950, 'death', 'biography',
   'Black Elk died on 1950-08-19', 'Black Elk died on 1950-08-19 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q436655', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 87, living_status = 'deceased' WHERE id = 'ent_black-elk';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_bob-fosse_1987', 'ent_bob-fosse', '1987-09-23', 1987, 'death', 'biography',
   'Bob Fosse died on 1987-09-23', 'Bob Fosse died on 1987-09-23 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q313256', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 64, living_status = 'deceased' WHERE id = 'ent_bob-fosse';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_bob-gibson_2020', 'ent_bob-gibson', '2020-10-02', 2020, 'death', 'biography',
   'Bob Gibson died on 2020-10-02', 'Bob Gibson died on 2020-10-02 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1131535', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 113, living_status = 'deceased' WHERE id = 'ent_bob-gibson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_booker-t-washington_1915', 'ent_booker-t-washington', '1915-11-14', 1915, 'death', 'biography',
   'Booker T. Washington died on 1915-11-14', 'Booker T. Washington died on 1915-11-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q319871', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 59, living_status = 'deceased' WHERE id = 'ent_booker-t-washington';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_buster-keaton_1966', 'ent_buster-keaton', '1966-02-01', 1966, 'death', 'biography',
   'Buster Keaton died on 1966-02-01', 'Buster Keaton died on 1966-02-01 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q103949', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 67, living_status = 'deceased' WHERE id = 'ent_buster-keaton';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ct-vivian_2020', 'ent_ct-vivian', '2020-07-17', 2020, 'death', 'biography',
   'C. T. Vivian died on 2020-07-17', 'C. T. Vivian died on 2020-07-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q5006890', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 96, living_status = 'deceased' WHERE id = 'ent_ct-vivian';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_calvin-coolidge_1933', 'ent_calvin-coolidge', '1933-01-05', 1933, 'death', 'biography',
   'Calvin Coolidge died on 1933-01-05', 'Calvin Coolidge died on 1933-01-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q36023', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 42, living_status = 'deceased' WHERE id = 'ent_calvin-coolidge';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_caroline-harrison_1892', 'ent_caroline-harrison', '1892-10-25', 1892, 'death', 'biography',
   'Caroline Harrison died on 1892-10-25', 'Caroline Harrison died on 1892-10-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q234263', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 103, living_status = 'deceased' WHERE id = 'ent_caroline-harrison';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_charles-curtis_1936', 'ent_charles-curtis', '1936-02-08', 1936, 'death', 'biography',
   'Charles Curtis died on 1936-02-08', 'Charles Curtis died on 1936-02-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q271023', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 76, living_status = 'deceased' WHERE id = 'ent_charles-curtis';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_charles-evans-hughes_1948', 'ent_charles-evans-hughes', '1948-08-27', 1948, 'death', 'biography',
   'Charles Evans Hughes died on 1948-08-27', 'Charles Evans Hughes died on 1948-08-27 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q313252', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 93, living_status = 'deceased' WHERE id = 'ent_charles-evans-hughes';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_charles-hamilton-houston_1950', 'ent_charles-hamilton-houston', '1950-04-22', 1950, 'death', 'biography',
   'Charles Hamilton Houston died on 1950-04-22', 'Charles Hamilton Houston died on 1950-04-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q5078726', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 55, living_status = 'deceased' WHERE id = 'ent_charles-hamilton-houston';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_charles-mingus_1979', 'ent_charles-mingus', '1979-01-05', 1979, 'death', 'biography',
   'Charles Mingus died on 1979-01-05', 'Charles Mingus died on 1979-01-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q107432', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 62, living_status = 'deceased' WHERE id = 'ent_charles-mingus';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_charles-w-fairbanks_1918', 'ent_charles-w-fairbanks', '1918-06-04', 1918, 'death', 'biography',
   'Charles W. Fairbanks died on 1918-06-04', 'Charles W. Fairbanks died on 1918-06-04 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q270539', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 66, living_status = 'deceased' WHERE id = 'ent_charles-w-fairbanks';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_charlie-chaplin_1977', 'ent_charlie-chaplin', '1977-12-25', 1977, 'death', 'biography',
   'Charlie Chaplin died on 1977-12-25', 'Charlie Chaplin died on 1977-12-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q882', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 88, living_status = 'deceased' WHERE id = 'ent_charlie-chaplin';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_charlie-parker_1955', 'ent_charlie-parker', '1955-03-12', 1955, 'death', 'biography',
   'Charlie Parker died on 1955-03-12', 'Charlie Parker died on 1955-03-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q103767', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 106, living_status = 'deceased' WHERE id = 'ent_charlie-parker';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_chester-a-arthur_1886', 'ent_chester-a-arthur', '1886-11-18', 1886, 'death', 'biography',
   'Chester A. Arthur died on 1886-11-18', 'Chester A. Arthur died on 1886-11-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q35498', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 57, living_status = 'deceased' WHERE id = 'ent_chester-a-arthur';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_chester-bennington_2017', 'ent_chester-bennington', '2017-07-20', 2017, 'death', 'biography',
   'Chester Bennington died on 2017-07-20', 'Chester Bennington died on 2017-07-20 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q19198', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 41, living_status = 'deceased' WHERE id = 'ent_chester-bennington';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_chet-baker_1988', 'ent_chet-baker', '1988-05-13', 1988, 'death', 'biography',
   'Chet Baker died on 1988-05-13', 'Chet Baker died on 1988-05-13 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2274', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 59, living_status = 'deceased' WHERE id = 'ent_chet-baker';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_chick-corea_2021', 'ent_chick-corea', '2021-02-09', 2021, 'death', 'biography',
   'Chick Corea died on 2021-02-09', 'Chick Corea died on 2021-02-09 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q192465', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 80, living_status = 'deceased' WHERE id = 'ent_chick-corea';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_chief-joseph_1904', 'ent_chief-joseph', '1904-09-21', 1904, 'death', 'biography',
   'Chief Joseph died on 1904-09-21', 'Chief Joseph died on 1904-09-21 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q453666', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 64, living_status = 'deceased' WHERE id = 'ent_chief-joseph';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_chris-cornell_2017', 'ent_chris-cornell', '2017-05-18', 2017, 'death', 'biography',
   'Chris Cornell died on 2017-05-18', 'Chris Cornell died on 2017-05-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q270935', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 32, living_status = 'deceased' WHERE id = 'ent_chris-cornell';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_claes-oldenburg_2022', 'ent_claes-oldenburg', '2022-07-18', 2022, 'death', 'biography',
   'Claes Oldenburg died on 2022-07-18', 'Claes Oldenburg died on 2022-07-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q156731', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 93, living_status = 'deceased' WHERE id = 'ent_claes-oldenburg';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_claude-shannon_2001', 'ent_claude-shannon', '2001-02-24', 2001, 'death', 'biography',
   'Claude Shannon died on 2001-02-24', 'Claude Shannon died on 2001-02-24 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q92760', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 392, living_status = 'deceased' WHERE id = 'ent_claude-shannon';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_cokie-roberts_2019', 'ent_cokie-roberts', '2019-09-17', 2019, 'death', 'biography',
   'Cokie Roberts died on 2019-09-17', 'Cokie Roberts died on 2019-09-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q4395105', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 171, living_status = 'deceased' WHERE id = 'ent_cokie-roberts';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_cole-porter_1964', 'ent_cole-porter', '1964-10-15', 1964, 'death', 'biography',
   'Cole Porter died on 1964-10-15', 'Cole Porter died on 1964-10-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q215120', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 73, living_status = 'deceased' WHERE id = 'ent_cole-porter';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_colin-powell_2021', 'ent_colin-powell', '2021-10-18', 2021, 'death', 'biography',
   'Colin Powell died on 2021-10-18', 'Colin Powell died on 2021-10-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q150851', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 84, living_status = 'deceased' WHERE id = 'ent_colin-powell';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_constance-baker-motley_2005', 'ent_constance-baker-motley', '2005-09-28', 2005, 'death', 'biography',
   'Constance Baker Motley died on 2005-09-28', 'Constance Baker Motley died on 2005-09-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1127623', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 84, living_status = 'deceased' WHERE id = 'ent_constance-baker-motley';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_cormac-mccarthy_2023', 'ent_cormac-mccarthy', '2023-06-13', 2023, 'death', 'biography',
   'Cormac McCarthy died on 2023-06-13', 'Cormac McCarthy died on 2023-06-13 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q272610', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 90, living_status = 'deceased' WHERE id = 'ent_cormac-mccarthy';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_res_ent_cormac-mccarthy_plc_asheville', 'ent_cormac-mccarthy', 'plc_asheville', 'residence', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_cornelius-vanderbilt_1877', 'ent_cornelius-vanderbilt', '1877-01-04', 1877, 'death', 'biography',
   'Cornelius Vanderbilt died on 1877-01-04', 'Cornelius Vanderbilt died on 1877-01-04 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q313721', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 83, living_status = 'deceased' WHERE id = 'ent_cornelius-vanderbilt';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_count-basie_1984', 'ent_count-basie', '1984-04-26', 1984, 'death', 'biography',
   'Count Basie died on 1984-04-26', 'Count Basie died on 1984-04-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q107008', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 80, living_status = 'deceased' WHERE id = 'ent_count-basie';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_crazy-horse_1877', 'ent_crazy-horse', '1877-09-05', 1877, 'death', 'biography',
   'Crazy Horse died on 1877-09-05', 'Crazy Horse died on 1877-09-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q44555', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 37, living_status = 'deceased' WHERE id = 'ent_crazy-horse';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_creighton-abrams_1974', 'ent_creighton-abrams', '1974-09-04', 1974, 'death', 'biography',
   'Creighton Abrams died on 1974-09-04', 'Creighton Abrams died on 1974-09-04 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q280290', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 60, living_status = 'deceased' WHERE id = 'ent_creighton-abrams';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_crispus-attucks_1770', 'ent_crispus-attucks', '1770-03-05', 1770, 'death', 'biography',
   'Crispus Attucks died on 1770-03-05', 'Crispus Attucks died on 1770-03-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q288241', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 130, living_status = 'deceased' WHERE id = 'ent_crispus-attucks';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_cyrus-mccormick_1884', 'ent_cyrus-mccormick', '1884-05-13', 1884, 'death', 'biography',
   'Cyrus McCormick died on 1884-05-13', 'Cyrus McCormick died on 1884-05-13 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q719357', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 26, living_status = 'deceased' WHERE id = 'ent_cyrus-mccormick';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_daniel-boone_1820', 'ent_daniel-boone', '1820-09-26', 1820, 'death', 'biography',
   'Daniel Boone died on 1820-09-26', 'Daniel Boone died on 1820-09-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q316661', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 86, living_status = 'deceased' WHERE id = 'ent_daniel-boone';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_dave-brubeck_2012', 'ent_dave-brubeck', '2012-12-05', 2012, 'death', 'biography',
   'Dave Brubeck died on 2012-12-05', 'Dave Brubeck died on 2012-12-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q108597', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 92, living_status = 'deceased' WHERE id = 'ent_dave-brubeck';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_david-bowie_2016', 'ent_david-bowie', '2016-01-10', 2016, 'death', 'biography',
   'David Bowie died on 2016-01-10', 'David Bowie died on 2016-01-10 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q5383', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 55, living_status = 'deceased' WHERE id = 'ent_david-bowie';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_david-packard_1996', 'ent_david-packard', '1996-03-26', 1996, 'death', 'biography',
   'David Packard died on 1996-03-26', 'David Packard died on 1996-03-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q380484', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 118, living_status = 'deceased' WHERE id = 'ent_david-packard';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_david-souter_2025', 'ent_david-souter', '2025-05-08', 2025, 'death', 'biography',
   'David Souter died on 2025-05-08', 'David Souter died on 2025-05-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q472547', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 86, living_status = 'deceased' WHERE id = 'ent_david-souter';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_davy-crockett_1836', 'ent_davy-crockett', '1836-03-06', 1836, 'death', 'biography',
   'Davy Crockett died on 1836-03-06', 'Davy Crockett died on 1836-03-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q311070', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 193, living_status = 'deceased' WHERE id = 'ent_davy-crockett';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_dean-rusk_1994', 'ent_dean-rusk', '1994-12-20', 1994, 'death', 'biography',
   'Dean Rusk died on 1994-12-20', 'Dean Rusk died on 1994-12-20 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q313258', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 199, living_status = 'deceased' WHERE id = 'ent_dean-rusk';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_denise-levertov_1997', 'ent_denise-levertov', '1997-12-20', 1997, 'death', 'biography',
   'Denise Levertov died on 1997-12-20', 'Denise Levertov died on 1997-12-20 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q272042', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 74, living_status = 'deceased' WHERE id = 'ent_denise-levertov';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_dennis-ritchie_2011', 'ent_dennis-ritchie', '2011-10-12', 2011, 'death', 'biography',
   'Dennis Ritchie died on 2011-10-12', 'Dennis Ritchie died on 2011-10-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q45575', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 70, living_status = 'deceased' WHERE id = 'ent_dennis-ritchie';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_desmond-tutu_2021', 'ent_desmond-tutu', '2021-12-26', 2021, 'death', 'biography',
   'Desmond Tutu died on 2021-12-26', 'Desmond Tutu died on 2021-12-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q43033', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 66, living_status = 'deceased' WHERE id = 'ent_desmond-tutu';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_diana-vreeland_1989', 'ent_diana-vreeland', '1989-08-22', 1989, 'death', 'biography',
   'Diana Vreeland died on 1989-08-22', 'Diana Vreeland died on 1989-08-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q450619', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 86, living_status = 'deceased' WHERE id = 'ent_diana-vreeland';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_dick-cheney_2025', 'ent_dick-cheney', '2025-11-03', 2025, 'death', 'biography',
   'Dick Cheney died on 2025-11-03', 'Dick Cheney died on 2025-11-03 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q48259', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 63, living_status = 'deceased' WHERE id = 'ent_dick-cheney';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_dizzy-gillespie_1993', 'ent_dizzy-gillespie', '1993-01-06', 1993, 'death', 'biography',
   'Dizzy Gillespie died on 1993-01-06', 'Dizzy Gillespie died on 1993-01-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q49575', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 76, living_status = 'deceased' WHERE id = 'ent_dizzy-gillespie';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_dolley-madison_1849', 'ent_dolley-madison', '1849-07-12', 1849, 'death', 'biography',
   'Dolley Madison died on 1849-07-12', 'Dolley Madison died on 1849-07-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q233638', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 88, living_status = 'deceased' WHERE id = 'ent_dolley-madison';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_donna-summer_2012', 'ent_donna-summer', '2012-05-17', 2012, 'death', 'biography',
   'Donna Summer died on 2012-05-17', 'Donna Summer died on 2012-05-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q908933', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 45, living_status = 'deceased' WHERE id = 'ent_donna-summer';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_dorothy-height_2010', 'ent_dorothy-height', '2010-04-20', 2010, 'death', 'biography',
   'Dorothy Height died on 2010-04-20', 'Dorothy Height died on 2010-04-20 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q298259', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 98, living_status = 'deceased' WHERE id = 'ent_dorothy-height';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_douglas-macarthur_1964', 'ent_douglas-macarthur', '1964-04-05', 1964, 'death', 'biography',
   'Douglas MacArthur died on 1964-04-05', 'Douglas MacArthur died on 1964-04-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q127417', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 61, living_status = 'deceased' WHERE id = 'ent_douglas-macarthur';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_dred-scott_1858', 'ent_dred-scott', '1858-09-17', 1858, 'death', 'biography',
   'Dred Scott died on 1858-09-17', 'Dred Scott died on 1858-09-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q480427', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 71, living_status = 'deceased' WHERE id = 'ent_dred-scott';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_duke-ellington_1974', 'ent_duke-ellington', '1974-05-24', 1974, 'death', 'biography',
   'Duke Ellington died on 1974-05-24', 'Duke Ellington died on 1974-05-24 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q4030', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 75, living_status = 'deceased' WHERE id = 'ent_duke-ellington';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_dwight-d-eisenhower_1969', 'ent_dwight-d-eisenhower', '1969-03-28', 1969, 'death', 'biography',
   'Dwight D. Eisenhower died on 1969-03-28', 'Dwight D. Eisenhower died on 1969-03-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q9916', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 79, living_status = 'deceased' WHERE id = 'ent_dwight-d-eisenhower';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_earl-warren_1974', 'ent_earl-warren', '1974-07-09', 1974, 'death', 'biography',
   'Earl Warren died on 1974-07-09', 'Earl Warren died on 1974-07-09 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q311197', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 85, living_status = 'deceased' WHERE id = 'ent_earl-warren';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_edgar-allan-poe_1849', 'ent_edgar-allan-poe', '1849-10-07', 1849, 'death', 'biography',
   'Edgar Allan Poe died on 1849-10-07', 'Edgar Allan Poe died on 1849-10-07 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q16867', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 40, living_status = 'deceased' WHERE id = 'ent_edgar-allan-poe';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_edith-roosevelt_1948', 'ent_edith-roosevelt', '1948-09-30', 1948, 'death', 'biography',
   'Edith Roosevelt died on 1948-09-30', 'Edith Roosevelt died on 1948-09-30 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q237590', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 248, living_status = 'deceased' WHERE id = 'ent_edith-roosevelt';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_edith-wilson_1961', 'ent_edith-wilson', '1961-12-28', 1961, 'death', 'biography',
   'Edith Wilson died on 1961-12-28', 'Edith Wilson died on 1961-12-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q255169', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 321, living_status = 'deceased' WHERE id = 'ent_edith-wilson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_edward-douglass-white_1921', 'ent_edward-douglass-white', '1921-05-19', 1921, 'death', 'biography',
   'Edward Douglass White died on 1921-05-19', 'Edward Douglass White died on 1921-05-19 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q706463', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 126, living_status = 'deceased' WHERE id = 'ent_edward-douglass-white';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_edward-hopper_1967', 'ent_edward-hopper', '1967-05-15', 1967, 'death', 'biography',
   'Edward Hopper died on 1967-05-15', 'Edward Hopper died on 1967-05-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q203401', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 85, living_status = 'deceased' WHERE id = 'ent_edward-hopper';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_edward-r-murrow_1965', 'ent_edward-r-murrow', '1965-04-27', 1965, 'death', 'biography',
   'Edward R. Murrow died on 1965-04-27', 'Edward R. Murrow died on 1965-04-27 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q353935', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 57, living_status = 'deceased' WHERE id = 'ent_edward-r-murrow';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_edward-teller_2003', 'ent_edward-teller', '2003-09-09', 2003, 'death', 'biography',
   'Edward Teller died on 2003-09-09', 'Edward Teller died on 2003-09-09 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q6733', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 95, living_status = 'deceased' WHERE id = 'ent_edward-teller';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_eleanor-roosevelt_1962', 'ent_eleanor-roosevelt', '1962-11-07', 1962, 'death', 'biography',
   'Eleanor Roosevelt died on 1962-11-07', 'Eleanor Roosevelt died on 1962-11-07 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q83396', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 78, living_status = 'deceased' WHERE id = 'ent_eleanor-roosevelt';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_eli-whitney_1825', 'ent_eli-whitney', '1825-01-08', 1825, 'death', 'biography',
   'Eli Whitney died on 1825-01-08', 'Eli Whitney died on 1825-01-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q280930', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 60, living_status = 'deceased' WHERE id = 'ent_eli-whitney';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_elia-kazan_2003', 'ent_elia-kazan', '2003-09-28', 2003, 'death', 'biography',
   'Elia Kazan died on 2003-09-28', 'Elia Kazan died on 2003-09-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q72717', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 118, living_status = 'deceased' WHERE id = 'ent_elia-kazan';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_elia-kazan_ent_usa', 'ent_elia-kazan', 'ent_usa', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_elijah-muhammad_1975', 'ent_elijah-muhammad', '1975-02-25', 1975, 'death', 'biography',
   'Elijah Muhammad died on 1975-02-25', 'Elijah Muhammad died on 1975-02-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q345182', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 58, living_status = 'deceased' WHERE id = 'ent_elijah-muhammad';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_eliza-johnson_1876', 'ent_eliza-johnson', '1876-01-15', 1876, 'death', 'biography',
   'Eliza McCardle Johnson died on 1876-01-15', 'Eliza McCardle Johnson died on 1876-01-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q234295', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 66, living_status = 'deceased' WHERE id = 'ent_eliza-johnson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_elizabeth-bishop_1979', 'ent_elizabeth-bishop', '1979-10-06', 1979, 'death', 'biography',
   'Elizabeth Bishop died on 1979-10-06', 'Elizabeth Bishop died on 1979-10-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q235946', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 111, living_status = 'deceased' WHERE id = 'ent_elizabeth-bishop';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_elizabeth-blackwell_1910', 'ent_elizabeth-blackwell', '1910-05-31', 1910, 'death', 'biography',
   'Elizabeth Blackwell died on 1910-05-31', 'Elizabeth Blackwell died on 1910-05-31 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q234572', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 89, living_status = 'deceased' WHERE id = 'ent_elizabeth-blackwell';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_elizabeth-cady-stanton_1902', 'ent_elizabeth-cady-stanton', '1902-10-26', 1902, 'death', 'biography',
   'Elizabeth Cady Stanton died on 1902-10-26', 'Elizabeth Cady Stanton died on 1902-10-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q465335', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 133, living_status = 'deceased' WHERE id = 'ent_elizabeth-cady-stanton';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_elizabeth-monroe_1830', 'ent_elizabeth-monroe', '1830-09-23', 1830, 'death', 'biography',
   'Elizabeth Monroe died on 1830-09-23', 'Elizabeth Monroe died on 1830-09-23 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q233628', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 80, living_status = 'deceased' WHERE id = 'ent_elizabeth-monroe';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_elizabeth-taylor_2011', 'ent_elizabeth-taylor', '2011-03-23', 2011, 'death', 'biography',
   'Elizabeth Taylor died on 2011-03-23', 'Elizabeth Taylor died on 2011-03-23 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q34851', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 79, living_status = 'deceased' WHERE id = 'ent_elizabeth-taylor';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ella-baker_1986', 'ent_ella-baker', '1986-12-13', 1986, 'death', 'biography',
   'Ella Baker died on 1986-12-13', 'Ella Baker died on 1986-12-13 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q468884', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 83, living_status = 'deceased' WHERE id = 'ent_ella-baker';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ella-fitzgerald_1996', 'ent_ella-fitzgerald', '1996-06-15', 1996, 'death', 'biography',
   'Ella Fitzgerald died on 1996-06-15', 'Ella Fitzgerald died on 1996-06-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1768', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 79, living_status = 'deceased' WHERE id = 'ent_ella-fitzgerald';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_elton-john_ent_usa', 'ent_elton-john', 'ent_usa', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_emily-dickinson_1886', 'ent_emily-dickinson', '1886-05-15', 1886, 'death', 'biography',
   'Emily Dickinson died on 1886-05-15', 'Emily Dickinson died on 1886-05-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q4441', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 58, living_status = 'deceased' WHERE id = 'ent_emily-dickinson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_enrico-fermi_1954', 'ent_enrico-fermi', '1954-11-28', 1954, 'death', 'biography',
   'Enrico Fermi died on 1954-11-28', 'Enrico Fermi died on 1954-11-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q8753', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 53, living_status = 'deceased' WHERE id = 'ent_enrico-fermi';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_res_ent_enrico-fermi_ent_usa', 'ent_enrico-fermi', 'ent_usa', 'residence', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ernest-hemingway_1961', 'ent_ernest-hemingway', '1961-07-02', 1961, 'death', 'biography',
   'Ernest Hemingway died on 1961-07-02', 'Ernest Hemingway died on 1961-07-02 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q23434', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 62, living_status = 'deceased' WHERE id = 'ent_ernest-hemingway';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ethan-allen_1789', 'ent_ethan-allen', '1789-02-12', 1789, 'death', 'biography',
   'Ethan Allen died on 1789-02-12', 'Ethan Allen died on 1789-02-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q552007', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 52, living_status = 'deceased' WHERE id = 'ent_ethan-allen';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_eugene-cernan_2017', 'ent_eugene-cernan', '2017-01-16', 2017, 'death', 'biography',
   'Gene Cernan died on 2017-01-16', 'Gene Cernan died on 2017-01-16 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q158486', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 83, living_status = 'deceased' WHERE id = 'ent_eugene-cernan';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_f-scott-fitzgerald_1940', 'ent_f-scott-fitzgerald', '1940-12-21', 1940, 'death', 'biography',
   'F. Scott Fitzgerald died on 1940-12-21', 'F. Scott Fitzgerald died on 1940-12-21 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q93354', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 44, living_status = 'deceased' WHERE id = 'ent_f-scott-fitzgerald';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_fannie-lou-hamer_1977', 'ent_fannie-lou-hamer', '1977-03-14', 1977, 'death', 'biography',
   'Fannie Lou Hamer died on 1977-03-14', 'Fannie Lou Hamer died on 1977-03-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q438438', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 60, living_status = 'deceased' WHERE id = 'ent_fannie-lou-hamer';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_flannery-oconnor_1964', 'ent_flannery-oconnor', '1964-08-03', 1964, 'death', 'biography',
   'Flannery O''Connor died on 1964-08-03', 'Flannery O''Connor died on 1964-08-03 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q234579', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 39, living_status = 'deceased' WHERE id = 'ent_flannery-oconnor';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_florence-harding_1924', 'ent_florence-harding', '1924-11-21', 1924, 'death', 'biography',
   'Florence Harding died on 1924-11-21', 'Florence Harding died on 1924-11-21 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q233634', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 46, living_status = 'deceased' WHERE id = 'ent_florence-harding';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_frances-cleveland_1947', 'ent_frances-cleveland', '1947-10-29', 1947, 'death', 'biography',
   'Frances Cleveland died on 1947-10-29', 'Frances Cleveland died on 1947-10-29 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q233644', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 158, living_status = 'deceased' WHERE id = 'ent_frances-cleveland';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_francis-crick_2004', 'ent_francis-crick', '2004-07-28', 2004, 'death', 'biography',
   'Francis Crick died on 2004-07-28', 'Francis Crick died on 2004-07-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q123280', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 88, living_status = 'deceased' WHERE id = 'ent_francis-crick';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_francis-marion_1795', 'ent_francis-marion', '1795-02-27', 1795, 'death', 'biography',
   'Francis Marion died on 1795-02-27', 'Francis Marion died on 1795-02-27 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q960315', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 125, living_status = 'deceased' WHERE id = 'ent_francis-marion';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_frank-sinatra_1998', 'ent_frank-sinatra', '1998-05-14', 1998, 'death', 'biography',
   'Frank Sinatra died on 1998-05-14', 'Frank Sinatra died on 1998-05-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q40912', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 83, living_status = 'deceased' WHERE id = 'ent_frank-sinatra';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_frank-sinatra_ent_usa', 'ent_frank-sinatra', 'ent_usa', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_franklin-d-roosevelt_1945', 'ent_franklin-d-roosevelt', '1945-04-12', 1945, 'death', 'biography',
   'Franklin D. Roosevelt died on 1945-04-12', 'Franklin D. Roosevelt died on 1945-04-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q8007', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 42, living_status = 'deceased' WHERE id = 'ent_franklin-d-roosevelt';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_franklin-pierce_1869', 'ent_franklin-pierce', '1869-10-08', 1869, 'death', 'biography',
   'Franklin Pierce died on 1869-10-08', 'Franklin Pierce died on 1869-10-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q12312', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 235, living_status = 'deceased' WHERE id = 'ent_franklin-pierce';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_fred-vinson_1953', 'ent_fred-vinson', '1953-09-08', 1953, 'death', 'biography',
   'Fred M. Vinson died on 1953-09-08', 'Fred M. Vinson died on 1953-09-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q460151', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 29, living_status = 'deceased' WHERE id = 'ent_fred-vinson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_freddie-mercury_1991', 'ent_freddie-mercury', '1991-11-24', 1991, 'death', 'biography',
   'Freddie Mercury died on 1991-11-24', 'Freddie Mercury died on 1991-11-24 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q15869', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 27, living_status = 'deceased' WHERE id = 'ent_freddie-mercury';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_frederic-remington_1909', 'ent_frederic-remington', '1909-12-26', 1909, 'death', 'biography',
   'Frederic Remington died on 1909-12-26', 'Frederic Remington died on 1909-12-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q560787', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 97, living_status = 'deceased' WHERE id = 'ent_frederic-remington';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_frederick-douglass_1895', 'ent_frederick-douglass', '1895-02-20', 1895, 'death', 'biography',
   'Frederick Douglass died on 1895-02-20', 'Frederick Douglass died on 1895-02-20 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q215562', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 98, living_status = 'deceased' WHERE id = 'ent_frederick-douglass';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_garret-hobart_1899', 'ent_garret-hobart', '1899-11-21', 1899, 'death', 'biography',
   'Garret Hobart died on 1899-11-21', 'Garret Hobart died on 1899-11-21 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q310841', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 36, living_status = 'deceased' WHERE id = 'ent_garret-hobart';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_res_ent_george-clooney_plc_augusta', 'ent_george-clooney', 'plc_augusta', 'residence', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_george-eastman_1932', 'ent_george-eastman', '1932-03-14', 1932, 'death', 'biography',
   'George Eastman died on 1932-03-14', 'George Eastman died on 1932-03-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q189147', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 78, living_status = 'deceased' WHERE id = 'ent_george-eastman';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_george-gershwin_1937', 'ent_george-gershwin', '1937-07-11', 1937, 'death', 'biography',
   'George Gershwin died on 1937-07-11', 'George Gershwin died on 1937-07-11 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q123829', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 47, living_status = 'deceased' WHERE id = 'ent_george-gershwin';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_george-h-w-bush_2018', 'ent_george-h-w-bush', '2018-11-30', 2018, 'death', 'biography',
   'George H. W. Bush died on 2018-11-30', 'George H. W. Bush died on 2018-11-30 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q23505', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 94, living_status = 'deceased' WHERE id = 'ent_george-h-w-bush';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_george-jones_2013', 'ent_george-jones', '2013-04-26', 2013, 'death', 'biography',
   'George Jones died on 2013-04-26', 'George Jones died on 2013-04-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q508202', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 63, living_status = 'deceased' WHERE id = 'ent_george-jones';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_george-mcclellan_1885', 'ent_george-mcclellan', '1885-10-29', 1885, 'death', 'biography',
   'George B. McClellan died on 1885-10-29', 'George B. McClellan died on 1885-10-29 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q310192', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 59, living_status = 'deceased' WHERE id = 'ent_george-mcclellan';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_george-pickett_1875', 'ent_george-pickett', '1875-07-30', 1875, 'death', 'biography',
   'George Pickett died on 1875-07-30', 'George Pickett died on 1875-07-30 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q454069', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 50, living_status = 'deceased' WHERE id = 'ent_george-pickett';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_george-s-patton_1945', 'ent_george-s-patton', '1945-12-21', 1945, 'death', 'biography',
   'George S. Patton died on 1945-12-21', 'George S. Patton died on 1945-12-21 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q186492', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 60, living_status = 'deceased' WHERE id = 'ent_george-s-patton';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_george-shultz_2021', 'ent_george-shultz', '2021-02-06', 2021, 'death', 'biography',
   'George Shultz died on 2021-02-06', 'George Shultz died on 2021-02-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q313411', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 106, living_status = 'deceased' WHERE id = 'ent_george-shultz';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_george-w-bush_plc_austin', 'ent_george-w-bush', 'plc_austin', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_george-washington_1799', 'ent_george-washington', '1799-12-14', 1799, 'death', 'biography',
   'George Washington died on 1799-12-14', 'George Washington died on 1799-12-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q23', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 68, living_status = 'deceased' WHERE id = 'ent_george-washington';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_george-westinghouse_1914', 'ent_george-westinghouse', '1914-03-12', 1914, 'death', 'biography',
   'George Westinghouse died on 1914-03-12', 'George Westinghouse died on 1914-03-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q262367', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 68, living_status = 'deceased' WHERE id = 'ent_george-westinghouse';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_georgia-okeeffe_1986', 'ent_georgia-okeeffe', '1986-03-06', 1986, 'death', 'biography',
   'Georgia O''Keeffe died on 1986-03-06', 'Georgia O''Keeffe died on 1986-03-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q46408', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 68, living_status = 'deceased' WHERE id = 'ent_georgia-okeeffe';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_georgia-okeeffe_plc_austin', 'ent_georgia-okeeffe', 'plc_austin', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_gerald-ford_2006', 'ent_gerald-ford', '2006-12-26', 2006, 'death', 'biography',
   'Gerald Ford died on 2006-12-26', 'Gerald Ford died on 2006-12-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q9582', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 93, living_status = 'deceased' WHERE id = 'ent_gerald-ford';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_geronimo_1909', 'ent_geronimo', '1909-02-17', 1909, 'death', 'biography',
   'Geronimo died on 1909-02-17', 'Geronimo died on 1909-02-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2791', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 80, living_status = 'deceased' WHERE id = 'ent_geronimo';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_glenn-frey_2016', 'ent_glenn-frey', '2016-01-18', 2016, 'death', 'biography',
   'Glenn Frey died on 2016-01-18', 'Glenn Frey died on 2016-01-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q472051', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 68, living_status = 'deceased' WHERE id = 'ent_glenn-frey';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_grace-coolidge_1957', 'ent_grace-coolidge', '1957-07-08', 1957, 'death', 'biography',
   'Grace Coolidge died on 1957-07-08', 'Grace Coolidge died on 1957-07-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q234287', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 168, living_status = 'deceased' WHERE id = 'ent_grace-coolidge';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_grace-hopper_1992', 'ent_grace-hopper', '1992-01-01', 1992, 'death', 'biography',
   'Grace Hopper died on 1992-01-01', 'Grace Hopper died on 1992-01-01 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q11641', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 86, living_status = 'deceased' WHERE id = 'ent_grace-hopper';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_grace-kelly_1982', 'ent_grace-kelly', '1982-09-14', 1982, 'death', 'biography',
   'Grace Kelly died on 1982-09-14', 'Grace Kelly died on 1982-09-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q3925', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 42, living_status = 'deceased' WHERE id = 'ent_grace-kelly';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_grover-cleveland_1908', 'ent_grover-cleveland', '1908-06-24', 1908, 'death', 'biography',
   'Grover Cleveland died on 1908-06-24', 'Grover Cleveland died on 1908-06-24 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q35171', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 71, living_status = 'deceased' WHERE id = 'ent_grover-cleveland';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_res_ent_guido-van-rossum_ent_usa', 'ent_guido-van-rossum', 'ent_usa', 'residence', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_hank-aaron_2021', 'ent_hank-aaron', '2021-01-22', 2021, 'death', 'biography',
   'Hank Aaron died on 2021-01-22', 'Hank Aaron died on 2021-01-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q215777', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 87, living_status = 'deceased' WHERE id = 'ent_hank-aaron';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_hannibal-hamlin_1891', 'ent_hannibal-hamlin', '1891-07-04', 1891, 'death', 'biography',
   'Hannibal Hamlin died on 1891-07-04', 'Hannibal Hamlin died on 1891-07-04 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q273546', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 252, living_status = 'deceased' WHERE id = 'ent_hannibal-hamlin';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_harlan-fiske-stone_1946', 'ent_harlan-fiske-stone', '1946-04-22', 1946, 'death', 'biography',
   'Harlan F. Stone died on 1946-04-22', 'Harlan F. Stone died on 1946-04-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q942386', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 22, living_status = 'deceased' WHERE id = 'ent_harlan-fiske-stone';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_harold-lloyd_1971', 'ent_harold-lloyd', '1971-03-08', 1971, 'death', 'biography',
   'Harold Lloyd died on 1971-03-08', 'Harold Lloyd died on 1971-03-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q104340', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 78, living_status = 'deceased' WHERE id = 'ent_harold-lloyd';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_harper-lee_2016', 'ent_harper-lee', '2016-02-19', 2016, 'death', 'biography',
   'Harper Lee died on 2016-02-19', 'Harper Lee died on 2016-02-19 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q182658', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 90, living_status = 'deceased' WHERE id = 'ent_harper-lee';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_harriet-tubman_1913', 'ent_harriet-tubman', '1913-03-10', 1913, 'death', 'biography',
   'Harriet Tubman died on 1913-03-10', 'Harriet Tubman died on 1913-03-10 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q102870', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 91, living_status = 'deceased' WHERE id = 'ent_harriet-tubman';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_res_ent_harriet-tubman_ent_usa', 'ent_harriet-tubman', 'ent_usa', 'residence', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_harry-s-truman_1972', 'ent_harry-s-truman', '1972-12-26', 1972, 'death', 'biography',
   'Harry S. Truman died on 1972-12-26', 'Harry S. Truman died on 1972-12-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q11613', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 88, living_status = 'deceased' WHERE id = 'ent_harry-s-truman';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_hart-crane_1932', 'ent_hart-crane', '1932-04-27', 1932, 'death', 'biography',
   'Hart Crane died on 1932-04-27', 'Hart Crane died on 1932-04-27 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q380723', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 38, living_status = 'deceased' WHERE id = 'ent_hart-crane';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_haym-salomon_1785', 'ent_haym-salomon', '1785-01-06', 1785, 'death', 'biography',
   'Haym Salomon died on 1785-01-06', 'Haym Salomon died on 1785-01-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q607007', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 45, living_status = 'deceased' WHERE id = 'ent_haym-salomon';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_helen-frankenthaler_2011', 'ent_helen-frankenthaler', '2011-12-27', 2011, 'death', 'biography',
   'Helen Frankenthaler died on 2011-12-27', 'Helen Frankenthaler died on 2011-12-27 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q235281', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 102, living_status = 'deceased' WHERE id = 'ent_helen-frankenthaler';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_helen-taft_1943', 'ent_helen-taft', '1943-05-22', 1943, 'death', 'biography',
   'Helen Herron Taft died on 1943-05-22', 'Helen Herron Taft died on 1943-05-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q255115', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 82, living_status = 'deceased' WHERE id = 'ent_helen-taft';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_henry-a-wallace_1965', 'ent_henry-a-wallace', '1965-11-18', 1965, 'death', 'biography',
   'Henry A. Wallace died on 1965-11-18', 'Henry A. Wallace died on 1965-11-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q251666', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 77, living_status = 'deceased' WHERE id = 'ent_henry-a-wallace';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_henry-david-thoreau_1862', 'ent_henry-david-thoreau', '1862-05-06', 1862, 'death', 'biography',
   'Henry David Thoreau died on 1862-05-06', 'Henry David Thoreau died on 1862-05-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q131149', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 96, living_status = 'deceased' WHERE id = 'ent_henry-david-thoreau';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_henry-ford_1947', 'ent_henry-ford', '1947-04-07', 1947, 'death', 'biography',
   'Henry Ford died on 1947-04-07', 'Henry Ford died on 1947-04-07 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q8768', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 84, living_status = 'deceased' WHERE id = 'ent_henry-ford';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_henry-kissinger_2023', 'ent_henry-kissinger', '2023-11-29', 2023, 'death', 'biography',
   'Henry Kissinger died on 2023-11-29', 'Henry Kissinger died on 2023-11-29 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q66107', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 206, living_status = 'deceased' WHERE id = 'ent_henry-kissinger';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_henry-knox_1806', 'ent_henry-knox', '1806-10-25', 1806, 'death', 'biography',
   'Henry Knox died on 1806-10-25', 'Henry Knox died on 1806-10-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q355680', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 56, living_status = 'deceased' WHERE id = 'ent_henry-knox';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_henry-wadsworth-longfellow_1882', 'ent_henry-wadsworth-longfellow', '1882-03-24', 1882, 'death', 'biography',
   'Henry Wadsworth Longfellow died on 1882-03-24', 'Henry Wadsworth Longfellow died on 1882-03-24 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q152513', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 107, living_status = 'deceased' WHERE id = 'ent_henry-wadsworth-longfellow';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_henry-wilson_1875', 'ent_henry-wilson', '1875-11-22', 1875, 'death', 'biography',
   'Henry Wilson died on 1875-11-22', 'Henry Wilson died on 1875-11-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q313302', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 70, living_status = 'deceased' WHERE id = 'ent_henry-wilson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_herbert-hoover_1964', 'ent_herbert-hoover', '1964-10-20', 1964, 'death', 'biography',
   'Herbert Hoover died on 1964-10-20', 'Herbert Hoover died on 1964-10-20 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q35236', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 69, living_status = 'deceased' WHERE id = 'ent_herbert-hoover';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_herman-melville_1891', 'ent_herman-melville', '1891-09-28', 1891, 'death', 'biography',
   'Herman Melville died on 1891-09-28', 'Herman Melville died on 1891-09-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q4985', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 94, living_status = 'deceased' WHERE id = 'ent_herman-melville';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_hubert-humphrey_1978', 'ent_hubert-humphrey', '1978-01-13', 1978, 'death', 'biography',
   'Hubert Humphrey died on 1978-01-13', 'Hubert Humphrey died on 1978-01-13 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q209989', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 67, living_status = 'deceased' WHERE id = 'ent_hubert-humphrey';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ida-b-wells_1931', 'ent_ida-b-wells', '1931-03-25', 1931, 'death', 'biography',
   'Ida B. Wells died on 1931-03-25', 'Ida B. Wells died on 1931-03-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q289428', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 69, living_status = 'deceased' WHERE id = 'ent_ida-b-wells';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ida-mckinley_1907', 'ent_ida-mckinley', '1907-05-26', 1907, 'death', 'biography',
   'Ida Saxton McKinley died on 1907-05-26', 'Ida Saxton McKinley died on 1907-05-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q238397', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 60, living_status = 'deceased' WHERE id = 'ent_ida-mckinley';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_irving-berlin_1989', 'ent_irving-berlin', '1989-09-22', 1989, 'death', 'biography',
   'Irving Berlin died on 1989-09-22', 'Irving Berlin died on 1989-09-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q128746', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 101, living_status = 'deceased' WHERE id = 'ent_irving-berlin';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_j-craig-venter_2026', 'ent_j-craig-venter', '2026-04-29', 2026, 'death', 'biography',
   'J. Craig Venter died on 2026-04-29', 'J. Craig Venter died on 2026-04-29 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q311003', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 80, living_status = 'deceased' WHERE id = 'ent_j-craig-venter';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_j-robert-oppenheimer_1967', 'ent_j-robert-oppenheimer', '1967-02-18', 1967, 'death', 'biography',
   'J. Robert Oppenheimer died on 1967-02-18', 'J. Robert Oppenheimer died on 1967-02-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q132537', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 63, living_status = 'deceased' WHERE id = 'ent_j-robert-oppenheimer';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_jeb-stuart_1864', 'ent_jeb-stuart', '1864-05-12', 1864, 'death', 'biography',
   'J. E. B. Stuart died on 1864-05-12', 'J. E. B. Stuart died on 1864-05-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q313583', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 31, living_status = 'deceased' WHERE id = 'ent_jeb-stuart';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_jp-morgan_1913', 'ent_jp-morgan', '1913-03-31', 1913, 'death', 'biography',
   'J. P. Morgan died on 1913-03-31', 'J. P. Morgan died on 1913-03-31 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q54168', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 76, living_status = 'deceased' WHERE id = 'ent_jp-morgan';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_jack-kerouac_1969', 'ent_jack-kerouac', '1969-10-21', 1969, 'death', 'biography',
   'Jack Kerouac died on 1969-10-21', 'Jack Kerouac died on 1969-10-21 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q160534', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 47, living_status = 'deceased' WHERE id = 'ent_jack-kerouac';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_jack-nicholson_ent_usa', 'ent_jack-nicholson', 'ent_usa', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_jackie-kennedy_1994', 'ent_jackie-kennedy', '1994-05-19', 1994, 'death', 'biography',
   'Jacqueline Kennedy Onassis died on 1994-05-19', 'Jacqueline Kennedy Onassis died on 1994-05-19 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q165421', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_jackie-kennedy';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_jackie-robinson_1972', 'ent_jackie-robinson', '1972-10-24', 1972, 'death', 'biography',
   'Jackie Robinson died on 1972-10-24', 'Jackie Robinson died on 1972-10-24 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q221048', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 88, living_status = 'deceased' WHERE id = 'ent_jackie-robinson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_jackson-pollock_1956', 'ent_jackson-pollock', '1956-08-11', 1956, 'death', 'biography',
   'Jackson Pollock died on 1956-08-11', 'Jackson Pollock died on 1956-08-11 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q37571', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 62, living_status = 'deceased' WHERE id = 'ent_jackson-pollock';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_james-a-garfield_1881', 'ent_james-a-garfield', '1881-09-19', 1881, 'death', 'biography',
   'James A. Garfield died on 1881-09-19', 'James A. Garfield died on 1881-09-19 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q34597', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 23, living_status = 'deceased' WHERE id = 'ent_james-a-garfield';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_james-baldwin_1987', 'ent_james-baldwin', '1987-12-01', 1987, 'death', 'biography',
   'James Baldwin died on 1987-12-01', 'James Baldwin died on 1987-12-01 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q273210', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 63, living_status = 'deceased' WHERE id = 'ent_james-baldwin';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_james-bevel_2008', 'ent_james-bevel', '2008-12-19', 2008, 'death', 'biography',
   'James Bevel died on 2008-12-19', 'James Bevel died on 2008-12-19 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1920456', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 114, living_status = 'deceased' WHERE id = 'ent_james-bevel';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_james-buchanan_1868', 'ent_james-buchanan', '1868-06-01', 1868, 'death', 'biography',
   'James Buchanan died on 1868-06-01', 'James Buchanan died on 1868-06-01 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q12325', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 77, living_status = 'deceased' WHERE id = 'ent_james-buchanan';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_james-dean_1955', 'ent_james-dean', '1955-09-30', 1955, 'death', 'biography',
   'James Dean died on 1955-09-30', 'James Dean died on 1955-09-30 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q83359', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 24, living_status = 'deceased' WHERE id = 'ent_james-dean';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_james-forten_1842', 'ent_james-forten', '1842-03-04', 1842, 'death', 'biography',
   'James Forten died on 1842-03-04', 'James Forten died on 1842-03-04 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2157605', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 76, living_status = 'deceased' WHERE id = 'ent_james-forten';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_james-k-polk_1849', 'ent_james-k-polk', '1849-06-15', 1849, 'death', 'biography',
   'James K. Polk died on 1849-06-15', 'James K. Polk died on 1849-06-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q11891', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 54, living_status = 'deceased' WHERE id = 'ent_james-k-polk';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_james-madison_1836', 'ent_james-madison', '1836-06-28', 1836, 'death', 'biography',
   'James Madison died on 1836-06-28', 'James Madison died on 1836-06-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q11813', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 86, living_status = 'deceased' WHERE id = 'ent_james-madison';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_james-mcneill-whistler_1903', 'ent_james-mcneill-whistler', '1903-07-17', 1903, 'death', 'biography',
   'James McNeill Whistler died on 1903-07-17', 'James McNeill Whistler died on 1903-07-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q203643', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 69, living_status = 'deceased' WHERE id = 'ent_james-mcneill-whistler';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_james-monroe_1831', 'ent_james-monroe', '1831-07-04', 1831, 'death', 'biography',
   'James Monroe died on 1831-07-04', 'James Monroe died on 1831-07-04 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q11815', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 181, living_status = 'deceased' WHERE id = 'ent_james-monroe';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_james-s-sherman_1912', 'ent_james-s-sherman', '1912-10-30', 1912, 'death', 'biography',
   'James S. Sherman died on 1912-10-30', 'James S. Sherman died on 1912-10-30 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q310831', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 25, living_status = 'deceased' WHERE id = 'ent_james-s-sherman';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_james-watson_2025', 'ent_james-watson', '2025-11-06', 2025, 'death', 'biography',
   'James Watson died on 2025-11-06', 'James Watson died on 2025-11-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q83333', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 97, living_status = 'deceased' WHERE id = 'ent_james-watson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_jane-pierce_1863', 'ent_jane-pierce', '1863-12-02', 1863, 'death', 'biography',
   'Jane Pierce died on 1863-12-02', 'Jane Pierce died on 1863-12-02 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q238371', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 74, living_status = 'deceased' WHERE id = 'ent_jane-pierce';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_jerry-falwell_2007', 'ent_jerry-falwell', '2007-05-15', 2007, 'death', 'biography',
   'Jerry Falwell died on 2007-05-15', 'Jerry Falwell died on 2007-05-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q313896', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 74, living_status = 'deceased' WHERE id = 'ent_jerry-falwell';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_jesse-jackson_2026', 'ent_jesse-jackson', '2026-02-17', 2026, 'death', 'biography',
   'Jesse Jackson died on 2026-02-17', 'Jesse Jackson died on 2026-02-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q310586', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 85, living_status = 'deceased' WHERE id = 'ent_jesse-jackson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_jesse-owens_1980', 'ent_jesse-owens', '1980-03-31', 1980, 'death', 'biography',
   'Jesse Owens died on 1980-03-31', 'Jesse Owens died on 1980-03-31 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q52651', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 70, living_status = 'deceased' WHERE id = 'ent_jesse-owens';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_jim-bridger_1881', 'ent_jim-bridger', '1881-07-17', 1881, 'death', 'biography',
   'Jim Bridger died on 1881-07-17', 'Jim Bridger died on 1881-07-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q713423', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 77, living_status = 'deceased' WHERE id = 'ent_jim-bridger';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_jim-brown_2023', 'ent_jim-brown', '2023-05-18', 2023, 'death', 'biography',
   'Jim Brown died on 2023-05-18', 'Jim Brown died on 2023-05-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q927916', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 87, living_status = 'deceased' WHERE id = 'ent_jim-brown';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_jim-brown_ent_usa', 'ent_jim-brown', 'ent_usa', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_jim-thorpe_1953', 'ent_jim-thorpe', '1953-03-28', 1953, 'death', 'biography',
   'Jim Thorpe died on 1953-03-28', 'Jim Thorpe died on 1953-03-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q221482', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 66, living_status = 'deceased' WHERE id = 'ent_jim-thorpe';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_jimmy-carter_2024', 'ent_jimmy-carter', '2024-12-29', 2024, 'death', 'biography',
   'Jimmy Carter died on 2024-12-29', 'Jimmy Carter died on 2024-12-29 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q23685', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 100, living_status = 'deceased' WHERE id = 'ent_jimmy-carter';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_joan-mitchell_1992', 'ent_joan-mitchell', '1992-10-30', 1992, 'death', 'biography',
   'Joan Mitchell died on 1992-10-30', 'Joan Mitchell died on 1992-10-30 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q469934', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 119, living_status = 'deceased' WHERE id = 'ent_joan-mitchell';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_jodie-foster_ent_usa', 'ent_jodie-foster', 'ent_usa', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_joe-dimaggio_1999', 'ent_joe-dimaggio', '1999-03-08', 1999, 'death', 'biography',
   'Joe DiMaggio died on 1999-03-08', 'Joe DiMaggio died on 1999-03-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q297142', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 87, living_status = 'deceased' WHERE id = 'ent_joe-dimaggio';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_joe-louis_1981', 'ent_joe-louis', '1981-04-12', 1981, 'death', 'biography',
   'Joe Louis died on 1981-04-12', 'Joe Louis died on 1981-04-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q273206', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 73, living_status = 'deceased' WHERE id = 'ent_joe-louis';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_res_ent_joe-rogan_plc_austin', 'ent_joe-rogan', 'plc_austin', 'residence', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-adams_1826', 'ent_john-adams', '1826-07-04', 1826, 'death', 'biography',
   'John Adams died on 1826-07-04', 'John Adams died on 1826-07-04 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q11806', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 188, living_status = 'deceased' WHERE id = 'ent_john-adams';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-c-breckinridge_1875', 'ent_john-c-breckinridge', '1875-05-17', 1875, 'death', 'biography',
   'John C. Breckinridge died on 1875-05-17', 'John C. Breckinridge died on 1875-05-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q273212', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 54, living_status = 'deceased' WHERE id = 'ent_john-c-breckinridge';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-c-frmont_1890', 'ent_john-c-frmont', '1890-07-13', 1890, 'death', 'biography',
   'John C. Frémont died on 1890-07-13', 'John C. Frémont died on 1890-07-13 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q169011', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 77, living_status = 'deceased' WHERE id = 'ent_john-c-frmont';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-coltrane_1967', 'ent_john-coltrane', '1967-07-17', 1967, 'death', 'biography',
   'John Coltrane died on 1967-07-17', 'John Coltrane died on 1967-07-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q7346', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 41, living_status = 'deceased' WHERE id = 'ent_john-coltrane';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-d-rockefeller_1937', 'ent_john-d-rockefeller', '1937-05-23', 1937, 'death', 'biography',
   'John D. Rockefeller died on 1937-05-23', 'John D. Rockefeller died on 1937-05-23 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q160278', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 98, living_status = 'deceased' WHERE id = 'ent_john-d-rockefeller';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-f-kennedy_1963', 'ent_john-f-kennedy', '1963-11-22', 1963, 'death', 'biography',
   'John F. Kennedy died on 1963-11-22', 'John F. Kennedy died on 1963-11-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q9696', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 46, living_status = 'deceased' WHERE id = 'ent_john-f-kennedy';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-ford_1973', 'ent_john-ford', '1973-08-31', 1973, 'death', 'biography',
   'John Ford died on 1973-08-31', 'John Ford died on 1973-08-31 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q51114', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 101, living_status = 'deceased' WHERE id = 'ent_john-ford';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-glenn_2016', 'ent_john-glenn', '2016-12-08', 2016, 'death', 'biography',
   'John Glenn died on 2016-12-08', 'John Glenn died on 2016-12-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q182642', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 95, living_status = 'deceased' WHERE id = 'ent_john-glenn';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-hancock_1793', 'ent_john-hancock', '1793-10-08', 1793, 'death', 'biography',
   'John Hancock died on 1793-10-08', 'John Hancock died on 1793-10-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q272774', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 113, living_status = 'deceased' WHERE id = 'ent_john-hancock';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-huston_1987', 'ent_john-huston', '1987-08-28', 1987, 'death', 'biography',
   'John Huston died on 1987-08-28', 'John Huston died on 1987-08-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q51575', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 81, living_status = 'deceased' WHERE id = 'ent_john-huston';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-jacob-astor_1848', 'ent_john-jacob-astor', '1848-03-29', 1848, 'death', 'biography',
   'John Jacob Astor died on 1848-03-29', 'John Jacob Astor died on 1848-03-29 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q57423', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 148, living_status = 'deceased' WHERE id = 'ent_john-jacob-astor';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-jay_1829', 'ent_john-jay', '1829-05-17', 1829, 'death', 'biography',
   'John Jay died on 1829-05-17', 'John Jay died on 1829-05-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q310847', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 144, living_status = 'deceased' WHERE id = 'ent_john-jay';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-lewis_2020', 'ent_john-lewis', '2020-07-17', 2020, 'death', 'biography',
   'John Lewis died on 2020-07-17', 'John Lewis died on 2020-07-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q45380', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 175, living_status = 'deceased' WHERE id = 'ent_john-lewis';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-marshall_1835', 'ent_john-marshall', '1835-07-06', 1835, 'death', 'biography',
   'John Marshall died on 1835-07-06', 'John Marshall died on 1835-07-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q310829', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 50, living_status = 'deceased' WHERE id = 'ent_john-marshall';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-quincy-adams_1848', 'ent_john-quincy-adams', '1848-02-23', 1848, 'death', 'biography',
   'John Quincy Adams died on 1848-02-23', 'John Quincy Adams died on 1848-02-23 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q11816', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 81, living_status = 'deceased' WHERE id = 'ent_john-quincy-adams';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-singer-sargent_1925', 'ent_john-singer-sargent', '1925-04-15', 1925, 'death', 'biography',
   'John Singer Sargent died on 1925-04-15', 'John Singer Sargent died on 1925-04-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q155626', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 69, living_status = 'deceased' WHERE id = 'ent_john-singer-sargent';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-steinbeck_1968', 'ent_john-steinbeck', '1968-12-20', 1968, 'death', 'biography',
   'John Steinbeck died on 1968-12-20', 'John Steinbeck died on 1968-12-20 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q39212', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 106, living_status = 'deceased' WHERE id = 'ent_john-steinbeck';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-tyler_1862', 'ent_john-tyler', '1862-01-18', 1862, 'death', 'biography',
   'John Tyler died on 1862-01-18', 'John Tyler died on 1862-01-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q11881', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 86, living_status = 'deceased' WHERE id = 'ent_john-tyler';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-updike_2009', 'ent_john-updike', '2009-01-27', 2009, 'death', 'biography',
   'John Updike died on 2009-01-27', 'John Updike died on 2009-01-27 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q105756', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 77, living_status = 'deceased' WHERE id = 'ent_john-updike';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-wesley-powell_1902', 'ent_john-wesley-powell', '1902-09-23', 1902, 'death', 'biography',
   'John Wesley Powell died on 1902-09-23', 'John Wesley Powell died on 1902-09-23 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q348325', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 71, living_status = 'deceased' WHERE id = 'ent_john-wesley-powell';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_john-wilkes-booth_1865', 'ent_john-wilkes-booth', '1865-04-26', 1865, 'death', 'biography',
   'John Wilkes Booth died on 1865-04-26', 'John Wilkes Booth died on 1865-04-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q180914', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 27, living_status = 'deceased' WHERE id = 'ent_john-wilkes-booth';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_jonas-salk_1995', 'ent_jonas-salk', '1995-06-23', 1995, 'death', 'biography',
   'Jonas Salk died on 1995-06-23', 'Jonas Salk died on 1995-06-23 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q200101', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 81, living_status = 'deceased' WHERE id = 'ent_jonas-salk';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_res_ent_jonas-salk_ent_usa', 'ent_jonas-salk', 'ent_usa', 'residence', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_josephine-baker_1975', 'ent_josephine-baker', '1975-04-12', 1975, 'death', 'biography',
   'Josephine Baker died on 1975-04-12', 'Josephine Baker died on 1975-04-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q151972', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 69, living_status = 'deceased' WHERE id = 'ent_josephine-baker';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_juice-wrld_2019', 'ent_juice-wrld', '2019-12-08', 2019, 'death', 'biography',
   'Juice Wrld died on 2019-12-08', 'Juice Wrld died on 2019-12-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q52151598', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 27, living_status = 'deceased' WHERE id = 'ent_juice-wrld';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_julia-grant_1902', 'ent_julia-grant', '1902-12-14', 1902, 'death', 'biography',
   'Julia Grant died on 1902-12-14', 'Julia Grant died on 1902-12-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q233641', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 76, living_status = 'deceased' WHERE id = 'ent_julia-grant';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_julia-tyler_1889', 'ent_julia-tyler', '1889-07-10', 1889, 'death', 'biography',
   'Julia Gardiner Tyler died on 1889-07-10', 'Julia Gardiner Tyler died on 1889-07-10 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q234525', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 69, living_status = 'deceased' WHERE id = 'ent_julia-tyler';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_kacey-musgraves_plc_golden', 'ent_kacey-musgraves', 'plc_golden', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_katharine-hepburn_2003', 'ent_katharine-hepburn', '2003-06-29', 2003, 'death', 'biography',
   'Katharine Hepburn died on 2003-06-29', 'Katharine Hepburn died on 2003-06-29 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q56016', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 124, living_status = 'deceased' WHERE id = 'ent_katharine-hepburn';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_katharine-hepburn_ent_usa', 'ent_katharine-hepburn', 'ent_usa', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_kit-carson_1868', 'ent_kit-carson', '1868-05-23', 1868, 'death', 'biography',
   'Kit Carson died on 1868-05-23', 'Kit Carson died on 1868-05-23 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q379673', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 59, living_status = 'deceased' WHERE id = 'ent_kit-carson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_kobe-bryant_2020', 'ent_kobe-bryant', '2020-01-26', 2020, 'death', 'biography',
   'Kobe Bryant died on 2020-01-26', 'Kobe Bryant died on 2020-01-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q25369', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 42, living_status = 'deceased' WHERE id = 'ent_kobe-bryant';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_kurt-cobain_1994', 'ent_kurt-cobain', '1994-04-05', 1994, 'death', 'biography',
   'Kurt Cobain died on 1994-04-05', 'Kurt Cobain died on 1994-04-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q8446', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 119, living_status = 'deceased' WHERE id = 'ent_kurt-cobain';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_langston-hughes_1967', 'ent_langston-hughes', '1967-05-22', 1967, 'death', 'biography',
   'Langston Hughes died on 1967-05-22', 'Langston Hughes died on 1967-05-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q188093', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 108, living_status = 'deceased' WHERE id = 'ent_langston-hughes';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_res_ent_larry-bird_plc_indiana-state', 'ent_larry-bird', 'plc_indiana-state', 'residence', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_larry-doby_2003', 'ent_larry-doby', '2003-06-18', 2003, 'death', 'biography',
   'Larry Doby died on 2003-06-18', 'Larry Doby died on 2003-06-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q711825', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 80, living_status = 'deceased' WHERE id = 'ent_larry-doby';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_lee-krasner_1984', 'ent_lee-krasner', '1984-06-19', 1984, 'death', 'biography',
   'Lee Krasner died on 1984-06-19', 'Lee Krasner died on 1984-06-19 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q237959', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 56, living_status = 'deceased' WHERE id = 'ent_lee-krasner';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_leonard-bernstein_1990', 'ent_leonard-bernstein', '1990-10-14', 1990, 'death', 'biography',
   'Leonard Bernstein died on 1990-10-14', 'Leonard Bernstein died on 1990-10-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q152505', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 72, living_status = 'deceased' WHERE id = 'ent_leonard-bernstein';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_letitia-tyler_1842', 'ent_letitia-tyler', '1842-09-10', 1842, 'death', 'biography',
   'Letitia Christian Tyler died on 1842-09-10', 'Letitia Christian Tyler died on 1842-09-10 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q24790', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 52, living_status = 'deceased' WHERE id = 'ent_letitia-tyler';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_levi-p-morton_1920', 'ent_levi-p-morton', '1920-05-16', 1920, 'death', 'biography',
   'Levi P. Morton died on 1920-05-16', 'Levi P. Morton died on 1920-05-16 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q298997', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 96, living_status = 'deceased' WHERE id = 'ent_levi-p-morton';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_res_ent_lex-fridman_plc_austin', 'ent_lex-fridman', 'plc_austin', 'residence', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_linus-pauling_1994', 'ent_linus-pauling', '1994-08-19', 1994, 'death', 'biography',
   'Linus Pauling died on 1994-08-19', 'Linus Pauling died on 1994-08-19 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q48983', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 93, living_status = 'deceased' WHERE id = 'ent_linus-pauling';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_lola-montez_1861', 'ent_lola-montez', '1861-01-17', 1861, 'death', 'biography',
   'Lola Montez died on 1861-01-17', 'Lola Montez died on 1861-01-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q161154', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 40, living_status = 'deceased' WHERE id = 'ent_lola-montez';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_loretta-lynn_2022', 'ent_loretta-lynn', '2022-10-04', 2022, 'death', 'biography',
   'Loretta Lynn died on 2022-10-04', 'Loretta Lynn died on 2022-10-04 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q272931', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 90, living_status = 'deceased' WHERE id = 'ent_loretta-lynn';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_lou-brock_2020', 'ent_lou-brock', '2020-09-06', 2020, 'death', 'biography',
   'Lou Brock died on 2020-09-06', 'Lou Brock died on 2020-09-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q3260115', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 81, living_status = 'deceased' WHERE id = 'ent_lou-brock';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_lou-gehrig_1941', 'ent_lou-gehrig', '1941-06-02', 1941, 'death', 'biography',
   'Lou Gehrig died on 1941-06-02', 'Lou Gehrig died on 1941-06-02 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q357444', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 42, living_status = 'deceased' WHERE id = 'ent_lou-gehrig';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_lou-hoover_1944', 'ent_lou-hoover', '1944-01-07', 1944, 'death', 'biography',
   'Lou Henry Hoover died on 1944-01-07', 'Lou Henry Hoover died on 1944-01-07 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q233669', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 70, living_status = 'deceased' WHERE id = 'ent_lou-hoover';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_albert-einstein_1955', 'ent_albert-einstein', '1955-04-18', 1955, 'death', 'biography',
   'Albert Einstein died on 1955-04-18', 'Albert Einstein died on 1955-04-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q937', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 61, living_status = 'deceased' WHERE id = 'ent_albert-einstein';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_res_ent_michael-dell_plc_austin', 'ent_michael-dell', 'plc_austin', 'residence', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_toni-morrison_2019', 'ent_toni-morrison', '2019-08-05', 2019, 'death', 'biography',
   'Toni Morrison died on 2019-08-05', 'Toni Morrison died on 2019-08-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q72334', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 154, living_status = 'deceased' WHERE id = 'ent_toni-morrison';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_res_ent_toni-morrison_plc_syracuse', 'ent_toni-morrison', 'plc_syracuse', 'residence', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_theodore-roosevelt_1919', 'ent_theodore-roosevelt', '1919-01-06', 1919, 'death', 'biography',
   'Theodore Roosevelt died on 1919-01-06', 'Theodore Roosevelt died on 1919-01-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q33866', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 50, living_status = 'deceased' WHERE id = 'ent_theodore-roosevelt';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_abraham-lincoln_1865', 'ent_abraham-lincoln', '1865-04-15', 1865, 'death', 'biography',
   'Abraham Lincoln died on 1865-04-15', 'Abraham Lincoln died on 1865-04-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q91', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 23, living_status = 'deceased' WHERE id = 'ent_abraham-lincoln';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_alexander-graham-bell_1922', 'ent_alexander-graham-bell', '1922-08-02', 1922, 'death', 'biography',
   'Alexander Graham Bell died on 1922-08-02', 'Alexander Graham Bell died on 1922-08-02 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q34286', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 75, living_status = 'deceased' WHERE id = 'ent_alexander-graham-bell';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_amelia-earhart_1939', 'ent_amelia-earhart', '1939-01-05', 1939, 'death', 'biography',
   'Amelia Earhart died on 1939-01-05', 'Amelia Earhart died on 1939-01-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q3355', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 42, living_status = 'deceased' WHERE id = 'ent_amelia-earhart';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_chester-nimitz_1966', 'ent_chester-nimitz', '1966-02-20', 1966, 'death', 'biography',
   'Chester W. Nimitz died on 1966-02-20', 'Chester W. Nimitz died on 1966-02-20 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q217645', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_chester-nimitz';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_dr-seuss_1991', 'ent_dr-seuss', '1991-09-24', 1991, 'death', 'biography',
   'Dr. Seuss died on 1991-09-24', 'Dr. Seuss died on 1991-09-24 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q298685', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 64, living_status = 'deceased' WHERE id = 'ent_dr-seuss';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_edwin-hubble_1953', 'ent_edwin-hubble', '1953-09-28', 1953, 'death', 'biography',
   'Edwin Hubble died on 1953-09-28', 'Edwin Hubble died on 1953-09-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q43027', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 198, living_status = 'deceased' WHERE id = 'ent_edwin-hubble';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_helen-keller_1968', 'ent_helen-keller', '1968-06-01', 1968, 'death', 'biography',
   'Helen Keller died on 1968-06-01', 'Helen Keller died on 1968-06-01 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q38203', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 88, living_status = 'deceased' WHERE id = 'ent_helen-keller';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_jane-addams_1935', 'ent_jane-addams', '1935-06-21', 1935, 'death', 'biography',
   'Jane Addams died on 1935-06-21', 'Jane Addams died on 1935-06-21 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q180989', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 79, living_status = 'deceased' WHERE id = 'ent_jane-addams';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_johnny-carson_2005', 'ent_johnny-carson', '2005-01-23', 2005, 'death', 'biography',
   'Johnny Carson died on 2005-01-23', 'Johnny Carson died on 2005-01-23 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q310819', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 80, living_status = 'deceased' WHERE id = 'ent_johnny-carson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_leslie-groves_1970', 'ent_leslie-groves', '1970-07-13', 1970, 'death', 'biography',
   'Leslie Groves died on 1970-07-13', 'Leslie Groves died on 1970-07-13 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q314675', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 74, living_status = 'deceased' WHERE id = 'ent_leslie-groves';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_res_ent_lisa-su_plc_austin', 'ent_lisa-su', 'plc_austin', 'residence', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_lyndon-b-johnson_1973', 'ent_lyndon-b-johnson', '1973-01-22', 1973, 'death', 'biography',
   'Lyndon B. Johnson died on 1973-01-22', 'Lyndon B. Johnson died on 1973-01-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q9640', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 39, living_status = 'deceased' WHERE id = 'ent_lyndon-b-johnson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_mark-twain_1910', 'ent_mark-twain', '1910-04-21', 1910, 'death', 'biography',
   'Mark Twain died on 1910-04-21', 'Mark Twain died on 1910-04-21 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q7245', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 107, living_status = 'deceased' WHERE id = 'ent_mark-twain';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_martin-van-buren_1862', 'ent_martin-van-buren', '1862-07-24', 1862, 'death', 'biography',
   'Martin Van Buren died on 1862-07-24', 'Martin Van Buren died on 1862-07-24 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q11820', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 86, living_status = 'deceased' WHERE id = 'ent_martin-van-buren';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_mary-baker-eddy_1910', 'ent_mary-baker-eddy', '1910-12-03', 1910, 'death', 'biography',
   'Mary Baker Eddy died on 1910-12-03', 'Mary Baker Eddy died on 1910-12-03 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q235069', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 102, living_status = 'deceased' WHERE id = 'ent_mary-baker-eddy';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_millard-fillmore_1874', 'ent_millard-fillmore', '1874-03-08', 1874, 'death', 'biography',
   'Millard Fillmore died on 1874-03-08', 'Millard Fillmore died on 1874-03-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q12306', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 62, living_status = 'deceased' WHERE id = 'ent_millard-fillmore';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_muhammad-ali_2016', 'ent_muhammad-ali', '2016-06-03', 2016, 'death', 'biography',
   'Muhammad Ali died on 2016-06-03', 'Muhammad Ali died on 2016-06-03 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q36107', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 74, living_status = 'deceased' WHERE id = 'ent_muhammad-ali';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_neil-armstrong_2012', 'ent_neil-armstrong', '2012-08-25', 2012, 'death', 'biography',
   'Neil Armstrong died on 2012-08-25', 'Neil Armstrong died on 2012-08-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1615', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 75, living_status = 'deceased' WHERE id = 'ent_neil-armstrong';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_norman-borlaug_2009', 'ent_norman-borlaug', '2009-09-12', 2009, 'death', 'biography',
   'Norman Borlaug died on 2009-09-12', 'Norman Borlaug died on 2009-09-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q154824', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 95, living_status = 'deceased' WHERE id = 'ent_norman-borlaug';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_otis-redding_1967', 'ent_otis-redding', '1967-12-10', 1967, 'death', 'biography',
   'Otis Redding died on 1967-12-10', 'Otis Redding died on 1967-12-10 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q217839', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 267, living_status = 'deceased' WHERE id = 'ent_otis-redding';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_richard-feynman_1988', 'ent_richard-feynman', '1988-02-15', 1988, 'death', 'biography',
   'Richard Feynman died on 1988-02-15', 'Richard Feynman died on 1988-02-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q39246', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 70, living_status = 'deceased' WHERE id = 'ent_richard-feynman';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_richard-nixon_1994', 'ent_richard-nixon', '1994-04-22', 1994, 'death', 'biography',
   'Richard Nixon died on 1994-04-22', 'Richard Nixon died on 1994-04-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q9588', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 78, living_status = 'deceased' WHERE id = 'ent_richard-nixon';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_robert-e-lee_1870', 'ent_robert-e-lee', '1870-10-12', 1870, 'death', 'biography',
   'Robert E. Lee died on 1870-10-12', 'Robert E. Lee died on 1870-10-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q165557', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 39, living_status = 'deceased' WHERE id = 'ent_robert-e-lee';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_robert-f-kennedy_1968', 'ent_robert-f-kennedy', '1968-06-06', 1968, 'death', 'biography',
   'Robert F. Kennedy died on 1968-06-06', 'Robert F. Kennedy died on 1968-06-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q25310', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 18, living_status = 'deceased' WHERE id = 'ent_robert-f-kennedy';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ronald-reagan_2004', 'ent_ronald-reagan', '2004-06-05', 2004, 'death', 'biography',
   'Ronald Reagan died on 2004-06-05', 'Ronald Reagan died on 2004-06-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q9960', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 84, living_status = 'deceased' WHERE id = 'ent_ronald-reagan';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_sally-ride_2012', 'ent_sally-ride', '2012-07-23', 2012, 'death', 'biography',
   'Sally Ride died on 2012-07-23', 'Sally Ride died on 2012-07-23 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q49285', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 52, living_status = 'deceased' WHERE id = 'ent_sally-ride';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_samuel-morse_1872', 'ent_samuel-morse', '1872-04-02', 1872, 'death', 'biography',
   'Samuel Morse died on 1872-04-02', 'Samuel Morse died on 1872-04-02 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q75698', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 237, living_status = 'deceased' WHERE id = 'ent_samuel-morse';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_saul-bellow_2005', 'ent_saul-bellow', '2005-04-05', 2005, 'death', 'biography',
   'Saul Bellow died on 2005-04-05', 'Saul Bellow died on 2005-04-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q83059', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 64, living_status = 'deceased' WHERE id = 'ent_saul-bellow';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_shirley-temple_2014', 'ent_shirley-temple', '2014-02-10', 2014, 'death', 'biography',
   'Shirley Temple died on 2014-02-10', 'Shirley Temple died on 2014-02-10 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q182580', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 83, living_status = 'deceased' WHERE id = 'ent_shirley-temple';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_shirley-temple_ent_usa', 'ent_shirley-temple', 'ent_usa', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_stanley-kubrick_1999', 'ent_stanley-kubrick', '1999-03-07', 1999, 'death', 'biography',
   'Stanley Kubrick died on 1999-03-07', 'Stanley Kubrick died on 1999-03-07 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2001', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 71, living_status = 'deceased' WHERE id = 'ent_stanley-kubrick';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_steve-jobs_2011', 'ent_steve-jobs', '2011-10-05', 2011, 'death', 'biography',
   'Steve Jobs died on 2011-10-05', 'Steve Jobs died on 2011-10-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q19837', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 65, living_status = 'deceased' WHERE id = 'ent_steve-jobs';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_stonewall-jackson_1863', 'ent_stonewall-jackson', '1863-05-10', 1863, 'death', 'biography',
   'Stonewall Jackson died on 1863-05-10', 'Stonewall Jackson died on 1863-05-10 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q216124', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 114, living_status = 'deceased' WHERE id = 'ent_stonewall-jackson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_sylvia-plath_1963', 'ent_sylvia-plath', '1963-02-11', 1963, 'death', 'biography',
   'Sylvia Plath died on 1963-02-11', 'Sylvia Plath died on 1963-02-11 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q133054', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 56, living_status = 'deceased' WHERE id = 'ent_sylvia-plath';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_thomas-edison_1931', 'ent_thomas-edison', '1931-10-18', 1931, 'death', 'biography',
   'Thomas Edison died on 1931-10-18', 'Thomas Edison died on 1931-10-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q8743', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 94, living_status = 'deceased' WHERE id = 'ent_thomas-edison';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_thomas-jefferson_1826', 'ent_thomas-jefferson', '1826-07-04', 1826, 'death', 'biography',
   'Thomas Jefferson died on 1826-07-04', 'Thomas Jefferson died on 1826-07-04 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q11812', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 73, living_status = 'deceased' WHERE id = 'ent_thomas-jefferson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_tupac-shakur_1996', 'ent_tupac-shakur', '1996-09-13', 1996, 'death', 'biography',
   'Tupac Shakur died on 1996-09-13', 'Tupac Shakur died on 1996-09-13 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q6107', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 28, living_status = 'deceased' WHERE id = 'ent_tupac-shakur';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ty-cobb_1961', 'ent_ty-cobb', '1961-07-17', 1961, 'death', 'biography',
   'Ty Cobb died on 1961-07-17', 'Ty Cobb died on 1961-07-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q552828', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 79, living_status = 'deceased' WHERE id = 'ent_ty-cobb';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ulysses-s-grant_1885', 'ent_ulysses-s-grant', '1885-07-23', 1885, 'death', 'biography',
   'Ulysses S. Grant died on 1885-07-23', 'Ulysses S. Grant died on 1885-07-23 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q34836', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 37, living_status = 'deceased' WHERE id = 'ent_ulysses-s-grant';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_walt-disney_1966', 'ent_walt-disney', '1966-12-15', 1966, 'death', 'biography',
   'Walt Disney died on 1966-12-15', 'Walt Disney died on 1966-12-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q8704', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 65, living_status = 'deceased' WHERE id = 'ent_walt-disney';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_walter-johnson_1946', 'ent_walter-johnson', '1946-12-10', 1946, 'death', 'biography',
   'Walter Johnson died on 1946-12-10', 'Walter Johnson died on 1946-12-10 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q722059', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 59, living_status = 'deceased' WHERE id = 'ent_walter-johnson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_warren-g-harding_1923', 'ent_warren-g-harding', '1923-08-02', 1923, 'death', 'biography',
   'Warren G. Harding died on 1923-08-02', 'Warren G. Harding died on 1923-08-02 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q35286', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 32, living_status = 'deceased' WHERE id = 'ent_warren-g-harding';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_whitney-houston_2012', 'ent_whitney-houston', '2012-02-11', 2012, 'death', 'biography',
   'Whitney Houston died on 2012-02-11', 'Whitney Houston died on 2012-02-11 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q34389', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 31, living_status = 'deceased' WHERE id = 'ent_whitney-houston';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_will-durant_1981', 'ent_will-durant', '1981-11-07', 1981, 'death', 'biography',
   'Will Durant died on 1981-11-07', 'Will Durant died on 1981-11-07 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q333911', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 76, living_status = 'deceased' WHERE id = 'ent_will-durant';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_william-faulkner_1962', 'ent_william-faulkner', '1962-07-06', 1962, 'death', 'biography',
   'William Faulkner died on 1962-07-06', 'William Faulkner died on 1962-07-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q38392', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 65, living_status = 'deceased' WHERE id = 'ent_william-faulkner';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_william-henry-harrison_1841', 'ent_william-henry-harrison', '1841-04-04', 1841, 'death', 'biography',
   'William Henry Harrison died on 1841-04-04', 'William Henry Harrison died on 1841-04-04 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q11869', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 49, living_status = 'deceased' WHERE id = 'ent_william-henry-harrison';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_william-henry-harrison_plc_vincennes', 'ent_william-henry-harrison', 'plc_vincennes', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_william-howard-taft_1930', 'ent_william-howard-taft', '1930-03-08', 1930, 'death', 'biography',
   'William Howard Taft died on 1930-03-08', 'William Howard Taft died on 1930-03-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q35648', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 56, living_status = 'deceased' WHERE id = 'ent_william-howard-taft';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_william-mckinley_1901', 'ent_william-mckinley', '1901-09-14', 1901, 'death', 'biography',
   'William McKinley died on 1901-09-14', 'William McKinley died on 1901-09-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q35041', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 30, living_status = 'deceased' WHERE id = 'ent_william-mckinley';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_willie-mays_2024', 'ent_willie-mays', '2024-06-18', 2024, 'death', 'biography',
   'Willie Mays died on 2024-06-18', 'Willie Mays died on 2024-06-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q561852', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 113, living_status = 'deceased' WHERE id = 'ent_willie-mays';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_wilt-chamberlain_1999', 'ent_wilt-chamberlain', '1999-10-12', 1999, 'death', 'biography',
   'Wilt Chamberlain died on 1999-10-12', 'Wilt Chamberlain died on 1999-10-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q182455', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 153, living_status = 'deceased' WHERE id = 'ent_wilt-chamberlain';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_woodrow-wilson_1924', 'ent_woodrow-wilson', '1924-02-03', 1924, 'death', 'biography',
   'Woodrow Wilson died on 1924-02-03', 'Woodrow Wilson died on 1924-02-03 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q34296', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 117, living_status = 'deceased' WHERE id = 'ent_woodrow-wilson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_a-philip-randolph_1979', 'ent_a-philip-randolph', '1979-05-16', 1979, 'death', 'biography',
   'A. Philip Randolph died on 1979-05-16', 'A. Philip Randolph died on 1979-05-16 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q720153', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_a-philip-randolph';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_aaron-burr_1836', 'ent_aaron-burr', '1836-09-14', 1836, 'death', 'biography',
   'Aaron Burr died on 1836-09-14', 'Aaron Burr died on 1836-09-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q179090', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 61, living_status = 'deceased' WHERE id = 'ent_aaron-burr';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ahmed-zewail_2016', 'ent_ahmed-zewail', '2016-08-02', 2016, 'death', 'biography',
   'Ahmed Zewail died on 2016-08-02', 'Ahmed Zewail died on 2016-08-02 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q106624', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 70, living_status = 'deceased' WHERE id = 'ent_ahmed-zewail';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_al-capone_1947', 'ent_al-capone', '1947-01-25', 1947, 'death', 'biography',
   'Al Capone died on 1947-01-25', 'Al Capone died on 1947-01-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q80048', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 54, living_status = 'deceased' WHERE id = 'ent_al-capone';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_alan-shepard_1998', 'ent_alan-shepard', '1998-07-21', 1998, 'death', 'biography',
   'Alan Shepard died on 1998-07-21', 'Alan Shepard died on 1998-07-21 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q174979', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 58, living_status = 'deceased' WHERE id = 'ent_alan-shepard';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_alexander-h-stephens_1883', 'ent_alexander-h-stephens', '1883-03-04', 1883, 'death', 'biography',
   'Alexander H. Stephens died on 1883-03-04', 'Alexander H. Stephens died on 1883-03-04 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q549495', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 71, living_status = 'deceased' WHERE id = 'ent_alexander-h-stephens';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_alexander-hamilton_1804', 'ent_alexander-hamilton', '1804-07-12', 1804, 'death', 'biography',
   'Alexander Hamilton died on 1804-07-12', 'Alexander Hamilton died on 1804-07-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q178903', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 32, living_status = 'deceased' WHERE id = 'ent_alexander-hamilton';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_alfred-hitchcock_1980', 'ent_alfred-hitchcock', '1980-04-29', 1980, 'death', 'biography',
   'Alfred Hitchcock died on 1980-04-29', 'Alfred Hitchcock died on 1980-04-29 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q7374', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 118, living_status = 'deceased' WHERE id = 'ent_alfred-hitchcock';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_alice-paul_1977', 'ent_alice-paul', '1977-07-09', 1977, 'death', 'biography',
   'Alice Paul died on 1977-07-09', 'Alice Paul died on 1977-07-09 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q127328', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 87, living_status = 'deceased' WHERE id = 'ent_alice-paul';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_allen-ginsberg_1997', 'ent_allen-ginsberg', '1997-04-05', 1997, 'death', 'biography',
   'Allen Ginsberg died on 1997-04-05', 'Allen Ginsberg died on 1997-04-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q6711', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 103, living_status = 'deceased' WHERE id = 'ent_allen-ginsberg';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_andrew-mellon_1937', 'ent_andrew-mellon', '1937-08-26', 1937, 'death', 'biography',
   'Andrew Mellon died on 1937-08-26', 'Andrew Mellon died on 1937-08-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q446858', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 37, living_status = 'deceased' WHERE id = 'ent_andrew-mellon';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_andrew-w-mellon_1937', 'ent_andrew-w-mellon', '1937-08-26', 1937, 'death', 'biography',
   'Andrew Mellon died on 1937-08-26', 'Andrew Mellon died on 1937-08-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q446858', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 82, living_status = 'deceased' WHERE id = 'ent_andrew-w-mellon';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ann-lee_1784', 'ent_ann-lee', '1784-09-08', 1784, 'death', 'biography',
   'Ann Lee died on 1784-09-08', 'Ann Lee died on 1784-09-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q456543', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 48, living_status = 'deceased' WHERE id = 'ent_ann-lee';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_anne-bancroft_2005', 'ent_anne-bancroft', '2005-06-06', 2005, 'death', 'biography',
   'Anne Bancroft died on 2005-06-06', 'Anne Bancroft died on 2005-06-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q183532', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 53, living_status = 'deceased' WHERE id = 'ent_anne-bancroft';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_anne-morrow-lindbergh_2001', 'ent_anne-morrow-lindbergh', '2001-02-07', 2001, 'death', 'biography',
   'Anne Morrow Lindbergh died on 2001-02-07', 'Anne Morrow Lindbergh died on 2001-02-07 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q443096', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 79, living_status = 'deceased' WHERE id = 'ent_anne-morrow-lindbergh';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_annie-oakley_1926', 'ent_annie-oakley', '1926-11-03', 1926, 'death', 'biography',
   'Annie Oakley died on 1926-11-03', 'Annie Oakley died on 1926-11-03 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q230935', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 79, living_status = 'deceased' WHERE id = 'ent_annie-oakley';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_aretha-franklin_2018', 'ent_aretha-franklin', '2018-08-16', 2018, 'death', 'biography',
   'Aretha Franklin died on 2018-08-16', 'Aretha Franklin died on 2018-08-16 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q125121', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 76, living_status = 'deceased' WHERE id = 'ent_aretha-franklin';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_arthur-compton_1962', 'ent_arthur-compton', '1962-03-15', 1962, 'death', 'biography',
   'Arthur Compton died on 1962-03-15', 'Arthur Compton died on 1962-03-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q127944', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 62, living_status = 'deceased' WHERE id = 'ent_arthur-compton';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_assata-shakur_2025', 'ent_assata-shakur', '2025-09-25', 2025, 'death', 'biography',
   'Assata Shakur died on 2025-09-25', 'Assata Shakur died on 2025-09-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q467961', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 78, living_status = 'deceased' WHERE id = 'ent_assata-shakur';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_bb-king_2015', 'ent_bb-king', '2015-05-14', 2015, 'death', 'biography',
   'B. B. King died on 2015-05-14', 'B. B. King died on 2015-05-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q188969', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 69, living_status = 'deceased' WHERE id = 'ent_bb-king';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_baby-face-nelson_1934', 'ent_baby-face-nelson', '1934-11-27', 1934, 'death', 'biography',
   'Baby Face Nelson died on 1934-11-27', 'Baby Face Nelson died on 1934-11-27 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q63984', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 300, living_status = 'deceased' WHERE id = 'ent_baby-face-nelson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_bayard-rustin_1987', 'ent_bayard-rustin', '1987-08-24', 1987, 'death', 'biography',
   'Bayard Rustin died on 1987-08-24', 'Bayard Rustin died on 1987-08-24 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q187930', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 51, living_status = 'deceased' WHERE id = 'ent_bayard-rustin';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_betsy-ross_1836', 'ent_betsy-ross', '1836-01-30', 1836, 'death', 'biography',
   'Betsy Ross died on 1836-01-30', 'Betsy Ross died on 1836-01-30 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q234952', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 84, living_status = 'deceased' WHERE id = 'ent_betsy-ross';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_bette-davis_1989', 'ent_bette-davis', '1989-10-06', 1989, 'death', 'biography',
   'Bette Davis died on 1989-10-06', 'Bette Davis died on 1989-10-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q71206', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_bette-davis';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_bette-davis_ent_usa', 'ent_bette-davis', 'ent_usa', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_betty-grable_1973', 'ent_betty-grable', '1973-07-02', 1973, 'death', 'biography',
   'Betty Grable died on 1973-07-02', 'Betty Grable died on 1973-07-02 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q233852', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 43, living_status = 'deceased' WHERE id = 'ent_betty-grable';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_betty-grable_ent_usa', 'ent_betty-grable', 'ent_usa', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_bill-bixby_1993', 'ent_bill-bixby', '1993-11-21', 1993, 'death', 'biography',
   'Bill Bixby died on 1993-11-21', 'Bill Bixby died on 1993-11-21 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q498503', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 59, living_status = 'deceased' WHERE id = 'ent_bill-bixby';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_bill-the-butcher_1855', 'ent_bill-the-butcher', '1855-03-08', 1855, 'death', 'biography',
   'William Poole died on 1855-03-08', 'William Poole died on 1855-03-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q4346116', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_bill-the-butcher';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_billy-the-kid_1881', 'ent_billy-the-kid', '1881-07-14', 1881, 'death', 'biography',
   'Billy the Kid died on 1881-07-14', 'Billy the Kid died on 1881-07-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q44200', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_billy-the-kid';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_bob-dole_2021', 'ent_bob-dole', '2021-12-05', 2021, 'death', 'biography',
   'Bob Dole died on 2021-12-05', 'Bob Dole died on 2021-12-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q319079', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 73, living_status = 'deceased' WHERE id = 'ent_bob-dole';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_bobby-riggs_1995', 'ent_bobby-riggs', '1995-10-25', 1995, 'death', 'biography',
   'Bobby Riggs died on 1995-10-25', 'Bobby Riggs died on 1995-10-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q54539', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 58, living_status = 'deceased' WHERE id = 'ent_bobby-riggs';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_brigham-young_1877', 'ent_brigham-young', '1877-08-29', 1877, 'death', 'biography',
   'Brigham Young died on 1877-08-29', 'Brigham Young died on 1877-08-29 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q203559', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 58, living_status = 'deceased' WHERE id = 'ent_brigham-young';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_bruce-lee_1973', 'ent_bruce-lee', '1973-07-20', 1973, 'death', 'biography',
   'Bruce Lee died on 1973-07-20', 'Bruce Lee died on 1973-07-20 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q16397', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 33, living_status = 'deceased' WHERE id = 'ent_bruce-lee';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_buck-oneil_2006', 'ent_buck-oneil', '2006-10-06', 2006, 'death', 'biography',
   'Buck O''Neil died on 2006-10-06', 'Buck O''Neil died on 2006-10-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2398459', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_buck-oneil';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_bud-abbott_1974', 'ent_bud-abbott', '1974-04-24', 1974, 'death', 'biography',
   'Bud Abbott died on 1974-04-24', 'Bud Abbott died on 1974-04-24 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q23888', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 79, living_status = 'deceased' WHERE id = 'ent_bud-abbott';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_bud-abbott_ent_usa', 'ent_bud-abbott', 'ent_usa', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_buddy-holly_1959', 'ent_buddy-holly', '1959-02-03', 1959, 'death', 'biography',
   'Buddy Holly died on 1959-02-03', 'Buddy Holly died on 1959-02-03 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q5977', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 34, living_status = 'deceased' WHERE id = 'ent_buddy-holly';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_buffalo-bill_1917', 'ent_buffalo-bill', '1917-01-10', 1917, 'death', 'biography',
   'Buffalo Bill died on 1917-01-10', 'Buffalo Bill died on 1917-01-10 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q202285', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 71, living_status = 'deceased' WHERE id = 'ent_buffalo-bill';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_bugsy-siegel_1947', 'ent_bugsy-siegel', '1947-06-20', 1947, 'death', 'biography',
   'Bugsy Siegel died on 1947-06-20', 'Bugsy Siegel died on 1947-06-20 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q315487', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 47, living_status = 'deceased' WHERE id = 'ent_bugsy-siegel';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_carl-david-anderson_1991', 'ent_carl-david-anderson', '1991-01-11', 1991, 'death', 'biography',
   'Carl David Anderson died on 1991-01-11', 'Carl David Anderson died on 1991-01-11 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q169366', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 87, living_status = 'deceased' WHERE id = 'ent_carl-david-anderson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_carl-sagan_1996', 'ent_carl-sagan', '1996-12-20', 1996, 'death', 'biography',
   'Carl Sagan died on 1996-12-20', 'Carl Sagan died on 1996-12-20 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q410', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 62, living_status = 'deceased' WHERE id = 'ent_carl-sagan';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_cesar-chavez_1993', 'ent_cesar-chavez', '1993-04-23', 1993, 'death', 'biography',
   'Cesar Chavez died on 1993-04-23', 'Cesar Chavez died on 1993-04-23 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q355425', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 68, living_status = 'deceased' WHERE id = 'ent_cesar-chavez';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_charles-lucky-luciano_1962', 'ent_charles-lucky-luciano', '1962-01-26', 1962, 'death', 'biography',
   'Lucky Luciano died on 1962-01-26', 'Lucky Luciano died on 1962-01-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q208357', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 16, living_status = 'deceased' WHERE id = 'ent_charles-lucky-luciano';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_res_ent_charles-koch_plc_wichita', 'ent_charles-koch', 'plc_wichita', 'residence', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_charles-manson_2017', 'ent_charles-manson', '2017-11-19', 2017, 'death', 'biography',
   'Charles Manson died on 2017-11-19', 'Charles Manson died on 2017-11-19 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q485508', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 101, living_status = 'deceased' WHERE id = 'ent_charles-manson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_charles-strite_1956', 'ent_charles-strite', '1956-10-18', 1956, 'death', 'biography',
   'Charles Strite died on 1956-10-18', 'Charles Strite died on 1956-10-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2960265', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 78, living_status = 'deceased' WHERE id = 'ent_charles-strite';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_charles-townes_2015', 'ent_charles-townes', '2015-01-27', 2015, 'death', 'biography',
   'Charles H. Townes died on 2015-01-27', 'Charles H. Townes died on 2015-01-27 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q184566', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_charles-townes';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_cher_ent_usa', 'ent_cher', 'ent_usa', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_christopher-latham-sholes_1890', 'ent_christopher-latham-sholes', '1890-02-17', 1890, 'death', 'biography',
   'Christopher Latham Sholes died on 1890-02-17', 'Christopher Latham Sholes died on 1890-02-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q453351', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 74, living_status = 'deceased' WHERE id = 'ent_christopher-latham-sholes';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_chuck-berry_2017', 'ent_chuck-berry', '2017-03-18', 2017, 'death', 'biography',
   'Chuck Berry died on 2017-03-18', 'Chuck Berry died on 2017-03-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q5921', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 122, living_status = 'deceased' WHERE id = 'ent_chuck-berry';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_clara-bow_1965', 'ent_clara-bow', '1965-09-27', 1965, 'death', 'biography',
   'Clara Bow died on 1965-09-27', 'Clara Bow died on 1965-09-27 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q234640', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 61, living_status = 'deceased' WHERE id = 'ent_clara-bow';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_zachary-taylor_1850', 'ent_zachary-taylor', '1850-07-09', 1850, 'death', 'biography',
   'Zachary Taylor died on 1850-07-09', 'Zachary Taylor died on 1850-07-09 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q11896', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 44, living_status = 'deceased' WHERE id = 'ent_zachary-taylor';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_rutherford-b-hayes_1893', 'ent_rutherford-b-hayes', '1893-01-17', 1893, 'death', 'biography',
   'Rutherford B. Hayes died on 1893-01-17', 'Rutherford B. Hayes died on 1893-01-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q35686', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 41, living_status = 'deceased' WHERE id = 'ent_rutherford-b-hayes';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_schuyler-colfax_1885', 'ent_schuyler-colfax', '1885-01-13', 1885, 'death', 'biography',
   'Schuyler Colfax died on 1885-01-13', 'Schuyler Colfax died on 1885-01-13 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q310852', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 190, living_status = 'deceased' WHERE id = 'ent_schuyler-colfax';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_william-a-wheeler_1887', 'ent_william-a-wheeler', '1887-06-04', 1887, 'death', 'biography',
   'William A. Wheeler died on 1887-06-04', 'William A. Wheeler died on 1887-06-04 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q310835', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_william-a-wheeler';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_thomas-a-hendricks_1885', 'ent_thomas-a-hendricks', '1885-11-25', 1885, 'death', 'biography',
   'Thomas A. Hendricks died on 1885-11-25', 'Thomas A. Hendricks died on 1885-11-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q310843', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_thomas-a-hendricks';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_adlai-stevenson-i_1914', 'ent_adlai-stevenson-i', '1914-06-14', 1914, 'death', 'biography',
   'Adlai Stevenson I died on 1914-06-14', 'Adlai Stevenson I died on 1914-06-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q310839', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 199, living_status = 'deceased' WHERE id = 'ent_adlai-stevenson-i';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_thomas-r-marshall_1925', 'ent_thomas-r-marshall', '1925-06-01', 1925, 'death', 'biography',
   'Thomas R. Marshall died on 1925-06-01', 'Thomas R. Marshall died on 1925-06-01 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q299001', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_thomas-r-marshall';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_alben-w-barkley_1956', 'ent_alben-w-barkley', '1956-04-30', 1956, 'death', 'biography',
   'Alben W. Barkley died on 1956-04-30', 'Alben W. Barkley died on 1956-04-30 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q273549', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 53, living_status = 'deceased' WHERE id = 'ent_alben-w-barkley';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_spiro-agnew_1996', 'ent_spiro-agnew', '1996-09-17', 1996, 'death', 'biography',
   'Spiro Agnew died on 1996-09-17', 'Spiro Agnew died on 1996-09-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q203433', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 164, living_status = 'deceased' WHERE id = 'ent_spiro-agnew';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_nelson-rockefeller_1979', 'ent_nelson-rockefeller', '1979-01-26', 1979, 'death', 'biography',
   'Nelson Rockefeller died on 1979-01-26', 'Nelson Rockefeller died on 1979-01-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q11237', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 51, living_status = 'deceased' WHERE id = 'ent_nelson-rockefeller';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_walter-mondale_2021', 'ent_walter-mondale', '2021-04-19', 2021, 'death', 'biography',
   'Walter Mondale died on 2021-04-19', 'Walter Mondale died on 2021-04-19 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q49216', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 73, living_status = 'deceased' WHERE id = 'ent_walter-mondale';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_martha-washington_1802', 'ent_martha-washington', '1802-05-22', 1802, 'death', 'biography',
   'Martha Washington died on 1802-05-22', 'Martha Washington died on 1802-05-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q191789', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 113, living_status = 'deceased' WHERE id = 'ent_martha-washington';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_abigail-adams_1818', 'ent_abigail-adams', '1818-10-28', 1818, 'death', 'biography',
   'Abigail Adams died on 1818-10-28', 'Abigail Adams died on 1818-10-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q206191', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 78, living_status = 'deceased' WHERE id = 'ent_abigail-adams';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_martha-jefferson_1782', 'ent_martha-jefferson', '1782-09-06', 1782, 'death', 'biography',
   'Martha Jefferson died on 1782-09-06', 'Martha Jefferson died on 1782-09-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q238001', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 34, living_status = 'deceased' WHERE id = 'ent_martha-jefferson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_louisa-adams_1852', 'ent_louisa-adams', '1852-05-15', 1852, 'death', 'biography',
   'Louisa Adams died on 1852-05-15', 'Louisa Adams died on 1852-05-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q233660', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 78, living_status = 'deceased' WHERE id = 'ent_louisa-adams';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_rachel-jackson_1828', 'ent_rachel-jackson', '1828-12-22', 1828, 'death', 'biography',
   'Rachel Jackson died on 1828-12-22', 'Rachel Jackson died on 1828-12-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q238387', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 43, living_status = 'deceased' WHERE id = 'ent_rachel-jackson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_sarah-polk_1891', 'ent_sarah-polk', '1891-08-14', 1891, 'death', 'biography',
   'Sarah Childress Polk died on 1891-08-14', 'Sarah Childress Polk died on 1891-08-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q234285', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 67, living_status = 'deceased' WHERE id = 'ent_sarah-polk';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_abigail-fillmore_1853', 'ent_abigail-fillmore', '1853-03-30', 1853, 'death', 'biography',
   'Abigail Fillmore died on 1853-03-30', 'Abigail Fillmore died on 1853-03-30 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q234266', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 64, living_status = 'deceased' WHERE id = 'ent_abigail-fillmore';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_mary-todd-lincoln_1882', 'ent_mary-todd-lincoln', '1882-07-16', 1882, 'death', 'biography',
   'Mary Todd Lincoln died on 1882-07-16', 'Mary Todd Lincoln died on 1882-07-16 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q215062', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 43, living_status = 'deceased' WHERE id = 'ent_mary-todd-lincoln';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_lucy-hayes_1889', 'ent_lucy-hayes', '1889-06-25', 1889, 'death', 'biography',
   'Lucy Webb Hayes died on 1889-06-25', 'Lucy Webb Hayes died on 1889-06-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q234275', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 37, living_status = 'deceased' WHERE id = 'ent_lucy-hayes';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_lucretia-garfield_1918', 'ent_lucretia-garfield', '1918-03-14', 1918, 'death', 'biography',
   'Lucretia Garfield died on 1918-03-14', 'Lucretia Garfield died on 1918-03-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q234261', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 129, living_status = 'deceased' WHERE id = 'ent_lucretia-garfield';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_mary-arthur-mcelroy_1917', 'ent_mary-arthur-mcelroy', '1917-01-08', 1917, 'death', 'biography',
   'Mary Arthur McElroy died on 1917-01-08', 'Mary Arthur McElroy died on 1917-01-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q254488', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_mary-arthur-mcelroy';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_rose-cleveland_1918', 'ent_rose-cleveland', '1918-11-22', 1918, 'death', 'biography',
   'Rose Cleveland died on 1918-11-22', 'Rose Cleveland died on 1918-11-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q255611', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 129, living_status = 'deceased' WHERE id = 'ent_rose-cleveland';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_mamie-eisenhower_1979', 'ent_mamie-eisenhower', '1979-11-01', 1979, 'death', 'biography',
   'Mamie Eisenhower died on 1979-11-01', 'Mamie Eisenhower died on 1979-11-01 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q233686', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 63, living_status = 'deceased' WHERE id = 'ent_mamie-eisenhower';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_pat-nixon_1993', 'ent_pat-nixon', '1993-06-22', 1993, 'death', 'biography',
   'Pat Nixon died on 1993-06-22', 'Pat Nixon died on 1993-06-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q158707', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 53, living_status = 'deceased' WHERE id = 'ent_pat-nixon';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_rosalynn-carter_2023', 'ent_rosalynn-carter', '2023-11-19', 2023, 'death', 'biography',
   'Rosalynn Carter died on 2023-11-19', 'Rosalynn Carter died on 2023-11-19 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q219353', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 94, living_status = 'deceased' WHERE id = 'ent_rosalynn-carter';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_nancy-reagan_2016', 'ent_nancy-reagan', '2016-03-06', 2016, 'death', 'biography',
   'Nancy Reagan died on 2016-03-06', 'Nancy Reagan died on 2016-03-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q193426', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 87, living_status = 'deceased' WHERE id = 'ent_nancy-reagan';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_samuel-adams_1803', 'ent_samuel-adams', '1803-10-02', 1803, 'death', 'biography',
   'Samuel Adams died on 1803-10-02', 'Samuel Adams died on 1803-10-02 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q212963', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 81, living_status = 'deceased' WHERE id = 'ent_samuel-adams';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_paul-revere_1818', 'ent_paul-revere', '1818-05-10', 1818, 'death', 'biography',
   'Paul Revere died on 1818-05-10', 'Paul Revere died on 1818-05-10 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q327071', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 83, living_status = 'deceased' WHERE id = 'ent_paul-revere';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_thomas-paine_1809', 'ent_thomas-paine', '1809-06-08', 1809, 'death', 'biography',
   'Thomas Paine died on 1809-06-08', 'Thomas Paine died on 1809-06-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q126462', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 50, living_status = 'deceased' WHERE id = 'ent_thomas-paine';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_patrick-henry_1799', 'ent_patrick-henry', '1799-06-06', 1799, 'death', 'biography',
   'Patrick Henry died on 1799-06-06', 'Patrick Henry died on 1799-06-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q311885', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 45, living_status = 'deceased' WHERE id = 'ent_patrick-henry';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_marquis-de-lafayette_1834', 'ent_marquis-de-lafayette', '1834-05-20', 1834, 'death', 'biography',
   'Marquis de Lafayette died on 1834-05-20', 'Marquis de Lafayette died on 1834-05-20 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q186652', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_marquis-de-lafayette';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_nathanael-greene_1786', 'ent_nathanael-greene', '1786-06-19', 1786, 'death', 'biography',
   'Nathanael Greene died on 1786-06-19', 'Nathanael Greene died on 1786-06-19 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q366113', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 44, living_status = 'deceased' WHERE id = 'ent_nathanael-greene';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_william-t-sherman_1891', 'ent_william-t-sherman', '1891-02-14', 1891, 'death', 'biography',
   'William Tecumseh Sherman died on 1891-02-14', 'William Tecumseh Sherman died on 1891-02-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q188936', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_william-t-sherman';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_philip-sheridan_1888', 'ent_philip-sheridan', '1888-08-05', 1888, 'death', 'biography',
   'Philip Sheridan died on 1888-08-05', 'Philip Sheridan died on 1888-08-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q355452', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 57, living_status = 'deceased' WHERE id = 'ent_philip-sheridan';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ambrose-burnside_1881', 'ent_ambrose-burnside', '1881-09-13', 1881, 'death', 'biography',
   'Ambrose Burnside died on 1881-09-13', 'Ambrose Burnside died on 1881-09-13 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q355444', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 57, living_status = 'deceased' WHERE id = 'ent_ambrose-burnside';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_nathan-bedford-forrest_1877', 'ent_nathan-bedford-forrest', '1877-10-29', 1877, 'death', 'biography',
   'Nathan Bedford Forrest died on 1877-10-29', 'Nathan Bedford Forrest died on 1877-10-29 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q366102', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 56, living_status = 'deceased' WHERE id = 'ent_nathan-bedford-forrest';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_sojourner-truth_1883', 'ent_sojourner-truth', '1883-11-26', 1883, 'death', 'biography',
   'Sojourner Truth died on 1883-11-26', 'Sojourner Truth died on 1883-11-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q105180', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 75, living_status = 'deceased' WHERE id = 'ent_sojourner-truth';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_william-lloyd-garrison_1879', 'ent_william-lloyd-garrison', '1879-05-24', 1879, 'death', 'biography',
   'William Lloyd Garrison died on 1879-05-24', 'William Lloyd Garrison died on 1879-05-24 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q360155', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 73, living_status = 'deceased' WHERE id = 'ent_william-lloyd-garrison';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_web-du-bois_1963', 'ent_web-du-bois', '1963-08-27', 1963, 'death', 'biography',
   'W. E. B. Du Bois died on 1963-08-27', 'W. E. B. Du Bois died on 1963-08-27 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q158060', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 95, living_status = 'deceased' WHERE id = 'ent_web-du-bois';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_marcus-garvey_1940', 'ent_marcus-garvey', '1940-06-10', 1940, 'death', 'biography',
   'Marcus Garvey died on 1940-06-10', 'Marcus Garvey died on 1940-06-10 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q272504', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 53, living_status = 'deceased' WHERE id = 'ent_marcus-garvey';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_nikola-tesla_1943', 'ent_nikola-tesla', '1943-01-07', 1943, 'death', 'biography',
   'Nikola Tesla died on 1943-01-07', 'Nikola Tesla died on 1943-01-07 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q9036', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 87, living_status = 'deceased' WHERE id = 'ent_nikola-tesla';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_robert-fulton_1815', 'ent_robert-fulton', '1815-02-24', 1815, 'death', 'biography',
   'Robert Fulton died on 1815-02-24', 'Robert Fulton died on 1815-02-24 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q192496', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 50, living_status = 'deceased' WHERE id = 'ent_robert-fulton';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_theodore-von-krmn_1963', 'ent_theodore-von-krmn', '1963-05-06', 1963, 'death', 'biography',
   'Theodore von Kármán died on 1963-05-06', 'Theodore von Kármán died on 1963-05-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q164384', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_theodore-von-krmn';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_wernher-von-braun_1977', 'ent_wernher-von-braun', '1977-06-16', 1977, 'death', 'biography',
   'Wernher von Braun died on 1977-06-16', 'Wernher von Braun died on 1977-06-16 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q57384', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 22, living_status = 'deceased' WHERE id = 'ent_wernher-von-braun';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_marie-curie_1934', 'ent_marie-curie', '1934-07-04', 1934, 'death', 'biography',
   'Marie Curie died on 1934-07-04', 'Marie Curie died on 1934-07-04 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q7186', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 67, living_status = 'deceased' WHERE id = 'ent_marie-curie';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_rachel-carson_1964', 'ent_rachel-carson', '1964-04-14', 1964, 'death', 'biography',
   'Rachel Carson died on 1964-04-14', 'Rachel Carson died on 1964-04-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q100948', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 36, living_status = 'deceased' WHERE id = 'ent_rachel-carson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_albert-sabin_1993', 'ent_albert-sabin', '1993-03-03', 1993, 'death', 'biography',
   'Albert Sabin died on 1993-03-03', 'Albert Sabin died on 1993-03-03 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q164790', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 65, living_status = 'deceased' WHERE id = 'ent_albert-sabin';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_alexander-fleming_1955', 'ent_alexander-fleming', '1955-03-11', 1955, 'death', 'biography',
   'Alexander Fleming died on 1955-03-11', 'Alexander Fleming died on 1955-03-11 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q37064', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 49, living_status = 'deceased' WHERE id = 'ent_alexander-fleming';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_rosalind-franklin_1958', 'ent_rosalind-franklin', '1958-04-16', 1958, 'death', 'biography',
   'Rosalind Franklin died on 1958-04-16', 'Rosalind Franklin died on 1958-04-16 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q7474', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 38, living_status = 'deceased' WHERE id = 'ent_rosalind-franklin';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_vannevar-bush_1974', 'ent_vannevar-bush', '1974-06-28', 1974, 'death', 'biography',
   'Vannevar Bush died on 1974-06-28', 'Vannevar Bush died on 1974-06-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q299595', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 84, living_status = 'deceased' WHERE id = 'ent_vannevar-bush';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_alan-turing_1954', 'ent_alan-turing', '1954-06-07', 1954, 'death', 'biography',
   'Alan Turing died on 1954-06-07', 'Alan Turing died on 1954-06-07 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q7251', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 47, living_status = 'deceased' WHERE id = 'ent_alan-turing';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_paul-allen_2018', 'ent_paul-allen', '2018-10-15', 2018, 'death', 'biography',
   'Paul Allen died on 2018-10-15', 'Paul Allen died on 2018-10-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q162005', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 65, living_status = 'deceased' WHERE id = 'ent_paul-allen';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_stephanie-kwolek_2014', 'ent_stephanie-kwolek', '2014-06-18', 2014, 'death', 'biography',
   'Stephanie Kwolek died on 2014-06-18', 'Stephanie Kwolek died on 2014-06-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q7509', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 225, living_status = 'deceased' WHERE id = 'ent_stephanie-kwolek';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_martin-luther-king-jr_1968', 'ent_martin-luther-king-jr', '1968-04-04', 1968, 'death', 'biography',
   'Martin Luther King Jr. died on 1968-04-04', 'Martin Luther King Jr. died on 1968-04-04 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q8027', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 15, living_status = 'deceased' WHERE id = 'ent_martin-luther-king-jr';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_malcolm-x_1965', 'ent_malcolm-x', '1965-02-21', 1965, 'death', 'biography',
   'Malcolm X died on 1965-02-21', 'Malcolm X died on 1965-02-21 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q43303', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 51, living_status = 'deceased' WHERE id = 'ent_malcolm-x';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_rosa-parks_2005', 'ent_rosa-parks', '2005-10-24', 2005, 'death', 'biography',
   'Rosa Parks died on 2005-10-24', 'Rosa Parks died on 2005-10-24 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q41921', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 148, living_status = 'deceased' WHERE id = 'ent_rosa-parks';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_medgar-evers_1963', 'ent_medgar-evers', '1963-06-12', 1963, 'death', 'biography',
   'Medgar Evers died on 1963-06-12', 'Medgar Evers died on 1963-06-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q717985', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 46, living_status = 'deceased' WHERE id = 'ent_medgar-evers';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_roy-wilkins_1981', 'ent_roy-wilkins', '1981-09-08', 1981, 'death', 'biography',
   'Roy Wilkins died on 1981-09-08', 'Roy Wilkins died on 1981-09-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2738344', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 85, living_status = 'deceased' WHERE id = 'ent_roy-wilkins';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_whitney-young_1971', 'ent_whitney-young', '1971-03-11', 1971, 'death', 'biography',
   'Whitney Young died on 1971-03-11', 'Whitney Young died on 1971-03-11 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q3025297', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 50, living_status = 'deceased' WHERE id = 'ent_whitney-young';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_thurgood-marshall_1993', 'ent_thurgood-marshall', '1993-01-24', 1993, 'death', 'biography',
   'Thurgood Marshall died on 1993-01-24', 'Thurgood Marshall died on 1993-01-24 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q312348', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 64, living_status = 'deceased' WHERE id = 'ent_thurgood-marshall';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_maya-angelou_2014', 'ent_maya-angelou', '2014-05-28', 2014, 'death', 'biography',
   'Maya Angelou died on 2014-05-28', 'Maya Angelou died on 2014-05-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q19526', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 86, living_status = 'deceased' WHERE id = 'ent_maya-angelou';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_walt-whitman_1892', 'ent_walt-whitman', '1892-03-26', 1892, 'death', 'biography',
   'Walt Whitman died on 1892-03-26', 'Walt Whitman died on 1892-03-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q81438', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 73, living_status = 'deceased' WHERE id = 'ent_walt-whitman';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_nathaniel-hawthorne_1864', 'ent_nathaniel-hawthorne', '1864-05-19', 1864, 'death', 'biography',
   'Nathaniel Hawthorne died on 1864-05-19', 'Nathaniel Hawthorne died on 1864-05-19 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q69339', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 228, living_status = 'deceased' WHERE id = 'ent_nathaniel-hawthorne';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_louisa-may-alcott_1888', 'ent_louisa-may-alcott', '1888-03-06', 1888, 'death', 'biography',
   'Louisa May Alcott died on 1888-03-06', 'Louisa May Alcott died on 1888-03-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q185696', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 68, living_status = 'deceased' WHERE id = 'ent_louisa-may-alcott';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ralph-waldo-emerson_1882', 'ent_ralph-waldo-emerson', '1882-04-27', 1882, 'death', 'biography',
   'Ralph Waldo Emerson died on 1882-04-27', 'Ralph Waldo Emerson died on 1882-04-27 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q48226', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 79, living_status = 'deceased' WHERE id = 'ent_ralph-waldo-emerson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_robert-frost_1963', 'ent_robert-frost', '1963-01-29', 1963, 'death', 'biography',
   'Robert Frost died on 1963-01-29', 'Robert Frost died on 1963-01-29 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q168728', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 89, living_status = 'deceased' WHERE id = 'ent_robert-frost';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ee-cummings_1962', 'ent_ee-cummings', '1962-09-03', 1962, 'death', 'biography',
   'E. E. Cummings died on 1962-09-03', 'E. E. Cummings died on 1962-09-03 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q298703', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 68, living_status = 'deceased' WHERE id = 'ent_ee-cummings';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_wallace-stevens_1955', 'ent_wallace-stevens', '1955-08-02', 1955, 'death', 'biography',
   'Wallace Stevens died on 1955-08-02', 'Wallace Stevens died on 1955-08-02 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q166835', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 76, living_status = 'deceased' WHERE id = 'ent_wallace-stevens';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_theodore-roethke_1963', 'ent_theodore-roethke', '1963-08-01', 1963, 'death', 'biography',
   'Theodore Roethke died on 1963-08-01', 'Theodore Roethke died on 1963-08-01 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1151763', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 55, living_status = 'deceased' WHERE id = 'ent_theodore-roethke';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_res_ent_theodore-roethke_plc_washington-state', 'ent_theodore-roethke', 'plc_washington-state', 'residence', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ralph-ellison_1994', 'ent_ralph-ellison', '1994-04-16', 1994, 'death', 'biography',
   'Ralph Ellison died on 1994-04-16', 'Ralph Ellison died on 1994-04-16 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q299965', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 81, living_status = 'deceased' WHERE id = 'ent_ralph-ellison';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_philip-roth_2018', 'ent_philip-roth', '2018-05-22', 2018, 'death', 'biography',
   'Philip Roth died on 2018-05-22', 'Philip Roth died on 2018-05-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q187019', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 85, living_status = 'deceased' WHERE id = 'ent_philip-roth';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_raymond-carver_1988', 'ent_raymond-carver', '1988-08-02', 1988, 'death', 'biography',
   'Raymond Carver died on 1988-08-02', 'Raymond Carver died on 1988-08-02 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q219862', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 50, living_status = 'deceased' WHERE id = 'ent_raymond-carver';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_truman-capote_1984', 'ent_truman-capote', '1984-08-25', 1984, 'death', 'biography',
   'Truman Capote died on 1984-08-25', 'Truman Capote died on 1984-08-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q134180', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 48, living_status = 'deceased' WHERE id = 'ent_truman-capote';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_mark-rothko_1970', 'ent_mark-rothko', '1970-02-25', 1970, 'death', 'biography',
   'Mark Rothko died on 1970-02-25', 'Mark Rothko died on 1970-02-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q160149', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 67, living_status = 'deceased' WHERE id = 'ent_mark-rothko';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_willem-de-kooning_1997', 'ent_willem-de-kooning', '1997-03-19', 1997, 'death', 'biography',
   'Willem de Kooning died on 1997-03-19', 'Willem de Kooning died on 1997-03-19 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q132305', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 54, living_status = 'deceased' WHERE id = 'ent_willem-de-kooning';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_norman-rockwell_1978', 'ent_norman-rockwell', '1978-11-08', 1978, 'death', 'biography',
   'Norman Rockwell died on 1978-11-08', 'Norman Rockwell died on 1978-11-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q271884', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 316, living_status = 'deceased' WHERE id = 'ent_norman-rockwell';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_robert-rauschenberg_2008', 'ent_robert-rauschenberg', '2008-05-12', 2008, 'death', 'biography',
   'Robert Rauschenberg died on 2008-05-12', 'Robert Rauschenberg died on 2008-05-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q164358', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 138, living_status = 'deceased' WHERE id = 'ent_robert-rauschenberg';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_roy-lichtenstein_1997', 'ent_roy-lichtenstein', '1997-09-15', 1997, 'death', 'biography',
   'Roy Lichtenstein died on 1997-09-15', 'Roy Lichtenstein died on 1997-09-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q151679', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 71, living_status = 'deceased' WHERE id = 'ent_roy-lichtenstein';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_roy-lichtenstein_plc_oswego', 'ent_roy-lichtenstein', 'plc_oswego', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_alexander-calder_1976', 'ent_alexander-calder', '1976-11-11', 1976, 'death', 'biography',
   'Alexander Calder died on 1976-11-11', 'Alexander Calder died on 1976-11-11 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q151580', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 81, living_status = 'deceased' WHERE id = 'ent_alexander-calder';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_alexander-calder_plc_oshkosh', 'ent_alexander-calder', 'plc_oshkosh', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_louise-nevelson_1988', 'ent_louise-nevelson', '1988-04-17', 1988, 'death', 'biography',
   'Louise Nevelson died on 1988-04-17', 'Louise Nevelson died on 1988-04-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q7531', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 89, living_status = 'deceased' WHERE id = 'ent_louise-nevelson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_robert-motherwell_1991', 'ent_robert-motherwell', '1991-07-16', 1991, 'death', 'biography',
   'Robert Motherwell died on 1991-07-16', 'Robert Motherwell died on 1991-07-16 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q165275', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 76, living_status = 'deceased' WHERE id = 'ent_robert-motherwell';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_robert-motherwell_plc_asheville', 'ent_robert-motherwell', 'plc_asheville', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_mary-cassatt_1926', 'ent_mary-cassatt', '1926-06-14', 1926, 'death', 'biography',
   'Mary Cassatt died on 1926-06-14', 'Mary Cassatt died on 1926-06-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q173223', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 264, living_status = 'deceased' WHERE id = 'ent_mary-cassatt';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_thomas-eakins_1916', 'ent_thomas-eakins', '1916-06-25', 1916, 'death', 'biography',
   'Thomas Eakins died on 1916-06-25', 'Thomas Eakins died on 1916-06-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q214905', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 187, living_status = 'deceased' WHERE id = 'ent_thomas-eakins';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_winslow-homer_1910', 'ent_winslow-homer', '1910-09-29', 1910, 'death', 'biography',
   'Winslow Homer died on 1910-09-29', 'Winslow Homer died on 1910-09-29 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q344838', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 74, living_status = 'deceased' WHERE id = 'ent_winslow-homer';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_louis-armstrong_1971', 'ent_louis-armstrong', '1971-07-06', 1971, 'death', 'biography',
   'Louis Armstrong died on 1971-07-06', 'Louis Armstrong died on 1971-07-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1779', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 59, living_status = 'deceased' WHERE id = 'ent_louis-armstrong';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_miles-davis_1991', 'ent_miles-davis', '1991-09-28', 1991, 'death', 'biography',
   'Miles Davis died on 1991-09-28', 'Miles Davis died on 1991-09-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q93341', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 290, living_status = 'deceased' WHERE id = 'ent_miles-davis';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_thelonious-monk_1982', 'ent_thelonious-monk', '1982-02-17', 1982, 'death', 'biography',
   'Thelonious Monk died on 1982-02-17', 'Thelonious Monk died on 1982-02-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q109612', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 65, living_status = 'deceased' WHERE id = 'ent_thelonious-monk';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_sarah-vaughan_1990', 'ent_sarah-vaughan', '1990-04-03', 1990, 'death', 'biography',
   'Sarah Vaughan died on 1990-04-03', 'Sarah Vaughan died on 1990-04-03 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q229513', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 66, living_status = 'deceased' WHERE id = 'ent_sarah-vaughan';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_nat-king-cole_1965', 'ent_nat-king-cole', '1965-02-15', 1965, 'death', 'biography',
   'Nat King Cole died on 1965-02-15', 'Nat King Cole died on 1965-02-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q137042', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 29, living_status = 'deceased' WHERE id = 'ent_nat-king-cole';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ornette-coleman_2015', 'ent_ornette-coleman', '2015-06-11', 2015, 'death', 'biography',
   'Ornette Coleman died on 2015-06-11', 'Ornette Coleman died on 2015-06-11 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q208797', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 85, living_status = 'deceased' WHERE id = 'ent_ornette-coleman';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_max-roach_2007', 'ent_max-roach', '2007-08-16', 2007, 'death', 'biography',
   'Max Roach died on 2007-08-16', 'Max Roach died on 2007-08-16 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q175899', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 83, living_status = 'deceased' WHERE id = 'ent_max-roach';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_thad-jones_1986', 'ent_thad-jones', '1986-08-21', 1986, 'death', 'biography',
   'Thad Jones died on 1986-08-21', 'Thad Jones died on 1986-08-21 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q539883', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 63, living_status = 'deceased' WHERE id = 'ent_thad-jones';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_stan-getz_1991', 'ent_stan-getz', '1991-06-06', 1991, 'death', 'biography',
   'Stan Getz died on 1991-06-06', 'Stan Getz died on 1991-06-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q30587', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 77, living_status = 'deceased' WHERE id = 'ent_stan-getz';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_wayne-shorter_2023', 'ent_wayne-shorter', '2023-03-02', 2023, 'death', 'biography',
   'Wayne Shorter died on 2023-03-02', 'Wayne Shorter died on 2023-03-02 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q317161', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 89, living_status = 'deceased' WHERE id = 'ent_wayne-shorter';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_philly-joe-jones_1985', 'ent_philly-joe-jones', '1985-08-30', 1985, 'death', 'biography',
   'Philly Joe Jones died on 1985-08-30', 'Philly Joe Jones died on 1985-08-30 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q709873', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 30, living_status = 'deceased' WHERE id = 'ent_philly-joe-jones';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_mccoy-tyner_2020', 'ent_mccoy-tyner', '2020-03-06', 2020, 'death', 'biography',
   'McCoy Tyner died on 2020-03-06', 'McCoy Tyner died on 2020-03-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q318619', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_mccoy-tyner';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_aaron-copland_1990', 'ent_aaron-copland', '1990-12-02', 1990, 'death', 'biography',
   'Aaron Copland died on 1990-12-02', 'Aaron Copland died on 1990-12-02 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q192185', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 90, living_status = 'deceased' WHERE id = 'ent_aaron-copland';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_samuel-barber_1981', 'ent_samuel-barber', '1981-01-23', 1981, 'death', 'biography',
   'Samuel Barber died on 1981-01-23', 'Samuel Barber died on 1981-01-23 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q216870', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 71, living_status = 'deceased' WHERE id = 'ent_samuel-barber';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_richard-rodgers_1979', 'ent_richard-rodgers', '1979-12-30', 1979, 'death', 'biography',
   'Richard Rodgers died on 1979-12-30', 'Richard Rodgers died on 1979-12-30 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q269094', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 77, living_status = 'deceased' WHERE id = 'ent_richard-rodgers';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_oscar-hammerstein-ii_1960', 'ent_oscar-hammerstein-ii', '1960-08-23', 1960, 'death', 'biography',
   'Oscar Hammerstein II died on 1960-08-23', 'Oscar Hammerstein II died on 1960-08-23 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q319693', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 20, living_status = 'deceased' WHERE id = 'ent_oscar-hammerstein-ii';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_stephen-sondheim_2021', 'ent_stephen-sondheim', '2021-11-26', 2021, 'death', 'biography',
   'Stephen Sondheim died on 2021-11-26', 'Stephen Sondheim died on 2021-11-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q153579', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 91, living_status = 'deceased' WHERE id = 'ent_stephen-sondheim';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_marlon-brando_2004', 'ent_marlon-brando', '2004-07-01', 2004, 'death', 'biography',
   'Marlon Brando died on 2004-07-01', 'Marlon Brando died on 2004-07-01 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q34012', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 61, living_status = 'deceased' WHERE id = 'ent_marlon-brando';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_res_ent_marlon-brando_plc_evanston', 'ent_marlon-brando', 'plc_evanston', 'residence', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_marilyn-monroe_1962', 'ent_marilyn-monroe', '1962-08-04', 1962, 'death', 'biography',
   'Marilyn Monroe died on 1962-08-04', 'Marilyn Monroe died on 1962-08-04 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q4616', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 36, living_status = 'deceased' WHERE id = 'ent_marilyn-monroe';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_orson-welles_1985', 'ent_orson-welles', '1985-10-10', 1985, 'death', 'biography',
   'Orson Welles died on 1985-10-10', 'Orson Welles died on 1985-10-10 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q24829', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 70, living_status = 'deceased' WHERE id = 'ent_orson-welles';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_nicholas-ray_1979', 'ent_nicholas-ray', '1979-06-16', 1979, 'death', 'biography',
   'Nicholas Ray died on 1979-06-16', 'Nicholas Ray died on 1979-06-16 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q240677', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 151, living_status = 'deceased' WHERE id = 'ent_nicholas-ray';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_tony-scott_2012', 'ent_tony-scott', '2012-08-19', 2012, 'death', 'biography',
   'Tony Scott died on 2012-08-19', 'Tony Scott died on 2012-08-19 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q193648', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 68, living_status = 'deceased' WHERE id = 'ent_tony-scott';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_res_ent_sundar-pichai_ent_usa', 'ent_sundar-pichai', 'ent_usa', 'residence', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_sam-walton_1992', 'ent_sam-walton', '1992-04-05', 1992, 'death', 'biography',
   'Sam Walton died on 1992-04-05', 'Sam Walton died on 1992-04-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q497827', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 69, living_status = 'deceased' WHERE id = 'ent_sam-walton';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ray-kroc_1984', 'ent_ray-kroc', '1984-01-14', 1984, 'death', 'biography',
   'Ray Kroc died on 1984-01-14', 'Ray Kroc died on 1984-01-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q319648', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 58, living_status = 'deceased' WHERE id = 'ent_ray-kroc';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_a-g-spalding_1915', 'ent_a-g-spalding', '1915-09-09', 1915, 'death', 'biography',
   'Albert Spalding died on 1915-09-09', 'Albert Spalding died on 1915-09-09 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1272299', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_a-g-spalding';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_res_ent_shaquille-oneal_plc_orlando', 'ent_shaquille-oneal', 'plc_orlando', 'residence', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_walter-payton_1999', 'ent_walter-payton', '1999-11-01', 1999, 'death', 'biography',
   'Walter Payton died on 1999-11-01', 'Walter Payton died on 1999-11-01 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q963117', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 46, living_status = 'deceased' WHERE id = 'ent_walter-payton';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_mickey-mantle_1995', 'ent_mickey-mantle', '1995-08-13', 1995, 'death', 'biography',
   'Mickey Mantle died on 1995-08-13', 'Mickey Mantle died on 1995-08-13 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q345004', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 46, living_status = 'deceased' WHERE id = 'ent_mickey-mantle';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ted-williams_2002', 'ent_ted-williams', '2002-07-05', 2002, 'death', 'biography',
   'Ted Williams died on 2002-07-05', 'Ted Williams died on 2002-07-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q172478', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 84, living_status = 'deceased' WHERE id = 'ent_ted-williams';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_sugar-ray-robinson_1989', 'ent_sugar-ray-robinson', '1989-04-12', 1989, 'death', 'biography',
   'Sugar Ray Robinson died on 1989-04-12', 'Sugar Ray Robinson died on 1989-04-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q316706', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 68, living_status = 'deceased' WHERE id = 'ent_sugar-ray-robinson';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_res_ent_martina-navratilova_plc_sarasota', 'ent_martina-navratilova', 'plc_sarasota', 'residence', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_satchel-paige_1982', 'ent_satchel-paige', '1982-06-08', 1982, 'death', 'biography',
   'Satchel Paige died on 1982-06-08', 'Satchel Paige died on 1982-06-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q555730', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 58, living_status = 'deceased' WHERE id = 'ent_satchel-paige';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_rocky-marciano_1969', 'ent_rocky-marciano', '1969-08-31', 1969, 'death', 'biography',
   'Rocky Marciano died on 1969-08-31', 'Rocky Marciano died on 1969-08-31 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q188362', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 46, living_status = 'deceased' WHERE id = 'ent_rocky-marciano';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_rush-limbaugh_2021', 'ent_rush-limbaugh', '2021-02-17', 2021, 'death', 'biography',
   'Rush Limbaugh died on 2021-02-17', 'Rush Limbaugh died on 2021-02-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q319072', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 70, living_status = 'deceased' WHERE id = 'ent_rush-limbaugh';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_walter-cronkite_2009', 'ent_walter-cronkite', '2009-07-17', 2009, 'death', 'biography',
   'Walter Cronkite died on 2009-07-17', 'Walter Cronkite died on 2009-07-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q31073', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 93, living_status = 'deceased' WHERE id = 'ent_walter-cronkite';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_pat-robertson_2023', 'ent_pat-robertson', '2023-06-08', 2023, 'death', 'biography',
   'Pat Robertson died on 2023-06-08', 'Pat Robertson died on 2023-06-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q364990', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 136, living_status = 'deceased' WHERE id = 'ent_pat-robertson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_pope-john-paul-ii_2005', 'ent_pope-john-paul-ii', '2005-04-02', 2005, 'death', 'biography',
   'Pope John Paul II died on 2005-04-02', 'Pope John Paul II died on 2005-04-02 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q989', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_pope-john-paul-ii';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_mother-teresa_1997', 'ent_mother-teresa', '1997-09-05', 1997, 'death', 'biography',
   'Mother Teresa died on 1997-09-05', 'Mother Teresa died on 1997-09-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q30547', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 87, living_status = 'deceased' WHERE id = 'ent_mother-teresa';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_wallace-d-muhammad_2008', 'ent_wallace-d-muhammad', '2008-09-09', 2008, 'death', 'biography',
   'Warith Deen Mohammed died on 2008-09-09', 'Warith Deen Mohammed died on 2008-09-09 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2030011', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_wallace-d-muhammad';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_warith-deen-mohammed_2008', 'ent_warith-deen-mohammed', '2008-09-09', 2008, 'death', 'biography',
   'Warith Deen Mohammed died on 2008-09-09', 'Warith Deen Mohammed died on 2008-09-09 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2030011', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 75, living_status = 'deceased' WHERE id = 'ent_warith-deen-mohammed';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_omar-bradley_1981', 'ent_omar-bradley', '1981-04-08', 1981, 'death', 'biography',
   'Omar Bradley died on 1981-04-08', 'Omar Bradley died on 1981-04-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q207955', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 88, living_status = 'deceased' WHERE id = 'ent_omar-bradley';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_matthew-ridgway_1993', 'ent_matthew-ridgway', '1993-07-26', 1993, 'death', 'biography',
   'Matthew Ridgway died on 1993-07-26', 'Matthew Ridgway died on 1993-07-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q494930', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 63, living_status = 'deceased' WHERE id = 'ent_matthew-ridgway';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_william-westmoreland_2005', 'ent_william-westmoreland', '2005-07-18', 2005, 'death', 'biography',
   'William Westmoreland died on 2005-07-18', 'William Westmoreland died on 2005-07-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q298793', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 73, living_status = 'deceased' WHERE id = 'ent_william-westmoreland';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_alexander-haig_2010', 'ent_alexander-haig', '2010-02-20', 2010, 'death', 'biography',
   'Alexander Haig died on 2010-02-20', 'Alexander Haig died on 2010-02-20 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q107957', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_alexander-haig';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_norman-schwarzkopf_2012', 'ent_norman-schwarzkopf', '2012-12-27', 2012, 'death', 'biography',
   'Norman Schwarzkopf Jr. died on 2012-12-27', 'Norman Schwarzkopf Jr. died on 2012-12-27 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q310188', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_norman-schwarzkopf';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_warren-christopher_2011', 'ent_warren-christopher', '2011-03-18', 2011, 'death', 'biography',
   'Warren Christopher died on 2011-03-18', 'Warren Christopher died on 2011-03-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q294358', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 68, living_status = 'deceased' WHERE id = 'ent_warren-christopher';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_madeleine-albright_2022', 'ent_madeleine-albright', '2022-03-23', 2022, 'death', 'biography',
   'Madeleine Albright died on 2022-03-23', 'Madeleine Albright died on 2022-03-23 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q174438', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 85, living_status = 'deceased' WHERE id = 'ent_madeleine-albright';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_roger-taney_1864', 'ent_roger-taney', '1864-10-12', 1864, 'death', 'biography',
   'Roger B. Taney died on 1864-10-12', 'Roger B. Taney died on 1864-10-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q359470', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_roger-taney';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_salmon-chase_1873', 'ent_salmon-chase', '1873-05-07', 1873, 'death', 'biography',
   'Salmon P. Chase died on 1873-05-07', 'Salmon P. Chase died on 1873-05-07 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q433051', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_salmon-chase';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_melville-fuller_1910', 'ent_melville-fuller', '1910-07-04', 1910, 'death', 'biography',
   'Melville Fuller died on 1910-07-04', 'Melville Fuller died on 1910-07-04 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q943046', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 121, living_status = 'deceased' WHERE id = 'ent_melville-fuller';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_warren-burger_1995', 'ent_warren-burger', '1995-06-25', 1995, 'death', 'biography',
   'Warren E. Burger died on 1995-06-25', 'Warren E. Burger died on 1995-06-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q346685', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_warren-burger';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_william-rehnquist_2005', 'ent_william-rehnquist', '2005-09-03', 2005, 'death', 'biography',
   'William Rehnquist died on 2005-09-03', 'William Rehnquist died on 2005-09-03 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q311562', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 62, living_status = 'deceased' WHERE id = 'ent_william-rehnquist';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ruth-bader-ginsburg_2020', 'ent_ruth-bader-ginsburg', '2020-09-18', 2020, 'death', 'biography',
   'Ruth Bader Ginsburg died on 2020-09-18', 'Ruth Bader Ginsburg died on 2020-09-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q11116', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 66, living_status = 'deceased' WHERE id = 'ent_ruth-bader-ginsburg';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_sandra-day-oconnor_2023', 'ent_sandra-day-oconnor', '2023-12-01', 2023, 'death', 'biography',
   'Sandra Day O''Connor died on 2023-12-01', 'Sandra Day O''Connor died on 2023-12-01 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q11132', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 71, living_status = 'deceased' WHERE id = 'ent_sandra-day-oconnor';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_sacagawea_1812', 'ent_sacagawea', '1812-12-12', 1812, 'death', 'biography',
   'Sacagawea died on 1812-12-12', 'Sacagawea died on 1812-12-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q238960', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 24, living_status = 'deceased' WHERE id = 'ent_sacagawea';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_meriwether-lewis_1809', 'ent_meriwether-lewis', '1809-10-11', 1809, 'death', 'biography',
   'Meriwether Lewis died on 1809-10-11', 'Meriwether Lewis died on 1809-10-11 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q313492', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 35, living_status = 'deceased' WHERE id = 'ent_meriwether-lewis';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_william-clark_1838', 'ent_william-clark', '1838-09-01', 1838, 'death', 'biography',
   'William Clark died on 1838-09-01', 'William Clark died on 1838-09-01 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q355348', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 68, living_status = 'deceased' WHERE id = 'ent_william-clark';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_zebulon-pike_1813', 'ent_zebulon-pike', '1813-04-27', 1813, 'death', 'biography',
   'Zebulon Pike died on 1813-04-27', 'Zebulon Pike died on 1813-04-27 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q169549', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 121, living_status = 'deceased' WHERE id = 'ent_zebulon-pike';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_robert-peary_1920', 'ent_robert-peary', '1920-02-20', 1920, 'death', 'biography',
   'Robert Peary died on 1920-02-20', 'Robert Peary died on 1920-02-20 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q186585', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 64, living_status = 'deceased' WHERE id = 'ent_robert-peary';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_matthew-henson_1955', 'ent_matthew-henson', '1955-03-09', 1955, 'death', 'biography',
   'Matthew Henson died on 1955-03-09', 'Matthew Henson died on 1955-03-09 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q976683', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 92, living_status = 'deceased' WHERE id = 'ent_matthew-henson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_roald-amundsen_1928', 'ent_roald-amundsen', '1928-06-18', 1928, 'death', 'biography',
   'Roald Amundsen died on 1928-06-18', 'Roald Amundsen died on 1928-06-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q926', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 76, living_status = 'deceased' WHERE id = 'ent_roald-amundsen';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_robert-falcon-scott_1912', 'ent_robert-falcon-scott', '1912-03-29', 1912, 'death', 'biography',
   'Robert Falcon Scott died on 1912-03-29', 'Robert Falcon Scott died on 1912-03-29 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q102527', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 44, living_status = 'deceased' WHERE id = 'ent_robert-falcon-scott';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_yuri-gagarin_1968', 'ent_yuri-gagarin', '1968-03-27', 1968, 'death', 'biography',
   'Yuri Gagarin died on 1968-03-27', 'Yuri Gagarin died on 1968-03-27 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q7327', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 34, living_status = 'deceased' WHERE id = 'ent_yuri-gagarin';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_alan-bean_2018', 'ent_alan-bean', '2018-05-26', 2018, 'death', 'biography',
   'Alan Bean died on 2018-05-26', 'Alan Bean died on 2018-05-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q310924', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 86, living_status = 'deceased' WHERE id = 'ent_alan-bean';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_pete-conrad_1999', 'ent_pete-conrad', '1999-07-08', 1999, 'death', 'biography',
   'Pete Conrad died on 1999-07-08', 'Pete Conrad died on 1999-07-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q213076', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 69, living_status = 'deceased' WHERE id = 'ent_pete-conrad';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_sitting-bull_1890', 'ent_sitting-bull', '1890-12-15', 1890, 'death', 'biography',
   'Sitting Bull died on 1890-12-15', 'Sitting Bull died on 1890-12-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q43527', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 59, living_status = 'deceased' WHERE id = 'ent_sitting-bull';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_red-cloud_1909', 'ent_red-cloud', '1909-12-10', 1909, 'death', 'biography',
   'Red Cloud died on 1909-12-10', 'Red Cloud died on 1909-12-10 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q312721', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 135, living_status = 'deceased' WHERE id = 'ent_red-cloud';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_pocahontas_1617', 'ent_pocahontas', '1617-03-00', 1617, 'death', 'biography',
   'Pocahontas died on 1617-03-00', 'Pocahontas died on 1617-03-00 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q193406', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 10, living_status = 'deceased' WHERE id = 'ent_pocahontas';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_squanto_1622', 'ent_squanto', '1622-11-30', 1622, 'death', 'biography',
   'Squanto died on 1622-11-30', 'Squanto died on 1622-11-30 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q711498', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 17, living_status = 'deceased' WHERE id = 'ent_squanto';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_massasoit_1662', 'ent_massasoit', '1662-01-01', 1662, 'death', 'biography',
   'Massasoit died on 1662-01-01', 'Massasoit died on 1662-01-01 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q739194', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 42, living_status = 'deceased' WHERE id = 'ent_massasoit';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_metacom_1676', 'ent_metacom', '1676-08-12', 1676, 'death', 'biography',
   'Metacomet died on 1676-08-12', 'Metacomet died on 1676-08-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q729648', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_metacom';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_osceola_1838', 'ent_osceola', '1838-01-30', 1838, 'death', 'biography',
   'Osceola died on 1838-01-30', 'Osceola died on 1838-01-30 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q335165', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 122, living_status = 'deceased' WHERE id = 'ent_osceola';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_quanah-parker_1911', 'ent_quanah-parker', '1911-02-23', 1911, 'death', 'biography',
   'Quanah Parker died on 1911-02-23', 'Quanah Parker died on 1911-02-23 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1343075', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 75, living_status = 'deceased' WHERE id = 'ent_quanah-parker';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_victorio_1880', 'ent_victorio', '1880-10-14', 1880, 'death', 'biography',
   'Victorio died on 1880-10-14', 'Victorio died on 1880-10-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q249278', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 27, living_status = 'deceased' WHERE id = 'ent_victorio';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_wovoka_1932', 'ent_wovoka', '1932-09-20', 1932, 'death', 'biography',
   'Wovoka died on 1932-09-20', 'Wovoka died on 1932-09-20 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q558420', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 76, living_status = 'deceased' WHERE id = 'ent_wovoka';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_standing-bear_1908', 'ent_standing-bear', '1908-01-01', 1908, 'death', 'biography',
   'Standing Bear died on 1908-01-01', 'Standing Bear died on 1908-01-01 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q4896726', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 54, living_status = 'deceased' WHERE id = 'ent_standing-bear';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_sarah-winnemucca_1891', 'ent_sarah-winnemucca', '1891-10-17', 1891, 'death', 'biography',
   'Sarah Winnemucca died on 1891-10-17', 'Sarah Winnemucca died on 1891-10-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q438194', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 48, living_status = 'deceased' WHERE id = 'ent_sarah-winnemucca';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_zitkala-sa_1938', 'ent_zitkala-sa', '1938-01-28', 1938, 'death', 'biography',
   'Zitkala-Ša died on 1938-01-28', 'Zitkala-Ša died on 1938-01-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2668090', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_zitkala-sa';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_phillis-wheatley_1784', 'ent_phillis-wheatley', '1784-12-05', 1784, 'death', 'biography',
   'Phillis Wheatley died on 1784-12-05', 'Phillis Wheatley died on 1784-12-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q257911', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 23, living_status = 'deceased' WHERE id = 'ent_phillis-wheatley';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_paul-cuffe_1817', 'ent_paul-cuffe', '1817-09-09', 1817, 'death', 'biography',
   'Paul Cuffe died on 1817-09-09', 'Paul Cuffe died on 1817-09-09 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q3544162', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 97, living_status = 'deceased' WHERE id = 'ent_paul-cuffe';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_peter-salem_1816', 'ent_peter-salem', '1816-08-16', 1816, 'death', 'biography',
   'Peter Salem died on 1816-08-16', 'Peter Salem died on 1816-08-16 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q7176756', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 176, living_status = 'deceased' WHERE id = 'ent_peter-salem';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_prince-hall_1807', 'ent_prince-hall', '1807-01-01', 1807, 'death', 'biography',
   'Prince Hall died on 1807-01-01', 'Prince Hall died on 1807-01-01 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q978424', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 72, living_status = 'deceased' WHERE id = 'ent_prince-hall';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_robert-purvis_1898', 'ent_robert-purvis', '1898-04-15', 1898, 'death', 'biography',
   'Robert Purvis died on 1898-04-15', 'Robert Purvis died on 1898-04-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q7349067', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 108, living_status = 'deceased' WHERE id = 'ent_robert-purvis';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_william-still_1902', 'ent_william-still', '1902-07-14', 1902, 'death', 'biography',
   'William Still died on 1902-07-14', 'William Still died on 1902-07-14 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q3568976', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 104, living_status = 'deceased' WHERE id = 'ent_william-still';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_susan-b-anthony_1906', 'ent_susan-b-anthony', '1906-03-13', 1906, 'death', 'biography',
   'Susan B. Anthony died on 1906-03-13', 'Susan B. Anthony died on 1906-03-13 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q192245', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_susan-b-anthony';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_lucretia-mott_1880', 'ent_lucretia-mott', '1880-11-11', 1880, 'death', 'biography',
   'Lucretia Mott died on 1880-11-11', 'Lucretia Mott died on 1880-11-11 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q267107', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 131, living_status = 'deceased' WHERE id = 'ent_lucretia-mott';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_mary-church-terrell_1954', 'ent_mary-church-terrell', '1954-07-24', 1954, 'death', 'biography',
   'Mary Church Terrell died on 1954-07-24', 'Mary Church Terrell died on 1954-07-24 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q3296160', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 70, living_status = 'deceased' WHERE id = 'ent_mary-church-terrell';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_mary-mcleod-bethune_1955', 'ent_mary-mcleod-bethune', '1955-05-18', 1955, 'death', 'biography',
   'Mary McLeod Bethune died on 1955-05-18', 'Mary McLeod Bethune died on 1955-05-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q291068', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 12, living_status = 'deceased' WHERE id = 'ent_mary-mcleod-bethune';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_septima-clark_1987', 'ent_septima-clark', '1987-12-15', 1987, 'death', 'biography',
   'Septima Poinsette Clark died on 1987-12-15', 'Septima Poinsette Clark died on 1987-12-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q7452273', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_septima-clark';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_wyatt-tee-walker_2018', 'ent_wyatt-tee-walker', '2018-01-23', 2018, 'death', 'biography',
   'Wyatt Tee Walker died on 2018-01-23', 'Wyatt Tee Walker died on 2018-01-23 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q8039516', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 65, living_status = 'deceased' WHERE id = 'ent_wyatt-tee-walker';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_peter-norman_2006', 'ent_peter-norman', '2006-10-03', 2006, 'death', 'biography',
   'Peter Norman died on 2006-10-03', 'Peter Norman died on 2006-10-03 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q352101', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 38, living_status = 'deceased' WHERE id = 'ent_peter-norman';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_tom-seaver_2020', 'ent_tom-seaver', '2020-08-31', 2020, 'death', 'biography',
   'Tom Seaver died on 2020-08-31', 'Tom Seaver died on 2020-08-31 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1287084', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 346, living_status = 'deceased' WHERE id = 'ent_tom-seaver';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_pete-rose_2024', 'ent_pete-rose', '2024-09-30', 2024, 'death', 'biography',
   'Pete Rose died on 2024-09-30', 'Pete Rose died on 2024-09-30 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q739866', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 127, living_status = 'deceased' WHERE id = 'ent_pete-rose';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_michael-jackson_2009', 'ent_michael-jackson', '2009-06-25', 2009, 'death', 'biography',
   'Michael Jackson died on 2009-06-25', 'Michael Jackson died on 2009-06-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2831', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 51, living_status = 'deceased' WHERE id = 'ent_michael-jackson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_notorious-big_1997', 'ent_notorious-big', '1997-03-09', 1997, 'death', 'biography',
   'The Notorious B.I.G. died on 1997-03-09', 'The Notorious B.I.G. died on 1997-03-09 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q179157', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 3, living_status = 'deceased' WHERE id = 'ent_notorious-big';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_aaliyah_2001', 'ent_aaliyah', '2001-08-25', 2001, 'death', 'biography',
   'Aaliyah died on 2001-08-25', 'Aaliyah died on 2001-08-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q11617', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 22, living_status = 'deceased' WHERE id = 'ent_aaliyah';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_amy-winehouse_2011', 'ent_amy-winehouse', '2011-07-23', 2011, 'death', 'biography',
   'Amy Winehouse died on 2011-07-23', 'Amy Winehouse died on 2011-07-23 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q15897', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 14, living_status = 'deceased' WHERE id = 'ent_amy-winehouse';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_mac-miller_2018', 'ent_mac-miller', '2018-09-07', 2018, 'death', 'biography',
   'Mac Miller died on 2018-09-07', 'Mac Miller died on 2018-09-07 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q324726', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 26, living_status = 'deceased' WHERE id = 'ent_mac-miller';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_pop-smoke_2020', 'ent_pop-smoke', '2020-02-19', 2020, 'death', 'biography',
   'Pop Smoke died on 2020-02-19', 'Pop Smoke died on 2020-02-19 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q81698554', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 21, living_status = 'deceased' WHERE id = 'ent_pop-smoke';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_xxxtentacion_2018', 'ent_xxxtentacion', '2018-06-18', 2018, 'death', 'biography',
   'XXXTentacion died on 2018-06-18', 'XXXTentacion died on 2018-06-18 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q28561969', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_xxxtentacion';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_nipsey-hussle_2019', 'ent_nipsey-hussle', '2019-03-31', 2019, 'death', 'biography',
   'Nipsey Hussle died on 2019-03-31', 'Nipsey Hussle died on 2019-03-31 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2073970', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 27, living_status = 'deceased' WHERE id = 'ent_nipsey-hussle';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_marvin-gaye_1984', 'ent_marvin-gaye', '1984-04-01', 1984, 'death', 'biography',
   'Marvin Gaye died on 1984-04-01', 'Marvin Gaye died on 1984-04-01 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q189758', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 367, living_status = 'deceased' WHERE id = 'ent_marvin-gaye';
INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('ppr_work_ent_willie-nelson_plc_austin', 'ent_willie-nelson', 'plc_austin', 'work_location', unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_waylon-jennings_2002', 'ent_waylon-jennings', '2002-02-13', 2002, 'death', 'biography',
   'Waylon Jennings died on 2002-02-13', 'Waylon Jennings died on 2002-02-13 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q251287', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 44, living_status = 'deceased' WHERE id = 'ent_waylon-jennings';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_merle-haggard_2016', 'ent_merle-haggard', '2016-04-06', 2016, 'death', 'biography',
   'Merle Haggard died on 2016-04-06', 'Merle Haggard died on 2016-04-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q183092', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 66, living_status = 'deceased' WHERE id = 'ent_merle-haggard';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_tammy-wynette_1998', 'ent_tammy-wynette', '1998-04-06', 1998, 'death', 'biography',
   'Tammy Wynette died on 1998-04-06', 'Tammy Wynette died on 1998-04-06 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q234017', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 154, living_status = 'deceased' WHERE id = 'ent_tammy-wynette';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_toby-keith_2024', 'ent_toby-keith', '2024-02-05', 2024, 'death', 'biography',
   'Toby Keith died on 2024-02-05', 'Toby Keith died on 2024-02-05 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q559819', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 42, living_status = 'deceased' WHERE id = 'ent_toby-keith';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_naomi-judd_2022', 'ent_naomi-judd', '2022-04-30', 2022, 'death', 'biography',
   'Naomi Judd died on 2022-04-30', 'Naomi Judd died on 2022-04-30 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q3246911', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 58, living_status = 'deceased' WHERE id = 'ent_naomi-judd';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_andr-breton_1966', 'ent_andr-breton', '1966-09-28', 1966, 'death', 'biography',
   'André Breton died on 1966-09-28', 'André Breton died on 1966-09-28 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q161955', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_andr-breton';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_anna-j-cooper_1964', 'ent_anna-j-cooper', '1964-02-27', 1964, 'death', 'biography',
   'Anna J. Cooper died on 1964-02-27', 'Anna J. Cooper died on 1964-02-27 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q977118', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_anna-j-cooper';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_c-t-vivian_2020', 'ent_c-t-vivian', '2020-07-17', 2020, 'death', 'biography',
   'C. T. Vivian died on 2020-07-17', 'C. T. Vivian died on 2020-07-17 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q5006890', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_c-t-vivian';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_eliza-mccardle-johnson_1876', 'ent_eliza-mccardle-johnson', '1876-01-15', 1876, 'death', 'biography',
   'Eliza McCardle Johnson died on 1876-01-15', 'Eliza McCardle Johnson died on 1876-01-15 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q234295', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_eliza-mccardle-johnson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_gene-cernan_2017', 'ent_gene-cernan', '2017-01-16', 2017, 'death', 'biography',
   'Gene Cernan died on 2017-01-16', 'Gene Cernan died on 2017-01-16 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q158486', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_gene-cernan';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_fred-m-vinson_1953', 'ent_fred-m-vinson', '1953-09-08', 1953, 'death', 'biography',
   'Fred M. Vinson died on 1953-09-08', 'Fred M. Vinson died on 1953-09-08 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q460151', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_fred-m-vinson';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_george-b-mcclellan_1885', 'ent_george-b-mcclellan', '1885-10-29', 1885, 'death', 'biography',
   'George B. McClellan died on 1885-10-29', 'George B. McClellan died on 1885-10-29 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q310192', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_george-b-mcclellan';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_harlan-f-stone_1946', 'ent_harlan-f-stone', '1946-04-22', 1946, 'death', 'biography',
   'Harlan F. Stone died on 1946-04-22', 'Harlan F. Stone died on 1946-04-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q942386', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_harlan-f-stone';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_helen-herron-taft_1943', 'ent_helen-herron-taft', '1943-05-22', 1943, 'death', 'biography',
   'Helen Herron Taft died on 1943-05-22', 'Helen Herron Taft died on 1943-05-22 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q255115', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_helen-herron-taft';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_ida-saxton-mckinley_1907', 'ent_ida-saxton-mckinley', '1907-05-26', 1907, 'death', 'biography',
   'Ida Saxton McKinley died on 1907-05-26', 'Ida Saxton McKinley died on 1907-05-26 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q238397', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_ida-saxton-mckinley';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_j-e-b-stuart_1864', 'ent_j-e-b-stuart', '1864-05-12', 1864, 'death', 'biography',
   'J. E. B. Stuart died on 1864-05-12', 'J. E. B. Stuart died on 1864-05-12 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q313583', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_j-e-b-stuart';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_j-p-morgan_1913', 'ent_j-p-morgan', '1913-03-31', 1913, 'death', 'biography',
   'J. P. Morgan died on 1913-03-31', 'J. P. Morgan died on 1913-03-31 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q54168', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_j-p-morgan';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_jacqueline-kennedy-onassis_1994', 'ent_jacqueline-kennedy-onassis', '1994-05-19', 1994, 'death', 'biography',
   'Jacqueline Kennedy Onassis died on 1994-05-19', 'Jacqueline Kennedy Onassis died on 1994-05-19 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q165421', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_jacqueline-kennedy-onassis';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_julia-gardiner-tyler_1889', 'ent_julia-gardiner-tyler', '1889-07-10', 1889, 'death', 'biography',
   'Julia Gardiner Tyler died on 1889-07-10', 'Julia Gardiner Tyler died on 1889-07-10 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q234525', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_julia-gardiner-tyler';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_letitia-christian-tyler_1842', 'ent_letitia-christian-tyler', '1842-09-10', 1842, 'death', 'biography',
   'Letitia Christian Tyler died on 1842-09-10', 'Letitia Christian Tyler died on 1842-09-10 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q24790', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_letitia-christian-tyler';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_lou-henry-hoover_1944', 'ent_lou-henry-hoover', '1944-01-07', 1944, 'death', 'biography',
   'Lou Henry Hoover died on 1944-01-07', 'Lou Henry Hoover died on 1944-01-07 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q233669', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_lou-henry-hoover';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_chester-w-nimitz_1966', 'ent_chester-w-nimitz', '1966-02-20', 1966, 'death', 'biography',
   'Chester W. Nimitz died on 1966-02-20', 'Chester W. Nimitz died on 1966-02-20 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q217645', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET living_status = 'deceased' WHERE id = 'ent_chester-w-nimitz';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_mary-anne-macleod_2000', 'ent_mary-anne-macleod', '2000-08-07', 2000, 'death', 'biography',
   'Mary Anne MacLeod Trump died on 2000-08-07', 'Mary Anne MacLeod Trump died on 2000-08-07 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q22952511', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 73, living_status = 'deceased' WHERE id = 'ent_mary-anne-macleod';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_diego-rivera_1957', 'ent_diego-rivera', '1957-11-25', 1957, 'death', 'biography',
   'Diego Rivera died on 1957-11-25', 'Diego Rivera died on 1957-11-25 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q171128', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 50, living_status = 'deceased' WHERE id = 'ent_diego-rivera';
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_death_ent_cristina-kahlo_1964', 'ent_cristina-kahlo', '1964-00-00', 1964, 'death', 'biography',
   'Cristina Kahlo died on 1964-00-00', 'Cristina Kahlo died on 1964-00-00 (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q47541637', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
UPDATE person SET age_at_death = 27, living_status = 'deceased' WHERE id = 'ent_cristina-kahlo';
