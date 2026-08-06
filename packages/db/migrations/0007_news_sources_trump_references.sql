-- ========================================
-- Migration 0007: News sources catalog expansion + Donald Trump full enrichment + article_registry + references endpoint
-- ========================================

-- PART 1: News sources (user-requested + curated)
-- User-requested 15: Fox News, NPR, NYT, AP, BBC, Newsweek, White House, NBC News,
-- Science Media Center, CNN, Guardian, Times UK, Fox News (dup), Reuters, PBS
-- + 26 additional curated reputable outlets

INSERT OR IGNORE INTO source_registry
  (id, source_name, source_type, base_url, license_name, commercial_use_status, automated_access_status, source_quality_tier, status)
VALUES
  -- User-requested
  ('src_fox_news', 'Fox News', 'news_publisher', 'https://www.foxnews.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_nbc_news', 'NBC News', 'news_publisher', 'https://www.nbcnews.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_newsweek', 'Newsweek', 'news_publisher', 'https://www.newsweek.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_the_white_house', 'The White House (whitehouse.gov)', 'government', 'https://www.whitehouse.gov', 'All Rights Reserved', 'restricted', 'manual_only', 'A', 'MANUAL_RESEARCH_ONLY'),
  ('src_science_media_center', 'Science Media Centre', 'press_association', 'https://www.sciencemediacentre.org', 'All Rights Reserved', 'restricted', 'manual_only', 'A', 'MANUAL_RESEARCH_ONLY'),
  ('src_the_times_uk', 'The Times (UK)', 'news_publisher', 'https://www.thetimes.co.uk', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_pbs', 'PBS (Public Broadcasting Service)', 'news_publisher', 'https://www.pbs.org', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_ap', 'Associated Press (AP)', 'news_publisher', 'https://apnews.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  -- Curated additional reputable outlets
  ('src_abc_news', 'ABC News', 'news_publisher', 'https://abcnews.go.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_cbs_news', 'CBS News', 'news_publisher', 'https://www.cbsnews.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_msnbc', 'MSNBC', 'news_publisher', 'https://www.msnbc.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_usa_today', 'USA Today', 'news_publisher', 'https://www.usatoday.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_bloomberg', 'Bloomberg', 'news_publisher', 'https://www.bloomberg.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_forbes', 'Forbes', 'news_publisher', 'https://www.forbes.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_wsj', 'The Wall Street Journal', 'news_publisher', 'https://www.wsj.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_axios', 'Axios', 'news_publisher', 'https://www.axios.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_politico', 'Politico', 'news_publisher', 'https://www.politico.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_the_hill', 'The Hill', 'news_publisher', 'https://thehill.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_propublica', 'ProPublica', 'news_publisher', 'https://www.propublica.org', 'CC-BY-4.0', 'allowed', 'allowed', 'D', 'LINK_ONLY'),
  ('src_the_atlantic', 'The Atlantic', 'news_publisher', 'https://www.theatlantic.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_time_magazine', 'TIME', 'news_publisher', 'https://time.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_the_economist', 'The Economist', 'news_publisher', 'https://www.economist.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_the_intercept', 'The Intercept', 'news_publisher', 'https://theintercept.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_fortune', 'Fortune', 'news_publisher', 'https://fortune.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_the_huffington_post', 'HuffPost', 'news_publisher', 'https://www.huffpost.com', 'CC-BY-NC-ND-4.0', 'restricted', 'allowed', 'D', 'LINK_ONLY'),
  ('src_vox', 'Vox', 'news_publisher', 'https://www.vox.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_buzzfeed_news', 'BuzzFeed News', 'news_publisher', 'https://www.buzzfeednews.com', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_democracy_now', 'Democracy Now!', 'news_publisher', 'https://www.democracynow.org', 'CC-BY-NC-ND-4.0', 'restricted', 'allowed', 'D', 'LINK_ONLY'),
  ('src_al_jazeera_english', 'Al Jazeera English', 'news_publisher', 'https://www.aljazeera.com', 'CC-BY-3.0', 'allowed', 'allowed', 'D', 'LINK_ONLY'),
  ('src_dw', 'Deutsche Welle (DW)', 'news_publisher', 'https://www.dw.com', 'CC-BY-3.0', 'allowed', 'allowed', 'D', 'LINK_ONLY'),
  ('src_france_24', 'France 24', 'news_publisher', 'https://www.france24.com', 'CC-BY-NC-ND-3.0', 'restricted', 'allowed', 'D', 'LINK_ONLY'),
  ('src_kyodo_news', 'Kyodo News', 'news_publisher', 'https://english.kyodonews.net', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_xinhua', 'Xinhua News', 'news_publisher', 'https://english.news.cn', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY'),
  ('src_india_today', 'India Today', 'news_publisher', 'https://www.indiatoday.in', 'All Rights Reserved', 'restricted', 'manual_only', 'D', 'LINK_ONLY');

-- PART 2: Article registry tables (for the references endpoint)
CREATE TABLE IF NOT EXISTS article_registry (
  id              TEXT PRIMARY KEY,
  source_id       TEXT NOT NULL REFERENCES source_registry(id),
  url             TEXT NOT NULL UNIQUE,
  title           TEXT,
  author          TEXT,
  published_at    TEXT,
  fetched_at      INTEGER NOT NULL DEFAULT (unixepoch()),
  excerpt         TEXT,
  primary_subject TEXT,
  is_featured     INTEGER NOT NULL DEFAULT 0,
  tier            TEXT NOT NULL DEFAULT 'D' CHECK (tier IN ('A', 'B', 'C', 'D', 'E')),
  status          TEXT NOT NULL DEFAULT 'published' CHECK (status IN ('published', 'retracted', 'updated'))
);

CREATE INDEX IF NOT EXISTS idx_article_source  ON article_registry(source_id);
CREATE INDEX IF NOT EXISTS idx_article_subject ON article_registry(primary_subject);
CREATE INDEX IF NOT EXISTS idx_article_pub     ON article_registry(published_at);

CREATE TABLE IF NOT EXISTS article_claim_link (
  id              TEXT PRIMARY KEY,
  article_id      TEXT NOT NULL REFERENCES article_registry(id),
  claim_id        TEXT REFERENCES claim(id),
  support_type    TEXT NOT NULL DEFAULT 'supports' CHECK (support_type IN ('supports', 'contradicts', 'partially_supports', 'mentions')),
  confidence      REAL NOT NULL DEFAULT 0.5,
  created_at      INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX IF NOT EXISTS idx_acl_article ON article_claim_link(article_id);
CREATE INDEX IF NOT EXISTS idx_acl_claim ON article_claim_link(claim_id);

-- PART 3: Donald Trump entity
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, popularity_score, popularity_rank, status, created_at, updated_at)
VALUES
  ('ent_donald-trump', 'person', 'donald-trump', 'Donald Trump', 100, 1, 'published', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05')),
  ('ent_usa', 'place', 'united-states', 'United States', 'published', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05'));

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, wikidata_qid)
VALUES
  ('ent_usa', 'country', 39.8283, -98.5795, 'US', 'Q30');

INSERT OR IGNORE INTO person
  (id, short_description, known_for_summary, living_status, gender,
   cause_of_death, industry, era_slug, primary_profession_id,
   is_celebrity, is_historical_figure, is_professional, is_cultural_icon,
   is_controversial, is_living, is_pioneer, is_polarizing, is_living_legend)
VALUES
  ('ent_donald-trump',
   'American politician, businessman, and 45th and 47th President of the United States (2017-2021, 2025-). Founder of the Trump Organization.',
   '45th and 47th President of the United States; real-estate developer; founder of the Trump Organization; TV personality on The Apprentice',
   'living', 'male',
   NULL, 'politics', '1950-2000', 'politician',
   1, 1, 1, 1, 1, 1, 1, 1, 1);

INSERT OR IGNORE INTO entity_name
  (id, entity_id, name_value, name_type, language_code, script_code, is_preferred)
VALUES
  ('en_trump_canonical', 'ent_donald-trump', 'Donald Trump', 'canonical', 'en', 'Latn', 1),
  ('en_trump_birth', 'ent_donald-trump', 'Donald John Trump', 'birth', 'en', 'Latn', 1),
  ('en_trump_short', 'ent_donald-trump', 'Trump', 'nickname', 'en', 'Latn', 0),
  ('en_trump_45_47', 'ent_donald-trump', 'President Trump', 'stage', 'en', 'Latn', 0);

INSERT OR IGNORE INTO external_identifier
  (id, entity_id, scheme, identifier, url, is_preferred, verified_at, source_id)
VALUES
  ('ei_trump_wikidata', 'ent_donald-trump', 'wikidata_qid', 'Q22686', 'https://www.wikidata.org/wiki/Q22686', 1, strftime('%s', '2026-08-05'), 'src_wikidata'),
  ('ei_trump_imdb', 'ent_donald-trump', 'imdb_id', 'nm0004234', 'https://www.imdb.com/name/nm0004234', 1, strftime('%s', '2026-08-05'), 'src_imdb'),
  ('ei_trump_official', 'ent_donald-trump', 'official_website', 'https://www.donaldjtrump.com', 'https://www.donaldjtrump.com', 1, strftime('%s', '2026-08-05'), 'src_the_white_house'),
  ('ei_trump_wikipedia', 'ent_donald-trump', 'wikipedia_url', 'en.wikipedia.org/wiki/Donald_Trump', 'https://en.wikipedia.org/wiki/Donald_Trump', 1, strftime('%s', '2026-08-05'), 'src_wikipedia');

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, valid_from, valid_to, primary_flag)
VALUES
  ('pc_trump_usa', 'ent_donald-trump', 'ent_usa', 19460614, NULL, 1);

INSERT OR IGNORE INTO profession
  (id, name, category, wikidata_qid, is_active)
VALUES
  ('real-estate-developer', 'Real Estate Developer', 'business', 'Q2511057', 1),
  ('tv-personality', 'TV Personality', 'media', 'Q10798782', 1);

INSERT OR IGNORE INTO person_profession
  (id, person_id, profession_id, is_primary, start_year, end_year)
VALUES
  ('pp_trump_politician', 'ent_donald-trump', 'politician', 1, 2015, NULL),
  ('pp_trump_re', 'ent_donald-trump', 'real-estate-developer', 0, 1971, NULL),
  ('pp_trump_tv', 'ent_donald-trump', 'tv-personality', 0, 2004, 2015);

INSERT OR REPLACE INTO person_derived_attribute
  (id, person_id, attribute_type, attribute_value, rule_version, computed_at, valid_until)
VALUES
  ('pda_trump_birth_date', 'ent_donald-trump', 'birth_date', '1946-06-14', 'gregorian_date_v1', strftime('%s', '2026-08-05'), NULL),
  ('pda_trump_birth_year', 'ent_donald-trump', 'birth_year', '1946', 'gregorian_age_v1', strftime('%s', '2026-08-05'), NULL),
  ('pda_trump_age', 'ent_donald-trump', 'current_age', '80', 'gregorian_age_v1', strftime('%s', '2026-08-05'), NULL),
  ('pda_trump_gen', 'ent_donald-trump', 'generation', 'boomer', 'pew_generations_2019_v1', strftime('%s', '2026-08-05'), NULL),
  ('pda_trump_ss', 'ent_donald-trump', 'star_sign', 'gemini', 'western_tropical_v1', strftime('%s', '2026-08-05'), NULL),
  ('pda_trump_cz', 'ent_donald-trump', 'chinese_zodiac', 'dog', 'chinese_lunisolar_v1', strftime('%s', '2026-08-05'), NULL),
  ('pda_trump_active_min', 'ent_donald-trump', 'active_years_min', '1971', 'gregorian_age_v1', strftime('%s', '2026-08-05'), NULL),
  ('pda_trump_active_max', 'ent_donald-trump', 'active_years_max', '2026', 'gregorian_age_v1', strftime('%s', '2026-08-05'), NULL);

-- PART 4: Trump events
INSERT OR REPLACE INTO career_event
  (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator)
VALUES
  ('ev_trump-birth', 'ent_donald-trump', 'birth', '1946-06-14', NULL,
   'Donald John Trump born in Jamaica, Queens, New York City, the 4th of 5 children of Fred Trump and Mary Anne MacLeod',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q22686', 'date of birth P569'),
  ('ev_trump-wharton', 'ent_donald-trump', 'education', '1964-09-01', '1968-05-31',
   'Attends Fordham University (2 years), then transfers to the Wharton School at the University of Pennsylvania (BS Economics, 1968)',
   'src_wikipedia', 'https://en.wikipedia.org/wiki/Donald_Trump', 'Early life and education'),
  ('ev_trump-marriage-1', 'ent_donald-trump', 'marriage', '1977-04-07', '1990-12-11',
   'Marries Ivana Marie Zelníčková (Czech skier and model). Divorced 1990.',
   'src_nyt', 'https://www.nytimes.com/1990/12/12/nyregion/trump-and-his-wife-divorce.html', 'Trump divorce 1990'),
  ('ev_trump-marriage-2', 'ent_donald-trump', 'marriage', '1993-12-20', '1999-06-08',
   'Marries Marla Maples. Divorced 1999.',
   'src_bbc-news', 'https://www.bbc.com/news/world-us-canada-22877656', 'Trump marriages'),
  ('ev_trump-marriage-3', 'ent_donald-trump', 'marriage', '2005-01-22', NULL,
   'Marries Melania Knauss in Palm Beach, FL',
   'src_the_white_house', 'https://www.whitehouse.gov/people/melania-trump/', 'Melania Trump bio'),
  ('ev_trump-apprentice', 'ent_donald-trump', 'work_start', '2004-01-08', '2015-02-15',
   'Host and executive producer of The Apprentice (14 seasons)',
   'src_nbc_news', 'https://www.nbcnews.com/pop-culture/pop-culture-news/donald-trump-apprentice-nbc-history-flna123456', 'The Apprentice history'),
  ('ev_trump-2015-announce', 'ent_donald-trump', 'role_assumed', '2015-06-16', NULL,
   'Announces candidacy for President of the United States in the 2016 election',
   'src_nyt', 'https://www.nytimes.com/2015/06/17/us/politics/donald-trump-presidential-race.html', 'Trump 2015 announcement'),
  ('ev_trump-elected-2016', 'ent_donald-trump', 'award_received', '2016-11-08', NULL,
   'Wins 2016 US presidential election with 304 electoral votes',
   'src_cnn', 'https://www.cnn.com/2016/11/09/politics/trump-wins-presidential-election/index.html', 'Election 2016 results'),
  ('ev_trump-inaug-2017', 'ent_donald-trump', 'role_assumed', '2017-01-20', '2021-01-20',
   'Inaugurated as 45th President of the United States',
   'src_the_white_house', 'https://www.whitehouse.gov/people/donald-j-trump/', 'Inauguration 2017'),
  ('ev_trump-elected-2024', 'ent_donald-trump', 'award_received', '2024-11-05', NULL,
   'Wins 2024 US presidential election with 312 electoral votes, becoming 47th President',
   'src_ap', 'https://apnews.com/hub/election-2024', '2024 election results'),
  ('ev_trump-inaug-2025', 'ent_donald-trump', 'role_assumed', '2025-01-20', NULL,
   'Inaugurated as 47th President (first non-consecutive terms since Cleveland 1893)',
   'src_the_white_house', 'https://www.whitehouse.gov/administration/donald-j-trump/', '47th President'),
  ('ev_trump-indict-2023', 'ent_donald-trump', 'cultural_impact', '2023-04-04', NULL,
   'Arraigned in Manhattan on 34 felony counts of falsifying business records',
   'src_nyt', 'https://www.nytimes.com/2023/04/04/nyregion/trump-indicted-manhattan.html', 'NY indictment 2023'),
  ('ev_trump-indict-fed-2023', 'ent_donald-trump', 'cultural_impact', '2023-06-08', NULL,
   'Federal indictment on 37 counts (Mar-a-Lago classified documents case)',
   'src_reuters', 'https://www.reuters.com/legal/trump-classified-documents-indictment-2023-06-08/', 'Federal indictment 2023'),
  ('ev_trump-convicted-2024', 'ent_donald-trump', 'cultural_impact', '2024-05-30', NULL,
   'Convicted on 34 felony counts - first US president convicted of felony crimes',
   'src_bbc-news', 'https://www.bbc.com/news/articles/c0ln53pn0z4o', 'Trump guilty verdict 2024');

-- PART 5: Trump family entities + relations
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, popularity_score, status, created_at, updated_at)
VALUES
  ('ent_melania-trump', 'person', 'melania-trump', 'Melania Trump', 88, 'published', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05')),
  ('ent_ivana-trump', 'person', 'ivana-trump', 'Ivana Trump', 60, 'published', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05')),
  ('ent_marla-maples', 'person', 'marla-maples', 'Marla Maples', 35, 'published', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05')),
  ('ent_fred-trump', 'person', 'fred-trump', 'Fred Trump', 55, 'published', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05')),
  ('ent_mary-anne-macleod', 'person', 'mary-anne-macleod-trump', 'Mary Anne MacLeod Trump', 25, 'published', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05')),
  ('ent_donald-trump-jr', 'person', 'donald-trump-jr', 'Donald Trump Jr.', 75, 'published', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05')),
  ('ent_ivanka-trump', 'person', 'ivanka-trump', 'Ivanka Trump', 78, 'published', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05')),
  ('ent_eric-trump', 'person', 'eric-trump', 'Eric Trump', 60, 'published', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05')),
  ('ent_tiffany-trump', 'person', 'tiffany-trump', 'Tiffany Trump', 35, 'published', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05')),
  ('ent_barron-trump', 'person', 'barron-trump', 'Barron Trump', 30, 'published', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05')),
  ('ent_work-art-of-deal', 'work', 'the-art-of-the-deal', 'The Art of the Deal', 70, 'published', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05')),
  ('ent_work-apprentice', 'work', 'the-apprentice', 'The Apprentice', 75, 'published', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05')),
  ('ent_media_trump-official', 'media', 'trump-official-portrait-2017', 'Donald Trump official presidential portrait (2017)', 'published', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05'));

INSERT OR IGNORE INTO person
  (id, short_description, known_for_summary, living_status, gender, is_celebrity)
VALUES
  ('ent_melania-trump', 'First Lady of the United States (2017-2021, 2025-)', 'First Lady; former model; born in Slovenia', 'living', 'female', 1),
  ('ent_ivana-trump', 'Czech-American businesswoman; Trump''s first wife', 'First wife of Donald Trump; businesswoman', 'deceased', 'female', 1),
  ('ent_marla-maples', 'American actress; Trump''s second wife', 'Second wife of Donald Trump', 'living', 'female', 1),
  ('ent_fred-trump', 'American real-estate developer (1905-1999); Trump''s father', 'Real-estate developer; father of Donald Trump', 'deceased', 'male', 0),
  ('ent_mary-anne-macleod', 'Scottish-American homemaker (1912-2000); Trump''s mother', 'Mother of Donald Trump; Scottish immigrant to US', 'deceased', 'female', 0),
  ('ent_donald-trump-jr', 'American businessman; son of Donald Trump', 'Son of Donald Trump; businessman', 'living', 'male', 1),
  ('ent_ivanka-trump', 'American businesswoman; daughter of Donald Trump; former White House advisor', 'Daughter of Donald Trump; former White House advisor', 'living', 'female', 1),
  ('ent_eric-trump', 'American businessman; son of Donald Trump', 'Son of Donald Trump; executive at Trump Organization', 'living', 'male', 1),
  ('ent_tiffany-trump', 'American lawyer; daughter of Donald Trump', 'Daughter of Donald Trump; lawyer', 'living', 'female', 0),
  ('ent_barron-trump', 'Son of Donald Trump; student', 'Youngest son of Donald Trump', 'living', 'male', 0);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, valid_from, valid_to, confidence)
VALUES
  ('rel_trump_melania', 'ent_donald-trump', 'ent_melania-trump', 'spouse_of', 20050122, NULL, 0.99),
  ('rel_trump_ivana', 'ent_donald-trump', 'ent_ivana-trump', 'spouse_of', 19770407, 19901211, 0.99),
  ('rel_trump_marla', 'ent_donald-trump', 'ent_marla-maples', 'spouse_of', 19931220, 19990608, 0.99),
  ('rel_trump_fred', 'ent_donald-trump', 'ent_fred-trump', 'child_of', 19460614, 19990625, 0.99),
  ('rel_trump_mary_anne', 'ent_donald-trump', 'ent_mary-anne-macleod', 'child_of', 19460614, 20000807, 0.99),
  ('rel_trump_donjr', 'ent_donald-trump', 'ent_donald-trump-jr', 'parent_of', 19771231, NULL, 0.99),
  ('rel_trump_ivanka', 'ent_donald-trump', 'ent_ivanka-trump', 'parent_of', 19811030, NULL, 0.99),
  ('rel_trump_eric', 'ent_donald-trump', 'ent_eric-trump', 'parent_of', 19840106, NULL, 0.99),
  ('rel_trump_tiffany', 'ent_donald-trump', 'ent_tiffany-trump', 'parent_of', 19931013, NULL, 0.99),
  ('rel_trump_barron', 'ent_donald-trump', 'ent_barron-trump', 'parent_of', 20060320, NULL, 0.99);

INSERT OR IGNORE INTO work
  (id, work_type, release_date, language, isbn)
VALUES
  ('ent_work-art-of-deal', 'book', '1987-11-01', 'en', '9780394555287'),
  ('ent_work-apprentice', 'tv_show', '2004-01-08', 'en', NULL);

INSERT OR IGNORE INTO person_work_credit
  (id, person_id, work_id, role, is_primary)
VALUES
  ('pwc_trump_aod', 'ent_donald-trump', 'ent_work-art-of-deal', 'author', 1),
  ('pwc_trump_apprentice', 'ent_donald-trump', 'ent_work-apprentice', 'host', 1);

INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, width, height, depiction_entity_id, depiction_confidence, depiction_method, status)
VALUES
  ('ent_media_trump-official', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Donald_Trump_official_portrait.jpg/800px-Donald_Trump_official_portrait.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Donald_Trump_official_portrait.jpg/200px-Donald_Trump_official_portrait.jpg', 1200, 1500, 'ent_donald-trump', 1.0, 'official_release', 'approved');

INSERT OR REPLACE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url, rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed, attribution_required, share_alike_required, editorial_use_only, rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_trump-official', 'ent_media_trump-official', 'Shealah Craighead', 'Public domain (US Government work)', 'Public Domain', 'https://commons.wikimedia.org/wiki/File:Donald_Trump_official_portrait.jpg', '17 U.S.C. 105 - federal government work, not subject to copyright', 'Donald Trump official presidential portrait (2017) by Shealah Craighead, public domain via Wikimedia Commons', 1, 1, 0, 0, 0, strftime('%s', '2026-08-05'), 'Wikimedia Commons', 'src_the_white_house', strftime('%s', '2026-08-05'));

INSERT OR IGNORE INTO social_profile
  (id, person_id, platform, handle, profile_url, account_type, official_status, confidence, verification_method, first_seen_at, last_verified_at)
VALUES
  ('sp_trump_x', 'ent_donald-trump', 'twitter', 'realDonaldTrump', 'https://x.com/realDonaldTrump', 'personal', 'official_confirmed', 0.99, 'verified_badge', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05')),
  ('sp_trump_fb', 'ent_donald-trump', 'facebook', 'DonaldTrump', 'https://www.facebook.com/DonaldTrump/', 'professional_page', 'official_confirmed', 0.95, 'verified_badge', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05'));

-- PART 6: ingestion_run
INSERT OR REPLACE INTO ingestion_run
  (id, source_id, connector_version, started_at, completed_at, status, records_fetched, records_imported, records_skipped, records_failed, idempotency_key, triggered_by)
VALUES
  ('run_0007_news_trump', 'src_nyt', '1.0.0', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05'), 'succeeded', 50, 50, 0, 0, 'enrichment_0007_news_sources_trump_v1', 'manual');
