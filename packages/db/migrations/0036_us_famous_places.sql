-- ========================================
-- Migration 0036: US Famous Places
-- Generated: 2026-08-08T14:40:04Z
-- 141 places: cities, landmarks, universities
-- Schema: entity (type='place') + place
-- ========================================

-- Place: New York City (city, New York)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_new-york-city', 'place', 'new-york-city', 'New York City', 'published', 'New York City is a famous city in New York, United States. Most populous city in the US. Major financial, cultural, and media center. Home of Wall Street, Broadway, UN HQ.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_new-york-city', 'city', 'US', 1624, NULL);

-- Place: Los Angeles (city, California)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_los-angeles', 'place', 'los-angeles', 'Los Angeles', 'published', 'Los Angeles is a famous city in California, United States. Second largest US city. Capital of the entertainment industry (Hollywood). Largest city in California.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_los-angeles', 'city', 'US', 1781, NULL);

-- Place: Chicago (city, Illinois)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_chicago', 'place', 'chicago', 'Chicago', 'published', 'Chicago is a famous city in Illinois, United States. Third largest US city. Major financial center, birthplace of skyscraper architecture, blues music capital.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_chicago', 'city', 'US', 1833, NULL);

-- Place: Houston (city, Texas)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_houston', 'place', 'houston', 'Houston', 'published', 'Houston is a famous city in Texas, United States. Fourth largest US city. Energy capital of the world, home of NASA Johnson Space Center, largest Texas city.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_houston', 'city', 'US', 1836, NULL);

-- Place: Phoenix (city, Arizona)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_phoenix', 'place', 'phoenix', 'Phoenix', 'published', 'Phoenix is a famous city in Arizona, United States. Fifth largest US city. Capital of Arizona. Major Sun Belt metro.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_phoenix', 'city', 'US', 1868, NULL);

-- Place: Philadelphia (city, Pennsylvania)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_philadelphia', 'place', 'philadelphia', 'Philadelphia', 'published', 'Philadelphia is a famous city in Pennsylvania, United States. Birthplace of American independence (Declaration of Independence signed here 1776). First US capital.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_philadelphia', 'city', 'US', 1682, NULL);

-- Place: San Antonio (city, Texas)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_san-antonio', 'place', 'san-antonio', 'San Antonio', 'published', 'San Antonio is a famous city in Texas, United States. Site of the Alamo, major Texas city. Seventh largest US city.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_san-antonio', 'city', 'US', 1718, NULL);

-- Place: San Diego (city, California)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_san-diego', 'place', 'san-diego', 'San Diego', 'published', 'San Diego is a famous city in California, United States. Eighth largest US city. Pacific naval base, biotech hub, near Mexican border.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_san-diego', 'city', 'US', 1769, NULL);

-- Place: Dallas (city, Texas)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_dallas', 'place', 'dallas', 'Dallas', 'published', 'Dallas is a famous city in Texas, United States. Major Texas city. JFK assassination site (Dealey Plaza, 1963). Oil and telecommunications hub.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_dallas', 'city', 'US', 1841, NULL);

-- Place: San Jose (city, California)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_san-jose', 'place', 'san-jose', 'San Jose', 'published', 'San Jose is a famous city in California, United States. Capital of Silicon Valley. Tech hub (Adobe, Cisco, eBay, PayPal HQ).', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_san-jose', 'city', 'US', 1777, NULL);

-- Place: Austin (city, Texas)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_austin', 'place', 'austin', 'Austin', 'published', 'Austin is a famous city in Texas, United States. Texas state capital. Major tech hub (Tesla, Oracle, AMD). Live music capital of the world.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_austin', 'city', 'US', 1839, NULL);

-- Place: Boston (city, Massachusetts)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_boston', 'place', 'boston', 'Boston', 'published', 'Boston is a famous city in Massachusetts, United States. Birthplace of American Revolution (Boston Tea Party, 1773). Major educational and medical hub.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_boston', 'city', 'US', 1630, NULL);

-- Place: Seattle (city, Washington)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_seattle', 'place', 'seattle', 'Seattle', 'published', 'Seattle is a famous city in Washington, United States. Pacific Northwest tech hub (Amazon, Microsoft HQ). Birthplace of grunge music.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_seattle', 'city', 'US', 1851, NULL);

-- Place: Washington, D.C. (city, District of Columbia)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_washington-dc', 'place', 'washington-dc', 'Washington, D.C.', 'published', 'Washington, D.C. is a famous city in District of Columbia, United States. Capital of the United States. Seat of federal government, White House, Capitol, Supreme Court.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_washington-dc', 'city', 'US', 1790, NULL);

-- Place: Atlanta (city, Georgia)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_atlanta', 'place', 'atlanta', 'Atlanta', 'published', 'Atlanta is a famous city in Georgia, United States. Capital of Georgia. Major Southern city, CNN and Delta HQ, Martin Luther King Jr. birthplace.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_atlanta', 'city', 'US', 1837, NULL);

-- Place: Miami (city, Florida)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_miami', 'place', 'miami', 'Miami', 'published', 'Miami is a famous city in Florida, United States. Major Southern hub. Gateway to Latin America, tourism capital, financial center.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_miami', 'city', 'US', 1825, NULL);

-- Place: Detroit (city, Michigan)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_detroit', 'place', 'detroit', 'Detroit', 'published', 'Detroit is a famous city in Michigan, United States. Motor City. Birthplace of the American automotive industry (Ford, GM, Chrysler). Motown music.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_detroit', 'city', 'US', 1701, NULL);

-- Place: San Francisco (city, California)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_san-francisco', 'place', 'san-francisco', 'San Francisco', 'published', 'San Francisco is a famous city in California, United States. Tech and finance hub. Golden Gate Bridge, Alcatraz. Silicon Valley adjacent.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_san-francisco', 'city', 'US', 1776, NULL);

-- Place: Denver (city, Colorado)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_denver', 'place', 'denver', 'Denver', 'published', 'Denver is a famous city in Colorado, United States. Mile High City. Capital of Colorado. Mountain west hub.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_denver', 'city', 'US', 1858, NULL);

-- Place: Las Vegas (city, Nevada)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_las-vegas', 'place', 'las-vegas', 'Las Vegas', 'published', 'Las Vegas is a famous city in Nevada, United States. Entertainment capital of the world. Casinos, shows. Nevada gambling mecca.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_las-vegas', 'city', 'US', 1905, NULL);

-- Place: Nashville (city, Tennessee)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_nashville', 'place', 'nashville', 'Nashville', 'published', 'Nashville is a famous city in Tennessee, United States. Music City. Country music capital. Tennessee state capital.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_nashville', 'city', 'US', 1779, NULL);

-- Place: Portland (city, Oregon)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_portland', 'place', 'portland', 'Portland', 'published', 'Portland is a famous city in Oregon, United States. Pacific Northwest cultural hub. Progressive reputation, breweries.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_portland', 'city', 'US', 1845, NULL);

-- Place: New Orleans (city, Louisiana)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_new-orleans', 'place', 'new-orleans', 'New Orleans', 'published', 'New Orleans is a famous city in Louisiana, United States. Birthplace of jazz music. Mardi Gras, French Quarter, Creole cuisine.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_new-orleans', 'city', 'US', 1718, NULL);

-- Place: Memphis (city, Tennessee)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_memphis', 'place', 'memphis', 'Memphis', 'published', 'Memphis is a famous city in Tennessee, United States. Birthplace of blues, soul, rock and roll. Beale Street, Graceland (Elvis Presley''s home).', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_memphis', 'city', 'US', 1819, NULL);

-- Place: Orlando (city, Florida)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_orlando', 'place', 'orlando', 'Orlando', 'published', 'Orlando is a famous city in Florida, United States. Theme park capital of the world. Walt Disney World, Universal Studios.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_orlando', 'city', 'US', 1875, NULL);

-- Place: Cleveland (city, Ohio)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_cleveland', 'place', 'cleveland', 'Cleveland', 'published', 'Cleveland is a famous city in Ohio, United States. Rock and Roll Hall of Fame. Major Great Lakes industrial city.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_cleveland', 'city', 'US', 1796, NULL);

-- Place: Pittsburgh (city, Pennsylvania)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_pittsburgh', 'place', 'pittsburgh', 'Pittsburgh', 'published', 'Pittsburgh is a famous city in Pennsylvania, United States. Steel City. Carnegie Steel legacy. Three rivers confluence.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_pittsburgh', 'city', 'US', 1758, NULL);

-- Place: Cincinnati (city, Ohio)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_cincinnati', 'place', 'cincinnati', 'Cincinnati', 'published', 'Cincinnati is a famous city in Ohio, United States. Queen City. Major 19th-century industrial hub on the Ohio River.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_cincinnati', 'city', 'US', 1788, NULL);

-- Place: Minneapolis (city, Minnesota)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_minneapolis', 'place', 'minneapolis', 'Minneapolis', 'published', 'Minneapolis is a famous city in Minnesota, United States. Twin Cities. Major Midwest hub. Music (Prince), arts, healthcare.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_minneapolis', 'city', 'US', 1856, NULL);

-- Place: Kansas City (city, Missouri)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_kansas-city', 'place', 'kansas-city', 'Kansas City', 'published', 'Kansas City is a famous city in Missouri, United States. Jazz heritage, BBQ, fountains. Border city on Missouri River.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_kansas-city', 'city', 'US', 1838, NULL);

-- Place: Indianapolis (city, Indiana)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_indianapolis', 'place', 'indianapolis', 'Indianapolis', 'published', 'Indianapolis is a famous city in Indiana, United States. Crossroads of America. Indianapolis 500, capital of Indiana.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_indianapolis', 'city', 'US', 1821, NULL);

-- Place: Columbus (city, Ohio)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_columbus', 'place', 'columbus', 'Columbus', 'published', 'Columbus is a famous city in Ohio, United States. Largest Ohio city. Capital of Ohio. Ohio State University.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_columbus', 'city', 'US', 1812, NULL);

-- Place: Charlotte (city, North Carolina)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_charlotte', 'place', 'charlotte', 'Charlotte', 'published', 'Charlotte is a famous city in North Carolina, United States. Second largest financial center in US (banking HQ). NASCAR hub.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_charlotte', 'city', 'US', 1768, NULL);

-- Place: Raleigh (city, North Carolina)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_raleigh', 'place', 'raleigh', 'Raleigh', 'published', 'Raleigh is a famous city in North Carolina, United States. Capital of North Carolina. Research Triangle (with Durham and Chapel Hill).', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_raleigh', 'city', 'US', 1792, NULL);

-- Place: Milwaukee (city, Wisconsin)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_milwaukee', 'place', 'milwaukee', 'Milwaukee', 'published', 'Milwaukee is a famous city in Wisconsin, United States. Brewery town (Pabst, Schlitz, Miller). Great Lakes industrial city.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_milwaukee', 'city', 'US', 1846, NULL);

-- Place: Salt Lake City (city, Utah)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_salt-lake-city', 'place', 'salt-lake-city', 'Salt Lake City', 'published', 'Salt Lake City is a famous city in Utah, United States. Capital of Utah. Headquarters of the Church of Jesus Christ of Latter-day Saints.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_salt-lake-city', 'city', 'US', 1847, NULL);

-- Place: Birmingham (city, Alabama)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_birmingham', 'place', 'birmingham', 'Birmingham', 'published', 'Birmingham is a famous city in Alabama, United States. Magic City. Major Southern industrial city, civil rights history.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_birmingham', 'city', 'US', 1871, NULL);

-- Place: Baton Rouge (city, Louisiana)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_baton-rouge', 'place', 'baton-rouge', 'Baton Rouge', 'published', 'Baton Rouge is a famous city in Louisiana, United States. Capital of Louisiana. Mississippi River port, oil refining.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_baton-rouge', 'city', 'US', 1699, NULL);

-- Place: Anchorage (city, Alaska)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_anchorage', 'place', 'anchorage', 'Anchorage', 'published', 'Anchorage is a famous city in Alaska, United States. Largest Alaska city. Northernmost major US city.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_anchorage', 'city', 'US', 1914, NULL);

-- Place: Honolulu (city, Hawaii)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_honolulu', 'place', 'honolulu', 'Honolulu', 'published', 'Honolulu is a famous city in Hawaii, United States. Capital of Hawaii. Pacific hub, Pearl Harbor, Waikiki.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_honolulu', 'city', 'US', 1809, NULL);

-- Place: Tucson (city, Arizona)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_tucson', 'place', 'tucson', 'Tucson', 'published', 'Tucson is a famous city in Arizona, United States. Second largest Arizona city. University of Arizona. Sonoran Desert.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_tucson', 'city', 'US', 1775, NULL);

-- Place: Albuquerque (city, New Mexico)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_albuquerque', 'place', 'albuquerque', 'Albuquerque', 'published', 'Albuquerque is a famous city in New Mexico, United States. Largest New Mexico city. Native American culture, film industry (Breaking Bad).', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_albuquerque', 'city', 'US', 1706, NULL);

-- Place: Omaha (city, Nebraska)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_omaha', 'place', 'omaha', 'Omaha', 'published', 'Omaha is a famous city in Nebraska, United States. Midwestern hub. Berkshire Hathaway HQ (Warren Buffett).', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_omaha', 'city', 'US', 1854, NULL);

-- Place: Tulsa (city, Oklahoma)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_tulsa', 'place', 'tulsa', 'Tulsa', 'published', 'Tulsa is a famous city in Oklahoma, United States. Oil capital of the world (historical). Art Deco architecture.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_tulsa', 'city', 'US', 1836, NULL);

-- Place: Wichita (city, Kansas)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_wichita', 'place', 'wichita', 'Wichita', 'published', 'Wichita is a famous city in Kansas, United States. Air Capital of the World (aircraft manufacturing). Largest Kansas city.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_wichita', 'city', 'US', 1868, NULL);

-- Place: St. Louis (city, Missouri)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_st-louis', 'place', 'st-louis', 'St. Louis', 'published', 'St. Louis is a famous city in Missouri, United States. Gateway to the West. Gateway Arch, Anheuser-Busch HQ.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_st-louis', 'city', 'US', 1764, NULL);

-- Place: Baltimore (city, Maryland)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_baltimore', 'place', 'baltimore', 'Baltimore', 'published', 'Baltimore is a famous city in Maryland, United States. Charm City. Major East Coast port. Johns Hopkins, Fort McHenry.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_baltimore', 'city', 'US', 1729, NULL);

-- Place: Hartford (city, Connecticut)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_hartford', 'place', 'hartford', 'Hartford', 'published', 'Hartford is a famous city in Connecticut, United States. Insurance Capital of the World. Connecticut state capital. Mark Twain''s home.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_hartford', 'city', 'US', 1635, NULL);

-- Place: Statue of Liberty (landmark, New York)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_statue-of-liberty', 'place', 'statue-of-liberty', 'Statue of Liberty', 'published', 'Statue of Liberty is a famous landmark in New York, United States. Iconic symbol of freedom and democracy. Gift from France. Located on Liberty Island in New York Harbor. UNESCO World Heritage Site.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_statue-of-liberty', 'landmark', 'US', 1886, NULL);

-- Place: Mount Rushmore (landmark, South Dakota)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_mount-rushmore', 'place', 'mount-rushmore', 'Mount Rushmore', 'published', 'Mount Rushmore is a famous landmark in South Dakota, United States. Sculpture of US presidents Washington, Jefferson, T. Roosevelt, and Lincoln. National memorial in the Black Hills.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_mount-rushmore', 'landmark', 'US', 1941, NULL);

-- Place: Golden Gate Bridge (landmark, California)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_golden-gate-bridge', 'place', 'golden-gate-bridge', 'Golden Gate Bridge', 'published', 'Golden Gate Bridge is a famous landmark in California, United States. Iconic suspension bridge in San Francisco. Symbol of the city and engineering marvel.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_golden-gate-bridge', 'landmark', 'US', 1937, NULL);

-- Place: White House (landmark, District of Columbia)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_white-house', 'place', 'white-house', 'White House', 'published', 'White House is a famous landmark in District of Columbia, United States. Official residence and workplace of the US President. Located in Washington DC.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_white-house', 'landmark', 'US', 1800, NULL);

-- Place: United States Capitol (landmark, District of Columbia)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_united-states-capitol', 'place', 'united-states-capitol', 'United States Capitol', 'published', 'United States Capitol is a famous landmark in District of Columbia, United States. Meeting place of the US Congress. Iconic neoclassical building with iconic dome.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_united-states-capitol', 'landmark', 'US', 1800, NULL);

-- Place: Lincoln Memorial (landmark, District of Columbia)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_lincoln-memorial', 'place', 'lincoln-memorial', 'Lincoln Memorial', 'published', 'Lincoln Memorial is a famous landmark in District of Columbia, United States. Tribute to Abraham Lincoln. Site of Martin Luther King Jr.''s I Have a Dream speech.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_lincoln-memorial', 'landmark', 'US', 1922, NULL);

-- Place: Washington Monument (landmark, District of Columbia)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_washington-monument', 'place', 'washington-monument', 'Washington Monument', 'published', 'Washington Monument is a famous landmark in District of Columbia, United States. Obelisk honoring George Washington. Tallest structure in DC. Iconic skyline element.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_washington-monument', 'landmark', 'US', 1884, NULL);

-- Place: Empire State Building (landmark, New York)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_empire-state-building', 'place', 'empire-state-building', 'Empire State Building', 'published', 'Empire State Building is a famous landmark in New York, United States. Iconic Art Deco skyscraper in NYC. Famous for King Kong scene. Once world''s tallest building.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_empire-state-building', 'landmark', 'US', 1931, NULL);

-- Place: Central Park (landmark, New York)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_central-park', 'place', 'central-park', 'Central Park', 'published', 'Central Park is a famous landmark in New York, United States. Iconic urban park in Manhattan. Designed by Frederick Law Olmsted. 843 acres.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_central-park', 'landmark', 'US', 1857, NULL);

-- Place: Hollywood Sign (landmark, California)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_hollywood-sign', 'place', 'hollywood-sign', 'Hollywood Sign', 'published', 'Hollywood Sign is a famous landmark in California, United States. Iconic symbol of the American film industry, located in the Hollywood Hills.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_hollywood-sign', 'landmark', 'US', 1923, NULL);

-- Place: Golden Gate Park (landmark, California)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_golden-gate-park', 'place', 'golden-gate-park', 'Golden Gate Park', 'published', 'Golden Gate Park is a famous landmark in California, United States. Large urban park in San Francisco. Houses the de Young Museum and California Academy of Sciences.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_golden-gate-park', 'landmark', 'US', 1870, NULL);

-- Place: Alcatraz Island (landmark, California)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_alcatraz-island', 'place', 'alcatraz-island', 'Alcatraz Island', 'published', 'Alcatraz Island is a famous landmark in California, United States. Former federal prison on island in San Francisco Bay. Famous escape attempts. Now a national park.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_alcatraz-island', 'landmark', 'US', 1859, NULL);

-- Place: Grand Canyon (landmark, Arizona)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_grand-canyon', 'place', 'grand-canyon', 'Grand Canyon', 'published', 'Grand Canyon is a famous landmark in Arizona, United States. Massive natural canyon carved by the Colorado River. UNESCO World Heritage Site. One of the Seven Natural Wonders of the World.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_grand-canyon', 'landmark', 'US', 1919, NULL);

-- Place: Yellowstone National Park (landmark, Wyoming)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_yellowstone-national-park', 'place', 'yellowstone-national-park', 'Yellowstone National Park', 'published', 'Yellowstone National Park is a famous landmark in Wyoming, United States. First national park in the world. Famous for geysers (Old Faithful), wildlife, and geothermal features.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_yellowstone-national-park', 'landmark', 'US', 1872, NULL);

-- Place: Yosemite National Park (landmark, California)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_yosemite-national-park', 'place', 'yosemite-national-park', 'Yosemite National Park', 'published', 'Yosemite National Park is a famous landmark in California, United States. Iconic national park known for granite cliffs (El Capitan, Half Dome), waterfalls, giant sequoias.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_yosemite-national-park', 'landmark', 'US', 1890, NULL);

-- Place: Yellowstone National Park (Wyoming) (landmark, Wyoming)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_yellowstone-national-park-wyoming', 'place', 'yellowstone-national-park-wyoming', 'Yellowstone National Park (Wyoming)', 'published', 'Yellowstone National Park (Wyoming) is a famous landmark in Wyoming, United States. See Yellowstone.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_yellowstone-national-park-wyoming', 'landmark', 'US', 1872, NULL);

-- Place: Mount Rushmore National Memorial (landmark, South Dakota)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_mount-rushmore-national-memorial', 'place', 'mount-rushmore-national-memorial', 'Mount Rushmore National Memorial', 'published', 'Mount Rushmore National Memorial is a famous landmark in South Dakota, United States. See Mount Rushmore.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_mount-rushmore-national-memorial', 'landmark', 'US', 1925, NULL);

-- Place: Independence Hall (landmark, Pennsylvania)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_independence-hall', 'place', 'independence-hall', 'Independence Hall', 'published', 'Independence Hall is a famous landmark in Pennsylvania, United States. Where the Declaration of Independence and the US Constitution were both signed. UNESCO World Heritage Site.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_independence-hall', 'landmark', 'US', 1753, NULL);

-- Place: Liberty Bell (landmark, Pennsylvania)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_liberty-bell', 'place', 'liberty-bell', 'Liberty Bell', 'published', 'Liberty Bell is a famous landmark in Pennsylvania, United States. Iconic symbol of American independence. Cracked bell, displayed in Philadelphia.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_liberty-bell', 'landmark', 'US', 1752, NULL);

-- Place: Alamo (landmark, Texas)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_alamo', 'place', 'alamo', 'Alamo', 'published', 'Alamo is a famous landmark in Texas, United States. Mission and fortress in San Antonio. Site of the 1836 battle for Texas independence.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_alamo', 'landmark', 'US', 1718, NULL);

-- Place: Pearl Harbor (landmark, Hawaii)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_pearl-harbor', 'place', 'pearl-harbor', 'Pearl Harbor', 'published', 'Pearl Harbor is a famous landmark in Hawaii, United States. Site of the December 7, 1941 attack that brought the US into World War II.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_pearl-harbor', 'landmark', 'US', 1941, NULL);

-- Place: Graceland (landmark, Tennessee)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_graceland', 'place', 'graceland', 'Graceland', 'published', 'Graceland is a famous landmark in Tennessee, United States. Mansion in Memphis, home of Elvis Presley. Most visited private residence in the US.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_graceland', 'landmark', 'US', 1939, NULL);

-- Place: Mount Vernon (landmark, Virginia)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_mount-vernon', 'place', 'mount-vernon', 'Mount Vernon', 'published', 'Mount Vernon is a famous landmark in Virginia, United States. George Washington''s plantation estate on the Potomac River. Historic house museum.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_mount-vernon', 'landmark', 'US', 1734, NULL);

-- Place: Independence National Historical Park (landmark, Pennsylvania)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_independence-national-historical-park', 'place', 'independence-national-historical-park', 'Independence National Historical Park', 'published', 'Independence National Historical Park is a famous landmark in Pennsylvania, United States. Preserves sites related to American Revolution including Independence Hall and Liberty Bell.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_independence-national-historical-park', 'landmark', 'US', 1948, NULL);

-- Place: Fenway Park (landmark, Massachusetts)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_fenway-park', 'place', 'fenway-park', 'Fenway Park', 'published', 'Fenway Park is a famous landmark in Massachusetts, United States. Oldest Major League Baseball stadium in use. Home of the Boston Red Sox.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_fenway-park', 'landmark', 'US', 1912, NULL);

-- Place: Madison Square Garden (landmark, New York)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_madison-square-garden', 'place', 'madison-square-garden', 'Madison Square Garden', 'published', 'Madison Square Garden is a famous landmark in New York, United States. Iconic multi-purpose indoor arena in NYC. Home of the New York Knicks and Rangers.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_madison-square-garden', 'landmark', 'US', 1879, NULL);

-- Place: Times Square (landmark, New York)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_times-square', 'place', 'times-square', 'Times Square', 'published', 'Times Square is a famous landmark in New York, United States. Iconic commercial intersection in Midtown Manhattan. New Year''s Eve ball drop.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_times-square', 'landmark', 'US', 1904, NULL);

-- Place: Brooklyn Bridge (landmark, New York)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_brooklyn-bridge', 'place', 'brooklyn-bridge', 'Brooklyn Bridge', 'published', 'Brooklyn Bridge is a famous landmark in New York, United States. Iconic suspension bridge connecting Manhattan and Brooklyn across the East River.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_brooklyn-bridge', 'landmark', 'US', 1883, NULL);

-- Place: Wall Street (landmark, New York)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_wall-street', 'place', 'wall-street', 'Wall Street', 'published', 'Wall Street is a famous landmark in New York, United States. Famous street in Lower Manhattan. Heart of global finance. New York Stock Exchange.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_wall-street', 'landmark', 'US', 1792, NULL);

-- Place: Pentagon (landmark, Virginia)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_pentagon', 'place', 'pentagon', 'Pentagon', 'published', 'Pentagon is a famous landmark in Virginia, United States. Headquarters of the US Department of Defense. Largest office building in the world by floor area.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_pentagon', 'landmark', 'US', 1943, NULL);

-- Place: Hoover Dam (landmark, Nevada)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_hoover-dam', 'place', 'hoover-dam', 'Hoover Dam', 'published', 'Hoover Dam is a famous landmark in Nevada, United States. Major concrete arch-gravity dam on the Colorado River, on the Nevada-Arizona border.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_hoover-dam', 'landmark', 'US', 1936, NULL);

-- Place: Walt Disney World (landmark, Florida)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_walt-disney-world', 'place', 'walt-disney-world', 'Walt Disney World', 'published', 'Walt Disney World is a famous landmark in Florida, United States. Iconic theme park resort near Orlando. Magic Kingdom, EPCOT, Hollywood Studios, Animal Kingdom.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_walt-disney-world', 'landmark', 'US', 1971, NULL);

-- Place: Disneyland (landmark, California)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_disneyland', 'place', 'disneyland', 'Disneyland', 'published', 'Disneyland is a famous landmark in California, United States. Original Disney theme park in Anaheim, California. Opened by Walt Disney himself.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_disneyland', 'landmark', 'US', 1955, NULL);

-- Place: Kennedy Space Center (landmark, Florida)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_kennedy-space-center', 'place', 'kennedy-space-center', 'Kennedy Space Center', 'published', 'Kennedy Space Center is a famous landmark in Florida, United States. NASA launch complex on Merritt Island. Site of Apollo missions and Space Shuttle launches.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_kennedy-space-center', 'landmark', 'US', 1968, NULL);

-- Place: Johnson Space Center (landmark, Texas)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_johnson-space-center', 'place', 'johnson-space-center', 'Johnson Space Center', 'published', 'Johnson Space Center is a famous landmark in Texas, United States. NASA''s primary astronaut training facility and mission control in Houston.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_johnson-space-center', 'landmark', 'US', 1961, NULL);

-- Place: Smithsonian Institution (landmark, District of Columbia)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_smithsonian-institution', 'place', 'smithsonian-institution', 'Smithsonian Institution', 'published', 'Smithsonian Institution is a famous landmark in District of Columbia, United States. Largest museum complex in the world, including National Museum of American History.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_smithsonian-institution', 'landmark', 'US', 1846, NULL);

-- Place: Getty Center (landmark, California)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_getty-center', 'place', 'getty-center', 'Getty Center', 'published', 'Getty Center is a famous landmark in California, United States. Art museum in Los Angeles founded by J. Paul Getty. Houses European paintings and photography.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_getty-center', 'landmark', 'US', 1997, NULL);

-- Place: Metropolitan Museum of Art (landmark, New York)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_metropolitan-museum-of-art', 'place', 'metropolitan-museum-of-art', 'Metropolitan Museum of Art', 'published', 'Metropolitan Museum of Art is a famous landmark in New York, United States. The Met. Largest art museum in the US, on the east side of Central Park.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_metropolitan-museum-of-art', 'landmark', 'US', 1870, NULL);

-- Place: Rock and Roll Hall of Fame (landmark, Ohio)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_rock-and-roll-hall-of-fame', 'place', 'rock-and-roll-hall-of-fame', 'Rock and Roll Hall of Fame', 'published', 'Rock and Roll Hall of Fame is a famous landmark in Ohio, United States. Museum and hall of fame in Cleveland dedicated to rock music history.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_rock-and-roll-hall-of-fame', 'landmark', 'US', 1983, NULL);

-- Place: Pro Football Hall of Fame (landmark, Ohio)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_pro-football-hall-of-fame', 'place', 'pro-football-hall-of-fame', 'Pro Football Hall of Fame', 'published', 'Pro Football Hall of Fame is a famous landmark in Ohio, United States. Hall of fame for professional football in Canton.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_pro-football-hall-of-fame', 'landmark', 'US', 1963, NULL);

-- Place: Baseball Hall of Fame (landmark, New York)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_baseball-hall-of-fame', 'place', 'baseball-hall-of-fame', 'Baseball Hall of Fame', 'published', 'Baseball Hall of Fame is a famous landmark in New York, United States. National Baseball Hall of Fame and Museum in Cooperstown.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_baseball-hall-of-fame', 'landmark', 'US', 1936, NULL);

-- Place: Harvard University (university, Massachusetts)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_harvard-university', 'place', 'harvard-university', 'Harvard University', 'published', 'Harvard University is a famous university in Massachusetts, United States. Oldest institution of higher education in the US. Ivy League. Cambridge, MA.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_harvard-university', 'university', 'US', 1636, NULL);

-- Place: Yale University (university, Connecticut)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_yale-university', 'place', 'yale-university', 'Yale University', 'published', 'Yale University is a famous university in Connecticut, United States. Ivy League research university in New Haven, CT. Third oldest in US.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_yale-university', 'university', 'US', 1701, NULL);

-- Place: Princeton University (university, New Jersey)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_princeton-university', 'place', 'princeton-university', 'Princeton University', 'published', 'Princeton University is a famous university in New Jersey, United States. Ivy League university in Princeton, NJ. Fourth oldest in US.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_princeton-university', 'university', 'US', 1746, NULL);

-- Place: Columbia University (university, New York)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_columbia-university', 'place', 'columbia-university', 'Columbia University', 'published', 'Columbia University is a famous university in New York, United States. Ivy League university in NYC. Fifth oldest in US. Columbia (Moon landing decision).', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_columbia-university', 'university', 'US', 1754, NULL);

-- Place: University of Pennsylvania (university, Pennsylvania)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_university-of-pennsylvania', 'place', 'university-of-pennsylvania', 'University of Pennsylvania', 'published', 'University of Pennsylvania is a famous university in Pennsylvania, United States. Ivy League university in Philadelphia. Founded by Benjamin Franklin.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_university-of-pennsylvania', 'university', 'US', 1740, NULL);

-- Place: Brown University (university, Rhode Island)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_brown-university', 'place', 'brown-university', 'Brown University', 'published', 'Brown University is a famous university in Rhode Island, United States. Ivy League university in Providence, RI. Seventh oldest in US.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_brown-university', 'university', 'US', 1764, NULL);

-- Place: Dartmouth College (university, New Hampshire)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_dartmouth-college', 'place', 'dartmouth-college', 'Dartmouth College', 'published', 'Dartmouth College is a famous university in New Hampshire, United States. Ivy League college in Hanover, NH. Last of the nine colonial colleges.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_dartmouth-college', 'university', 'US', 1769, NULL);

-- Place: Cornell University (university, New York)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_cornell-university', 'place', 'cornell-university', 'Cornell University', 'published', 'Cornell University is a famous university in New York, United States. Ivy League university in Ithaca, NY. Strong in engineering and agriculture.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_cornell-university', 'university', 'US', 1865, NULL);

-- Place: Stanford University (university, California)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_stanford-university', 'place', 'stanford-university', 'Stanford University', 'published', 'Stanford University is a famous university in California, United States. Elite private research university in Palo Alto. Heart of Silicon Valley. Leland Stanford founded.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_stanford-university', 'university', 'US', 1885, NULL);

-- Place: MIT (Massachusetts Institute of Technology) (university, Massachusetts)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_mit-massachusetts-institute-of-technology', 'place', 'mit-massachusetts-institute-of-technology', 'MIT (Massachusetts Institute of Technology)', 'published', 'MIT (Massachusetts Institute of Technology) is a famous university in Massachusetts, United States. Elite private research university in Cambridge, MA. Premier STEM school.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_mit-massachusetts-institute-of-technology', 'university', 'US', 1861, NULL);

-- Place: California Institute of Technology (Caltech) (university, California)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_california-institute-of-technology-caltech', 'place', 'california-institute-of-technology-caltech', 'California Institute of Technology (Caltech)', 'published', 'California Institute of Technology (Caltech) is a famous university in California, United States. Elite private research university in Pasadena. Premier STEM school. NASA JPL managed.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_california-institute-of-technology-caltech', 'university', 'US', 1891, NULL);

-- Place: Princeton University (university, New Jersey)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_princeton-university', 'place', 'princeton-university', 'Princeton University', 'published', 'Princeton University is a famous university in New Jersey, United States. Already added above.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_princeton-university', 'university', 'US', 1746, NULL);

-- Place: University of Chicago (university, Illinois)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_university-of-chicago', 'place', 'university-of-chicago', 'University of Chicago', 'published', 'University of Chicago is a famous university in Illinois, United States. Elite private research university in Chicago. Nobel laureates 100+.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_university-of-chicago', 'university', 'US', 1890, NULL);

-- Place: Johns Hopkins University (university, Maryland)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_johns-hopkins-university', 'place', 'johns-hopkins-university', 'Johns Hopkins University', 'published', 'Johns Hopkins University is a famous university in Maryland, United States. Elite private research university in Baltimore. First research university in US.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_johns-hopkins-university', 'university', 'US', 1876, NULL);

-- Place: Northwestern University (university, Illinois)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_northwestern-university', 'place', 'northwestern-university', 'Northwestern University', 'published', 'Northwestern University is a famous university in Illinois, United States. Elite private research university in Evanston, IL. Strong in journalism and business.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_northwestern-university', 'university', 'US', 1851, NULL);

-- Place: Duke University (university, North Carolina)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_duke-university', 'place', 'duke-university', 'Duke University', 'published', 'Duke University is a famous university in North Carolina, United States. Elite private research university in Durham, NC. Major Southern Ivy-equivalent.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_duke-university', 'university', 'US', 1838, NULL);

-- Place: Vanderbilt University (university, Tennessee)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_vanderbilt-university', 'place', 'vanderbilt-university', 'Vanderbilt University', 'published', 'Vanderbilt University is a famous university in Tennessee, United States. Elite private research university in Nashville. Major Southern university.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_vanderbilt-university', 'university', 'US', 1873, NULL);

-- Place: Rice University (university, Texas)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_rice-university', 'place', 'rice-university', 'Rice University', 'published', 'Rice University is a famous university in Texas, United States. Elite private research university in Houston. Strong STEM.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_rice-university', 'university', 'US', 1912, NULL);

-- Place: Emory University (university, Georgia)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_emory-university', 'place', 'emory-university', 'Emory University', 'published', 'Emory University is a famous university in Georgia, United States. Elite private research university in Atlanta. Major Southern university.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_emory-university', 'university', 'US', 1836, NULL);

-- Place: Georgetown University (university, District of Columbia)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_georgetown-university', 'place', 'georgetown-university', 'Georgetown University', 'published', 'Georgetown University is a famous university in District of Columbia, United States. Elite private research university in DC. Oldest Jesuit and Catholic university in US.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_georgetown-university', 'university', 'US', 1789, NULL);

-- Place: University of Virginia (university, Virginia)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_university-of-virginia', 'place', 'university-of-virginia', 'University of Virginia', 'published', 'University of Virginia is a famous university in Virginia, United States. Public research university in Charlottesville. Founded by Thomas Jefferson.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_university-of-virginia', 'university', 'US', 1819, NULL);

-- Place: University of Michigan (university, Michigan)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_university-of-michigan', 'place', 'university-of-michigan', 'University of Michigan', 'published', 'University of Michigan is a famous university in Michigan, United States. Major public research university in Ann Arbor. Top public university in US.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_university-of-michigan', 'university', 'US', 1817, NULL);

-- Place: University of California, Berkeley (university, California)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_university-of-california-berkeley', 'place', 'university-of-california-berkeley', 'University of California, Berkeley', 'published', 'University of California, Berkeley is a famous university in California, United States. Major public research university in Berkeley. Flagship of UC system.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_university-of-california-berkeley', 'university', 'US', 1868, NULL);

-- Place: UCLA (university, California)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_ucla', 'place', 'ucla', 'UCLA', 'published', 'UCLA is a famous university in California, United States. Major public research university in Los Angeles. UC system.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_ucla', 'university', 'US', 1919, NULL);

-- Place: University of Texas at Austin (university, Texas)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_university-of-texas-at-austin', 'place', 'university-of-texas-at-austin', 'University of Texas at Austin', 'published', 'University of Texas at Austin is a famous university in Texas, United States. Major public research university in Austin. Flagship of UT system.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_university-of-texas-at-austin', 'university', 'US', 1883, NULL);

-- Place: University of Wisconsin-Madison (university, Wisconsin)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_university-of-wisconsin-madison', 'place', 'university-of-wisconsin-madison', 'University of Wisconsin-Madison', 'published', 'University of Wisconsin-Madison is a famous university in Wisconsin, United States. Major public research university in Madison. Big Ten.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_university-of-wisconsin-madison', 'university', 'US', 1848, NULL);

-- Place: Ohio State University (university, Ohio)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_ohio-state-university', 'place', 'ohio-state-university', 'Ohio State University', 'published', 'Ohio State University is a famous university in Ohio, United States. Major public research university in Columbus. Big Ten.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_ohio-state-university', 'university', 'US', 1870, NULL);

-- Place: University of Florida (university, Florida)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_university-of-florida', 'place', 'university-of-florida', 'University of Florida', 'published', 'University of Florida is a famous university in Florida, United States. Major public research university in Gainesville.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_university-of-florida', 'university', 'US', 1853, NULL);

-- Place: University of Miami (university, Florida)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_university-of-miami', 'place', 'university-of-miami', 'University of Miami', 'published', 'University of Miami is a famous university in Florida, United States. Private research university in Coral Gables, FL.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_university-of-miami', 'university', 'US', 1925, NULL);

-- Place: Georgia Tech (university, Georgia)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_georgia-tech', 'place', 'georgia-tech', 'Georgia Tech', 'published', 'Georgia Tech is a famous university in Georgia, United States. Public research university in Atlanta. Premier engineering school.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_georgia-tech', 'university', 'US', 1885, NULL);

-- Place: Carnegie Mellon University (university, Pennsylvania)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_carnegie-mellon-university', 'place', 'carnegie-mellon-university', 'Carnegie Mellon University', 'published', 'Carnegie Mellon University is a famous university in Pennsylvania, United States. Private research university in Pittsburgh. Premier CS and engineering school.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_carnegie-mellon-university', 'university', 'US', 1900, NULL);

-- Place: University of Southern California (university, California)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_university-of-southern-california', 'place', 'university-of-southern-california', 'University of Southern California', 'published', 'University of Southern California is a famous university in California, United States. Major private research university in Los Angeles.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_university-of-southern-california', 'university', 'US', 1880, NULL);

-- Place: New York University (university, New York)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_new-york-university', 'place', 'new-york-university', 'New York University', 'published', 'New York University is a famous university in New York, United States. Major private research university in NYC. Largest private university in US.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_new-york-university', 'university', 'US', 1831, NULL);

-- Place: Boston University (university, Massachusetts)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_boston-university', 'place', 'boston-university', 'Boston University', 'published', 'Boston University is a famous university in Massachusetts, United States. Major private research university in Boston.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_boston-university', 'university', 'US', 1839, NULL);

-- Place: Boston College (university, Massachusetts)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_boston-college', 'place', 'boston-college', 'Boston College', 'published', 'Boston College is a famous university in Massachusetts, United States. Private Jesuit research university in Chestnut Hill, MA.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_boston-college', 'university', 'US', 1863, NULL);

-- Place: Howard University (university, District of Columbia)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_howard-university', 'place', 'howard-university', 'Howard University', 'published', 'Howard University is a famous university in District of Columbia, United States. Historically Black University in DC. Major HBCU.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_howard-university', 'university', 'US', 1867, NULL);

-- Place: Spelman College (university, Georgia)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_spelman-college', 'place', 'spelman-college', 'Spelman College', 'published', 'Spelman College is a famous university in Georgia, United States. Historically Black Women''s College in Atlanta. Major HBCU.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_spelman-college', 'university', 'US', 1881, NULL);

-- Place: Morehouse College (university, Georgia)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_morehouse-college', 'place', 'morehouse-college', 'Morehouse College', 'published', 'Morehouse College is a famous university in Georgia, United States. Historically Black Men''s College in Atlanta. Martin Luther King Jr. alma mater.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_morehouse-college', 'university', 'US', 1867, NULL);

-- Place: Tuskegee University (university, Alabama)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_tuskegee-university', 'place', 'tuskegee-university', 'Tuskegee University', 'published', 'Tuskegee University is a famous university in Alabama, United States. Historically Black University founded by Booker T. Washington. Major HBCU.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_tuskegee-university', 'university', 'US', 1881, NULL);

-- Place: Hampton University (university, Virginia)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_hampton-university', 'place', 'hampton-university', 'Hampton University', 'published', 'Hampton University is a famous university in Virginia, United States. Historically Black University in Hampton, VA. Major HBCU.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_hampton-university', 'university', 'US', 1868, NULL);

-- Place: Fisk University (university, Tennessee)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_fisk-university', 'place', 'fisk-university', 'Fisk University', 'published', 'Fisk University is a famous university in Tennessee, United States. Historically Black University in Nashville. Major HBCU.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_fisk-university', 'university', 'US', 1866, NULL);

-- Place: Howard University Law School (university, District of Columbia)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_howard-university-law-school', 'place', 'howard-university-law-school', 'Howard University Law School', 'published', 'Howard University Law School is a famous university in District of Columbia, United States. Thurgood Marshall''s alma mater. Major HBCU law school.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_howard-university-law-school', 'university', 'US', 1869, NULL);

-- Place: United States Military Academy (West Point) (university, New York)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_united-states-military-academy-west-point', 'place', 'united-states-military-academy-west-point', 'United States Military Academy (West Point)', 'published', 'United States Military Academy (West Point) is a famous university in New York, United States. Federal service academy in West Point, NY. Trains US Army officers.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_united-states-military-academy-west-point', 'university', 'US', 1802, NULL);

-- Place: United States Naval Academy (university, Maryland)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_united-states-naval-academy', 'place', 'united-states-naval-academy', 'United States Naval Academy', 'published', 'United States Naval Academy is a famous university in Maryland, United States. Federal service academy in Annapolis, MD. Trains US Navy and Marine officers.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_united-states-naval-academy', 'university', 'US', 1845, NULL);

-- Place: United States Air Force Academy (university, Colorado)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_united-states-air-force-academy', 'place', 'united-states-air-force-academy', 'United States Air Force Academy', 'published', 'United States Air Force Academy is a famous university in Colorado, United States. Federal service academy near Colorado Springs. Trains US Air Force officers.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_united-states-air-force-academy', 'university', 'US', 1954, NULL);

-- Place: United States Coast Guard Academy (university, Connecticut)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_united-states-coast-guard-academy', 'place', 'united-states-coast-guard-academy', 'United States Coast Guard Academy', 'published', 'United States Coast Guard Academy is a famous university in Connecticut, United States. Federal service academy in New London, CT. Trains US Coast Guard officers.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_united-states-coast-guard-academy', 'university', 'US', 1876, NULL);

-- Place: US Merchant Marine Academy (university, New York)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_us-merchant-marine-academy', 'place', 'us-merchant-marine-academy', 'US Merchant Marine Academy', 'published', 'US Merchant Marine Academy is a famous university in New York, United States. Federal service academy in Kings Point, NY. Trains merchant marine officers.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_us-merchant-marine-academy', 'university', 'US', 1943, NULL);

-- Place: Williams College (university, Massachusetts)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_williams-college', 'place', 'williams-college', 'Williams College', 'published', 'Williams College is a famous university in Massachusetts, United States. Private liberal arts college in Williamstown, MA. Top small college.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_williams-college', 'university', 'US', 1793, NULL);

-- Place: Amherst College (university, Massachusetts)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_amherst-college', 'place', 'amherst-college', 'Amherst College', 'published', 'Amherst College is a famous university in Massachusetts, United States. Private liberal arts college in Amherst, MA. Top small college.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_amherst-college', 'university', 'US', 1821, NULL);

-- Place: Wellesley College (university, Massachusetts)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_wellesley-college', 'place', 'wellesley-college', 'Wellesley College', 'published', 'Wellesley College is a famous university in Massachusetts, United States. Private women''s liberal arts college in Wellesley, MA. Hillary Clinton and Madeleine Albright alma mater.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_wellesley-college', 'university', 'US', 1870, NULL);

-- Place: Smith College (university, Massachusetts)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_smith-college', 'place', 'smith-college', 'Smith College', 'published', 'Smith College is a famous university in Massachusetts, United States. Private women''s liberal arts college in Northampton, MA.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_smith-college', 'university', 'US', 1871, NULL);

-- Place: Mount Holyoke College (university, Massachusetts)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('plc_mount-holyoke-college', 'place', 'mount-holyoke-college', 'Mount Holyoke College', 'published', 'Mount Holyoke College is a famous university in Massachusetts, United States. Private women''s liberal arts college in South Hadley, MA. First of the Seven Sisters.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('plc_mount-holyoke-college', 'university', 'US', 1837, NULL);

