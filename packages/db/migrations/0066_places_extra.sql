-- ========================================
-- Migration: Place bulk ingest
-- For 128 US places (cities + states)
-- Generated: 2026-08-09 16:11:20 UTC
-- Source: Wikipedia REST API + GeoNames
-- ========================================

-- 1. West Point (city, MS, pop=10990)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_west-point', 'place', 'west-point', 'West Point', 'published', 'en', 0,
   'The United States Military Academy (USMA), commonly known as West Point, is a United States service academy in West Point, New York, that educates cadets for service as commissioned officers in the United States Army. The academy was founded in 1802, and it is the oldest of the five American service academies. The Army has occupied the site since establishing a fort there in 1780 during the American Revolutionary War, as it sits on strategic high ground overlooking the Hudson River 50 miles (80 km) north of New York City.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_west-point', 'city', 33.60762, -88.65033, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_west-point_in_country', 'plc_west-point', 'ent_usa', 'located_in', 0.95, 'clm_wiki_west-point_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_west-point_overview', 'plc_west-point', 'overview', 'Overview',
   'The United States Military Academy (USMA), commonly known as West Point, is a United States service academy in West Point, New York, that educates cadets for service as commissioned officers in the United States Army. The academy was founded in 1802, and it is the oldest of the five American service academies. The Army has occupied the site since establishing a fort there in 1780 during the American Revolutionary War, as it sits on strategic high ground overlooking the Hudson River 50 miles (80 km) north of New York City.', '["clm_wiki_west-point_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_west-point_overview', 'plc_west-point', 'overview', 'History',
   'The United States Military Academy (USMA), commonly known as West Point, is a United States service academy in West Point, New York, that educates cadets for service as commissioned officers in the United States Army. The academy was founded in 1802, and it is the oldest of the five American service academies. The Army has occupied the site since establishing a fort there in 1780 during the American Revolutionary War, as it sits on strategic high ground overlooking the Hudson River 50 miles (80 km) north of New York City.', '["clm_wiki_west-point_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_west-point_overview', 'plc_west-point', 'overview', 'Geography',
   'The United States Military Academy (USMA), commonly known as West Point, is a United States service academy in West Point, New York, that educates cadets for service as commissioned officers in the United States Army. The academy was founded in 1802, and it is the oldest of the five American service academies. The Army has occupied the site since establishing a fort there in 1780 during the American Revolutionary War, as it sits on strategic high ground overlooking the Hudson River 50 miles (80 km) north of New York City.', '["clm_wiki_west-point_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_west-point_overview', 'plc_west-point', 'overview', 'Demographics',
   'The United States Military Academy (USMA), commonly known as West Point, is a United States service academy in West Point, New York, that educates cadets for service as commissioned officers in the United States Army. The academy was founded in 1802, and it is the oldest of the five American service academies. The Army has occupied the site since establishing a fort there in 1780 during the American Revolutionary War, as it sits on strategic high ground overlooking the Hudson River 50 miles (80 km) north of New York City.', '["clm_wiki_west-point_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_west-point_primary', 'plc_west-point', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/U.S._Military_Academy_Coat_of_Arms.svg/250px-U.S._Military_Academy_Coat_of_Arms.svg.png', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/U.S._Military_Academy_Coat_of_Arms.svg/330px-U.S._Military_Academy_Coat_of_Arms.svg.png',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'West Point',
   'West Point', 1, 10, unixepoch());

-- 2. Union (city, MO, pop=10957)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_union', 'place', 'union', 'Union', 'published', 'en', 0,
   'Union commonly refers to:Trade union, an organization of workers
Tenants union, an organization of renters
Union, in mathematics, a fundamental operation on sets', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_union', 'city', 38.45005, -91.00848, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_union_in_country', 'plc_union', 'ent_usa', 'located_in', 0.95, 'clm_wiki_union_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_union_overview', 'plc_union', 'overview', 'Overview',
   'Union commonly refers to:Trade union, an organization of workers
Tenants union, an organization of renters
Union, in mathematics, a fundamental operation on sets', '["clm_wiki_union_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_union_history', 'plc_union', 'history', 'History',
   'Arts and entertainment [ edit ] Music [ edit ] Union (band) , an American rock group Union (Union album) , 1998 Union (Chara album) , 2007 Union (Toni Childs album) , 1988 Union (Cuff the Duke album) , 2012 Union (Paradoxical Frog album) , 2011 Union , a 2001 album by Puya Union , a 2001 album by Rasa Union (Son Volt album) , 2019 Union (The Boxer Rebellion album) , 2009 Union (Yes album) , 1991 "Union" (Black Eyed Peas song) , 2005 Other uses in arts and entertainment [ edit ] Union (film) , a labor documentary released in 2024 Union (Star Wars) , a Dark Horse comics limited series Union, in the fictional Alliance–Union universe of C. J. Cherryh Union (Horse with Two Discs) , a bronze sculpture by Christopher Le Brun, 1999–2000 The Union (Marvel Team) , a Marvel Comics superhero team and comic series', '["clm_wiki_union_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_union_geography', 'plc_union', 'geography', 'Geography',
   'Music [ edit ] Union (band) , an American rock group Union (Union album) , 1998 Union (Chara album) , 2007 Union (Toni Childs album) , 1988 Union (Cuff the Duke album) , 2012 Union (Paradoxical Frog album) , 2011 Union , a 2001 album by Puya Union , a 2001 album by Rasa Union (Son Volt album) , 2019 Union (The Boxer Rebellion album) , 2009 Union (Yes album) , 1991 "Union" (Black Eyed Peas song) , 2005', '["clm_wiki_union_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_union_demographics', 'plc_union', 'demographics', 'Demographics',
   'Other uses in arts and entertainment [ edit ] Union (film) , a labor documentary released in 2024 Union (Star Wars) , a Dark Horse comics limited series Union, in the fictional Alliance–Union universe of C. J. Cherryh Union (Horse with Two Discs) , a bronze sculpture by Christopher Le Brun, 1999–2000 The Union (Marvel Team) , a Marvel Comics superhero team and comic series', '["clm_wiki_union_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 3. Cordele (city, GA, pop=10943)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_cordele', 'place', 'cordele', 'Cordele', 'published', 'en', 0,
   'Cordele is a city in and the county seat of Crisp County, Georgia, United States. The population was 11,165 at the 2010 census, and 10,220 in 2020.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_cordele', 'city', 31.96351, -83.78239, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_cordele_in_country', 'plc_cordele', 'ent_usa', 'located_in', 0.95, 'clm_wiki_cordele_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_cordele_overview', 'plc_cordele', 'overview', 'Overview',
   'Cordele is a city in and the county seat of Crisp County, Georgia, United States. The population was 11,165 at the 2010 census, and 10,220 in 2020.', '["clm_wiki_cordele_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_cordele_primary', 'plc_cordele', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/a/af/Cordele_City_Hall.JPG?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Cordele_City_Hall.JPG/330px-Cordele_City_Hall.JPG?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Cordele',
   'Cordele', 1, 10, unixepoch());

-- 4. Malvern (city, AR, pop=10928)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_malvern', 'place', 'malvern', 'Malvern', 'published', 'en', 0,
   'Malvern or Malverne may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_malvern', 'city', 34.36231, -92.81295, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_malvern_in_country', 'plc_malvern', 'ent_usa', 'located_in', 0.95, 'clm_wiki_malvern_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_malvern_overview', 'plc_malvern', 'overview', 'Overview',
   'Malvern or Malverne may refer to:', '["clm_wiki_malvern_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_malvern_history', 'plc_malvern', 'history', 'History',
   'Places [ edit ] Australia [ edit ] Malvern, South Australia , a suburb of Adelaide Malvern, Victoria , a suburb of Melbourne Malvern railway station, Melbourne City of Malvern , a former local government area near Melbourne Electoral district of Malvern , an electoral district in Victoria England [ edit ] Malvern, Worcestershire , a spa town and civil parish Malvern Hills , a ridge of hills on the boundary of Herefordshire and Worcestershire United States [ edit ] Malvern, Alabama , a town Malvern, Arkansas , a city Malvern, Illinois , an unincorporated community in Whiteside County, Illinois Malvern, Iowa , a city Malverne, New York , a village Malvern, Ohio , a village Malvern, Pennsylvania , a borough Malvern, Wisconsin , an unincorporated community Elsewhere [ edit ] Malvern, Barbados , a town in the parish of Saint Joseph Malvern, Jamaica , a village in the parish of Saint Elizabeth Malvern, Gauteng , a suburb of Johannesburg, South Africa Malvern, Queensburgh , KwaZulu-Natal, South Africa Malvern, New Zealand , a village now called Sheffield Malvern, Toronto , a neighbourhood in Toronto, Ontario, Canada', '["clm_wiki_malvern_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_malvern_geography', 'plc_malvern', 'geography', 'Geography',
   'Australia [ edit ] Malvern, South Australia , a suburb of Adelaide Malvern, Victoria , a suburb of Melbourne Malvern railway station, Melbourne City of Malvern , a former local government area near Melbourne Electoral district of Malvern , an electoral district in Victoria', '["clm_wiki_malvern_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_malvern_demographics', 'plc_malvern', 'demographics', 'Demographics',
   'England [ edit ] Malvern, Worcestershire , a spa town and civil parish Malvern Hills , a ridge of hills on the boundary of Herefordshire and Worcestershire', '["clm_wiki_malvern_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 5. Storm Lake (city, IA, pop=10910)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_storm-lake', 'place', 'storm-lake', 'Storm Lake', 'published', 'en', 0,
   'Storm Lake may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_storm-lake', 'city', 42.64109, -95.20972, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_storm-lake_in_country', 'plc_storm-lake', 'ent_usa', 'located_in', 0.95, 'clm_wiki_storm-lake_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_storm-lake_overview', 'plc_storm-lake', 'overview', 'Overview',
   'Storm Lake may refer to:', '["clm_wiki_storm-lake_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_storm-lake_history', 'plc_storm-lake', 'history', 'History',
   'Places [ edit ] Storm Lake, Iowa', '["clm_wiki_storm-lake_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_storm-lake_overview', 'plc_storm-lake', 'overview', 'History',
   'Storm Lake may refer to:', '["clm_wiki_storm-lake_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_storm-lake_overview', 'plc_storm-lake', 'overview', 'Geography',
   'Storm Lake may refer to:', '["clm_wiki_storm-lake_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_storm-lake_overview', 'plc_storm-lake', 'overview', 'Demographics',
   'Storm Lake may refer to:', '["clm_wiki_storm-lake_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 6. Lincolnton (city, NC, pop=10900)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_lincolnton', 'place', 'lincolnton', 'Lincolnton', 'published', 'en', 0,
   'Lincolnton may refer to:Lincolnton, North Carolina
Lincolnton, Georgia', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_lincolnton', 'city', 35.47375, -81.25453, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_lincolnton_in_country', 'plc_lincolnton', 'ent_usa', 'located_in', 0.95, 'clm_wiki_lincolnton_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_lincolnton_overview', 'plc_lincolnton', 'overview', 'Overview',
   'Lincolnton may refer to:Lincolnton, North Carolina
Lincolnton, Georgia', '["clm_wiki_lincolnton_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());


-- 7. Ironton (city, OH, pop=10900)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_ironton', 'place', 'ironton', 'Ironton', 'published', 'en', 0,
   'Ironton is the name of several places in the United States:Ironton, Arkansas
Ironton, Colorado
Ironton, Indiana
Ironton, Louisiana
Ironton, Michigan
Ironton, Minnesota
Ironton, Missouri
Ironton, Montana
Ironton, New York
Ironton, Ohio
Ironton, Pennsylvania
Ironton, Texas
Ironton, Utah
Ironton, Wisconsin:
Ironton, Wisconsin
Ironton (town), Wisconsin
Oxmoor, Alabama, also known as Ironton
Ironton Creek in Crow Wing County, Minnesota
Ironton Flats in Madera County, California
Ironton Hollow in Iron County, Missouri
Ironton Ridge in Reynolds County, Missouri
Irontone Springs in Otsego County, Michigan', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_ironton', 'city', 38.53675, -82.68294, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_ironton_in_country', 'plc_ironton', 'ent_usa', 'located_in', 0.95, 'clm_wiki_ironton_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_ironton_overview', 'plc_ironton', 'overview', 'Overview',
   'Ironton is the name of several places in the United States:Ironton, Arkansas
Ironton, Colorado
Ironton, Indiana
Ironton, Louisiana
Ironton, Michigan
Ironton, Minnesota
Ironton, Missouri
Ironton, Montana
Ironton, New York
Ironton, Ohio
Ironton, Pennsylvania
Ironton, Texas
Ironton, Utah
Ironton, Wisconsin:
Ironton, Wisconsin
Ironton (town), Wisconsin
Oxmoor, Alabama, also known as Ironton
Ironton Creek in Crow Wing County, Minnesota
Ironton Flats in Madera County, California
Ironton Hollow in Iron County, Missouri
Ironton Ridge in Reynolds County, Missouri
Irontone Springs in Otsego County, Michigan', '["clm_wiki_ironton_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());


-- 8. DeRidder (city, LA, pop=10890)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_deridder', 'place', 'deridder', 'DeRidder', 'published', 'en', 0,
   'DeRidder is a city in and the parish seat of Beauregard Parish, Louisiana, United States. A small portion of the city extends into Vernon Parish. As of the 2020 census, DeRidder had a population of 9,852. It is the smaller principal city of the DeRidder-Fort Polk South CSA, a Combined Statistical Area that includes the Fort Polk South and DeRidder micropolitan areas, which had a combined population of 87,988 at the 2010 census.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_deridder', 'city', 30.84631, -93.28905, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_deridder_in_country', 'plc_deridder', 'ent_usa', 'located_in', 0.95, 'clm_wiki_deridder_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_deridder_overview', 'plc_deridder', 'overview', 'Overview',
   'DeRidder is a city in and the parish seat of Beauregard Parish, Louisiana, United States. A small portion of the city extends into Vernon Parish. As of the 2020 census, DeRidder had a population of 9,852. It is the smaller principal city of the DeRidder-Fort Polk South CSA, a Combined Statistical Area that includes the Fort Polk South and DeRidder micropolitan areas, which had a combined population of 87,988 at the 2010 census.', '["clm_wiki_deridder_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_deridder_primary', 'plc_deridder', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/e/ec/BeauregardCourthouse.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/BeauregardCourthouse.jpg/330px-BeauregardCourthouse.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'DeRidder',
   'DeRidder', 1, 10, unixepoch());

-- 9. Taylorville (city, IL, pop=10873)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_taylorville', 'place', 'taylorville', 'Taylorville', 'published', 'en', 0,
   'Taylorville may refer to the following places:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_taylorville', 'city', 39.54894, -89.29453, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_taylorville_in_country', 'plc_taylorville', 'ent_usa', 'located_in', 0.95, 'clm_wiki_taylorville_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_taylorville_overview', 'plc_taylorville', 'overview', 'Overview',
   'Taylorville may refer to the following places:', '["clm_wiki_taylorville_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_taylorville_history', 'plc_taylorville', 'history', 'History',
   'Australia [ edit ] Taylorville, South Australia , a locality Taylorville Station (reserve) , a protected area in South Australia Taylorville Station, South Australia , a locality', '["clm_wiki_taylorville_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_taylorville_geography', 'plc_taylorville', 'geography', 'Geography',
   'Canada [ edit ] Taylorville, Alberta', '["clm_wiki_taylorville_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_taylorville_demographics', 'plc_taylorville', 'demographics', 'Demographics',
   'New Zealand [ edit ] Taylorville, New Zealand', '["clm_wiki_taylorville_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 10. Coldwater (city, MI, pop=10844)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_coldwater', 'place', 'coldwater', 'Coldwater', 'published', 'en', 0,
   'Coldwater or Cold Water may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_coldwater', 'city', 41.94033, -85.00052, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_coldwater_in_country', 'plc_coldwater', 'ent_usa', 'located_in', 0.95, 'clm_wiki_coldwater_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_coldwater_overview', 'plc_coldwater', 'overview', 'Overview',
   'Coldwater or Cold Water may refer to:', '["clm_wiki_coldwater_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_coldwater_history', 'plc_coldwater', 'history', 'History',
   'Places [ edit ] Canada [ edit ] Coldwater, Ontario Coldwater First Nation , a Nlaka''pamux First Nations government in British Columbia Coldwater 1 , also known as Coldwater Indian Reserve No. 1, the main reserve of that First Nation, near Merritt Coldwater River Provincial Park , British Columbia United States [ edit ] Coldwater, Georgia Coldwater, Kansas Coldwater, Michigan Coldwater Spring , historic camp and natural site in Minnesota Coldwater, Mississippi Coldwater, Missouri Coldwater, Ohio Coldwater, Texas (disambiguation) , three places is the state Coldwater, West Virginia Coldwater Township, Butler County, Iowa Coldwater Township, Branch County, Michigan Coldwater Township, Isabella County, Michigan', '["clm_wiki_coldwater_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_coldwater_geography', 'plc_coldwater', 'geography', 'Geography',
   'Canada [ edit ] Coldwater, Ontario Coldwater First Nation , a Nlaka''pamux First Nations government in British Columbia Coldwater 1 , also known as Coldwater Indian Reserve No. 1, the main reserve of that First Nation, near Merritt Coldwater River Provincial Park , British Columbia', '["clm_wiki_coldwater_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_coldwater_demographics', 'plc_coldwater', 'demographics', 'Demographics',
   'United States [ edit ] Coldwater, Georgia Coldwater, Kansas Coldwater, Michigan Coldwater Spring , historic camp and natural site in Minnesota Coldwater, Mississippi Coldwater, Missouri Coldwater, Ohio Coldwater, Texas (disambiguation) , three places is the state Coldwater, West Virginia Coldwater Township, Butler County, Iowa Coldwater Township, Branch County, Michigan Coldwater Township, Isabella County, Michigan', '["clm_wiki_coldwater_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 11. Sweetwater (city, TX, pop=10809)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_sweetwater', 'place', 'sweetwater', 'Sweetwater', 'published', 'en', 0,
   'Sweetwater or Sweet Water may refer to:Freshwater', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_sweetwater', 'city', 32.47095, -100.40594, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_sweetwater_in_country', 'plc_sweetwater', 'ent_usa', 'located_in', 0.95, 'clm_wiki_sweetwater_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_sweetwater_overview', 'plc_sweetwater', 'overview', 'Overview',
   'Sweetwater or Sweet Water may refer to:Freshwater', '["clm_wiki_sweetwater_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_sweetwater_history', 'plc_sweetwater', 'history', 'History',
   'Places [ edit ] In the United States [ edit ] Sweet Water, Alabama Sweetwater, Arizona Sweetwater River (California) , San Diego County Sweetwater Dam , a dam across the Sweetwater River Sweetwater Reservoir , an artificial lake, formed by Sweetwater Dam Sweetwater Mountains a small mountain range in California and western Nevada Sweetwater Formation , a geologic stratigraphic formation in California Sweetwater, Miami-Dade County, Florida Sweetwater, Duval County, Florida , a place in Florida Sweetwater Ranch, Florida , an unincorporated community in Hardee County Sweetwater, Liberty County, Florida , a place in Florida Sweet Water, Illinois Sweetwater, Georgia Sweetwater, Idaho Sweetwater, Missouri Sweetwater, Nebraska Sweetwater, Nevada Sweetwater, New Jersey Sweetwater, Oklahoma Sweetwater, Tennessee Sweetwater, Texas Sweetwater Swatters , a baseball team based in Sweetwater, Texas Sweetwater County, Wyoming Sweetwater River (Wyoming) Sweetwater Township, Michigan Sweetwater Township, Clay County, North Carolina Elsewhere [ edit ] Sweetwater, London , a town built on the site of Olympic Park, London', '["clm_wiki_sweetwater_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_sweetwater_geography', 'plc_sweetwater', 'geography', 'Geography',
   'In the United States [ edit ] Sweet Water, Alabama Sweetwater, Arizona Sweetwater River (California) , San Diego County Sweetwater Dam , a dam across the Sweetwater River Sweetwater Reservoir , an artificial lake, formed by Sweetwater Dam Sweetwater Mountains a small mountain range in California and western Nevada Sweetwater Formation , a geologic stratigraphic formation in California Sweetwater, Miami-Dade County, Florida Sweetwater, Duval County, Florida , a place in Florida Sweetwater Ranch, Florida , an unincorporated community in Hardee County Sweetwater, Liberty County, Florida , a place in Florida Sweet Water, Illinois Sweetwater, Georgia Sweetwater, Idaho Sweetwater, Missouri Sweetwater, Nebraska Sweetwater, Nevada Sweetwater, New Jersey Sweetwater, Oklahoma Sweetwater, Tennessee Sweetwater, Texas Sweetwater Swatters , a baseball team based in Sweetwater, Texas Sweetwater County, Wyoming Sweetwater River (Wyoming) Sweetwater Township, Michigan Sweetwater Township, Clay County, North Carolina', '["clm_wiki_sweetwater_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_sweetwater_demographics', 'plc_sweetwater', 'demographics', 'Demographics',
   'Elsewhere [ edit ] Sweetwater, London , a town built on the site of Olympic Park, London', '["clm_wiki_sweetwater_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 12. Mount Holly (city, NJ, pop=10804)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_mount-holly', 'place', 'mount-holly', 'Mount Holly', 'published', 'en', 0,
   'Mount Holly is the name of the following places in the United States:Mount Holly, Arkansas, an unincorporated community
Mount Holly Cemetery, Little Rock, Arkansas, listed on the National Register of Historic Places (NRHP) in Arkansas
Mount Holly, Baltimore, Maryland, a neighborhood of Baltimore
Mount Holly Ski Area, Holly, Michigan
Mount Holly Cemetery, Mount Holly, New Jersey
Mount Holly Mausoleum, Little Rock, Arkansas, listed on the NRHP in Arkansas
Mount Holly, a plantation on the NRHP in Mississippi
Mount Holly, New Jersey, a township
Mount Holly Historic District, Mount Holly, New Jersey, listed on the NRHP in New Jersey
Mount Holly, North Carolina, a city 
Mount Holly Cotton Mill, Mount Holly, North Carolina, on the NRHP in North Carolina
Mount Holly, Clermont County, Ohio, an unincorporated community
Mount Holly, Warren County, Ohio, an unincorporated community
Mount Holly, South Carolina, an unincorporated community
Mount Holly, Vermont, a town
Mount Holly, Virginia, an unincorporated community', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_mount-holly', 'city', 39.99289, -74.78766, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_mount-holly_in_country', 'plc_mount-holly', 'ent_usa', 'located_in', 0.95, 'clm_wiki_mount-holly_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_mount-holly_overview', 'plc_mount-holly', 'overview', 'Overview',
   'Mount Holly is the name of the following places in the United States:Mount Holly, Arkansas, an unincorporated community
Mount Holly Cemetery, Little Rock, Arkansas, listed on the National Register of Historic Places (NRHP) in Arkansas
Mount Holly, Baltimore, Maryland, a neighborhood of Baltimore
Mount Holly Ski Area, Holly, Michigan
Mount Holly Cemetery, Mount Holly, New Jersey
Mount Holly Mausoleum, Little Rock, Arkansas, listed on the NRHP in Arkansas
Mount Holly, a plantation on the NRHP in Mississippi
Mount Holly, New Jersey, a township
Mount Holly Historic District, Mount Holly, New Jersey, listed on the NRHP in New Jersey
Mount Holly, North Carolina, a city 
Mount Holly Cotton Mill, Mount Holly, North Carolina, on the NRHP in North Carolina
Mount Holly, Clermont County, Ohio, an unincorporated community
Mount Holly, Warren County, Ohio, an unincorporated community
Mount Holly, South Carolina, an unincorporated community
Mount Holly, Vermont, a town
Mount Holly, Virginia, an unincorporated community', '["clm_wiki_mount-holly_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_mount-holly_overview', 'plc_mount-holly', 'overview', 'History',
   'Mount Holly is the name of the following places in the United States:Mount Holly, Arkansas, an unincorporated community
Mount Holly Cemetery, Little Rock, Arkansas, listed on the National Register of Historic Places (NRHP) in Arkansas
Mount Holly, Baltimore, Maryland, a neighborhood of Baltimore
Mount Holly Ski Area, Holly, Michigan
Mount Holly Cemetery, Mount Holly, New Jersey
Mount Holly Mausoleum, Little Rock, Arkansas, listed on the NRHP in Arkansas
Mount Holly, a plantation on the NRHP in Mississippi
Mount Holly, New Jersey, a township
Mount Holly Historic District, Mount Holly, New Jersey, listed on the NRHP in New Jersey
Mount Holly, North Carolina, a city 
Mount Holly Cotton Mill, Mount Holly, North Carolina, on the NRHP in North Carolina
Mount Holly, Clermont County, Ohio, an unincorporated community
Mount Holly, Warren County, Ohio, an unincorporated community
Mount Holly, South Carolina, an unincorporated community
Mount Holly, Vermont, a town
Mount Holly, Virginia, an unincorporated community', '["clm_wiki_mount-holly_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_mount-holly_overview', 'plc_mount-holly', 'overview', 'Geography',
   'Mount Holly is the name of the following places in the United States:Mount Holly, Arkansas, an unincorporated community
Mount Holly Cemetery, Little Rock, Arkansas, listed on the National Register of Historic Places (NRHP) in Arkansas
Mount Holly, Baltimore, Maryland, a neighborhood of Baltimore
Mount Holly Ski Area, Holly, Michigan
Mount Holly Cemetery, Mount Holly, New Jersey
Mount Holly Mausoleum, Little Rock, Arkansas, listed on the NRHP in Arkansas
Mount Holly, a plantation on the NRHP in Mississippi
Mount Holly, New Jersey, a township
Mount Holly Historic District, Mount Holly, New Jersey, listed on the NRHP in New Jersey
Mount Holly, North Carolina, a city 
Mount Holly Cotton Mill, Mount Holly, North Carolina, on the NRHP in North Carolina
Mount Holly, Clermont County, Ohio, an unincorporated community
Mount Holly, Warren County, Ohio, an unincorporated community
Mount Holly, South Carolina, an unincorporated community
Mount Holly, Vermont, a town
Mount Holly, Virginia, an unincorporated community', '["clm_wiki_mount-holly_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_mount-holly_overview', 'plc_mount-holly', 'overview', 'Demographics',
   'Mount Holly is the name of the following places in the United States:Mount Holly, Arkansas, an unincorporated community
Mount Holly Cemetery, Little Rock, Arkansas, listed on the National Register of Historic Places (NRHP) in Arkansas
Mount Holly, Baltimore, Maryland, a neighborhood of Baltimore
Mount Holly Ski Area, Holly, Michigan
Mount Holly Cemetery, Mount Holly, New Jersey
Mount Holly Mausoleum, Little Rock, Arkansas, listed on the NRHP in Arkansas
Mount Holly, a plantation on the NRHP in Mississippi
Mount Holly, New Jersey, a township
Mount Holly Historic District, Mount Holly, New Jersey, listed on the NRHP in New Jersey
Mount Holly, North Carolina, a city 
Mount Holly Cotton Mill, Mount Holly, North Carolina, on the NRHP in North Carolina
Mount Holly, Clermont County, Ohio, an unincorporated community
Mount Holly, Warren County, Ohio, an unincorporated community
Mount Holly, South Carolina, an unincorporated community
Mount Holly, Vermont, a town
Mount Holly, Virginia, an unincorporated community', '["clm_wiki_mount-holly_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 13. Marinette (city, WI, pop=10799)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_marinette', 'place', 'marinette', 'Marinette', 'published', 'en', 0,
   'Marinette may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_marinette', 'city', 45.09998, -87.63066, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_marinette_in_country', 'plc_marinette', 'ent_usa', 'located_in', 0.95, 'clm_wiki_marinette_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_marinette_overview', 'plc_marinette', 'overview', 'Overview',
   'Marinette may refer to:', '["clm_wiki_marinette_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_marinette_history', 'plc_marinette', 'history', 'History',
   'Places [ edit ] Marinette, Arizona , a ghost town in Maricopa County, U.S. Marinette, Nova Scotia , a community of the Halifax Regional Municipality in Canada Marinette, Wisconsin , a city in Wisconsin bordering Michigan, U.S. Marinette County, Wisconsin , the county in the northeast corner of Wisconsin, U.S.', '["clm_wiki_marinette_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_marinette_geography', 'plc_marinette', 'geography', 'Geography',
   'Other uses [ edit ] Marinette (Vodou) , a cruel and vicious loa (spirit) in Haitian Vodou Marinette Dupain-Cheng , a.k.a. Ladybug, the female title character of the French animated series Miraculous: Tales of Ladybug &amp; Cat Noir Marinette Pichon (born in 1975), a French football player Marinette Yacht (1954–1991), a line of motor yachts built by Aluminum Cruisers Inc. USS Marinette (YTB-791) , a 1967 United States Navy harbor tug', '["clm_wiki_marinette_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());


-- 14. Van Wert (city, OH, pop=10798)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_van-wert', 'place', 'van-wert', 'Van Wert', 'published', 'en', 0,
   'Van Wert may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_van-wert', 'city', 40.86949, -84.58412, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_van-wert_in_country', 'plc_van-wert', 'ent_usa', 'located_in', 0.95, 'clm_wiki_van-wert_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_van-wert_overview', 'plc_van-wert', 'overview', 'Overview',
   'Van Wert may refer to:', '["clm_wiki_van-wert_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_van-wert_history', 'plc_van-wert', 'history', 'History',
   'Places in the United States [ edit ] Van Wert, Georgia , an unincorporated community Van Wert, Iowa , a city Van Wert County, Ohio Van Wert, Ohio , a city and the county seat', '["clm_wiki_van-wert_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_van-wert_geography', 'plc_van-wert', 'geography', 'Geography',
   'Other uses [ edit ] Isaac Van Wart (1762–1828), also spelled Van Wert, New York militiaman, one of the three men who captured British Major John André Van Wert High School , Van Wert, Ohio', '["clm_wiki_van-wert_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_van-wert_overview', 'plc_van-wert', 'overview', 'History',
   'Van Wert may refer to:', '["clm_wiki_van-wert_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_van-wert_overview', 'plc_van-wert', 'overview', 'Geography',
   'Van Wert may refer to:', '["clm_wiki_van-wert_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_van-wert_overview', 'plc_van-wert', 'overview', 'Demographics',
   'Van Wert may refer to:', '["clm_wiki_van-wert_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 15. Monroe (city, WI, pop=10796)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_monroe', 'place', 'monroe', 'Monroe', 'published', 'en', 0,
   'Monroe or Monroes may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_monroe', 'city', 42.60112, -89.63845, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_monroe_in_country', 'plc_monroe', 'ent_usa', 'located_in', 0.95, 'clm_wiki_monroe_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_monroe_overview', 'plc_monroe', 'overview', 'Overview',
   'Monroe or Monroes may refer to:', '["clm_wiki_monroe_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_monroe_history', 'plc_monroe', 'history', 'History',
   'People and fictional characters [ edit ] Monroe (surname) Monroe (given name) James Monroe , 5th President of the United States Marilyn Monroe , actress and model Monroe (singer) , singer representing France in the 2026 Eurovision Song Contest', '["clm_wiki_monroe_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_monroe_geography', 'plc_monroe', 'geography', 'Geography',
   'Places [ edit ] United States [ edit ] Monroe, Arkansas , an unincorporated community and census-designated place Fort Monroe (Yosemite) , California, a historic site Monroe, Connecticut , a town Lake Monroe (Florida) Monroe, Georgia , a city Monroe, Adams County, Indiana , a town Monroe, Tippecanoe County, Indiana , an unincorporated community Lake Monroe (Indiana) , a reservoir Monroe, Iowa , a city Monroe, Kentucky , an unincorporated community Monroe, Louisiana , the most populous city with the name Monroe Monroe, Maine , a town Monroe, Massachusetts , a town Monroe, Michigan , a city Lake Monroe (Mississippi) , Monroe County, Mississippi Monroe Island, in the Yellowstone River in Montana Monroe, Nebraska , a village Monroe, New Hampshire a town Mount Monroe , a peak in the White Mountains of New Hampshire Monroe, Morris County, New Jersey , an unincorporated community Monroe, Sussex County, New Jersey , an unincorporated community Monroe, New York , a town Monroe (village), New York , in the town of Monroe Monroe, North Carolina , a city Monroe, Ohio , a city Monroe, Jackson County, Ohio , an unincorporated community Monroe, Oklahoma , an unincorporated community and census-designated place Monroe, Oregon , a city Monroe, Pennsylvania , a borough Monroe, South Dakota , a town Monroe, Tennessee , an unincorporated community Monroe, Utah , a city Monroe, Virginia , an unincorporated community Fort Monroe , Hampton, Virginia, a former military installation Monroe Park , Richmond, Virginia Monroe Bay , Virginia Monroe, Washington , a city Monroe, Adams County, Wisconsin , a town Monroe (town), Green County, Wisconsin , a town Monroe, Wisconsin , a city partially within the town of Monroe Monroe Township (disambiguation) Monroe County (disambiguation) Elsewhere [ edit ] Monroe Island , South Orkney Islands, Antarctica Monroe Point, South Shetland Islands , Antarctica Monroe, Newfoundland and Labrador , Canada, a settlement Monroe, County Westmeath , Ireland, a townl', '["clm_wiki_monroe_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_monroe_demographics', 'plc_monroe', 'demographics', 'Demographics',
   'United States [ edit ] Monroe, Arkansas , an unincorporated community and census-designated place Fort Monroe (Yosemite) , California, a historic site Monroe, Connecticut , a town Lake Monroe (Florida) Monroe, Georgia , a city Monroe, Adams County, Indiana , a town Monroe, Tippecanoe County, Indiana , an unincorporated community Lake Monroe (Indiana) , a reservoir Monroe, Iowa , a city Monroe, Kentucky , an unincorporated community Monroe, Louisiana , the most populous city with the name Monroe Monroe, Maine , a town Monroe, Massachusetts , a town Monroe, Michigan , a city Lake Monroe (Mississippi) , Monroe County, Mississippi Monroe Island, in the Yellowstone River in Montana Monroe, Nebraska , a village Monroe, New Hampshire a town Mount Monroe , a peak in the White Mountains of New Hampshire Monroe, Morris County, New Jersey , an unincorporated community Monroe, Sussex County, New Jersey , an unincorporated community Monroe, New York , a town Monroe (village), New York , in the town of Monroe Monroe, North Carolina , a city Monroe, Ohio , a city Monroe, Jackson County, Ohio , an unincorporated community Monroe, Oklahoma , an unincorporated community and census-designated place Monroe, Oregon , a city Monroe, Pennsylvania , a borough Monroe, South Dakota , a town Monroe, Tennessee , an unincorporated community Monroe, Utah , a city Monroe, Virginia , an unincorporated community Fort Monroe , Hampton, Virginia, a former military installation Monroe Park , Richmond, Virginia Monroe Bay , Virginia Monroe, Washington , a city Monroe, Adams County, Wisconsin , a town Monroe (town), Green County, Wisconsin , a town Monroe, Wisconsin , a city partially within the town of Monroe Monroe Township (disambiguation) Monroe County (disambiguation)', '["clm_wiki_monroe_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 16. Arkadelphia (city, AR, pop=10745)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_arkadelphia', 'place', 'arkadelphia', 'Arkadelphia', 'published', 'en', 0,
   'Arkadelphia is a city in and the county seat of Clark County, Arkansas, United States. The city is located near the Ouachita River at the foothills of the Ouachita Mountains, along the Interstate 30 corridor between Little Rock and Texarkana. As of the 2020 census, the population was 10,380.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_arkadelphia', 'city', 34.12093, -93.05378, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_arkadelphia_in_country', 'plc_arkadelphia', 'ent_usa', 'located_in', 0.95, 'clm_wiki_arkadelphia_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_arkadelphia_overview', 'plc_arkadelphia', 'overview', 'Overview',
   'Arkadelphia is a city in and the county seat of Clark County, Arkansas, United States. The city is located near the Ouachita River at the foothills of the Ouachita Mountains, along the Interstate 30 corridor between Little Rock and Texarkana. As of the 2020 census, the population was 10,380.', '["clm_wiki_arkadelphia_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_arkadelphia_primary', 'plc_arkadelphia', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/3/3e/Downtown_Arkadelphia%2C_AR_001.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Downtown_Arkadelphia%2C_AR_001.jpg/330px-Downtown_Arkadelphia%2C_AR_001.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Arkadelphia',
   'Arkadelphia', 1, 10, unixepoch());

-- 17. Vermillion (city, SD, pop=10738)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_vermillion', 'place', 'vermillion', 'Vermillion', 'published', 'en', 0,
   'Vermilion is a color family and toxic pigment most often used between antiquity and the 19th century and made from the powdered mineral cinnabar. It is synonymous with red orange.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_vermillion', 'city', 42.77944, -96.92921, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_vermillion_in_country', 'plc_vermillion', 'ent_usa', 'located_in', 0.95, 'clm_wiki_vermillion_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_vermillion_overview', 'plc_vermillion', 'overview', 'Overview',
   'Vermilion is a color family and toxic pigment most often used between antiquity and the 19th century and made from the powdered mineral cinnabar. It is synonymous with red orange.', '["clm_wiki_vermillion_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_vermillion_primary', 'plc_vermillion', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/5/57/Lacquerware-roundbox-w-children.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Lacquerware-roundbox-w-children.jpg/330px-Lacquerware-roundbox-w-children.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Vermillion',
   'Vermillion', 1, 10, unixepoch());

-- 18. Bolivar (city, MO, pop=10714)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_bolivar', 'place', 'bolivar', 'Bolivar', 'published', 'en', 0,
   'Simón José Antonio de la Santísima Trinidad Bolívar Palacios Ponte y Blanco was a Venezuelan military officer and statesman who led what are currently the countries of Bolivia, Colombia, Ecuador, Panama, Peru, and Venezuela to independence from the Spanish Empire. He is known colloquially as El Libertador, "the Liberator," of America.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_bolivar', 'city', 37.61448, -93.41047, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_bolivar_in_country', 'plc_bolivar', 'ent_usa', 'located_in', 0.95, 'clm_wiki_bolivar_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bolivar_overview', 'plc_bolivar', 'overview', 'Overview',
   'Simón José Antonio de la Santísima Trinidad Bolívar Palacios Ponte y Blanco was a Venezuelan military officer and statesman who led what are currently the countries of Bolivia, Colombia, Ecuador, Panama, Peru, and Venezuela to independence from the Spanish Empire. He is known colloquially as El Libertador, "the Liberator," of America.', '["clm_wiki_bolivar_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_bolivar_primary', 'plc_bolivar', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Sim%C3%B3n_Bol%C3%ADvar._Toro_Moreno%2C_Luis._1922%2C_Legislative_Palace%2C_La_Paz.png/3840px-Sim%C3%B3n_Bol%C3%ADvar._Toro_Moreno%2C_Luis._1922%2C_Legislative_Palace%2C_La_Paz.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Sim%C3%B3n_Bol%C3%ADvar._Toro_Moreno%2C_Luis._1922%2C_Legislative_Palace%2C_La_Paz.png/330px-Sim%C3%B3n_Bol%C3%ADvar._Toro_Moreno%2C_Luis._1922%2C_Legislative_Palace%2C_La_Paz.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Bolivar',
   'Bolivar', 1, 10, unixepoch());

-- 19. Bastrop (city, LA, pop=10713)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_bastrop', 'place', 'bastrop', 'Bastrop', 'published', 'en', 0,
   'Bastrop may refer to the following places in the US, named directly or indirectly for Felipe Enrique Neri, Baron de Bastrop:Bastrop, Louisiana
Bastrop High School (Louisiana)
Bastrop County, Texas
Bastrop, Texas
Bastrop High School (Texas)
Bastrop Bay, in Brazoria County, Texas', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_bastrop', 'city', 32.77828, -91.91144, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_bastrop_in_country', 'plc_bastrop', 'ent_usa', 'located_in', 0.95, 'clm_wiki_bastrop_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bastrop_overview', 'plc_bastrop', 'overview', 'Overview',
   'Bastrop may refer to the following places in the US, named directly or indirectly for Felipe Enrique Neri, Baron de Bastrop:Bastrop, Louisiana
Bastrop High School (Louisiana)
Bastrop County, Texas
Bastrop, Texas
Bastrop High School (Texas)
Bastrop Bay, in Brazoria County, Texas', '["clm_wiki_bastrop_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());


-- 20. Atchison (city, KS, pop=10712)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_atchison', 'place', 'atchison', 'Atchison', 'published', 'en', 0,
   'Atchison may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_atchison', 'city', 39.56305, -95.12164, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_atchison_in_country', 'plc_atchison', 'ent_usa', 'located_in', 0.95, 'clm_wiki_atchison_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_atchison_overview', 'plc_atchison', 'overview', 'Overview',
   'Atchison may refer to:', '["clm_wiki_atchison_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_atchison_history', 'plc_atchison', 'history', 'History',
   'Places [ edit ] In the United States: Atchison, California , a former settlement Atchison, Kansas , a city Atchison County, Kansas Atchison County, Missouri', '["clm_wiki_atchison_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_atchison_geography', 'plc_atchison', 'geography', 'Geography',
   'Other uses [ edit ] Atchison (surname) , a list of people with this surname Atchison, Topeka and Santa Fe Railway , a former railway company from 1859 to 1996 serving the western half of the United States " On the Atchison, Topeka and the Santa Fe ", an Academy Award-winning song which refers to the railroad', '["clm_wiki_atchison_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());


-- 21. Batesville (city, AR, pop=10668)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_batesville', 'place', 'batesville', 'Batesville', 'published', 'en', 0,
   'Batesville may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_batesville', 'city', 35.7698, -91.64097, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_batesville_in_country', 'plc_batesville', 'ent_usa', 'located_in', 0.95, 'clm_wiki_batesville_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_batesville_overview', 'plc_batesville', 'overview', 'Overview',
   'Batesville may refer to:', '["clm_wiki_batesville_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_batesville_history', 'plc_batesville', 'history', 'History',
   'Places in the United States [ edit ] Batesville, Alabama Batesville, Arkansas Batesville, Georgia Batesville, Indiana Batesville, Mississippi Batesville, Missouri Batesville, Ohio Batesville, South Carolina Batesville, Texas Batesville, Virginia', '["clm_wiki_batesville_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_batesville_geography', 'plc_batesville', 'geography', 'Geography',
   'Education [ edit ] Batesville School District Batesville High School (Arkansas) Batesville High School (Indiana)', '["clm_wiki_batesville_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());


-- 22. Kennett (city, MO, pop=10662)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_kennett', 'place', 'kennett', 'Kennett', 'published', 'en', 0,
   'Kennett may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_kennett', 'city', 36.23618, -90.05565, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_kennett_in_country', 'plc_kennett', 'ent_usa', 'located_in', 0.95, 'clm_wiki_kennett_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_kennett_overview', 'plc_kennett', 'overview', 'Overview',
   'Kennett may refer to:', '["clm_wiki_kennett_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_kennett_history', 'plc_kennett', 'history', 'History',
   'Places [ edit ] Settlements [ edit ] Kennett, California Kennett, Cambridgeshire , England Kennett, Missouri Kennett River, Victoria , town in Australia Kennett Township, Chester County, Pennsylvania West Kennett and East Kennett , villages in Wiltshire, England Mountains [ edit ] Mount Kennett , mountain in Antarctica Kennett Ridge , ridge in Antarctica Rivers [ edit ] Kennett River (disambiguation) River Kennett , Suffolk and Cambridgeshire, England Other locations [ edit ] Kennett Square, Pennsylvania , a borough Kennett Memorial Airport , Missouri Old Kennett Meetinghouse , Kennett Township, Pennsylvania', '["clm_wiki_kennett_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_kennett_geography', 'plc_kennett', 'geography', 'Geography',
   'Settlements [ edit ] Kennett, California Kennett, Cambridgeshire , England Kennett, Missouri Kennett River, Victoria , town in Australia Kennett Township, Chester County, Pennsylvania West Kennett and East Kennett , villages in Wiltshire, England', '["clm_wiki_kennett_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_kennett_demographics', 'plc_kennett', 'demographics', 'Demographics',
   'Mountains [ edit ] Mount Kennett , mountain in Antarctica Kennett Ridge , ridge in Antarctica', '["clm_wiki_kennett_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 23. Placerville (city, CA, pop=10650)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_placerville', 'place', 'placerville', 'Placerville', 'published', 'en', 0,
   'Placerville is the name of several places in the United States:Placerville, California
Placerville, Colorado
Placerville, Idaho', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_placerville', 'city', 38.72963, -120.79855, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_placerville_in_country', 'plc_placerville', 'ent_usa', 'located_in', 0.95, 'clm_wiki_placerville_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_placerville_overview', 'plc_placerville', 'overview', 'Overview',
   'Placerville is the name of several places in the United States:Placerville, California
Placerville, Colorado
Placerville, Idaho', '["clm_wiki_placerville_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());


-- 24. Vernon (city, TX, pop=10573)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_vernon', 'place', 'vernon', 'Vernon', 'published', 'en', 0,
   'Vernon may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_vernon', 'city', 34.15536, -99.26628, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_vernon_in_country', 'plc_vernon', 'ent_usa', 'located_in', 0.95, 'clm_wiki_vernon_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_vernon_overview', 'plc_vernon', 'overview', 'Overview',
   'Vernon may refer to:', '["clm_wiki_vernon_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_vernon_history', 'plc_vernon', 'history', 'History',
   'Places [ edit ] Australia [ edit ] Vernon County, New South Wales Canada [ edit ] Vernon, British Columbia , a city Vernon, Ontario France [ edit ] Vernon, Ardèche Vernon, Eure United States [ edit ] Vernon, Alabama Vernon, Arizona Vernon, California Lake Vernon , California Vernon, Colorado Vernon, Connecticut Vernon, Delaware Vernon, Florida , a city Vernon Lake (Idaho) Vernon, Illinois Vernon, Indiana Vernon, Kansas Vernon Community, Hestand , Kentucky Vernon Parish, Louisiana Vernon Lake , a man-made lake in the parish Vernon, Michigan Vernon Township, Isabella County, Michigan Vernon Township, Shiawassee County, Michigan Vernon, Jasper County, Mississippi Vernon, Madison County, Mississippi Vernon, Winston County, Mississippi Vernon Township, New Jersey Vernon (town), New York Vernon (village), New York Vernon (Mount Olive, North Carolina) , a historic plantation house Vernon Township, Crawford County, Ohio Vernon Township, Scioto County, Ohio Vernon Township, Trumbull County, Ohio Vernon, Oklahoma Vernon, Portland, Oregon , a neighborhood of Portland Vernon, Texas Vernon, Utah Vernon, Vermont Vernon, West Virginia Vernon, Wisconsin , a village Vernon (community), Wisconsin , an unincorporated community Vernon County, Wisconsin Multiple countries [ edit ] Mount Vernon (disambiguation)', '["clm_wiki_vernon_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_vernon_geography', 'plc_vernon', 'geography', 'Geography',
   'Australia [ edit ] Vernon County, New South Wales', '["clm_wiki_vernon_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_vernon_demographics', 'plc_vernon', 'demographics', 'Demographics',
   'Canada [ edit ] Vernon, British Columbia , a city Vernon, Ontario', '["clm_wiki_vernon_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 25. Union City (city, TN, pop=10573)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_union-city', 'place', 'union-city', 'Union City', 'published', 'en', 0,
   'Union City may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_union-city', 'city', 36.42423, -89.05701, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_union-city_in_country', 'plc_union-city', 'ent_usa', 'located_in', 0.95, 'clm_wiki_union-city_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_union-city_overview', 'plc_union-city', 'overview', 'Overview',
   'Union City may refer to:', '["clm_wiki_union-city_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_union-city_history', 'plc_union-city', 'history', 'History',
   'Places in the United States [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} See also: Union (disambiguation) §&#160;Places Union City, California Union City, Connecticut Union City, Georgia Union City, Indiana Union City Commercial Historic District Union City in Madison County, Kentucky Union City, Michigan Union City, Montana , a ghost town Union City, New Jersey Union City, Ohio Union City, Oklahoma Union City, Pennsylvania Union City Historic District Union City, Tennessee', '["clm_wiki_union-city_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_union-city_geography', 'plc_union-city', 'geography', 'Geography',
   'Other [ edit ] Union City (film) , a 1980 American film Union City, a fictional town in the video game Urban Chaos Union City Recordings , a record label SS&#160; Union City , a cargo ship launched in 1909 as SS Iserlohn', '["clm_wiki_union-city_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_union-city_overview', 'plc_union-city', 'overview', 'History',
   'Union City may refer to:', '["clm_wiki_union-city_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_union-city_overview', 'plc_union-city', 'overview', 'Geography',
   'Union City may refer to:', '["clm_wiki_union-city_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_union-city_overview', 'plc_union-city', 'overview', 'Demographics',
   'Union City may refer to:', '["clm_wiki_union-city_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 26. Lawrenceburg (city, TN, pop=10569)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_lawrenceburg', 'place', 'lawrenceburg', 'Lawrenceburg', 'published', 'en', 0,
   'Lawrenceburg is the name of several places in the United States of America:Lawrenceburg, Indiana
Lawrenceburg, Kentucky
Lawrenceburg, Missouri
Lawrenceburg, Tennessee
Lawrenceburg, Pennsylvania, a village of Parker, Pennsylvania', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_lawrenceburg', 'city', 35.2423, -87.33474, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_lawrenceburg_in_country', 'plc_lawrenceburg', 'ent_usa', 'located_in', 0.95, 'clm_wiki_lawrenceburg_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_lawrenceburg_overview', 'plc_lawrenceburg', 'overview', 'Overview',
   'Lawrenceburg is the name of several places in the United States of America:Lawrenceburg, Indiana
Lawrenceburg, Kentucky
Lawrenceburg, Missouri
Lawrenceburg, Tennessee
Lawrenceburg, Pennsylvania, a village of Parker, Pennsylvania', '["clm_wiki_lawrenceburg_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());


-- 27. Manchester (city, TN, pop=10517)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_manchester', 'place', 'manchester', 'Manchester', 'published', 'en', 0,
   'Manchester is a city in North West England, at the centre of the eponymous county of Greater Manchester. It had a population of over 589,000 in 2024. It borders the Cheshire Plain to the south, the Pennines to the north and east, and the city of Salford to the west. The two cities and the surrounding towns form one of the United Kingdom''s most populous conurbations, the Greater Manchester Built-up Area, which has a population of 2.87 million.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_manchester', 'city', 35.48174, -86.0886, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_manchester_in_country', 'plc_manchester', 'ent_usa', 'located_in', 0.95, 'clm_wiki_manchester_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_manchester_overview', 'plc_manchester', 'overview', 'Overview',
   'Manchester is a city in North West England, at the centre of the eponymous county of Greater Manchester. It had a population of over 589,000 in 2024. It borders the Cheshire Plain to the south, the Pennines to the north and east, and the city of Salford to the west. The two cities and the surrounding towns form one of the United Kingdom''s most populous conurbations, the Greater Manchester Built-up Area, which has a population of 2.87 million.', '["clm_wiki_manchester_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_manchester_history', 'plc_manchester', 'history', 'History',
   'Toponymy [ edit ] The name Manchester originates from Mamucium , the Latin name for the city, or its variant Mancunio ; its citizens are still referred to as Mancunians. &#91; a &#93; These names are generally thought to represent a Latinised version of an older Brittonic name. It is generally accepted that the etymology of the Brittonic name is from * mamm - , which means '' breast '', in reference to a breast-shaped hill on which the city was built. &#91; 1 &#93; &#91; 2 &#93; More recent research suggests that the name could have instead come from the Brittonic * mamma , which means ''mother'', in reference to a local river goddess. &#91; 3 &#93; &#91; b &#93; The suffix -chester is from Old English ceaster (''Roman fortification'', itself a loanword from Latin castrum , ''fort; fortified town''), &#91; 1 &#93; &#91; 2 &#93; and was first used after the end of Roman rule in Britain to describe places with former links to the Roman army. &#91; 4 &#93; Nicknames for the city that originated from its role in the Industrial Revolution include "warehouse city" and " cottonopolis ". The city is widely known as ''the capital of the North '' &#91; 5 &#93; &#91; 6 &#93; &#91; 7 &#93; &#91; 8 &#93; and is part of an ongoing dispute with the larger city of Birmingham to be the unofficial second city of the United Kingdom . &#91; 9 &#93; &#91; 10 &#93; &#91; 11 &#93; &#91; 12 &#93; The city is also infrequently referred to as ''Manny'', &#91; 13 &#93; &#91; 14 &#93; &#91; 15 &#93; especially by non-Mancunians, which is considered offensive by some residents. &#91; 13 &#93; The phrase was particularly popularised by rapper Bugzy Malone ''s use of the phrase "putting Manny on the map". &#91; 14 &#93; &#91; 15 &#93; Although the name Manchester only officially applies to the metropolitan borough within the metropolitan county of Greater Manchester, &#91; 16 &#93; it has been informally applied to various other areas over the years; examples include the "Manchester City Zone", &#91; 17 &#93; " Manchester post town ", &#91; 18 &#93; and the " Manchester Congestion Charge ", &#91; 19 &#93; none of which simply cover the official confines of the city: the Manchester City zone only includes a handful of stations in the city centre; &#91; 17 &#93; the Manchester Post town covers Manchester, Sale , and Salford; &#91; 18 &#93; and the proposed boundary of the Manchester congestion charge was the M60 , not the city itself. &#91; 19 &#93; Cite error: There are &lt;ref&#160;group&#61;lower-a', '["clm_wiki_manchester_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_manchester_geography', 'plc_manchester', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Manchester For a chronological guide, see Timeline of Manchester history . Before 1066: Early history [ edit ] The first major Celtic tribe in what is now Northern England were the Brigantes ; they had a stronghold in the locality at a sandstone outcrop on which Manchester Cathedral now stands, opposite the River Irwell . Their territory extended across the fertile lowland of what is now Salford and Stretford . In 79 AD, following their conquest of Britain , the Roman general Agricola ordered the construction of a fort named Mamucium to protect Roman interests in Deva Victrix (now Chester ) and Eboracum (now York ). &#91; 1 &#93; Central Manchester has remained a continuously populated settlement since. &#91; 2 &#93; Fragments of the Mamucium fort remain visible in Castlefield . The Roman habitation of Manchester probably ended around the 3rd century; its civilian settlement appears to have been abandoned by the mid-3rd century, although the fort may have supported a small garrison until the late 3rd or early 4th century. &#91; 3 &#93; The fort was first investigated by archaeologists in 1906, &#91; 4 &#93; and opened to the public in 1984. &#91; 5 &#93; 1066–1800: Before industrialisation [ edit ] McConnel &amp; Company''s cotton mills in Ancoats , c. &#8201;1820 After the Roman withdrawal and subsequent Anglo-Saxon settlement , the centre of the town moved to the confluence of the rivers Irwell and Irk . &#91; 6 &#93; In the Normans'' Harrying of the North , much of the area surrounding Manchester was laid waste. &#91; 7 &#93; &#91; 8 &#93; The Domesday Book (1086) records Mancheste', '["clm_wiki_manchester_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_manchester_demographics', 'plc_manchester', 'demographics', 'Demographics',
   'Before 1066: Early history [ edit ] The first major Celtic tribe in what is now Northern England were the Brigantes ; they had a stronghold in the locality at a sandstone outcrop on which Manchester Cathedral now stands, opposite the River Irwell . Their territory extended across the fertile lowland of what is now Salford and Stretford . In 79 AD, following their conquest of Britain , the Roman general Agricola ordered the construction of a fort named Mamucium to protect Roman interests in Deva Victrix (now Chester ) and Eboracum (now York ). &#91; 1 &#93; Central Manchester has remained a continuously populated settlement since. &#91; 2 &#93; Fragments of the Mamucium fort remain visible in Castlefield . The Roman habitation of Manchester probably ended around the 3rd century; its civilian settlement appears to have been abandoned by the mid-3rd century, although the fort may have supported a small garrison until the late 3rd or early 4th century. &#91; 3 &#93; The fort was first investigated by archaeologists in 1906, &#91; 4 &#93; and opened to the public in 1984. &#91; 5 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center', '["clm_wiki_manchester_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_manchester_primary', 'plc_manchester', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/8/8c/Tower_Blocks_over_Knott_Mill%2C_geograph_6866152_by_David_Dixon.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Tower_Blocks_over_Knott_Mill%2C_geograph_6866152_by_David_Dixon.jpg/330px-Tower_Blocks_over_Knott_Mill%2C_geograph_6866152_by_David_Dixon.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Manchester',
   'Manchester', 1, 10, unixepoch());

-- 28. Sebring (city, FL, pop=10497)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_sebring', 'place', 'sebring', 'Sebring', 'published', 'en', 0,
   'Sebring may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_sebring', 'city', 27.49559, -81.44091, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_sebring_in_country', 'plc_sebring', 'ent_usa', 'located_in', 0.95, 'clm_wiki_sebring_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_sebring_overview', 'plc_sebring', 'overview', 'Overview',
   'Sebring may refer to:', '["clm_wiki_sebring_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_sebring_history', 'plc_sebring', 'history', 'History',
   'People [ edit ] Harold Sebring (1898–1968; aka Tom Sebring), an American judge, Florida Supreme Court justice George E. Sebring, founder of Sebring, Ohio , USA Henry Orvel Sebring, founder of Sebring, Florida , USA Janette Sebring Lowrey (1892–1986; born Janette Sebring), U.S. children''s author Jay Sebring (1933&#8211;1969), an American celebrity hair stylist Jimmy Sebring (1882–1909), American baseball player Steven Sebring (born 1966), American filmmaker William Sebring Kirkpatrick (1844–1932), U.S. politician', '["clm_wiki_sebring_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_sebring_geography', 'plc_sebring', 'geography', 'Geography',
   'Places [ edit ] Sebring, Florida , a city in Highlands County, Florida, United States Sebring Downtown Historic District Hendricks Army Airfield , a WWII Army Airfield at Sebring, that became a racetrack and civilian airport Sebring International Raceway , a road course auto racing facility in the southeastern United States Sebring Regional Airport , a public use airport six nautical miles southeast of Sebring, Florida Sebring station , a rail station Sebring, Florida metropolitan area H. Orvel Sebring House (Sebring House), an NRHP listed building Sebring High School , Sebring, Florida, USA Lake Sebring , a freshwater lake in Highlands County, Florida, United States Sebring, Ohio , a village in Mahoning County, Ohio, United States', '["clm_wiki_sebring_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_sebring_demographics', 'plc_sebring', 'demographics', 'Demographics',
   'Motorsports races [ edit ] 12 Hours of Sebring , an annual motorsport endurance race for sports cars held at Sebring International Raceway; the most famous Sebring race (the "at Sebring" race, generally) 1000 Miles of Sebring , a sports car race held at Sebring International Raceway Grand Prix of Sebring , a sports car race held at Sebring International Raceway', '["clm_wiki_sebring_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 29. Rockport (city, TX, pop=10490)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_rockport', 'place', 'rockport', 'Rockport', 'published', 'en', 0,
   'Rockport may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_rockport', 'city', 28.02077, -97.05601, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_rockport_in_country', 'plc_rockport', 'ent_usa', 'located_in', 0.95, 'clm_wiki_rockport_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rockport_overview', 'plc_rockport', 'overview', 'Overview',
   'Rockport may refer to:', '["clm_wiki_rockport_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rockport_history', 'plc_rockport', 'history', 'History',
   'Locations [ edit ] Canada [ edit ] Rockport, New Brunswick Rockport, Ontario United States [ edit ] Rockport, Arkansas Rockport, California Rockport, Illinois Rockport, Indiana Rockport Generating Station Rockport, Kansas Rockport, Kentucky Rockport, Maine Rockport, Massachusetts , a New England town Rockport (CDP), Massachusetts , the main village in the town Rockport (MBTA station) , a railroad station in the town Rockport, Michigan Rockport, Mississippi Rock Port, Missouri Rockport, Ohio Rockport Township, a defunct township of Cuyahoga County, Ohio Rockport, Texas Rockport, Washington Rockport, Wetzel County, West Virginia Rockport, Wood County, West Virginia Rockport Colony, South Dakota Rockport Lake , a reservoir behind Wanship Dam in Utah Rockport, Utah , a ghost town now under Rockport Lake Rockport State Park (Washington) Rockport State Recreation Area , Michigan', '["clm_wiki_rockport_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rockport_geography', 'plc_rockport', 'geography', 'Geography',
   '.mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Not to be confused with Brockport . Rockport may refer to: @media all and (max-width:720px){body.skin-minerva .mw-parser-output .tocright{display:none}.mw-parser-output .tocright{width:100%!important}}@media all and (min-width:720px){.mw-parser-output .tocright{float:right;clear:right;width:auto;margin:0 0 0.5em 1em}.mw-parser-output .tocright-clear-left{clear:left}.mw-parser-output .tocright-clear-both{clear:both}.mw-parser-output .tocright-clear-none{clear:none}}', '["clm_wiki_rockport_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rockport_demographics', 'plc_rockport', 'demographics', 'Demographics',
   'United States [ edit ] Rockport, Arkansas Rockport, California Rockport, Illinois Rockport, Indiana Rockport Generating Station Rockport, Kansas Rockport, Kentucky Rockport, Maine Rockport, Massachusetts , a New England town Rockport (CDP), Massachusetts , the main village in the town Rockport (MBTA station) , a railroad station in the town Rockport, Michigan Rockport, Mississippi Rock Port, Missouri Rockport, Ohio Rockport Township, a defunct township of Cuyahoga County, Ohio Rockport, Texas Rockport, Washington Rockport, Wetzel County, West Virginia Rockport, Wood County, West Virginia Rockport Colony, South Dakota Rockport Lake , a reservoir behind Wanship Dam in Utah Rockport, Utah , a ghost town now under Rockport Lake Rockport State Park (Washington) Rockport State Recreation Area , Michigan', '["clm_wiki_rockport_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 30. Burley (city, ID, pop=10436)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_burley', 'place', 'burley', 'Burley', 'published', 'en', 0,
   'Burley may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_burley', 'city', 42.53574, -113.79279, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_burley_in_country', 'plc_burley', 'ent_usa', 'located_in', 0.95, 'clm_wiki_burley_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_burley_overview', 'plc_burley', 'overview', 'Overview',
   'Burley may refer to:', '["clm_wiki_burley_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_burley_history', 'plc_burley', 'history', 'History',
   'People [ edit ] Burley (surname) Burley Mitchell , chief justice of the North Carolina Supreme Court', '["clm_wiki_burley_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_burley_geography', 'plc_burley', 'geography', 'Geography',
   'Places [ edit ] England [ edit ] Burley, Hampshire , a village and civil parish Burley, Leeds , an inner city area of Leeds Burley, Rutland , a village and civil parish Burley, Shropshire , a location Burley in Wharfedale , West Yorkshire, England, a village and civil parish United States [ edit ] Burley, Idaho , a city Burley Manor , listed on the National Register of Historic Places in Maryland Burley, Washington , a census-designated place Burley school, Chicago , a chicago public school', '["clm_wiki_burley_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_burley_demographics', 'plc_burley', 'demographics', 'Demographics',
   'England [ edit ] Burley, Hampshire , a village and civil parish Burley, Leeds , an inner city area of Leeds Burley, Rutland , a village and civil parish Burley, Shropshire , a location Burley in Wharfedale , West Yorkshire, England, a village and civil parish', '["clm_wiki_burley_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 31. Canandaigua (city, NY, pop=10431)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_canandaigua', 'place', 'canandaigua', 'Canandaigua', 'published', 'en', 0,
   'Canandaigua is a city in Ontario County, New York, United States. Its population was 10,576 at the 2020 census. It is the county seat of Ontario County; some administrative offices are at the county complex in the adjacent town of Hopewell.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_canandaigua', 'city', 42.87423, -77.28804, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_canandaigua_in_country', 'plc_canandaigua', 'ent_usa', 'located_in', 0.95, 'clm_wiki_canandaigua_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_canandaigua_overview', 'plc_canandaigua', 'overview', 'Overview',
   'Canandaigua is a city in Ontario County, New York, United States. Its population was 10,576 at the 2020 census. It is the county seat of Ontario County; some administrative offices are at the county complex in the adjacent town of Hopewell.', '["clm_wiki_canandaigua_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_canandaigua_primary', 'plc_canandaigua', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Downtown_Canandaigua%2C_NY.jpg/3840px-Downtown_Canandaigua%2C_NY.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Downtown_Canandaigua%2C_NY.jpg/330px-Downtown_Canandaigua%2C_NY.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Canandaigua',
   'Canandaigua', 1, 10, unixepoch());

-- 32. Cambridge (city, OH, pop=10402)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_cambridge', 'place', 'cambridge', 'Cambridge', 'published', 'en', 0,
   'Cambridge is a city and non-metropolitan district in the county of Cambridgeshire, England. It is the county town of Cambridgeshire and is located on the River Cam, 55 miles (89 km) north of London. As of the 2021 United Kingdom census, the population of the City of Cambridge was 145,700; the population of the wider built-up area was 181,137. There is archaeological evidence of settlement in the area dating back to as early as the Bronze Age, and Cambridge became an important trading centre during the Roman and Viking eras. The first town charters were granted in the 12th century, although modern city status was not officially conferred until 1951.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_cambridge', 'city', 40.03118, -81.58846, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_cambridge_in_country', 'plc_cambridge', 'ent_usa', 'located_in', 0.95, 'clm_wiki_cambridge_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_cambridge_overview', 'plc_cambridge', 'overview', 'Overview',
   'Cambridge is a city and non-metropolitan district in the county of Cambridgeshire, England. It is the county town of Cambridgeshire and is located on the River Cam, 55 miles (89 km) north of London. As of the 2021 United Kingdom census, the population of the City of Cambridge was 145,700; the population of the wider built-up area was 181,137. There is archaeological evidence of settlement in the area dating back to as early as the Bronze Age, and Cambridge became an important trading centre during the Roman and Viking eras. The first town charters were granted in the 12th century, although modern city status was not officially conferred until 1951.', '["clm_wiki_cambridge_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_cambridge_history', 'plc_cambridge', 'history', 'History',
   'City and district in Cambridgeshire, England .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} This article is about the city in England. For the university, see University of Cambridge . For other uses, see Cambridge (disambiguation) . City and non-metropolitan district in England @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-settlement{border-collapse:collapse;line-height:1.2em}@media(min-width:640px){.mw-parser-output .ib-settlement{width:23em}}.mw-parser-output .ib-settlement td,.mw-parser-output .ib-settlement th{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.4em 0.6em}.mw-parser-output .ib-settlement .mergedtoprow .infobox-full-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-header,.mw-parser-output .ib-settlement .mergedtoprow .infobox-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-label,.mw-parser-output .ib-settlement .mergedtoprow .infobox-below{border', '["clm_wiki_cambridge_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_cambridge_geography', 'plc_cambridge', 'geography', 'Geography',
   'Prehistory [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} See also: Prehistoric Britain and British Iron Age Settlements have existed around the Cambridge area since prehistoric times . The earliest clear evidence of occupation is the remains of a 3,500- year-old farmstead discovered at the site of Fitzwilliam College . &#91; 1 &#93; Archaeological evidence of occupation through the Iron Age is a settlement on Castle Hill from the 1st century BC , perhaps relating to wider cultural changes occurring in southeastern Britain linked to the arrival of the Belgae . &#91; 2 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.s', '["clm_wiki_cambridge_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_cambridge_demographics', 'plc_cambridge', 'demographics', 'Demographics',
   'Roman [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Duroliponte The principal Roman site is a small fort ( castrum ) Duroliponte on Castle Hill , just northwest of the city centre around the location of the earlier British village. The fort was bounded on two sides by the lines formed by the present Mount Pleasant , continuing across Huntingdon Road into Clare Street. The eastern side followed Magrath Avenue, with the southern side running near to Chesterton Lane and Kettle''s Yard before turning northwest at Honey Hill. &#91; 1 &#93; It was constructed around AD&#160;70 and converted to civilian use around 50 years later. Evidence of more widespread Roman settlement has been discovered, including numerous farmsteads &#91; 2 &#93; and a village in the Cambridge district of Newnham . &#91; 3 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wiki', '["clm_wiki_cambridge_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_cambridge_primary', 'plc_cambridge', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Cambridge_-_Kings_College_vue_des_backs.jpg/3840px-Cambridge_-_Kings_College_vue_des_backs.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Cambridge_-_Kings_College_vue_des_backs.jpg/330px-Cambridge_-_Kings_College_vue_des_backs.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Cambridge',
   'Cambridge', 1, 10, unixepoch());

-- 33. Greencastle (city, IN, pop=10401)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_greencastle', 'place', 'greencastle', 'Greencastle', 'published', 'en', 0,
   'Greencastle or Green Castle may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_greencastle', 'city', 39.64449, -86.86473, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_greencastle_in_country', 'plc_greencastle', 'ent_usa', 'located_in', 0.95, 'clm_wiki_greencastle_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_greencastle_overview', 'plc_greencastle', 'overview', 'Overview',
   'Greencastle or Green Castle may refer to:', '["clm_wiki_greencastle_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_greencastle_history', 'plc_greencastle', 'history', 'History',
   'Places [ edit ] Germany [ edit ] Green Castle ( Grünes Schloss ), Weimar ; see Duchess Anna Amalia Library Ireland [ edit ] Greencastle, County Donegal , Republic of Ireland Greencastle, County Antrim , Northern Ireland, a townland and suburb of Belfast Greencastle, County Down , Northern Ireland Greencastle, County Tyrone , Northern Ireland Scotland [ edit ] Green Castle, Portknockie , an Iron Age and Pictish promontory fort United States [ edit ] Greencastle, Indiana , a city Greencastle, Missouri , a city Greencastle, Pennsylvania , a borough Greencastle, West Virginia , an unincorporated community Greencastle, Kanawha County, West Virginia , an unincorporated community', '["clm_wiki_greencastle_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_greencastle_geography', 'plc_greencastle', 'geography', 'Geography',
   'Germany [ edit ] Green Castle ( Grünes Schloss ), Weimar ; see Duchess Anna Amalia Library', '["clm_wiki_greencastle_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_greencastle_demographics', 'plc_greencastle', 'demographics', 'Demographics',
   'Ireland [ edit ] Greencastle, County Donegal , Republic of Ireland Greencastle, County Antrim , Northern Ireland, a townland and suburb of Belfast Greencastle, County Down , Northern Ireland Greencastle, County Tyrone , Northern Ireland', '["clm_wiki_greencastle_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 34. Big Rapids (city, MI, pop=10397)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_big-rapids', 'place', 'big-rapids', 'Big Rapids', 'published', 'en', 0,
   'Big Rapids is a city and the seat of government of Mecosta County, Michigan, United States. The population was 7,727 at the 2020 census, and was estimated at 8,565 in 2024, The city is surrounded by Big Rapids Charter Township but they are completely separate jurisdictions. Big Rapids is home of the main campus of Ferris State University, a four-year public university.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_big-rapids', 'city', 43.69808, -85.48366, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_big-rapids_in_country', 'plc_big-rapids', 'ent_usa', 'located_in', 0.95, 'clm_wiki_big-rapids_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_big-rapids_overview', 'plc_big-rapids', 'overview', 'Overview',
   'Big Rapids is a city and the seat of government of Mecosta County, Michigan, United States. The population was 7,727 at the 2020 census, and was estimated at 8,565 in 2024, The city is surrounded by Big Rapids Charter Township but they are completely separate jurisdictions. Big Rapids is home of the main campus of Ferris State University, a four-year public university.', '["clm_wiki_big-rapids_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_big-rapids_overview', 'plc_big-rapids', 'overview', 'History',
   'Big Rapids is a city and the seat of government of Mecosta County, Michigan, United States. The population was 7,727 at the 2020 census, and was estimated at 8,565 in 2024, The city is surrounded by Big Rapids Charter Township but they are completely separate jurisdictions. Big Rapids is home of the main campus of Ferris State University, a four-year public university.', '["clm_wiki_big-rapids_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_big-rapids_overview', 'plc_big-rapids', 'overview', 'Geography',
   'Big Rapids is a city and the seat of government of Mecosta County, Michigan, United States. The population was 7,727 at the 2020 census, and was estimated at 8,565 in 2024, The city is surrounded by Big Rapids Charter Township but they are completely separate jurisdictions. Big Rapids is home of the main campus of Ferris State University, a four-year public university.', '["clm_wiki_big-rapids_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_big-rapids_overview', 'plc_big-rapids', 'overview', 'Demographics',
   'Big Rapids is a city and the seat of government of Mecosta County, Michigan, United States. The population was 7,727 at the 2020 census, and was estimated at 8,565 in 2024, The city is surrounded by Big Rapids Charter Township but they are completely separate jurisdictions. Big Rapids is home of the main campus of Ferris State University, a four-year public university.', '["clm_wiki_big-rapids_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_big-rapids_primary', 'plc_big-rapids', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/3/3b/Big_Rapids%2C_Michigan_2009.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Big_Rapids%2C_Michigan_2009.jpg/330px-Big_Rapids%2C_Michigan_2009.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Big Rapids',
   'Big Rapids', 1, 10, unixepoch());

-- 35. Palatka (city, FL, pop=10390)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_palatka', 'place', 'palatka', 'Palatka', 'published', 'en', 0,
   'Palatka may refer to:Palatka, Florida, a city in the United States
Palatka, Russia, several inhabited localities in Russia
Palatka (YTB-801), a United States Navy Natick-class large harbor tug
Palatka, a name used by the ethnic Hungarian minority for Pălatca, a commune in Cluj County, Romania', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_palatka', 'city', 29.64858, -81.63758, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_palatka_in_country', 'plc_palatka', 'ent_usa', 'located_in', 0.95, 'clm_wiki_palatka_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_palatka_overview', 'plc_palatka', 'overview', 'Overview',
   'Palatka may refer to:Palatka, Florida, a city in the United States
Palatka, Russia, several inhabited localities in Russia
Palatka (YTB-801), a United States Navy Natick-class large harbor tug
Palatka, a name used by the ethnic Hungarian minority for Pălatca, a commune in Cluj County, Romania', '["clm_wiki_palatka_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());


-- 36. Celina (city, OH, pop=10387)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_celina', 'place', 'celina', 'Celina', 'published', 'en', 0,
   'Celina may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_celina', 'city', 40.54894, -84.57023, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_celina_in_country', 'plc_celina', 'ent_usa', 'located_in', 0.95, 'clm_wiki_celina_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_celina_overview', 'plc_celina', 'overview', 'Overview',
   'Celina may refer to:', '["clm_wiki_celina_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_celina_history', 'plc_celina', 'history', 'History',
   'Places [ edit ] Celina, Indiana , an unincorporated community Celina, Minnesota , an unincorporated community Celina, Ohio , a city Celina, Tennessee , a city Celina, Texas , a city Čelina, Czech Republic , a village Čelina, Konjic , a village in Bosnia and Herzegovina Čelina, Croatia , a village near Omiš Celina, Kosovo , a village near Rahovec', '["clm_wiki_celina_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_celina_geography', 'plc_celina', 'geography', 'Geography',
   'People [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Celina (given name)', '["clm_wiki_celina_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_celina_demographics', 'plc_celina', 'demographics', 'Demographics',
   'Other uses [ edit ] Celina (beetle) , a genus of water beetle Moderate Tropical Storm Celina, in the 2007–2008 South-West Indian Ocean cyclone season', '["clm_wiki_celina_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 37. Portage (city, WI, pop=10382)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_portage', 'place', 'portage', 'Portage', 'published', 'en', 0,
   'Portage or portaging is the practice of carrying water craft or cargo over land, either around an obstacle in a river, or between two bodies of water. A path where items are regularly carried between bodies of water is also called a portage. The term comes from French, where porter means "to carry", as in "portable".', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_portage', 'city', 43.53915, -89.46262, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_portage_in_country', 'plc_portage', 'ent_usa', 'located_in', 0.95, 'clm_wiki_portage_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_portage_overview', 'plc_portage', 'overview', 'Overview',
   'Portage or portaging is the practice of carrying water craft or cargo over land, either around an obstacle in a river, or between two bodies of water. A path where items are regularly carried between bodies of water is also called a portage. The term comes from French, where porter means "to carry", as in "portable".', '["clm_wiki_portage_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_portage_history', 'plc_portage', 'history', 'History',
   'Technique [ edit ] This section deals mostly with the portage of heavy freight canoes used by Canadian Voyageurs . &#91; 1 &#93; Portage trails usually began as animal tracks and were improved by tramping, blazing and cutting of trees, deadfall and brush. In a few places iron-plated wooden rails were laid to take a handcart. Some heavily used portages evolved into roads that allowed sledges, rollers or oxen to be used, as at Methye Portage . Sometimes railways ( Champlain and St. Lawrence Railroad ) or canals were built. When going downstream and arriving at a rapids, an experienced voyageur called the guide would inspect the rapids and choose between the heavy work of a portage and the life-threatening risk of running the rapids. If it was decided to run the rapids, the boat was controlled by the avant standing in front with a long paddle and the gouvernail standing in the back with a 2.7-metre (9&#160;ft) steering paddle. The avant had a better view and was in charge but the gouvernail had more control over the boat. The other canoemen provided power under the instructions of the avant. Small railway portage in the U.S. Going upstream was more difficult, as there were many places where the current was too swift to paddle against. Where the river bottom was shallow and firm, voyageurs would stood in the canoe, put 3-metre (10&#160;ft) poles in the water and pushed the boat upstream. If the shoreline was reasonably clear of obstruction, the canoe was ''tracked'' or ''lined'', that is, canoemen pulled the canoe on a rope while a man stayed on board to steer it away from the shore. (The most extreme case of tracking was in the Three Gorges in China where all boats had to be pulled upstream against the current of the Yangtze River .) In other places, the ''demi-chargé'' technique was used. Half the cargo was unloaded, the canoe forced upstream, unloaded and then returned downstream to pick up the remaining half of the cargo. When a boat had to fight against very strong currents, the entire cargo was unloaded (''décharge'') and carried overland while the canoe was forced upstream. Sometimes a full portage was necessary. The canoe was emptied, carried overland by two or four men, or dragged (the heavier York boats had to be dragged overland on rollers). The cargo was divided into standard 41-kilogram (90&#160;lb) packs or pièces , with each man responsible for about six. One portage pack, or canoe pack , was carried on the back held up by a tumpline and another pack ca', '["clm_wiki_portage_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_portage_geography', 'plc_portage', 'geography', 'Geography',
   'History [ edit ] Europe [ edit ] Greco-Roman world [ edit ] Paved section of the Diolkos The Diolkos was a paved trackway in Ancient Greece which enabled boats to be moved overland across the Isthmus of Corinth between the Gulf of Corinth and the Saronic Gulf . It was constructed to transport high ranking Despots to conduct business in the justice system. The .mw-parser-output .frac{white-space:nowrap}.mw-parser-output .frac .num,.mw-parser-output .frac .den{font-size:80%;line-height:0;vertical-align:super}.mw-parser-output .frac .den{vertical-align:sub}.mw-parser-output .sr-only{border:0;clip:rect(0,0,0,0);clip-path:polygon(0px 0px,0px 0px,0px 0px);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px} 6-to-8.5-kilometre-long ( 3 + 1 &#8260; 2 – 5 + 1 &#8260; 2 &#160;mi) roadway was a rudimentary form of railway , &#91; 1 &#93; and operated from around 600 BC until the middle of the 1st century AD. &#91; 2 &#93; &#91; 3 &#93; &#91; 4 &#93; &#91; 5 &#93; The scale on which the Diolkos combined the two principles of the railway and the overland transport of ships was unique in antiquity . &#91; 1 &#93; There is scant literary evidence for two more ship trackways referred to as diolkoi in antiquity, both located in Roman Egypt : The physician Oribasius &#91; 6 &#93; ( c. &#8201;320–400&#160;CE ) records two passages from his first-century colleague Xenocrates , in which the latter casually refers to a diolkos close to the harbor of Alexandria , which may have been located at the southern tip of the island of Pharos. &#91; 7 &#93; Another diolkos is mentioned by Ptolemy (90–168&#160;CE) in his book on geography (IV, 5, 10) as connecting a false mouth of a partly silted up Nile branch with the Mediterranean Sea . &#91; 7 &#93; Writing in the first half of the eighth century, Cosmas of Jerusalem describes the portage of boats across the narrowest part of the Thracian Chersonese (Gallipoli Peninsula) between the Aegean Sea and the Sea of Marmara . T', '["clm_wiki_portage_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_portage_demographics', 'plc_portage', 'demographics', 'Demographics',
   'Europe [ edit ] Greco-Roman world [ edit ] Paved section of the Diolkos The Diolkos was a paved trackway in Ancient Greece which enabled boats to be moved overland across the Isthmus of Corinth between the Gulf of Corinth and the Saronic Gulf . It was constructed to transport high ranking Despots to conduct business in the justice system. The .mw-parser-output .frac{white-space:nowrap}.mw-parser-output .frac .num,.mw-parser-output .frac .den{font-size:80%;line-height:0;vertical-align:super}.mw-parser-output .frac .den{vertical-align:sub}.mw-parser-output .sr-only{border:0;clip:rect(0,0,0,0);clip-path:polygon(0px 0px,0px 0px,0px 0px);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px} 6-to-8.5-kilometre-long ( 3 + 1 &#8260; 2 – 5 + 1 &#8260; 2 &#160;mi) roadway was a rudimentary form of railway , &#91; 1 &#93; and operated from around 600 BC until the middle of the 1st century AD. &#91; 2 &#93; &#91; 3 &#93; &#91; 4 &#93; &#91; 5 &#93; The scale on which the Diolkos combined the two principles of the railway and the overland transport of ships was unique in antiquity . &#91; 1 &#93; There is scant literary evidence for two more ship trackways referred to as diolkoi in antiquity, both located in Roman Egypt : The physician Oribasius &#91; 6 &#93; ( c. &#8201;320–400&#160;CE ) records two passages from his first-century colleague Xenocrates , in which the latter casually refers to a diolkos close to the harbor of Alexandria , which may have been located at the southern tip of the island of Pharos. &#91; 7 &#93; Another diolkos is mentioned by Ptolemy (90–168&#160;CE) in his book on geography (IV, 5, 10) as connecting a false mouth of a partly silted up Nile branch with the Mediterranean Sea . &#91; 7 &#93; Writing in the first half of the eighth century, Cosmas of Jerusalem describes the portage of boats across the narrowest part of the Thracian Chersonese (Gallipoli Peninsula) between the Aegean Sea and the Sea of Marmara . The peninsula ther', '["clm_wiki_portage_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_portage_primary', 'plc_portage', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/9/96/Portage-prospector.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Portage-prospector.jpg/330px-Portage-prospector.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Portage',
   'Portage', 1, 10, unixepoch());

-- 38. Wabash (city, IN, pop=10381)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_wabash', 'place', 'wabash', 'Wabash', 'published', 'en', 0,
   'Wabash may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_wabash', 'city', 40.79782, -85.82054, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_wabash_in_country', 'plc_wabash', 'ent_usa', 'located_in', 0.95, 'clm_wiki_wabash_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_wabash_overview', 'plc_wabash', 'overview', 'Overview',
   'Wabash may refer to:', '["clm_wiki_wabash_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_wabash_history', 'plc_wabash', 'history', 'History',
   'Political entities [ edit ] Wabash Confederacy , or Wabash Indians, a loose confederacy of 18th century Native Americans', '["clm_wiki_wabash_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_wabash_geography', 'plc_wabash', 'geography', 'Geography',
   'Places in the United States [ edit ] Wabash River , in Ohio, Indiana and Illinois Wabash Valley , in Illinois and Indiana Wabash, Arkansas , an unincorporated community Wabash, Indiana , a city Wabash County, Illinois Wabash Precinct, Wabash County, Illinois Wabash County, Indiana Wabash, Nebraska , an unincorporated community Wabash, Ohio , an unincorporated community Wabash, King County, Washington , an unincorporated community Wabash, Lewis County, Washington , an unincorporated community Wabash, West Virginia , a ghost town Wabash township (disambiguation) Wabash Formation , a geologic formation in Indiana', '["clm_wiki_wabash_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_wabash_demographics', 'plc_wabash', 'demographics', 'Demographics',
   'Schools [ edit ] Wabash College , a college in Crawfordsville, Indiana Wabash Valley College , a college in Mount Carmel, Illinois Wabash High School , Wabash, Indiana', '["clm_wiki_wabash_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 39. Cadillac (city, MI, pop=10373)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_cadillac', 'place', 'cadillac', 'Cadillac', 'published', 'en', 0,
   'Cadillac Motor Car Division, or simply Cadillac, is the luxury vehicle division of the American automobile manufacturer General Motors (GM). Its major markets are the United States, Canada, and China; Cadillac models are also distributed in 34 additional markets worldwide. Historically, Cadillac automobiles were at the top of the luxury field within the United States, often competing with Lincoln, but have been outsold by European luxury brands including BMW and Mercedes since the 2000s. In 2019, Cadillac sold 390,458 vehicles worldwide, a record for the brand.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_cadillac', 'city', 44.25195, -85.40116, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_cadillac_in_country', 'plc_cadillac', 'ent_usa', 'located_in', 0.95, 'clm_wiki_cadillac_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_cadillac_overview', 'plc_cadillac', 'overview', 'Overview',
   'Cadillac Motor Car Division, or simply Cadillac, is the luxury vehicle division of the American automobile manufacturer General Motors (GM). Its major markets are the United States, Canada, and China; Cadillac models are also distributed in 34 additional markets worldwide. Historically, Cadillac automobiles were at the top of the luxury field within the United States, often competing with Lincoln, but have been outsold by European luxury brands including BMW and Mercedes since the 2000s. In 2019, Cadillac sold 390,458 vehicles worldwide, a record for the brand.', '["clm_wiki_cadillac_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_cadillac_history', 'plc_cadillac', 'history', 'History',
   'Luxury car manufacturing division of General Motors .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} For other uses, see Cadillac (disambiguation) . @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-company .infobox-label{padding-right:0.5em}.mw-parser-output .ib-company-logo img{background-color:#f8f9fa;color:inherit}.mw-parser-output .ib-company-logo .logo-nobg img{background-color:inherit;color:inherit}.mw-parser-output .ib-company-locality,.mw-parser-output .ib-company-country{display:inline} Cadillac Motor Car Division Trade name Cadillac Formerly Cadillac Automobile Company Type Division Industry Automotive Predecessor Henry Ford Company Founded August&#160;22, 1902 &#59;&#32;123 years ago &#160;( 1902-08-22 ) Founders .mw-parser-output .plainlist ol,.mw-parser-output .plainlist ul{line-height:inherit;list-style:none;margin:0;padding:0}.mw-parser-output .plainlist ol li,.mw-parser-output .', '["clm_wiki_cadillac_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_cadillac_geography', 'plc_cadillac', 'geography', 'Geography',
   'Founding [ edit ] Cadillac was formed from the remnants of the Henry Ford Company . After a dispute between Henry Ford and his investors, Ford left the company along with several of his key partners in March 1902. Ford''s financial backers William Murphy and Lemuel Bowen called in engineer Henry M. Leland of Leland &amp; Faulconer Manufacturing Company to appraise the plant and equipment in preparation for liquidating the company''s assets. Instead, Leland persuaded the pair to continue manufacturing automobiles using Leland''s proven single-cylinder engine. A new company called the Cadillac Automobile Company was established on August 22, 1902, converting the Henry Ford Company factory at Cass Street and Amsterdam Avenue. It was named after French explorer Antoine Laumet de La Mothe, sieur de Cadillac , who had founded Detroit in 1701. &#91; 1 &#93; &#91; 2 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-p', '["clm_wiki_cadillac_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_cadillac_demographics', 'plc_cadillac', 'demographics', 'Demographics',
   'First automobiles [ edit ] Cadillac''s first automobiles, the Runabout and Tonneau , were completed in October 1902. They were two-seat horseless carriages powered by a 10&#160;hp (7&#160;kW) single-cylinder engine . They were practically identical to the 1903 Ford Model A . Many sources say the first car rolled out of the factory on October 17; in the book Henry Leland—Master of Precision , the date is October 20; another reliable source shows car number three to have been built on October 16. Cadillac displayed the new vehicles at the New York Auto Show in January 1903, where they impressed the crowds enough to secure over 2,000 firm orders. Cadillac''s biggest selling point was precision manufacturing, and therefore, reliability; a Cadillac was simply a better-made vehicle than its competitors. Runabout 1902 .mw-parser-output .frac{white-space:nowrap}.mw-parser-output .frac .num,.mw-parser-output .frac .den{font-size:80%;line-height:0;vertical-align:super}.mw-parser-output .frac .den{vertical-align:sub}.mw-parser-output .sr-only{border:0;clip:rect(0,0,0,0);clip-path:polygon(0px 0px,0px 0px,0px 0px);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px} 6 + 1 &#8260; 2 HP 1904 1907 1907 1908 with dickey seat open 1908 Cadillac Model S Rear-entrance tonneau 1903 6½ HP 1903 8¼ HP 1904 8 + 1 &#8260; 4 HP surrey-top 1904 10 HP 1904 Special bodies Delivery 1903 8 + 1 &#8260; 2 HP touring car 1904 8 + 1 &#8260; 4 HP detachable-top limousine 1904 9 HP limousine Model M coupé 1907', '["clm_wiki_cadillac_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_cadillac_primary', 'plc_cadillac', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/6/66/Cadillac_logo_BW.svg/120px-Cadillac_logo_BW.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/6/66/Cadillac_logo_BW.svg/330px-Cadillac_logo_BW.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Cadillac',
   'Cadillac', 1, 10, unixepoch());

-- 40. Newberry (city, SC, pop=10331)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_newberry', 'place', 'newberry', 'Newberry', 'published', 'en', 0,
   'Newberry is a surname, a variant of Newbury. Notable people with the surname include:Booker Newberry III (1956–2023), American singer and keyboardist
Brennan Newberry, American professional stock car racing driver
Brian Newberry, American politician and member of the Rhode Island House of Representatives
Christian Newberry, British competitive figure skater
Clare Turlay Newberry (1903–1970), American author and illustrator of children''s books
Claude Newberry (1888–1916), South African cricketer
Dan Newberry, American politician and member of the Oklahoma Senate
Fannie Ellsworth Newberry (1848–1942), American writer of girls'' stories
George Newberry (1917–1978), British track cyclist
Graham Newberry, British figure skater
Guillermo Newberry (1898–?), Argentine sprinter
Hazel Newberry, British dancer
Jake Newberry, American baseball player
Janet Newberry, American tennis player
Jared Newberry, American footballer
Jeremy Newberry, American footballer
Jessica Newberry-Ransehousen, American equestrian
Jim Newberry, Mayor of Lexington, Kentucky
Jimmy Newberry, Negro league baseball player
John Newberry, Canadian ice hockey player
John Josiah Newberry (1877–1954), founder of store chain J. J. Newberry
John Stoughton Newberry (1826–1887), American politician
John Strong Newberry (1822–1892), American geologist, physician and explorer
Luke Newberry, English actor
Michael Newberry (artist), American painter
Michael Newberry (footballer) (1997–2024), English footballer
Morgan Newberry', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_newberry', 'city', 34.27458, -81.61872, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_newberry_in_country', 'plc_newberry', 'ent_usa', 'located_in', 0.95, 'clm_wiki_newberry_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_newberry_overview', 'plc_newberry', 'overview', 'Overview',
   'Newberry is a surname, a variant of Newbury. Notable people with the surname include:Booker Newberry III (1956–2023), American singer and keyboardist
Brennan Newberry, American professional stock car racing driver
Brian Newberry, American politician and member of the Rhode Island House of Representatives
Christian Newberry, British competitive figure skater
Clare Turlay Newberry (1903–1970), American author and illustrator of children''s books
Claude Newberry (1888–1916), South African cricketer
Dan Newberry, American politician and member of the Oklahoma Senate
Fannie Ellsworth Newberry (1848–1942), American writer of girls'' stories
George Newberry (1917–1978), British track cyclist
Graham Newberry, British figure skater
Guillermo Newberry (1898–?), Argentine sprinter
Hazel Newberry, British dancer
Jake Newberry, American baseball player
Janet Newberry, American tennis player
Jared Newberry, American footballer
Jeremy Newberry, American footballer
Jessica Newberry-Ransehousen, American equestrian
Jim Newberry, Mayor of Lexington, Kentucky
Jimmy Newberry, Negro league baseball player
John Newberry, Canadian ice hockey player
John Josiah Newberry (1877–1954), founder of store chain J. J. Newberry
John Stoughton Newberry (1826–1887), American politician
John Strong Newberry (1822–1892), American geologist, physician and explorer
Luke Newberry, English actor
Michael Newberry (artist), American painter
Michael Newberry (footballer) (1997–2024), English footballer
Morgan Newberry, British para-cyclist
Percy Newberry (1869–1949), British Egyptologist
Sterling Newberry (1915–2017), American inventor and microscopist
Thomas Newberry (1811–1901), English Bible scholar
Tom Newberry, American footballer
Tommy Newberry, American author and success coach
Truman Handy Newberry (1864–1945), American businessman and politician
Walter C. Newberry (1835–1912), American politician
Walter Loomis Newberry (1804–1868), American businessman and philanthropist', '["clm_wiki_newberry_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());


-- 41. Newport (city, OR, pop=10268)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_newport', 'place', 'newport', 'Newport', 'published', 'en', 0,
   'Newport most commonly refers to:Newport, Wales
Newport, Rhode Island, United States', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_newport', 'city', 44.63678, -124.05345, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_newport_in_country', 'plc_newport', 'ent_usa', 'located_in', 0.95, 'clm_wiki_newport_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_newport_overview', 'plc_newport', 'overview', 'Overview',
   'Newport most commonly refers to:Newport, Wales
Newport, Rhode Island, United States', '["clm_wiki_newport_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_newport_history', 'plc_newport', 'history', 'History',
   'Places [ edit ] Australia [ edit ] Newport, New South Wales Newport, Queensland New Port, South Australia Newport, Victoria Canada [ edit ] Newport, Newfoundland and Labrador Newport, Nova Scotia Newport, Ontario Newport, Quebec , in Le Haut-Saint-François Regional County Municipality Newport, Chandler, Quebec Camp Newport , a Salvation Army camp in Muskoka, Ontario Ireland [ edit ] Newport, County Mayo , a town Newport, County Tipperary , a town United Kingdom [ edit ] England [ edit ] Newport, Cornwall Newport (Cornwall) (UK Parliament constituency) Newport, Devon , in Barnstaple Newport, East Riding of Yorkshire Newport, Essex Newport, Gloucestershire Newport, Isle of Wight Newport (Isle of Wight) (UK Parliament constituency) Newport and Carisbrooke , a civil parish formerly called just "Newport" Newport, Lincoln Newport, Shropshire Newport Rural District Newport (Shropshire) (UK Parliament constituency) Newport, Somerset , a hamlet in the parish of North Curry Newport, Dorset , in Bloxworth Newport, Norfolk , in Hemsby Newport, Middlesbrough , an urban area and ward in Middlesbrough , North Yorkshire Newport Hundred , Buckinghamshire, a defunct hundred Scotland [ edit ] Newport, Caithness , a small hamlet Newport-on-Tay , Fife Wales [ edit ] Newport, Wales , a city and county borough in South Wales Newport City Council District of Newport , 1974–1996 (defunct) Newport (Monmouthshire) (UK Parliament constituency) , 1918–1983 Newport, Pembrokeshire , West Wales United States [ edit ] Newport, Arkansas Newport, California Newport, Delaware Newport, Florida Newport, Georgia , see List of places in Georgia (U.S. state) (I–R) Newport, Illinois Fountain City, Indiana , originally named "Newport" Newport, Indiana Newport, Iowa , see Muscatine, Iowa micropolitan area#Unincorporated places Newport, Kentucky Newport, Maine , a New England town Newport (CDP), Maine , the main village in the town Newport, Charles County, Maryland Newport, Michigan Newport, Minnesota Newport, Mississippi , see Mississippi Highway 3 Newport, Missouri Newport, Nebraska Newport, New Hampshire , a New England town Newport (CDP), New Hampshire , the main village in the town Newport, New Jersey (disambiguation) Newport, New York , a town Newport (village), New York , within the town of Newport Newport, North Carolina Newport, Ohio (disambiguation) Newport, Oklahoma Newport, Oregon Newport, Pennsylvania Newport, Lawrence County, Pennsylvania , see List of places in Pennsylvania: N Newport ', '["clm_wiki_newport_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_newport_geography', 'plc_newport', 'geography', 'Geography',
   'Australia [ edit ] Newport, New South Wales Newport, Queensland New Port, South Australia Newport, Victoria', '["clm_wiki_newport_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_newport_demographics', 'plc_newport', 'demographics', 'Demographics',
   'Canada [ edit ] Newport, Newfoundland and Labrador Newport, Nova Scotia Newport, Ontario Newport, Quebec , in Le Haut-Saint-François Regional County Municipality Newport, Chandler, Quebec Camp Newport , a Salvation Army camp in Muskoka, Ontario', '["clm_wiki_newport_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 42. Waterloo (city, IL, pop=10236)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_waterloo', 'place', 'waterloo', 'Waterloo', 'published', 'en', 0,
   'Waterloo most commonly refers to:Battle of Waterloo, 1815 battle in which Napoleon was defeated for the last time
Waterloo, Belgium', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_waterloo', 'city', 38.33589, -90.14983, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_waterloo_in_country', 'plc_waterloo', 'ent_usa', 'located_in', 0.95, 'clm_wiki_waterloo_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_waterloo_overview', 'plc_waterloo', 'overview', 'Overview',
   'Waterloo most commonly refers to:Battle of Waterloo, 1815 battle in which Napoleon was defeated for the last time
Waterloo, Belgium', '["clm_wiki_waterloo_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_waterloo_history', 'plc_waterloo', 'history', 'History',
   'Other places [ edit ] Australia [ edit ] Waterloo, New South Wales Waterloo, Queensland Waterloo, South Australia Waterloo Bay, now Elliston, South Australia Waterloo, Victoria Waterloo, Western Australia Canada [ edit ] Waterloo, Nova Scotia Regional Municipality of Waterloo , a region in Ontario Waterloo, Ontario , a city Waterloo (federal electoral district) Waterloo (provincial electoral district) Waterloo County, Ontario (1853–1973) University of Waterloo Waterloo, Quebec Waterloo Village, Saint John , a neighbourhood in Saint John, New Brunswick United Kingdom [ edit ] England [ edit ] Waterloo, Dorset , England, a suburb of Poole Waterloo, Huddersfield , England, a suburb Waterloo, London , England, area around Waterloo Station Waterloo Place , London, a street in the St James''s area Waterloo, Merseyside , England Waterloo (UK Parliament constituency) Waterloo, Whixall , Shropshire, England Waterlooville , known earlier as Waterloo, Hampshire, England, a town Scotland [ edit ] Waterloo, North Lanarkshire , Scotland Waterloo, Perth and Kinross , Scotland Northern Ireland [ edit ] Waterloo Bay , Northern Ireland Wales [ edit ] Waterloo, Caerphilly , Wales United States [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} See also: Waterloo Township (disambiguation) Waterloo, Alabama Waterloo, California Waterloo, Georgia Waterloo, Illinois Waterloo Historic District (Illinois) , listed on the National Register of Historic Places (NRHP) Waterloo, Indiana , in DeKalb County Waterloo, Fayette County, Indiana Waterloo, Johnson County, Indiana Waterloo, Iowa Waterloo, Kansas Waterloo, Louisiana Waterloo, Maryland Waterloo (Princess Anne, Maryland) , a historic home Waterloo State Recreation Area , in Michigan Waterloo, Clark County, Missouri , an unincorporated community Waterloo, Lafayette County, Missouri , an unincorporated community Waterloo, Montana Waterloo, Nebraska Waterloo Historic District (Warner, New Hampshire) Waterloo, Monmouth County, New Jersey Waterloo Village, New Jersey Waterloo, New York , a town Waterloo (village), New York Waterloo (Albertson, North Carolina) , a historic plantation house Waterloo, Ohio Waterloo, Oregon Waterloo, South', '["clm_wiki_waterloo_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_waterloo_geography', 'plc_waterloo', 'geography', 'Geography',
   'Australia [ edit ] Waterloo, New South Wales Waterloo, Queensland Waterloo, South Australia Waterloo Bay, now Elliston, South Australia Waterloo, Victoria Waterloo, Western Australia', '["clm_wiki_waterloo_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_waterloo_demographics', 'plc_waterloo', 'demographics', 'Demographics',
   'Canada [ edit ] Waterloo, Nova Scotia Regional Municipality of Waterloo , a region in Ontario Waterloo, Ontario , a city Waterloo (federal electoral district) Waterloo (provincial electoral district) Waterloo County, Ontario (1853–1973) University of Waterloo Waterloo, Quebec Waterloo Village, Saint John , a neighbourhood in Saint John, New Brunswick', '["clm_wiki_waterloo_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 43. Fairmont (city, MN, pop=10221)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_fairmont', 'place', 'fairmont', 'Fairmont', 'published', 'en', 0,
   'Fairmont can refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_fairmont', 'city', 43.65218, -94.46108, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_fairmont_in_country', 'plc_fairmont', 'ent_usa', 'located_in', 0.95, 'clm_wiki_fairmont_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_fairmont_overview', 'plc_fairmont', 'overview', 'Overview',
   'Fairmont can refer to:', '["clm_wiki_fairmont_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_fairmont_history', 'plc_fairmont', 'history', 'History',
   'Places [ edit ] Canada [ edit ] Fairmont Hot Springs, British Columbia , a resort town Fairmont Mountain , a summit near Fairmont Hot Springs United States [ edit ] Fairmont, Illinois Fairmont, Minnesota Fairmont, Missouri Fairmont, Nebraska Fairmont State Airfield , Fairmont, Nebraska, listed on the NRHP in Nebraska Fairmont, North Carolina Fairmont, Oklahoma Fairmont (Columbia, Tennessee) , listed on the National Register of Historic Places in Tennessee Fairmont (UTA station) , a Utah Transit Authority station in Salt Lake City, Utah Fairmont, Baltimore , a neighborhood in Baltimore Fairmont, West Virginia Fairmont Downtown Historic District , Fairmont, WV, listed on the NRHP in West Virginia', '["clm_wiki_fairmont_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_fairmont_geography', 'plc_fairmont', 'geography', 'Geography',
   'Canada [ edit ] Fairmont Hot Springs, British Columbia , a resort town Fairmont Mountain , a summit near Fairmont Hot Springs', '["clm_wiki_fairmont_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_fairmont_demographics', 'plc_fairmont', 'demographics', 'Demographics',
   'United States [ edit ] Fairmont, Illinois Fairmont, Minnesota Fairmont, Missouri Fairmont, Nebraska Fairmont State Airfield , Fairmont, Nebraska, listed on the NRHP in Nebraska Fairmont, North Carolina Fairmont, Oklahoma Fairmont (Columbia, Tennessee) , listed on the National Register of Historic Places in Tennessee Fairmont (UTA station) , a Utah Transit Authority station in Salt Lake City, Utah Fairmont, Baltimore , a neighborhood in Baltimore Fairmont, West Virginia Fairmont Downtown Historic District , Fairmont, WV, listed on the NRHP in West Virginia', '["clm_wiki_fairmont_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 44. Jefferson (city, GA, pop=10195)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_jefferson', 'place', 'jefferson', 'Jefferson', 'published', 'en', 0,
   'Jefferson may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_jefferson', 'city', 34.11705, -83.57239, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_jefferson_in_country', 'plc_jefferson', 'ent_usa', 'located_in', 0.95, 'clm_wiki_jefferson_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_jefferson_overview', 'plc_jefferson', 'overview', 'Overview',
   'Jefferson may refer to:', '["clm_wiki_jefferson_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_jefferson_history', 'plc_jefferson', 'history', 'History',
   'People [ edit ] Jefferson (surname) Jefferson (given name) Thomas Jefferson (1743&#8211;1826), third president of the United States Jefferson (footballer) , numerous footballers Jefferson, stage name of Geoff Turton (born 1944), British singer', '["clm_wiki_jefferson_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_jefferson_geography', 'plc_jefferson', 'geography', 'Geography',
   'Places [ edit ] United States [ edit ] Jefferson, Alabama Jefferson, Columbia County, Arkansas Jefferson, Jefferson County, Arkansas Jefferson, Colorado Jefferson, Camden County, Georgia Jefferson, Georgia , the county seat of Jackson County Jefferson, Indiana Jefferson, Iowa Jefferson, Kansas Jeffersontown, Kentucky , originally known as Jefferson Jefferson, Louisiana Jefferson, Maine Jefferson, Maryland Jefferson, Massachusetts , a village in the town of Holden Jefferson, Minnesota Jefferson, New Hampshire Jefferson, New York , a town Jefferson (CDP), New York , main hamlet in the town Jefferson, North Carolina Jefferson, Ohio Jefferson, Oklahoma Jefferson, Oregon Jefferson, Greene County, Pennsylvania Jefferson, York County, Pennsylvania Jefferson Hills, Pennsylvania , a borough formerly known as Jefferson Jefferson, South Carolina Jefferson, South Dakota Jefferson, Texas Jefferson, West Virginia Jefferson, Wisconsin , a city in Jefferson County Jefferson, Green County, Wisconsin , a town Jefferson, Jefferson County, Wisconsin , a town Jefferson, Monroe County, Wisconsin , a town Jefferson, Vernon County, Wisconsin , a town Jefferson Prairie Settlement , a former Norwegian settlement in Rock County, Wisconsin Jefferson County (disambiguation) Jefferson Township (disambiguation) List of peaks named Mount Jefferson , a list of mountains named Jefferson Jefferson River , Montana, a tributary of the Missouri River Jefferson Barracks Military Post , originally named Jefferson Barracks, a former United States Army post near Lemay, Missouri Jefferson Territory , an unrecognized territory that existed from 1859 to 1861 Jefferson (proposed Pacific state) , proposed in 1941 Jefferson (proposed Southern state) , proposed in 1915 Canada [ edit ] Jefferson, Alberta , an unincorporated community', '["clm_wiki_jefferson_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_jefferson_demographics', 'plc_jefferson', 'demographics', 'Demographics',
   'United States [ edit ] Jefferson, Alabama Jefferson, Columbia County, Arkansas Jefferson, Jefferson County, Arkansas Jefferson, Colorado Jefferson, Camden County, Georgia Jefferson, Georgia , the county seat of Jackson County Jefferson, Indiana Jefferson, Iowa Jefferson, Kansas Jeffersontown, Kentucky , originally known as Jefferson Jefferson, Louisiana Jefferson, Maine Jefferson, Maryland Jefferson, Massachusetts , a village in the town of Holden Jefferson, Minnesota Jefferson, New Hampshire Jefferson, New York , a town Jefferson (CDP), New York , main hamlet in the town Jefferson, North Carolina Jefferson, Ohio Jefferson, Oklahoma Jefferson, Oregon Jefferson, Greene County, Pennsylvania Jefferson, York County, Pennsylvania Jefferson Hills, Pennsylvania , a borough formerly known as Jefferson Jefferson, South Carolina Jefferson, South Dakota Jefferson, Texas Jefferson, West Virginia Jefferson, Wisconsin , a city in Jefferson County Jefferson, Green County, Wisconsin , a town Jefferson, Jefferson County, Wisconsin , a town Jefferson, Monroe County, Wisconsin , a town Jefferson, Vernon County, Wisconsin , a town Jefferson Prairie Settlement , a former Norwegian settlement in Rock County, Wisconsin Jefferson County (disambiguation) Jefferson Township (disambiguation) List of peaks named Mount Jefferson , a list of mountains named Jefferson Jefferson River , Montana, a tributary of the Missouri River Jefferson Barracks Military Post , originally named Jefferson Barracks, a former United States Army post near Lemay, Missouri Jefferson Territory , an unrecognized territory that existed from 1859 to 1861 Jefferson (proposed Pacific state) , proposed in 1941 Jefferson (proposed Southern state) , proposed in 1915', '["clm_wiki_jefferson_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 45. Bel Air (city, MD, pop=10190)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_bel-air', 'place', 'bel-air', 'Bel Air', 'published', 'en', 0,
   'Bel Air or Bel-Air may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_bel-air', 'city', 39.53594, -76.34829, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_bel-air_in_country', 'plc_bel-air', 'ent_usa', 'located_in', 0.95, 'clm_wiki_bel-air_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bel-air_overview', 'plc_bel-air', 'overview', 'Overview',
   'Bel Air or Bel-Air may refer to:', '["clm_wiki_bel-air_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bel-air_history', 'plc_bel-air', 'history', 'History',
   'Places [ edit ] France [ edit ] Bastide Bel-Air , a historic, listed building in Aix-en-Provence, France Bel-Air station (Paris Metro) , a station of the Paris Metro Haiti [ edit ] Bel Air, Haiti , a neighborhood of Port-au-Prince United States [ edit ] Bel Air, Los Angeles , a neighborhood of the city of Los Angeles, California Hotel Bel-Air , a hotel located in Bel-Air, Los Angeles, California Bel Air, Allegany County, Maryland , an unincorporated place in Maryland Bel Air, Harford County, Maryland , town and county seat in Maryland Bel Air (Minnieville, Virginia) , a historic plantation in Prince William County, Virginia Bel Air, Minot , a neighborhood in Minot, North Dakota Bel-Air (Sanford) , a neighborhood of the city of Sanford, Florida Other places [ edit ] Bel Air, Seychelles Bel-Air, residential development of Cyberport business park, Hong Kong Bel-Air, Makati , a gated community in the Philippines Place de Bel-Air (Genève), a plaza and major public transportation intersection in Geneva, Switzerland; see Trolleybuses in Geneva', '["clm_wiki_bel-air_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bel-air_geography', 'plc_bel-air', 'geography', 'Geography',
   'France [ edit ] Bastide Bel-Air , a historic, listed building in Aix-en-Provence, France Bel-Air station (Paris Metro) , a station of the Paris Metro', '["clm_wiki_bel-air_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bel-air_demographics', 'plc_bel-air', 'demographics', 'Demographics',
   'Haiti [ edit ] Bel Air, Haiti , a neighborhood of Port-au-Prince', '["clm_wiki_bel-air_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bel-air_overview', 'plc_bel-air', 'overview', 'History',
   'Bel Air or Bel-Air may refer to:', '["clm_wiki_bel-air_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bel-air_overview', 'plc_bel-air', 'overview', 'Geography',
   'Bel Air or Bel-Air may refer to:', '["clm_wiki_bel-air_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bel-air_overview', 'plc_bel-air', 'overview', 'Demographics',
   'Bel Air or Bel-Air may refer to:', '["clm_wiki_bel-air_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 46. Jennings (city, LA, pop=10180)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_jennings', 'place', 'jennings', 'Jennings', 'published', 'en', 0,
   '
Jennings is a surname of early medieval English origin. Notable people with the surname include:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_jennings', 'city', 30.22243, -92.65708, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_jennings_in_country', 'plc_jennings', 'ent_usa', 'located_in', 0.95, 'clm_wiki_jennings_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_jennings_overview', 'plc_jennings', 'overview', 'Overview',
   '
Jennings is a surname of early medieval English origin. Notable people with the surname include:', '["clm_wiki_jennings_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_jennings_history', 'plc_jennings', 'history', 'History',
   'A–G [ edit ] Adam Jennings (born 1982), American football player Al Jennings (1863–1961), American attorney in Oklahoma Territory, train robber and silent film star Alex Jennings (born 1957), British actor Andrew Jennings (1943–2022), British investigative journalist Anfernee Jennings (born 1997), American football player Asa Jennings (1877–1933), American who commanded the evacuation of refugees after the Great Fire of Smyrna Bernard Jennings (1929–2017), British local historian and adult educationist Billy Jennings (born 1952), English footballer Billy Jennings (Welsh footballer) (1893–1968), Welsh footballer Brandon Jennings (born 1989), American basketball player Brent Jennings (born 1951), American actor Brian Jennings , American football player Bryan Frederick Jennings , American convicted child murderer Bryant Jennings , American boxer C. Carl Jennings (1910–2003), American blacksmith, and artist Cal Jennings , American soccer player Charles Edward Jennings (1751–1799), Irish-born French general Charles Jennings (journalist) (1908–1973), Canadian journalist Chris Jennings (journalist) , American journalist and author Christine Jennings (born 1945), American politician Claudia Jennings (1949–1979), American model and actress Clyde Jennings (1916–2006), Florida philatelist Desmond Jennings (born 1986), American baseball player Desmond Domnique Jennings (1971–1999), American serial killer Donovan Jennings (born 1999), American football player D. Rolland Jennings (born 1951), American politician Edward Jennings (VC) (1820–1889), Irish recipient of the Victoria Cross Edward H. Jennings (1937–2019), tenth president of Ohio State University Ed Jennings (born 1968), Florida politician Edward Jennings (rowing) (1898–1975), American coxswain Elizabeth Jennings (1926–2001), English poet Elizabeth Jennings Graham (1827–1901), American black civil rights activist and teacher Ernie Jennings (born 1949), American football player Francis Jennings , American historian Garth Jennings (born 1972), English film director, screenwriter, producer, actor and writer Gary Jennings (1928–1999), American author Gary Jennings Jr. (born 1997), American football player Gavin Jennings (born 1957), Victorian Politician George Jennings (1810–1882), pioneering British sanitary engineer Gerald H. Jennings , ichthyologist and author Grant Jennings , (born 1965), Canadian ice hockey player Greg Jennings , American football player', '["clm_wiki_jennings_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_jennings_geography', 'plc_jennings', 'geography', 'Geography',
   'H–L [ edit ] Hal B. Jennings (1915–2008), US Army surgeon general Henry Jennings , British privateer Henry Constantine Jennings , English antiquarian Herbert Spencer Jennings , zoologist, geneticist and eugenicist Hilde Jennings (1906–?), German actress Hughie Jennings , American baseball player Humphrey Jennings (1907–1950), English filmmaker Ivor Jennings (1903–1965), British lawyer J. B. Jennings , American politician Jack Jennings (1919–2024), British World War II veteran James Jennings (disambiguation) , several people Jauan Jennings (born 1997), American football player Jazz Jennings (born 2000), American transgender activist Jean Jennings (1954–2024), American journalist, publisher and television personality Jeremy Jennings , English political theorist Jesse D. Jennings (1909–1997), American archaeologist Joanne Jennings (born 1969), British high jumper John Jennings (disambiguation) , several people Jonas Jennings , American football player Jonathan Jennings , first governor of Indiana J. T. W. Jennings , 20th century architect Kate Jennings (1948–2021), Australian writer Keaton Jennings , English cricketer Keith Jennings (American football) (born 1966), American football player Keith Jennings (basketball) (born 1968), American basketball player and coach Keith R. Jennings (born 1932), English chemist Keith Jennings (cricketer) (born 1953), English cricketer Ken Jennings , American game show host and prior to hosting it, was the first Jeopardy! superchampion Kenneth Jennings (disambiguation) , several people Kerri Walsh Jennings (1978–), American beach volleyball player La Vinia Delois Jennings , American literary scholar Leonard Jennings (sculptor) , English sculptor and British Army officer Leonard Frank Jennings , English cricketer and Royal Air Force officer Luke Jennings , British author of the novel Codename Villanelle Lyfe Jennings , American musician Lynn Jennings , American distance runner', '["clm_wiki_jennings_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_jennings_demographics', 'plc_jennings', 'demographics', 'Demographics',
   'M–Z [ edit ] M. D. Jennings , American football player Marlene Jennings , Canadian politician Mason Jennings , American musician Marvin Jennings , American convicted murderer Maureen Jennings (born 1939), British Canadian writer Maxine Jennings (1909–1991), American actress Michael Jennings (disambiguation) , several people Morley Jennings (1890–1985), American college sports coach Newell Jennings (1883–1965), Associate Justice of the Connecticut Supreme Court Nicholas R. Jennings (born 1965), American director, artist, writer, producer Nicky Jennings (1946–2016), English footballer Nick Jennings (born 1966), English Regius Professor of computer science Nicolette Jennings (born 1996), American model, beauty pageant titleholder ( Miss Florida USA 2019 and Top 10 finalist Miss USA 2019 ) Owen Jennings , New Zealand politician Pat Jennings , Northern Irish footballer Patrick Jennings (1831–1897), Australian politician Paul Jennings (born 1943), Australian children''s author Paul Jennings (1918–1989), English humorist Paul Jennings (1799–1874), American slave owned by President James Madison Peter Jennings (1938–2005), ABC News anchor and newsman Peter Jennings (serjeant-at-arms) (born 1934), British public servant Peter R. Jennings (born 1950), Canadian scientist and entrepreneur Philip Jennings (The Americans) , fictional character in the 2010s American television drama series The Americans Philip Jennings (Queenborough MP) (c. 1679–1740), English lawyer and politician, MP for Queenborough 1715–22 Sir Philip Jennings-Clerke, 1st Baronet (c. 1722 – January 1788), known as Philip Jennings until the 1760s, MP for Totnes 1768–88 Renz L. Jennings (1899–1983), Associate Justice of the Arizona Supreme Court Richard E. Jennings (1927–1991), British comic book artist Richard Jennings (c. 1619–1668), British politician Rick Jennings (born 1953), American football player Robert Spears-Jennings (born 2004), American football player Robert Yewdall Jennings (1913–2004), English juri', '["clm_wiki_jennings_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 47. Alpena (city, MI, pop=10175)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_alpena', 'place', 'alpena', 'Alpena', 'published', 'en', 0,
   'Alpena may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_alpena', 'city', 45.06168, -83.43275, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_alpena_in_country', 'plc_alpena', 'ent_usa', 'located_in', 0.95, 'clm_wiki_alpena_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_alpena_overview', 'plc_alpena', 'overview', 'Overview',
   'Alpena may refer to:', '["clm_wiki_alpena_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_alpena_history', 'plc_alpena', 'history', 'History',
   'Places in the United States [ edit ] Michigan [ edit ] Alpena, Michigan , the sole city in, and the county seat of Alpena County Alpena County, Michigan , a county in the state of Michigan Alpena County Regional Airport , county-owned public-use airport Alpena Township, Michigan , a township located in Alpena County, surrounding the city Other states [ edit ] Alpena, Arkansas , a town located in Boone County, Arkansas Alpena, South Dakota , a town located in Jerauld County, South Dakota Alpena, West Virginia , an unincorporated community in Randolph County, West Virginia', '["clm_wiki_alpena_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_alpena_geography', 'plc_alpena', 'geography', 'Geography',
   'Michigan [ edit ] Alpena, Michigan , the sole city in, and the county seat of Alpena County Alpena County, Michigan , a county in the state of Michigan Alpena County Regional Airport , county-owned public-use airport Alpena Township, Michigan , a township located in Alpena County, surrounding the city', '["clm_wiki_alpena_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_alpena_demographics', 'plc_alpena', 'demographics', 'Demographics',
   'Other states [ edit ] Alpena, Arkansas , a town located in Boone County, Arkansas Alpena, South Dakota , a town located in Jerauld County, South Dakota Alpena, West Virginia , an unincorporated community in Randolph County, West Virginia', '["clm_wiki_alpena_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 48. Paris (city, TN, pop=10150)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_paris', 'place', 'paris', 'Paris', 'published', 'en', 0,
   'Paris is the capital and largest city of France, with an estimated city population of 2.04 million in an area of 105.4 km2 (40.7 sq mi), and a metropolitan population of 13.2 million as of January 2026. Located on the river Seine in the centre of the Île-de-France region, it is the largest metropolitan area and fourth-most populous city in the European Union (EU). Nicknamed the "City of Light", partly because of its role in the Age of Enlightenment, Paris has been one of the world''s major centres of finance, diplomacy, commerce, culture, fashion, and gastronomy since the 17th century.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_paris', 'city', 36.302, -88.32671, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_paris_in_country', 'plc_paris', 'ent_usa', 'located_in', 0.95, 'clm_wiki_paris_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_paris_overview', 'plc_paris', 'overview', 'Overview',
   'Paris is the capital and largest city of France, with an estimated city population of 2.04 million in an area of 105.4 km2 (40.7 sq mi), and a metropolitan population of 13.2 million as of January 2026. Located on the river Seine in the centre of the Île-de-France region, it is the largest metropolitan area and fourth-most populous city in the European Union (EU). Nicknamed the "City of Light", partly because of its role in the Age of Enlightenment, Paris has been one of the world''s major centres of finance, diplomacy, commerce, culture, fashion, and gastronomy since the 17th century.', '["clm_wiki_paris_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_paris_history', 'plc_paris', 'history', 'History',
   'Etymology [ edit ] The ancient oppidum that corresponds to the modern city of Paris was first mentioned in the mid-1st century BC by Julius Caesar as Lutetia Parisiorum ('' Lutetia of the Parisii '') and is later attested as Parision in the 5th century AD, then as Paris in 1265. &#91; 1 &#93; &#91; 2 &#93; During the Roman period, it was commonly known as Lutetia in Latin, which is interpreted as either stemming from the Celtic root *lukot- (''mouse''), or from * luto- (''marsh, swamp''). &#91; 3 &#93; &#91; 4 &#93; &#91; 2 &#93; The name Paris is derived from its early inhabitants, the Parisii , a Gallic tribe from the Iron Age and the Roman period . &#91; 5 &#93; The meaning of the Gaulish ethnonym remains debated. According to Xavier Delamarre , it may derive from the Celtic root pario- (''cauldron''). &#91; 5 &#93; Alfred Holder interpreted the name as ''the makers'' or ''the commanders'', by comparing it to the Welsh peryff (''lord, commander''), both possibly descending from a Proto-Celtic form reconstructed as * kwar-is-io -. &#91; 6 &#93; Alternatively, Pierre-Yves Lambert proposed to translate Parisii as the ''spear people'', by connecting the first element to the Old Irish carr (''spear''), derived from an earlier * kwar-sā . &#91; 2 &#93; Residents of the city are known in English as Parisians and in French as Parisiens ( &#91;paʁizjɛ̃&#93; ⓘ ). They are also pejoratively called Parigots ( &#91;paʁiɡo&#93; ⓘ ). &#91; 7 &#93; ^ Nègre 1990 , p.&#160;155. ^ a b c Falileyev 2010 , s.v. Parisii and Lutetia . ^ Lambert 1994 , p.&#160;38. ^ Delamarre 2003 , p.&#160;211. ^ a b Delamarre 2003 , p.&#160;247. ^ Busse 2006 , p.&#160;199. ^ Dottin 2018 , p.&#160;535.', '["clm_wiki_paris_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_paris_geography', 'plc_paris', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Paris For a chronological guide, see Timeline of Paris . Origins [ edit ] Main article: Lutetia Gold coins minted by the Parisii , 1st century BC The Parisii people inhabited the Paris area from around the middle of the 3rd century BC. &#91; 1 &#93; One of the area''s major north–south trade routes crossed the Seine on the Île de la Cité , which gradually became an important trading centre. &#91; 2 &#93; The Parisii traded with many river towns, some as far away as the Iberian Peninsula, and minted their own coins. &#91; 3 &#93; Julius Caesar conquered the Paris Basin for the Roman Republic in 52 BC and began the Roman settlement on Paris''s Left Bank . &#91; 4 &#93; The Roman town was originally called Lutetia , more fully, Lutetia Parisiorum , "Lutetia of the Parisii", modern French Lutèce . It became a prosperous city with a forum, baths, temples, theatres, and an amphitheatre . &#91; 5 &#93; By the end of the Western Roman Empire , the town was known as Parisius , a Latin name that later became Paris in French. &#91; 6 &#93; Christianity was introduced in the middle of the 3rd century AD by Saint Denis , the first Bishop of Paris: according to legend, when he refused to renounce his faith before the Roman occupiers, he was beheaded on the hill which became known as Mons Martyrum (Latin "Hill of Martyrs"), later " Montmartre ", from where he walked headless to the north of the city; the place where he fell and was buried became an important religious shrine, the Basilica of Saint-Denis , and many French kings are buried there. &#91; 7 &#93; The Wall of Philippe Auguste , oldest cit', '["clm_wiki_paris_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_paris_demographics', 'plc_paris', 'demographics', 'Demographics',
   'Origins [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Lutetia Gold coins minted by the Parisii , 1st century BC The Parisii people inhabited the Paris area from around the middle of the 3rd century BC. &#91; 1 &#93; One of the area''s major north–south trade routes crossed the Seine on the Île de la Cité , which gradually became an important trading centre. &#91; 2 &#93; The Parisii traded with many river towns, some as far away as the Iberian Peninsula, and minted their own coins. &#91; 3 &#93; Julius Caesar conquered the Paris Basin for the Roman Republic in 52 BC and began the Roman settlement on Paris''s Left Bank . &#91; 4 &#93; The Roman town was originally called Lutetia , more fully, Lutetia Parisiorum , "Lutetia of the Parisii", modern French Lutèce . It became a prosperous city with a forum, baths, temples, theatres, and an amphitheatre . &#91; 5 &#93; By the end of the Western Roman Empire , the town was known as Parisius , a Latin name that later became Paris in French. &#91; 6 &#93; Christianity was introduced in the middle of the 3rd century AD by Saint Denis , the first Bishop of Paris: according to legend, when he refused to renounce his faith before the Roman occupiers, he was beheaded on the hill which became known as Mons Martyrum (Latin "Hill of Martyrs"), later " Montmartre ", from where he walked headless to the north of the city; the place where he fell and was buried became an important religious shrine, the Basilica of Saint-Denis , and many French kings are buried there. &#91; 7 &#93; The Wall of Philippe Auguste , oldest city wall in Paris Clovis the Frank , the first king of the Merovingian dynasty , made the city his ca', '["clm_wiki_paris_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_paris_primary', 'plc_paris', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/La_Tour_Eiffel_vue_de_la_Tour_Saint-Jacques%2C_Paris_ao%C3%BBt_2014_%282%29.jpg/3840px-La_Tour_Eiffel_vue_de_la_Tour_Saint-Jacques%2C_Paris_ao%C3%BBt_2014_%282%29.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/La_Tour_Eiffel_vue_de_la_Tour_Saint-Jacques%2C_Paris_ao%C3%BBt_2014_%282%29.jpg/330px-La_Tour_Eiffel_vue_de_la_Tour_Saint-Jacques%2C_Paris_ao%C3%BBt_2014_%282%29.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Paris',
   'Paris', 1, 10, unixepoch());

-- 49. Mayfield (city, KY, pop=10080)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_mayfield', 'place', 'mayfield', 'Mayfield', 'published', 'en', 0,
   'Mayfield may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_mayfield', 'city', 36.74172, -88.63672, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_mayfield_in_country', 'plc_mayfield', 'ent_usa', 'located_in', 0.95, 'clm_wiki_mayfield_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_mayfield_overview', 'plc_mayfield', 'overview', 'Overview',
   'Mayfield may refer to:', '["clm_wiki_mayfield_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_mayfield_history', 'plc_mayfield', 'history', 'History',
   'People [ edit ] Mayfield (surname)', '["clm_wiki_mayfield_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_mayfield_geography', 'plc_mayfield', 'geography', 'Geography',
   'Places [ edit ] Australia [ edit ] Mayfield, New South Wales , a suburb of Newcastle Mayfield, New South Wales (Queanbeyan–Palerang) Mayfield, New South Wales (Shoalhaven) Eltham, New South Wales , formerly called Mayfield, in Lismore LGA Mayfield, Tasmania Canada [ edit ] Mayfield, Edmonton , a neighborhood in Alberta Mayfield, New Brunswick , an unincorporated community in Charlotte County Mayfield, Prince Edward Island , a community on Prince Edward Island Route 13 Rural Municipality of Mayfield No. 406 , Saskatchewan Ireland [ edit ] Mayfield, County Kildare , Ireland Mayfield, Cork , Ireland Mayfield GAA , a Gaelic Athletic Association club New Zealand [ edit ] Mayfield, Canterbury , a village in Canterbury Mayfield, Marlborough , a suburb of Blenheim South Africa [ edit ] Mayfield, South Africa United Kingdom [ edit ] Mayfield, East Sussex , England Mayfield, Edinburgh , Scotland Mayfield, Highland , a location in Scotland Mayfield, Midlothian , Scotland Mayfield, Northumberland , a location in England Mayfield, Staffordshire , England Mayfield, West Lothian , a location in Scotland (part of Armadale, West Lothian) Mayfield Playing Fields , Dundee, Scotland Manchester Mayfield railway station , Manchester, England United States [ edit ] Mayfield, Arkansas Mayfield, California , annexed by the city of Palo Alto in 1925 Its train station, now California Avenue station Mayfield, Delaware Mayfield (Middletown, Delaware) , listed on the National Register of Historic Places in New Castle County, Delaware Mayfield, Georgia Mayfield, Kansas Mayfield, Kentucky Mayfield, Baltimore , Maryland Mayfield, Michigan Mayfield (town), New York Mayfield (village), New York , within the town of Mayfield Mayfield, Ohio Mayfield, Oklahoma Mayfield, Pennsylvania Mayfield, Tennessee , unincorporated community in Jackson County Mayfield, Utah Mayfield, Washington Mayfield, Wisconsin', '["clm_wiki_mayfield_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_mayfield_demographics', 'plc_mayfield', 'demographics', 'Demographics',
   'Australia [ edit ] Mayfield, New South Wales , a suburb of Newcastle Mayfield, New South Wales (Queanbeyan–Palerang) Mayfield, New South Wales (Shoalhaven) Eltham, New South Wales , formerly called Mayfield, in Lismore LGA Mayfield, Tasmania', '["clm_wiki_mayfield_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 50. Bonham (city, TX, pop=10079)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_bonham', 'place', 'bonham', 'Bonham', 'published', 'en', 0,
   'Bonham may refer to:Bonham (surname), an English and Welsh surname
Bonham (band), a British hard rock band formed by Jason Bonham
Bonham (Rouse), a percussion work by Christopher Rouse
Bonham, Wiltshire, a place in the United Kingdom
Bonham, Texas, a place in the United States', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_bonham', 'city', 33.57733, -96.17831, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_bonham_in_country', 'plc_bonham', 'ent_usa', 'located_in', 0.95, 'clm_wiki_bonham_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bonham_overview', 'plc_bonham', 'overview', 'Overview',
   'Bonham may refer to:Bonham (surname), an English and Welsh surname
Bonham (band), a British hard rock band formed by Jason Bonham
Bonham (Rouse), a percussion work by Christopher Rouse
Bonham, Wiltshire, a place in the United Kingdom
Bonham, Texas, a place in the United States', '["clm_wiki_bonham_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());


-- 51. Lexington (city, NE, pop=10075)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_lexington', 'place', 'lexington', 'Lexington', 'published', 'en', 0,
   'Lexington or The Lexington may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_lexington', 'city', 40.78084, -99.7415, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_lexington_in_country', 'plc_lexington', 'ent_usa', 'located_in', 0.95, 'clm_wiki_lexington_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_lexington_overview', 'plc_lexington', 'overview', 'Overview',
   'Lexington or The Lexington may refer to:', '["clm_wiki_lexington_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_lexington_history', 'plc_lexington', 'history', 'History',
   'Places [ edit ] Canada [ edit ] Lexington, a district in Waterloo, Ontario United States [ edit ] Lexington, Kentucky , the most populous city with this name Lexington, Massachusetts , the oldest municipality with this name in the United States, and site of the first battle of the American Revolutionary War Lexington, Alabama , a town Lexington, California , now a ghost town Lexington, Georgia , a city Lexington, Illinois , a city Lexington, Indiana , an unincorporated community Lexington, Carroll County, Indiana , an unincorporated community Lexington, Kansas , now a ghost town Lexington, Maine , a township Lexington Township, Michigan Lexington, Michigan , a village within the township Lexington, Minnesota , a city Lexington, Mississippi , a city Lexington, Missouri , a city Lexington, Nebraska , a city Lexington, New York , a town Lexington, North Carolina , a city Lexington, Ohio , a village Lexington, Oklahoma , a city Lexington, Oregon , a city Lexington, South Carolina , a town Lexington County, South Carolina Lexington, Tennessee , a city Lexington, Texas , a town Lexington, Virginia , a city Lexington (plantation) , Virginia, an archaeological site Lexington, Washington , a census-designated place Lexington Avenue (Manhattan) , a street in New York City Former [ edit ] Laxton, Nottinghamshire in England, formerly Lexington', '["clm_wiki_lexington_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_lexington_geography', 'plc_lexington', 'geography', 'Geography',
   'Canada [ edit ] Lexington, a district in Waterloo, Ontario', '["clm_wiki_lexington_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_lexington_demographics', 'plc_lexington', 'demographics', 'Demographics',
   'United States [ edit ] Lexington, Kentucky , the most populous city with this name Lexington, Massachusetts , the oldest municipality with this name in the United States, and site of the first battle of the American Revolutionary War Lexington, Alabama , a town Lexington, California , now a ghost town Lexington, Georgia , a city Lexington, Illinois , a city Lexington, Indiana , an unincorporated community Lexington, Carroll County, Indiana , an unincorporated community Lexington, Kansas , now a ghost town Lexington, Maine , a township Lexington Township, Michigan Lexington, Michigan , a village within the township Lexington, Minnesota , a city Lexington, Mississippi , a city Lexington, Missouri , a city Lexington, Nebraska , a city Lexington, New York , a town Lexington, North Carolina , a city Lexington, Ohio , a village Lexington, Oklahoma , a city Lexington, Oregon , a city Lexington, South Carolina , a town Lexington County, South Carolina Lexington, Tennessee , a city Lexington, Texas , a town Lexington, Virginia , a city Lexington (plantation) , Virginia, an archaeological site Lexington, Washington , a census-designated place Lexington Avenue (Manhattan) , a street in New York City', '["clm_wiki_lexington_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 52. Waverly (city, IA, pop=10066)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_waverly', 'place', 'waverly', 'Waverly', 'published', 'en', 0,
   'Waverly may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_waverly', 'city', 42.72581, -92.47546, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_waverly_in_country', 'plc_waverly', 'ent_usa', 'located_in', 0.95, 'clm_wiki_waverly_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_waverly_overview', 'plc_waverly', 'overview', 'Overview',
   'Waverly may refer to:', '["clm_wiki_waverly_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_waverly_history', 'plc_waverly', 'history', 'History',
   'Education [ edit ] Waverly Community Schools , a school district located in Lansing, Michigan Waverly School District 145 , Nebraska Waverly Central School District , New York Waverly High School (disambiguation) The Waverly School , a private school in Pasadena, California', '["clm_wiki_waverly_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_waverly_geography', 'plc_waverly', 'geography', 'Geography',
   'Populated places [ edit ] Waverly, Alabama , a town Waverly, Colorado , an unincorporated community Waverly, Florida , a census-designated place Waverly, Georgia , an unincorporated community Waverly, Illinois , a small city Waverly Lake , Illinois, a reservoir Waverly, Indiana , an unincorporated community Waverly, Iowa , a city Waverly, Kansas , a city Waverly, Kentucky , a city Waverly, Louisiana , an unincorporated community Waverly, Baltimore , Maryland, a neighborhood Waverly, Michigan , an unincorporated community and census-designated place Waverly Township, Cheboygan County, Michigan Waverly Township, Van Buren County, Michigan Waverly, Minnesota , a city Waverly Township, Minnesota Waverly, Mississippi , an unincorporated community Waverly, Missouri , a city Waverly Township, Lincoln County, Missouri , an inactive township Waverly, Nebraska , a city Waverly, Franklin County, New York , a town Waverly, Tioga County, New York , a village Waverly, Ohio , a village Waverly Township, Pennsylvania Waverly, Pennsylvania , an unincorporated community within the above township Waverly, South Dakota , an unincorporated community and census-designated place Waverly, Tennessee , a city Waverly (Old Wavery) and New Waverly, populated areas next to Sam Houston National Forest , in Texas Waverly, Virginia , a town Waverly, Caroline County, Virginia , an unincorporated community Waverly, Washington , a town Waverly, West Virginia , a census-designated place Waverly, Wisconsin , an unincorporated community', '["clm_wiki_waverly_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_waverly_demographics', 'plc_waverly', 'demographics', 'Demographics',
   'Education [ edit ] Waverly Community Schools , a school district located in Lansing, Michigan Waverly School District 145 , Nebraska Waverly Central School District , New York Waverly High School (disambiguation) The Waverly School , a private school in Pasadena, California', '["clm_wiki_waverly_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 53. London (city, OH, pop=10060)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_london', 'place', 'london', 'London', 'published', 'en', 0,
   'London is the capital and largest city of England and the United Kingdom, with a population of 9.1 million people in 2024. Its wider metropolitan area is the largest in Western Europe, with a population of 15.4 million. London stands on the River Thames in southeast England, at the head of a 50-mile (80 km) tidal estuary down to the North Sea, and has been a major settlement for nearly 2,000 years. Its ancient core and financial centre, the City of London, was founded by the Romans as Londinium and has retained its medieval boundaries. The City of Westminster, to the west of the City of London, has been the site of the national government and parliament for centuries. London grew rapidly in the 19th century, becoming the world''s largest city at the time. Since the 19th century the name "London" has referred to the metropolis around the City of London, historically split among the counties of Middlesex, Essex, Surrey, Kent and Hertfordshire. Since 1965 it has largely comprised the administrative area of Greater London, governed by 33 local authorities and the Greater London Authority.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_london', 'city', 39.88645, -83.44825, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_london_in_country', 'plc_london', 'ent_usa', 'located_in', 0.95, 'clm_wiki_london_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_london_overview', 'plc_london', 'overview', 'Overview',
   'London is the capital and largest city of England and the United Kingdom, with a population of 9.1 million people in 2024. Its wider metropolitan area is the largest in Western Europe, with a population of 15.4 million. London stands on the River Thames in southeast England, at the head of a 50-mile (80 km) tidal estuary down to the North Sea, and has been a major settlement for nearly 2,000 years. Its ancient core and financial centre, the City of London, was founded by the Romans as Londinium and has retained its medieval boundaries. The City of Westminster, to the west of the City of London, has been the site of the national government and parliament for centuries. London grew rapidly in the 19th century, becoming the world''s largest city at the time. Since the 19th century the name "London" has referred to the metropolis around the City of London, historically split among the counties of Middlesex, Essex, Surrey, Kent and Hertfordshire. Since 1965 it has largely comprised the administrative area of Greater London, governed by 33 local authorities and the Greater London Authority.', '["clm_wiki_london_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_london_history', 'plc_london', 'history', 'History',
   'Etymology [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Etymology of London The name London is attested in the first century AD, usually in the Latinised form Londinium . &#91; 1 &#93; Modern scientific analyses of the name must account for the origins of the different forms that are found in early sources, such as Latin Londinium , Old English Lunden , and Welsh Llundein , with reference to the known developments over time of sounds in those different languages. The name came into these languages from Common Brythonic ; the lost Celtic form of the name was most likely &#42; Londonjon . &#91; 2 &#93; Until 1889, the name "London" applied officially only to the City of London , but since then it has also denoted the County of London and Greater London . &#91; 3 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-ws-icon a{background-size:contain;padding:0 1em 0 0}.mw-parser-output .cs1-code{c', '["clm_wiki_london_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_london_geography', 'plc_london', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of London For a chronological guide, see Timeline of London . Prehistory [ edit ] In 1993 remains of a Bronze Age bridge were found on the south River Thames foreshore , upstream from Vauxhall Bridge . &#91; 1 &#93; Two of the timbers were radiocarbon dated to 1750–1285&#160;BC. &#91; 1 &#93; In 2010 foundations of a large timber structure, dated to 4800–4500&#160;BC, &#91; 2 &#93; were found on the Thames'' south foreshore downstream from Vauxhall Bridge. &#91; 3 &#93; Both are located on the south bank of the Thames, where the now-underground River Effra flows into the Thames. &#91; 3 &#93; Roman London [ edit ] Main article: Londinium .mw-parser-output .tmulti .multiimageinner{display:flex;flex-direction:column}.mw-parser-output .tmulti .trow{display:flex;flex-direction:row;clear:left;flex-wrap:wrap;width:100%;box-sizing:border-box}.mw-parser-output .tmulti .tsingle{margin:1px;float:left}.mw-parser-output .tmulti .theader{clear:both;font-weight:bold;text-align:center;align-self:center;background-color:transparent;width:100%}.mw-parser-output .tmulti .thumbcaption{background-color:transparent}.mw-parser-output .tmulti .text-align-left{text-align:left}.mw-parser-output .tmulti .text-align-right{text-align:right}.mw-parser-output .tmulti .text-align-center{text-align:center}@media all and (max-width:720px){.mw-parser-output .tmulti .thumbinner{width:100%!important;box-sizing:border-box;max-width:none!important;align-items:center}.mw-parser-output .tmulti .trow{justify-content:center}.mw-parser-output .tmulti .tsingle{float:none!important;max-width:100%!important;box-sizing:border-box;te', '["clm_wiki_london_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_london_demographics', 'plc_london', 'demographics', 'Demographics',
   'Prehistory [ edit ] In 1993 remains of a Bronze Age bridge were found on the south River Thames foreshore , upstream from Vauxhall Bridge . &#91; 1 &#93; Two of the timbers were radiocarbon dated to 1750–1285&#160;BC. &#91; 1 &#93; In 2010 foundations of a large timber structure, dated to 4800–4500&#160;BC, &#91; 2 &#93; were found on the Thames'' south foreshore downstream from Vauxhall Bridge. &#91; 3 &#93; Both are located on the south bank of the Thames, where the now-underground River Effra flows into the Thames. &#91; 3 &#93; ^ a b .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-ws-icon a{background-size:contain;padding:0 1em 0 0}.mw-parser-output .cs1-code{color:inherit;background:inherit;border:none;padding:inherit}.m', '["clm_wiki_london_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_london_primary', 'plc_london', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/6/67/London_Skyline_%28125508655%29.jpeg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/London_Skyline_%28125508655%29.jpeg/330px-London_Skyline_%28125508655%29.jpeg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'London',
   'London', 1, 10, unixepoch());

-- 54. Clinton (city, TN, pop=10049)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_clinton', 'place', 'clinton', 'Clinton', 'published', 'en', 0,
   'Clinton is an English toponymic surname, indicating one''s ancestors came from English places called Glympton or Glinton. Clinton has also been used as a given name since the late 19th century.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_clinton', 'city', 36.10341, -84.13186, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_clinton_in_country', 'plc_clinton', 'ent_usa', 'located_in', 0.95, 'clm_wiki_clinton_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_clinton_overview', 'plc_clinton', 'overview', 'Overview',
   'Clinton is an English toponymic surname, indicating one''s ancestors came from English places called Glympton or Glinton. Clinton has also been used as a given name since the late 19th century.', '["clm_wiki_clinton_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_clinton_history', 'plc_clinton', 'history', 'History',
   'Family of Bill and Hillary Clinton [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Clinton family Roger Clinton Sr. (1908–1967), step-father of Bill Clinton Virginia Clinton (1923–1994), mother of Bill Clinton Roger Clinton Jr. (born 1956), maternal half-brother of Bill Clinton Bill Clinton (born 1946), 42nd president of the United States from 1993 to 2001, and husband of Hillary Clinton Hillary Clinton (born 1947), née Rodham, 67th U.S. secretary of state from 2013 to 2017, U.S. senator from New York (2001 to 2013), 2016 Democratic presidential nominee, and wife of Bill Clinton Chelsea Clinton (born 1980), daughter of Bill and Hillary Clinton', '["clm_wiki_clinton_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_clinton_geography', 'plc_clinton', 'geography', 'Geography',
   'Family of George Clinton [ edit ] Charles Clinton (1690–1773), French and Indian War colonel, father of James and George Clinton James Clinton (1733–1812), American Revolutionary War general, father of DeWitt and brother of George Clinton George Clinton (vice president) (1739–1812), 4th vice president of the United States and 1st governor of New York DeWitt Clinton (1769–1828), 6th governor of New York and 47th mayor of New York City, son of James and nephew of George Clinton George Clinton Jr. (1771–1809), member of the U.S. House of Representatives from New York, son of George Clinton George W. Clinton (1807–1885), 12th mayor of Buffalo, New York, son of DeWitt Clinton', '["clm_wiki_clinton_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_clinton_demographics', 'plc_clinton', 'demographics', 'Demographics',
   'Family of Sir Henry Clinton [ edit ] Admiral George Clinton (Royal Navy officer) (1686–1761), British naval officer and colonial governor General Henry Clinton (British Army officer, born 1730) (died 1795), British general during the American Revolutionary War General William Henry Clinton (1769–1846), British general during the Napoleonic Wars Lieutenant General Henry Clinton (British Army officer, born 1771) (died 1829), British general during the Napoleonic Wars', '["clm_wiki_clinton_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 55. Plymouth (city, IN, pop=10035)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_plymouth', 'place', 'plymouth', 'Plymouth', 'published', 'en', 0,
   'Plymouth is a port city and unitary authority in Devon, England. It is located on the county''s south coast between the rivers Plym and Tamar, about 36 miles (58 km) south-west of Exeter and 193 miles (311 km) south-west of London. It is the most populous settlement in Devon.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_plymouth', 'city', 41.34366, -86.30973, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_plymouth_in_country', 'plc_plymouth', 'ent_usa', 'located_in', 0.95, 'clm_wiki_plymouth_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_plymouth_overview', 'plc_plymouth', 'overview', 'Overview',
   'Plymouth is a port city and unitary authority in Devon, England. It is located on the county''s south coast between the rivers Plym and Tamar, about 36 miles (58 km) south-west of Exeter and 193 miles (311 km) south-west of London. It is the most populous settlement in Devon.', '["clm_wiki_plymouth_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_plymouth_history', 'plc_plymouth', 'history', 'History',
   'City and unitary authority in Devon, England .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} This article is about the city in England. For the town in the U.S. state of Massachusetts, see Plymouth, Massachusetts . For other uses, see Plymouth (disambiguation) . City and unitary authority in England @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-settlement{border-collapse:collapse;line-height:1.2em}@media(min-width:640px){.mw-parser-output .ib-settlement{width:23em}}.mw-parser-output .ib-settlement td,.mw-parser-output .ib-settlement th{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.4em 0.6em}.mw-parser-output .ib-settlement .mergedtoprow .infobox-full-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-header,.mw-parser-output .ib-settlement .mergedtoprow .infobox-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-label,.mw-parser-output .ib-settlement .mergedtoprow .', '["clm_wiki_plymouth_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_plymouth_geography', 'plc_plymouth', 'geography', 'Geography',
   'Early history [ edit ] Upper Palaeolithic deposits, including bones of Homo sapiens have been found in local caves, &#91; 1 &#93; and artefacts dating from the Bronze Age to the Middle Iron Age have been found at Mount Batten , &#91; 2 &#93; showing that it was one of few principal trading ports of pre-Roman Britannia dominating continental trade with Armorica . &#91; 3 &#93; An unidentified settlement named Tamari Ostts &#91; a &#93; is listed in Ptolemy''s Geographia and is presumed to be located in the area of the modern city. &#91; 4 &#93; An ancient promontory fort was located at Rame Head at the mouth of Plymouth Sound &#91; citation needed &#93; with ancient hillforts located at Lyneham Warren to the east, Boringdon Camp &#91; citation needed &#93; and Maristow Camp to the north. &#91; 5 &#93; The settlement of Plympton , further up the river Plym than the current Plymouth, was also an early trading port. &#91; b &#93; As the river silted up in the early 11th century, mariners and merchants were forced to settle downriver, at the current day Barbican near the river mouth. &#91; 6 &#93; At the time this village was called Sutton, meaning south town in Old English . &#91; 6 &#93; The name Plym Mouth , meaning "mouth of the river Plym" was first mentioned in a Pipe Roll of 1211. &#91; 7 &#93; Plympton Priory owned land at Sutton and secured a charter from Henry III in 1254 granting the priory the right to hold a weekly market and annual fair at Sutton, making it a market town . &#91; 8 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{backgr', '["clm_wiki_plymouth_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_plymouth_demographics', 'plc_plymouth', 'demographics', 'Demographics',
   'Early defence and Renaissance [ edit ] Prysten House (1498) on Finewell Street is the oldest surviving house in Plymouth, built from local Plymouth limestone and Dartmoor granite During the Hundred Years'' War , a French attack in 1340 burned a manor house and took some prisoners, but failed to get into the town. &#91; 1 &#93; The town was burned by Breton raiders in 1403. &#91; 2 &#93; On 12 November 1439, the market town of Sutton was incorporated as a borough and was formally renamed ''Plymouth'', with a subsequent charter the following year formalising its boundaries. It was the first time a borough charter had been issued by parliament , rather than directly from the monarch. &#91; 3 &#93; &#91; 4 &#93; In the late 15th century, Plymouth Castle , a "castle quadrate", was constructed close to the area now known as The Barbican ; it included four round towers, one at each corner, as featured on the city coat of arms. &#91; 5 &#93; Charter map of Sutton harbour and Plymouth in 1540 The castle served to protect Sutton Pool , which is where the fleet was based in Plymouth prior to the establishment of Plymouth Dockyard . An act of Parliament, the Fortification of Plymouth Act 1512 ( 4 Hen. 8 . c. 20), was passed to further fortify Plymouth. The work included defensive walls at the entrance to Sutton Pool, across which a chain was extended in times of danger. &#91; 6 &#93; Defences on St Nicholas Island also date from this time, and a string of six artillery blockhouses were built, including one on Fishers Nose at the south-eastern corner of the Hoe. &#91; 7 &#93; This location was further strengthened by the building of a fort (later known as Drake''s Fort) in 1596; it was the site of the Citadel , established in the 1660s. &#91; 8 &#93; Siege of Plymouth , 1643 During the 16th century, locally produced wool was the major export commodity. &#91; 9 &#93; Plymouth was the home port for successful maritime traders, among them Sir John Hawkins , who led England''s first fora', '["clm_wiki_plymouth_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_plymouth_primary', 'plc_plymouth', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/1/10/Plymouth_City.JPG?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Plymouth_City.JPG/330px-Plymouth_City.JPG?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Plymouth',
   'Plymouth', 1, 10, unixepoch());

-- 56. Woodbury (city, NJ, pop=10020)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_woodbury', 'place', 'woodbury', 'Woodbury', 'published', 'en', 0,
   'Woodbury may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_woodbury', 'city', 39.83817, -75.15268, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_woodbury_in_country', 'plc_woodbury', 'ent_usa', 'located_in', 0.95, 'clm_wiki_woodbury_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_woodbury_overview', 'plc_woodbury', 'overview', 'Overview',
   'Woodbury may refer to:', '["clm_wiki_woodbury_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_woodbury_history', 'plc_woodbury', 'history', 'History',
   'Geography [ edit ] Antarctica [ edit ] Woodbury Glacier , a glacier on Graham Land, British Antarctic Territory Australia [ edit ] Woodbury, Tasmania , a locality in Australia Woodbury, Queensland , a locality in Australia England [ edit ] Woodbury, Bournemouth , an area in Dorset Woodbury, East Devon , a village and civil parish in East Devon Woodbury Castle , a hillfort near the village of Woodbury in Devon Woodbury, Stoke Fleming , South Hams, Devon Little Woodbury , an archaeological site near Salisbury in Wiltshire Woodbury Hill , Worcestershire, the site of the declaration of Worcestershire''s Clubmen in the first English Civil War New Zealand [ edit ] Woodbury, New Zealand , a village near Geraldine in Canterbury United States [ edit ] Woodbury, Connecticut Woodbury, Georgia Woodbury, Indiana Woodbury, Irvine, California Woodbury, Kentucky Woodbury, Illinois Woodbury, Michigan Woodbury, Minnesota , the most populous place with the name Woodbury, New Jersey Woodbury station Woodbury, New York (disambiguation) Woodbury, Nassau County, New York , on Long Island Woodbury, Orange County, New York , in the Hudson Valley Woodbury, Pennsylvania Woodbury, Tennessee Woodbury, Vermont Woodbury County, Iowa Woodbury (Leetown, West Virginia) , historic house listed on the National Register of Historic Places Woodbury Creek , a stream in Minnesota Fort Woodbury , a fortification on the Arlington Line during the American Civil War Fictional [ edit ] Woodbury, Georgia - the settlement presided over by The Governor in The Walking Dead franchise', '["clm_wiki_woodbury_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_woodbury_geography', 'plc_woodbury', 'geography', 'Geography',
   'Woodbury may refer to: @media all and (max-width:720px){body.skin-minerva .mw-parser-output .tocright{display:none}.mw-parser-output .tocright{width:100%!important}}@media all and (min-width:720px){.mw-parser-output .tocright{float:right;clear:right;width:auto;margin:0 0 0.5em 1em}.mw-parser-output .tocright-clear-left{clear:left}.mw-parser-output .tocright-clear-both{clear:both}.mw-parser-output .tocright-clear-none{clear:none}}', '["clm_wiki_woodbury_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_woodbury_demographics', 'plc_woodbury', 'demographics', 'Demographics',
   'Australia [ edit ] Woodbury, Tasmania , a locality in Australia Woodbury, Queensland , a locality in Australia', '["clm_wiki_woodbury_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 57. Bluffton (city, IN, pop=10005)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_bluffton', 'place', 'bluffton', 'Bluffton', 'published', 'en', 0,
   'Bluffton may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_bluffton', 'city', 40.73866, -85.17164, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_bluffton_in_country', 'plc_bluffton', 'ent_usa', 'located_in', 0.95, 'clm_wiki_bluffton_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bluffton_overview', 'plc_bluffton', 'overview', 'Overview',
   'Bluffton may refer to:', '["clm_wiki_bluffton_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bluffton_history', 'plc_bluffton', 'history', 'History',
   'Places in Canada [ edit ] Bluffton, Alberta', '["clm_wiki_bluffton_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bluffton_geography', 'plc_bluffton', 'geography', 'Geography',
   'Places in the United States [ edit ] Bluffton, Alabama Bluffton, Arkansas Bluffton Colony, a part of Muskegon, Michigan , which included a colony of vaudeville actors, including Buster Keaton . Bluffton, Georgia Bluffton, Indiana Bluffton, Minnesota Bluffton, Ohio Bluffton University Bluffton, Texas Bluffton, South Carolina Bluffton Township, Minnesota', '["clm_wiki_bluffton_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());


-- 58. Silver City (city, NM, pop=10004)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_silver-city', 'place', 'silver-city', 'Silver City', 'published', 'en', 0,
   'Silver City may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_silver-city', 'city', 32.77007, -108.28033, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_silver-city_in_country', 'plc_silver-city', 'ent_usa', 'located_in', 0.95, 'clm_wiki_silver-city_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_silver-city_overview', 'plc_silver-city', 'overview', 'Overview',
   'Silver City may refer to:', '["clm_wiki_silver-city_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_silver-city_history', 'plc_silver-city', 'history', 'History',
   'Places [ edit ] United States [ edit ] Silver City, California Silver City, Georgia Silver City, Idaho , a ghost town Silver City, Iowa Silver City, Michigan Silver City, Mississippi Silver City, Montana, a community in Lewis and Clark County Silver City, New Mexico Silver City, North Carolina Silver City, Nevada Silver City, Oklahoma , a ghost town Silver City, South Dakota Silver City, Utah , a ghost town Canada [ edit ] Silver City, Yukon Australia [ edit ] Silver City Highway , a highway in New South Wales Silver City, Christmas Island Nicknames [ edit ] Broken Hill, New South Wales , Australia Cuttack , Odisha, India Tong''an District , Fujian, People''s Republic of China Aberdeen , United Kingdom, the "Silver City with the Golden Sands" Sheffield , United Kingdom Las Vegas , Nevada, United States Meriden, Connecticut , United States Taunton, Massachusetts , United States Silver City Galleria , a large two-story indoor shopping mall in Taunton, Massachusetts Schoonhoven , Netherlands', '["clm_wiki_silver-city_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_silver-city_geography', 'plc_silver-city', 'geography', 'Geography',
   'United States [ edit ] Silver City, California Silver City, Georgia Silver City, Idaho , a ghost town Silver City, Iowa Silver City, Michigan Silver City, Mississippi Silver City, Montana, a community in Lewis and Clark County Silver City, New Mexico Silver City, North Carolina Silver City, Nevada Silver City, Oklahoma , a ghost town Silver City, South Dakota Silver City, Utah , a ghost town', '["clm_wiki_silver-city_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_silver-city_demographics', 'plc_silver-city', 'demographics', 'Demographics',
   'Canada [ edit ] Silver City, Yukon', '["clm_wiki_silver-city_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_silver-city_overview', 'plc_silver-city', 'overview', 'History',
   'Silver City may refer to:', '["clm_wiki_silver-city_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_silver-city_overview', 'plc_silver-city', 'overview', 'Geography',
   'Silver City may refer to:', '["clm_wiki_silver-city_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_silver-city_overview', 'plc_silver-city', 'overview', 'Demographics',
   'Silver City may refer to:', '["clm_wiki_silver-city_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 59. Uniontown (city, PA, pop=9990)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_uniontown', 'place', 'uniontown', 'Uniontown', 'published', 'en', 0,
   'Uniontown may refer to:Uniontown, Alabama
Uniontown, Arkansas
Uniontown, former name of Lotus, California
Uniontown, Jackson County, Indiana
Uniontown, Perry County, Indiana
Uniontown, Kansas
Uniontown, Kentucky
Uniontown, Maryland
Uniontown, Missouri
Uniontown, Ohio 
Uniontown, Belmont County, Ohio
Uniontown, Pennsylvania
Uniontown, Washington
Uniontown, the original name of the Anacostia Historic District neighborhood in Washington, D.C.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_uniontown', 'city', 39.90008, -79.71643, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_uniontown_in_country', 'plc_uniontown', 'ent_usa', 'located_in', 0.95, 'clm_wiki_uniontown_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_uniontown_overview', 'plc_uniontown', 'overview', 'Overview',
   'Uniontown may refer to:Uniontown, Alabama
Uniontown, Arkansas
Uniontown, former name of Lotus, California
Uniontown, Jackson County, Indiana
Uniontown, Perry County, Indiana
Uniontown, Kansas
Uniontown, Kentucky
Uniontown, Maryland
Uniontown, Missouri
Uniontown, Ohio 
Uniontown, Belmont County, Ohio
Uniontown, Pennsylvania
Uniontown, Washington
Uniontown, the original name of the Anacostia Historic District neighborhood in Washington, D.C.', '["clm_wiki_uniontown_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());


-- 60. Harrisonville (city, MO, pop=9986)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_harrisonville', 'place', 'harrisonville', 'Harrisonville', 'published', 'en', 0,
   'Harrisonville is a city in Cass County, Missouri, United States. The population was 10,121 at the 2020 census. It is the county seat of Cass 
County. It is part of the Kansas City metropolitan area.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_harrisonville', 'city', 38.65334, -94.34884, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_harrisonville_in_country', 'plc_harrisonville', 'ent_usa', 'located_in', 0.95, 'clm_wiki_harrisonville_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_harrisonville_overview', 'plc_harrisonville', 'overview', 'Overview',
   'Harrisonville is a city in Cass County, Missouri, United States. The population was 10,121 at the 2020 census. It is the county seat of Cass 
County. It is part of the Kansas City metropolitan area.', '["clm_wiki_harrisonville_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_harrisonville_primary', 'plc_harrisonville', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/9/9d/Cass_County_Missouri_Courthouse_20191026-6991.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Cass_County_Missouri_Courthouse_20191026-6991.jpg/330px-Cass_County_Missouri_Courthouse_20191026-6991.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Harrisonville',
   'Harrisonville', 1, 10, unixepoch());

-- 61. Pearsall (city, TX, pop=9980)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_pearsall', 'place', 'pearsall', 'Pearsall', 'published', 'en', 0,
   'Pearsall may refer to:Pearsall (surname)
Pearsall, Texas, an American city
Pearsall, Western Australia, an Australian suburb', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_pearsall', 'city', 28.89219, -99.09503, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_pearsall_in_country', 'plc_pearsall', 'ent_usa', 'located_in', 0.95, 'clm_wiki_pearsall_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_pearsall_overview', 'plc_pearsall', 'overview', 'Overview',
   'Pearsall may refer to:Pearsall (surname)
Pearsall, Texas, an American city
Pearsall, Western Australia, an Australian suburb', '["clm_wiki_pearsall_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());


-- 62. Carroll (city, IA, pop=9968)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_carroll', 'place', 'carroll', 'Carroll', 'published', 'en', 0,
   'Carroll may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_carroll', 'city', 42.06582, -94.86693, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_carroll_in_country', 'plc_carroll', 'ent_usa', 'located_in', 0.95, 'clm_wiki_carroll_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_carroll_overview', 'plc_carroll', 'overview', 'Overview',
   'Carroll may refer to:', '["clm_wiki_carroll_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_carroll_history', 'plc_carroll', 'history', 'History',
   'People [ edit ] Carroll (given name) Carroll (surname) O''Carroll , also known as Carroll, a Gaelic Irish clan Mac Cearbhaill , anglicised as Carroll, a Gaelic Irish clan', '["clm_wiki_carroll_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_carroll_geography', 'plc_carroll', 'geography', 'Geography',
   'Places [ edit ] Australia [ edit ] Carroll, New South Wales United States [ edit ] Carroll, Iowa Carroll, Nebraska Carroll, New Hampshire Carroll, New York Carroll, Ohio Carroll, Texas Carroll County (disambiguation) , various Carroll Plantation, Maine Carroll Township (disambiguation) , various Carroll Valley, Pennsylvania East Carroll Parish, Louisiana East Carroll Township, Cambria County, Pennsylvania West Carroll Parish, Louisiana Mount Carroll, Illinois Other [ edit ] Carroll (crater) , a crater on the far side of the Moon unofficially named by the Artemis II crew', '["clm_wiki_carroll_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_carroll_demographics', 'plc_carroll', 'demographics', 'Demographics',
   'Australia [ edit ] Carroll, New South Wales', '["clm_wiki_carroll_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 63. Indianola (city, MS, pop=9943)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_indianola', 'place', 'indianola', 'Indianola', 'published', 'en', 0,
   'Indianola may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_indianola', 'city', 33.45095, -90.65509, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_indianola_in_country', 'plc_indianola', 'ent_usa', 'located_in', 0.95, 'clm_wiki_indianola_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_indianola_overview', 'plc_indianola', 'overview', 'Overview',
   'Indianola may refer to:', '["clm_wiki_indianola_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_indianola_history', 'plc_indianola', 'history', 'History',
   'Places in the United States [ edit ] Indianola, California Indianola, Florida Indianola, Georgia Indianola, Illinois Indianola, Iowa Indianola, Kansas , a former settlement in Kansas Indianola, Mississippi Indianola, Nebraska Indianola, Delaware County, Oklahoma Indianola, Pittsburg County, Oklahoma Indianola, Pennsylvania Indianola, Texas , a ghost town Indianola, Utah Indianola, Washington', '["clm_wiki_indianola_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_indianola_geography', 'plc_indianola', 'geography', 'Geography',
   'Other [ edit ] Indianola (album) , a 2007 album by Steve Azar USS&#160; Indianola , an iron-clad ship of the American Civil War', '["clm_wiki_indianola_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());


-- 64. Covington (city, LA, pop=9928)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_covington', 'place', 'covington', 'Covington', 'published', 'en', 0,
   'Covington may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_covington', 'city', 30.47549, -90.10042, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_covington_in_country', 'plc_covington', 'ent_usa', 'located_in', 0.95, 'clm_wiki_covington_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_covington_overview', 'plc_covington', 'overview', 'Overview',
   'Covington may refer to:', '["clm_wiki_covington_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_covington_history', 'plc_covington', 'history', 'History',
   'People [ edit ] Covington (surname)', '["clm_wiki_covington_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_covington_geography', 'plc_covington', 'geography', 'Geography',
   'Places [ edit ] United Kingdom [ edit ] Covington, Cambridgeshire Covington, South Lanarkshire United States [ edit ] Covington, Georgia Covington, Indiana Covington, Iowa Covington, Kentucky , the largest American city named Covington Covington, Louisiana Covington, Michigan Covington, Missouri Covington, Nebraska Covington, New York Covington, Ohio Covington, Oklahoma Covington, Tennessee Covington, Texas Covington, Virginia Covington, Washington Fort Covington, New York Port Covington , a former cargo terminal in Baltimore, Maryland', '["clm_wiki_covington_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_covington_demographics', 'plc_covington', 'demographics', 'Demographics',
   'United Kingdom [ edit ] Covington, Cambridgeshire Covington, South Lanarkshire', '["clm_wiki_covington_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 65. Glenwood Springs (city, CO, pop=9906)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_glenwood-springs', 'place', 'glenwood-springs', 'Glenwood Springs', 'published', 'en', 0,
   'Glenwood Springs is a home rule municipality and the county seat of Garfield County, Colorado, United States. According to the 2020 United States census, the city has a population of 9,963. It is located at the confluence of the Roaring Fork River and the Colorado River, connecting the Roaring Fork Valley and a series of smaller towns on the Colorado River.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_glenwood-springs', 'city', 39.55054, -107.32478, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_glenwood-springs_in_country', 'plc_glenwood-springs', 'ent_usa', 'located_in', 0.95, 'clm_wiki_glenwood-springs_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_glenwood-springs_overview', 'plc_glenwood-springs', 'overview', 'Overview',
   'Glenwood Springs is a home rule municipality and the county seat of Garfield County, Colorado, United States. According to the 2020 United States census, the city has a population of 9,963. It is located at the confluence of the Roaring Fork River and the Colorado River, connecting the Roaring Fork Valley and a series of smaller towns on the Colorado River.', '["clm_wiki_glenwood-springs_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_glenwood-springs_overview', 'plc_glenwood-springs', 'overview', 'History',
   'Glenwood Springs is a home rule municipality and the county seat of Garfield County, Colorado, United States. According to the 2020 United States census, the city has a population of 9,963. It is located at the confluence of the Roaring Fork River and the Colorado River, connecting the Roaring Fork Valley and a series of smaller towns on the Colorado River.', '["clm_wiki_glenwood-springs_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_glenwood-springs_overview', 'plc_glenwood-springs', 'overview', 'Geography',
   'Glenwood Springs is a home rule municipality and the county seat of Garfield County, Colorado, United States. According to the 2020 United States census, the city has a population of 9,963. It is located at the confluence of the Roaring Fork River and the Colorado River, connecting the Roaring Fork Valley and a series of smaller towns on the Colorado River.', '["clm_wiki_glenwood-springs_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_glenwood-springs_overview', 'plc_glenwood-springs', 'overview', 'Demographics',
   'Glenwood Springs is a home rule municipality and the county seat of Garfield County, Colorado, United States. According to the 2020 United States census, the city has a population of 9,963. It is located at the confluence of the Roaring Fork River and the Colorado River, connecting the Roaring Fork Valley and a series of smaller towns on the Colorado River.', '["clm_wiki_glenwood-springs_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_glenwood-springs_primary', 'plc_glenwood-springs', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Glenwood_Springs_city_view.jpg/3840px-Glenwood_Springs_city_view.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Glenwood_Springs_city_view.jpg/330px-Glenwood_Springs_city_view.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Glenwood Springs',
   'Glenwood Springs', 1, 10, unixepoch());

-- 66. Warrenton (city, VA, pop=9897)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_warrenton', 'place', 'warrenton', 'Warrenton', 'published', 'en', 0,
   'Warrenton may refer to the following places:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_warrenton', 'city', 38.71345, -77.79527, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_warrenton_in_country', 'plc_warrenton', 'ent_usa', 'located_in', 0.95, 'clm_wiki_warrenton_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_warrenton_overview', 'plc_warrenton', 'overview', 'Overview',
   'Warrenton may refer to the following places:', '["clm_wiki_warrenton_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_warrenton_history', 'plc_warrenton', 'history', 'History',
   'South Africa [ edit ] Warrenton, Northern Cape , a town', '["clm_wiki_warrenton_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());


-- 67. Elkhorn (city, WI, pop=9895)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_elkhorn', 'place', 'elkhorn', 'Elkhorn', 'published', 'en', 0,
   'Elkhorn or Elk Horn may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_elkhorn', 'city', 42.67279, -88.54454, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_elkhorn_in_country', 'plc_elkhorn', 'ent_usa', 'located_in', 0.95, 'clm_wiki_elkhorn_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_elkhorn_overview', 'plc_elkhorn', 'overview', 'Overview',
   'Elkhorn or Elk Horn may refer to:', '["clm_wiki_elkhorn_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_elkhorn_history', 'plc_elkhorn', 'history', 'History',
   'Places [ edit ] Antarctica [ edit ] Elkhorn Ridge , a ridge of the Convoy Range in Victoria Land Canada [ edit ] Elkhorn, Manitoba , an unincorporated community Elkhorn Mountain , a mountain in British Columbia United States [ edit ] Cities and communities [ edit ] Elkhorn, California , a census-designated place Elkhorn, California, former name of Fremont, Yolo County, California Elk Horn, Iowa , a city Elk Horn, Kentucky , an unincorporated community Elkhorn City, Kentucky , a city Elkhorn Park, Lexington , Kentucky, a neighborhood Elkhorn, Missouri , an unincorporated community Elkhorn, Montana , a census-designated place Elkhorn, Nebraska , a former city and neighborhood within Omaha Elkhorn, West Virginia , an unincorporated community Elkhorn, Wisconsin , a city Forks of Elkhorn, Kentucky , an unincorporated community Elkhorn Township (disambiguation) , multiple places Bodies of water [ edit ] Elk Horn Creek , a stream in Iowa Elkhorn Creek (disambiguation) , multiple places Elkhorn Lake , a lake in Minnesota Elkhorn River , a river in Nebraska Elkhorn Slough , a tidal slough and estuary on Monterey Bay in California Lake Elkhorn , manmade lake in Columbia, Maryland Mountains and formations [ edit ] Elkhorn Formation , a geologic formation in Ohio Elkhorn Hills , a low mountain range in California Elkhorn Mountain (Washington) , a mountain in Washington Elkhorn Mountains , a mountain range in Montana Elkhorn Mountains (Oregon) , a mountain range in Oregon Elkhorn Peak , a summit of the Wallowa Mountains in Oregon Other [ edit ] Elkhorn National Forest , a former national forest in Montana Elkhorn Ranch , a ranch built by Theodore Roosevelt near Medora, North Dakota Elkhorn Road , a street in Las Vegas, Nevada Elkhorn Tavern , a historic tavern in Pea Ridge, Arkansas Fremont, Elkhorn and Missouri Valley Railroad , sometimes called "the Elkhorn", a railroad in Nebraska', '["clm_wiki_elkhorn_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_elkhorn_geography', 'plc_elkhorn', 'geography', 'Geography',
   'Antarctica [ edit ] Elkhorn Ridge , a ridge of the Convoy Range in Victoria Land', '["clm_wiki_elkhorn_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_elkhorn_demographics', 'plc_elkhorn', 'demographics', 'Demographics',
   'Canada [ edit ] Elkhorn, Manitoba , an unincorporated community Elkhorn Mountain , a mountain in British Columbia', '["clm_wiki_elkhorn_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 68. Fairfield (city, IA, pop=9892)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_fairfield', 'place', 'fairfield', 'Fairfield', 'published', 'en', 0,
   'Fairfield may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_fairfield', 'city', 41.00863, -91.96267, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_fairfield_in_country', 'plc_fairfield', 'ent_usa', 'located_in', 0.95, 'clm_wiki_fairfield_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_fairfield_overview', 'plc_fairfield', 'overview', 'Overview',
   'Fairfield may refer to:', '["clm_wiki_fairfield_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_fairfield_history', 'plc_fairfield', 'history', 'History',
   'Places [ edit ] Australia [ edit ] Fairfield, New South Wales , a western suburb of Sydney Electoral district of Fairfield , the corresponding seat in the New South Wales Legislative Assembly Fairfield City Council , in Sydney Fairfield, Queensland Fairfield, Victoria Fairfield railway station, Melbourne Fairfield West, New South Wales Fairfield Heights, New South Wales Fairfield East, New South Wales Canada [ edit ] Fairfield (Greater Victoria) , a neighbourhood of Victoria, British Columbia New Zealand [ edit ] Fairfield, Otago , a suburb of Dunedin Fairfield, Waikato , a suburb of Hamilton Fairfield, Lower Hutt , a suburb in the Hutt Valley United Kingdom [ edit ] Fairfield (Croydon ward) Fairfield (Wandsworth ward) Fairfield, Bedfordshire , a village Fairfield, Bromsgrove , a village in north-east Worcestershire Fairfield, Bury , part of Bury, Greater Manchester Fairfield, Clackmannanshire , a location in Scotland Fairfield, County Durham , a suburb Fairfield, Derbyshire , a village Fairfield, Evesham , a part of the town of Evesham , south-east Worcestershire Fairfield, Glasgow Fairfield, Kent , a village Fairfield, Liverpool , a part of Liverpool, Merseyside Fairfield, Stogursey , Somerset Fairfield, Tameside , a suburb of Droylsden, Greater Manchester Fairfield (Lake District) , a mountain Fairfield Halls , an entertainment centre in Croydon Fairfield Moravian Church , in Droylsden, Manchester Green Fairfield , a civil parish in Derbyshire Fairfields , a civil parish in Milton Keynes United States [ edit ] Fairfield, Alabama , in Jefferson County Fairfield, Covington County, Alabama Fairfield, California Fairfield, Connecticut Fairfield County, Connecticut Fairfield, Idaho Fairfield, Illinois Fairfield, Iowa Fairfield, Kentucky Fairfield, Maine , a New England town Fairfield (CDP), Maine , the main village in the town Fairfield, Minnesota Fairfield, Montana Fairfield, Nebraska Fairfield Township, Cumberland County, New Jersey Fairfield Township, Essex County, New Jersey Fairfield, Monmouth County, New Jersey Fairfield, New York Fairfield, Hyde County, North Carolina Fairfield, North Dakota Fairfield, Ohio Fairfield County, Ohio Fairfield, Oklahoma Fairfield, Pennsylvania Fairfield, South Carolina , the death place of Abraham Nott Fairfield County, South Carolina Fairfield, Texas Fairfield, Utah Fairfield, Vermont Fairfield, Henrico County, Virginia , better known as Sandston Fairfield, Rockbridge County, Virginia , a census-designated place Fairfiel', '["clm_wiki_fairfield_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_fairfield_geography', 'plc_fairfield', 'geography', 'Geography',
   'Australia [ edit ] Fairfield, New South Wales , a western suburb of Sydney Electoral district of Fairfield , the corresponding seat in the New South Wales Legislative Assembly Fairfield City Council , in Sydney Fairfield, Queensland Fairfield, Victoria Fairfield railway station, Melbourne Fairfield West, New South Wales Fairfield Heights, New South Wales Fairfield East, New South Wales', '["clm_wiki_fairfield_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_fairfield_demographics', 'plc_fairfield', 'demographics', 'Demographics',
   'Canada [ edit ] Fairfield (Greater Victoria) , a neighbourhood of Victoria, British Columbia', '["clm_wiki_fairfield_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 69. Hope (city, AR, pop=9891)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_hope', 'place', 'hope', 'Hope', 'published', 'en', 0,
   'Hope is an optimistic state of mind that is based on an expectation of desirable outcomes with respect to events and circumstances in one''s own life, or the world at large. As a verb, Merriam-Webster defines hope as "to expect with confidence" or "to cherish a desire with anticipation".', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_hope', 'city', 33.66706, -93.59157, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_hope_in_country', 'plc_hope', 'ent_usa', 'located_in', 0.95, 'clm_wiki_hope_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_hope_overview', 'plc_hope', 'overview', 'Overview',
   'Hope is an optimistic state of mind that is based on an expectation of desirable outcomes with respect to events and circumstances in one''s own life, or the world at large. As a verb, Merriam-Webster defines hope as "to expect with confidence" or "to cherish a desire with anticipation".', '["clm_wiki_hope_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_hope_history', 'plc_hope', 'history', 'History',
   'In psychology [ edit ] Hope , which lay at the bottom of the box, remained. Allegorical painting by George Frederic Watts , 1886 American professor of psychology Barbara Fredrickson argues that hope comes into its own when crisis looms, opening us to new creative possibilities. &#91; 1 &#93; Frederickson argues that with great need comes an unusually wide range of ideas, as well as such positive emotions as happiness and joy, courage, and empowerment, drawn from four different areas of one''s self: from a cognitive, psychological, social, or physical perspective. &#91; 2 &#93; Such positive thinking bears fruit when based on a realistic sense of optimism, not on a naive "false hope". &#91; 3 &#93; &#91; 4 &#93; The psychologist Charles R. Snyder linked hope to the existence of a goal, combined with a determined plan for reaching that goal. &#91; 5 &#93; Alfred Adler had similarly argued for the centrality of goal-seeking in human psychology, &#91; 6 &#93; as too had philosophical anthropologists like Ernst Bloch . &#91; 7 &#93; Snyder also stressed the link between hope and mental willpower ( hardiness ), &#91; 8 &#93; as well as the need for realistic perception of goals (problem orientation), &#91; 9 &#93; arguing that the difference between hope and optimism was that the former can look like wishful thinking but the latter provides the energy to find practical pathways for an improved future. &#91; 10 &#93; D. W. Winnicott saw a child''s antisocial behavior as expressing as a cry for help, an unconscious hope, meaning an unspoken desire for a positive outcome for those who are in control in the wider society, when containment within the immediate family had failed. &#91; 11 &#93; Object relations theory similarly sees the analytic transference as motivated in part by an unconscious hope that past conflicts and traumas can be dealt with anew. &#91; 12 &#93; Hope Theory [ edit ] As a specialist in positive psychology , Snyder studied how hope and forgiveness can impact several aspects of life such as health, work, education, and personal meaning. He postulated that three main things make up hopeful thinking: &#91; 13 &#93; Goals – Approaching life in a goal-oriented way. Pathways – Finding different ways to achieve your goals. Agency – Believing that you can instigate change and achieve these goals. A rose expressing hope, at Auschwitz concentration camp In other words, hope was defined as the perceived capability to derive pathways to desired goals and mot', '["clm_wiki_hope_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_hope_geography', 'plc_hope', 'geography', 'Geography',
   'Hope Theory [ edit ] As a specialist in positive psychology , Snyder studied how hope and forgiveness can impact several aspects of life such as health, work, education, and personal meaning. He postulated that three main things make up hopeful thinking: &#91; 1 &#93; Goals – Approaching life in a goal-oriented way. Pathways – Finding different ways to achieve your goals. Agency – Believing that you can instigate change and achieve these goals. A rose expressing hope, at Auschwitz concentration camp In other words, hope was defined as the perceived capability to derive pathways to desired goals and motivate oneself via agency thinking to use those pathways. Snyder argues that individuals who are able to realize these three components and develop a belief in their ability are hopeful people who can establish clear goals, imagine multiple workable pathways toward those goals, and persevere, even when obstacles get in their way. Snyder proposed a "Hope Scale" which considered that a person''s determination to achieve their goal is their measured hope. Snyder differentiates between adult-measured hope and child-measured hope. The Adult Hope Scale by Snyder contains 12 questions: 4 measuring ''pathways thinking'', 4 measuring ''agency thinking'', and 4 that are simply fillers. Each subject responds to each question using an 8-point scale. &#91; 2 &#93; Fibel and Hale measure hope by combining Snyder''s Hope Scale with their own Generalized Expectancy for Success Scale (GESS) to empirically measure hope. &#91; 3 &#93; Snyder regarded that psychotherapy can help focus attention on one''s goals, drawing on tacit knowledge of how to reach them. &#91; 4 &#93; Similarly, there is an outlook and a grasp of reality to hope, distinguishing No Hope , Lost Hope , False Hope and Real Hope , which differ in terms of viewpoint and realism. &#91; 5 &#93; Hopeful Outlook Wishful Committed Hopeful Outlook Distorted Reality False Hope Hopeful Outlook Accurate Reality Real Hope Skeptical No Hope ', '["clm_wiki_hope_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_hope_demographics', 'plc_hope', 'demographics', 'Demographics',
   'In healthcare [ edit ] Major theories [ edit ] Of the countless models that examine the importance of hope in an individual''s life, two major theories have gained a significant amount of recognition in the field of psychology . One of these theories, developed by Charles R. Snyder , argues that hope should be viewed as a cognitive skill that demonstrates an individual''s ability to maintain drive in the pursuit of a particular goal. &#91; 1 &#93; This model reasons that an individual''s ability to be hopeful depends on two types of thinking: agency thinking and pathway thinking. Agency thinking refers to an individual''s determination to achieve their goals despite possible obstacles, while pathway thinking refers to the ways in which an individual believes they can achieve these personal goals. Snyder''s theory uses hope as a mechanism that is most often seen in psychotherapy . In these instances, the therapist helps their client overcome barriers that have prevented them from achieving goals. The therapist would then help the client set realistic and relevant personal goals (i.e. "I am going to find something I am passionate about and that makes me feel good about myself"), and would help them remain hopeful of their ability to achieve these goals, and suggest the correct pathways to do so. Whereas Snyder''s theory focuses on hope as a mechanism to overcome an individual''s lack of motivation to achieve goals, the other major theory developed by Kaye A. Herth deals more specifically with an individual''s future goals as they relate to coping with illnesses. &#91; 2 &#93; Herth views hope as "a motivational and cognitive attribute that is theoretically necessary to initiate and sustain action toward goal attainment". &#91; 3 &#93; Establishing realistic and attainable goals in this situation is more difficult, as the individual most likely does not have direct control over the future of their health. Instead, Herth suggests that the goals should be concerned with how the ', '["clm_wiki_hope_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_hope_primary', 'plc_hope', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Hopeful.jpg/3840px-Hopeful.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Hopeful.jpg/330px-Hopeful.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Hope',
   'Hope', 1, 10, unixepoch());

-- 70. Brownsville (city, TN, pop=9876)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_brownsville', 'place', 'brownsville', 'Brownsville', 'published', 'en', 0,
   'Brownsville may refer to various places in:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_brownsville', 'city', 35.59397, -89.26229, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_brownsville_in_country', 'plc_brownsville', 'ent_usa', 'located_in', 0.95, 'clm_wiki_brownsville_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_brownsville_overview', 'plc_brownsville', 'overview', 'Overview',
   'Brownsville may refer to various places in:', '["clm_wiki_brownsville_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_brownsville_history', 'plc_brownsville', 'history', 'History',
   'Australia [ edit ] Brownsville, New South Wales , a suburb of Wollongong, New South Wales', '["clm_wiki_brownsville_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_brownsville_geography', 'plc_brownsville', 'geography', 'Geography',
   'Canada [ edit ] Brownsville, British Columbia Brownsville, Nova Scotia Brownsville, Durham Region, Ontario Brownsville, Oxford County, Ontario Brownsville Station, Ontario The original name of Schomberg, Ontario An early settlement of Woodbridge, Ontario , founded between 1802 and 1837, now subsumed by Woodbridge', '["clm_wiki_brownsville_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_brownsville_demographics', 'plc_brownsville', 'demographics', 'Demographics',
   'United States [ edit ] Brownsville, Alabama , unincorporated community in Clay County Brownsville, California (disambiguation) , the name of several places Brownsville, Delaware Brownsville, Florida Brownsville (Metrorail station) , located at the above location Brownsville, Escambia County, Florida Brownsville, the original name of the South Atlanta neighborhood of Atlanta, Georgia Brownsville, Georgia , an unincorporated community in Paulding County Brownsville (ghost town), Illinois , ghost town in Jackson County, Illinois Brownsville, White County, Illinois , unincorporated community in White County, Illinois Brownsville, Indiana Brownsville Township, Union County, Indiana Brownsville, Kentucky Brownsville-Bawcomville, Louisiana Brownsville, Maryland Brownsville, Minnesota Brownsville Township, Houston County, Minnesota Brownsville, Mississippi , in Hinds County, Mississippi Brownsville, Brooklyn , New York Brownsville, Ohio Brownsville, Oregon Brownsville, Pennsylvania Brownsville, Berks County, Pennsylvania Brownsville Township, Fayette County, Pennsylvania Brownsville, South Dakota Brownsville, Tennessee Brownsville, Texas , largest population among cities with this name Brownsville, Vermont Brownsville (Nassawadox, Virginia) , a historic house Brownsville, Washington Brownsville, West Virginia Brownsville, Wisconsin', '["clm_wiki_brownsville_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 71. Moncks Corner (city, SC, pop=9873)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_moncks-corner', 'place', 'moncks-corner', 'Moncks Corner', 'published', 'en', 0,
   'Moncks Corner is a town in and the county seat of Berkeley County in South Carolina, United States. It lies south of Lake Moultrie in the Charleston metropolitan area. As of the 2020 census, the town had a population of 13,297.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_moncks-corner', 'city', 33.19632, -80.01429, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_moncks-corner_in_country', 'plc_moncks-corner', 'ent_usa', 'located_in', 0.95, 'clm_wiki_moncks-corner_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_moncks-corner_overview', 'plc_moncks-corner', 'overview', 'Overview',
   'Moncks Corner is a town in and the county seat of Berkeley County in South Carolina, United States. It lies south of Lake Moultrie in the Charleston metropolitan area. As of the 2020 census, the town had a population of 13,297.', '["clm_wiki_moncks-corner_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_moncks-corner_overview', 'plc_moncks-corner', 'overview', 'History',
   'Moncks Corner is a town in and the county seat of Berkeley County in South Carolina, United States. It lies south of Lake Moultrie in the Charleston metropolitan area. As of the 2020 census, the town had a population of 13,297.', '["clm_wiki_moncks-corner_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_moncks-corner_overview', 'plc_moncks-corner', 'overview', 'Geography',
   'Moncks Corner is a town in and the county seat of Berkeley County in South Carolina, United States. It lies south of Lake Moultrie in the Charleston metropolitan area. As of the 2020 census, the town had a population of 13,297.', '["clm_wiki_moncks-corner_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_moncks-corner_overview', 'plc_moncks-corner', 'overview', 'Demographics',
   'Moncks Corner is a town in and the county seat of Berkeley County in South Carolina, United States. It lies south of Lake Moultrie in the Charleston metropolitan area. As of the 2020 census, the town had a population of 13,297.', '["clm_wiki_moncks-corner_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_moncks-corner_primary', 'plc_moncks-corner', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Moncks-Corner-Main-sc.jpg/3840px-Moncks-Corner-Main-sc.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Moncks-Corner-Main-sc.jpg/330px-Moncks-Corner-Main-sc.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Moncks Corner',
   'Moncks Corner', 1, 10, unixepoch());

-- 72. Paris (city, KY, pop=9870)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_paris', 'place', 'paris', 'Paris', 'published', 'en', 0,
   'Paris is the capital and largest city of France, with an estimated city population of 2.04 million in an area of 105.4 km2 (40.7 sq mi), and a metropolitan population of 13.2 million as of January 2026. Located on the river Seine in the centre of the Île-de-France region, it is the largest metropolitan area and fourth-most populous city in the European Union (EU). Nicknamed the "City of Light", partly because of its role in the Age of Enlightenment, Paris has been one of the world''s major centres of finance, diplomacy, commerce, culture, fashion, and gastronomy since the 17th century.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_paris', 'city', 38.2098, -84.25299, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_paris_in_country', 'plc_paris', 'ent_usa', 'located_in', 0.95, 'clm_wiki_paris_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_paris_overview', 'plc_paris', 'overview', 'Overview',
   'Paris is the capital and largest city of France, with an estimated city population of 2.04 million in an area of 105.4 km2 (40.7 sq mi), and a metropolitan population of 13.2 million as of January 2026. Located on the river Seine in the centre of the Île-de-France region, it is the largest metropolitan area and fourth-most populous city in the European Union (EU). Nicknamed the "City of Light", partly because of its role in the Age of Enlightenment, Paris has been one of the world''s major centres of finance, diplomacy, commerce, culture, fashion, and gastronomy since the 17th century.', '["clm_wiki_paris_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_paris_history', 'plc_paris', 'history', 'History',
   'Etymology [ edit ] The ancient oppidum that corresponds to the modern city of Paris was first mentioned in the mid-1st century BC by Julius Caesar as Lutetia Parisiorum ('' Lutetia of the Parisii '') and is later attested as Parision in the 5th century AD, then as Paris in 1265. &#91; 1 &#93; &#91; 2 &#93; During the Roman period, it was commonly known as Lutetia in Latin, which is interpreted as either stemming from the Celtic root *lukot- (''mouse''), or from * luto- (''marsh, swamp''). &#91; 3 &#93; &#91; 4 &#93; &#91; 2 &#93; The name Paris is derived from its early inhabitants, the Parisii , a Gallic tribe from the Iron Age and the Roman period . &#91; 5 &#93; The meaning of the Gaulish ethnonym remains debated. According to Xavier Delamarre , it may derive from the Celtic root pario- (''cauldron''). &#91; 5 &#93; Alfred Holder interpreted the name as ''the makers'' or ''the commanders'', by comparing it to the Welsh peryff (''lord, commander''), both possibly descending from a Proto-Celtic form reconstructed as * kwar-is-io -. &#91; 6 &#93; Alternatively, Pierre-Yves Lambert proposed to translate Parisii as the ''spear people'', by connecting the first element to the Old Irish carr (''spear''), derived from an earlier * kwar-sā . &#91; 2 &#93; Residents of the city are known in English as Parisians and in French as Parisiens ( &#91;paʁizjɛ̃&#93; ⓘ ). They are also pejoratively called Parigots ( &#91;paʁiɡo&#93; ⓘ ). &#91; 7 &#93; ^ Nègre 1990 , p.&#160;155. ^ a b c Falileyev 2010 , s.v. Parisii and Lutetia . ^ Lambert 1994 , p.&#160;38. ^ Delamarre 2003 , p.&#160;211. ^ a b Delamarre 2003 , p.&#160;247. ^ Busse 2006 , p.&#160;199. ^ Dottin 2018 , p.&#160;535.', '["clm_wiki_paris_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_paris_geography', 'plc_paris', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Paris For a chronological guide, see Timeline of Paris . Origins [ edit ] Main article: Lutetia Gold coins minted by the Parisii , 1st century BC The Parisii people inhabited the Paris area from around the middle of the 3rd century BC. &#91; 1 &#93; One of the area''s major north–south trade routes crossed the Seine on the Île de la Cité , which gradually became an important trading centre. &#91; 2 &#93; The Parisii traded with many river towns, some as far away as the Iberian Peninsula, and minted their own coins. &#91; 3 &#93; Julius Caesar conquered the Paris Basin for the Roman Republic in 52 BC and began the Roman settlement on Paris''s Left Bank . &#91; 4 &#93; The Roman town was originally called Lutetia , more fully, Lutetia Parisiorum , "Lutetia of the Parisii", modern French Lutèce . It became a prosperous city with a forum, baths, temples, theatres, and an amphitheatre . &#91; 5 &#93; By the end of the Western Roman Empire , the town was known as Parisius , a Latin name that later became Paris in French. &#91; 6 &#93; Christianity was introduced in the middle of the 3rd century AD by Saint Denis , the first Bishop of Paris: according to legend, when he refused to renounce his faith before the Roman occupiers, he was beheaded on the hill which became known as Mons Martyrum (Latin "Hill of Martyrs"), later " Montmartre ", from where he walked headless to the north of the city; the place where he fell and was buried became an important religious shrine, the Basilica of Saint-Denis , and many French kings are buried there. &#91; 7 &#93; The Wall of Philippe Auguste , oldest cit', '["clm_wiki_paris_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_paris_demographics', 'plc_paris', 'demographics', 'Demographics',
   'Origins [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Lutetia Gold coins minted by the Parisii , 1st century BC The Parisii people inhabited the Paris area from around the middle of the 3rd century BC. &#91; 1 &#93; One of the area''s major north–south trade routes crossed the Seine on the Île de la Cité , which gradually became an important trading centre. &#91; 2 &#93; The Parisii traded with many river towns, some as far away as the Iberian Peninsula, and minted their own coins. &#91; 3 &#93; Julius Caesar conquered the Paris Basin for the Roman Republic in 52 BC and began the Roman settlement on Paris''s Left Bank . &#91; 4 &#93; The Roman town was originally called Lutetia , more fully, Lutetia Parisiorum , "Lutetia of the Parisii", modern French Lutèce . It became a prosperous city with a forum, baths, temples, theatres, and an amphitheatre . &#91; 5 &#93; By the end of the Western Roman Empire , the town was known as Parisius , a Latin name that later became Paris in French. &#91; 6 &#93; Christianity was introduced in the middle of the 3rd century AD by Saint Denis , the first Bishop of Paris: according to legend, when he refused to renounce his faith before the Roman occupiers, he was beheaded on the hill which became known as Mons Martyrum (Latin "Hill of Martyrs"), later " Montmartre ", from where he walked headless to the north of the city; the place where he fell and was buried became an important religious shrine, the Basilica of Saint-Denis , and many French kings are buried there. &#91; 7 &#93; The Wall of Philippe Auguste , oldest city wall in Paris Clovis the Frank , the first king of the Merovingian dynasty , made the city his ca', '["clm_wiki_paris_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_paris_primary', 'plc_paris', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/La_Tour_Eiffel_vue_de_la_Tour_Saint-Jacques%2C_Paris_ao%C3%BBt_2014_%282%29.jpg/3840px-La_Tour_Eiffel_vue_de_la_Tour_Saint-Jacques%2C_Paris_ao%C3%BBt_2014_%282%29.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/La_Tour_Eiffel_vue_de_la_Tour_Saint-Jacques%2C_Paris_ao%C3%BBt_2014_%282%29.jpg/330px-La_Tour_Eiffel_vue_de_la_Tour_Saint-Jacques%2C_Paris_ao%C3%BBt_2014_%282%29.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Paris',
   'Paris', 1, 10, unixepoch());

-- 73. Russellville (city, AL, pop=9847)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_russellville', 'place', 'russellville', 'Russellville', 'published', 'en', 0,
   'Russellville is the name of several communities in the United States:Russellville, Alabama
Russellville, Arkansas
Russellville, Georgia
Russellville, Illinois
Russellville, Boone County, Illinois
Russellville, Indiana
Russellville, Kentucky
Russellville, Missouri
Russellville, Ray County, Missouri
Russellville, Ohio
Russellville, Pennsylvania
Russellville, South Carolina
Russellville, Tennessee
Russellville, West Virginia', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_russellville', 'city', 34.50787, -87.72864, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_russellville_in_country', 'plc_russellville', 'ent_usa', 'located_in', 0.95, 'clm_wiki_russellville_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_russellville_overview', 'plc_russellville', 'overview', 'Overview',
   'Russellville is the name of several communities in the United States:Russellville, Alabama
Russellville, Arkansas
Russellville, Georgia
Russellville, Illinois
Russellville, Boone County, Illinois
Russellville, Indiana
Russellville, Kentucky
Russellville, Missouri
Russellville, Ray County, Missouri
Russellville, Ohio
Russellville, Pennsylvania
Russellville, South Carolina
Russellville, Tennessee
Russellville, West Virginia', '["clm_wiki_russellville_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());


-- 74. Shelton (city, WA, pop=9834)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_shelton', 'place', 'shelton', 'Shelton', 'published', 'en', 0,
   'Shelton may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_shelton', 'city', 47.21509, -123.10071, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_shelton_in_country', 'plc_shelton', 'ent_usa', 'located_in', 0.95, 'clm_wiki_shelton_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_shelton_overview', 'plc_shelton', 'overview', 'Overview',
   'Shelton may refer to:', '["clm_wiki_shelton_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_shelton_history', 'plc_shelton', 'history', 'History',
   'Places [ edit ] United Kingdom [ edit ] Shelton, North Bedfordshire , in the parish of Dean and Shelton, Bedfordshire Lower Shelton , in the parish of Marston Moretaine, Bedfordshire Upper Shelton , in the parish of Marston Moretaine, Bedfordshire Shelton, Norfolk Shelton, Nottinghamshire Shelton, Shropshire Shelton, Stoke-on-Trent, Staffordshire United States [ edit ] Shelton, Connecticut Shelton, Nebraska Shelton, Washington', '["clm_wiki_shelton_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_shelton_geography', 'plc_shelton', 'geography', 'Geography',
   'United Kingdom [ edit ] Shelton, North Bedfordshire , in the parish of Dean and Shelton, Bedfordshire Lower Shelton , in the parish of Marston Moretaine, Bedfordshire Upper Shelton , in the parish of Marston Moretaine, Bedfordshire Shelton, Norfolk Shelton, Nottinghamshire Shelton, Shropshire Shelton, Stoke-on-Trent, Staffordshire', '["clm_wiki_shelton_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_shelton_demographics', 'plc_shelton', 'demographics', 'Demographics',
   'United States [ edit ] Shelton, Connecticut Shelton, Nebraska Shelton, Washington', '["clm_wiki_shelton_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 75. Havre (city, MT, pop=9834)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_havre', 'place', 'havre', 'Havre', 'published', 'en', 0,
   'Havre may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_havre', 'city', 48.55, -109.68409, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_havre_in_country', 'plc_havre', 'ent_usa', 'located_in', 0.95, 'clm_wiki_havre_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_havre_overview', 'plc_havre', 'overview', 'Overview',
   'Havre may refer to:', '["clm_wiki_havre_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_havre_history', 'plc_havre', 'history', 'History',
   'Places [ edit ] Canada Havre-Aubert , Magdalen Islands, Quebec Havre Boucher , Nova Scotia Havre-Saint-Pierre , Quebec USA Havre de Grace, Maryland Havre De Grace High School Havre, Michigan Havre, Montana Havre Air Force Station Havre City–County Airport France Havre–Caumartin station , a Paris Metro station, France Le Havre , France, often called Havre in English Elsewhere Havré , Belgium Havrå (Havre), Norway Havre Seamount , Kermadec Islands, New Zealand', '["clm_wiki_havre_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_havre_geography', 'plc_havre', 'geography', 'Geography',
   'Other [ edit ] Havre de Grace (horse) Havre &#160;(ship)', '["clm_wiki_havre_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());


-- 76. Wapakoneta (city, OH, pop=9823)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_wapakoneta', 'place', 'wapakoneta', 'Wapakoneta', 'published', 'en', 0,
   'Wapakoneta may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_wapakoneta', 'city', 40.56783, -84.19356, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_wapakoneta_in_country', 'plc_wapakoneta', 'ent_usa', 'located_in', 0.95, 'clm_wiki_wapakoneta_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_wapakoneta_overview', 'plc_wapakoneta', 'overview', 'Overview',
   'Wapakoneta may refer to:', '["clm_wiki_wapakoneta_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_wapakoneta_history', 'plc_wapakoneta', 'history', 'History',
   'Places [ edit ] Wapakoneta, Ohio The Lima - Van Wert -Wapakoneta, Ohio Combined Statistical Area', '["clm_wiki_wapakoneta_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_wapakoneta_geography', 'plc_wapakoneta', 'geography', 'Geography',
   'Ships [ edit ] USS&#160; Wapakoneta , United States Navy ships', '["clm_wiki_wapakoneta_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());


-- 77. Monticello (city, AR, pop=9820)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_monticello', 'place', 'monticello', 'Monticello', 'published', 'en', 0,
   'Monticello was the primary residence and plantation of Thomas Jefferson, a Founding Father, author of the Declaration of Independence, and the third president of the United States. Jefferson began designing Monticello after inheriting land from his father at the age of 14. Located just outside Charlottesville, Virginia, in the Piedmont region, the plantation was originally 5,000 acres (20 km2), with Jefferson using the forced labor of enslaved black people for extensive cultivation of tobacco and mixed crops, later shifting from tobacco cultivation to wheat in response to changing markets. Due to its architectural and historic significance, the property has been designated a National Historic Landmark. In 1987, Monticello and the nearby University of Virginia, also designed by Jefferson, were together designated a UNESCO World Heritage Site. The United States nickel has featured a depiction of Monticello on its reverse every year since 1938 with the exception of 2004–05.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_monticello', 'city', 33.629, -91.79096, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_monticello_in_country', 'plc_monticello', 'ent_usa', 'located_in', 0.95, 'clm_wiki_monticello_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_monticello_overview', 'plc_monticello', 'overview', 'Overview',
   'Monticello was the primary residence and plantation of Thomas Jefferson, a Founding Father, author of the Declaration of Independence, and the third president of the United States. Jefferson began designing Monticello after inheriting land from his father at the age of 14. Located just outside Charlottesville, Virginia, in the Piedmont region, the plantation was originally 5,000 acres (20 km2), with Jefferson using the forced labor of enslaved black people for extensive cultivation of tobacco and mixed crops, later shifting from tobacco cultivation to wheat in response to changing markets. Due to its architectural and historic significance, the property has been designated a National Historic Landmark. In 1987, Monticello and the nearby University of Virginia, also designed by Jefferson, were together designated a UNESCO World Heritage Site. The United States nickel has featured a depiction of Monticello on its reverse every year since 1938 with the exception of 2004–05.', '["clm_wiki_monticello_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_monticello_history', 'plc_monticello', 'history', 'History',
   'Design and building [ edit ] Jefferson''s home was built to serve as a plantation house , which ultimately took on the architectural form of a villa . &#91; 1 &#93; Work began on what historians would subsequently refer to as "the first Monticello" in 1768, on a plantation of 5,000 acres (2,000&#160;ha). Jefferson moved into the South Pavilion (an outbuilding) in 1770, where his new wife Martha Wayles Skelton joined him in 1772. Jefferson continued work on his original design, but how much was completed is of some dispute. &#91; 1 &#93; In constructing and later reconstructing his home, Jefferson used a combination of free workers, indentured servants, and enslaved people. &#91; 2 &#93; After his wife''s death in 1782, Jefferson left Monticello in 1784 to serve as Minister of the United States to France. During his several years in Europe, he had an opportunity to see some of the classical buildings with which he had become acquainted from his reading, as well as to discover the "modern" trends in French architecture that were then fashionable in Paris. His decision to extensively remodel and rebuild his own home may date from this period. In 1794, following his tenure as the first U.S. Secretary of State (1790–1793), Jefferson began rebuilding his house based on the ideas he had acquired in Europe. The remodeling continued throughout most of his presidency (1801–1809). &#91; 3 &#93; Although generally completed by 1809, Jefferson continued work on Monticello until his death in 1826. Under the dome Jefferson added a center hallway and a parallel set of rooms to the structure, more than doubling its area. He removed the second full-height story from the original house and replaced it with a mezzanine bedroom floor. The interior is centered on two large rooms, which served as an entrance-hall-museum, where Jefferson displayed his scientific interests, and a music-sitting room. &#91; 1 &#93; The most dramatic element of the new design was an octagonal dome , which he placed above the west front of the building in place of a second-story portico. The room inside the dome was described by a visitor as "a noble and beautiful apartment," but it was rarely used—perhaps because it was hot in summer and cold in winter, or because it could be reached only by climbing a steep and very narrow flight of stairs. The dome room has now been restored to its appearance during Jefferson''s lifetime, with "Mars yellow " walls and a painted green and black checkered floor. &#91; 4', '["clm_wiki_monticello_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_monticello_geography', 'plc_monticello', 'geography', 'Geography',
   'Preservation [ edit ] Monticello in 1926 After Jefferson died on July 4, 1826, his only official surviving daughter, Martha Jefferson Randolph , inherited Monticello. The estate was encumbered with debt and Martha Randolph had financial problems in her own family because of her husband''s mental illness . In 1831, she sold Monticello to James Turner Barclay , a local apothecary , for $7,500 (~$259,256 in 2024). Barclay sold it in 1834 to Uriah P. Levy for $2,500, (~$80,625 in 2025) the first Jewish commodore (equivalent to today''s rear admiral) in the United States Navy. A fifth-generation American whose family first settled in Savannah, Georgia , Levy greatly admired Jefferson and used private funds to repair, restore and preserve the house. The Confederate government seized the house as enemy property at the outset of the American Civil War and sold it to Confederate officer Benjamin Franklin Ficklin . Levy''s estate recovered the property after the war. &#91; 1 &#93; Levy''s heirs argued over his estate, but their lawsuits were settled in 1879, when Uriah Levy''s nephew, Jefferson Monroe Levy , a prominent New York lawyer, real estate speculator , and stock speculator (and later member of Congress), bought out the other heirs for $10,050, (~$285,958 in 2024) and took control of Monticello. Like his uncle, Jefferson Levy commissioned repairs, restoration and preservation of the grounds and house, which had been deteriorating seriously while the lawsuits wound their way through the courts in New York and Virginia. Together, the Levys preserved Monticello for nearly 100 years. &#91; 2 &#93; Maud Littleton gatherings petitions to have Monticello expropriated from Jefferson Monroe Levy, 1912. Monticello depicted on the reverse of the 1953 $2 bill . Note the two "Levy lions" on either side of the entrance. The lions, placed there by Jefferson Levy, were removed in 1923 when the Thomas Jefferson Foundation purchased the house. In 1909, Maud Littleton, the wife of Martin W. ', '["clm_wiki_monticello_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_monticello_demographics', 'plc_monticello', 'demographics', 'Demographics',
   'Decoration and furnishings [ edit ] Much of Monticello''s interior decoration reflects the personal ideas and ideals of Jefferson. &#91; 1 &#93; In a time before refrigeration, Jefferson had the pond stocked with fish, to be available on demand. The original main entrance is through the portico on the east front. The ceiling of this portico incorporates a wind plate connected to a weather vane , showing the direction of the wind. A large clock face on the external east-facing wall has only an hour hand since Jefferson thought this was accurate enough for those he enslaved. &#91; 2 &#93; The clock reflects the time shown on the "Great Clock", designed by Jefferson, in the entrance hall. The entrance hall contains recreations of items collected by Lewis and Clark on the cross-country expedition commissioned by Jefferson to explore the Louisiana Purchase. Jefferson had the floorcloth painted a "true grass green" upon the recommendation of artist Gilbert Stuart , so that Jefferson''s "essay in architecture" could invite the spirit of the outdoors into the house. &#91; citation needed &#93; The south wing includes Jefferson''s private suite of rooms. The library holds many books from his third library collection. His first library was burned in an accidental plantation fire, and he ''ceded'' (or sold) his second library in 1815 to the United States Congress to replace the books lost in the 1814 burning of Washington during the War of 1812 . &#91; 3 &#93; This second library formed the nucleus of the Library of Congress . &#91; 3 &#93; Master Bedroom, looking southwest (1978) As "larger than life" as Monticello seems, the house has approximately 11,000&#160;sq&#160;ft (1,000&#160;m 2 ) of living space. &#91; 4 &#93; Jefferson considered much furniture to be a waste of space, so the dining room table was erected only at mealtimes, and beds were built into alcoves cut into thick walls that contain storage space. Jefferson''s bed opens to two sides: to his cabinet (study) and to h', '["clm_wiki_monticello_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_monticello_primary', 'plc_monticello', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/5/5a/Monticello_reflected.JPG?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Monticello_reflected.JPG/330px-Monticello_reflected.JPG?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Monticello',
   'Monticello', 1, 10, unixepoch());

-- 78. Alamosa (city, CO, pop=9819)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_alamosa', 'place', 'alamosa', 'Alamosa', 'published', 'en', 0,
   'Alamosa is the home rule city that is the county seat of, and the most populous municipality in, Alamosa County, Colorado United States. Alamosa is located along the Rio Grande. The city population was 9,806 in the 2020 United States census. The city is the commercial center of the San Luis Valley in south-central Colorado, and is the home of Adams State University. Alamosa is the primary city of the Alamosa, CO Micropolitan Statistical Area.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_alamosa', 'city', 37.46945, -105.87002, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_alamosa_in_country', 'plc_alamosa', 'ent_usa', 'located_in', 0.95, 'clm_wiki_alamosa_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_alamosa_overview', 'plc_alamosa', 'overview', 'Overview',
   'Alamosa is the home rule city that is the county seat of, and the most populous municipality in, Alamosa County, Colorado United States. Alamosa is located along the Rio Grande. The city population was 9,806 in the 2020 United States census. The city is the commercial center of the San Luis Valley in south-central Colorado, and is the home of Adams State University. Alamosa is the primary city of the Alamosa, CO Micropolitan Statistical Area.', '["clm_wiki_alamosa_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_alamosa_primary', 'plc_alamosa', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/5/57/Alamosa%2C_CO_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Alamosa%2C_CO_%28cropped%29.jpg/330px-Alamosa%2C_CO_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Alamosa',
   'Alamosa', 1, 10, unixepoch());

-- 79. Waynesville (city, NC, pop=9809)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_waynesville', 'place', 'waynesville', 'Waynesville', 'published', 'en', 0,
   'Waynesville may refer to a place in the United States:Waynesville, Georgia
Waynesville, Illinois
Waynesville, Indiana
Waynesville, Missouri
Waynesville, North Carolina
Waynesville, Ohio', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_waynesville', 'city', 35.48871, -82.98875, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_waynesville_in_country', 'plc_waynesville', 'ent_usa', 'located_in', 0.95, 'clm_wiki_waynesville_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_waynesville_overview', 'plc_waynesville', 'overview', 'Overview',
   'Waynesville may refer to a place in the United States:Waynesville, Georgia
Waynesville, Illinois
Waynesville, Indiana
Waynesville, Missouri
Waynesville, North Carolina
Waynesville, Ohio', '["clm_wiki_waynesville_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());


-- 80. Cody (city, WY, pop=9792)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_cody', 'place', 'cody', 'Cody', 'published', 'en', 0,
   'Cody may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_cody', 'city', 44.52634, -109.05653, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_cody_in_country', 'plc_cody', 'ent_usa', 'located_in', 0.95, 'clm_wiki_cody_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_cody_overview', 'plc_cody', 'overview', 'Overview',
   'Cody may refer to:', '["clm_wiki_cody_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_cody_history', 'plc_cody', 'history', 'History',
   'People and fictional characters [ edit ] Cody (given name) , including a list of people and fictional characters Cody (surname) , including a list of people Cody Rhodes (born 1985), American professional wrestler also known by the ring name Cody', '["clm_wiki_cody_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_cody_geography', 'plc_cody', 'geography', 'Geography',
   'Places [ edit ] Canada [ edit ] Cody, British Columbia , a ghost town United States [ edit ] Cody, Florida , an unincorporated community Cody (Duluth) , Minnesota, a neighborhood Cody, Missouri , an unincorporated community Cody, Nebraska , a village Cody, Wyoming , a city and county seat Cody Lake (Minnesota)', '["clm_wiki_cody_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_cody_demographics', 'plc_cody', 'demographics', 'Demographics',
   'Canada [ edit ] Cody, British Columbia , a ghost town', '["clm_wiki_cody_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 81. Washington (city, NC, pop=9788)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_washington', 'place', 'washington', 'Washington', 'published', 'en', 0,
   'Washington most commonly refers to:George Washington (1732–1799), the first president of the United States
Washington (state), a state in the Pacific Northwest of the United States
Washington, D.C., the capital of the United States
A metonym for the federal government of the United States
Washington metropolitan area, the metropolitan area centered on Washington, D.C.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_washington', 'city', 35.54655, -77.05217, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_washington_in_country', 'plc_washington', 'ent_usa', 'located_in', 0.95, 'clm_wiki_washington_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_washington_overview', 'plc_washington', 'overview', 'Overview',
   'Washington most commonly refers to:George Washington (1732–1799), the first president of the United States
Washington (state), a state in the Pacific Northwest of the United States
Washington, D.C., the capital of the United States
A metonym for the federal government of the United States
Washington metropolitan area, the metropolitan area centered on Washington, D.C.', '["clm_wiki_washington_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_washington_history', 'plc_washington', 'history', 'History',
   'Places [ edit ] England [ edit ] Washington Old Hall , ancestral home of the family of George Washington Washington, Tyne and Wear , a town in the City of Sunderland metropolitan borough Washington, West Sussex , a village and civil parish Greenland [ edit ] Cape Washington, Greenland Washington Land Philippines [ edit ] New Washington, Aklan , a municipality Washington, a barangay in Catarman, Northern Samar Washington, a barangay in Escalante, Negros Occidental Washington, a barangay in San Jacinto, Masbate Washington, a barangay in Surigao City United States [ edit ] Fort Washington (disambiguation) Lake Washington (disambiguation) Mount Washington (disambiguation) Port Washington (disambiguation) Washington Avenue (disambiguation) Washington Bridge (disambiguation) Washington Boulevard (disambiguation) Washington County (disambiguation) Washington district (disambiguation) Washington Island (disambiguation) Washington Park (disambiguation) Washington Square (disambiguation) Washington Street (disambiguation) Washington Township (disambiguation) Washington Valley (disambiguation) Washington, Wisconsin (disambiguation) Cities and communities [ edit ] Washington, Alabama Washington, Arkansas Washington, California , in Nevada County Washington Colony, California, settlement located near what is now Easton, California . Washington, Yolo County, California Washington, Connecticut Washington, Georgia Washington, Illinois Washington, Indiana Washington, Iowa Washington, Kansas Washington, Kentucky Washington, Louisiana Washington, Maine Washington, Massachusetts Washington, Michigan , an unincorporated community in Washington Township Washington, Mississippi Washington, Missouri Washington, Nebraska Washington, New Hampshire Washington, New Jersey Washington, New York Washington, North Carolina Washington Court House, Ohio Washington, Oklahoma Washington, Pennsylvania Washington, Rhode Island Washington-on-the-Brazos, Texas Washington, Utah Washington, Vermont Washington, Virginia Washington, West Virginia Elsewhere [ edit ] Washington Escarpment , Antarctica Washington, Ontario , Canada George Washington, Cuba (also known as Washington) Washington Island (French Polynesia) Washington, Guyana, a community in Mahaica-Berbice , Guyana Washington Island (Kiribati)', '["clm_wiki_washington_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_washington_geography', 'plc_washington', 'geography', 'Geography',
   'England [ edit ] Washington Old Hall , ancestral home of the family of George Washington Washington, Tyne and Wear , a town in the City of Sunderland metropolitan borough Washington, West Sussex , a village and civil parish', '["clm_wiki_washington_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_washington_demographics', 'plc_washington', 'demographics', 'Demographics',
   'Greenland [ edit ] Cape Washington, Greenland Washington Land', '["clm_wiki_washington_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 82. Le Mars (city, IA, pop=9761)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_le-mars', 'place', 'le-mars', 'Le Mars', 'published', 'en', 0,
   'Le Mars is a city and the county seat of Plymouth County, Iowa, United States. It is located on the Floyd River northeast of Sioux City. The population was 10,571 at the time of the 2020 census. Le Mars is located within America Township and is part of the Sioux City metropolitan area.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_le-mars', 'city', 42.79416, -96.16558, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_le-mars_in_country', 'plc_le-mars', 'ent_usa', 'located_in', 0.95, 'clm_wiki_le-mars_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_le-mars_overview', 'plc_le-mars', 'overview', 'Overview',
   'Le Mars is a city and the county seat of Plymouth County, Iowa, United States. It is located on the Floyd River northeast of Sioux City. The population was 10,571 at the time of the 2020 census. Le Mars is located within America Township and is part of the Sioux City metropolitan area.', '["clm_wiki_le-mars_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_le-mars_overview', 'plc_le-mars', 'overview', 'History',
   'Le Mars is a city and the county seat of Plymouth County, Iowa, United States. It is located on the Floyd River northeast of Sioux City. The population was 10,571 at the time of the 2020 census. Le Mars is located within America Township and is part of the Sioux City metropolitan area.', '["clm_wiki_le-mars_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_le-mars_overview', 'plc_le-mars', 'overview', 'Geography',
   'Le Mars is a city and the county seat of Plymouth County, Iowa, United States. It is located on the Floyd River northeast of Sioux City. The population was 10,571 at the time of the 2020 census. Le Mars is located within America Township and is part of the Sioux City metropolitan area.', '["clm_wiki_le-mars_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_le-mars_overview', 'plc_le-mars', 'overview', 'Demographics',
   'Le Mars is a city and the county seat of Plymouth County, Iowa, United States. It is located on the Floyd River northeast of Sioux City. The population was 10,571 at the time of the 2020 census. Le Mars is located within America Township and is part of the Sioux City metropolitan area.', '["clm_wiki_le-mars_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_le-mars_primary', 'plc_le-mars', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/f/f2/Lemars.downtown.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Lemars.downtown.jpg/330px-Lemars.downtown.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Le Mars',
   'Le Mars', 1, 10, unixepoch());

-- 83. Cairo (city, GA, pop=9752)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_cairo', 'place', 'cairo', 'Cairo', 'published', 'en', 0,
   'Cairo is the capital and largest city of Egypt and the Cairo Governorate. It is home to more than 9.8 million people. It is also part of the largest urban agglomeration in Africa, the Arab world, and the Middle East. The Greater Cairo metropolitan area is one of the largest in the world by population with over 22 million people. Areas of what would become Cairo were inhabited from pre-dynastic and early-dynastic ancient Egypt c. 6000 years ago, as the Giza pyramid complex and the ancient cities of Memphis and Heliopolis are today within the city.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_cairo', 'city', 30.87751, -84.20214, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_cairo_in_country', 'plc_cairo', 'ent_usa', 'located_in', 0.95, 'clm_wiki_cairo_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_cairo_overview', 'plc_cairo', 'overview', 'Overview',
   'Cairo is the capital and largest city of Egypt and the Cairo Governorate. It is home to more than 9.8 million people. It is also part of the largest urban agglomeration in Africa, the Arab world, and the Middle East. The Greater Cairo metropolitan area is one of the largest in the world by population with over 22 million people. Areas of what would become Cairo were inhabited from pre-dynastic and early-dynastic ancient Egypt c. 6000 years ago, as the Giza pyramid complex and the ancient cities of Memphis and Heliopolis are today within the city.', '["clm_wiki_cairo_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_cairo_history', 'plc_cairo', 'history', 'History',
   'Etymology [ edit ] The name of Cairo is derived from the Arabic al-Qāhirah ( القاهرة ), meaning ''the Vanquisher'' or ''the Conqueror'', given by the Fatimid Caliph al-Mu''izz following the establishment of the city as the capital of the Fatimid dynasty. Its full, formal name was al-Qāhirah al-Mu''izziyyah ( القاهرة المعزيّة ), meaning ''the Vanquisher of al-Mu''izz''. &#91; 1 &#93; It is also supposedly due to the fact that the planet Mars , known in Arabic by names such as an-Najm al-Qāhir ( النجم القاهر , ''the Conquering Star''), was rising at the time of the city''s founding. &#91; 2 &#93; Egyptians often refer to Cairo as Maṣr ( .mw-parser-output .IPA-label-small{font-size:85%}.mw-parser-output .references .IPA-label-small,.mw-parser-output .infobox .IPA-label-small,.mw-parser-output .navbox .IPA-label-small{font-size:100%} IPA: &#91;mɑsˤɾ&#93; ; مَصر ), the Egyptian Arabic name for Egypt itself, emphasising the city''s importance for the country. &#91; 3 &#93; &#91; 4 &#93; There are a number of Coptic names for the city. Tikešrōmi ( Coptic : Ϯⲕⲉϣⲣⲱⲙⲓ Late Coptic: &#91;dikɑʃˈɾoːmi&#93; ) is attested in the 1211 text The Martyrdom of John of Phanijoit and is either a calque meaning ''man breaker'' ( Ϯ- , ''the'', ⲕⲁϣ- , ''to break'', and ⲣⲱⲙⲓ , ''man''), akin to Arabic al-Qāhirah , or a derivation from Arabic قَصْر الرُوم ( qaṣr ar-rūm , "the Roman castle"), another name of Babylon Fortress in Old Cairo . &#91; 5 &#93; The Arabic name is also calqued as .mw-parser-output .script-coptic{font-family:Quivira,Antinoou,Analecta,"Arial Coptic","Noto Sans Coptic","FreeSerifAvvaShenouda","Sophia Nubian","New Athena Unicode","MPH 2B Damase","Segoe UI Historic","Segoe UI Symbol"} ⲧⲡⲟⲗⲓⲥ ϯⲣⲉϥϭⲣⲟ , "the victor city" in the Coptic antiphonary. &#91; 6 &#93; The form Khairon ( Coptic : ⲭⲁⲓⲣⲟⲛ ) is attested in the modern Coptic text Ⲡⲓⲫⲓⲣⲓ ⲛ̀ⲧⲉ ϯⲁⲅⲓⲁ ⲙ̀ⲙⲏⲓ Ⲃⲉⲣⲏⲛⲁ (The Tale of Saint Verina ). &#91; 7 &#93; &#91; better&#160;source&#160;needed &#93; Lioui ( Ⲗⲓⲟⲩⲓ Late Coptic: &#91;lɪˈjuːj&#93; ) or Elioui ( Ⲉⲗⲓⲟⲩⲓ Late Coptic: &#91;ælˈjuːj&#93; ) is another name which is descended from the Greek name of Heliopolis ( Ήλιούπολις ). &#91; 5 &#93; Some argue that Mistram ( Ⲙⲓⲥⲧⲣⲁⲙ Late Coptic: &#91;ˈmɪstəɾɑm&#93; ) or Nistram ( Ⲛⲓⲥⲧⲣⲁⲙ Late Coptic: &#91;ˈnɪstəɾɑm&#93; ) is another Coptic name for Cairo, although others think that it is rather a name for the Abbasid province capital al-Askar . &#91; 8 &#93; Ⲕⲁϩⲓⲣⲏ ( Kahi•ree ) is a popular modern rendering of an Arabic name (others being Ⲕⲁⲓⲣ', '["clm_wiki_cairo_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_cairo_geography', 'plc_cairo', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} See also: History of Egypt For a chronological guide, see Timeline of Cairo . Ancient settlements [ edit ] The remains of a circular Roman tower at Babylon Fortress , late 3rd century, in Old Cairo The area around present-day Cairo had long been a focal point of Ancient Egypt due to its strategic location at the junction of the Nile Valley and the Nile Delta regions (roughly Upper Egypt and Lower Egypt ), which also placed it at the crossing of major routes between North Africa and the Levant . &#91; 1 &#93; &#91; 2 &#93; Memphis , the capital of Egypt during the Old Kingdom and a major city up until the Ptolemaic period , was located a short distance south west of present-day Cairo. &#91; 3 &#93; Heliopolis , another important city and major religious centre, was located in what are now the modern districts of Matariya and Ain Shams in northeastern Cairo. &#91; 3 &#93; &#91; 4 &#93; It was largely destroyed by the Persian invasions in 525 BC and 343 BC and partly abandoned by the late first century BC. &#91; 1 &#93; However, the origins of modern Cairo are generally traced back to a series of settlements in the first millennium AD. Around the turn of the fourth century, &#91; 5 &#93; as Memphis was continuing to decline in importance, &#91; 6 &#93; the Romans established a large fortress along the east bank of the Nile . The trading post of Babylon , first mentioned in 50 BC, &#91; 7 &#93; became a fortress, built by the Roman emperor Diocletian (r. 285–305) at the entrance of a canal connecting the Nile to the Red Sea that was created earlier by Emperor Trajan (r. 98–117). &#91; a &#93; &#91; 8 &#93; Furt', '["clm_wiki_cairo_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_cairo_demographics', 'plc_cairo', 'demographics', 'Demographics',
   'Ancient settlements [ edit ] The remains of a circular Roman tower at Babylon Fortress , late 3rd century, in Old Cairo The area around present-day Cairo had long been a focal point of Ancient Egypt due to its strategic location at the junction of the Nile Valley and the Nile Delta regions (roughly Upper Egypt and Lower Egypt ), which also placed it at the crossing of major routes between North Africa and the Levant . &#91; 1 &#93; &#91; 2 &#93; Memphis , the capital of Egypt during the Old Kingdom and a major city up until the Ptolemaic period , was located a short distance south west of present-day Cairo. &#91; 3 &#93; Heliopolis , another important city and major religious centre, was located in what are now the modern districts of Matariya and Ain Shams in northeastern Cairo. &#91; 3 &#93; &#91; 4 &#93; It was largely destroyed by the Persian invasions in 525 BC and 343 BC and partly abandoned by the late first century BC. &#91; 1 &#93; However, the origins of modern Cairo are generally traced back to a series of settlements in the first millennium AD. Around the turn of the fourth century, &#91; 5 &#93; as Memphis was continuing to decline in importance, &#91; 6 &#93; the Romans established a large fortress along the east bank of the Nile . The trading post of Babylon , first mentioned in 50 BC, &#91; 7 &#93; became a fortress, built by the Roman emperor Diocletian (r. 285–305) at the entrance of a canal connecting the Nile to the Red Sea that was created earlier by Emperor Trajan (r. 98–117). &#91; a &#93; &#91; 8 &#93; Further north of the fortress, near the present-day district of al-Azbakiya , was a port and fortified outpost known as Tendunyas ( Coptic : ϯⲁⲛⲧⲱⲛⲓⲁⲥ ) &#91; 9 &#93; or Umm Dunayn. &#91; 10 &#93; &#91; 11 &#93; &#91; 12 &#93; While no structures older than the 7th century have been preserved in the area aside from the Roman fortifications, historical evidence suggests that a sizeable city existed. The city was important enough that its bishop ', '["clm_wiki_cairo_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_cairo_primary', 'plc_cairo', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Cairo_Opera_House%2C_Al_Hurriyah_Park_and_the_Nile_river_%2814797782354%29.jpg/3840px-Cairo_Opera_House%2C_Al_Hurriyah_Park_and_the_Nile_river_%2814797782354%29.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Cairo_Opera_House%2C_Al_Hurriyah_Park_and_the_Nile_river_%2814797782354%29.jpg/330px-Cairo_Opera_House%2C_Al_Hurriyah_Park_and_the_Nile_river_%2814797782354%29.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Cairo',
   'Cairo', 1, 10, unixepoch());

-- 84. Baker City (city, OR, pop=9752)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_baker-city', 'place', 'baker-city', 'Baker City', 'published', 'en', 0,
   'Baker City is a city in and the county seat of Baker County, Oregon, United States. It was named after Edward Dickinson Baker, the only U.S. Senator ever killed in military combat. The population was 10,099 at the time of the 2020 census.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_baker-city', 'city', 44.77487, -117.83438, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_baker-city_in_country', 'plc_baker-city', 'ent_usa', 'located_in', 0.95, 'clm_wiki_baker-city_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_baker-city_overview', 'plc_baker-city', 'overview', 'Overview',
   'Baker City is a city in and the county seat of Baker County, Oregon, United States. It was named after Edward Dickinson Baker, the only U.S. Senator ever killed in military combat. The population was 10,099 at the time of the 2020 census.', '["clm_wiki_baker-city_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_baker-city_overview', 'plc_baker-city', 'overview', 'History',
   'Baker City is a city in and the county seat of Baker County, Oregon, United States. It was named after Edward Dickinson Baker, the only U.S. Senator ever killed in military combat. The population was 10,099 at the time of the 2020 census.', '["clm_wiki_baker-city_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_baker-city_overview', 'plc_baker-city', 'overview', 'Geography',
   'Baker City is a city in and the county seat of Baker County, Oregon, United States. It was named after Edward Dickinson Baker, the only U.S. Senator ever killed in military combat. The population was 10,099 at the time of the 2020 census.', '["clm_wiki_baker-city_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_baker-city_overview', 'plc_baker-city', 'overview', 'Demographics',
   'Baker City is a city in and the county seat of Baker County, Oregon, United States. It was named after Edward Dickinson Baker, the only U.S. Senator ever killed in military combat. The population was 10,099 at the time of the 2020 census.', '["clm_wiki_baker-city_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_baker-city_primary', 'plc_baker-city', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/f/f9/Bakermainstreet.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Bakermainstreet.jpg/330px-Bakermainstreet.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Baker City',
   'Baker City', 1, 10, unixepoch());

-- 85. Cedartown (city, GA, pop=9750)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_cedartown', 'place', 'cedartown', 'Cedartown', 'published', 'en', 0,
   'Cedartown is a city and the county seat of Polk County, Georgia, United States. The population was 10,190 at the 2020 census. Cedartown is the principal city of the Cedartown micropolitan area, which is included in the Atlanta–Athens-Clarke–Sandy Springs combined statistical area.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_cedartown', 'city', 34.01123, -85.25593, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_cedartown_in_country', 'plc_cedartown', 'ent_usa', 'located_in', 0.95, 'clm_wiki_cedartown_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_cedartown_overview', 'plc_cedartown', 'overview', 'Overview',
   'Cedartown is a city and the county seat of Polk County, Georgia, United States. The population was 10,190 at the 2020 census. Cedartown is the principal city of the Cedartown micropolitan area, which is included in the Atlanta–Athens-Clarke–Sandy Springs combined statistical area.', '["clm_wiki_cedartown_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_cedartown_primary', 'plc_cedartown', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/9/92/DowntownCedartown.jpg', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/DowntownCedartown.jpg/330px-DowntownCedartown.jpg',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Cedartown',
   'Cedartown', 1, 10, unixepoch());

-- 86. Brownfield (city, TX, pop=9736)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_brownfield', 'place', 'brownfield', 'Brownfield', 'published', 'en', 0,
   'Brownfield is previously developed land that has been abandoned or left underused, and which may carry pollution or a risk of pollution from previous industrial use. The definition varies and is decided by policy makers and land developers within different countries. The main difference in definitions of whether a piece of land is considered a brownfield or not depends on the presence or absence of pollution. Overall, brownfield land is a site previously developed for industrial or commercial purposes and thus requires further development before reuse.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_brownfield', 'city', 33.1812, -102.27435, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_brownfield_in_country', 'plc_brownfield', 'ent_usa', 'located_in', 0.95, 'clm_wiki_brownfield_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_brownfield_overview', 'plc_brownfield', 'overview', 'Overview',
   'Brownfield is previously developed land that has been abandoned or left underused, and which may carry pollution or a risk of pollution from previous industrial use. The definition varies and is decided by policy makers and land developers within different countries. The main difference in definitions of whether a piece of land is considered a brownfield or not depends on the presence or absence of pollution. Overall, brownfield land is a site previously developed for industrial or commercial purposes and thus requires further development before reuse.', '["clm_wiki_brownfield_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_brownfield_primary', 'plc_brownfield', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Soilcontam.JPG?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Soilcontam.JPG/330px-Soilcontam.JPG?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Brownfield',
   'Brownfield', 1, 10, unixepoch());

-- 87. Safford (city, AZ, pop=9683)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_safford', 'place', 'safford', 'Safford', 'published', 'en', 0,
   'Safford may refer to :Safford, Arizona, a city in Graham County, Arizona
Safford Regional Airport, an airport serving Safford, Arizona
Safford, Alabama, an unincorporated community in Dallas County, Alabama
Safford House, a historic home in Tarpon Springs, Florida
Safford Cape (1906–1973), American composer and musicologist
Andrew Safford House, 1819, designed in the Federal style by an unknown architect
Anson P.K. Safford (1830–1891), 3rd Governor of Arizona Territory (1869–1877)
Laurance Safford (1890–1973), a U.S. Navy cryptologist
Truman Henry Safford (1836–1901), an American calculating prodigy
William Edwin Safford (1859–1926), an American botanist and ethnologist
Benton Safford, a fictional character in novels by R. B. Dominic
James M. Safford (1822–1907), an American geologist', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_safford', 'city', 32.83395, -109.70758, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_safford_in_country', 'plc_safford', 'ent_usa', 'located_in', 0.95, 'clm_wiki_safford_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_safford_overview', 'plc_safford', 'overview', 'Overview',
   'Safford may refer to :Safford, Arizona, a city in Graham County, Arizona
Safford Regional Airport, an airport serving Safford, Arizona
Safford, Alabama, an unincorporated community in Dallas County, Alabama
Safford House, a historic home in Tarpon Springs, Florida
Safford Cape (1906–1973), American composer and musicologist
Andrew Safford House, 1819, designed in the Federal style by an unknown architect
Anson P.K. Safford (1830–1891), 3rd Governor of Arizona Territory (1869–1877)
Laurance Safford (1890–1973), a U.S. Navy cryptologist
Truman Henry Safford (1836–1901), an American calculating prodigy
William Edwin Safford (1859–1926), an American botanist and ethnologist
Benton Safford, a fictional character in novels by R. B. Dominic
James M. Safford (1822–1907), an American geologist', '["clm_wiki_safford_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());


-- 88. Sparta (city, WI, pop=9679)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_sparta', 'place', 'sparta', 'Sparta', 'published', 'en', 0,
   'Sparta was a prominent ancient Greek polis in Laconia. In classical antiquity, the state was known as Lacedaemon, while Sparta referred to its capital, a group of villages in the valley of the Evrotas River in Laconia, in southeastern Peloponnese. During the 7th century BC, it rose to become the most prominent land military power in the Greek world, a status it retained until its defeat at Leuctra in 371 BC.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_sparta', 'city', 43.94413, -90.81291, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_sparta_in_country', 'plc_sparta', 'ent_usa', 'located_in', 0.95, 'clm_wiki_sparta_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_sparta_overview', 'plc_sparta', 'overview', 'Overview',
   'Sparta was a prominent ancient Greek polis in Laconia. In classical antiquity, the state was known as Lacedaemon, while Sparta referred to its capital, a group of villages in the valley of the Evrotas River in Laconia, in southeastern Peloponnese. During the 7th century BC, it rose to become the most prominent land military power in the Greek world, a status it retained until its defeat at Leuctra in 371 BC.', '["clm_wiki_sparta_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_sparta_history', 'plc_sparta', 'history', 'History',
   'Names [ edit ] The ancient Greeks used one of three words to refer to the Spartan city-state and its location. First, "Sparta" refers primarily to the main cluster of settlements in the valley of the Eurotas River . &#91; 1 &#93; The second word, "Lacedaemon" ( Λακεδαίμων ), &#91; 2 &#93; was often used as an adjective and is the name referenced in the works of Homer and the historians Herodotus and Thucydides . The third term, "Laconice" ( Λακωνική ), referred to the immediate area around the town of Sparta, the plateau east of the Taygetos mountains, &#91; 3 &#93; and sometimes to all the regions under direct Spartan control, including Messenia . Eurotas River The earliest attested term referring to Lacedaemon is the Mycenaean Greek .mw-parser-output .script-Cprt{font-size:1.25em;font-family:"Segoe UI Historic","Noto Sans Cypriot",Code2001}.mw-parser-output .script-Hano{font-size:125%;font-family:"Noto Sans Hanunoo",FreeSerif,Quivira}.mw-parser-output .script-Latf,.mw-parser-output .script-de-Latf{font-size:1.25em;font-family:"Breitkopf Fraktur",UnifrakturCook,UniFrakturMaguntia,MarsFraktur,"MarsFraktur OT",KochFraktur,"KochFraktur OT",OffenbacherSchwabOT,"LOB.AlteSchwabacher","LOV.AlteSchwabacher","LOB.AtlantisFraktur","LOV.AtlantisFraktur","LOB.BreitkopfFraktur","LOV.BreitkopfFraktur","LOB.FetteFraktur","LOV.FetteFraktur","LOB.Fraktur3","LOV.Fraktur3","LOB.RochFraktur","LOV.RochFraktur","LOB.PostFraktur","LOV.PostFraktur","LOB.RuelhscheFraktur","LOV.RuelhscheFraktur","LOB.RungholtFraktur","LOV.RungholtFraktur","LOB.TheuerbankFraktur","LOV.TheuerbankFraktur","LOB.VinetaFraktur","LOV.VinetaFraktur","LOB.WalbaumFraktur","LOV.WalbaumFraktur","LOB.WeberMainzerFraktur","LOV.WeberMainzerFraktur","LOB.WieynckFraktur","LOV.WieynckFraktur","LOB.ZentenarFraktur","LOV.ZentenarFraktur"}.mw-parser-output .script-en-Latf{font-size:1.25em;font-family:Cankama,"Old English Text MT","Textura Libera","Textura Libera Tenuis",London}.mw-parser-output .script-it-Latf{font-size:1.25em;font-family:"Rotunda Pommerania",Rotunda,"Typographer Rotunda"}.mw-parser-output .script-Lina{font-size:1.25em;font-family:"Noto Sans Linear A"}.mw-parser-output .script-Linb{font-size:1.25em;font-family:"Noto Sans Linear B"}.mw-parser-output .script-Ugar{font-size:1.25em;font-family:"Segoe UI Historic","Noto Sans Ugaritic",Aegean}.mw-parser-output .script-Xpeo{font-size:1.25em;font-family:"Segoe UI Historic","Noto Sans Old Persian",Artaxerxes,Xerxes,Aegean} 𐀨𐀐𐀅𐀖𐀛𐀍 , ra-ke-da-mi-ni-jo , "Lakedai', '["clm_wiki_sparta_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_sparta_geography', 'plc_sparta', 'geography', 'Geography',
   'Names [ edit ] The ancient Greeks used one of three words to refer to the Spartan city-state and its location. First, "Sparta" refers primarily to the main cluster of settlements in the valley of the Eurotas River . &#91; 1 &#93; The second word, "Lacedaemon" ( Λακεδαίμων ), &#91; 2 &#93; was often used as an adjective and is the name referenced in the works of Homer and the historians Herodotus and Thucydides . The third term, "Laconice" ( Λακωνική ), referred to the immediate area around the town of Sparta, the plateau east of the Taygetos mountains, &#91; 3 &#93; and sometimes to all the regions under direct Spartan control, including Messenia . Eurotas River The earliest attested term referring to Lacedaemon is the Mycenaean Greek .mw-parser-output .script-Cprt{font-size:1.25em;font-family:"Segoe UI Historic","Noto Sans Cypriot",Code2001}.mw-parser-output .script-Hano{font-size:125%;font-family:"Noto Sans Hanunoo",FreeSerif,Quivira}.mw-parser-output .script-Latf,.mw-parser-output .script-de-Latf{font-size:1.25em;font-family:"Breitkopf Fraktur",UnifrakturCook,UniFrakturMaguntia,MarsFraktur,"MarsFraktur OT",KochFraktur,"KochFraktur OT",OffenbacherSchwabOT,"LOB.AlteSchwabacher","LOV.AlteSchwabacher","LOB.AtlantisFraktur","LOV.AtlantisFraktur","LOB.BreitkopfFraktur","LOV.BreitkopfFraktur","LOB.FetteFraktur","LOV.FetteFraktur","LOB.Fraktur3","LOV.Fraktur3","LOB.RochFraktur","LOV.RochFraktur","LOB.PostFraktur","LOV.PostFraktur","LOB.RuelhscheFraktur","LOV.RuelhscheFraktur","LOB.RungholtFraktur","LOV.RungholtFraktur","LOB.TheuerbankFraktur","LOV.TheuerbankFraktur","LOB.VinetaFraktur","LOV.VinetaFraktur","LOB.WalbaumFraktur","LOV.WalbaumFraktur","LOB.WeberMainzerFraktur","LOV.WeberMainzerFraktur","LOB.WieynckFraktur","LOV.WieynckFraktur","LOB.ZentenarFraktur","LOV.ZentenarFraktur"}.mw-parser-output .script-en-Latf{font-size:1.25em;font-family:Cankama,"Old English Text MT","Textura Libera","Textura Libera Tenuis",London}.mw-parser-output .script-it-Latf{font-size:1.25em;', '["clm_wiki_sparta_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_sparta_demographics', 'plc_sparta', 'demographics', 'Demographics',
   'Mythology [ edit ] Lacedaemon (Greek: Λακεδαίμων ) was a mythical king of Laconia. &#91; 1 &#93; The son of Zeus by the nymph Taygete , he married Sparta , the daughter of Eurotas , by whom he became the father of Amyclas , Eurydice , and Asine. As king, he named his country after himself and the city after his wife. &#91; 1 &#93; He was believed to have built the sanctuary of the Charites , which stood between Sparta and Amyclae , and to have given to those divinities the names of Cleta and Phaenna . A shrine was erected to him in the neighbourhood of Therapne . Tyrtaeus , an archaic era Spartan writer, is the earliest source to connect the origin myth of the Spartans to the lineage of the hero Heracles ; later authors, such as Diodorus Siculus , Herodotus, and Apollodorus , also made mention of Spartans understanding themselves to be descendants of Heracles. &#91; 2 &#93; &#91; 3 &#93; &#91; 4 &#93; &#91; 5 &#93; ^ a b Pausanias 1918 , Description of Greece, ΙΙΙ.1.2 . ^ Diodorus Siculus, 4.57-8 ^ Apollodorus, 2.8.2–4 ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw', '["clm_wiki_sparta_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_sparta_primary', 'plc_sparta', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/d/db/Spartan_Territory_Before_371_BC.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Spartan_Territory_Before_371_BC.png/330px-Spartan_Territory_Before_371_BC.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Sparta',
   'Sparta', 1, 10, unixepoch());

-- 89. Sunbury (city, PA, pop=9652)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_sunbury', 'place', 'sunbury', 'Sunbury', 'published', 'en', 0,
   'Sunbury may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_sunbury', 'city', 40.86259, -76.79441, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_sunbury_in_country', 'plc_sunbury', 'ent_usa', 'located_in', 0.95, 'clm_wiki_sunbury_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_sunbury_overview', 'plc_sunbury', 'overview', 'Overview',
   'Sunbury may refer to:', '["clm_wiki_sunbury_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_sunbury_history', 'plc_sunbury', 'history', 'History',
   'Australia [ edit ] Sunbury, Victoria Sunbury Downs College Sunbury Pop Festival (1972-1975) Sunbury railway station, Melbourne Sunbury wine region', '["clm_wiki_sunbury_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_sunbury_geography', 'plc_sunbury', 'geography', 'Geography',
   'Barbados [ edit ] Sunbury, Barbados', '["clm_wiki_sunbury_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_sunbury_demographics', 'plc_sunbury', 'demographics', 'Demographics',
   'Canada [ edit ] Sunbury County, New Brunswick Sunbury County, Nova Scotia (1765-1784), ceased to exist when the province of New Brunswick was created Sunbury, Ontario , a community within South Frontenac Township Sunbury (federal electoral district) Sunbury (provincial electoral district, 1785–1973) Sunbury (provincial electoral district, 1973–1994)', '["clm_wiki_sunbury_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 90. Milton (city, FL, pop=9628)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_milton', 'place', 'milton', 'Milton', 'published', 'en', 0,
   'Milton may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_milton', 'city', 30.63241, -87.03969, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_milton_in_country', 'plc_milton', 'ent_usa', 'located_in', 0.95, 'clm_wiki_milton_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_milton_overview', 'plc_milton', 'overview', 'Overview',
   'Milton may refer to:', '["clm_wiki_milton_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_milton_history', 'plc_milton', 'history', 'History',
   'People and fictional characters [ edit ] Milton (surname) , a list of people with that surname John Milton (1608–1674), English poet Milton (given name) Milton (footballer) , Brazilian footballer Milton Luiz de Souza Filho (born 1961) Milton, stage name of Marc Rosenthal , American singer-songwriter', '["clm_wiki_milton_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_milton_geography', 'plc_milton', 'geography', 'Geography',
   'Places [ edit ] Australia [ edit ] Milton, New South Wales , a village Milton, Queensland , a suburb of Brisbane Milton Reach , a reach of the Brisbane River Canada [ edit ] Milton, Newfoundland and Labrador Milton, Nova Scotia in the Region of Queens Municipality Milton, Ontario , a town Milton (federal electoral district) , Ontario Milton (provincial electoral district) , Ontario Milton, a prior name of Beaverton, Ontario , a community Rural Municipality of Milton No. 292 , Saskatchewan New Zealand [ edit ] Milton, New Zealand United Kingdom [ edit ] England [ edit ] Milton, Cambridgeshire , a village north of Cambridge Milton, Brampton, Cumbria Milton, Milnthorpe, Cumbria Milton, Derbyshire , a village in south Derbyshire Milton, Dorset , a former town Milton on Stour , Dorset Milton, a former hamlet in Westcliff-on-Sea , Essex Milton (Southend-on-Sea ward) Milton, Nottinghamshire Milton, Cherwell , Oxfordshire Milton, Vale of White Horse , Oxfordshire Milton Park , a business park Milton, Portsmouth , Hampshire, a residential area of Portsmouth Milton, Somerset , hamlet in Ash parish, South Somerset Milton, North Somerset , an area of Weston-super-Mare , Somerset Milton, Staffordshire , an area of Stoke-on-Trent Milton, Wiltshire , a hamlet Scotland [ edit ] Milton (South Uist) , in the Outer Hebrides Milton of Strathbogie , former name of Huntly, Aberdeenshire Milton of Finavon , Angus Milton of Ogilvie , Angus Milton of Campsie , East Dunbartonshire Milton, Easter Ross , a village near Kildary, Easter Ross, Highland Milton of Balgonie , Fife Milton, Glasgow , a district of the city Milton, Glenurquhart , a village near Drumnadrochit, Highland Milton, Stirling , a hamlet near Aberfoyle Milton of Buchanan , Stirling Milton, West Dunbartonshire , a village near Dumbarton United States [ edit ] Milton, California , an unincorporated community Milton, Delaware , a town Milton, Florida , a city Milton, Georgia , a city Milton County, Georgia , a former county Milton', '["clm_wiki_milton_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_milton_demographics', 'plc_milton', 'demographics', 'Demographics',
   'Australia [ edit ] Milton, New South Wales , a village Milton, Queensland , a suburb of Brisbane Milton Reach , a reach of the Brisbane River', '["clm_wiki_milton_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 91. Astoria (city, OR, pop=9626)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_astoria', 'place', 'astoria', 'Astoria', 'published', 'en', 0,
   'Astoria may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_astoria', 'city', 46.18788, -123.83125, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_astoria_in_country', 'plc_astoria', 'ent_usa', 'located_in', 0.95, 'clm_wiki_astoria_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_astoria_overview', 'plc_astoria', 'overview', 'Overview',
   'Astoria may refer to:', '["clm_wiki_astoria_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_astoria_history', 'plc_astoria', 'history', 'History',
   'Arts, entertainment and media [ edit ] Fictional entities [ edit ] Astoria, ex-wife of Muppet character Waldorf Astoria Greengrass, a Harry Potter character Astoria Rapunzel, in Italian animated series Regal Academy Astoria, in comic book Cerebus the Aardvark Astoria, a song by 40 Watt Sun Music [ edit ] Astoria (Marianas Trench album) 2015 Astoria , a 2006 album by The Shys Astoria: Portrait of the Artist , a 1990 album by Tony Bennett Other uses in arts, entertainment and media [ edit ] Astoria (book) , by Washington Irving, an 1836 account of the founding of Astoria, Oregon Astoria (film) , a 2000 American drama film Astoria , a play by Jura Soyfer (1912–1939)', '["clm_wiki_astoria_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_astoria_geography', 'plc_astoria', 'geography', 'Geography',
   'Fictional entities [ edit ] Astoria, ex-wife of Muppet character Waldorf Astoria Greengrass, a Harry Potter character Astoria Rapunzel, in Italian animated series Regal Academy Astoria, in comic book Cerebus the Aardvark Astoria, a song by 40 Watt Sun', '["clm_wiki_astoria_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_astoria_demographics', 'plc_astoria', 'demographics', 'Demographics',
   'Music [ edit ] Astoria (Marianas Trench album) 2015 Astoria , a 2006 album by The Shys Astoria: Portrait of the Artist , a 1990 album by Tony Bennett', '["clm_wiki_astoria_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 92. Danville (city, IN, pop=9614)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_danville', 'place', 'danville', 'Danville', 'published', 'en', 0,
   'Danville or Dansville may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_danville', 'city', 39.7606, -86.52639, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_danville_in_country', 'plc_danville', 'ent_usa', 'located_in', 0.95, 'clm_wiki_danville_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_danville_overview', 'plc_danville', 'overview', 'Overview',
   'Danville or Dansville may refer to:', '["clm_wiki_danville_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_danville_history', 'plc_danville', 'history', 'History',
   'Places [ edit ] Canada [ edit ] Danville, Quebec United States [ edit ] Danville, Alabama , an unincorporated community Danville, Arkansas , a city Danville, California , a city Danville, Georgia , a town Danville, Illinois , a city Danville, Indiana , a town Danville, Iowa , a city Danville, Kansas , a city Danville, Kentucky , a city Danville, Allegany County, Maryland , a census-designated place Danville, Prince George''s County, Maryland , an unincorporated community Dansville, Michigan , a village Danville, Mississippi , a ghost town Danville, Missouri , a census-designated place Danville, New Hampshire , a town Dansville, Livingston County, New York , a village in the town of North Dansville Dansville, Steuben County, New York , a town Danville, Ohio , a village Danville, Pennsylvania , a borough Danville, Texas , a neighborhood of the city of Kilgore Danville, Vermont , a New England town Danville (CDP), Vermont , census-designated place within the town Danville, Virginia , an independent city Danville, Washington , a census-designated place Danville, West Virginia , a town Danville, Wisconsin , an unincorporated community South Africa [ edit ] Danville, Pretoria , a suburb of Pretoria, Gauteng Province', '["clm_wiki_danville_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_danville_geography', 'plc_danville', 'geography', 'Geography',
   'Canada [ edit ] Danville, Quebec', '["clm_wiki_danville_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_danville_demographics', 'plc_danville', 'demographics', 'Demographics',
   'United States [ edit ] Danville, Alabama , an unincorporated community Danville, Arkansas , a city Danville, California , a city Danville, Georgia , a town Danville, Illinois , a city Danville, Indiana , a town Danville, Iowa , a city Danville, Kansas , a city Danville, Kentucky , a city Danville, Allegany County, Maryland , a census-designated place Danville, Prince George''s County, Maryland , an unincorporated community Dansville, Michigan , a village Danville, Mississippi , a ghost town Danville, Missouri , a census-designated place Danville, New Hampshire , a town Dansville, Livingston County, New York , a village in the town of North Dansville Dansville, Steuben County, New York , a town Danville, Ohio , a village Danville, Pennsylvania , a borough Danville, Texas , a neighborhood of the city of Kilgore Danville, Vermont , a New England town Danville (CDP), Vermont , census-designated place within the town Danville, Virginia , an independent city Danville, Washington , a census-designated place Danville, West Virginia , a town Danville, Wisconsin , an unincorporated community', '["clm_wiki_danville_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 93. Lock Haven (city, PA, pop=9604)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_lock-haven', 'place', 'lock-haven', 'Lock Haven', 'published', 'en', 0,
   'Lock Haven is a city in and the county seat of Clinton County, in the U.S. state of Pennsylvania. Located near the confluence of the West Branch Susquehanna River and Bald Eagle Creek, it is the principal city of the Lock Haven Micropolitan Statistical Area, itself part of the Williamsport–Lock Haven combined statistical area. At the 2020 census, Lock Haven''s population was 8,108.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_lock-haven', 'city', 41.13701, -77.44693, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_lock-haven_in_country', 'plc_lock-haven', 'ent_usa', 'located_in', 0.95, 'clm_wiki_lock-haven_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_lock-haven_overview', 'plc_lock-haven', 'overview', 'Overview',
   'Lock Haven is a city in and the county seat of Clinton County, in the U.S. state of Pennsylvania. Located near the confluence of the West Branch Susquehanna River and Bald Eagle Creek, it is the principal city of the Lock Haven Micropolitan Statistical Area, itself part of the Williamsport–Lock Haven combined statistical area. At the 2020 census, Lock Haven''s population was 8,108.', '["clm_wiki_lock-haven_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_lock-haven_overview', 'plc_lock-haven', 'overview', 'History',
   'Lock Haven is a city in and the county seat of Clinton County, in the U.S. state of Pennsylvania. Located near the confluence of the West Branch Susquehanna River and Bald Eagle Creek, it is the principal city of the Lock Haven Micropolitan Statistical Area, itself part of the Williamsport–Lock Haven combined statistical area. At the 2020 census, Lock Haven''s population was 8,108.', '["clm_wiki_lock-haven_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_lock-haven_overview', 'plc_lock-haven', 'overview', 'Geography',
   'Lock Haven is a city in and the county seat of Clinton County, in the U.S. state of Pennsylvania. Located near the confluence of the West Branch Susquehanna River and Bald Eagle Creek, it is the principal city of the Lock Haven Micropolitan Statistical Area, itself part of the Williamsport–Lock Haven combined statistical area. At the 2020 census, Lock Haven''s population was 8,108.', '["clm_wiki_lock-haven_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_lock-haven_overview', 'plc_lock-haven', 'overview', 'Demographics',
   'Lock Haven is a city in and the county seat of Clinton County, in the U.S. state of Pennsylvania. Located near the confluence of the West Branch Susquehanna River and Bald Eagle Creek, it is the principal city of the Lock Haven Micropolitan Statistical Area, itself part of the Williamsport–Lock Haven combined statistical area. At the 2020 census, Lock Haven''s population was 8,108.', '["clm_wiki_lock-haven_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_lock-haven_primary', 'plc_lock-haven', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Downtown_Lock_Haven_at_Night.jpg/3840px-Downtown_Lock_Haven_at_Night.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Downtown_Lock_Haven_at_Night.jpg/330px-Downtown_Lock_Haven_at_Night.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Lock Haven',
   'Lock Haven', 1, 10, unixepoch());

-- 94. Prineville (city, OR, pop=9530)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_prineville', 'place', 'prineville', 'Prineville', 'published', 'en', 0,
   'Prineville is a city in and the county seat of Crook County, Oregon, United States. It was named for the first merchant to establish businesses in the present location, Barney Prine. The population was 10,429 at the 2020 census.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_prineville', 'city', 44.29985, -120.83447, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_prineville_in_country', 'plc_prineville', 'ent_usa', 'located_in', 0.95, 'clm_wiki_prineville_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_prineville_overview', 'plc_prineville', 'overview', 'Overview',
   'Prineville is a city in and the county seat of Crook County, Oregon, United States. It was named for the first merchant to establish businesses in the present location, Barney Prine. The population was 10,429 at the 2020 census.', '["clm_wiki_prineville_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_prineville_primary', 'plc_prineville', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/e/e5/Prineville%2C_OR_from_Ochoco_State_Scenic_Viewpoint%2C_April_2025.jpg', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Prineville%2C_OR_from_Ochoco_State_Scenic_Viewpoint%2C_April_2025.jpg/330px-Prineville%2C_OR_from_Ochoco_State_Scenic_Viewpoint%2C_April_2025.jpg',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Prineville',
   'Prineville', 1, 10, unixepoch());

-- 95. Howell (city, MI, pop=9521)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_howell', 'place', 'howell', 'Howell', 'published', 'en', 0,
   'Howell may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_howell', 'city', 42.60726, -83.9294, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_howell_in_country', 'plc_howell', 'ent_usa', 'located_in', 0.95, 'clm_wiki_howell_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_howell_overview', 'plc_howell', 'overview', 'Overview',
   'Howell may refer to:', '["clm_wiki_howell_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_howell_history', 'plc_howell', 'history', 'History',
   'Places [ edit ] In the United States [ edit ] Howell, Georgia , an unincorporated community Howell, Evansville , a neighborhood in Indiana Howell, Michigan , a city in Livingston County Howell County, Missouri Howell, Missouri , an unincorporated community Howell, Utah , a town Howell Mountains , California Howell Island, Missouri - see Howell Island Conservation Area Howell Township (disambiguation) , several places Elsewhere [ edit ] Howell, Lincolnshire , England, a hamlet Asgarby and Howell , a civil parish in Lincolnshire Howell, New South Wales , Australia, a locality and ghost town Mount Howell , Ellsworth Land, Antarctica Howell Peak , Oates Land, Antarctica', '["clm_wiki_howell_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_howell_geography', 'plc_howell', 'geography', 'Geography',
   'In the United States [ edit ] Howell, Georgia , an unincorporated community Howell, Evansville , a neighborhood in Indiana Howell, Michigan , a city in Livingston County Howell County, Missouri Howell, Missouri , an unincorporated community Howell, Utah , a town Howell Mountains , California Howell Island, Missouri - see Howell Island Conservation Area Howell Township (disambiguation) , several places', '["clm_wiki_howell_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_howell_demographics', 'plc_howell', 'demographics', 'Demographics',
   'Elsewhere [ edit ] Howell, Lincolnshire , England, a hamlet Asgarby and Howell , a civil parish in Lincolnshire Howell, New South Wales , Australia, a locality and ghost town Mount Howell , Ellsworth Land, Antarctica Howell Peak , Oates Land, Antarctica', '["clm_wiki_howell_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 96. Pecos (city, TX, pop=9517)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_pecos', 'place', 'pecos', 'Pecos', 'published', 'en', 0,
   'Pecos may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_pecos', 'city', 31.42291, -103.49323, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_pecos_in_country', 'plc_pecos', 'ent_usa', 'located_in', 0.95, 'clm_wiki_pecos_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_pecos_overview', 'plc_pecos', 'overview', 'Overview',
   'Pecos may refer to:', '["clm_wiki_pecos_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_pecos_history', 'plc_pecos', 'history', 'History',
   'Places [ edit ] Pecos River , rises near Santa Fe, New Mexico, United States Pecos, Texas , a city in Reeves County, Texas, United States Pecos County, Texas , named for the Pecos River Pecos Spring , a spring Pecos, New Mexico , a village, United States Pecos National Historical Park , a National Historical Park in the U.S. state of New Mexico Trans-Pecos , a region of Texas, United States', '["clm_wiki_pecos_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_pecos_geography', 'plc_pecos', 'geography', 'Geography',
   'Ships [ edit ] USS Pecos , the name of two ships of the United States Navy USNS Pecos (T-AO-197) , a U.S. Navy fleet replenishment oiler in service since 1989', '["clm_wiki_pecos_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_pecos_demographics', 'plc_pecos', 'demographics', 'Demographics',
   'Other uses [ edit ] Pecos Bill , a mythical American cowboy Pecos Classification , a division of all known Ancient Pueblo Peoples culture into chronological phases Pecos League , an independent professional baseball league headquartered in Houston Oryx/Pecos , a proprietary operating system developed by Bell Labs beginning in 1978, consisting of a kernel (Oryx) and the associated processes running on top of it (Pecos) PECOS (Programa Educativo de COlegios Secundarios) , an Argentine computer Pecos Smith [ edit ] Character in: The Gun Packer , 1919 silent western hero of the Zane Grey novel West of the Pecos and its film adaptations: West of the Pecos , 1934 film West of the Pecos , 1945 film The Chinese Paymaster , 1967 novel', '["clm_wiki_pecos_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 97. Chillicothe (city, MO, pop=9487)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_chillicothe', 'place', 'chillicothe', 'Chillicothe', 'published', 'en', 0,
   'Chillicothe may refer to:Chalahgawtha, a division of the Shawnee tribe
Chillicothe, Ohio
Chillicothe Turnpike, a highway
Chillicothe Paints, a collegiate summer baseball team
Chillicothe, Illinois
Chillicothe, Iowa
Chillicothe, Missouri
Chillicothe, Texas
Chillicothe (film), a 1999 film by Todd Edwards', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_chillicothe', 'city', 39.79529, -93.55244, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_chillicothe_in_country', 'plc_chillicothe', 'ent_usa', 'located_in', 0.95, 'clm_wiki_chillicothe_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_chillicothe_overview', 'plc_chillicothe', 'overview', 'Overview',
   'Chillicothe may refer to:Chalahgawtha, a division of the Shawnee tribe
Chillicothe, Ohio
Chillicothe Turnpike, a highway
Chillicothe Paints, a collegiate summer baseball team
Chillicothe, Illinois
Chillicothe, Iowa
Chillicothe, Missouri
Chillicothe, Texas
Chillicothe (film), a 1999 film by Todd Edwards', '["clm_wiki_chillicothe_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());


-- 98. Decatur (city, IN, pop=9465)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_decatur', 'place', 'decatur', 'Decatur', 'published', 'en', 0,
   'Decatur commonly refers to:Decatur, Alabama, the county seat of Morgan County
Decatur metropolitan area, Alabama, the largest metro area with the name Decatur
Decatur, Illinois, the county seat of Macon County and largest city with the name Decatur
Lake Decatur, a reservoir in the city', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_decatur', 'city', 40.8306, -84.92913, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_decatur_in_country', 'plc_decatur', 'ent_usa', 'located_in', 0.95, 'clm_wiki_decatur_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_decatur_overview', 'plc_decatur', 'overview', 'Overview',
   'Decatur commonly refers to:Decatur, Alabama, the county seat of Morgan County
Decatur metropolitan area, Alabama, the largest metro area with the name Decatur
Decatur, Illinois, the county seat of Macon County and largest city with the name Decatur
Lake Decatur, a reservoir in the city', '["clm_wiki_decatur_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_decatur_history', 'plc_decatur', 'history', 'History',
   'Places [ edit ] Decatur, Arkansas , a city Decatur, Georgia , the county seat of DeKalb County Decatur, Indiana , the county seat of Adams County Decatur City, Iowa , a city in Decatur County Decatur, Kentucky, an unincorporated community in Russell County Decatur, Michigan , a village Decatur, Mississippi , the county seat of Newton County Decatur, Missouri , a ghost town Decatur, Nebraska , a village Decatur, New York , a town Decatur, Ohio , an unincorporated community Decatur, Tennessee , the county seat of Meigs County Decatur, Texas , the county seat of Wise County Decatur, Washington , an unincorporated community Decatur, Wisconsin , a town Decatur County (disambiguation) Decatur Township (disambiguation) Decatur Island , one of the San Juan Islands in Washington state', '["clm_wiki_decatur_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_decatur_geography', 'plc_decatur', 'geography', 'Geography',
   'Transportation [ edit ] Decatur Boulevard , Las Vegas, Nevada, a north–south thoroughfare Decatur Highway, U.S. Route 31 in Alabama between Decatur and Birmingham Decatur Street (disambiguation) Decatur (MARTA station) , a railroad station in Decatur, Georgia', '["clm_wiki_decatur_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_decatur_demographics', 'plc_decatur', 'demographics', 'Demographics',
   'Military uses [ edit ] USS Decatur , several ships of the U.S. Navy Decatur (1813 ship) , an American privateer of the War of 1812 Fort Decatur , a fort in New York during the War of 1812', '["clm_wiki_decatur_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 99. Clarksville (city, AR, pop=9433)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_clarksville', 'place', 'clarksville', 'Clarksville', 'published', 'en', 0,
   'Clarksville may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_clarksville', 'city', 35.47147, -93.46657, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_clarksville_in_country', 'plc_clarksville', 'ent_usa', 'located_in', 0.95, 'clm_wiki_clarksville_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_clarksville_overview', 'plc_clarksville', 'overview', 'Overview',
   'Clarksville may refer to:', '["clm_wiki_clarksville_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_clarksville_history', 'plc_clarksville', 'history', 'History',
   'Canada [ edit ] Clarksville, Alberta Clarksville, Nova Scotia', '["clm_wiki_clarksville_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_clarksville_geography', 'plc_clarksville', 'geography', 'Geography',
   'United States [ edit ] Clarksville, Arkansas Clarksville, California Clarksville, Delaware Clarksville, Florida Clarksville, Idaho Clarksville, Illinois Clarksville, Indiana , in Clark County Clarksville, Hamilton County, Indiana Clarksville, Iowa Clarksville, Maryland Clarksville, Michigan Clarksville, Mississippi Clarksville, Missouri Clarksville Township, Merrick County, Nebraska Clarksville, New Hampshire Clarksville, New Jersey (disambiguation) Clarksville, New York (disambiguation) Clarksville, Ohio , in Clinton County Clarksville, Defiance County, Ohio Clarksville, Perry County, Ohio Clarksville, Oklahoma Clarksville, Pennsylvania Clarksville, Tennessee , the largest city with this name Clarksville, Texas Clarksville, Austin, Texas Clarksville, Virginia', '["clm_wiki_clarksville_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_clarksville_demographics', 'plc_clarksville', 'demographics', 'Demographics',
   'Other places [ edit ] Clarksville, New Zealand Clarksville metropolitan area , in Tennessee and Kentucky', '["clm_wiki_clarksville_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 100. Lamesa (city, TX, pop=9427)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_lamesa', 'place', 'lamesa', 'Lamesa', 'published', 'en', 0,
   'Lamesa is a city in and the county seat of Dawson County, Texas, United States. Its population was 8,674 at the 2020 census, down from 9,952 at the 2000 census. Located south of Lubbock on the Llano Estacado, Lamesa was founded in 1903. Most of its economy is based on cotton farming. The Preston E. Smith prison unit, named for the former governor of Texas, is located just outside Lamesa.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_lamesa', 'city', 32.7376, -101.95099, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_lamesa_in_country', 'plc_lamesa', 'ent_usa', 'located_in', 0.95, 'clm_wiki_lamesa_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_lamesa_overview', 'plc_lamesa', 'overview', 'Overview',
   'Lamesa is a city in and the county seat of Dawson County, Texas, United States. Its population was 8,674 at the 2020 census, down from 9,952 at the 2000 census. Located south of Lubbock on the Llano Estacado, Lamesa was founded in 1903. Most of its economy is based on cotton farming. The Preston E. Smith prison unit, named for the former governor of Texas, is located just outside Lamesa.', '["clm_wiki_lamesa_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_lamesa_primary', 'plc_lamesa', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Lamesa%2C_TX%2C_City_Hall_IMG_1483.JPG/3840px-Lamesa%2C_TX%2C_City_Hall_IMG_1483.JPG?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Lamesa%2C_TX%2C_City_Hall_IMG_1483.JPG/330px-Lamesa%2C_TX%2C_City_Hall_IMG_1483.JPG?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Lamesa',
   'Lamesa', 1, 10, unixepoch());

-- 101. Anaconda (city, MT, pop=9417)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_anaconda', 'place', 'anaconda', 'Anaconda', 'published', 'en', 0,
   'Anacondas or water boas are a group of large boas of the genus Eunectes. They are a semiaquatic group of snakes found in tropical South America. Two to four extant and one extinct species are currently recognized, including one of the largest snakes in the world, E. murinus, the green anaconda.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_anaconda', 'city', 46.12854, -112.94226, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_anaconda_in_country', 'plc_anaconda', 'ent_usa', 'located_in', 0.95, 'clm_wiki_anaconda_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_anaconda_overview', 'plc_anaconda', 'overview', 'Overview',
   'Anacondas or water boas are a group of large boas of the genus Eunectes. They are a semiaquatic group of snakes found in tropical South America. Two to four extant and one extinct species are currently recognized, including one of the largest snakes in the world, E. murinus, the green anaconda.', '["clm_wiki_anaconda_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_anaconda_history', 'plc_anaconda', 'history', 'History',
   'Etymology [ edit ] The generic name Eunectes is derived from Ancient Greek : εὐνήκτης , romanized :&#160; eunēktēs , lit. &#8201; '' good swimmer '' . The South American names anacauchoa and anacaona were suggested in an account by Peter Martyr d''Anghiera . The idea of a South American origin was questioned by Henry Walter Bates who, in his travels in South America, failed to find any similar name in use. The word anaconda is derived from the name of a snake from Ceylon ( Sri Lanka ) that John Ray described in Latin in his Synopsis Methodica Animalium (1693) as serpens indicus bubalinus anacandaia zeylonibus, ides bubalorum aliorumque jumentorum membra conterens . &#91; 1 &#93; Ray used a catalogue of snakes from the Leyden museum supplied by Dr. Tancred Robinson . The description of its habit was based on Andreas Cleyer , who in 1684 described a gigantic snake that crushed large animals by coiling around their bodies and crushing their bones. &#91; 2 &#93; Henry Yule in his 1886 work Hobson-Jobson , notes that the word became more popular due to a piece of fiction published in 1768 in the Scots Magazine by a certain R. Edwin. Edwin described a '' tiger '' being crushed to death by an anaconda, when there were never any tigers in Sri Lanka. &#91; a &#93; Yule and Frank Wall noted that the snake was likely a python and suggested a Tamil origin anai-kondra meaning elephant killer. &#91; 4 &#93; A Sinhalese origin was also suggested by Donald Ferguson who pointed out that the word Henakandaya ( hena lightning/large and kanda stem/trunk) was used in Sri Lanka for the small whip snake ( Ahaetulla pulverulenta ) &#91; 5 &#93; and somehow got misapplied to the python before myths were created. &#91; 6 &#93; &#91; 7 &#93; &#91; 8 &#93; The name commonly used for the anaconda in Brazil is sucuri , sucuriju or sucuriuba . &#91; 9 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscrip', '["clm_wiki_anaconda_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_anaconda_geography', 'plc_anaconda', 'geography', 'Geography',
   'Description [ edit ] 4.5-metre (14&#160;ft) green anaconda skeleton on display at Museum of Osteology with other squamates and reptiles .mw-parser-output .ambox{border:1px solid #a2a9b1;border-left:10px solid #36c;background-color:#fbfbfb;box-sizing:border-box}.mw-parser-output .ambox+.mw-empty-elt+.ambox,.mw-parser-output .ambox+.mw-empty-elt+.mw-empty-elt+.ambox,.mw-parser-output .ambox+.mw-empty-elt+.mw-empty-elt+.mw-empty-elt+.ambox{margin-top:-1px}html body.mediawiki .mw-parser-output .ambox.mbox-small-left{margin:4px 1em 4px 0;overflow:hidden;width:238px;border-collapse:collapse;font-size:88%;line-height:1.25em}.mw-parser-output .ambox-speedy{border-left:10px solid #b32424;background-color:#fee7e6}.mw-parser-output .ambox-delete{border-left:10px solid #b32424}.mw-parser-output .ambox-content{border-left:10px solid #f28500}.mw-parser-output .ambox-style{border-left:10px solid #fc3}.mw-parser-output .ambox-move{border-left:10px solid #9932cc}.mw-parser-output .ambox-protection{border-left:10px solid #a2a9b1}.mw-parser-output .ambox .mbox-text{border:none;padding:0.25em 0.5em;width:100%}.mw-parser-output .ambox .mbox-image{border:none;padding:2px 0 2px 0.5em;text-align:center}.mw-parser-output .ambox .mbox-imageright{border:none;padding:2px 0.5em 2px 0;text-align:center}.mw-parser-output .ambox .mbox-empty-cell{border:none;padding:0;width:1px}.mw-parser-output .ambox .mbox-image-div{width:52px}@media(min-width:720px){.mw-parser-output .ambox{margin:0 10%}}@media print{body.ns-0 .mw-parser-output .ambox{display:none!important}} This section needs expansion . You can help by making an edit request adding missing information . ( December 2025 ) Although the name applies to a group of snakes, it is often used to refer only to one species, in particular, the common or green anaconda ( Eunectes murinus ), &#91; 1 &#93; which is the largest snake in the world by weight, and it is the second longest after the reticulated python . &#91; 2 &#93; Anacondas are native to Sou', '["clm_wiki_anaconda_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_anaconda_demographics', 'plc_anaconda', 'demographics', 'Demographics',
   'Systematics [ edit ] Species Taxon author Common name Geographic range Image E. beniensis (= E. notaeus ?) Dirksen, 2002 &#91; 1 &#93; Bolivian anaconda South America in the Departments of Beni and Pando in Bolivia E. deschauenseei (= E. notaeus ?) Dunn and Conant , 1936 &#91; 2 &#93; Dark-spotted anaconda South America in northern Brazil and coastal French Guiana &#91; 3 &#93; E. murinus ( Linnaeus , 1758 ) &#91; 2 &#93; Green anaconda Peru, Bolivia, French Guiana, Suriname and Brazil &#91; 4 &#93; E. notaeus Cope , 1862 &#91; 2 &#93; Yellow anaconda South America in eastern Bolivia, central-western Brazil, Paraguay and northeastern Argentina &#91; 3 &#93; † E. stirtoni Hoffstetter and Rage, 1977 &#91; 5 &#93; This species is extinct; its fossils have been found in the La Venta fauna ( Miocene ) in Colombia. Its validity, however, is questionable. Rivas et al . &#91; 6 &#93; revised the taxonomy of Eunectes , describing a new species of green anaconda ( Eunectes akayima ) and merging E.&#160;deschauenseei and E.&#160;beniensis with E.&#160;notaeus , which resulted in the recognition of only three species of anaconda. The result of their phylogenetic analysis is represented below: body.skin-vector-2022 .mw-parser-output div.clade,body.skin-minerva .mw-parser-output div.clade{overflow-x:auto;overflow-y:hidden}body.skin-minerva .mw-parser-output div.clade p{font-size:inherit}.mw-parser-output table.clade{border-spacing:0;margin:0;font-size:100%;line-height:100%;border-collapse:separate;width:auto;display:table}.mw-parser-output table.clade table.clade{width:100%;line-height:inherit}.mw-parser-output table.clade td.clade-label{min-width:0.7em;width:0.7em;padding:0.1em 0.25em;vertical-align:bottom;text-align:center;border-left:1px solid;border-bottom:1px solid;white-space:nowrap}.mw-parser-output table.clade td.clade-label::before,.mw-parser-output table.clade td.clade-slabel::before{content:"\2060 "}.mw-parser-output table.clade td.clade-fixed-width{overflow:hidden;tex', '["clm_wiki_anaconda_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_anaconda_primary', 'plc_anaconda', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/b/b2/Eunectes_murinus2.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Eunectes_murinus2.jpg/330px-Eunectes_murinus2.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Anaconda',
   'Anaconda', 1, 10, unixepoch());

-- 102. Granbury (city, TX, pop=9386)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_granbury', 'place', 'granbury', 'Granbury', 'published', 'en', 0,
   'Granbury is a city in and the county seat of Hood County, Texas, United States. As of the 2020 census, the city''s population was 10,958, and it is the principal city of the Granbury micropolitan statistical area. Granbury is named after Confederate General Hiram B. Granbury.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_granbury', 'city', 32.44208, -97.7942, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_granbury_in_country', 'plc_granbury', 'ent_usa', 'located_in', 0.95, 'clm_wiki_granbury_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_granbury_overview', 'plc_granbury', 'overview', 'Overview',
   'Granbury is a city in and the county seat of Hood County, Texas, United States. As of the 2020 census, the city''s population was 10,958, and it is the principal city of the Granbury micropolitan statistical area. Granbury is named after Confederate General Hiram B. Granbury.', '["clm_wiki_granbury_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_granbury_primary', 'plc_granbury', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Granbury_June_2018_35_%28Hood_County_Courthouse%29.jpg/3840px-Granbury_June_2018_35_%28Hood_County_Courthouse%29.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Granbury_June_2018_35_%28Hood_County_Courthouse%29.jpg/330px-Granbury_June_2018_35_%28Hood_County_Courthouse%29.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Granbury',
   'Granbury', 1, 10, unixepoch());

-- 103. Port Townsend (city, WA, pop=9335)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_port-townsend', 'place', 'port-townsend', 'Port Townsend', 'published', 'en', 0,
   'Port Townsend is a city on the Quimper Peninsula in Jefferson County, Washington, United States. The population was 10,148 at the 2020 United States Census. It is the county seat of, and the only incorporated city in, Jefferson County.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_port-townsend', 'city', 48.11742, -122.76071, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_port-townsend_in_country', 'plc_port-townsend', 'ent_usa', 'located_in', 0.95, 'clm_wiki_port-townsend_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_port-townsend_overview', 'plc_port-townsend', 'overview', 'Overview',
   'Port Townsend is a city on the Quimper Peninsula in Jefferson County, Washington, United States. The population was 10,148 at the 2020 United States Census. It is the county seat of, and the only incorporated city in, Jefferson County.', '["clm_wiki_port-townsend_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_port-townsend_overview', 'plc_port-townsend', 'overview', 'History',
   'Port Townsend is a city on the Quimper Peninsula in Jefferson County, Washington, United States. The population was 10,148 at the 2020 United States Census. It is the county seat of, and the only incorporated city in, Jefferson County.', '["clm_wiki_port-townsend_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_port-townsend_overview', 'plc_port-townsend', 'overview', 'Geography',
   'Port Townsend is a city on the Quimper Peninsula in Jefferson County, Washington, United States. The population was 10,148 at the 2020 United States Census. It is the county seat of, and the only incorporated city in, Jefferson County.', '["clm_wiki_port-townsend_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_port-townsend_overview', 'plc_port-townsend', 'overview', 'Demographics',
   'Port Townsend is a city on the Quimper Peninsula in Jefferson County, Washington, United States. The population was 10,148 at the 2020 United States Census. It is the county seat of, and the only incorporated city in, Jefferson County.', '["clm_wiki_port-townsend_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_port-townsend_primary', 'plc_port-townsend', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/d/d3/Pt._Townsend%2C_WA_shoreline_01.jpg', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Pt._Townsend%2C_WA_shoreline_01.jpg/330px-Pt._Townsend%2C_WA_shoreline_01.jpg',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Port Townsend',
   'Port Townsend', 1, 10, unixepoch());

-- 104. Warren (city, PA, pop=9334)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_warren', 'place', 'warren', 'Warren', 'published', 'en', 0,
   'Warren most commonly refers to:Warren (burrow), a network dug by rabbits
Warren (name), a given name and a surname, including lists of persons so named', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_warren', 'city', 41.84395, -79.14504, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_warren_in_country', 'plc_warren', 'ent_usa', 'located_in', 0.95, 'clm_wiki_warren_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_warren_overview', 'plc_warren', 'overview', 'Overview',
   'Warren most commonly refers to:Warren (burrow), a network dug by rabbits
Warren (name), a given name and a surname, including lists of persons so named', '["clm_wiki_warren_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_warren_history', 'plc_warren', 'history', 'History',
   'Places [ edit ] Australia [ edit ] Warren (biogeographic region) Warren, New South Wales , a town Warren Shire , a local government area in NSW which includes the town Warren National Park , Western Australia Barbados [ edit ] Warrens, Barbados Canada [ edit ] Warren, Manitoba Warren, Ontario United Kingdom [ edit ] Warren, Pembrokeshire Warren, Cheshire The Warren, Bracknell Forest , a suburb of Bracknell in Berkshire The Warren (Yeading) , stadium in Hayes, Hillingdon, Greater London The Warren Hayes, Bromley , a former mansion now sports club used by the Metropolitan Police The Warren, Kent, part of the East Cliff and Warren Country Park The Warren, Woolwich , Britain''s principal repository and manufactory of arms and ammunition, renamed the Royal Arsenal in 1805 United States [ edit ] Warren, Arizona Warren, Arkansas Warren, Connecticut Warren, Idaho Warren, Illinois Warren, Indiana Warren, Kentucky Warren, Maine Warren, Massachusetts Warren (CDP), Massachusetts Warren, Michigan , a suburb of Detroit and the largest US city named Warren Warren, Minnesota Warren, Missouri Warren, Montana Warren, New Hampshire Warren Township, New Jersey Warren, New York Warren (hamlet), New York Warren, Ohio Warren, Oregon Warren, Pennsylvania Warren, Rhode Island Warren City, Texas Warren, Fannin County, Texas Warren, Tyler County, Texas Warren, Utah Warren, Vermont Warren''s Gore, Vermont Warren, Virginia Warren, St. Croix County, Wisconsin Warren, Waushara County, Wisconsin Warrens, Wisconsin Warren County (disambiguation) Warren Run , a stream in Ohio Warren Township (disambiguation)', '["clm_wiki_warren_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_warren_geography', 'plc_warren', 'geography', 'Geography',
   'Australia [ edit ] Warren (biogeographic region) Warren, New South Wales , a town Warren Shire , a local government area in NSW which includes the town Warren National Park , Western Australia', '["clm_wiki_warren_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_warren_demographics', 'plc_warren', 'demographics', 'Demographics',
   'Barbados [ edit ] Warrens, Barbados', '["clm_wiki_warren_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 105. Monmouth (city, IL, pop=9291)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_monmouth', 'place', 'monmouth', 'Monmouth', 'published', 'en', 0,
   'Monmouth is a market town and community in Monmouthshire, Wales, situated on where the River Monnow joins the River Wye, two miles from the Wales–England border. The population in the 2011 census was 10,508, rising from 8,877 in 2001. Monmouth was the county town of historic Monmouthshire, although Abergavenny is the largest settlement and Monmouthshire County Council has its main offices at Rhadyr, just outside Usk. Monmouth is in the UK Parliament constituency of Monmouthshire and the Senedd constituency of Monmouth.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_monmouth', 'city', 40.91143, -90.64736, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_monmouth_in_country', 'plc_monmouth', 'ent_usa', 'located_in', 0.95, 'clm_wiki_monmouth_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_monmouth_overview', 'plc_monmouth', 'overview', 'Overview',
   'Monmouth is a market town and community in Monmouthshire, Wales, situated on where the River Monnow joins the River Wye, two miles from the Wales–England border. The population in the 2011 census was 10,508, rising from 8,877 in 2001. Monmouth was the county town of historic Monmouthshire, although Abergavenny is the largest settlement and Monmouthshire County Council has its main offices at Rhadyr, just outside Usk. Monmouth is in the UK Parliament constituency of Monmouthshire and the Senedd constituency of Monmouth.', '["clm_wiki_monmouth_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_monmouth_history', 'plc_monmouth', 'history', 'History',
   'Toponymy [ edit ] The name Monmouth is an English contraction of ''Monnow-mouth''. The Welsh name for the river, Mynwy , which may originally have meant "fast-flowing", was anglicised as Monnow . The town was originally known in Welsh as Abermynwy ("mouth of the Monnow"), replaced by Trefynwy ("Monnow town" – the initial m of Mynwy mutating in Welsh to f , pronounced /v/) by the 1600s. &#91; 1 &#93; ^ Hywel Wyn Owen, The Place-Names of Wales , 2000, University of Wales Press, .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-ws-icon a{background-size:contain;padding:0 1em 0 0}.mw-parser-output .cs1-code{color:inherit;background:inherit;border:none;padding:inherit}.mw-parser-output .cs1-hidden-error{display:none;color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-visible-error{color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-maint{display:none;color:#085;margin-left:0.3em}.mw-parser-output .cs1-kern-left{padding-left:0.2em}.mw-parser-output .cs1-kern-right{padding-right:0.2em}.mw-parser-output .citation .mw-selflink{font-weight:inherit}@media screen{.mw-parser-output .cs1-format{font-size:95%}html.skin-theme-clientpref-night .mw-parser-output .cs1-maint{color:#18911f}}@media screen and (prefers-color-scheme:d', '["clm_wiki_monmouth_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_monmouth_geography', 'plc_monmouth', 'geography', 'Geography',
   'History [ edit ] Excavations undertaken by the Monmouth Archaeological Society on sites along Monnow Street have uncovered details of the early history of the town. The Council for British Archaeology has designated Monmouth as one of the top ten towns in Britain for archaeology. &#91; 1 &#93; Prehistoric [ edit ] Evidence of a Bronze Age boat building community, including three 100-foot-long (30-metre) channels adjoining the site of a now-vanished lake, was discovered in September 2013, during archaeological investigations by the Monmouth Archaeological Society of the Parc Glyndwr housing development site, immediately north-west of the town. &#91; 2 &#93; The excavations later revealed the remains of a Neolithic dwelling. &#91; 3 &#93; The dwelling was constructed on stilts on a human-made island away from the lake shore in water up to 10&#160;ft (3&#160;m) deep. &#91; 3 &#93; &#91; 4 &#93; Oak timbers had been "skillfully" cut with stone or flint axes to form stilts, of posts and poles, which "probably" rested on three parallel fully-grown tree ''sleeper beams'', up to 3&#160;feet 3&#160;inches (1&#160;m) wide, laid horizontally on the lakebed. &#91; 3 &#93; &#91; 4 &#93; Timbers from the structure were radiocarbon dated to 4867&#160; years before present (BP) . &#91; 5 &#93; Roman times [ edit ] The first recorded settlement at Monmouth was the small Roman fort of Blestium , one of a network of military bases established on the frontiers of the Roman occupation. This was connected by road to the larger Roman towns at Glevum ( Gloucester ) and Isca Augusta ( Caerleon ). Archaeologists have found Roman pottery and coins within the modern town centre. During the later Roman period, between the 2nd and late 4th centuries, it appears to have been a centre for iron working , using the local iron ores and charcoal also worked at nearby Gobannium ( Abergavenny ) and Ariconium (near Ross-on-Wye ). &#91; 6 &#93; &#91; 7 &#93; &#91; 8 &#93; The Middle Ages [ edit ] Monmouth C', '["clm_wiki_monmouth_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_monmouth_demographics', 'plc_monmouth', 'demographics', 'Demographics',
   'Prehistoric [ edit ] Evidence of a Bronze Age boat building community, including three 100-foot-long (30-metre) channels adjoining the site of a now-vanished lake, was discovered in September 2013, during archaeological investigations by the Monmouth Archaeological Society of the Parc Glyndwr housing development site, immediately north-west of the town. &#91; 1 &#93; The excavations later revealed the remains of a Neolithic dwelling. &#91; 2 &#93; The dwelling was constructed on stilts on a human-made island away from the lake shore in water up to 10&#160;ft (3&#160;m) deep. &#91; 2 &#93; &#91; 3 &#93; Oak timbers had been "skillfully" cut with stone or flint axes to form stilts, of posts and poles, which "probably" rested on three parallel fully-grown tree ''sleeper beams'', up to 3&#160;feet 3&#160;inches (1&#160;m) wide, laid horizontally on the lakebed. &#91; 2 &#93; &#91; 3 &#93; Timbers from the structure were radiocarbon dated to 4867&#160; years before present (BP) . &#91; 4 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,bo', '["clm_wiki_monmouth_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_monmouth_primary', 'plc_monmouth', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/b/ba/Monmouth_-_Monnow_Bridge.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Monmouth_-_Monnow_Bridge.jpg/330px-Monmouth_-_Monnow_Bridge.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Monmouth',
   'Monmouth', 1, 10, unixepoch());

-- 106. Bay Saint Louis (city, MS, pop=9260)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_bay-saint-louis', 'place', 'bay-saint-louis', 'Bay Saint Louis', 'published', 'en', 0,
   'Bay St. Louis is a city in and the county seat of Hancock County, Mississippi, in the United States. Located on the Gulf Coast on the west side of the Bay of St. Louis, it is part of the Gulfport-Biloxi metropolitan area. The population was 9,284 at the 2020 census, up from 9,260 at the 2010 census.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_bay-saint-louis', 'city', 30.30881, -89.33005, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_bay-saint-louis_in_country', 'plc_bay-saint-louis', 'ent_usa', 'located_in', 0.95, 'clm_wiki_bay-saint-louis_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bay-saint-louis_overview', 'plc_bay-saint-louis', 'overview', 'Overview',
   'Bay St. Louis is a city in and the county seat of Hancock County, Mississippi, in the United States. Located on the Gulf Coast on the west side of the Bay of St. Louis, it is part of the Gulfport-Biloxi metropolitan area. The population was 9,284 at the 2020 census, up from 9,260 at the 2010 census.', '["clm_wiki_bay-saint-louis_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bay-saint-louis_overview', 'plc_bay-saint-louis', 'overview', 'History',
   'Bay St. Louis is a city in and the county seat of Hancock County, Mississippi, in the United States. Located on the Gulf Coast on the west side of the Bay of St. Louis, it is part of the Gulfport-Biloxi metropolitan area. The population was 9,284 at the 2020 census, up from 9,260 at the 2010 census.', '["clm_wiki_bay-saint-louis_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bay-saint-louis_overview', 'plc_bay-saint-louis', 'overview', 'Geography',
   'Bay St. Louis is a city in and the county seat of Hancock County, Mississippi, in the United States. Located on the Gulf Coast on the west side of the Bay of St. Louis, it is part of the Gulfport-Biloxi metropolitan area. The population was 9,284 at the 2020 census, up from 9,260 at the 2010 census.', '["clm_wiki_bay-saint-louis_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bay-saint-louis_overview', 'plc_bay-saint-louis', 'overview', 'Demographics',
   'Bay St. Louis is a city in and the county seat of Hancock County, Mississippi, in the United States. Located on the Gulf Coast on the west side of the Bay of St. Louis, it is part of the Gulfport-Biloxi metropolitan area. The population was 9,284 at the 2020 census, up from 9,260 at the 2010 census.', '["clm_wiki_bay-saint-louis_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_bay-saint-louis_primary', 'plc_bay-saint-louis', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/6/67/The_Bay_St._Louis_bridge_from_above.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/The_Bay_St._Louis_bridge_from_above.jpg/330px-The_Bay_St._Louis_bridge_from_above.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Bay Saint Louis',
   'Bay Saint Louis', 1, 10, unixepoch());

-- 107. Perryton (city, TX, pop=9252)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_perryton', 'place', 'perryton', 'Perryton', 'published', 'en', 0,
   'Perryton is a city in and the county seat of Ochiltree County, Texas, United States. As of the 2020 census, the population of the city was 8,492. It is located a few miles south of the Texas / Oklahoma state line.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_perryton', 'city', 36.40003, -100.80265, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_perryton_in_country', 'plc_perryton', 'ent_usa', 'located_in', 0.95, 'clm_wiki_perryton_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_perryton_overview', 'plc_perryton', 'overview', 'Overview',
   'Perryton is a city in and the county seat of Ochiltree County, Texas, United States. As of the 2020 census, the population of the city was 8,492. It is located a few miles south of the Texas / Oklahoma state line.', '["clm_wiki_perryton_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_perryton_primary', 'plc_perryton', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Perryton%2C_TX%2C_welcome_sign_IMG_6047.JPG/3840px-Perryton%2C_TX%2C_welcome_sign_IMG_6047.JPG?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Perryton%2C_TX%2C_welcome_sign_IMG_6047.JPG/330px-Perryton%2C_TX%2C_welcome_sign_IMG_6047.JPG?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Perryton',
   'Perryton', 1, 10, unixepoch());

-- 108. Waseca (city, MN, pop=9241)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_waseca', 'place', 'waseca', 'Waseca', 'published', 'en', 0,
   'Waseca may refer to:Waseca County, Minnesota, United States
Waseca, Minnesota, a city and the county seat
Federal Correctional Institution, Waseca, a low-security women''s prison
Waseca Municipal Airport
Waseca, Saskatchewan, Canada, a village', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_waseca', 'city', 44.07774, -93.50744, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_waseca_in_country', 'plc_waseca', 'ent_usa', 'located_in', 0.95, 'clm_wiki_waseca_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_waseca_overview', 'plc_waseca', 'overview', 'Overview',
   'Waseca may refer to:Waseca County, Minnesota, United States
Waseca, Minnesota, a city and the county seat
Federal Correctional Institution, Waseca, a low-security women''s prison
Waseca Municipal Airport
Waseca, Saskatchewan, Canada, a village', '["clm_wiki_waseca_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());


-- 109. Grants (city, NM, pop=9239)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_grants', 'place', 'grants', 'Grants', 'published', 'en', 0,
   'Grant or Grants may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_grants', 'city', 35.1476, -107.85261, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_grants_in_country', 'plc_grants', 'ent_usa', 'located_in', 0.95, 'clm_wiki_grants_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_grants_overview', 'plc_grants', 'overview', 'Overview',
   'Grant or Grants may refer to:', '["clm_wiki_grants_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());


-- 110. Merrill (city, WI, pop=9233)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_merrill', 'place', 'merrill', 'Merrill', 'published', 'en', 0,
   'Merrill may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_merrill', 'city', 45.18052, -89.68346, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_merrill_in_country', 'plc_merrill', 'ent_usa', 'located_in', 0.95, 'clm_wiki_merrill_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_merrill_overview', 'plc_merrill', 'overview', 'Overview',
   'Merrill may refer to:', '["clm_wiki_merrill_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_merrill_history', 'plc_merrill', 'history', 'History',
   'Places in the United States [ edit ] Merrill Field , Anchorage, Alaska Merrill, Iowa Merrill, Maine Merrill, Michigan Merrill, Mississippi , an unincorporated community near Lucedale in George County Merrill, Oregon Merrill, Wisconsin Merrill (town), Wisconsin Merrill Township, Michigan Merrill Township, North Dakota Merrill College at the University of California, Santa Cruz', '["clm_wiki_merrill_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_merrill_geography', 'plc_merrill', 'geography', 'Geography',
   'People [ edit ] Merrill (given name) Merrill (surname)', '["clm_wiki_merrill_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_merrill_demographics', 'plc_merrill', 'demographics', 'Demographics',
   'Other uses [ edit ] Merrill (company) , a division of Bank of America Skidmore, Owings and Merrill , architectural firm USS Merrill (DD-976) Nine men''s morris , a strategy board game also called Merrills Merrill (crater) Merrill, a companion character in Dragon Age II', '["clm_wiki_merrill_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 111. Rockingham (city, NC, pop=9220)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_rockingham', 'place', 'rockingham', 'Rockingham', 'published', 'en', 0,
   'Rockingham may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_rockingham', 'city', 34.93932, -79.77395, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_rockingham_in_country', 'plc_rockingham', 'ent_usa', 'located_in', 0.95, 'clm_wiki_rockingham_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rockingham_overview', 'plc_rockingham', 'overview', 'Overview',
   'Rockingham may refer to:', '["clm_wiki_rockingham_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rockingham_history', 'plc_rockingham', 'history', 'History',
   'People [ edit ] Marquess of Rockingham , a British title of nobility whose holders included: Charles Watson-Wentworth, 2nd Marquess of Rockingham (1730–1782), Prime Minister of Great Britain', '["clm_wiki_rockingham_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rockingham_geography', 'plc_rockingham', 'geography', 'Geography',
   'Places [ edit ] Australia [ edit ] City of Rockingham Rockingham, Western Australia East Rockingham, Western Australia Electoral district of Rockingham , a State Electoral District in Western Australia Rockingham Bay , Queensland Canada [ edit ] Rockingham, Nova Scotia École Rockingham School , an elementary school in Halifax, Nova Scotia Rockingham, community in Brudenell, Lyndoch and Raglan Township, Ontario Ireland [ edit ] Rockingham Estate , a large country house and estate in Boyle, County Roscommon United Kingdom [ edit ] Rockingham, Northamptonshire , England Rockingham Castle Rockingham Forest Rockingham Motor Speedway United States [ edit ] Rockingham, Georgia Rockingham, Missouri Rockingham, New Jersey , an unincorporated community Rockingham (house) , an historic house in Rockingham, NJ Rockingham, North Carolina , in Richmond County Rockingham Speedway ("The Rock"), a NASCAR track located outside of Rockingham, NC Rockingham, Vermont Rockingham Avenue, Brentwood, Los Angeles, CA; the location of O.J. Simpson ''s former estate Rockingham County, New Hampshire Rockingham Park , horse racing and former motor racing track in Salem, New Hampshire Rockingham County, North Carolina Rockingham County, Virginia Rockingham Township, Iowa', '["clm_wiki_rockingham_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rockingham_demographics', 'plc_rockingham', 'demographics', 'Demographics',
   'Australia [ edit ] City of Rockingham Rockingham, Western Australia East Rockingham, Western Australia Electoral district of Rockingham , a State Electoral District in Western Australia Rockingham Bay , Queensland', '["clm_wiki_rockingham_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 112. Laurens (city, SC, pop=9166)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_laurens', 'place', 'laurens', 'Laurens', 'published', 'en', 0,
   'Laurens may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_laurens', 'city', 34.49901, -82.01426, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_laurens_in_country', 'plc_laurens', 'ent_usa', 'located_in', 0.95, 'clm_wiki_laurens_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_laurens_overview', 'plc_laurens', 'overview', 'Overview',
   'Laurens may refer to:', '["clm_wiki_laurens_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_laurens_history', 'plc_laurens', 'history', 'History',
   'Places [ edit ] United States [ edit ] Laurens County, Georgia Laurens, Iowa , a city Laurens (town), New York Laurens (village), New York Laurens, South Carolina , a city Laurens County, South Carolina Fort Laurens , an American Revolutionary War fort in what is now Ohio Mount Laurens , a mountain in Alaska Elsewhere [ edit ] Laurens, Hérault , commune in the Hérault département, southern France Laurens Peninsula , Heard Island, Indian Ocean Cape Laurens , on the Laurens Peninsula', '["clm_wiki_laurens_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_laurens_geography', 'plc_laurens', 'geography', 'Geography',
   'United States [ edit ] Laurens County, Georgia Laurens, Iowa , a city Laurens (town), New York Laurens (village), New York Laurens, South Carolina , a city Laurens County, South Carolina Fort Laurens , an American Revolutionary War fort in what is now Ohio Mount Laurens , a mountain in Alaska', '["clm_wiki_laurens_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_laurens_demographics', 'plc_laurens', 'demographics', 'Demographics',
   'Elsewhere [ edit ] Laurens, Hérault , commune in the Hérault département, southern France Laurens Peninsula , Heard Island, Indian Ocean Cape Laurens , on the Laurens Peninsula', '["clm_wiki_laurens_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 113. Versailles (city, KY, pop=9146)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_versailles', 'place', 'versailles', 'Versailles', 'published', 'en', 0,
   'The Palace of Versailles is a château and historic monument in Versailles in the Yvelines department of France, southwest of Paris. It served as the principal residence of the French kings Louis XIV, Louis XV, and Louis XVI.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_versailles', 'city', 38.05258, -84.72995, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_versailles_in_country', 'plc_versailles', 'ent_usa', 'located_in', 0.95, 'clm_wiki_versailles_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_versailles_overview', 'plc_versailles', 'overview', 'Overview',
   'The Palace of Versailles is a château and historic monument in Versailles in the Yvelines department of France, southwest of Paris. It served as the principal residence of the French kings Louis XIV, Louis XV, and Louis XVI.', '["clm_wiki_versailles_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_versailles_primary', 'plc_versailles', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Vue_a%C3%A9rienne_du_domaine_de_Versailles_par_ToucanWings_-_Creative_Commons_By_Sa_3.0_-_081_%28cropped%29.jpg/3840px-Vue_a%C3%A9rienne_du_domaine_de_Versailles_par_ToucanWings_-_Creative_Commons_By_Sa_3.0_-_081_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Vue_a%C3%A9rienne_du_domaine_de_Versailles_par_ToucanWings_-_Creative_Commons_By_Sa_3.0_-_081_%28cropped%29.jpg/330px-Vue_a%C3%A9rienne_du_domaine_de_Versailles_par_ToucanWings_-_Creative_Commons_By_Sa_3.0_-_081_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Versailles',
   'Versailles', 1, 10, unixepoch());

-- 114. Shawano (city, WI, pop=9128)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_shawano', 'place', 'shawano', 'Shawano', 'published', 'en', 0,
   'Shawano is a name derived from a modified Menominee word "Sāwanoh", which means south.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_shawano', 'city', 44.78221, -88.60899, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_shawano_in_country', 'plc_shawano', 'ent_usa', 'located_in', 0.95, 'clm_wiki_shawano_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_shawano_overview', 'plc_shawano', 'overview', 'Overview',
   'Shawano is a name derived from a modified Menominee word "Sāwanoh", which means south.', '["clm_wiki_shawano_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_shawano_history', 'plc_shawano', 'history', 'History',
   'Places [ edit ] United States Shawano County, Wisconsin Shawano, Wisconsin , city and county seat of Shawano County', '["clm_wiki_shawano_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());


-- 115. La Plata (city, MD, pop=9125)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_la-plata', 'place', 'la-plata', 'La Plata', 'published', 'en', 0,
   'La Plata is the capital city of Buenos Aires province, Argentina. According to the 2022 census, the Partido has a population of 772,618 and its metropolitan area, the Greater La Plata, has 938,287 inhabitants. It is located 9 kilometers inland from the southern shore of the Río de la Plata estuary.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_la-plata', 'city', 38.52929, -76.97525, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_la-plata_in_country', 'plc_la-plata', 'ent_usa', 'located_in', 0.95, 'clm_wiki_la-plata_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_la-plata_overview', 'plc_la-plata', 'overview', 'Overview',
   'La Plata is the capital city of Buenos Aires province, Argentina. According to the 2022 census, the Partido has a population of 772,618 and its metropolitan area, the Greater La Plata, has 938,287 inhabitants. It is located 9 kilometers inland from the southern shore of the Río de la Plata estuary.', '["clm_wiki_la-plata_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_la-plata_history', 'plc_la-plata', 'history', 'History',
   'Capital city of Buenos Aires Province, Argentina .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} For other places with the same name, see La Plata (disambiguation) . Not to be confused with Mar del Plata . .mw-parser-output .ambox{border:1px solid #a2a9b1;border-left:10px solid #36c;background-color:#fbfbfb;box-sizing:border-box}.mw-parser-output .ambox+.mw-empty-elt+.ambox,.mw-parser-output .ambox+.mw-empty-elt+.mw-empty-elt+.ambox,.mw-parser-output .ambox+.mw-empty-elt+.mw-empty-elt+.mw-empty-elt+.ambox{margin-top:-1px}html body.mediawiki .mw-parser-output .ambox.mbox-small-left{margin:4px 1em 4px 0;overflow:hidden;width:238px;border-collapse:collapse;font-size:88%;line-height:1.25em}.mw-parser-output .ambox-speedy{border-left:10px solid #b32424;background-color:#fee7e6}.mw-parser-output .ambox-delete{border-left:10px solid #b32424}.mw-parser-output .ambox-content{border-left:10px solid #f28500}.mw-parser-output .ambox-style{border-left:10px solid #fc3}.mw-parser-output .ambox-move{border-left:10px solid #9932cc}.mw-parser-output .ambox-protection{border-left:10px solid #a2a9b1}.mw-parser-output .ambox .mbox-text{border:none;padding:0.25em 0.5em;width:100%}.mw-parser-output .ambox .mbox-image{border:none;padding:2px 0 2px 0.5em;text-align:center}.mw-parser-output .ambox .mbox-imageright{border:none;padding:2px 0.5em 2px 0;text-align:center}.mw-parser-output .ambox .mbox-empty-cell{border:none;padding:0;width:1px}.mw-parser-output .ambox .mbox-image-div{width:52px}@media(min-width:720px){.mw-parser-output .ambox{margin:0 10%}}@media print{body.ns-0 .mw-parser-output .ambox{display:none!important}} This article may require copy editing for spelling, grammar, style, cohesion, or tone . You can assist by editing it . ( July 2026 ) ( Learn how and when to remove this message ) City in Buenos Aires, Argentina @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar', '["clm_wiki_la-plata_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_la-plata_geography', 'plc_la-plata', 'geography', 'Geography',
   'Important landmarks [ edit ] Cathedral of La Plata The neo-Gothic cathedral of La Plata is the largest church in Argentina. It is located on the central park, Plaza Moreno , and is the 58th tallest church in the world. The Teatro Argentino de La Plata is one of the most important opera houses in Argentina, second to the Teatro Colón in Buenos Aires. The construction was funded by the first inhabitants of La Plata, but as maintenance was very expensive it was later donated to the Province of Buenos Aires. On 18 October 1977, the building was almost completely destroyed by a fire. This has been noted as one of the largest losses to La Plata''s historical heritage. It was later replaced by a new building, which houses the theatre''s orchestra, choir and ballet, boasting several halls. Panoramic view of La Plata. The Curutchet House is one of the two buildings by Le Corbusier built in the Americas. The University of La Plata was founded in 1897 and nationalized in 1905. It is well known for its observatory and natural history museum . Ernesto Sabato graduated in physics at this university; he went on to teach at the Sorbonne and the MIT before becoming a famed novelist. Doctor René Favaloro was another famous alumnus. During its early years, the university attracted a number of intellectuals from the Spanish-speaking world, such as Dominican Pedro Henríquez Ureña . San Ponciano church &#160;&#91; es &#93; is on the corner of 48th and 5th streets. It was the first chapel in La Plata. Pedro Benoit drew up the plans for the church. It was inaugurated on 19 November 1883, the first anniversary of the foundation of the city. Its neo-Gothic style has been well-maintained, and the inner paintings restored. Then-governor Rocha called it "San Ponciano", in memory of his son Ponciano and in honor of Pope Pontian . Inside the church is the "Virgen de Luján" niche, moved there in 1904.', '["clm_wiki_la-plata_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_la-plata_demographics', 'plc_la-plata', 'demographics', 'Demographics',
   'La Plata in the 20th century [ edit ] Under Alvear ''s administration (1922–1928), Enrique Mosconi , the president of the state oil company Yacimientos Petrolíferos Fiscales , created the La Plata distillery , at the time the tenth largest in the world. &#91; 1 &#93; Railway station, La Plata. On 10 December 1945, in the Parish church of St. Francis of Assisi in this city, Juan Domingo Perón and Eva Duarte were married. &#91; 2 &#93; In 1952, the city was renamed Ciudad Eva Perón ; its original name was restored in 1955. In March 1976, the Argentine military seized power following a coup d''état , which involved the disappearance of a number of students from La Plata. The military junta had implemented the National Reorganization Process , a set of policies used by the regime to destroy left-wing guerrilla forces and oppress resistance to its rule. The process included kidnappings, torture and murder. Meanwhile, the Montoneros , a leftist guerilla group, responded violently to the junta and its actions as they enlisted other Argentines to join their campaign against the regime. Those enlisted included young, left-wing, politically active students from the organization named the Unión de Estudiantes Secundarios (UES) (Union of High School Students) of La Plata. UES was committed to achieving school reforms and other political reforms through demonstrations and protests that irked the ruling regime. Many of these students were kidnapped and killed (many remain desaparecidos ) as part of the state''s terrorism during the dictatorship . In October 1998, UNESCO approved the city''s bid for recognition as a World Heritage site. Approval is pending due to objections about maintaining architectural and landscape features during recent decades, which in the opinion of some specialists, has damaged the original design and contextual aesthetics. &#91; 3 &#93; &#91; 4 &#93; &#91; 5 &#93; &#91; 6 &#93; ^ Felipe Pigna , Los Mitos de la historia argentina, 3 , ed. Planeta Historia y S', '["clm_wiki_la-plata_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_la-plata_overview', 'plc_la-plata', 'overview', 'History',
   'La Plata is the capital city of Buenos Aires province, Argentina. According to the 2022 census, the Partido has a population of 772,618 and its metropolitan area, the Greater La Plata, has 938,287 inhabitants. It is located 9 kilometers inland from the southern shore of the Río de la Plata estuary.', '["clm_wiki_la-plata_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_la-plata_overview', 'plc_la-plata', 'overview', 'Geography',
   'La Plata is the capital city of Buenos Aires province, Argentina. According to the 2022 census, the Partido has a population of 772,618 and its metropolitan area, the Greater La Plata, has 938,287 inhabitants. It is located 9 kilometers inland from the southern shore of the Río de la Plata estuary.', '["clm_wiki_la-plata_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_la-plata_overview', 'plc_la-plata', 'overview', 'Demographics',
   'La Plata is the capital city of Buenos Aires province, Argentina. According to the 2022 census, the Partido has a population of 772,618 and its metropolitan area, the Greater La Plata, has 938,287 inhabitants. It is located 9 kilometers inland from the southern shore of the Río de la Plata estuary.', '["clm_wiki_la-plata_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_la-plata_primary', 'plc_la-plata', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Palacio_Municipal_de_La_Plata_20..JPG/3840px-Palacio_Municipal_de_La_Plata_20..JPG?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Palacio_Municipal_de_La_Plata_20..JPG/330px-Palacio_Municipal_de_La_Plata_20..JPG?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'La Plata',
   'La Plata', 1, 10, unixepoch());

-- 116. Hondo (city, TX, pop=9119)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_hondo', 'place', 'hondo', 'Hondo', 'published', 'en', 0,
   'Hondo may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_hondo', 'city', 29.34746, -99.14142, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_hondo_in_country', 'plc_hondo', 'ent_usa', 'located_in', 0.95, 'clm_wiki_hondo_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_hondo_overview', 'plc_hondo', 'overview', 'Overview',
   'Hondo may refer to:', '["clm_wiki_hondo_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_hondo_history', 'plc_hondo', 'history', 'History',
   'Places [ edit ] Rio Hondo (disambiguation) , the name of several locations, derived from the Spanish word for "deep" Canada [ edit ] Hondo, Alberta , an unincorporated community Japan [ edit ] Hondo, Kumamoto , a former city, merged into the new city of Amakusa in 2006 Honshū , Japan''s main island, historically called Hondo ( 本土 , main island ) United States [ edit ] Hondo, New Mexico , an unincorporated community Hondo, Texas , a city Hondo Creek , Texas', '["clm_wiki_hondo_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_hondo_geography', 'plc_hondo', 'geography', 'Geography',
   'Canada [ edit ] Hondo, Alberta , an unincorporated community', '["clm_wiki_hondo_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_hondo_demographics', 'plc_hondo', 'demographics', 'Demographics',
   'Japan [ edit ] Hondo, Kumamoto , a former city, merged into the new city of Amakusa in 2006 Honshū , Japan''s main island, historically called Hondo ( 本土 , main island )', '["clm_wiki_hondo_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 117. Bay Minette (city, AL, pop=9118)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_bay-minette', 'place', 'bay-minette', 'Bay Minette', 'published', 'en', 0,
   'Bay Minette is a city in and the county seat of Baldwin County, Alabama, United States. As of the 2020 census, the population of the city was 8,107.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_bay-minette', 'city', 30.88296, -87.77305, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_bay-minette_in_country', 'plc_bay-minette', 'ent_usa', 'located_in', 0.95, 'clm_wiki_bay-minette_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bay-minette_overview', 'plc_bay-minette', 'overview', 'Overview',
   'Bay Minette is a city in and the county seat of Baldwin County, Alabama, United States. As of the 2020 census, the population of the city was 8,107.', '["clm_wiki_bay-minette_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bay-minette_overview', 'plc_bay-minette', 'overview', 'History',
   'Bay Minette is a city in and the county seat of Baldwin County, Alabama, United States. As of the 2020 census, the population of the city was 8,107.', '["clm_wiki_bay-minette_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bay-minette_overview', 'plc_bay-minette', 'overview', 'Geography',
   'Bay Minette is a city in and the county seat of Baldwin County, Alabama, United States. As of the 2020 census, the population of the city was 8,107.', '["clm_wiki_bay-minette_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_bay-minette_overview', 'plc_bay-minette', 'overview', 'Demographics',
   'Bay Minette is a city in and the county seat of Baldwin County, Alabama, United States. As of the 2020 census, the population of the city was 8,107.', '["clm_wiki_bay-minette_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_bay-minette_primary', 'plc_bay-minette', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/2/20/Rhodes_Store_Bay_Minette_June_2013_1.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Rhodes_Store_Bay_Minette_June_2013_1.jpg/330px-Rhodes_Store_Bay_Minette_June_2013_1.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Bay Minette',
   'Bay Minette', 1, 10, unixepoch());

-- 118. Marianna (city, FL, pop=9100)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_marianna', 'place', 'marianna', 'Marianna', 'published', 'en', 0,
   'Marianna may refer to:Marianna, Arkansas, USA
Marianna, Florida, USA
Marianna, Pennsylvania, USA
An English spelling for Mariana, Minas Gerais, Brazil
602 Marianna, an asteroid, number 602 in the minor planet catalog
Marianna, with a list of people of this name
"Marianna" (song), a 1962 song by Johnny Mathis', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_marianna', 'city', 30.77436, -85.22687, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_marianna_in_country', 'plc_marianna', 'ent_usa', 'located_in', 0.95, 'clm_wiki_marianna_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_marianna_overview', 'plc_marianna', 'overview', 'Overview',
   'Marianna may refer to:Marianna, Arkansas, USA
Marianna, Florida, USA
Marianna, Pennsylvania, USA
An English spelling for Mariana, Minas Gerais, Brazil
602 Marianna, an asteroid, number 602 in the minor planet catalog
Marianna, with a list of people of this name
"Marianna" (song), a 1962 song by Johnny Mathis', '["clm_wiki_marianna_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());


-- 119. Andalusia (city, AL, pop=9063)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_andalusia', 'place', 'andalusia', 'Andalusia', 'published', 'en', 0,
   'Andalusia is the southernmost autonomous community in Peninsular Spain, located in the south of the Iberian Peninsula, in southwestern Europe. It is the most populous and the second-largest autonomous community in the country. It is officially recognized as a historical nationality and a national reality. The territory is divided into eight provinces: Almería, Cádiz, Córdoba, Granada, Huelva, Jaén, Málaga, and Seville. Its capital city is Seville, while the seat of its High Court of Justice is the city of Granada.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_andalusia', 'city', 31.30808, -86.48243, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_andalusia_in_country', 'plc_andalusia', 'ent_usa', 'located_in', 0.95, 'clm_wiki_andalusia_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_andalusia_overview', 'plc_andalusia', 'overview', 'Overview',
   'Andalusia is the southernmost autonomous community in Peninsular Spain, located in the south of the Iberian Peninsula, in southwestern Europe. It is the most populous and the second-largest autonomous community in the country. It is officially recognized as a historical nationality and a national reality. The territory is divided into eight provinces: Almería, Cádiz, Córdoba, Granada, Huelva, Jaén, Málaga, and Seville. Its capital city is Seville, while the seat of its High Court of Justice is the city of Granada.', '["clm_wiki_andalusia_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_andalusia_history', 'plc_andalusia', 'history', 'History',
   'Etymology [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Etymology of Andalusia Map of the Iberian Peninsula dated 1770. The Kingdoms of Jaén , Córdoba and Seville are collectively referred to under the name Andalucía , while the Kingdom of Granada appears under its individual name. Its present form is derived from the Arabic name for Muslim Iberia, "Al-Andalus". &#91; 1 &#93; &#91; 2 &#93; &#91; 3 &#93; The etymology of the name "Al-Andalus" is disputed, &#91; 4 &#93; and the extent of Iberian territory encompassed by the name has changed over the centuries. &#91; 5 &#93; Traditionally it has been assumed to be derived from the name of the Vandals . Since the 1980s, a number of proposals have challenged this contention. Halm, in 1989, derived the name from a Gothic term, * landahlauts , &#91; 6 &#93; and in 2002, Bossong suggested its derivation from a pre-Roman substrate. &#91; 4 &#93; The Spanish place name Andalucía (immediate source of the English Andalusia ) was introduced into the Spanish languages in the 13th century under the form el Andalucía . &#91; 7 &#93; The name was adopted to refer to those territories still under Moorish rule, and generally south of Castilla Nueva and Valencia , and corresponding with the former Roman province thitherto called Baetica in Latin sources. This was a Castilianization of Al-Andalusiya , the adjectival form of the Arabic language al-Andalus , the name given by the Arabs to all of the Iberian territories under Muslim rule from 711 to 1492. The etymology of al-Andalus is itself somewhat debated (see al-Andalus ), but in fact it entered the Arabic language before this area came under Moorish rule. Like the Arabic term al-Andalus , in historical contexts the Spanish term Andalucía or the English term Andalusia do not necessarily refer to the exact territory designated by these terms today. Initially, the term referred exclusively to territories under Muslim control. Later, it was applied to some of the last Iberian territories to be regained from the Muslims, though not always to exactly the same ones. &#91; 7 &#93; In the Estoria de España (also known as the Primera Crónica General ) of Alfonso X', '["clm_wiki_andalusia_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_andalusia_geography', 'plc_andalusia', 'geography', 'Geography',
   'Symbols [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main articles: Emblem of Andalusia and Flag of Andalusia Portrait of Blas Infante , executed in azulejos , located on the avenue in Jerez de la Frontera named in his honour The Andalusian emblem shows the figure of Hercules and two lions between the two pillars of Hercules that tradition situates on either side of the Strait of Gibraltar. An inscription below, superimposed on an image of the flag of Andalusia reads Andalucía por sí, para España y la Humanidad ("Andalusia by itself, for Spain and Humanity"). Over the two columns is a semicircular arch in the colours of the flag of Andalusia, with the Latin words Dominator Hercules Fundator (Lord Hercules is the Founder) superimposed. &#91; 1 &#93; The official flag of Andalusia consists of three equal horizontal stripes, coloured green, white, and green respectively; the Andalusian coat of arms is superimposed on the central stripe. &#91; 2 &#93; Its design was overseen by Blas Infante &#91; 3 &#93; and approved in the Assembly of Ronda (a 1918 gathering of Andalusian nationalists at Ronda ). Blas Infante considered these to have been the colours most used in regional symbols throughout the region''s history. According to him, the green came in particular from the standard of the Umayyad Caliphate and represented the call for a gathering of the populace. The white symbolised pardon in the Almohad dynasty , interpreted in European heraldry as parliament or peace. Other writers have justified the colours differently, with some Andalusian nationalists referring to them as the Arbonaida , meaning white-and-green in Mozarabic , a Romance language that was spoken i', '["clm_wiki_andalusia_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_andalusia_demographics', 'plc_andalusia', 'demographics', 'Demographics',
   'Geography [ edit ] The Sevillian historian Antonio Domínguez Ortiz wrote that: .mw-parser-output .templatequote{overflow:hidden;margin:1em 0;padding:0 32px}.mw-parser-output .templatequotecite{line-height:1.5em;text-align:left;margin-top:0}@media(min-width:500px){.mw-parser-output .templatequotecite{padding-left:1.6em}} one must seek the essence of Andalusia in its geographic reality on the one hand, and on the other in the awareness of its inhabitants. From the geographic point of view, the whole of the southern lands is too vast and varied to be embraced as a single unit. In reality there are not two, but three Andalusias: the Sierra Morena , the Valley [of the Guadalquivir ] and the [Cordillera] Penibética &#91; 1 &#93; Location [ edit ] Andalusia has a surface area of 87,597 square kilometres (33,821&#160;sq&#160;mi), 17.3% of the territory of Spain. Andalusia alone is comparable in extent and in the variety of its terrain to any of several of the smaller European countries. To the east is the Mediterranean Sea ; to the west Portugal and the Gulf of Cádiz ( Atlantic Ocean ); to the north the Sierra Morena constitutes the border with the Meseta Central ; to the south, the self-governing &#91; 2 &#93; British overseas territory of Gibraltar and the Strait of Gibraltar separate it from Morocco . Climate [ edit ] Locations of the principal Andalusian climate types &#91; 3 &#93; Andalusian firs, Sierra de las Nieves Andalusia is home to the hottest and driest climates in Spain, with yearly average rainfall around 150 millimetres (5.9&#160;in) in Cabo de Gata , as well as some of the wettest ones, with yearly average rainfall above 2,000 millimetres (79&#160;in) in inland Cádiz . &#91; 4 &#93; In the west, weather systems sweeping in from the Atlantic ensure that it is relatively wet and humid in the winter, with some areas receiving copious amounts. Contrary to what many people think, as a whole, the region enjoys above-average yearly rainfall in the context of Spain', '["clm_wiki_andalusia_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_andalusia_primary', 'plc_andalusia', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Flag_of_Andaluc%C3%ADa.svg/960px-Flag_of_Andaluc%C3%ADa.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Flag_of_Andaluc%C3%ADa.svg/330px-Flag_of_Andaluc%C3%ADa.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Andalusia',
   'Andalusia', 1, 10, unixepoch());

-- 120. Georgetown (city, SC, pop=9062)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_georgetown', 'place', 'georgetown', 'Georgetown', 'published', 'en', 0,
   'Georgetown or George Town may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_georgetown', 'city', 33.37683, -79.2945, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_georgetown_in_country', 'plc_georgetown', 'ent_usa', 'located_in', 0.95, 'clm_wiki_georgetown_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_georgetown_overview', 'plc_georgetown', 'overview', 'Overview',
   'Georgetown or George Town may refer to:', '["clm_wiki_georgetown_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_georgetown_history', 'plc_georgetown', 'history', 'History',
   'Places [ edit ] Africa [ edit ] George, South Africa , formerly known as Georgetown Janjanbureh, Gambia , formerly known as Georgetown Georgetown, Ascension Island , main settlement of the British territory of Ascension Island Asia [ edit ] Georgetown, Prayagraj , India George Town, Chennai , India George Town, Penang , capital city of the Malaysian state of Penang Europe [ edit ] Georgetown, Blaenau Gwent , now part of the town of Tredegar in Wales Georgetown, Dumfries and Galloway , a location in Dumfries and Galloway , Scotland Es Castell in Minorca, Spain, originally called Georgetown North America [ edit ] Canada [ edit ] Georgetown, Alberta Georgetown, Newfoundland and Labrador Georgetown, Ontario Georgetown, Prince Edward Island Caribbean [ edit ] George Town, Bahamas , a village in Exuma District, Bahamas George Town, Belize , a village in Stann Creek District , Belize George Town, Cayman Islands , the capital city on Grand Cayman Georgetown, Saint Vincent and the Grenadines United States [ edit ] Georgetown, Alaska Georgetown, Arkansas Georgetown, California Georgetown, Colorado Georgetown, Connecticut Georgetown, Delaware Georgetown Hundred , an unincorporated subdivision of Sussex County, Delaware Georgetown, Florida Georgetown, Chatham County, Georgia , an unincorporated suburb of Savannah Georgetown, Dunwoody, Georgia , a neighborhood Georgetown, Quitman County, Georgia , an incorporated town and county seat Georgetown, Idaho Georgetown, Illinois Georgetown, Cass County, Indiana Georgetown, Floyd County, Indiana Georgetown, St. Joseph County, Indiana Georgetown, Washington County, Indiana Fairview, Kentucky (Christian Co.), formerly known as Georgetown Georgetown, Kentucky Georgetown, Louisiana Georgetown, Maine Georgetown, Maryland Georgetown (CDP), Maryland Georgetown, Massachusetts Georgetown Township, Michigan Georgetown, Minnesota Georgetown Township, Clay County, Minnesota Georgetown, Mississippi Georgetown, Montana Georgetown, New Jersey Georgetown, New York , a town in Madison County Georgetown, Brooklyn , New York, a neighborhood in New York City Georgetown, Ohio (in Brown County) Georgetown, Fayette County, Ohio Georgetown, Harrison County, Ohio Georgetown, Beaver County, Pennsylvania , a borough Georgetown, Lancaster County, Pennsylvania Georgetown, Luzerne County, Pennsylvania Georgetown, South Carolina Georgetown, Tennessee Georgetown, Texas Georgetown, Virginia Georgetown, Seattle , Washington Georgetown (Washington, D.C.) George', '["clm_wiki_georgetown_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_georgetown_geography', 'plc_georgetown', 'geography', 'Geography',
   'Africa [ edit ] George, South Africa , formerly known as Georgetown Janjanbureh, Gambia , formerly known as Georgetown Georgetown, Ascension Island , main settlement of the British territory of Ascension Island', '["clm_wiki_georgetown_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_georgetown_demographics', 'plc_georgetown', 'demographics', 'Demographics',
   'Asia [ edit ] Georgetown, Prayagraj , India George Town, Chennai , India George Town, Penang , capital city of the Malaysian state of Penang', '["clm_wiki_georgetown_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 121. Charlotte (city, MI, pop=9054)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_charlotte', 'place', 'charlotte', 'Charlotte', 'published', 'en', 0,
   'Charlotte most commonly refers to:Charlotte 
Princess Charlotte (disambiguation)
Queen Charlotte (disambiguation)
Charlotte, North Carolina, United States, a city
Charlotte (cake), a type of dessert', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_charlotte', 'city', 42.56365, -84.83582, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_charlotte_in_country', 'plc_charlotte', 'ent_usa', 'located_in', 0.95, 'clm_wiki_charlotte_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_charlotte_overview', 'plc_charlotte', 'overview', 'Overview',
   'Charlotte most commonly refers to:Charlotte 
Princess Charlotte (disambiguation)
Queen Charlotte (disambiguation)
Charlotte, North Carolina, United States, a city
Charlotte (cake), a type of dessert', '["clm_wiki_charlotte_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_charlotte_history', 'plc_charlotte', 'history', 'History',
   'Arts and entertainment [ edit ] Charlotte ( Charlotte''s Web ) , a barn spider from the 1952 children''s book by E. B. White Film and television [ edit ] Charlotte (1974 film) , a French crime thriller Wakakusa no Charlotte , an anime series from 1977 Charlotte (1981 film) , a Dutch film by Frans Weisz Charlotte (2021 film) , an animated drama film Charlotte (TV series) , an anime television series Music [ edit ] Charlotte (album) , a 1999 album by Charlotte Nilsson Charlotte (American band) , a hard rock band Charlotte (Japanese band) , a pop punk band Charlotte (singer) , British singer-songwriter, composer, arranger, and record producer "Charlotte", a 1969 song by Jimmy McGriff from A Thing to Come By "Charlotte", a 1982 song by Wendy Wu "Charlotte" (Kittie song) (2000) "Charlotte" (Air Traffic song) (2007) "Charlotte", a 2008 song by Booka Shade Other arts and entertainment [ edit ] Charlotte, the statuette awarded for the Women''s Prize for Non-Fiction', '["clm_wiki_charlotte_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_charlotte_geography', 'plc_charlotte', 'geography', 'Geography',
   'Film and television [ edit ] Charlotte (1974 film) , a French crime thriller Wakakusa no Charlotte , an anime series from 1977 Charlotte (1981 film) , a Dutch film by Frans Weisz Charlotte (2021 film) , an animated drama film Charlotte (TV series) , an anime television series', '["clm_wiki_charlotte_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_charlotte_demographics', 'plc_charlotte', 'demographics', 'Demographics',
   'Music [ edit ] Charlotte (album) , a 1999 album by Charlotte Nilsson Charlotte (American band) , a hard rock band Charlotte (Japanese band) , a pop punk band Charlotte (singer) , British singer-songwriter, composer, arranger, and record producer "Charlotte", a 1969 song by Jimmy McGriff from A Thing to Come By "Charlotte", a 1982 song by Wendy Wu "Charlotte" (Kittie song) (2000) "Charlotte" (Air Traffic song) (2007) "Charlotte", a 2008 song by Booka Shade', '["clm_wiki_charlotte_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 122. Rawlins (city, WY, pop=9040)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_rawlins', 'place', 'rawlins', 'Rawlins', 'published', 'en', 0,
   'Rawlins may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_rawlins', 'city', 41.79107, -107.23866, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_rawlins_in_country', 'plc_rawlins', 'ent_usa', 'located_in', 0.95, 'clm_wiki_rawlins_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rawlins_overview', 'plc_rawlins', 'overview', 'Overview',
   'Rawlins may refer to:', '["clm_wiki_rawlins_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rawlins_history', 'plc_rawlins', 'history', 'History',
   'People [ edit ] Rawlins (surname)', '["clm_wiki_rawlins_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rawlins_geography', 'plc_rawlins', 'geography', 'Geography',
   'Places [ edit ] Rawlins, Wyoming Rawlins County, Kansas Rawlins Cross, St. John''s Rawlins Township, Jo Daviess County, Illinois', '["clm_wiki_rawlins_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rawlins_demographics', 'plc_rawlins', 'demographics', 'Demographics',
   'Schools [ edit ] Rawlins Community College', '["clm_wiki_rawlins_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 123. Liberty (city, TX, pop=9039)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_liberty', 'place', 'liberty', 'Liberty', 'published', 'en', 0,
   'Liberty is the state of being free within society from restrictions imposed by authority on one''s way of life, behavior, or political views. The concept of liberty can vary depending on perspective and context. In the constitutional law of the United States, ordered liberty means creating a balanced society where individuals have the freedom to act without unnecessary interference and access to opportunities and resources to pursue their goals, all within a fair legal system.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_liberty', 'city', 30.05799, -94.79548, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_liberty_in_country', 'plc_liberty', 'ent_usa', 'located_in', 0.95, 'clm_wiki_liberty_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_liberty_overview', 'plc_liberty', 'overview', 'Overview',
   'Liberty is the state of being free within society from restrictions imposed by authority on one''s way of life, behavior, or political views. The concept of liberty can vary depending on perspective and context. In the constitutional law of the United States, ordered liberty means creating a balanced society where individuals have the freedom to act without unnecessary interference and access to opportunities and resources to pursue their goals, all within a fair legal system.', '["clm_wiki_liberty_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_liberty_history', 'plc_liberty', 'history', 'History',
   'Politics [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Political freedom History [ edit ] Bust of Aristotle The modern day concept of political liberty has its origins in the Greek concepts of freedom and slavery. &#91; 1 &#93; To be free, to the Greeks, was not to have a master, to be independent from a master (to live as one likes). &#91; 2 &#93; &#91; 3 &#93; That was the original Greek concept of freedom. It is closely linked with the concept of democracy, as Aristotle put it : "This, then, is one note of liberty which all democrats affirm to be the principle of their state. Another is that a man should live as he likes. This, they say, is the privilege of a freeman, since, on the other hand, not to live as a man likes is the mark of a slave. This is the second characteristic of democracy, whence has arisen the claim of men to be ruled by none, if possible, or, if this is impossible, to rule and be ruled in turns; and so it contributes to the freedom based upon equality." &#91; 4 &#93; This applied only to free men. In Athens, for instance, women could not vote or hold office and were legally and socially dependent on a male relative. &#91; 5 &#93; The populations of the Persian Empire enjoyed some degree of freedom. Citizens of all religions and ethnic groups were given the same rights and had the same freedom of religion , women had the same rights as men, and slavery was abolished (550 BC). All the palaces of the kings of Persia were built by paid workers in an era when slaves typically did such work. &#91; 6 &#93; In the Maurya Empire of ancient India , citizens of all religions and ethnic groups had some rights to freedom , tolerance , and equality . The need for tolerance on an egalitarian basis can be found in the Edicts of Ashoka the Great , which emphasize the importance of tolerance in public policy by the government. The slaughter or capture of prisoners of war also appears to have been condemned by Ashoka. &#91; 7 &#93; Slavery also appears to have been non-existent in the Maurya Empire. &#91; 8 &#93; However, according to Hermann Kulke and Dietmar Rothermund, "Ashoka''s orders seem to have been resisted right from the be', '["clm_wiki_liberty_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_liberty_geography', 'plc_liberty', 'geography', 'Geography',
   'Politics [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Political freedom History [ edit ] Bust of Aristotle The modern day concept of political liberty has its origins in the Greek concepts of freedom and slavery. &#91; 1 &#93; To be free, to the Greeks, was not to have a master, to be independent from a master (to live as one likes). &#91; 2 &#93; &#91; 3 &#93; That was the original Greek concept of freedom. It is closely linked with the concept of democracy, as Aristotle put it : "This, then, is one note of liberty which all democrats affirm to be the principle of their state. Another is that a man should live as he likes. This, they say, is the privilege of a freeman, since, on the other hand, not to live as a man likes is the mark of a slave. This is the second characteristic of democracy, whence has arisen the claim of men to be ruled by none, if possible, or, if this is impossible, to rule and be ruled in turns; and so it contributes to the freedom based upon equality." &#91; 4 &#93; This applied only to free men. In Athens, for instance, women could not vote or hold office and were legally and socially dependent on a male relative. &#91; 5 &#93; The populations of the Persian Empire enjoyed some degree of freedom. Citizens of all religions and ethnic groups were given the same rights and had the same freedom of religion , women had the same rights as men, and slavery was abolished (550 BC). All the palaces of the kings of Persia were built by paid workers in an era when slaves typically did such work. &#91; 6 &#93; In the Maurya Empire of ancient India , citizens of all religions and ethnic groups had some rights to freedom , tolerance , a', '["clm_wiki_liberty_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_liberty_demographics', 'plc_liberty', 'demographics', 'Demographics',
   'History [ edit ] Bust of Aristotle The modern day concept of political liberty has its origins in the Greek concepts of freedom and slavery. &#91; 1 &#93; To be free, to the Greeks, was not to have a master, to be independent from a master (to live as one likes). &#91; 2 &#93; &#91; 3 &#93; That was the original Greek concept of freedom. It is closely linked with the concept of democracy, as Aristotle put it : "This, then, is one note of liberty which all democrats affirm to be the principle of their state. Another is that a man should live as he likes. This, they say, is the privilege of a freeman, since, on the other hand, not to live as a man likes is the mark of a slave. This is the second characteristic of democracy, whence has arisen the claim of men to be ruled by none, if possible, or, if this is impossible, to rule and be ruled in turns; and so it contributes to the freedom based upon equality." &#91; 4 &#93; This applied only to free men. In Athens, for instance, women could not vote or hold office and were legally and socially dependent on a male relative. &#91; 5 &#93; The populations of the Persian Empire enjoyed some degree of freedom. Citizens of all religions and ethnic groups were given the same rights and had the same freedom of religion , women had the same rights as men, and slavery was abolished (550 BC). All the palaces of the kings of Persia were built by paid workers in an era when slaves typically did such work. &#91; 6 &#93; In the Maurya Empire of ancient India , citizens of all religions and ethnic groups had some rights to freedom , tolerance , and equality . The need for tolerance on an egalitarian basis can be found in the Edicts of Ashoka the Great , which emphasize the importance of tolerance in public policy by the government. The slaughter or capture of prisoners of war also appears to have been condemned by Ashoka. &#91; 7 &#93; Slavery also appears to have been non-existent in the Maurya Empire. &#91; 8 &#93; However, according t', '["clm_wiki_liberty_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_liberty_primary', 'plc_liberty', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/a/a1/Statue_of_Liberty_7.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Statue_of_Liberty_7.jpg/330px-Statue_of_Liberty_7.jpg?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Liberty',
   'Liberty', 1, 10, unixepoch());

-- 124. Covington (city, TN, pop=9036)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_covington', 'place', 'covington', 'Covington', 'published', 'en', 0,
   'Covington may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_covington', 'city', 35.56425, -89.64647, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_covington_in_country', 'plc_covington', 'ent_usa', 'located_in', 0.95, 'clm_wiki_covington_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_covington_overview', 'plc_covington', 'overview', 'Overview',
   'Covington may refer to:', '["clm_wiki_covington_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_covington_history', 'plc_covington', 'history', 'History',
   'People [ edit ] Covington (surname)', '["clm_wiki_covington_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_covington_geography', 'plc_covington', 'geography', 'Geography',
   'Places [ edit ] United Kingdom [ edit ] Covington, Cambridgeshire Covington, South Lanarkshire United States [ edit ] Covington, Georgia Covington, Indiana Covington, Iowa Covington, Kentucky , the largest American city named Covington Covington, Louisiana Covington, Michigan Covington, Missouri Covington, Nebraska Covington, New York Covington, Ohio Covington, Oklahoma Covington, Tennessee Covington, Texas Covington, Virginia Covington, Washington Fort Covington, New York Port Covington , a former cargo terminal in Baltimore, Maryland', '["clm_wiki_covington_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_covington_demographics', 'plc_covington', 'demographics', 'Demographics',
   'United Kingdom [ edit ] Covington, Cambridgeshire Covington, South Lanarkshire', '["clm_wiki_covington_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 125. Thomaston (city, GA, pop=9032)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_thomaston', 'place', 'thomaston', 'Thomaston', 'published', 'en', 0,
   'Thomaston is the name of several places in the United States of America:Thomaston, Alabama
Thomaston, Connecticut, a New England town
Thomaston (CDP), Connecticut, the main village in the town
Thomaston, Georgia
Thomaston, Indiana
Thomaston, Maine, a New England town
Thomaston (CDP), Maine, census-designated place within the town
Thomaston, New York
Thomaston, Texas
South Thomaston, Maine', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_thomaston', 'city', 32.88819, -84.32659, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_thomaston_in_country', 'plc_thomaston', 'ent_usa', 'located_in', 0.95, 'clm_wiki_thomaston_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_thomaston_overview', 'plc_thomaston', 'overview', 'Overview',
   'Thomaston is the name of several places in the United States of America:Thomaston, Alabama
Thomaston, Connecticut, a New England town
Thomaston (CDP), Connecticut, the main village in the town
Thomaston, Georgia
Thomaston, Indiana
Thomaston, Maine, a New England town
Thomaston (CDP), Maine, census-designated place within the town
Thomaston, New York
Thomaston, Texas
South Thomaston, Maine', '["clm_wiki_thomaston_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());


-- 126. Fitzgerald (city, GA, pop=9013)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_fitzgerald', 'place', 'fitzgerald', 'Fitzgerald', 'published', 'en', 0,
   'Fitzgerald may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_fitzgerald', 'city', 31.71491, -83.25265, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_fitzgerald_in_country', 'plc_fitzgerald', 'ent_usa', 'located_in', 0.95, 'clm_wiki_fitzgerald_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_fitzgerald_overview', 'plc_fitzgerald', 'overview', 'Overview',
   'Fitzgerald may refer to:', '["clm_wiki_fitzgerald_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_fitzgerald_history', 'plc_fitzgerald', 'history', 'History',
   'People [ edit ] FitzGerald (surname) , a surname Fitzgerald Hinds , Trinidadian politician Fitzgerald Toussaint (born 1990), former American football running back', '["clm_wiki_fitzgerald_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_fitzgerald_geography', 'plc_fitzgerald', 'geography', 'Geography',
   'Place [ edit ] Australia [ edit ] Fitzgerald River National Park , a national park in Western Australia Fitzgerald, Western Australia , a locality in the Shire of Ravensthorpe Fitzgerald Bay , a bay located between Point Lowly and Backy Point in South Australia United States [ edit ] Fitzgerald, Georgia Fitzgerald, Wisconsin , a town in Winnebago County, Wisconsin Fitzgerald Marine Reserve , on the Pacific coast of Moss Beach, California Fitzgerald''s , a live-music venue in Houston, Texas Fitzgerald Theater , a theatre in Saint Paul, Minnesota', '["clm_wiki_fitzgerald_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_fitzgerald_demographics', 'plc_fitzgerald', 'demographics', 'Demographics',
   'Australia [ edit ] Fitzgerald River National Park , a national park in Western Australia Fitzgerald, Western Australia , a locality in the Shire of Ravensthorpe Fitzgerald Bay , a bay located between Point Lowly and Backy Point in South Australia', '["clm_wiki_fitzgerald_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 127. Olney (city, IL, pop=9005)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_olney', 'place', 'olney', 'Olney', 'published', 'en', 0,
   'Olney may refer to:', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_olney', 'city', 38.73088, -88.08532, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_olney_in_country', 'plc_olney', 'ent_usa', 'located_in', 0.95, 'clm_wiki_olney_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_olney_overview', 'plc_olney', 'overview', 'Overview',
   'Olney may refer to:', '["clm_wiki_olney_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_olney_history', 'plc_olney', 'history', 'History',
   'Places [ edit ] Australia [ edit ] Parish of Olney (King County) , New South Wales England [ edit ] Olney, Buckinghamshire , a town and civil parish in the City of Milton Keynes district, Buckinghamshire United States [ edit ] Olney, Alabama Olney, Georgia - see List of places in Georgia (U.S. state) (I–R) Olney, Illinois Olney Township, Richland County, Illinois Olney, Maryland Olney Theatre Center Olney (Joppa, Maryland) , a home on the National Register of Historic Places Olney Township, Nobles County, Minnesota Olney, Missouri Olney, Montana Olney, Oklahoma Olney, Oregon Olney, Philadelphia , Pennsylvania, a neighborhood Olney, Texas', '["clm_wiki_olney_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_olney_geography', 'plc_olney', 'geography', 'Geography',
   'Australia [ edit ] Parish of Olney (King County) , New South Wales', '["clm_wiki_olney_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_olney_demographics', 'plc_olney', 'demographics', 'Demographics',
   'England [ edit ] Olney, Buckinghamshire , a town and civil parish in the City of Milton Keynes district, Buckinghamshire', '["clm_wiki_olney_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 128. Detroit Lakes (city, MN, pop=9002)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_detroit-lakes', 'place', 'detroit-lakes', 'Detroit Lakes', 'published', 'en', 0,
   'Detroit Lakes is a city in and the county seat of Becker County, Minnesota, United States. The population was 9,869 at the 2020 census. Its unofficial population during the summer is higher, estimated by citizens to peak at 13,000, due to seasonal residents and tourists.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_detroit-lakes', 'city', 46.81718, -95.84533, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_detroit-lakes_in_country', 'plc_detroit-lakes', 'ent_usa', 'located_in', 0.95, 'clm_wiki_detroit-lakes_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_detroit-lakes_overview', 'plc_detroit-lakes', 'overview', 'Overview',
   'Detroit Lakes is a city in and the county seat of Becker County, Minnesota, United States. The population was 9,869 at the 2020 census. Its unofficial population during the summer is higher, estimated by citizens to peak at 13,000, due to seasonal residents and tourists.', '["clm_wiki_detroit-lakes_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_detroit-lakes_overview', 'plc_detroit-lakes', 'overview', 'History',
   'Detroit Lakes is a city in and the county seat of Becker County, Minnesota, United States. The population was 9,869 at the 2020 census. Its unofficial population during the summer is higher, estimated by citizens to peak at 13,000, due to seasonal residents and tourists.', '["clm_wiki_detroit-lakes_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_detroit-lakes_overview', 'plc_detroit-lakes', 'overview', 'Geography',
   'Detroit Lakes is a city in and the county seat of Becker County, Minnesota, United States. The population was 9,869 at the 2020 census. Its unofficial population during the summer is higher, estimated by citizens to peak at 13,000, due to seasonal residents and tourists.', '["clm_wiki_detroit-lakes_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_detroit-lakes_overview', 'plc_detroit-lakes', 'overview', 'Demographics',
   'Detroit Lakes is a city in and the county seat of Becker County, Minnesota, United States. The population was 9,869 at the 2020 census. Its unofficial population during the summer is higher, estimated by citizens to peak at 13,000, due to seasonal residents and tourists.', '["clm_wiki_detroit-lakes_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_detroit-lakes_primary', 'plc_detroit-lakes', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Washington_Avenue_at_Front_Street_looking_south%2C_Detroit_Lakes%2C_Minnesota.jpg/3840px-Washington_Avenue_at_Front_Street_looking_south%2C_Detroit_Lakes%2C_Minnesota.jpg', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Washington_Avenue_at_Front_Street_looking_south%2C_Detroit_Lakes%2C_Minnesota.jpg/330px-Washington_Avenue_at_Front_Street_looking_south%2C_Detroit_Lakes%2C_Minnesota.jpg',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Detroit Lakes',
   'Detroit Lakes', 1, 10, unixepoch());

