-- ========================================
-- Migration 0078: Quality place events from Wikipedia rule (r2)
-- Generated: 2026-08-11
-- Strategy: Wikipedia rule extraction, filtered to high-coverage places only
-- Quality filter: places with 15+ extracted events (noise floor)
-- Coverage: 2 more places (elizabethton 30 events, cartersville 16 events)
-- ========================================

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_cartersville_2020_0', 'plc_cartersville', '2020-01-01',
   2020, 'public_appearance', 'history',
   'As of the 2020 census, the city had a population of 23,187.', 'As of the 2020 census, the city had a population of 23,187.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/cartersville', 0.7, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_cartersville_1832_1', 'plc_cartersville', '1832-01-01',
   1832, 'founding', 'history',
   '== History ==
Cartersville, originally known as Birmingham, was founded by English-Americans in 1832.', '== History ==
Cartersville, originally known as Birmingham, was founded by English-Americans in 1832.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/cartersville', 0.7, 10,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_cartersville_1854_2', 'plc_cartersville', '1854-01-01',
   1854, 'founding', 'history',
   'The town was incorporated as Cartersville in 1854.', 'The town was incorporated as Cartersville in 1854.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/cartersville', 0.7, 20,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_cartersville_1867_3', 'plc_cartersville', '1867-01-01',
   1867, 'historical', 'history',
   'Cartersville was designated the seat of Bartow County in 1867 following the destruction of Cassville by Sherman''s March to the Sea in the American Civil War.', 'Cartersville was designated the seat of Bartow County in 1867 following the destruction of Cassville by Sherman''s March to the Sea in the American Civil War.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/cartersville', 0.7, 30,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_cartersville_1872_4', 'plc_cartersville', '1872-01-01',
   1872, 'founding', 'history',
   'Cartersville was incorporated as a city in 1872.', 'Cartersville was incorporated as a city in 1872.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/cartersville', 0.7, 40,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_cartersville_1916_5', 'plc_cartersville', '1916-02-26',
   1916, 'public_appearance', 'history',
   'On February 26, 1916, a mob of fifty men and boys forcibly removed Jesse McCorkle, a Black man who had been arrested just the night before for allegedly assaulting a woman, from the jail.', 'On February 26, 1916, a mob of fifty men and boys forcibly removed Jesse McCorkle, a Black man who had been arrested just the night before for allegedly assaulting a woman, from the jail.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/cartersville', 0.7, 50,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_cartersville_1870_6', 'plc_cartersville', '1870-01-01',
   1870, 'public_appearance', 'history',
   '=== Cartersville area communities ===
The following communities border the city:

Adairsville (north-northwest)
Cassville (north)
Emerson (south)
Euharlee (west)
Kingston (northwest)
Stilesboro (south', '=== Cartersville area communities ===
The following communities border the city:

Adairsville (north-northwest)
Cassville (north)
Emerson (south)
Euharlee (west)
Kingston (northwest)
Stilesboro (southwest)
White (northern)
Grassdale Road (west)


=== Climate ===


== Demographics ==

Cartersville first appeared as a town in the 1870 United States census.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/cartersville', 0.7, 60,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_cartersville_1960_7', 'plc_cartersville', '1960-01-01',
   1960, 'public_appearance', 'history',
   'The city absorbed the census-delineated neighboring unincorporated community of Atco prior to the 1960 U.S.', 'The city absorbed the census-delineated neighboring unincorporated community of Atco prior to the 1960 U.S.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/cartersville', 0.7, 70,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_cartersville_2020_8', 'plc_cartersville', '2020-01-01',
   2020, 'public_appearance', 'history',
   '=== Racial and ethnic composition ===


=== 2020 census ===
As of the 2020 census, there were 23,187 people and 5,285 families residing in the city.', '=== Racial and ethnic composition ===


=== 2020 census ===
As of the 2020 census, there were 23,187 people and 5,285 families residing in the city.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/cartersville', 0.7, 80,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_cartersville_2010_9', 'plc_cartersville', '2010-01-01',
   2010, 'public_appearance', 'history',
   '=== 2010 census ===
As of the census of 2010, there were 19,010 people, 5,870 households, and 4,132 families residing in the city.', '=== 2010 census ===
As of the census of 2010, there were 19,010 people, 5,870 households, and 4,132 families residing in the city.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/cartersville', 0.7, 90,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_cartersville_1894_10', 'plc_cartersville', '1894-01-01',
   1894, 'public_appearance', 'history',
   'The world''s first outdoor Coca-Cola sign, painted in 1894, is located in downtown Cartersville on Young Brothers Pharmacy''s wall.', 'The world''s first outdoor Coca-Cola sign, painted in 1894, is located in downtown Cartersville on Young Brothers Pharmacy''s wall.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/cartersville', 0.7, 100,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_cartersville_1870_11', 'plc_cartersville', '1870-01-01',
   1870, 'public_appearance', 'history',
   '1870, in downtown Cartersville on East Church Street.', '1870, in downtown Cartersville on East Church Street.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/cartersville', 0.7, 110,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_cartersville_2017_12', 'plc_cartersville', '2017-01-01',
   2017, 'public_appearance', 'history',
   '== Law enforcement ==
In 2017, the Cartersville Police Department arrested 65 people at a house party because of a suspicion that there was an ounce of marijuana at the party.', '== Law enforcement ==
In 2017, the Cartersville Police Department arrested 65 people at a house party because of a suspicion that there was an ounce of marijuana at the party.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/cartersville', 0.7, 120,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_cartersville_2022_13', 'plc_cartersville', '2022-01-01',
   2022, 'public_appearance', 'history',
   'In 2022, a federal court awarded 45 of the arrested individuals a $900,000 settlement due to a violation of their constitutional rights.', 'In 2022, a federal court awarded 45 of the arrested individuals a $900,000 settlement due to a violation of their constitutional rights.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/cartersville', 0.7, 130,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_cartersville_2022_14', 'plc_cartersville', '2022-09-08',
   2022, 'public_appearance', 'history',
   'On September 8, 2022, Deputy Police Chief Jason DiPrima resigned after being arrested in a prostitute police-sting operation.', 'On September 8, 2022, Deputy Police Chief Jason DiPrima resigned after being arrested in a prostitute police-sting operation.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/cartersville', 0.7, 140,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_cartersville_2013_15', 'plc_cartersville', '2013-05-14',
   2013, 'public_appearance', 'history',
   '== Notable people ==


== References ==


== External links ==

Official website
Cartersville Archived May 14, 2013, at the Wayback Machine at New Georgia Encyclopedia
The Daily Tribune, newspaper bas', '== Notable people ==


== References ==


== External links ==

Official website
Cartersville Archived May 14, 2013, at the Wayback Machine at New Georgia Encyclopedia
The Daily Tribune, newspaper based in Cartersville
News Talk AM 1270, radio station based in Cartersville',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/cartersville', 0.7, 150,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_2020_0', 'plc_elizabethton', '2020-01-01',
   2020, 'public_appearance', 'history',
   'The population of Elizabethton was enumerated at 14,546 during the 2020 census.', 'The population of Elizabethton was enumerated at 14,546 during the 2020 census.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1830_1', 'plc_elizabethton', '1830-01-01',
   1830, 'political', 'history',
   'In 1830, Congress passed the Indian Removal Act and the United States military enforced the removal of nearly all Muscogee and Yuchi peoples, the Chickasaw, Choctaw and Cherokee.', 'In 1830, Congress passed the Indian Removal Act and the United States military enforced the removal of nearly all Muscogee and Yuchi peoples, the Chickasaw, Choctaw and Cherokee.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 10,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1838_2', 'plc_elizabethton', '1838-01-01',
   1838, 'public_appearance', 'history',
   'The latter were the last holdouts, but, from 1838 to 1839, nearly 17,000 Cherokee were forced to walk overland from "emigration depots" in Alabama and Eastern Tennessee, such as Fort Cass, to Indian T', 'The latter were the last holdouts, but, from 1838 to 1839, nearly 17,000 Cherokee were forced to walk overland from "emigration depots" in Alabama and Eastern Tennessee, such as Fort Cass, to Indian Territory west of Arkansas.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 20,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1780_3', 'plc_elizabethton', '1780-08-19',
   1780, 'historical', 'history',
   'Isaac Shelby (who years earlier had worked as a surveyor for the Transylvania Company) and other patriot forces engaged and defeated a larger force of British Loyalists on August 19, 1780, at the Batt', 'Isaac Shelby (who years earlier had worked as a surveyor for the Transylvania Company) and other patriot forces engaged and defeated a larger force of British Loyalists on August 19, 1780, at the Battle of Musgrove Mill near present-day Clinton, South Carolina.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 30,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1780_4', 'plc_elizabethton', '1780-09-26',
   1780, 'historical', 'history',
   'Fort Watauga later served as the September 26, 1780, staging area for a much larger contingent of some 1,100 Overmountain Men who were preparing to trek over the Blue Ridge Mountains at Roan Mountain ', 'Fort Watauga later served as the September 26, 1780, staging area for a much larger contingent of some 1,100 Overmountain Men who were preparing to trek over the Blue Ridge Mountains at Roan Mountain to engage, and subsequently defeat, the British Army Loyalist forces at the Battle of Kings Mountain in rural York County, South Carolina, 9 miles (14 km) south of the present-day town of Kings Mountain, North Carolina.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 40,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1833_5', 'plc_elizabethton', '1833-01-01',
   1833, 'founding', 'history',
   'Samuel Tipton (1752−1833), a son of frontiersman and later State of Franklin independence opponent Colonel John Tipton, had deeded the land on which the town Tiptonville was established on the banks o', 'Samuel Tipton (1752−1833), a son of frontiersman and later State of Franklin independence opponent Colonel John Tipton, had deeded the land on which the town Tiptonville was established on the banks of the Doe River near its confluence with the Watauga River then within Wayne County.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 50,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1861_6', 'plc_elizabethton', '1861-01-01',
   1861, 'historical', 'history',
   'In early 1861, after receiving a letter from Carter assuring his loyalty to the Union should a civil war break out, Tennessee Governor Andrew Johnson used his influence in the United States Department', 'In early 1861, after receiving a letter from Carter assuring his loyalty to the Union should a civil war break out, Tennessee Governor Andrew Johnson used his influence in the United States Department of War for Carter to organize and train militia within East Tennessee.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 60,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1862_7', 'plc_elizabethton', '1862-01-19',
   1862, 'historical', 'history',
   'After leading successful cavalry operations at the Battle of Mill Springs on January 19, 1862, Carter accepted a commission as Brigadier General of volunteers in May and later continued leading operat', 'After leading successful cavalry operations at the Battle of Mill Springs on January 19, 1862, Carter accepted a commission as Brigadier General of volunteers in May and later continued leading operations at the Battle of Cumberland Gap in June as well as raids against Holston, Carter''s Station, and Jonesville in December, in support of General William S.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 70,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1820_8', 'plc_elizabethton', '1820-01-01',
   1820, 'public_appearance', 'history',
   'Carter (1820−1902), planned and coordinated the so-called East Tennessee bridge burnings in 1861.', 'Carter (1820−1902), planned and coordinated the so-called East Tennessee bridge burnings in 1861.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 80,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1863_9', 'plc_elizabethton', '1863-01-01',
   1863, 'public_appearance', 'history',
   'In July 1863, Carter was placed in command of the XXIII Corps cavalry division and would continue campaigning across Tennessee throughout the year.', 'In July 1863, Carter was placed in command of the XXIII Corps cavalry division and would continue campaigning across Tennessee throughout the year.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 90,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1865_10', 'plc_elizabethton', '1865-01-01',
   1865, 'historical', 'history',
   'By 1865, Carter was in North Carolina and commanding the left wing of the Union forces at the Battle of Kingston.', 'By 1865, Carter was in North Carolina and commanding the left wing of the Union forces at the Battle of Kingston.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 100,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1866_11', 'plc_elizabethton', '1866-01-01',
   1866, 'public_appearance', 'history',
   'He was promoted to Brevet Major General of Volunteers, briefly commanding the XXIII Corps before being mustered out of volunteer service in January 1866.', 'He was promoted to Brevet Major General of Volunteers, briefly commanding the XXIII Corps before being mustered out of volunteer service in January 1866.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 110,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1863_12', 'plc_elizabethton', '1863-01-01',
   1863, 'public_appearance', 'history',
   'Navy promoted him to lieutenant commander in 1863, then to commander in 1865.', 'Navy promoted him to lieutenant commander in 1863, then to commander in 1865.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 120,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1912_13', 'plc_elizabethton', '1912-01-01',
   1912, 'historical', 'history',
   'The Veterans'' Monument in downtown Elizabethton was originally constructed and dedicated in 1912 to "the memory of the old soldiers of Carter County since the days of the Revolution." It is in the for', 'The Veterans'' Monument in downtown Elizabethton was originally constructed and dedicated in 1912 to "the memory of the old soldiers of Carter County since the days of the Revolution." It is in the form of an obelisk, constructed primarily from river rock collected from the nearby Doe River, guarded by two short Civil War field cannon.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 130,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1916_14', 'plc_elizabethton', '1916-01-01',
   1916, 'public_appearance', 'history',
   'Beginning in the 1880s, the narrow-gauge engine known as the "Tweetsie" ran on the East Tennessee and Western North Carolina Railroad (ET&WNC) from Johnson City, passing through Elizabethton before cl', 'Beginning in the 1880s, the narrow-gauge engine known as the "Tweetsie" ran on the East Tennessee and Western North Carolina Railroad (ET&WNC) from Johnson City, passing through Elizabethton before climbing into the Blue Ridge Mountains, eventually connecting to Boone, North Carolina, in 1916.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 140,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1927_15', 'plc_elizabethton', '1927-01-01',
   1927, 'public_appearance', 'history',
   'In 1927, the 9-mile (14 km) portion of the ET&WNC railroad from Johnson City to Elizabethton was converted to standard gauge in order to more efficiently serve the NARC and Bemberg Rayon Plants.', 'In 1927, the 9-mile (14 km) portion of the ET&WNC railroad from Johnson City to Elizabethton was converted to standard gauge in order to more efficiently serve the NARC and Bemberg Rayon Plants.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 150,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1950_16', 'plc_elizabethton', '1950-01-01',
   1950, 'public_appearance', 'history',
   'The narrow-gauge portion of the ET&WNC ceased operations in 1950 and was subsequently abandoned, though the standard-gauge portion of the line from Johnson City to Elizabethton continued to operate un', 'The narrow-gauge portion of the ET&WNC ceased operations in 1950 and was subsequently abandoned, though the standard-gauge portion of the line from Johnson City to Elizabethton continued to operate until 2003 as the East Tennessee Railway.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 160,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_2014_17', 'plc_elizabethton', '2014-01-01',
   2014, 'public_appearance', 'history',
   'The railroad''s dormant track was removed to create a new rail-to-trail, the Tweetsie Trail in 2014.', 'The railroad''s dormant track was removed to create a new rail-to-trail, the Tweetsie Trail in 2014.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 170,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1940_18', 'plc_elizabethton', '1940-01-01',
   1940, 'public_appearance', 'history',
   'The Southern Railway operated a branch line into Elizabethton until the flood of 1940.', 'The Southern Railway operated a branch line into Elizabethton until the flood of 1940.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 180,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1929_19', 'plc_elizabethton', '1929-01-01',
   1929, 'founding', 'history',
   '=== North American Rayon Corp., American Bemberg Corp., and the 1929 Rayon Plants strikes ===

Beginning in the late 1920s, German and Dutch business investors established two major rayon manufacturin', '=== North American Rayon Corp., American Bemberg Corp., and the 1929 Rayon Plants strikes ===

Beginning in the late 1920s, German and Dutch business investors established two major rayon manufacturing plants (Bemberg and the North American Rayon Corporation) in Elizabethton along the banks of the Watauga River, producing rayon material for both U.S.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 190,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1949_20', 'plc_elizabethton', '1949-01-01',
   1949, 'historical', 'history',
   'A post-war hiring apex of the Elizabethton rayon industry occurred in 1949 when over 6,100 employees were working at both of the Elizabethton rayon mills.', 'A post-war hiring apex of the Elizabethton rayon industry occurred in 1949 when over 6,100 employees were working at both of the Elizabethton rayon mills.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 200,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1909_21', 'plc_elizabethton', '1909-01-01',
   1909, 'public_appearance', 'history',
   'The Horseshoe section of the Watauga River (within the Tennessee Valley Authority reservation behind the TVA Wilbur Dam) is the site of the first hydroelectric dam constructed in Tennessee (beginning ', 'The Horseshoe section of the Watauga River (within the Tennessee Valley Authority reservation behind the TVA Wilbur Dam) is the site of the first hydroelectric dam constructed in Tennessee (beginning in 1909), going online with power production and distribution in 1912.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 210,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1928_22', 'plc_elizabethton', '1928-10-06',
   1928, 'political', 'history',
   'Hoover made his only southern campaign stop at Elizabethton and delivered his nationally broadcast October 6, 1928, election "stump speech" before 50,000 people gathered at the base of Lynn Mountain i', 'Hoover made his only southern campaign stop at Elizabethton and delivered his nationally broadcast October 6, 1928, election "stump speech" before 50,000 people gathered at the base of Lynn Mountain in Harmon Field (now at the mini-park and the Elizabethton/Carter County Chamber of Commerce building location on U.S.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 220,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1933_23', 'plc_elizabethton', '1933-01-01',
   1933, 'political', 'history',
   'Norris of Nebraska who sponsored the Tennessee Valley Authority Act of 1933, water power development legislation which was finally enacted during the administration of President Franklin D.', 'Norris of Nebraska who sponsored the Tennessee Valley Authority Act of 1933, water power development legislation which was finally enacted during the administration of President Franklin D.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 230,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1936_24', 'plc_elizabethton', '1936-01-01',
   1936, 'public_appearance', 'history',
   'Norris was later an important proponent of the Rural Electrification Act of 1936.', 'Norris was later an important proponent of the Rural Electrification Act of 1936.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 240,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1948_25', 'plc_elizabethton', '1948-01-01',
   1948, 'historical', 'history',
   'Following the end of World War II, the TVA Watauga Dam and Reservoir were completed 3 miles (5 km) upstream of the Wilbur Dam in 1948.', 'Following the end of World War II, the TVA Watauga Dam and Reservoir were completed 3 miles (5 km) upstream of the Wilbur Dam in 1948.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 250,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1975_26', 'plc_elizabethton', '1975-01-01',
   1975, 'public_appearance', 'history',
   'Bicentennial – Overmountain Victory Trail ===
Hikers, military reenactors, and scouts have followed segments of the famous Overmountain Victory Trail, and in 1975, three Elizabethton Boy Scouts were a', 'Bicentennial – Overmountain Victory Trail ===
Hikers, military reenactors, and scouts have followed segments of the famous Overmountain Victory Trail, and in 1975, three Elizabethton Boy Scouts were among those who completed the re-enactment of the overmountain route (approximately 214 miles (344 km) in one direction) by hiking from Elizabethton at Sycamore Shoals to the Kings Mountain National Military Park.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 260,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1980_27', 'plc_elizabethton', '1980-09-08',
   1980, 'founding', 'history',
   '96 344) into law on September 8, 1980, designating the historical overmountain route as the Overmountain Victory National Historic Trail, the first National Historic Trail established within the easte', '96 344) into law on September 8, 1980, designating the historical overmountain route as the Overmountain Victory National Historic Trail, the first National Historic Trail established within the eastern United States.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 270,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_2023_28', 'plc_elizabethton', '2023-06-04',
   2023, 'public_appearance', 'history',
   '=== Elizabethton Airport Plane Incident ===
On June 4, 2023, a plane that took off from the Elizabethton airport was the cause of an airspace emergency over Washington, DC, after the pilot lost consci', '=== Elizabethton Airport Plane Incident ===
On June 4, 2023, a plane that took off from the Elizabethton airport was the cause of an airspace emergency over Washington, DC, after the pilot lost consciousness and the plane flew into restricted airspace.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 280,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_elizabethton_1882_29', 'plc_elizabethton', '1882-01-01',
   1882, 'public_appearance', 'history',
   'Further downstream, the Doe River flows by the East Side neighborhood parallel with Tennessee State Route 67 and then underneath the historic Elizabethton Covered Bridge, built in 1882 and located wit', 'Further downstream, the Doe River flows by the East Side neighborhood parallel with Tennessee State Route 67 and then underneath the historic Elizabethton Covered Bridge, built in 1882 and located within the Elizabethton downtown business district.',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/elizabethton', 0.7, 290,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
