-- ========================================
-- Migration 0035: Fortune 500 2025 (US companies)
-- Generated: 2026-08-08T14:26:18Z
-- Source: https://en.wikipedia.org/wiki/List_of_largest_companies_in_the_United_States_by_revenue
-- 495 companies, top by 2024 revenue
-- Schema: entity (type='organization') + organization
-- Note: Fortune 500 ranks 1-500. Revenue data is from 2024 fiscal year.
-- ========================================

-- Company Walmart (Fortune 500 #1)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_walmart', 'organization', 'walmart', 'Walmart', 'published', 'Walmart is an American retail company headquartered in Bentonville, Arkansas. Founded in 1962, it has approximately 2,100,000 employees and annual revenue of $680,985 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 509, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_walmart', 'retail', 1962, NULL, NULL);

-- Company Amazon (Fortune 500 #2)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_amazon', 'organization', 'amazon', 'Amazon', 'published', 'Amazon is an American retail and cloud computing company headquartered in Seattle, Washington. Founded in 1994, it has approximately 1,556,000 employees and annual revenue of $637,959 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 508, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_amazon', 'technology', 1994, NULL, NULL);

-- Company UnitedHealth Group (Fortune 500 #3)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_unitedhealth', 'organization', 'unitedhealth', 'UnitedHealth Group', 'published', 'UnitedHealth Group is an American healthcare company headquartered in Minnetonka, Minnesota. Founded in 1977, it has approximately 400,000 employees and annual revenue of $400,278 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 507, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_unitedhealth', 'healthcare', 1977, NULL, NULL);

-- Company Apple (Fortune 500 #4)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_apple', 'organization', 'apple', 'Apple', 'published', 'Apple is an American technology company headquartered in Cupertino, California. Founded in 1976, it has approximately 164,000 employees and annual revenue of $391,035 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 506, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_apple', 'technology', 1976, NULL, NULL);

-- Company CVS Health (Fortune 500 #5)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cvs-health', 'organization', 'cvs-health', 'CVS Health', 'published', 'CVS Health is an American healthcare company headquartered in Woonsocket, Rhode Island. Founded in 1963, it has approximately 259,500 employees and annual revenue of $372,809 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 505, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cvs-health', 'healthcare', 1963, NULL, NULL);

-- Company Berkshire Hathaway (Fortune 500 #6)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_berkshire-hathaway', 'organization', 'berkshire-hathaway', 'Berkshire Hathaway', 'published', 'Berkshire Hathaway is an American conglomerate company headquartered in Omaha, Nebraska. Founded in 1839, it has approximately 392,400 employees and annual revenue of $371,433 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 504, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_berkshire-hathaway', 'conglomerate', 1839, NULL, NULL);

-- Company Alphabet (Fortune 500 #7)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_alphabet', 'organization', 'alphabet', 'Alphabet', 'published', 'Alphabet is an American technology and cloud computing company headquartered in Mountain View, California. Founded in 1998, it has approximately 183,323 employees and annual revenue of $350,018 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 503, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_alphabet', 'technology', 1998, NULL, NULL);

-- Company ExxonMobil (Fortune 500 #8)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_exxonmobil', 'organization', 'exxonmobil', 'ExxonMobil', 'published', 'ExxonMobil is an American petroleum company headquartered in Spring, Texas. Founded in 1870, it has approximately 60,900 employees and annual revenue of $349,595 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 502, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_exxonmobil', 'industrial', 1870, NULL, NULL);

-- Company McKesson (Fortune 500 #9)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mckesson', 'organization', 'mckesson', 'McKesson', 'published', 'McKesson is an American pharmacy wholesale company headquartered in Irving, Texas. Founded in 1833, it has approximately 48,000 employees and annual revenue of $308,951 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 501, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mckesson', 'healthcare', 1833, NULL, NULL);

-- Company Cencora (Fortune 500 #10)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cencora', 'organization', 'cencora', 'Cencora', 'published', 'Cencora is an American pharmacy wholesale company headquartered in Conshohocken, Pennsylvania. Founded in 1907, it has approximately 44,000 employees and annual revenue of $293,959 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 500, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cencora', 'healthcare', 1907, NULL, NULL);

-- Company JPMorgan Chase (Fortune 500 #11)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_jpmorgan-chase', 'organization', 'jpmorgan-chase', 'JPMorgan Chase', 'published', 'JPMorgan Chase is an American financials company headquartered in New York City, New York. Founded in 1871, it has approximately 317,233 employees and annual revenue of $278,906 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 499, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_jpmorgan-chase', 'conglomerate', 1871, NULL, NULL);

-- Company Costco Wholesale (Fortune 500 #12)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_costco-wholesale', 'organization', 'costco-wholesale', 'Costco Wholesale', 'published', 'Costco Wholesale is an American retail company headquartered in Issaquah, Washington. Founded in 1976, it has approximately 333,000 employees and annual revenue of $254,453 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 498, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_costco-wholesale', 'retail', 1976, NULL, NULL);

-- Company Cigna (Fortune 500 #13)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cigna', 'organization', 'cigna', 'Cigna', 'published', 'Cigna is an American health insurance company headquartered in Bloomfield, Connecticut. Founded in 1982, it has approximately 72,398 employees and annual revenue of $247,121 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 497, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cigna', 'financial', 1982, NULL, NULL);

-- Company Microsoft (Fortune 500 #14)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_microsoft', 'organization', 'microsoft', 'Microsoft', 'published', 'Microsoft is an American technology company headquartered in Redmond, Washington. Founded in 1975, it has approximately 228,000 employees and annual revenue of $245,122 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 496, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_microsoft', 'technology', 1975, NULL, NULL);

-- Company Cardinal Health (Fortune 500 #15)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cardinal-health', 'organization', 'cardinal-health', 'Cardinal Health', 'published', 'Cardinal Health is an American pharmacy wholesale company headquartered in Dublin, Ohio. Founded in 1971, it has approximately 48,411 employees and annual revenue of $226,827 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 495, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cardinal-health', 'healthcare', 1971, NULL, NULL);

-- Company Chevron (Fortune 500 #16)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_chevron', 'organization', 'chevron', 'Chevron', 'published', 'Chevron is an American petroleum company headquartered in Houston, Texas. Founded in 1879, it has approximately 45,298 employees and annual revenue of $202,792 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 494, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_chevron', 'industrial', 1879, NULL, NULL);

-- Company Bank of America (Fortune 500 #17)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bank-of-america', 'organization', 'bank-of-america', 'Bank of America', 'published', 'Bank of America is an American financials company headquartered in Charlotte, North Carolina. Founded in 1904, it has approximately 213,193 employees and annual revenue of $192,434 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 493, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bank-of-america', 'conglomerate', 1904, NULL, NULL);

-- Company General Motors (Fortune 500 #18)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_general-motors', 'organization', 'general-motors', 'General Motors', 'published', 'General Motors is an American automotive company headquartered in Detroit, Michigan. Founded in 1908, it has approximately 162,000 employees and annual revenue of $187,442 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 492, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_general-motors', 'industrial', 1908, NULL, NULL);

-- Company Ford Motor (Fortune 500 #19)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ford-motor', 'organization', 'ford-motor', 'Ford Motor', 'published', 'Ford Motor is an American automotive company headquartered in Dearborn, Michigan. Founded in 1903, it has approximately 171,000 employees and annual revenue of $184,992 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 491, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ford-motor', 'industrial', 1903, NULL, NULL);

-- Company Elevance Health (Fortune 500 #20)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_elevance-health', 'organization', 'elevance-health', 'Elevance Health', 'published', 'Elevance Health is an American healthcare company headquartered in Indianapolis, Indiana. Founded in 1944, it has approximately 103,679 employees and annual revenue of $177,011 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 490, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_elevance-health', 'healthcare', 1944, NULL, NULL);

-- Company Citigroup (Fortune 500 #21)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_citigroup', 'organization', 'citigroup', 'Citigroup', 'published', 'Citigroup is an American financials company headquartered in New York City, New York. Founded in 1812, it has approximately 227,855 employees and annual revenue of $170,757 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 489, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_citigroup', 'conglomerate', 1812, NULL, NULL);

-- Company Meta Platforms (Fortune 500 #22)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_meta-platforms', 'organization', 'meta-platforms', 'Meta Platforms', 'published', 'Meta Platforms is an American technology company headquartered in Menlo Park, California. Founded in 2004, it has approximately 74,067 employees and annual revenue of $164,501 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 488, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_meta-platforms', 'technology', 2004, NULL, NULL);

-- Company Centene (Fortune 500 #23)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_centene', 'organization', 'centene', 'Centene', 'published', 'Centene is an American healthcare company headquartered in St. Louis, Missouri. Founded in 1984, it has approximately 60,500 employees and annual revenue of $163,071 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 487, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_centene', 'healthcare', 1984, NULL, NULL);

-- Company The Home Depot (Fortune 500 #24)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_the-home-depot', 'organization', 'the-home-depot', 'The Home Depot', 'published', 'The Home Depot is an American retail company headquartered in Atlanta, Georgia. Founded in 1978, it has approximately 470,100 employees and annual revenue of $159,514 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 486, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_the-home-depot', 'retail', 1978, NULL, NULL);

-- Company Fannie Mae (Fortune 500 #25)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fannie-mae', 'organization', 'fannie-mae', 'Fannie Mae', 'published', 'Fannie Mae is an American financials company headquartered in Washington, District of Columbia. Founded in 1938, it has approximately 8,200 employees and annual revenue of $152,670 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 485, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fannie-mae', 'conglomerate', 1938, NULL, NULL);

-- Company Walgreens Boots Alliance (Fortune 500 #26)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_walgreens-boots-alliance', 'organization', 'walgreens-boots-alliance', 'Walgreens Boots Alliance', 'published', 'Walgreens Boots Alliance is an American pharmaceutical company headquartered in Deerfield, Illinois. Founded in 1901, it has approximately 252,500 employees and annual revenue of $147,658 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 484, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_walgreens-boots-alliance', 'healthcare', 1901, NULL, NULL);

-- Company Kroger (Fortune 500 #27)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_kroger', 'organization', 'kroger', 'Kroger', 'published', 'Kroger is an American retail company headquartered in Cincinnati, Ohio. Founded in 1883, it has approximately 409,000 employees and annual revenue of $147,123 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 483, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_kroger', 'retail', 1883, NULL, NULL);

-- Company Nvidia (Fortune 500 #28)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_nvidia', 'organization', 'nvidia', 'Nvidia', 'published', 'Nvidia is an American semiconductors company headquartered in Santa Clara, California. Founded in 1993, it has approximately 36,000 employees and annual revenue of $130,497 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 482, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_nvidia', 'technology', 1993, NULL, NULL);

-- Company Tesla (Fortune 500 #29)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_tesla', 'organization', 'tesla', 'Tesla', 'published', 'Tesla is an American automotive company headquartered in Austin, Texas. Founded in 2003, it has approximately 140,473 employees and annual revenue of $122,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 481, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_tesla', 'industrial', 2003, NULL, NULL);

-- Company Verizon Communications (Fortune 500 #30)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_verizon-communications', 'organization', 'verizon-communications', 'Verizon Communications', 'published', 'Verizon Communications is an American telecommunications company headquartered in New York City, New York. Founded in 1983, it has approximately 99,600 employees and annual revenue of $134,788 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 480, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_verizon-communications', 'media', 1983, NULL, NULL);

-- Company Goldman Sachs Group (Fortune 500 #31)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_goldman-sachs', 'organization', 'goldman-sachs', 'Goldman Sachs Group', 'published', 'Goldman Sachs Group is an American financials company headquartered in New York City, New York. Founded in 1869, it has approximately 46,500 employees and annual revenue of $126,853 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 479, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_goldman-sachs', 'conglomerate', 1869, NULL, NULL);

-- Company Wells Fargo (Fortune 500 #32)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_wells-fargo', 'organization', 'wells-fargo', 'Wells Fargo', 'published', 'Wells Fargo is an American financials company headquartered in San Francisco, California. Founded in 1852, it has approximately 217,502 employees and annual revenue of $125,397 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 478, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_wells-fargo', 'conglomerate', 1852, NULL, NULL);

-- Company Valero Energy (Fortune 500 #33)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_valero-energy', 'organization', 'valero-energy', 'Valero Energy', 'published', 'Valero Energy is an American petroleum refining company headquartered in San Antonio, Texas. Founded in 1980, it has approximately 9,910 employees and annual revenue of $123,974 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 477, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_valero-energy', 'industrial', 1980, NULL, NULL);

-- Company Comcast (Fortune 500 #34)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_comcast', 'organization', 'comcast', 'Comcast', 'published', 'Comcast is an American telecommunications and media company headquartered in Philadelphia, Pennsylvania. Founded in 1963, it has approximately 182,000 employees and annual revenue of $123,731 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 476, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_comcast', 'media', 1963, NULL, NULL);

-- Company State Farm Insurance (Fortune 500 #35)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_state-farm-insurance', 'organization', 'state-farm-insurance', 'State Farm Insurance', 'published', 'State Farm Insurance is an American insurance company headquartered in Bloomington, Illinois. Founded in 1922, it has approximately 65,600 employees and annual revenue of $122,950 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 475, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_state-farm-insurance', 'financial', 1922, NULL, NULL);

-- Company Phillips 66 (Fortune 500 #36)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_phillips-66', 'organization', 'phillips-66', 'Phillips 66', 'published', 'Phillips 66 is an American petroleum refining company headquartered in Houston, Texas. Founded in 2012, it has approximately 13,000 employees and annual revenue of $144,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 474, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_phillips-66', 'industrial', 2012, NULL, NULL);

-- Company Johnson & Johnson (Fortune 500 #37)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_johnson-johnson', 'organization', 'johnson-johnson', 'Johnson & Johnson', 'published', 'Johnson & Johnson is an American pharmaceutical company headquartered in New Brunswick, New Jersey. Founded in 1886, it has approximately 138,100 employees and annual revenue of $88,821 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 473, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_johnson-johnson', 'healthcare', 1886, NULL, NULL);

-- Company Procter & Gamble (Fortune 500 #38)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_procter-gamble', 'organization', 'procter-gamble', 'Procter & Gamble', 'published', 'Procter & Gamble is an American consumer products company headquartered in Cincinnati, Ohio. Founded in 1837, it has approximately 108,000 employees and annual revenue of $84,039 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 472, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_procter-gamble', 'consumer', 1837, NULL, NULL);

-- Company Boeing (Fortune 500 #39)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_boeing', 'organization', 'boeing', 'Boeing', 'published', 'Boeing is an American aerospace and defense company headquartered in Arlington, Virginia. Founded in 1916, it has approximately 172,000 employees and annual revenue of $66,517 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 471, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_boeing', 'industrial', 1916, NULL, NULL);

-- Company Pfizer (Fortune 500 #40)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_pfizer', 'organization', 'pfizer', 'Pfizer', 'published', 'Pfizer is an American pharmaceutical company headquartered in New York City, New York. Founded in 1849, it has approximately 81,000 employees and annual revenue of $58,496 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 470, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_pfizer', 'healthcare', 1849, NULL, NULL);

-- Company Lockheed Martin (Fortune 500 #41)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_lockheed-martin', 'organization', 'lockheed-martin', 'Lockheed Martin', 'published', 'Lockheed Martin is an American aerospace and defense company headquartered in Bethesda, Maryland. Founded in 1926, it has approximately 122,000 employees and annual revenue of $71,043 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 469, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_lockheed-martin', 'industrial', 1926, NULL, NULL);

-- Company Intel (Fortune 500 #42)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_intel', 'organization', 'intel', 'Intel', 'published', 'Intel is an American semiconductors company headquartered in Santa Clara, California. Founded in 1968, it has approximately 124,800 employees and annual revenue of $54,228 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 468, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_intel', 'technology', 1968, NULL, NULL);

-- Company Cisco (Fortune 500 #43)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cisco', 'organization', 'cisco', 'Cisco', 'published', 'Cisco is an American technology hardware company headquartered in San Jose, California. Founded in 1984, it has approximately 90,400 employees and annual revenue of $53,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 467, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cisco', 'technology', 1984, NULL, NULL);

-- Company Oracle (Fortune 500 #44)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_oracle', 'organization', 'oracle', 'Oracle', 'published', 'Oracle is an American technology software company headquartered in Austin, Texas. Founded in 1977, it has approximately 159,000 employees and annual revenue of $53,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 466, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_oracle', 'technology', 1977, NULL, NULL);

-- Company Salesforce (Fortune 500 #45)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_salesforce', 'organization', 'salesforce', 'Salesforce', 'published', 'Salesforce is an American technology software company headquartered in San Francisco, California. Founded in 1999, it has approximately 72,682 employees and annual revenue of $34,857 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 465, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_salesforce', 'technology', 1999, NULL, NULL);

-- Company Adobe (Fortune 500 #46)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_adobe', 'organization', 'adobe', 'Adobe', 'published', 'Adobe is an American technology software company headquartered in San Jose, California. Founded in 1982, it has approximately 30,000 employees and annual revenue of $21,505 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 464, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_adobe', 'technology', 1982, NULL, NULL);

-- Company Nike (Fortune 500 #47)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_nike', 'organization', 'nike', 'Nike', 'published', 'Nike is an American apparel company headquartered in Beaverton, Oregon. Founded in 1964, it has approximately 83,700 employees and annual revenue of $51,462 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 463, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_nike', 'consumer', 1964, NULL, NULL);

-- Company Disney (Fortune 500 #48)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_disney', 'organization', 'disney', 'Disney', 'published', 'Disney is an American media company headquartered in Burbank, California. Founded in 1923, it has approximately 233,000 employees and annual revenue of $88,898 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 462, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_disney', 'media', 1923, NULL, NULL);

-- Company AT&T (Fortune 500 #49)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_att', 'organization', 'att', 'AT&T', 'published', 'AT&T is an American telecommunications company headquartered in Dallas, Texas. Founded in 1877, it has approximately 148,470 employees and annual revenue of $122,513 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 461, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_att', 'media', 1877, NULL, NULL);

-- Company General Electric (Fortune 500 #50)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_general-electric', 'organization', 'general-electric', 'General Electric', 'published', 'General Electric is an American industrial conglomerate company headquartered in Boston, Massachusetts. Founded in 1892, it has approximately 125,000 employees and annual revenue of $67,698 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 460, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_general-electric', 'industrial', 1892, NULL, NULL);

-- Company Honeywell (Fortune 500 #51)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_honeywell', 'organization', 'honeywell', 'Honeywell', 'published', 'Honeywell is an American industrial conglomerate company headquartered in Charlotte, North Carolina. Founded in 1906, it has approximately 95,000 employees and annual revenue of $38,498 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 459, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_honeywell', 'industrial', 1906, NULL, NULL);

-- Company Caterpillar (Fortune 500 #52)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_caterpillar', 'organization', 'caterpillar', 'Caterpillar', 'published', 'Caterpillar is an American machinery company headquartered in Irving, Texas. Founded in 1925, it has approximately 112,600 employees and annual revenue of $67,060 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 458, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_caterpillar', 'conglomerate', 1925, NULL, NULL);

-- Company Deere & Company (Fortune 500 #53)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_deere', 'organization', 'deere', 'Deere & Company', 'published', 'Deere & Company is an American agricultural machinery company headquartered in Moline, Illinois. Founded in 1837, it has approximately 83,000 employees and annual revenue of $51,770 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 457, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_deere', 'conglomerate', 1837, NULL, NULL);

-- Company Dow (Fortune 500 #54)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_dow', 'organization', 'dow', 'Dow', 'published', 'Dow is an American chemicals company headquartered in Midland, Michigan. Founded in 1897, it has approximately 36,000 employees and annual revenue of $42,964 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 456, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_dow', 'industrial', 1897, NULL, NULL);

-- Company DuPont (Fortune 500 #55)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_dupont', 'organization', 'dupont', 'DuPont', 'published', 'DuPont is an American chemicals company headquartered in Wilmington, Delaware. Founded in 1802, it has approximately 24,000 employees and annual revenue of $12,184 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 455, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_dupont', 'industrial', 1802, NULL, NULL);

-- Company 3M (Fortune 500 #56)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_3m', 'organization', '3m', '3M', 'published', '3M is an American industrial conglomerate company headquartered in Saint Paul, Minnesota. Founded in 1902, it has approximately 85,000 employees and annual revenue of $32,477 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 454, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_3m', 'industrial', 1902, NULL, NULL);

-- Company Tesla Energy (Fortune 500 #57)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_tesla-energy', 'organization', 'tesla-energy', 'Tesla Energy', 'published', 'Tesla Energy is an American energy company headquartered in Austin, Texas. Founded in 2006, it has approximately 5,000 employees and annual revenue of $10,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 453, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_tesla-energy', 'industrial', 2006, NULL, NULL);

-- Company Morgan Stanley (Fortune 500 #58)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_morgan-stanley', 'organization', 'morgan-stanley', 'Morgan Stanley', 'published', 'Morgan Stanley is an American financials company headquartered in New York City, New York. Founded in 1935, it has approximately 80,000 employees and annual revenue of $54,348 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 452, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_morgan-stanley', 'conglomerate', 1935, NULL, NULL);

-- Company BlackRock (Fortune 500 #59)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_blackrock', 'organization', 'blackrock', 'BlackRock', 'published', 'BlackRock is an American financials company headquartered in New York City, New York. Founded in 1988, it has approximately 21,000 employees and annual revenue of $19,673 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 451, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_blackrock', 'conglomerate', 1988, NULL, NULL);

-- Company Visa (Fortune 500 #60)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_visa', 'organization', 'visa', 'Visa', 'published', 'Visa is an American financial services company headquartered in San Francisco, California. Founded in 1958, it has approximately 28,800 employees and annual revenue of $33,752 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 450, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_visa', 'conglomerate', 1958, NULL, NULL);

-- Company Mastercard (Fortune 500 #61)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mastercard', 'organization', 'mastercard', 'Mastercard', 'published', 'Mastercard is an American financial services company headquartered in Purchase, New York. Founded in 1966, it has approximately 33,400 employees and annual revenue of $27,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 449, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mastercard', 'conglomerate', 1966, NULL, NULL);

-- Company American Express (Fortune 500 #62)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_american-express', 'organization', 'american-express', 'American Express', 'published', 'American Express is an American financial services company headquartered in New York City, New York. Founded in 1850, it has approximately 77,500 employees and annual revenue of $60,050 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 448, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_american-express', 'conglomerate', 1850, NULL, NULL);

-- Company PayPal (Fortune 500 #63)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_paypal', 'organization', 'paypal', 'PayPal', 'published', 'PayPal is an American financial services company headquartered in San Jose, California. Founded in 1998, it has approximately 27,000 employees and annual revenue of $31,898 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 447, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_paypal', 'conglomerate', 1998, NULL, NULL);

-- Company Bank of New York Mellon (Fortune 500 #64)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bank-of-new-york-mellon', 'organization', 'bank-of-new-york-mellon', 'Bank of New York Mellon', 'published', 'Bank of New York Mellon is an American financials company headquartered in New York City, New York. Founded in 1784, it has approximately 53,000 employees and annual revenue of $18,491 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 446, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bank-of-new-york-mellon', 'conglomerate', 1784, NULL, NULL);

-- Company Charles Schwab (Fortune 500 #65)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_charles-schwab', 'organization', 'charles-schwab', 'Charles Schwab', 'published', 'Charles Schwab is an American financials company headquartered in Westlake, Texas. Founded in 1971, it has approximately 35,800 employees and annual revenue of $20,650 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 445, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_charles-schwab', 'conglomerate', 1971, NULL, NULL);

-- Company Merck (Fortune 500 #67)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_merck', 'organization', 'merck', 'Merck', 'published', 'Merck is an American pharmaceutical company headquartered in Rahway, New Jersey. Founded in 1891, it has approximately 70,000 employees and annual revenue of $64,168 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 443, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_merck', 'healthcare', 1891, NULL, NULL);

-- Company AbbVie (Fortune 500 #68)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_abbvie', 'organization', 'abbvie', 'AbbVie', 'published', 'AbbVie is an American pharmaceutical company headquartered in North Chicago, Illinois. Founded in 2013, it has approximately 50,000 employees and annual revenue of $54,318 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 442, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_abbvie', 'healthcare', 2013, NULL, NULL);

-- Company Bristol Myers Squibb (Fortune 500 #69)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bristol-myers-squibb', 'organization', 'bristol-myers-squibb', 'Bristol Myers Squibb', 'published', 'Bristol Myers Squibb is an American pharmaceutical company headquartered in Princeton, New Jersey. Founded in 1887, it has approximately 33,000 employees and annual revenue of $45,145 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 441, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bristol-myers-squibb', 'healthcare', 1887, NULL, NULL);

-- Company Eli Lilly (Fortune 500 #70)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_eli-lilly', 'organization', 'eli-lilly', 'Eli Lilly', 'published', 'Eli Lilly is an American pharmaceutical company headquartered in Indianapolis, Indiana. Founded in 1876, it has approximately 47,000 employees and annual revenue of $45,043 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 440, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_eli-lilly', 'healthcare', 1876, NULL, NULL);

-- Company Abbott Laboratories (Fortune 500 #71)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_abbott-laboratories', 'organization', 'abbott-laboratories', 'Abbott Laboratories', 'published', 'Abbott Laboratories is an American pharmaceutical company headquartered in Abbott Park, Illinois. Founded in 1888, it has approximately 114,000 employees and annual revenue of $40,109 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 439, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_abbott-laboratories', 'healthcare', 1888, NULL, NULL);

-- Company Thermo Fisher Scientific (Fortune 500 #72)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_thermo-fisher-scientific', 'organization', 'thermo-fisher-scientific', 'Thermo Fisher Scientific', 'published', 'Thermo Fisher Scientific is an American healthcare equipment company headquartered in Waltham, Massachusetts. Founded in 1956, it has approximately 122,000 employees and annual revenue of $42,879 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 438, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_thermo-fisher-scientific', 'healthcare', 1956, NULL, NULL);

-- Company Danaher (Fortune 500 #73)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_danaher', 'organization', 'danaher', 'Danaher', 'published', 'Danaher is an American healthcare equipment company headquartered in Washington, District of Columbia. Founded in 1969, it has approximately 62,000 employees and annual revenue of $23,875 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 437, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_danaher', 'healthcare', 1969, NULL, NULL);

-- Company Medtronic (Fortune 500 #74)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_medtronic', 'organization', 'medtronic', 'Medtronic', 'published', 'Medtronic is an American healthcare equipment company headquartered in Minneapolis, Minnesota. Founded in 1949, it has approximately 95,000 employees and annual revenue of $33,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 436, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_medtronic', 'healthcare', 1949, NULL, NULL);

-- Company Stryker (Fortune 500 #75)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_stryker', 'organization', 'stryker', 'Stryker', 'published', 'Stryker is an American healthcare equipment company headquartered in Kalamazoo, Michigan. Founded in 1941, it has approximately 53,000 employees and annual revenue of $22,595 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 435, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_stryker', 'healthcare', 1941, NULL, NULL);

-- Company Boston Scientific (Fortune 500 #76)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_boston-scientific', 'organization', 'boston-scientific', 'Boston Scientific', 'published', 'Boston Scientific is an American healthcare equipment company headquartered in Marlborough, Massachusetts. Founded in 1979, it has approximately 48,000 employees and annual revenue of $16,340 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 434, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_boston-scientific', 'healthcare', 1979, NULL, NULL);

-- Company Becton Dickinson (Fortune 500 #77)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_becton-dickinson', 'organization', 'becton-dickinson', 'Becton Dickinson', 'published', 'Becton Dickinson is an American healthcare equipment company headquartered in Franklin Lakes, New Jersey. Founded in 1897, it has approximately 70,000 employees and annual revenue of $19,972 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 433, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_becton-dickinson', 'healthcare', 1897, NULL, NULL);

-- Company Baker Hughes (Fortune 500 #78)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_baker-hughes', 'organization', 'baker-hughes', 'Baker Hughes', 'published', 'Baker Hughes is an American oil services company headquartered in Houston, Texas. Founded in 1907, it has approximately 55,000 employees and annual revenue of $27,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 432, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_baker-hughes', 'industrial', 1907, NULL, NULL);

-- Company Halliburton (Fortune 500 #79)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_halliburton', 'organization', 'halliburton', 'Halliburton', 'published', 'Halliburton is an American oil services company headquartered in Houston, Texas. Founded in 1919, it has approximately 48,000 employees and annual revenue of $22,851 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 431, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_halliburton', 'industrial', 1919, NULL, NULL);

-- Company Schlumberger (Fortune 500 #80)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_schlumberger', 'organization', 'schlumberger', 'Schlumberger', 'published', 'Schlumberger is an American oil services company headquartered in Houston, Texas. Founded in 1926, it has approximately 111,000 employees and annual revenue of $36,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 430, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_schlumberger', 'industrial', 1926, NULL, NULL);

-- Company ConocoPhillips (Fortune 500 #81)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_conocophillips', 'organization', 'conocophillips', 'ConocoPhillips', 'published', 'ConocoPhillips is an American petroleum company headquartered in Houston, Texas. Founded in 2002, it has approximately 11,900 employees and annual revenue of $56,762 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 429, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_conocophillips', 'industrial', 2002, NULL, NULL);

-- Company Marathon Petroleum (Fortune 500 #82)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_marathon-petroleum', 'organization', 'marathon-petroleum', 'Marathon Petroleum', 'published', 'Marathon Petroleum is an American petroleum refining company headquartered in Findlay, Ohio. Founded in 2011, it has approximately 18,300 employees and annual revenue of $140,516 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 428, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_marathon-petroleum', 'industrial', 2011, NULL, NULL);

-- Company Pioneer Natural Resources (Fortune 500 #84)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_pioneer-natural-resources', 'organization', 'pioneer-natural-resources', 'Pioneer Natural Resources', 'published', 'Pioneer Natural Resources is an American petroleum company headquartered in Irving, Texas. Founded in 1997, it has approximately 4,400 employees and annual revenue of $19,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 426, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_pioneer-natural-resources', 'industrial', 1997, NULL, NULL);

-- Company EOG Resources (Fortune 500 #85)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_eog-resources', 'organization', 'eog-resources', 'EOG Resources', 'published', 'EOG Resources is an American petroleum company headquartered in Houston, Texas. Founded in 1985, it has approximately 2,900 employees and annual revenue of $23,861 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 425, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_eog-resources', 'industrial', 1985, NULL, NULL);

-- Company Devon Energy (Fortune 500 #86)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_devon-energy', 'organization', 'devon-energy', 'Devon Energy', 'published', 'Devon Energy is an American petroleum company headquartered in Oklahoma City, Oklahoma. Founded in 1971, it has approximately 1,700 employees and annual revenue of $15,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 424, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_devon-energy', 'industrial', 1971, NULL, NULL);

-- Company Diamondback Energy (Fortune 500 #87)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_diamondback-energy', 'organization', 'diamondback-energy', 'Diamondback Energy', 'published', 'Diamondback Energy is an American petroleum company headquartered in Midland, Texas. Founded in 2007, it has approximately 1,983 employees and annual revenue of $11,066 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 423, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_diamondback-energy', 'industrial', 2007, NULL, NULL);

-- Company American Airlines (Fortune 500 #88)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_american-airlines', 'organization', 'american-airlines', 'American Airlines', 'published', 'American Airlines is an American airline company headquartered in Fort Worth, Texas. Founded in 1930, it has approximately 133,100 employees and annual revenue of $52,788 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 422, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_american-airlines', 'industrial', 1930, NULL, NULL);

-- Company Delta Air Lines (Fortune 500 #89)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_delta-air-lines', 'organization', 'delta-air-lines', 'Delta Air Lines', 'published', 'Delta Air Lines is an American airline company headquartered in Atlanta, Georgia. Founded in 1925, it has approximately 100,000 employees and annual revenue of $60,846 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 421, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_delta-air-lines', 'industrial', 1925, NULL, NULL);

-- Company United Airlines Holdings (Fortune 500 #90)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_united-airlines', 'organization', 'united-airlines', 'United Airlines Holdings', 'published', 'United Airlines Holdings is an American airline company headquartered in Chicago, Illinois. Founded in 1968, it has approximately 105,350 employees and annual revenue of $53,717 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 420, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_united-airlines', 'industrial', 1968, NULL, NULL);

-- Company Southwest Airlines (Fortune 500 #91)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_southwest-airlines', 'organization', 'southwest-airlines', 'Southwest Airlines', 'published', 'Southwest Airlines is an American airline company headquartered in Dallas, Texas. Founded in 1967, it has approximately 71,000 employees and annual revenue of $26,805 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 419, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_southwest-airlines', 'industrial', 1967, NULL, NULL);

-- Company FedEx (Fortune 500 #92)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fedex', 'organization', 'fedex', 'FedEx', 'published', 'FedEx is an American transportation company headquartered in Memphis, Tennessee. Founded in 1971, it has approximately 500,000 employees and annual revenue of $90,155 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 418, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fedex', 'industrial', 1971, NULL, NULL);

-- Company United Parcel Service (Fortune 500 #93)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_united-parcel-service', 'organization', 'united-parcel-service', 'United Parcel Service', 'published', 'United Parcel Service is an American transportation company headquartered in Atlanta, Georgia. Founded in 1907, it has approximately 500,000 employees and annual revenue of $91,070 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 417, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_united-parcel-service', 'industrial', 1907, NULL, NULL);

-- Company Union Pacific (Fortune 500 #94)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_union-pacific', 'organization', 'union-pacific', 'Union Pacific', 'published', 'Union Pacific is an American rail transportation company headquartered in Omaha, Nebraska. Founded in 1862, it has approximately 32,439 employees and annual revenue of $24,250 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 416, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_union-pacific', 'industrial', 1862, NULL, NULL);

-- Company BNSF Railway (Fortune 500 #95)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bnsf-railway', 'organization', 'bnsf-railway', 'BNSF Railway', 'published', 'BNSF Railway is an American rail transportation company headquartered in Fort Worth, Texas. Founded in 1849, it has approximately 38,000 employees and annual revenue of $23,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 415, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bnsf-railway', 'industrial', 1849, NULL, NULL);

-- Company CSX (Fortune 500 #96)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_csx', 'organization', 'csx', 'CSX', 'published', 'CSX is an American rail transportation company headquartered in Jacksonville, Florida. Founded in 1827, it has approximately 23,000 employees and annual revenue of $14,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 414, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_csx', 'industrial', 1827, NULL, NULL);

-- Company Norfolk Southern (Fortune 500 #97)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_norfolk-southern', 'organization', 'norfolk-southern', 'Norfolk Southern', 'published', 'Norfolk Southern is an American rail transportation company headquartered in Atlanta, Georgia. Founded in 1827, it has approximately 20,500 employees and annual revenue of $12,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 413, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_norfolk-southern', 'industrial', 1827, NULL, NULL);

-- Company Waste Management (Fortune 500 #98)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_waste-management', 'organization', 'waste-management', 'Waste Management', 'published', 'Waste Management is an American environmental services company headquartered in Houston, Texas. Founded in 1968, it has approximately 61,700 employees and annual revenue of $22,063 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 412, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_waste-management', 'conglomerate', 1968, NULL, NULL);

-- Company Republic Services (Fortune 500 #99)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_republic-services', 'organization', 'republic-services', 'Republic Services', 'published', 'Republic Services is an American environmental services company headquartered in Phoenix, Arizona. Founded in 1998, it has approximately 41,000 employees and annual revenue of $15,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 411, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_republic-services', 'conglomerate', 1998, NULL, NULL);

-- Company PepsiCo (Fortune 500 #100)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_pepsico', 'organization', 'pepsico', 'PepsiCo', 'published', 'PepsiCo is an American beverage and food company headquartered in Purchase, New York. Founded in 1965, it has approximately 318,000 employees and annual revenue of $91,754 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 410, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_pepsico', 'consumer', 1965, NULL, NULL);

-- Company Coca-Cola (Fortune 500 #101)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_coca-cola', 'organization', 'coca-cola', 'Coca-Cola', 'published', 'Coca-Cola is an American beverage company headquartered in Atlanta, Georgia. Founded in 1892, it has approximately 79,000 employees and annual revenue of $45,754 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 409, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_coca-cola', 'consumer', 1892, NULL, NULL);

-- Company Mondelez International (Fortune 500 #102)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mondelez', 'organization', 'mondelez', 'Mondelez International', 'published', 'Mondelez International is an American food processing company headquartered in Chicago, Illinois. Founded in 2012, it has approximately 91,000 employees and annual revenue of $36,416 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 408, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mondelez', 'consumer', 2012, NULL, NULL);

-- Company General Mills (Fortune 500 #103)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_general-mills', 'organization', 'general-mills', 'General Mills', 'published', 'General Mills is an American food processing company headquartered in Minneapolis, Minnesota. Founded in 1928, it has approximately 34,000 employees and annual revenue of $19,857 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 407, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_general-mills', 'consumer', 1928, NULL, NULL);

-- Company Kraft Heinz (Fortune 500 #104)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_kraft-heinz', 'organization', 'kraft-heinz', 'Kraft Heinz', 'published', 'Kraft Heinz is an American food processing company headquartered in Pittsburgh, Pennsylvania. Founded in 2015, it has approximately 36,000 employees and annual revenue of $25,952 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 406, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_kraft-heinz', 'consumer', 2015, NULL, NULL);

-- Company ConAgra Brands (Fortune 500 #105)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_conagra-brands', 'organization', 'conagra-brands', 'ConAgra Brands', 'published', 'ConAgra Brands is an American food processing company headquartered in Chicago, Illinois. Founded in 1919, it has approximately 18,500 employees and annual revenue of $12,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 405, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_conagra-brands', 'consumer', 1919, NULL, NULL);

-- Company Tyson Foods (Fortune 500 #106)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_tyson-foods', 'organization', 'tyson-foods', 'Tyson Foods', 'published', 'Tyson Foods is an American food processing company headquartered in Springdale, Arkansas. Founded in 1935, it has approximately 138,000 employees and annual revenue of $53,478 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 404, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_tyson-foods', 'consumer', 1935, NULL, NULL);

-- Company Mars (Fortune 500 #107)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mars', 'organization', 'mars', 'Mars', 'published', 'Mars is an American food and pet food company headquartered in McLean, Virginia. Founded in 1911, it has approximately 150,000 employees and annual revenue of $55,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 403, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mars', 'consumer', 1911, NULL, NULL);

-- Company Cargill (Fortune 500 #108)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cargill', 'organization', 'cargill', 'Cargill', 'published', 'Cargill is an American agriculture and food company headquartered in Minnetonka, Minnesota. Founded in 1865, it has approximately 155,000 employees and annual revenue of $154,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 402, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cargill', 'consumer', 1865, NULL, NULL);

-- Company Koch Industries (Fortune 500 #109)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_koch', 'organization', 'koch', 'Koch Industries', 'published', 'Koch Industries is an American conglomerate company headquartered in Wichita, Kansas. Founded in 1940, it has approximately 120,000 employees and annual revenue of $125,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 401, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_koch', 'conglomerate', 1940, NULL, NULL);

-- Company Publix Super Markets (Fortune 500 #110)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_publix-super-markets', 'organization', 'publix-super-markets', 'Publix Super Markets', 'published', 'Publix Super Markets is an American retail company headquartered in Lakeland, Florida. Founded in 1930, it has approximately 260,000 employees and annual revenue of $59,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 400, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_publix-super-markets', 'retail', 1930, NULL, NULL);

-- Company H-E-B (Fortune 500 #111)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_h-e-b', 'organization', 'h-e-b', 'H-E-B', 'published', 'H-E-B is an American retail company headquartered in San Antonio, Texas. Founded in 1905, it has approximately 175,000 employees and annual revenue of $49,570 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 399, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_h-e-b', 'retail', 1905, NULL, NULL);

-- Company Enterprise Mobility (Fortune 500 #112)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_enterprise-mobility', 'organization', 'enterprise-mobility', 'Enterprise Mobility', 'published', 'Enterprise Mobility is an American car rental company headquartered in Clayton, Missouri. Founded in 1957, it has approximately 100,000 employees and annual revenue of $38,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 398, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_enterprise-mobility', 'conglomerate', 1957, NULL, NULL);

-- Company Fidelity Investments (Fortune 500 #113)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fidelity-investments', 'organization', 'fidelity-investments', 'Fidelity Investments', 'published', 'Fidelity Investments is an American financial services company headquartered in Boston, Massachusetts. Founded in 1946, it has approximately 78,000 employees and annual revenue of $32,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 397, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fidelity-investments', 'conglomerate', 1946, NULL, NULL);

-- Company Cox Enterprises (Fortune 500 #114)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cox-enterprises', 'organization', 'cox-enterprises', 'Cox Enterprises', 'published', 'Cox Enterprises is an American media company headquartered in Atlanta, Georgia. Founded in 1898, it has approximately 50,000 employees and annual revenue of $23,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 396, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cox-enterprises', 'media', 1898, NULL, NULL);

-- Company Reyes Holdings (Fortune 500 #115)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_reyes', 'organization', 'reyes', 'Reyes Holdings', 'published', 'Reyes Holdings is an American food distribution company headquartered in Rosemont, Illinois. Founded in 1976, it has approximately 36,000 employees and annual revenue of $44,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 395, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_reyes', 'consumer', 1976, NULL, NULL);

-- Company Southern Glazer's Wine & Spirits (Fortune 500 #116)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_southern-glazers-wine-spirits', 'organization', 'southern-glazers-wine-spirits', 'Southern Glazer''s Wine & Spirits', 'published', 'Southern Glazer''s Wine & Spirits is an American beverage distribution company headquartered in Miramar, Florida. Founded in 1956, it has approximately 24,000 employees and annual revenue of $25,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 394, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_southern-glazers-wine-spirits', 'consumer', 1956, NULL, NULL);

-- Company Bloomberg LP (Fortune 500 #117)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bloomberg-lp', 'organization', 'bloomberg-lp', 'Bloomberg LP', 'published', 'Bloomberg LP is an American financial data and media company headquartered in New York City, New York. Founded in 1981, it has approximately 20,000 employees and annual revenue of $12,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 393, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bloomberg-lp', 'media', 1981, NULL, NULL);

-- Company Anheuser-Busch (Fortune 500 #118)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_anheuser-busch', 'organization', 'anheuser-busch', 'Anheuser-Busch', 'published', 'Anheuser-Busch is an American beverage company headquartered in St. Louis, Missouri. Founded in 1852, it has approximately 63,000 employees and annual revenue of $59,380 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 392, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_anheuser-busch', 'consumer', 1852, NULL, NULL);

-- Company Molson Coors (Fortune 500 #119)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_molson-coors', 'organization', 'molson-coors', 'Molson Coors', 'published', 'Molson Coors is an American beverage company headquartered in Chicago, Illinois. Founded in 2005, it has approximately 16,000 employees and annual revenue of $13,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 391, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_molson-coors', 'consumer', 2005, NULL, NULL);

-- Company Constellation Brands (Fortune 500 #120)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_constellation-brands', 'organization', 'constellation-brands', 'Constellation Brands', 'published', 'Constellation Brands is an American beverage company headquartered in Victor, New York. Founded in 1945, it has approximately 9,300 employees and annual revenue of $9,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 390, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_constellation-brands', 'consumer', 1945, NULL, NULL);

-- Company Brown-Forman (Fortune 500 #121)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_brown-forman', 'organization', 'brown-forman', 'Brown-Forman', 'published', 'Brown-Forman is an American beverage company headquartered in Louisville, Kentucky. Founded in 1870, it has approximately 5,800 employees and annual revenue of $4,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 389, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_brown-forman', 'consumer', 1870, NULL, NULL);

-- Company Newell Brands (Fortune 500 #122)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_newell-brands', 'organization', 'newell-brands', 'Newell Brands', 'published', 'Newell Brands is an American consumer products company headquartered in Atlanta, Georgia. Founded in 1903, it has approximately 28,000 employees and annual revenue of $8,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 388, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_newell-brands', 'consumer', 1903, NULL, NULL);

-- Company Stanley Black & Decker (Fortune 500 #123)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_stanley-black-decker', 'organization', 'stanley-black-decker', 'Stanley Black & Decker', 'published', 'Stanley Black & Decker is an American tools and hardware company headquartered in New Britain, Connecticut. Founded in 1843, it has approximately 50,000 employees and annual revenue of $15,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 387, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_stanley-black-decker', 'conglomerate', 1843, NULL, NULL);

-- Company Whirlpool (Fortune 500 #124)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_whirlpool', 'organization', 'whirlpool', 'Whirlpool', 'published', 'Whirlpool is an American appliances company headquartered in Benton Harbor, Michigan. Founded in 1911, it has approximately 44,000 employees and annual revenue of $16,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 386, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_whirlpool', 'conglomerate', 1911, NULL, NULL);

-- Company Hasbro (Fortune 500 #125)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hasbro', 'organization', 'hasbro', 'Hasbro', 'published', 'Hasbro is an American toys company headquartered in Pawtucket, Rhode Island. Founded in 1923, it has approximately 5,300 employees and annual revenue of $5,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 385, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hasbro', 'conglomerate', 1923, NULL, NULL);

-- Company Mattel (Fortune 500 #126)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mattel', 'organization', 'mattel', 'Mattel', 'published', 'Mattel is an American toys company headquartered in El Segundo, California. Founded in 1945, it has approximately 33,000 employees and annual revenue of $5,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 384, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mattel', 'conglomerate', 1945, NULL, NULL);

-- Company Lowe's (Fortune 500 #127)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_lowes', 'organization', 'lowes', 'Lowe''s', 'published', 'Lowe''s is an American retail home improvement company headquartered in Mooresville, North Carolina. Founded in 1946, it has approximately 226,000 employees and annual revenue of $83,670 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 383, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_lowes', 'retail', 1946, NULL, NULL);

-- Company TJX Companies (Fortune 500 #128)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_tjx-companies', 'organization', 'tjx-companies', 'TJX Companies', 'published', 'TJX Companies is an American retail apparel company headquartered in Framingham, Massachusetts. Founded in 1956, it has approximately 349,000 employees and annual revenue of $56,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 382, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_tjx-companies', 'retail', 1956, NULL, NULL);

-- Company Target (Fortune 500 #129)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_target', 'organization', 'target', 'Target', 'published', 'Target is an American retail company headquartered in Minneapolis, Minnesota. Founded in 1902, it has approximately 410,000 employees and annual revenue of $107,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 381, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_target', 'retail', 1902, NULL, NULL);

-- Company Best Buy (Fortune 500 #130)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_best-buy', 'organization', 'best-buy', 'Best Buy', 'published', 'Best Buy is an American retail electronics company headquartered in Richfield, Minnesota. Founded in 1966, it has approximately 85,000 employees and annual revenue of $41,490 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 380, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_best-buy', 'retail', 1966, NULL, NULL);

-- Company Dollar General (Fortune 500 #131)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_dollar-general', 'organization', 'dollar-general', 'Dollar General', 'published', 'Dollar General is an American retail discount company headquartered in Goodlettsville, Tennessee. Founded in 1939, it has approximately 190,000 employees and annual revenue of $40,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 379, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_dollar-general', 'retail', 1939, NULL, NULL);

-- Company Dollar Tree (Fortune 500 #132)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_dollar-tree', 'organization', 'dollar-tree', 'Dollar Tree', 'published', 'Dollar Tree is an American retail discount company headquartered in Chesapeake, Virginia. Founded in 1986, it has approximately 130,000 employees and annual revenue of $30,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 378, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_dollar-tree', 'retail', 1986, NULL, NULL);

-- Company Ross Stores (Fortune 500 #133)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ross-stores', 'organization', 'ross-stores', 'Ross Stores', 'published', 'Ross Stores is an American retail apparel company headquartered in Dublin, California. Founded in 1982, it has approximately 108,000 employees and annual revenue of $20,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 377, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ross-stores', 'retail', 1982, NULL, NULL);

-- Company Nike Inc (Fortune 500 #134)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_nike', 'organization', 'nike', 'Nike Inc', 'published', 'Nike Inc is an American apparel company headquartered in Beaverton, Oregon. Founded in 1964, it has approximately 83,700 employees and annual revenue of $51,462 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 376, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_nike', 'consumer', 1964, NULL, NULL);

-- Company VF Corporation (Fortune 500 #135)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_vf', 'organization', 'vf', 'VF Corporation', 'published', 'VF Corporation is an American apparel company headquartered in Denver, Colorado. Founded in 1899, it has approximately 30,000 employees and annual revenue of $10,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 375, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_vf', 'consumer', 1899, NULL, NULL);

-- Company Ralph Lauren (Fortune 500 #136)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ralph-lauren', 'organization', 'ralph-lauren', 'Ralph Lauren', 'published', 'Ralph Lauren is an American apparel company headquartered in New York City, New York. Founded in 1967, it has approximately 23,000 employees and annual revenue of $6,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 374, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ralph-lauren', 'consumer', 1967, NULL, NULL);

-- Company PVH Corp (Fortune 500 #137)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_pvh', 'organization', 'pvh', 'PVH Corp', 'published', 'PVH Corp is an American apparel company headquartered in New York City, New York. Founded in 1881, it has approximately 26,000 employees and annual revenue of $8,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 373, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_pvh', 'consumer', 1881, NULL, NULL);

-- Company Hanesbrands (Fortune 500 #138)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hanesbrands', 'organization', 'hanesbrands', 'Hanesbrands', 'published', 'Hanesbrands is an American apparel company headquartered in Winston-Salem, North Carolina. Founded in 1901, it has approximately 48,000 employees and annual revenue of $5,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 372, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hanesbrands', 'consumer', 1901, NULL, NULL);

-- Company Levi Strauss (Fortune 500 #139)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_levi-strauss', 'organization', 'levi-strauss', 'Levi Strauss', 'published', 'Levi Strauss is an American apparel company headquartered in San Francisco, California. Founded in 1853, it has approximately 19,000 employees and annual revenue of $6,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 371, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_levi-strauss', 'consumer', 1853, NULL, NULL);

-- Company Tapestry (Fortune 500 #140)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_tapestry', 'organization', 'tapestry', 'Tapestry', 'published', 'Tapestry is an American luxury goods company headquartered in New York City, New York. Founded in 1941, it has approximately 16,000 employees and annual revenue of $6,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 370, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_tapestry', 'conglomerate', 1941, NULL, NULL);

-- Company Estée Lauder (Fortune 500 #141)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_este-lauder', 'organization', 'este-lauder', 'Estée Lauder', 'published', 'Estée Lauder is an American cosmetics company headquartered in New York City, New York. Founded in 1946, it has approximately 60,000 employees and annual revenue of $15,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 369, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_este-lauder', 'conglomerate', 1946, NULL, NULL);

-- Company eBay (Fortune 500 #142)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ebay', 'organization', 'ebay', 'eBay', 'published', 'eBay is an American e-commerce company headquartered in San Jose, California. Founded in 1995, it has approximately 12,000 employees and annual revenue of $10,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 368, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ebay', 'conglomerate', 1995, NULL, NULL);

-- Company Etsy (Fortune 500 #143)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_etsy', 'organization', 'etsy', 'Etsy', 'published', 'Etsy is an American e-commerce company headquartered in Brooklyn, New York. Founded in 2005, it has approximately 2,500 employees and annual revenue of $2,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 367, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_etsy', 'conglomerate', 2005, NULL, NULL);

-- Company Airbnb (Fortune 500 #144)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_airbnb', 'organization', 'airbnb', 'Airbnb', 'published', 'Airbnb is an American hospitality company headquartered in San Francisco, California. Founded in 2008, it has approximately 7,300 employees and annual revenue of $11,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 366, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_airbnb', 'conglomerate', 2008, NULL, NULL);

-- Company Uber (Fortune 500 #145)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_uber', 'organization', 'uber', 'Uber', 'published', 'Uber is an American transportation and delivery company headquartered in San Francisco, California. Founded in 2009, it has approximately 31,100 employees and annual revenue of $43,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 365, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_uber', 'industrial', 2009, NULL, NULL);

-- Company Lyft (Fortune 500 #146)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_lyft', 'organization', 'lyft', 'Lyft', 'published', 'Lyft is an American transportation company headquartered in San Francisco, California. Founded in 2012, it has approximately 5,000 employees and annual revenue of $5,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 364, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_lyft', 'industrial', 2012, NULL, NULL);

-- Company Snap (Fortune 500 #147)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_snap', 'organization', 'snap', 'Snap', 'published', 'Snap is an American social media company headquartered in Santa Monica, California. Founded in 2011, it has approximately 5,300 employees and annual revenue of $4,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 363, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_snap', 'media', 2011, NULL, NULL);

-- Company Pinterest (Fortune 500 #148)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_pinterest', 'organization', 'pinterest', 'Pinterest', 'published', 'Pinterest is an American social media company headquartered in San Francisco, California. Founded in 2009, it has approximately 4,000 employees and annual revenue of $3,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 362, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_pinterest', 'media', 2009, NULL, NULL);

-- Company Twitter (Fortune 500 #149)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_twitter', 'organization', 'twitter', 'Twitter', 'published', 'Twitter is an American social media company headquartered in San Francisco, California. Founded in 2006, it has approximately 2,300 employees and annual revenue of $4,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 361, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_twitter', 'media', 2006, NULL, NULL);

-- Company Reddit (Fortune 500 #150)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_reddit', 'organization', 'reddit', 'Reddit', 'published', 'Reddit is an American social media company headquartered in San Francisco, California. Founded in 2005, it has approximately 2,300 employees and annual revenue of $1,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 360, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_reddit', 'media', 2005, NULL, NULL);

-- Company Robinhood (Fortune 500 #151)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_robinhood', 'organization', 'robinhood', 'Robinhood', 'published', 'Robinhood is an American financial services company headquartered in Menlo Park, California. Founded in 2013, it has approximately 2,300 employees and annual revenue of $2,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 359, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_robinhood', 'conglomerate', 2013, NULL, NULL);

-- Company Coinbase (Fortune 500 #152)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_coinbase', 'organization', 'coinbase', 'Coinbase', 'published', 'Coinbase is an American cryptocurrency company headquartered in Remote, Delaware. Founded in 2012, it has approximately 3,700 employees and annual revenue of $6,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 358, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_coinbase', 'conglomerate', 2012, NULL, NULL);

-- Company Palantir (Fortune 500 #153)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_palantir', 'organization', 'palantir', 'Palantir', 'published', 'Palantir is an American software and analytics company headquartered in Denver, Colorado. Founded in 2003, it has approximately 4,000 employees and annual revenue of $2,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 357, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_palantir', 'technology', 2003, NULL, NULL);

-- Company Snowflake (Fortune 500 #154)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_snowflake', 'organization', 'snowflake', 'Snowflake', 'published', 'Snowflake is an American cloud data company headquartered in Bozeman, Montana. Founded in 2012, it has approximately 7,000 employees and annual revenue of $3,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 356, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_snowflake', 'technology', 2012, NULL, NULL);

-- Company ServiceNow (Fortune 500 #155)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_servicenow', 'organization', 'servicenow', 'ServiceNow', 'published', 'ServiceNow is an American cloud software company headquartered in Santa Clara, California. Founded in 2003, it has approximately 26,293 employees and annual revenue of $10,984 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 355, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_servicenow', 'technology', 2003, NULL, NULL);

-- Company Workday (Fortune 500 #156)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_workday', 'organization', 'workday', 'Workday', 'published', 'Workday is an American cloud software company headquartered in Pleasanton, California. Founded in 2005, it has approximately 20,000 employees and annual revenue of $8,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 354, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_workday', 'technology', 2005, NULL, NULL);

-- Company Atlassian (Fortune 500 #157)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_atlassian', 'organization', 'atlassian', 'Atlassian', 'published', 'Atlassian is an American software company headquartered in San Francisco, California. Founded in 2002, it has approximately 12,000 employees and annual revenue of $4,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 353, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_atlassian', 'technology', 2002, NULL, NULL);

-- Company Intuit (Fortune 500 #158)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_intuit', 'organization', 'intuit', 'Intuit', 'published', 'Intuit is an American software company headquartered in Mountain View, California. Founded in 1983, it has approximately 18,000 employees and annual revenue of $16,480 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 352, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_intuit', 'technology', 1983, NULL, NULL);

-- Company Paychex (Fortune 500 #159)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_paychex', 'organization', 'paychex', 'Paychex', 'published', 'Paychex is an American hr software company headquartered in Rochester, New York. Founded in 1971, it has approximately 19,000 employees and annual revenue of $5,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 351, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_paychex', 'technology', 1971, NULL, NULL);

-- Company Workiva (Fortune 500 #160)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_workiva', 'organization', 'workiva', 'Workiva', 'published', 'Workiva is an American cloud software company headquartered in Ames, Iowa. Founded in 2008, it has approximately 3,000 employees and annual revenue of $760 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 350, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_workiva', 'technology', 2008, NULL, NULL);

-- Company Zoom Video (Fortune 500 #161)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_zoom-video', 'organization', 'zoom-video', 'Zoom Video', 'published', 'Zoom Video is an American video conferencing company headquartered in San Jose, California. Founded in 2011, it has approximately 7,400 employees and annual revenue of $4,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 349, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_zoom-video', 'conglomerate', 2011, NULL, NULL);

-- Company CrowdStrike (Fortune 500 #162)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_crowdstrike', 'organization', 'crowdstrike', 'CrowdStrike', 'published', 'CrowdStrike is an American cybersecurity company headquartered in Sunnyvale, California. Founded in 2011, it has approximately 8,500 employees and annual revenue of $4,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 348, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_crowdstrike', 'technology', 2011, NULL, NULL);

-- Company Palo Alto Networks (Fortune 500 #163)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_palo-alto-networks', 'organization', 'palo-alto-networks', 'Palo Alto Networks', 'published', 'Palo Alto Networks is an American cybersecurity company headquartered in Santa Clara, California. Founded in 2005, it has approximately 15,289 employees and annual revenue of $8,027 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 347, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_palo-alto-networks', 'technology', 2005, NULL, NULL);

-- Company Fortinet (Fortune 500 #164)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fortinet', 'organization', 'fortinet', 'Fortinet', 'published', 'Fortinet is an American cybersecurity company headquartered in Sunnyvale, California. Founded in 2000, it has approximately 14,000 employees and annual revenue of $6,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 346, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fortinet', 'technology', 2000, NULL, NULL);

-- Company Zscaler (Fortune 500 #165)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_zscaler', 'organization', 'zscaler', 'Zscaler', 'published', 'Zscaler is an American cybersecurity company headquartered in San Jose, California. Founded in 2007, it has approximately 7,200 employees and annual revenue of $2,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 345, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_zscaler', 'technology', 2007, NULL, NULL);

-- Company Cloudflare (Fortune 500 #166)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cloudflare', 'organization', 'cloudflare', 'Cloudflare', 'published', 'Cloudflare is an American cloud services company headquartered in San Francisco, California. Founded in 2009, it has approximately 4,200 employees and annual revenue of $1,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 344, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cloudflare', 'technology', 2009, NULL, NULL);

-- Company Akamai (Fortune 500 #167)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_akamai', 'organization', 'akamai', 'Akamai', 'published', 'Akamai is an American cloud services company headquartered in Cambridge, Massachusetts. Founded in 1998, it has approximately 10,000 employees and annual revenue of $3,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 343, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_akamai', 'technology', 1998, NULL, NULL);

-- Company DocuSign (Fortune 500 #168)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_docusign', 'organization', 'docusign', 'DocuSign', 'published', 'DocuSign is an American software company headquartered in San Francisco, California. Founded in 2003, it has approximately 6,800 employees and annual revenue of $2,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 342, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_docusign', 'technology', 2003, NULL, NULL);

-- Company Twilio (Fortune 500 #169)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_twilio', 'organization', 'twilio', 'Twilio', 'published', 'Twilio is an American cloud communications company headquartered in San Francisco, California. Founded in 2008, it has approximately 5,500 employees and annual revenue of $4,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 341, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_twilio', 'technology', 2008, NULL, NULL);

-- Company Block (Square) (Fortune 500 #170)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_block-square', 'organization', 'block-square', 'Block (Square)', 'published', 'Block (Square) is an American financial technology company headquartered in Oakland, California. Founded in 2009, it has approximately 11,372 employees and annual revenue of $24,121 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 340, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_block-square', 'technology', 2009, NULL, NULL);

-- Company Stripe (Fortune 500 #171)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_stripe', 'organization', 'stripe', 'Stripe', 'published', 'Stripe is an American financial technology company headquartered in South San Francisco, California. Founded in 2010, it has approximately 8,000 employees and annual revenue of $14,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 339, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_stripe', 'technology', 2010, NULL, NULL);

-- Company Plaid (Fortune 500 #172)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_plaid', 'organization', 'plaid', 'Plaid', 'published', 'Plaid is an American financial technology company headquartered in San Francisco, California. Founded in 2013, it has approximately 1,300 employees and annual revenue of $700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 338, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_plaid', 'technology', 2013, NULL, NULL);

-- Company Robinhood Markets (Fortune 500 #173)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_robinhood-markets', 'organization', 'robinhood-markets', 'Robinhood Markets', 'published', 'Robinhood Markets is an American financial technology company headquartered in Menlo Park, California. Founded in 2013, it has approximately 2,300 employees and annual revenue of $2,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 337, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_robinhood-markets', 'technology', 2013, NULL, NULL);

-- Company Rivian (Fortune 500 #174)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_rivian', 'organization', 'rivian', 'Rivian', 'published', 'Rivian is an American automotive company headquartered in Irvine, California. Founded in 2009, it has approximately 16,000 employees and annual revenue of $4,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 336, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_rivian', 'industrial', 2009, NULL, NULL);

-- Company Lucid Motors (Fortune 500 #175)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_lucid-motors', 'organization', 'lucid-motors', 'Lucid Motors', 'published', 'Lucid Motors is an American automotive company headquartered in Newark, California. Founded in 2007, it has approximately 6,500 employees and annual revenue of $800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 335, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_lucid-motors', 'industrial', 2007, NULL, NULL);

-- Company Ford Pro (Fortune 500 #176)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ford-pro', 'organization', 'ford-pro', 'Ford Pro', 'published', 'Ford Pro is an American automotive company headquartered in Dearborn, Michigan.', '["src_wikidata","src_dbpedia"]', unixepoch(), 334, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ford-pro', 'industrial', 2021, NULL, NULL);

-- Company Rivian Automotive (Fortune 500 #177)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_rivian-automotive', 'organization', 'rivian-automotive', 'Rivian Automotive', 'published', 'Rivian Automotive is an American automotive company headquartered in Irvine, California. Founded in 2009, it has approximately 16,000 employees and annual revenue of $4,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 333, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_rivian-automotive', 'industrial', 2009, NULL, NULL);

-- Company SpaceX (Fortune 500 #178)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_spacex', 'organization', 'spacex', 'SpaceX', 'published', 'SpaceX is an American aerospace company headquartered in Hawthorne, California. Founded in 2002, it has approximately 13,000 employees and annual revenue of $12,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 332, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_spacex', 'industrial', 2002, NULL, NULL);

-- Company Blue Origin (Fortune 500 #179)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_blue-origin', 'organization', 'blue-origin', 'Blue Origin', 'published', 'Blue Origin is an American aerospace company headquartered in Kent, Washington. Founded in 2000, it has approximately 10,000 employees and annual revenue of $1,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 331, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_blue-origin', 'industrial', 2000, NULL, NULL);

-- Company Boeing Defense (Fortune 500 #180)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_boeing-defense', 'organization', 'boeing-defense', 'Boeing Defense', 'published', 'Boeing Defense is an American aerospace and defense company headquartered in Arlington, Virginia. Founded in 1925, it has approximately 60,000 employees and annual revenue of $25,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 330, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_boeing-defense', 'industrial', 1925, NULL, NULL);

-- Company RTX (Raytheon) (Fortune 500 #181)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_rtx-raytheon', 'organization', 'rtx-raytheon', 'RTX (Raytheon)', 'published', 'RTX (Raytheon) is an American aerospace and defense company headquartered in Arlington, Virginia. Founded in 2020, it has approximately 185,000 employees and annual revenue of $79,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 329, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_rtx-raytheon', 'industrial', 2020, NULL, NULL);

-- Company Northrop Grumman (Fortune 500 #182)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_northrop-grumman', 'organization', 'northrop-grumman', 'Northrop Grumman', 'published', 'Northrop Grumman is an American aerospace and defense company headquartered in Falls Church, Virginia. Founded in 1994, it has approximately 95,000 employees and annual revenue of $40,580 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 328, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_northrop-grumman', 'industrial', 1994, NULL, NULL);

-- Company General Dynamics (Fortune 500 #183)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_general-dynamics', 'organization', 'general-dynamics', 'General Dynamics', 'published', 'General Dynamics is an American aerospace and defense company headquartered in Reston, Virginia. Founded in 1899, it has approximately 110,000 employees and annual revenue of $47,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 327, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_general-dynamics', 'industrial', 1899, NULL, NULL);

-- Company L3Harris Technologies (Fortune 500 #184)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_l3harris-technologies', 'organization', 'l3harris-technologies', 'L3Harris Technologies', 'published', 'L3Harris Technologies is an American aerospace and defense company headquartered in Melbourne, Florida. Founded in 2019, it has approximately 50,000 employees and annual revenue of $21,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 326, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_l3harris-technologies', 'industrial', 2019, NULL, NULL);

-- Company Textron (Fortune 500 #185)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_textron', 'organization', 'textron', 'Textron', 'published', 'Textron is an American aerospace and defense company headquartered in Providence, Rhode Island. Founded in 1923, it has approximately 35,000 employees and annual revenue of $13,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 325, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_textron', 'industrial', 1923, NULL, NULL);

-- Company BAE Systems Inc (Fortune 500 #186)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bae-systems', 'organization', 'bae-systems', 'BAE Systems Inc', 'published', 'BAE Systems Inc is an American aerospace and defense company headquartered in Falls Church, Virginia. Founded in 1999, it has approximately 41,000 employees and annual revenue of $13,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 324, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bae-systems', 'industrial', 1999, NULL, NULL);

-- Company General Atomics (Fortune 500 #187)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_general-atomics', 'organization', 'general-atomics', 'General Atomics', 'published', 'General Atomics is an American aerospace and defense company headquartered in San Diego, California. Founded in 1955, it has approximately 15,000 employees and annual revenue of $4,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 323, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_general-atomics', 'industrial', 1955, NULL, NULL);

-- Company Kiewit (Fortune 500 #188)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_kiewit', 'organization', 'kiewit', 'Kiewit', 'published', 'Kiewit is an American construction company headquartered in Omaha, Nebraska. Founded in 1884, it has approximately 31,000 employees and annual revenue of $17,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 322, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_kiewit', 'conglomerate', 1884, NULL, NULL);

-- Company Bechtel (Fortune 500 #189)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bechtel', 'organization', 'bechtel', 'Bechtel', 'published', 'Bechtel is an American construction company headquartered in Reston, Virginia. Founded in 1898, it has approximately 50,000 employees and annual revenue of $16,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 321, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bechtel', 'conglomerate', 1898, NULL, NULL);

-- Company Fluor (Fortune 500 #190)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fluor', 'organization', 'fluor', 'Fluor', 'published', 'Fluor is an American construction company headquartered in Irving, Texas. Founded in 1912, it has approximately 27,000 employees and annual revenue of $16,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 320, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fluor', 'conglomerate', 1912, NULL, NULL);

-- Company Quanta Services (Fortune 500 #191)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_quanta-services', 'organization', 'quanta-services', 'Quanta Services', 'published', 'Quanta Services is an American construction company headquartered in Houston, Texas. Founded in 1997, it has approximately 50,000 employees and annual revenue of $23,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 319, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_quanta-services', 'conglomerate', 1997, NULL, NULL);

-- Company EMCOR Group (Fortune 500 #192)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_emcor', 'organization', 'emcor', 'EMCOR Group', 'published', 'EMCOR Group is an American construction company headquartered in Norwalk, Connecticut. Founded in 1946, it has approximately 38,000 employees and annual revenue of $13,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 318, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_emcor', 'conglomerate', 1946, NULL, NULL);

-- Company Granite Construction (Fortune 500 #193)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_granite-construction', 'organization', 'granite-construction', 'Granite Construction', 'published', 'Granite Construction is an American construction company headquartered in Watsonville, California. Founded in 1922, it has approximately 6,500 employees and annual revenue of $3,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 317, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_granite-construction', 'conglomerate', 1922, NULL, NULL);

-- Company M.D.C. Holdings (Fortune 500 #194)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mdc', 'organization', 'mdc', 'M.D.C. Holdings', 'published', 'M.D.C. Holdings is an American home construction company headquartered in Denver, Colorado. Founded in 1972, it has approximately 6,700 employees and annual revenue of $4,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 316, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mdc', 'conglomerate', 1972, NULL, NULL);

-- Company D.R. Horton (Fortune 500 #195)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_dr-horton', 'organization', 'dr-horton', 'D.R. Horton', 'published', 'D.R. Horton is an American home construction company headquartered in Arlington, Texas. Founded in 1978, it has approximately 14,700 employees and annual revenue of $36,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 315, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_dr-horton', 'conglomerate', 1978, NULL, NULL);

-- Company Lennar (Fortune 500 #196)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_lennar', 'organization', 'lennar', 'Lennar', 'published', 'Lennar is an American home construction company headquartered in Miami, Florida. Founded in 1954, it has approximately 13,000 employees and annual revenue of $35,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 314, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_lennar', 'conglomerate', 1954, NULL, NULL);

-- Company PulteGroup (Fortune 500 #197)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_pultegroup', 'organization', 'pultegroup', 'PulteGroup', 'published', 'PulteGroup is an American home construction company headquartered in Atlanta, Georgia. Founded in 1950, it has approximately 6,500 employees and annual revenue of $17,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 313, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_pultegroup', 'conglomerate', 1950, NULL, NULL);

-- Company Taylor Morrison Home (Fortune 500 #198)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_taylor-morrison-home', 'organization', 'taylor-morrison-home', 'Taylor Morrison Home', 'published', 'Taylor Morrison Home is an American home construction company headquartered in Scottsdale, Arizona. Founded in 1936, it has approximately 3,000 employees and annual revenue of $8,170 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 312, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_taylor-morrison-home', 'conglomerate', 1936, NULL, NULL);

-- Company NVR Inc (Fortune 500 #199)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_nvr', 'organization', 'nvr', 'NVR Inc', 'published', 'NVR Inc is an American home construction company headquartered in Reston, Virginia. Founded in 1980, it has approximately 6,300 employees and annual revenue of $10,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 311, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_nvr', 'conglomerate', 1980, NULL, NULL);

-- Company Lennar Corp (Fortune 500 #200)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_lennar', 'organization', 'lennar', 'Lennar Corp', 'published', 'Lennar Corp is an American home construction company headquartered in Miami, Florida. Founded in 1954, it has approximately 13,000 employees and annual revenue of $35,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 310, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_lennar', 'conglomerate', 1954, NULL, NULL);

-- Company Hilton Worldwide (Fortune 500 #201)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hilton-worldwide', 'organization', 'hilton-worldwide', 'Hilton Worldwide', 'published', 'Hilton Worldwide is an American hospitality company headquartered in McLean, Virginia. Founded in 1919, it has approximately 184,000 employees and annual revenue of $11,120 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 309, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hilton-worldwide', 'conglomerate', 1919, NULL, NULL);

-- Company Marriott International (Fortune 500 #202)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_marriott', 'organization', 'marriott', 'Marriott International', 'published', 'Marriott International is an American hospitality company headquartered in Bethesda, Maryland. Founded in 1927, it has approximately 380,000 employees and annual revenue of $25,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 308, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_marriott', 'conglomerate', 1927, NULL, NULL);

-- Company Hyatt Hotels (Fortune 500 #203)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hyatt-hotels', 'organization', 'hyatt-hotels', 'Hyatt Hotels', 'published', 'Hyatt Hotels is an American hospitality company headquartered in Chicago, Illinois. Founded in 1957, it has approximately 130,000 employees and annual revenue of $6,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 307, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hyatt-hotels', 'conglomerate', 1957, NULL, NULL);

-- Company Wyndham Hotels & Resorts (Fortune 500 #204)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_wyndham-hotels-resorts', 'organization', 'wyndham-hotels-resorts', 'Wyndham Hotels & Resorts', 'published', 'Wyndham Hotels & Resorts is an American hospitality company headquartered in Parsippany, New Jersey. Founded in 2018, it has approximately 9,000 employees and annual revenue of $1,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 306, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_wyndham-hotels-resorts', 'conglomerate', 2018, NULL, NULL);

-- Company Caesars Entertainment (Fortune 500 #205)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_caesars-entertainment', 'organization', 'caesars-entertainment', 'Caesars Entertainment', 'published', 'Caesars Entertainment is an American casino and hospitality company headquartered in Reno, Nevada. Founded in 1973, it has approximately 51,000 employees and annual revenue of $11,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 305, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_caesars-entertainment', 'conglomerate', 1973, NULL, NULL);

-- Company MGM Resorts International (Fortune 500 #206)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mgm-resorts', 'organization', 'mgm-resorts', 'MGM Resorts International', 'published', 'MGM Resorts International is an American casino and hospitality company headquartered in Las Vegas, Nevada. Founded in 1986, it has approximately 70,000 employees and annual revenue of $16,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 304, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mgm-resorts', 'conglomerate', 1986, NULL, NULL);

-- Company Wynn Resorts (Fortune 500 #207)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_wynn-resorts', 'organization', 'wynn-resorts', 'Wynn Resorts', 'published', 'Wynn Resorts is an American casino and hospitality company headquartered in Las Vegas, Nevada. Founded in 2002, it has approximately 28,000 employees and annual revenue of $7,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 303, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_wynn-resorts', 'conglomerate', 2002, NULL, NULL);

-- Company Las Vegas Sands (Fortune 500 #208)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_las-vegas-sands', 'organization', 'las-vegas-sands', 'Las Vegas Sands', 'published', 'Las Vegas Sands is an American casino and hospitality company headquartered in Las Vegas, Nevada. Founded in 1988, it has approximately 38,000 employees and annual revenue of $11,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 302, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_las-vegas-sands', 'conglomerate', 1988, NULL, NULL);

-- Company Tesla Inc (Fortune 500 #209)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_tesla', 'organization', 'tesla', 'Tesla Inc', 'published', 'Tesla Inc is an American automotive and energy company headquartered in Austin, Texas. Founded in 2003, it has approximately 140,473 employees and annual revenue of $122,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 301, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_tesla', 'industrial', 2003, NULL, NULL);

-- Company Warner Bros. Discovery (Fortune 500 #210)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_warner-bros-discovery', 'organization', 'warner-bros-discovery', 'Warner Bros. Discovery', 'published', 'Warner Bros. Discovery is an American media company headquartered in New York City, New York. Founded in 2022, it has approximately 35,000 employees and annual revenue of $39,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 300, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_warner-bros-discovery', 'media', 2022, NULL, NULL);

-- Company Paramount Global (Fortune 500 #211)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_paramount-global', 'organization', 'paramount-global', 'Paramount Global', 'published', 'Paramount Global is an American media company headquartered in New York City, New York. Founded in 2019, it has approximately 38,000 employees and annual revenue of $28,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 299, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_paramount-global', 'media', 2019, NULL, NULL);

-- Company Fox Corporation (Fortune 500 #212)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fox', 'organization', 'fox', 'Fox Corporation', 'published', 'Fox Corporation is an American media company headquartered in New York City, New York. Founded in 2019, it has approximately 10,000 employees and annual revenue of $14,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 298, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fox', 'media', 2019, NULL, NULL);

-- Company News Corp (Fortune 500 #213)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_news', 'organization', 'news', 'News Corp', 'published', 'News Corp is an American media company headquartered in New York City, New York. Founded in 2013, it has approximately 25,000 employees and annual revenue of $10,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 297, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_news', 'media', 2013, NULL, NULL);

-- Company Spotify Technology (Fortune 500 #214)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_spotify-technology', 'organization', 'spotify-technology', 'Spotify Technology', 'published', 'Spotify Technology is an American streaming company headquartered in New York City, New York. Founded in 2006, it has approximately 7,000 employees and annual revenue of $14,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 296, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_spotify-technology', 'media', 2006, NULL, NULL);

-- Company Netflix (Fortune 500 #215)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_netflix', 'organization', 'netflix', 'Netflix', 'published', 'Netflix is an American streaming company headquartered in Los Gatos, California. Founded in 1997, it has approximately 14,000 employees and annual revenue of $33,723 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 295, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_netflix', 'media', 1997, NULL, NULL);

-- Company Roku (Fortune 500 #216)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_roku', 'organization', 'roku', 'Roku', 'published', 'Roku is an American streaming company headquartered in San Jose, California. Founded in 2002, it has approximately 3,100 employees and annual revenue of $3,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 294, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_roku', 'media', 2002, NULL, NULL);

-- Company Electronic Arts (Fortune 500 #217)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_electronic-arts', 'organization', 'electronic-arts', 'Electronic Arts', 'published', 'Electronic Arts is an American video games company headquartered in Redwood City, California. Founded in 1982, it has approximately 14,000 employees and annual revenue of $7,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 293, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_electronic-arts', 'conglomerate', 1982, NULL, NULL);

-- Company Activision Blizzard (Fortune 500 #218)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_activision-blizzard', 'organization', 'activision-blizzard', 'Activision Blizzard', 'published', 'Activision Blizzard is an American video games company headquartered in Santa Monica, California. Founded in 2008, it has approximately 17,000 employees and annual revenue of $7,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 292, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_activision-blizzard', 'conglomerate', 2008, NULL, NULL);

-- Company Take-Two Interactive (Fortune 500 #219)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_take-two-interactive', 'organization', 'take-two-interactive', 'Take-Two Interactive', 'published', 'Take-Two Interactive is an American video games company headquartered in New York City, New York. Founded in 1993, it has approximately 12,000 employees and annual revenue of $5,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 291, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_take-two-interactive', 'conglomerate', 1993, NULL, NULL);

-- Company Epic Games (Fortune 500 #220)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_epic-games', 'organization', 'epic-games', 'Epic Games', 'published', 'Epic Games is an American video games company headquartered in Cary, North Carolina. Founded in 1991, it has approximately 4,000 employees and annual revenue of $5,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 290, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_epic-games', 'conglomerate', 1991, NULL, NULL);

-- Company Roblox (Fortune 500 #221)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_roblox', 'organization', 'roblox', 'Roblox', 'published', 'Roblox is an American video games company headquartered in San Mateo, California. Founded in 2004, it has approximately 2,400 employees and annual revenue of $2,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 289, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_roblox', 'conglomerate', 2004, NULL, NULL);

-- Company Liberty Media (Fortune 500 #222)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_liberty-media', 'organization', 'liberty-media', 'Liberty Media', 'published', 'Liberty Media is an American media company headquartered in Englewood, Colorado. Founded in 1991, it has approximately 6,600 employees and annual revenue of $8,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 288, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_liberty-media', 'media', 1991, NULL, NULL);

-- Company Charter Communications (Fortune 500 #223)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_charter-communications', 'organization', 'charter-communications', 'Charter Communications', 'published', 'Charter Communications is an American telecommunications company headquartered in Stamford, Connecticut. Founded in 1993, it has approximately 101,700 employees and annual revenue of $55,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 287, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_charter-communications', 'media', 1993, NULL, NULL);

-- Company T-Mobile US (Fortune 500 #224)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_t-mobile-us', 'organization', 't-mobile-us', 'T-Mobile US', 'published', 'T-Mobile US is an American telecommunications company headquartered in Bellevue, Washington. Founded in 1994, it has approximately 70,000 employees and annual revenue of $79,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 286, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_t-mobile-us', 'media', 1994, NULL, NULL);

-- Company Dish Network (Fortune 500 #225)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_dish-network', 'organization', 'dish-network', 'Dish Network', 'published', 'Dish Network is an American telecommunications company headquartered in Englewood, Colorado. Founded in 1980, it has approximately 14,000 employees and annual revenue of $15,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 285, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_dish-network', 'media', 1980, NULL, NULL);

-- Company Liberty Broadband (Fortune 500 #226)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_liberty-broadband', 'organization', 'liberty-broadband', 'Liberty Broadband', 'published', 'Liberty Broadband is an American telecommunications company headquartered in Englewood, Colorado. Founded in 2014, it has approximately 1,700 employees and annual revenue of $1,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 284, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_liberty-broadband', 'media', 2014, NULL, NULL);

-- Company Sirius XM (Fortune 500 #227)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_sirius-xm', 'organization', 'sirius-xm', 'Sirius XM', 'published', 'Sirius XM is an American media company headquartered in New York City, New York. Founded in 2008, it has approximately 4,900 employees and annual revenue of $8,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 283, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_sirius-xm', 'media', 2008, NULL, NULL);

-- Company iHeartMedia (Fortune 500 #228)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_iheartmedia', 'organization', 'iheartmedia', 'iHeartMedia', 'published', 'iHeartMedia is an American media company headquartered in San Antonio, Texas. Founded in 2008, it has approximately 10,000 employees and annual revenue of $3,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 282, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_iheartmedia', 'media', 2008, NULL, NULL);

-- Company Liberty Latin America (Fortune 500 #229)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_liberty-latin-america', 'organization', 'liberty-latin-america', 'Liberty Latin America', 'published', 'Liberty Latin America is an American telecommunications company headquartered in Denver, Colorado. Founded in 2017, it has approximately 8,500 employees and annual revenue of $4,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 281, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_liberty-latin-america', 'media', 2017, NULL, NULL);

-- Company AMC Networks (Fortune 500 #230)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_amc-networks', 'organization', 'amc-networks', 'AMC Networks', 'published', 'AMC Networks is an American media company headquartered in New York City, New York. Founded in 2011, it has approximately 2,000 employees and annual revenue of $2,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 280, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_amc-networks', 'media', 2011, NULL, NULL);

-- Company Discovery Inc (Fortune 500 #231)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_discovery', 'organization', 'discovery', 'Discovery Inc', 'published', 'Discovery Inc is an American media company headquartered in New York City, New York.', '["src_wikidata","src_dbpedia"]', unixepoch(), 279, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_discovery', 'media', 1985, NULL, NULL);

-- Company Twenty-First Century Fox (Fortune 500 #232)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_twenty-first-century-fox', 'organization', 'twenty-first-century-fox', 'Twenty-First Century Fox', 'published', 'Twenty-First Century Fox is an American media company headquartered in New York City, New York.', '["src_wikidata","src_dbpedia"]', unixepoch(), 278, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_twenty-first-century-fox', 'media', 2013, NULL, NULL);

-- Company Hershey (Fortune 500 #233)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hershey', 'organization', 'hershey', 'Hershey', 'published', 'Hershey is an American food processing company headquartered in Hershey, Pennsylvania. Founded in 1894, it has approximately 16,000 employees and annual revenue of $11,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 277, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hershey', 'consumer', 1894, NULL, NULL);

-- Company Church & Dwight (Fortune 500 #234)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_church-dwight', 'organization', 'church-dwight', 'Church & Dwight', 'published', 'Church & Dwight is an American consumer products company headquartered in Ewing, New Jersey. Founded in 1846, it has approximately 5,400 employees and annual revenue of $6,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 276, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_church-dwight', 'consumer', 1846, NULL, NULL);

-- Company Clorox (Fortune 500 #235)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_clorox', 'organization', 'clorox', 'Clorox', 'published', 'Clorox is an American consumer products company headquartered in Oakland, California. Founded in 1913, it has approximately 8,800 employees and annual revenue of $7,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 275, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_clorox', 'consumer', 1913, NULL, NULL);

-- Company Kimberly-Clark (Fortune 500 #236)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_kimberly-clark', 'organization', 'kimberly-clark', 'Kimberly-Clark', 'published', 'Kimberly-Clark is an American consumer products company headquartered in Irving, Texas. Founded in 1872, it has approximately 41,000 employees and annual revenue of $20,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 274, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_kimberly-clark', 'consumer', 1872, NULL, NULL);

-- Company Colgate-Palmolive (Fortune 500 #237)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_colgate-palmolive', 'organization', 'colgate-palmolive', 'Colgate-Palmolive', 'published', 'Colgate-Palmolive is an American consumer products company headquartered in New York City, New York. Founded in 1806, it has approximately 34,000 employees and annual revenue of $19,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 273, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_colgate-palmolive', 'consumer', 1806, NULL, NULL);

-- Company Reckitt Benckiser US (Fortune 500 #238)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_reckitt-benckiser-us', 'organization', 'reckitt-benckiser-us', 'Reckitt Benckiser US', 'published', 'Reckitt Benckiser US is an American consumer products company headquartered in Parsippany, New Jersey.', '["src_wikidata","src_dbpedia"]', unixepoch(), 272, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_reckitt-benckiser-us', 'consumer', 1823, NULL, NULL);

-- Company Henkel US (Fortune 500 #239)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_henkel-us', 'organization', 'henkel-us', 'Henkel US', 'published', 'Henkel US is an American consumer products company headquartered in Stamford, Connecticut.', '["src_wikidata","src_dbpedia"]', unixepoch(), 271, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_henkel-us', 'consumer', 1876, NULL, NULL);

-- Company Henkel Consumer Brands (Fortune 500 #240)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_henkel-consumer-brands', 'organization', 'henkel-consumer-brands', 'Henkel Consumer Brands', 'published', 'Henkel Consumer Brands is an American consumer products company headquartered in Scottsdale, Arizona.', '["src_wikidata","src_dbpedia"]', unixepoch(), 270, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_henkel-consumer-brands', 'consumer', 1876, NULL, NULL);

-- Company Revlon (Fortune 500 #241)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_revlon', 'organization', 'revlon', 'Revlon', 'published', 'Revlon is an American cosmetics company headquartered in New York City, New York. Founded in 1932, it has approximately 2,600 employees and annual revenue of $2,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 269, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_revlon', 'conglomerate', 1932, NULL, NULL);

-- Company Coty (Fortune 500 #242)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_coty', 'organization', 'coty', 'Coty', 'published', 'Coty is an American cosmetics company headquartered in New York City, New York. Founded in 1904, it has approximately 11,000 employees and annual revenue of $5,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 268, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_coty', 'conglomerate', 1904, NULL, NULL);

-- Company Bath & Body Works (Fortune 500 #243)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bath-body-works', 'organization', 'bath-body-works', 'Bath & Body Works', 'published', 'Bath & Body Works is an American cosmetics and home company headquartered in Reynoldsburg, Ohio. Founded in 1990, it has approximately 32,000 employees and annual revenue of $7,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 267, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bath-body-works', 'conglomerate', 1990, NULL, NULL);

-- Company Ulta Beauty (Fortune 500 #244)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ulta-beauty', 'organization', 'ulta-beauty', 'Ulta Beauty', 'published', 'Ulta Beauty is an American retail cosmetics company headquartered in Bolingbrook, Illinois. Founded in 1990, it has approximately 53,000 employees and annual revenue of $11,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 266, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ulta-beauty', 'retail', 1990, NULL, NULL);

-- Company Sephora USA (Fortune 500 #245)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_sephora-usa', 'organization', 'sephora-usa', 'Sephora USA', 'published', 'Sephora USA is an American retail cosmetics company headquartered in San Francisco, California.', '["src_wikidata","src_dbpedia"]', unixepoch(), 265, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_sephora-usa', 'retail', 1969, NULL, NULL);

-- Company Tractor Supply (Fortune 500 #246)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_tractor-supply', 'organization', 'tractor-supply', 'Tractor Supply', 'published', 'Tractor Supply is an American retail company headquartered in Brentwood, Tennessee. Founded in 1938, it has approximately 50,000 employees and annual revenue of $14,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 264, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_tractor-supply', 'retail', 1938, NULL, NULL);

-- Company AutoZone (Fortune 500 #247)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_autozone', 'organization', 'autozone', 'AutoZone', 'published', 'AutoZone is an American retail automotive company headquartered in Memphis, Tennessee. Founded in 1979, it has approximately 75,000 employees and annual revenue of $18,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 263, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_autozone', 'retail', 1979, NULL, NULL);

-- Company O'Reilly Automotive (Fortune 500 #248)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_oreilly-automotive', 'organization', 'oreilly-automotive', 'O''Reilly Automotive', 'published', 'O''Reilly Automotive is an American retail automotive company headquartered in Springfield, Missouri. Founded in 1957, it has approximately 80,000 employees and annual revenue of $17,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 262, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_oreilly-automotive', 'retail', 1957, NULL, NULL);

-- Company Advance Auto Parts (Fortune 500 #249)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_advance-auto-parts', 'organization', 'advance-auto-parts', 'Advance Auto Parts', 'published', 'Advance Auto Parts is an American retail automotive company headquartered in Raleigh, North Carolina. Founded in 1932, it has approximately 50,000 employees and annual revenue of $11,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 261, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_advance-auto-parts', 'retail', 1932, NULL, NULL);

-- Company Carvana (Fortune 500 #250)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_carvana', 'organization', 'carvana', 'Carvana', 'published', 'Carvana is an American used car retail company headquartered in Tempe, Arizona. Founded in 2012, it has approximately 13,000 employees and annual revenue of $13,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 260, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_carvana', 'retail', 2012, NULL, NULL);

-- Company CarMax (Fortune 500 #251)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_carmax', 'organization', 'carmax', 'CarMax', 'published', 'CarMax is an American used car retail company headquartered in Richmond, Virginia. Founded in 1993, it has approximately 30,000 employees and annual revenue of $26,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 259, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_carmax', 'retail', 1993, NULL, NULL);

-- Company Lithia Motors (Fortune 500 #252)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_lithia-motors', 'organization', 'lithia-motors', 'Lithia Motors', 'published', 'Lithia Motors is an American retail automotive company headquartered in Medford, Oregon. Founded in 1946, it has approximately 27,000 employees and annual revenue of $38,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 258, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_lithia-motors', 'retail', 1946, NULL, NULL);

-- Company Group 1 Automotive (Fortune 500 #253)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_group-1-automotive', 'organization', 'group-1-automotive', 'Group 1 Automotive', 'published', 'Group 1 Automotive is an American retail automotive company headquartered in Houston, Texas. Founded in 2000, it has approximately 14,000 employees and annual revenue of $19,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 257, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_group-1-automotive', 'retail', 2000, NULL, NULL);

-- Company Penske Automotive Group (Fortune 500 #254)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_penske-automotive', 'organization', 'penske-automotive', 'Penske Automotive Group', 'published', 'Penske Automotive Group is an American retail automotive company headquartered in Bloomfield Hills, Michigan. Founded in 1990, it has approximately 27,000 employees and annual revenue of $30,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 256, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_penske-automotive', 'retail', 1990, NULL, NULL);

-- Company AutoNation (Fortune 500 #255)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_autonation', 'organization', 'autonation', 'AutoNation', 'published', 'AutoNation is an American retail automotive company headquartered in Fort Lauderdale, Florida. Founded in 1991, it has approximately 23,000 employees and annual revenue of $27,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 255, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_autonation', 'retail', 1991, NULL, NULL);

-- Company Sonic Automotive (Fortune 500 #256)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_sonic-automotive', 'organization', 'sonic-automotive', 'Sonic Automotive', 'published', 'Sonic Automotive is an American retail automotive company headquartered in Charlotte, North Carolina. Founded in 1997, it has approximately 12,000 employees and annual revenue of $14,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 254, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_sonic-automotive', 'retail', 1997, NULL, NULL);

-- Company Asbury Automotive Group (Fortune 500 #257)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_asbury-automotive', 'organization', 'asbury-automotive', 'Asbury Automotive Group', 'published', 'Asbury Automotive Group is an American retail automotive company headquartered in Duluth, Georgia. Founded in 1995, it has approximately 14,500 employees and annual revenue of $17,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 253, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_asbury-automotive', 'retail', 1995, NULL, NULL);

-- Company Williams Companies (Fortune 500 #258)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_williams-companies', 'organization', 'williams-companies', 'Williams Companies', 'published', 'Williams Companies is an American energy company headquartered in Tulsa, Oklahoma. Founded in 1908, it has approximately 5,500 employees and annual revenue of $11,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 252, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_williams-companies', 'industrial', 1908, NULL, NULL);

-- Company Kinder Morgan (Fortune 500 #259)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_kinder-morgan', 'organization', 'kinder-morgan', 'Kinder Morgan', 'published', 'Kinder Morgan is an American energy company headquartered in Houston, Texas. Founded in 1997, it has approximately 11,000 employees and annual revenue of $15,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 251, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_kinder-morgan', 'industrial', 1997, NULL, NULL);

-- Company Cheniere Energy (Fortune 500 #260)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cheniere-energy', 'organization', 'cheniere-energy', 'Cheniere Energy', 'published', 'Cheniere Energy is an American energy company headquartered in Houston, Texas. Founded in 1996, it has approximately 2,500 employees and annual revenue of $20,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 250, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cheniere-energy', 'industrial', 1996, NULL, NULL);

-- Company Dominion Energy (Fortune 500 #261)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_dominion-energy', 'organization', 'dominion-energy', 'Dominion Energy', 'published', 'Dominion Energy is an American energy company headquartered in Richmond, Virginia. Founded in 1909, it has approximately 17,000 employees and annual revenue of $14,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 249, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_dominion-energy', 'industrial', 1909, NULL, NULL);

-- Company Duke Energy (Fortune 500 #262)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_duke-energy', 'organization', 'duke-energy', 'Duke Energy', 'published', 'Duke Energy is an American energy company headquartered in Charlotte, North Carolina. Founded in 1904, it has approximately 27,000 employees and annual revenue of $30,360 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 248, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_duke-energy', 'industrial', 1904, NULL, NULL);

-- Company Southern Company (Fortune 500 #263)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_southern', 'organization', 'southern', 'Southern Company', 'published', 'Southern Company is an American energy company headquartered in Atlanta, Georgia. Founded in 1945, it has approximately 28,000 employees and annual revenue of $26,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 247, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_southern', 'industrial', 1945, NULL, NULL);

-- Company American Electric Power (Fortune 500 #264)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_american-electric-power', 'organization', 'american-electric-power', 'American Electric Power', 'published', 'American Electric Power is an American energy company headquartered in Columbus, Ohio. Founded in 1906, it has approximately 16,330 employees and annual revenue of $19,721 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 246, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_american-electric-power', 'industrial', 1906, NULL, NULL);

-- Company Exelon (Fortune 500 #265)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_exelon', 'organization', 'exelon', 'Exelon', 'published', 'Exelon is an American energy company headquartered in Chicago, Illinois. Founded in 2000, it has approximately 20,000 employees and annual revenue of $23,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 245, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_exelon', 'industrial', 2000, NULL, NULL);

-- Company Consolidated Edison (Fortune 500 #266)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_consolidated-edison', 'organization', 'consolidated-edison', 'Consolidated Edison', 'published', 'Consolidated Edison is an American energy company headquartered in New York City, New York. Founded in 1884, it has approximately 14,000 employees and annual revenue of $15,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 244, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_consolidated-edison', 'industrial', 1884, NULL, NULL);

-- Company Public Service Enterprise Group (Fortune 500 #267)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_public-service-enterprise', 'organization', 'public-service-enterprise', 'Public Service Enterprise Group', 'published', 'Public Service Enterprise Group is an American energy company headquartered in Newark, New Jersey. Founded in 1985, it has approximately 12,000 employees and annual revenue of $11,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 243, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_public-service-enterprise', 'industrial', 1985, NULL, NULL);

-- Company Pacific Gas & Electric (Fortune 500 #268)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_pacific-gas-electric', 'organization', 'pacific-gas-electric', 'Pacific Gas & Electric', 'published', 'Pacific Gas & Electric is an American energy company headquartered in San Francisco, California. Founded in 1905, it has approximately 28,410 employees and annual revenue of $24,419 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 242, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_pacific-gas-electric', 'industrial', 1905, NULL, NULL);

-- Company Edison International (Fortune 500 #269)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_edison', 'organization', 'edison', 'Edison International', 'published', 'Edison International is an American energy company headquartered in Rosemead, California. Founded in 1886, it has approximately 14,000 employees and annual revenue of $17,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 241, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_edison', 'industrial', 1886, NULL, NULL);

-- Company Consolidated Edison of New York (Fortune 500 #270)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_consolidated-edison-of-new-york', 'organization', 'consolidated-edison-of-new-york', 'Consolidated Edison of New York', 'published', 'Consolidated Edison of New York is an American energy company headquartered in New York City, New York.', '["src_wikidata","src_dbpedia"]', unixepoch(), 240, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_consolidated-edison-of-new-york', 'industrial', 1884, NULL, NULL);

-- Company Entergy (Fortune 500 #271)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_entergy', 'organization', 'entergy', 'Entergy', 'published', 'Entergy is an American energy company headquartered in New Orleans, Louisiana. Founded in 1949, it has approximately 12,000 employees and annual revenue of $12,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 239, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_entergy', 'industrial', 1949, NULL, NULL);

-- Company DTE Energy (Fortune 500 #272)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_dte-energy', 'organization', 'dte-energy', 'DTE Energy', 'published', 'DTE Energy is an American energy company headquartered in Detroit, Michigan. Founded in 1995, it has approximately 10,000 employees and annual revenue of $12,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 238, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_dte-energy', 'industrial', 1995, NULL, NULL);

-- Company Xcel Energy (Fortune 500 #273)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_xcel-energy', 'organization', 'xcel-energy', 'Xcel Energy', 'published', 'Xcel Energy is an American energy company headquartered in Minneapolis, Minnesota. Founded in 1909, it has approximately 11,000 employees and annual revenue of $13,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 237, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_xcel-energy', 'industrial', 1909, NULL, NULL);

-- Company Eversource Energy (Fortune 500 #274)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_eversource-energy', 'organization', 'eversource-energy', 'Eversource Energy', 'published', 'Eversource Energy is an American energy company headquartered in Hartford, Connecticut. Founded in 1966, it has approximately 10,000 employees and annual revenue of $12,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 236, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_eversource-energy', 'industrial', 1966, NULL, NULL);

-- Company Ecolab (Fortune 500 #275)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ecolab', 'organization', 'ecolab', 'Ecolab', 'published', 'Ecolab is an American chemicals company headquartered in St. Paul, Minnesota. Founded in 1923, it has approximately 48,000 employees and annual revenue of $15,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 235, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ecolab', 'industrial', 1923, NULL, NULL);

-- Company PPG Industries (Fortune 500 #276)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ppg', 'organization', 'ppg', 'PPG Industries', 'published', 'PPG Industries is an American chemicals company headquartered in Pittsburgh, Pennsylvania. Founded in 1883, it has approximately 50,000 employees and annual revenue of $18,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 234, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ppg', 'industrial', 1883, NULL, NULL);

-- Company Dow Inc (Fortune 500 #277)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_dow', 'organization', 'dow', 'Dow Inc', 'published', 'Dow Inc is an American chemicals company headquartered in Midland, Michigan. Founded in 1897, it has approximately 36,000 employees and annual revenue of $42,964 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 233, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_dow', 'industrial', 1897, NULL, NULL);

-- Company LyondellBasell (Fortune 500 #278)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_lyondellbasell', 'organization', 'lyondellbasell', 'LyondellBasell', 'published', 'LyondellBasell is an American chemicals company headquartered in Houston, Texas. Founded in 2007, it has approximately 20,000 employees and annual revenue of $40,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 232, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_lyondellbasell', 'industrial', 2007, NULL, NULL);

-- Company Air Products and Chemicals (Fortune 500 #279)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_air-products-and-chemicals', 'organization', 'air-products-and-chemicals', 'Air Products and Chemicals', 'published', 'Air Products and Chemicals is an American chemicals company headquartered in Allentown, Pennsylvania. Founded in 1940, it has approximately 23,000 employees and annual revenue of $12,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 231, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_air-products-and-chemicals', 'industrial', 1940, NULL, NULL);

-- Company Eastman Chemical (Fortune 500 #280)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_eastman-chemical', 'organization', 'eastman-chemical', 'Eastman Chemical', 'published', 'Eastman Chemical is an American chemicals company headquartered in Kingsport, Tennessee. Founded in 1920, it has approximately 14,000 employees and annual revenue of $9,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 230, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_eastman-chemical', 'industrial', 1920, NULL, NULL);

-- Company Celanese (Fortune 500 #281)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_celanese', 'organization', 'celanese', 'Celanese', 'published', 'Celanese is an American chemicals company headquartered in Irving, Texas. Founded in 1918, it has approximately 7,600 employees and annual revenue of $10,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 229, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_celanese', 'industrial', 1918, NULL, NULL);

-- Company CF Industries (Fortune 500 #282)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cf', 'organization', 'cf', 'CF Industries', 'published', 'CF Industries is an American chemicals company headquartered in Northbrook, Illinois. Founded in 1946, it has approximately 2,700 employees and annual revenue of $6,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 228, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cf', 'industrial', 1946, NULL, NULL);

-- Company Mosaic (Fortune 500 #283)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mosaic', 'organization', 'mosaic', 'Mosaic', 'published', 'Mosaic is an American chemicals company headquartered in Tampa, Florida. Founded in 2004, it has approximately 13,765 employees and annual revenue of $11,123 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 227, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mosaic', 'industrial', 2004, NULL, NULL);

-- Company Freeport-McMoRan (Fortune 500 #284)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_freeport-mcmoran', 'organization', 'freeport-mcmoran', 'Freeport-McMoRan', 'published', 'Freeport-McMoRan is an American mining company headquartered in Phoenix, Arizona. Founded in 1912, it has approximately 28,000 employees and annual revenue of $26,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 226, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_freeport-mcmoran', 'industrial', 1912, NULL, NULL);

-- Company Newmont (Fortune 500 #285)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_newmont', 'organization', 'newmont', 'Newmont', 'published', 'Newmont is an American mining company headquartered in Greenwood Village, Colorado. Founded in 1921, it has approximately 19,000 employees and annual revenue of $14,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 225, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_newmont', 'industrial', 1921, NULL, NULL);

-- Company Barrick Gold (Fortune 500 #286)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_barrick-gold', 'organization', 'barrick-gold', 'Barrick Gold', 'published', 'Barrick Gold is an American mining company headquartered in Toronto, Ontario. Founded in 1983, it has approximately 21,000 employees and annual revenue of $11,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 224, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_barrick-gold', 'industrial', 1983, NULL, NULL);

-- Company Nucor (Fortune 500 #287)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_nucor', 'organization', 'nucor', 'Nucor', 'published', 'Nucor is an American steel company headquartered in Charlotte, North Carolina. Founded in 1940, it has approximately 31,000 employees and annual revenue of $30,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 223, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_nucor', 'industrial', 1940, NULL, NULL);

-- Company US Steel (Fortune 500 #288)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_us-steel', 'organization', 'us-steel', 'US Steel', 'published', 'US Steel is an American steel company headquartered in Pittsburgh, Pennsylvania. Founded in 1901, it has approximately 22,900 employees and annual revenue of $15,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 222, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_us-steel', 'industrial', 1901, NULL, NULL);

-- Company Cleveland-Cliffs (Fortune 500 #289)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cleveland-cliffs', 'organization', 'cleveland-cliffs', 'Cleveland-Cliffs', 'published', 'Cleveland-Cliffs is an American steel company headquartered in Cleveland, Ohio. Founded in 1847, it has approximately 28,000 employees and annual revenue of $20,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 221, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cleveland-cliffs', 'industrial', 1847, NULL, NULL);

-- Company Nucor Steel (Fortune 500 #290)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_nucor-steel', 'organization', 'nucor-steel', 'Nucor Steel', 'published', 'Nucor Steel is an American steel company headquartered in Charlotte, North Carolina.', '["src_wikidata","src_dbpedia"]', unixepoch(), 220, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_nucor-steel', 'industrial', 1940, NULL, NULL);

-- Company Alcoa (Fortune 500 #291)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_alcoa', 'organization', 'alcoa', 'Alcoa', 'published', 'Alcoa is an American aluminum company headquartered in Pittsburgh, Pennsylvania. Founded in 1888, it has approximately 14,000 employees and annual revenue of $12,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 219, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_alcoa', 'conglomerate', 1888, NULL, NULL);

-- Company Corning Inc (Fortune 500 #292)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_corning', 'organization', 'corning', 'Corning Inc', 'published', 'Corning Inc is an American glass and ceramics company headquartered in Corning, New York. Founded in 1851, it has approximately 56,000 employees and annual revenue of $14,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 218, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_corning', 'conglomerate', 1851, NULL, NULL);

-- Company Owens Corning (Fortune 500 #293)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_owens-corning', 'organization', 'owens-corning', 'Owens Corning', 'published', 'Owens Corning is an American building materials company headquartered in Toledo, Ohio. Founded in 1938, it has approximately 25,000 employees and annual revenue of $10,975 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 217, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_owens-corning', 'conglomerate', 1938, NULL, NULL);

-- Company Vulcan Materials (Fortune 500 #294)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_vulcan-materials', 'organization', 'vulcan-materials', 'Vulcan Materials', 'published', 'Vulcan Materials is an American construction materials company headquartered in Birmingham, Alabama. Founded in 1909, it has approximately 11,971 employees and annual revenue of $7,418 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 216, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_vulcan-materials', 'conglomerate', 1909, NULL, NULL);

-- Company Martin Marietta Materials (Fortune 500 #295)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_martin-marietta-materials', 'organization', 'martin-marietta-materials', 'Martin Marietta Materials', 'published', 'Martin Marietta Materials is an American construction materials company headquartered in Raleigh, North Carolina. Founded in 1993, it has approximately 9,400 employees and annual revenue of $6,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 215, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_martin-marietta-materials', 'conglomerate', 1993, NULL, NULL);

-- Company Eastman Kodak (Fortune 500 #296)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_eastman-kodak', 'organization', 'eastman-kodak', 'Eastman Kodak', 'published', 'Eastman Kodak is an American photography and printing company headquartered in Rochester, New York. Founded in 1888, it has approximately 4,900 employees and annual revenue of $4,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 214, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_eastman-kodak', 'conglomerate', 1888, NULL, NULL);

-- Company Xerox (Fortune 500 #297)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_xerox', 'organization', 'xerox', 'Xerox', 'published', 'Xerox is an American document technology company headquartered in Norwalk, Connecticut. Founded in 1906, it has approximately 21,000 employees and annual revenue of $7,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 213, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_xerox', 'technology', 1906, NULL, NULL);

-- Company HP Inc (Fortune 500 #298)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hp', 'organization', 'hp', 'HP Inc', 'published', 'HP Inc is an American technology hardware company headquartered in Palo Alto, California. Founded in 1939, it has approximately 58,000 employees and annual revenue of $53,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 212, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hp', 'technology', 1939, NULL, NULL);

-- Company Hewlett Packard Enterprise (Fortune 500 #299)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hewlett-packard-enterprise', 'organization', 'hewlett-packard-enterprise', 'Hewlett Packard Enterprise', 'published', 'Hewlett Packard Enterprise is an American technology hardware company headquartered in Spring, Texas. Founded in 2015, it has approximately 60,000 employees and annual revenue of $30,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 211, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hewlett-packard-enterprise', 'technology', 2015, NULL, NULL);

-- Company Dell Technologies (Fortune 500 #300)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_dell-technologies', 'organization', 'dell-technologies', 'Dell Technologies', 'published', 'Dell Technologies is an American technology hardware company headquartered in Round Rock, Texas. Founded in 1984, it has approximately 120,000 employees and annual revenue of $89,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 210, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_dell-technologies', 'technology', 1984, NULL, NULL);

-- Company Western Digital (Fortune 500 #301)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_western-digital', 'organization', 'western-digital', 'Western Digital', 'published', 'Western Digital is an American storage technology company headquartered in San Jose, California. Founded in 1970, it has approximately 53,000 employees and annual revenue of $15,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 209, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_western-digital', 'technology', 1970, NULL, NULL);

-- Company Seagate Technology (Fortune 500 #302)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_seagate-technology', 'organization', 'seagate-technology', 'Seagate Technology', 'published', 'Seagate Technology is an American storage technology company headquartered in Fremont, California. Founded in 1978, it has approximately 35,000 employees and annual revenue of $6,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 208, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_seagate-technology', 'technology', 1978, NULL, NULL);

-- Company Micron Technology (Fortune 500 #303)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_micron-technology', 'organization', 'micron-technology', 'Micron Technology', 'published', 'Micron Technology is an American semiconductors company headquartered in Boise, Idaho. Founded in 1978, it has approximately 48,000 employees and annual revenue of $30,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 207, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_micron-technology', 'technology', 1978, NULL, NULL);

-- Company Texas Instruments (Fortune 500 #304)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_texas-instruments', 'organization', 'texas-instruments', 'Texas Instruments', 'published', 'Texas Instruments is an American semiconductors company headquartered in Dallas, Texas. Founded in 1951, it has approximately 34,000 employees and annual revenue of $17,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 206, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_texas-instruments', 'technology', 1951, NULL, NULL);

-- Company Qualcomm (Fortune 500 #305)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_qualcomm', 'organization', 'qualcomm', 'Qualcomm', 'published', 'Qualcomm is an American semiconductors company headquartered in San Diego, California. Founded in 1985, it has approximately 50,000 employees and annual revenue of $35,820 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 205, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_qualcomm', 'technology', 1985, NULL, NULL);

-- Company Broadcom (Fortune 500 #306)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_broadcom', 'organization', 'broadcom', 'Broadcom', 'published', 'Broadcom is an American semiconductors company headquartered in Palo Alto, California. Founded in 1991, it has approximately 20,000 employees and annual revenue of $35,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 204, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_broadcom', 'technology', 1991, NULL, NULL);

-- Company Applied Materials (Fortune 500 #307)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_applied-materials', 'organization', 'applied-materials', 'Applied Materials', 'published', 'Applied Materials is an American semiconductor equipment company headquartered in Santa Clara, California. Founded in 1967, it has approximately 35,000 employees and annual revenue of $27,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 203, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_applied-materials', 'technology', 1967, NULL, NULL);

-- Company Lam Research (Fortune 500 #308)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_lam-research', 'organization', 'lam-research', 'Lam Research', 'published', 'Lam Research is an American semiconductor equipment company headquartered in Fremont, California. Founded in 1980, it has approximately 17,000 employees and annual revenue of $15,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 202, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_lam-research', 'technology', 1980, NULL, NULL);

-- Company KLA Corporation (Fortune 500 #309)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_kla', 'organization', 'kla', 'KLA Corporation', 'published', 'KLA Corporation is an American semiconductor equipment company headquartered in Milpitas, California. Founded in 1997, it has approximately 15,000 employees and annual revenue of $11,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 201, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_kla', 'technology', 1997, NULL, NULL);

-- Company ASML US (Fortune 500 #310)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_asml-us', 'organization', 'asml-us', 'ASML US', 'published', 'ASML US is an American semiconductor equipment company headquartered in Chandler, Arizona.', '["src_wikidata","src_dbpedia"]', unixepoch(), 200, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_asml-us', 'technology', 1984, NULL, NULL);

-- Company Jabil (Fortune 500 #311)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_jabil', 'organization', 'jabil', 'Jabil', 'published', 'Jabil is an American electronics manufacturing company headquartered in St. Petersburg, Florida. Founded in 1966, it has approximately 250,000 employees and annual revenue of $26,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 199, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_jabil', 'industrial', 1966, NULL, NULL);

-- Company Flex (Fortune 500 #312)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_flex', 'organization', 'flex', 'Flex', 'published', 'Flex is an American electronics manufacturing company headquartered in Austin, Texas. Founded in 1969, it has approximately 140,000 employees and annual revenue of $26,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 198, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_flex', 'industrial', 1969, NULL, NULL);

-- Company Sanmina (Fortune 500 #313)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_sanmina', 'organization', 'sanmina', 'Sanmina', 'published', 'Sanmina is an American electronics manufacturing company headquartered in San Jose, California. Founded in 1980, it has approximately 35,000 employees and annual revenue of $7,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 197, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_sanmina', 'industrial', 1980, NULL, NULL);

-- Company Celestica (Fortune 500 #314)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_celestica', 'organization', 'celestica', 'Celestica', 'published', 'Celestica is an American electronics manufacturing company headquartered in Toronto, Ontario. Founded in 1996, it has approximately 23,000 employees and annual revenue of $9,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 196, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_celestica', 'industrial', 1996, NULL, NULL);

-- Company Arrow Electronics (Fortune 500 #315)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_arrow-electronics', 'organization', 'arrow-electronics', 'Arrow Electronics', 'published', 'Arrow Electronics is an American electronics distribution company headquartered in Centennial, Colorado. Founded in 1935, it has approximately 22,000 employees and annual revenue of $33,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 195, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_arrow-electronics', 'conglomerate', 1935, NULL, NULL);

-- Company Avnet (Fortune 500 #316)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_avnet', 'organization', 'avnet', 'Avnet', 'published', 'Avnet is an American electronics distribution company headquartered in Phoenix, Arizona. Founded in 1921, it has approximately 15,462 employees and annual revenue of $23,757 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 194, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_avnet', 'conglomerate', 1921, NULL, NULL);

-- Company WESCO International (Fortune 500 #317)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_wesco', 'organization', 'wesco', 'WESCO International', 'published', 'WESCO International is an American electronics distribution company headquartered in Pittsburgh, Pennsylvania. Founded in 1922, it has approximately 20,000 employees and annual revenue of $21,819 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 193, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_wesco', 'conglomerate', 1922, NULL, NULL);

-- Company Insight Enterprises (Fortune 500 #318)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_insight-enterprises', 'organization', 'insight-enterprises', 'Insight Enterprises', 'published', 'Insight Enterprises is an American it distribution company headquartered in Chandler, Arizona. Founded in 1988, it has approximately 12,000 employees and annual revenue of $9,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 192, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_insight-enterprises', 'technology', 1988, NULL, NULL);

-- Company CDW Corporation (Fortune 500 #319)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cdw', 'organization', 'cdw', 'CDW Corporation', 'published', 'CDW Corporation is an American it distribution company headquartered in Vernon Hills, Illinois. Founded in 1984, it has approximately 15,700 employees and annual revenue of $20,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 191, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cdw', 'technology', 1984, NULL, NULL);

-- Company Henry Schein (Fortune 500 #320)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_henry-schein', 'organization', 'henry-schein', 'Henry Schein', 'published', 'Henry Schein is an American healthcare distribution company headquartered in Melville, New York. Founded in 1932, it has approximately 25,000 employees and annual revenue of $12,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 190, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_henry-schein', 'healthcare', 1932, NULL, NULL);

-- Company Patterson Companies (Fortune 500 #321)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_patterson-companies', 'organization', 'patterson-companies', 'Patterson Companies', 'published', 'Patterson Companies is an American healthcare distribution company headquartered in Minnetonka, Minnesota. Founded in 1877, it has approximately 11,000 employees and annual revenue of $6,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 189, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_patterson-companies', 'healthcare', 1877, NULL, NULL);

-- Company Owens & Minor (Fortune 500 #322)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_owens-minor', 'organization', 'owens-minor', 'Owens & Minor', 'published', 'Owens & Minor is an American healthcare distribution company headquartered in Mechanicsville, Virginia. Founded in 1882, it has approximately 18,000 employees and annual revenue of $10,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 188, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_owens-minor', 'healthcare', 1882, NULL, NULL);

-- Company Performance Food Group (Fortune 500 #323)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_performance-food', 'organization', 'performance-food', 'Performance Food Group', 'published', 'Performance Food Group is an American food distribution company headquartered in Richmond, Virginia. Founded in 1885, it has approximately 30,000 employees and annual revenue of $58,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 187, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_performance-food', 'consumer', 1885, NULL, NULL);

-- Company Sysco (Fortune 500 #324)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_sysco', 'organization', 'sysco', 'Sysco', 'published', 'Sysco is an American food distribution company headquartered in Houston, Texas. Founded in 1969, it has approximately 73,000 employees and annual revenue of $78,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 186, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_sysco', 'consumer', 1969, NULL, NULL);

-- Company US Foods (Fortune 500 #325)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_us-foods', 'organization', 'us-foods', 'US Foods', 'published', 'US Foods is an American food distribution company headquartered in Rosemont, Illinois. Founded in 1989, it has approximately 30,000 employees and annual revenue of $38,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 185, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_us-foods', 'consumer', 1989, NULL, NULL);

-- Company Wesco (Fortune 500 #326)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_wesco', 'organization', 'wesco', 'Wesco', 'published', 'Wesco is an American electrical and data products company headquartered in Pittsburgh, Pennsylvania.', '["src_wikidata","src_dbpedia"]', unixepoch(), 184, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_wesco', 'conglomerate', 1922, NULL, NULL);

-- Company HD Supply Holdings (Fortune 500 #327)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hd-supply', 'organization', 'hd-supply', 'HD Supply Holdings', 'published', 'HD Supply Holdings is an American industrial distribution company headquartered in Atlanta, Georgia. Founded in 1975, it has approximately 7,000 employees and annual revenue of $6,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 183, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hd-supply', 'industrial', 1975, NULL, NULL);

-- Company Genuine Parts Company (Fortune 500 #328)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_genuine-parts', 'organization', 'genuine-parts', 'Genuine Parts Company', 'published', 'Genuine Parts Company is an American automotive parts distribution company headquartered in Atlanta, Georgia. Founded in 1928, it has approximately 50,000 employees and annual revenue of $23,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 182, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_genuine-parts', 'industrial', 1928, NULL, NULL);

-- Company LKQ Corporation (Fortune 500 #329)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_lkq', 'organization', 'lkq', 'LKQ Corporation', 'published', 'LKQ Corporation is an American automotive parts distribution company headquartered in Chicago, Illinois. Founded in 1998, it has approximately 45,000 employees and annual revenue of $14,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 181, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_lkq', 'industrial', 1998, NULL, NULL);

-- Company Andersons (Fortune 500 #330)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_andersons', 'organization', 'andersons', 'Andersons', 'published', 'Andersons is an American agriculture distribution company headquartered in Maumee, Ohio. Founded in 1947, it has approximately 2,300 employees and annual revenue of $11,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 180, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_andersons', 'conglomerate', 1947, NULL, NULL);

-- Company Bunge (Fortune 500 #331)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bunge', 'organization', 'bunge', 'Bunge', 'published', 'Bunge is an American agriculture and food company headquartered in St. Louis, Missouri. Founded in 1818, it has approximately 23,000 employees and annual revenue of $53,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 179, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bunge', 'consumer', 1818, NULL, NULL);

-- Company Archer Daniels Midland (Fortune 500 #332)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_archer-daniels-midland', 'organization', 'archer-daniels-midland', 'Archer Daniels Midland', 'published', 'Archer Daniels Midland is an American agriculture and food company headquartered in Chicago, Illinois. Founded in 1902, it has approximately 44,000 employees and annual revenue of $88,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 178, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_archer-daniels-midland', 'consumer', 1902, NULL, NULL);

-- Company Cargill Inc (Fortune 500 #333)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cargill', 'organization', 'cargill', 'Cargill Inc', 'published', 'Cargill Inc is an American agriculture and food company headquartered in Minnetonka, Minnesota.', '["src_wikidata","src_dbpedia"]', unixepoch(), 177, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cargill', 'consumer', 1865, NULL, NULL);

-- Company CHS Inc (Fortune 500 #334)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_chs', 'organization', 'chs', 'CHS Inc', 'published', 'CHS Inc is an American agriculture cooperative company headquartered in Inver Grove Heights, Minnesota. Founded in 1931, it has approximately 10,000 employees and annual revenue of $39,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 176, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_chs', 'conglomerate', 1931, NULL, NULL);

-- Company Land O'Lakes (Fortune 500 #335)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_land-olakes', 'organization', 'land-olakes', 'Land O''Lakes', 'published', 'Land O''Lakes is an American agriculture cooperative company headquartered in Arden Hills, Minnesota. Founded in 1921, it has approximately 9,000 employees and annual revenue of $17,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 175, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_land-olakes', 'conglomerate', 1921, NULL, NULL);

-- Company Blue Diamond Growers (Fortune 500 #336)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_blue-diamond-growers', 'organization', 'blue-diamond-growers', 'Blue Diamond Growers', 'published', 'Blue Diamond Growers is an American agriculture cooperative company headquartered in Sacramento, California. Founded in 1910, it has approximately 1,800 employees and annual revenue of $1,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 174, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_blue-diamond-growers', 'conglomerate', 1910, NULL, NULL);

-- Company Sunkist Growers (Fortune 500 #337)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_sunkist-growers', 'organization', 'sunkist-growers', 'Sunkist Growers', 'published', 'Sunkist Growers is an American agriculture cooperative company headquartered in Valencia, California. Founded in 1893, it has approximately 700 employees and annual revenue of $1,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 173, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_sunkist-growers', 'conglomerate', 1893, NULL, NULL);

-- Company Yum China Holdings (Fortune 500 #338)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_yum-china', 'organization', 'yum-china', 'Yum China Holdings', 'published', 'Yum China Holdings is an American restaurant company headquartered in Shanghai, Shanghai. Founded in 1987, it has approximately 162,000 employees and annual revenue of $11,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 172, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_yum-china', 'consumer', 1987, NULL, NULL);

-- Company Yum Brands (Fortune 500 #339)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_yum-brands', 'organization', 'yum-brands', 'Yum Brands', 'published', 'Yum Brands is an American restaurant company headquartered in Louisville, Kentucky. Founded in 1997, it has approximately 40,000 employees and annual revenue of $7,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 171, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_yum-brands', 'consumer', 1997, NULL, NULL);

-- Company McDonald's (Fortune 500 #340)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mcdonalds', 'organization', 'mcdonalds', 'McDonald''s', 'published', 'McDonald''s is an American restaurant company headquartered in Chicago, Illinois. Founded in 1955, it has approximately 150,000 employees and annual revenue of $25,494 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 170, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mcdonalds', 'consumer', 1955, NULL, NULL);

-- Company Chipotle Mexican Grill (Fortune 500 #341)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_chipotle-mexican-grill', 'organization', 'chipotle-mexican-grill', 'Chipotle Mexican Grill', 'published', 'Chipotle Mexican Grill is an American restaurant company headquartered in Newport Beach, California. Founded in 1993, it has approximately 110,000 employees and annual revenue of $11,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 169, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_chipotle-mexican-grill', 'consumer', 1993, NULL, NULL);

-- Company Starbucks (Fortune 500 #342)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_starbucks', 'organization', 'starbucks', 'Starbucks', 'published', 'Starbucks is an American restaurant and coffee company headquartered in Seattle, Washington. Founded in 1971, it has approximately 228,000 employees and annual revenue of $36,175 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 168, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_starbucks', 'consumer', 1971, NULL, NULL);

-- Company Darden Restaurants (Fortune 500 #343)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_darden-restaurants', 'organization', 'darden-restaurants', 'Darden Restaurants', 'published', 'Darden Restaurants is an American restaurant company headquartered in Orlando, Florida. Founded in 1995, it has approximately 187,000 employees and annual revenue of $11,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 167, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_darden-restaurants', 'consumer', 1995, NULL, NULL);

-- Company Texas Roadhouse (Fortune 500 #344)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_texas-roadhouse', 'organization', 'texas-roadhouse', 'Texas Roadhouse', 'published', 'Texas Roadhouse is an American restaurant company headquartered in Louisville, Kentucky. Founded in 1993, it has approximately 82,000 employees and annual revenue of $5,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 166, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_texas-roadhouse', 'consumer', 1993, NULL, NULL);

-- Company Bloomin' Brands (Fortune 500 #346)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bloomin-brands', 'organization', 'bloomin-brands', 'Bloomin'' Brands', 'published', 'Bloomin'' Brands is an American restaurant company headquartered in Tampa, Florida. Founded in 1988, it has approximately 87,000 employees and annual revenue of $4,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 164, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bloomin-brands', 'consumer', 1988, NULL, NULL);

-- Company BJ's Restaurants (Fortune 500 #347)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bjs-restaurants', 'organization', 'bjs-restaurants', 'BJ''s Restaurants', 'published', 'BJ''s Restaurants is an American restaurant company headquartered in Huntington Beach, California. Founded in 1978, it has approximately 22,000 employees and annual revenue of $1,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 163, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bjs-restaurants', 'consumer', 1978, NULL, NULL);

-- Company Cheesecake Factory (Fortune 500 #348)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cheesecake-factory', 'organization', 'cheesecake-factory', 'Cheesecake Factory', 'published', 'Cheesecake Factory is an American restaurant company headquartered in Calabasas Hills, California. Founded in 1978, it has approximately 47,000 employees and annual revenue of $3,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 162, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cheesecake-factory', 'consumer', 1978, NULL, NULL);

-- Company Cracker Barrel (Fortune 500 #349)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cracker-barrel', 'organization', 'cracker-barrel', 'Cracker Barrel', 'published', 'Cracker Barrel is an American restaurant company headquartered in Lebanon, Tennessee. Founded in 1969, it has approximately 73,000 employees and annual revenue of $3,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 161, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cracker-barrel', 'consumer', 1969, NULL, NULL);

-- Company Domino's Pizza (Fortune 500 #350)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_dominos-pizza', 'organization', 'dominos-pizza', 'Domino''s Pizza', 'published', 'Domino''s Pizza is an American restaurant company headquartered in Ann Arbor, Michigan. Founded in 1960, it has approximately 13,000 employees and annual revenue of $4,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 160, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_dominos-pizza', 'consumer', 1960, NULL, NULL);

-- Company Papa John's (Fortune 500 #351)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_papa-johns', 'organization', 'papa-johns', 'Papa John''s', 'published', 'Papa John''s is an American restaurant company headquartered in Atlanta, Georgia. Founded in 1984, it has approximately 13,000 employees and annual revenue of $2,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 159, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_papa-johns', 'consumer', 1984, NULL, NULL);

-- Company Wendy's (Fortune 500 #352)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_wendys', 'organization', 'wendys', 'Wendy''s', 'published', 'Wendy''s is an American restaurant company headquartered in Dublin, Ohio. Founded in 1969, it has approximately 14,000 employees and annual revenue of $2,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 158, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_wendys', 'consumer', 1969, NULL, NULL);

-- Company Jack in the Box (Fortune 500 #353)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_jack-in-the-box', 'organization', 'jack-in-the-box', 'Jack in the Box', 'published', 'Jack in the Box is an American restaurant company headquartered in San Diego, California. Founded in 1951, it has approximately 5,200 employees and annual revenue of $1,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 157, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_jack-in-the-box', 'consumer', 1951, NULL, NULL);

-- Company Brinker International (Fortune 500 #354)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_brinker', 'organization', 'brinker', 'Brinker International', 'published', 'Brinker International is an American restaurant company headquartered in Dallas, Texas. Founded in 1975, it has approximately 80,000 employees and annual revenue of $4,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 156, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_brinker', 'consumer', 1975, NULL, NULL);

-- Company Dine Brands (Fortune 500 #355)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_dine-brands', 'organization', 'dine-brands', 'Dine Brands', 'published', 'Dine Brands is an American restaurant company headquartered in Pasadena, California. Founded in 1958, it has approximately 3,700 employees and annual revenue of $850 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 155, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_dine-brands', 'consumer', 1958, NULL, NULL);

-- Company Restaurant Brands International (Fortune 500 #356)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_restaurant-brands', 'organization', 'restaurant-brands', 'Restaurant Brands International', 'published', 'Restaurant Brands International is an American restaurant company headquartered in Toronto, Ontario. Founded in 2014, it has approximately 30,000 employees and annual revenue of $7,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 154, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_restaurant-brands', 'consumer', 2014, NULL, NULL);

-- Company In-N-Out Burger (Fortune 500 #357)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_in-n-out-burger', 'organization', 'in-n-out-burger', 'In-N-Out Burger', 'published', 'In-N-Out Burger is an American restaurant company headquartered in Irvine, California. Founded in 1948, it has approximately 27,000 employees and annual revenue of $2,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 153, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_in-n-out-burger', 'consumer', 1948, NULL, NULL);

-- Company Five Guys (Fortune 500 #358)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_five-guys', 'organization', 'five-guys', 'Five Guys', 'published', 'Five Guys is an American restaurant company headquartered in Lorton, Virginia.', '["src_wikidata","src_dbpedia"]', unixepoch(), 152, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_five-guys', 'consumer', 1986, NULL, NULL);

-- Company Shake Shack (Fortune 500 #359)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_shake-shack', 'organization', 'shake-shack', 'Shake Shack', 'published', 'Shake Shack is an American restaurant company headquartered in New York City, New York. Founded in 2001, it has approximately 10,000 employees and annual revenue of $1,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 151, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_shake-shack', 'consumer', 2001, NULL, NULL);

-- Company Sweetgreen (Fortune 500 #360)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_sweetgreen', 'organization', 'sweetgreen', 'Sweetgreen', 'published', 'Sweetgreen is an American restaurant company headquartered in Los Angeles, California. Founded in 2007, it has approximately 6,500 employees and annual revenue of $680 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 150, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_sweetgreen', 'consumer', 2007, NULL, NULL);

-- Company Cava Group (Fortune 500 #361)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cava', 'organization', 'cava', 'Cava Group', 'published', 'Cava Group is an American restaurant company headquartered in Washington, District of Columbia. Founded in 2006, it has approximately 8,500 employees and annual revenue of $1,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 149, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cava', 'consumer', 2006, NULL, NULL);

-- Company Levi Strauss & Co (Fortune 500 #362)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_levi-strauss-co', 'organization', 'levi-strauss-co', 'Levi Strauss & Co', 'published', 'Levi Strauss & Co is an American apparel company headquartered in San Francisco, California.', '["src_wikidata","src_dbpedia"]', unixepoch(), 148, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_levi-strauss-co', 'consumer', 1853, NULL, NULL);

-- Company Burlington Stores (Fortune 500 #363)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_burlington-stores', 'organization', 'burlington-stores', 'Burlington Stores', 'published', 'Burlington Stores is an American retail apparel company headquartered in Burlington, New Jersey. Founded in 1972, it has approximately 42,000 employees and annual revenue of $11,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 147, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_burlington-stores', 'retail', 1972, NULL, NULL);

-- Company Five Below (Fortune 500 #364)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_five-below', 'organization', 'five-below', 'Five Below', 'published', 'Five Below is an American retail company headquartered in Philadelphia, Pennsylvania. Founded in 2002, it has approximately 14,000 employees and annual revenue of $3,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 146, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_five-below', 'retail', 2002, NULL, NULL);

-- Company Ollie's Bargain Outlet (Fortune 500 #365)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ollies-bargain-outlet', 'organization', 'ollies-bargain-outlet', 'Ollie''s Bargain Outlet', 'published', 'Ollie''s Bargain Outlet is an American retail discount company headquartered in Harrisburg, Pennsylvania. Founded in 1982, it has approximately 6,000 employees and annual revenue of $2,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 145, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ollies-bargain-outlet', 'retail', 1982, NULL, NULL);

-- Company Academy Sports & Outdoors (Fortune 500 #366)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_academy-sports-outdoors', 'organization', 'academy-sports-outdoors', 'Academy Sports & Outdoors', 'published', 'Academy Sports & Outdoors is an American retail sporting goods company headquartered in Katy, Texas. Founded in 1938, it has approximately 12,000 employees and annual revenue of $5,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 144, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_academy-sports-outdoors', 'retail', 1938, NULL, NULL);

-- Company DICK'S Sporting Goods (Fortune 500 #367)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_dicks-sporting-goods', 'organization', 'dicks-sporting-goods', 'DICK''S Sporting Goods', 'published', 'DICK''S Sporting Goods is an American retail sporting goods company headquartered in Coraopolis, Pennsylvania. Founded in 1948, it has approximately 50,000 employees and annual revenue of $13,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 143, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_dicks-sporting-goods', 'retail', 1948, NULL, NULL);

-- Company Foot Locker (Fortune 500 #368)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_foot-locker', 'organization', 'foot-locker', 'Foot Locker', 'published', 'Foot Locker is an American retail footwear company headquartered in New York City, New York. Founded in 1974, it has approximately 32,000 employees and annual revenue of $8,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 142, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_foot-locker', 'retail', 1974, NULL, NULL);

-- Company Nike Inc HQ (Fortune 500 #369)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_nike-inc-hq', 'organization', 'nike-inc-hq', 'Nike Inc HQ', 'published', 'Nike Inc HQ is an American apparel company headquartered in Beaverton, Oregon.', '["src_wikidata","src_dbpedia"]', unixepoch(), 141, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_nike-inc-hq', 'consumer', 1964, NULL, NULL);

-- Company Lululemon (Fortune 500 #370)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_lululemon', 'organization', 'lululemon', 'Lululemon', 'published', 'Lululemon is an American apparel company headquartered in Vancouver, Washington. Founded in 1998, it has approximately 39,000 employees and annual revenue of $9,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 140, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_lululemon', 'consumer', 1998, NULL, NULL);

-- Company Under Armour (Fortune 500 #371)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_under-armour', 'organization', 'under-armour', 'Under Armour', 'published', 'Under Armour is an American apparel company headquartered in Baltimore, Maryland. Founded in 1996, it has approximately 14,500 employees and annual revenue of $5,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 139, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_under-armour', 'consumer', 1996, NULL, NULL);

-- Company Skechers (Fortune 500 #372)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_skechers', 'organization', 'skechers', 'Skechers', 'published', 'Skechers is an American footwear company headquartered in Manhattan Beach, California. Founded in 1992, it has approximately 11,000 employees and annual revenue of $8,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 138, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_skechers', 'conglomerate', 1992, NULL, NULL);

-- Company Crocs (Fortune 500 #373)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_crocs', 'organization', 'crocs', 'Crocs', 'published', 'Crocs is an American footwear company headquartered in Broomfield, Colorado. Founded in 2002, it has approximately 6,500 employees and annual revenue of $4,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 137, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_crocs', 'conglomerate', 2002, NULL, NULL);

-- Company Deckers Outdoor (Fortune 500 #374)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_deckers-outdoor', 'organization', 'deckers-outdoor', 'Deckers Outdoor', 'published', 'Deckers Outdoor is an American footwear company headquartered in Goleta, California. Founded in 1973, it has approximately 5,000 employees and annual revenue of $4,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 136, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_deckers-outdoor', 'conglomerate', 1973, NULL, NULL);

-- Company Wolverine Worldwide (Fortune 500 #375)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_wolverine-worldwide', 'organization', 'wolverine-worldwide', 'Wolverine Worldwide', 'published', 'Wolverine Worldwide is an American footwear company headquartered in Rockford, Michigan. Founded in 1883, it has approximately 3,800 employees and annual revenue of $1,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 135, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_wolverine-worldwide', 'conglomerate', 1883, NULL, NULL);

-- Company Carter's Inc (Fortune 500 #376)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_carters', 'organization', 'carters', 'Carter''s Inc', 'published', 'Carter''s Inc is an American apparel children company headquartered in Atlanta, Georgia. Founded in 1865, it has approximately 11,000 employees and annual revenue of $2,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 134, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_carters', 'consumer', 1865, NULL, NULL);

-- Company Carter's (Fortune 500 #377)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_carters', 'organization', 'carters', 'Carter''s', 'published', 'Carter''s is an American apparel children company headquartered in Atlanta, Georgia.', '["src_wikidata","src_dbpedia"]', unixepoch(), 133, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_carters', 'consumer', 1865, NULL, NULL);

-- Company Kontoor Brands (Fortune 500 #379)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_kontoor-brands', 'organization', 'kontoor-brands', 'Kontoor Brands', 'published', 'Kontoor Brands is an American apparel company headquartered in Greensboro, North Carolina. Founded in 2019, it has approximately 14,000 employees and annual revenue of $2,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 131, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_kontoor-brands', 'consumer', 2019, NULL, NULL);

-- Company Boot Barn Holdings (Fortune 500 #380)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_boot-barn', 'organization', 'boot-barn', 'Boot Barn Holdings', 'published', 'Boot Barn Holdings is an American retail footwear company headquartered in Irvine, California. Founded in 1978, it has approximately 3,500 employees and annual revenue of $1,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 130, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_boot-barn', 'retail', 1978, NULL, NULL);

-- Company Sonos Inc (Fortune 500 #381)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_sonos', 'organization', 'sonos', 'Sonos Inc', 'published', 'Sonos Inc is an American consumer electronics company headquartered in Santa Barbara, California. Founded in 2002, it has approximately 1,700 employees and annual revenue of $1,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 129, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_sonos', 'consumer', 2002, NULL, NULL);

-- Company GoPro (Fortune 500 #382)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_gopro', 'organization', 'gopro', 'GoPro', 'published', 'GoPro is an American consumer electronics company headquartered in San Mateo, California. Founded in 2002, it has approximately 850 employees and annual revenue of $1,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 128, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_gopro', 'consumer', 2002, NULL, NULL);

-- Company iRobot (Fortune 500 #383)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_irobot', 'organization', 'irobot', 'iRobot', 'published', 'iRobot is an American consumer electronics company headquartered in Bedford, Massachusetts. Founded in 1990, it has approximately 1,100 employees and annual revenue of $890 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 127, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_irobot', 'consumer', 1990, NULL, NULL);

-- Company Whirlpool Corp (Fortune 500 #384)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_whirlpool', 'organization', 'whirlpool', 'Whirlpool Corp', 'published', 'Whirlpool Corp is an American appliances company headquartered in Benton Harbor, Michigan.', '["src_wikidata","src_dbpedia"]', unixepoch(), 126, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_whirlpool', 'conglomerate', 1911, NULL, NULL);

-- Company Maytag (Fortune 500 #385)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_maytag', 'organization', 'maytag', 'Maytag', 'published', 'Maytag is an American appliances company headquartered in Benton Harbor, Michigan.', '["src_wikidata","src_dbpedia"]', unixepoch(), 125, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_maytag', 'conglomerate', 1893, NULL, NULL);

-- Company GE Appliances (Fortune 500 #386)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ge-appliances', 'organization', 'ge-appliances', 'GE Appliances', 'published', 'GE Appliances is an American appliances company headquartered in Louisville, Kentucky.', '["src_wikidata","src_dbpedia"]', unixepoch(), 124, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ge-appliances', 'conglomerate', 1907, NULL, NULL);

-- Company Electrolux USA (Fortune 500 #387)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_electrolux-usa', 'organization', 'electrolux-usa', 'Electrolux USA', 'published', 'Electrolux USA is an American appliances company headquartered in Charlotte, North Carolina.', '["src_wikidata","src_dbpedia"]', unixepoch(), 123, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_electrolux-usa', 'conglomerate', 1919, NULL, NULL);

-- Company Sub-Zero Group (Fortune 500 #388)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_sub-zero', 'organization', 'sub-zero', 'Sub-Zero Group', 'published', 'Sub-Zero Group is an American appliances company headquartered in Madison, Wisconsin.', '["src_wikidata","src_dbpedia"]', unixepoch(), 122, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_sub-zero', 'conglomerate', 1945, NULL, NULL);

-- Company American Standard Brands (Fortune 500 #389)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_american-standard-brands', 'organization', 'american-standard-brands', 'American Standard Brands', 'published', 'American Standard Brands is an American building products company headquartered in Piscataway, New Jersey.', '["src_wikidata","src_dbpedia"]', unixepoch(), 121, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_american-standard-brands', 'conglomerate', 1929, NULL, NULL);

-- Company Masco Corporation (Fortune 500 #390)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_masco', 'organization', 'masco', 'Masco Corporation', 'published', 'Masco Corporation is an American building products company headquartered in Livonia, Michigan. Founded in 1929, it has approximately 18,000 employees and annual revenue of $7,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 120, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_masco', 'conglomerate', 1929, NULL, NULL);

-- Company Fortune Brands Innovations (Fortune 500 #391)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fortune-brands-innovations', 'organization', 'fortune-brands-innovations', 'Fortune Brands Innovations', 'published', 'Fortune Brands Innovations is an American building products company headquartered in Deerfield, Illinois. Founded in 2011, it has approximately 11,000 employees and annual revenue of $4,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 119, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fortune-brands-innovations', 'conglomerate', 2011, NULL, NULL);

-- Company Mohawk Industries (Fortune 500 #392)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mohawk', 'organization', 'mohawk', 'Mohawk Industries', 'published', 'Mohawk Industries is an American building products company headquartered in Calhoun, Georgia. Founded in 1878, it has approximately 28,000 employees and annual revenue of $11,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 118, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mohawk', 'conglomerate', 1878, NULL, NULL);

-- Company Armstrong Flooring (Fortune 500 #393)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_armstrong-flooring', 'organization', 'armstrong-flooring', 'Armstrong Flooring', 'published', 'Armstrong Flooring is an American building products company headquartered in Lancaster, Pennsylvania. Founded in 1860, it has approximately 1,700 employees and annual revenue of $700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 117, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_armstrong-flooring', 'conglomerate', 1860, NULL, NULL);

-- Company Mohawk Group (Fortune 500 #394)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mohawk', 'organization', 'mohawk', 'Mohawk Group', 'published', 'Mohawk Group is an American building products company headquartered in Calhoun, Georgia.', '["src_wikidata","src_dbpedia"]', unixepoch(), 116, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mohawk', 'conglomerate', 1878, NULL, NULL);

-- Company Sherwin-Williams (Fortune 500 #395)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_sherwin-williams', 'organization', 'sherwin-williams', 'Sherwin-Williams', 'published', 'Sherwin-Williams is an American paint and coatings company headquartered in Cleveland, Ohio. Founded in 1866, it has approximately 64,000 employees and annual revenue of $23,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 115, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_sherwin-williams', 'conglomerate', 1866, NULL, NULL);

-- Company PPG Paints (Fortune 500 #396)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ppg-paints', 'organization', 'ppg-paints', 'PPG Paints', 'published', 'PPG Paints is an American paint and coatings company headquartered in Pittsburgh, Pennsylvania.', '["src_wikidata","src_dbpedia"]', unixepoch(), 114, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ppg-paints', 'conglomerate', 1883, NULL, NULL);

-- Company RPM International (Fortune 500 #397)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_rpm', 'organization', 'rpm', 'RPM International', 'published', 'RPM International is an American paint and coatings company headquartered in Medina, Ohio. Founded in 1947, it has approximately 17,000 employees and annual revenue of $7,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 113, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_rpm', 'conglomerate', 1947, NULL, NULL);

-- Company Valspar (Fortune 500 #398)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_valspar', 'organization', 'valspar', 'Valspar', 'published', 'Valspar is an American paint and coatings company headquartered in Minneapolis, Minnesota.', '["src_wikidata","src_dbpedia"]', unixepoch(), 112, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_valspar', 'conglomerate', 1806, NULL, NULL);

-- Company Axalta Coating Systems (Fortune 500 #399)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_axalta-coating-systems', 'organization', 'axalta-coating-systems', 'Axalta Coating Systems', 'published', 'Axalta Coating Systems is an American paint and coatings company headquartered in Glen Mills, Pennsylvania. Founded in 1866, it has approximately 13,000 employees and annual revenue of $5,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 111, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_axalta-coating-systems', 'conglomerate', 1866, NULL, NULL);

-- Company American Axle & Manufacturing (Fortune 500 #400)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_american-axle-manufacturing', 'organization', 'american-axle-manufacturing', 'American Axle & Manufacturing', 'published', 'American Axle & Manufacturing is an American auto parts company headquartered in Detroit, Michigan. Founded in 1994, it has approximately 19,000 employees and annual revenue of $6,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 110, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_american-axle-manufacturing', 'industrial', 1994, NULL, NULL);

-- Company American Airlines Group (Fortune 500 #401)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_american-airlines', 'organization', 'american-airlines', 'American Airlines Group', 'published', 'American Airlines Group is an American airline company headquartered in Fort Worth, Texas.', '["src_wikidata","src_dbpedia"]', unixepoch(), 109, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_american-airlines', 'industrial', 1930, NULL, NULL);

-- Company United Airlines Holdings Inc (Fortune 500 #402)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_united-airlines-holdings', 'organization', 'united-airlines-holdings', 'United Airlines Holdings Inc', 'published', 'United Airlines Holdings Inc is an American airline company headquartered in Chicago, Illinois.', '["src_wikidata","src_dbpedia"]', unixepoch(), 108, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_united-airlines-holdings', 'industrial', 1968, NULL, NULL);

-- Company Alaska Air Group (Fortune 500 #403)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_alaska-air', 'organization', 'alaska-air', 'Alaska Air Group', 'published', 'Alaska Air Group is an American airline company headquartered in Seattle, Washington. Founded in 1932, it has approximately 33,000 employees and annual revenue of $10,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 107, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_alaska-air', 'industrial', 1932, NULL, NULL);

-- Company JetBlue Airways (Fortune 500 #404)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_jetblue-airways', 'organization', 'jetblue-airways', 'JetBlue Airways', 'published', 'JetBlue Airways is an American airline company headquartered in Long Island City, New York. Founded in 1998, it has approximately 23,000 employees and annual revenue of $9,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 106, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_jetblue-airways', 'industrial', 1998, NULL, NULL);

-- Company Spirit Airlines (Fortune 500 #405)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_spirit-airlines', 'organization', 'spirit-airlines', 'Spirit Airlines', 'published', 'Spirit Airlines is an American airline company headquartered in Miramar, Florida. Founded in 1980, it has approximately 13,000 employees and annual revenue of $4,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 105, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_spirit-airlines', 'industrial', 1980, NULL, NULL);

-- Company Hawaiian Holdings (Fortune 500 #406)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hawaiian', 'organization', 'hawaiian', 'Hawaiian Holdings', 'published', 'Hawaiian Holdings is an American airline company headquartered in Honolulu, Hawaii. Founded in 1929, it has approximately 7,500 employees and annual revenue of $2,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 104, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hawaiian', 'industrial', 1929, NULL, NULL);

-- Company Allegiant Air (Fortune 500 #407)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_allegiant-air', 'organization', 'allegiant-air', 'Allegiant Air', 'published', 'Allegiant Air is an American airline company headquartered in Las Vegas, Nevada. Founded in 1997, it has approximately 7,500 employees and annual revenue of $2,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 103, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_allegiant-air', 'industrial', 1997, NULL, NULL);

-- Company SkyWest Airlines (Fortune 500 #408)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_skywest-airlines', 'organization', 'skywest-airlines', 'SkyWest Airlines', 'published', 'SkyWest Airlines is an American airline company headquartered in St. George, Utah. Founded in 1972, it has approximately 13,000 employees and annual revenue of $3,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 102, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_skywest-airlines', 'industrial', 1972, NULL, NULL);

-- Company Hertz Global Holdings (Fortune 500 #409)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hertz-global', 'organization', 'hertz-global', 'Hertz Global Holdings', 'published', 'Hertz Global Holdings is an American car rental company headquartered in Estero, Florida. Founded in 1918, it has approximately 26,000 employees and annual revenue of $11,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 101, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hertz-global', 'conglomerate', 1918, NULL, NULL);

-- Company Avis Budget Group (Fortune 500 #410)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_avis-budget', 'organization', 'avis-budget', 'Avis Budget Group', 'published', 'Avis Budget Group is an American car rental company headquartered in Parsippany, New Jersey. Founded in 1946, it has approximately 30,000 employees and annual revenue of $11,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 100, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_avis-budget', 'conglomerate', 1946, NULL, NULL);

-- Company Ryder System (Fortune 500 #411)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ryder-system', 'organization', 'ryder-system', 'Ryder System', 'published', 'Ryder System is an American transportation and logistics company headquartered in Miami, Florida. Founded in 1933, it has approximately 43,000 employees and annual revenue of $12,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 99, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ryder-system', 'industrial', 1933, NULL, NULL);

-- Company XPO Logistics (Fortune 500 #412)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_xpo-logistics', 'organization', 'xpo-logistics', 'XPO Logistics', 'published', 'XPO Logistics is an American transportation and logistics company headquartered in Greenwich, Connecticut. Founded in 2011, it has approximately 38,000 employees and annual revenue of $8,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 98, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_xpo-logistics', 'industrial', 2011, NULL, NULL);

-- Company GXO Logistics (Fortune 500 #413)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_gxo-logistics', 'organization', 'gxo-logistics', 'GXO Logistics', 'published', 'GXO Logistics is an American transportation and logistics company headquartered in Greenwich, Connecticut. Founded in 2021, it has approximately 130,000 employees and annual revenue of $11,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 97, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_gxo-logistics', 'industrial', 2021, NULL, NULL);

-- Company J.B. Hunt Transport Services (Fortune 500 #414)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_jb-hunt-transport-services', 'organization', 'jb-hunt-transport-services', 'J.B. Hunt Transport Services', 'published', 'J.B. Hunt Transport Services is an American transportation and logistics company headquartered in Lowell, Arkansas. Founded in 1961, it has approximately 39,000 employees and annual revenue of $12,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 96, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_jb-hunt-transport-services', 'industrial', 1961, NULL, NULL);

-- Company Knight-Swift Transportation (Fortune 500 #415)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_knight-swift-transportation', 'organization', 'knight-swift-transportation', 'Knight-Swift Transportation', 'published', 'Knight-Swift Transportation is an American transportation and logistics company headquartered in Phoenix, Arizona. Founded in 2017, it has approximately 23,000 employees and annual revenue of $7,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 95, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_knight-swift-transportation', 'industrial', 2017, NULL, NULL);

-- Company Schneider National (Fortune 500 #416)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_schneider-national', 'organization', 'schneider-national', 'Schneider National', 'published', 'Schneider National is an American transportation and logistics company headquartered in Green Bay, Wisconsin. Founded in 1935, it has approximately 20,000 employees and annual revenue of $5,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 94, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_schneider-national', 'industrial', 1935, NULL, NULL);

-- Company Werner Enterprises (Fortune 500 #417)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_werner-enterprises', 'organization', 'werner-enterprises', 'Werner Enterprises', 'published', 'Werner Enterprises is an American transportation and logistics company headquartered in Omaha, Nebraska. Founded in 1956, it has approximately 13,000 employees and annual revenue of $3,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 93, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_werner-enterprises', 'industrial', 1956, NULL, NULL);

-- Company Heartland Express (Fortune 500 #418)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_heartland-express', 'organization', 'heartland-express', 'Heartland Express', 'published', 'Heartland Express is an American transportation and logistics company headquartered in North Liberty, Iowa. Founded in 1978, it has approximately 4,500 employees and annual revenue of $1,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 92, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_heartland-express', 'industrial', 1978, NULL, NULL);

-- Company Old Dominion Freight Line (Fortune 500 #419)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_old-dominion-freight-line', 'organization', 'old-dominion-freight-line', 'Old Dominion Freight Line', 'published', 'Old Dominion Freight Line is an American transportation and logistics company headquartered in Thomasville, North Carolina. Founded in 1934, it has approximately 22,000 employees and annual revenue of $5,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 91, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_old-dominion-freight-line', 'industrial', 1934, NULL, NULL);

-- Company Saia Inc (Fortune 500 #420)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_saia', 'organization', 'saia', 'Saia Inc', 'published', 'Saia Inc is an American transportation and logistics company headquartered in Johns Creek, Georgia. Founded in 1924, it has approximately 10,500 employees and annual revenue of $1,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 90, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_saia', 'industrial', 1924, NULL, NULL);

-- Company XPO Inc (Fortune 500 #421)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_xpo', 'organization', 'xpo', 'XPO Inc', 'published', 'XPO Inc is an American transportation and logistics company headquartered in Greenwich, Connecticut.', '["src_wikidata","src_dbpedia"]', unixepoch(), 89, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_xpo', 'industrial', 2011, NULL, NULL);

-- Company C.H. Robinson Worldwide (Fortune 500 #422)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ch-robinson-worldwide', 'organization', 'ch-robinson-worldwide', 'C.H. Robinson Worldwide', 'published', 'C.H. Robinson Worldwide is an American transportation and logistics company headquartered in Eden Prairie, Minnesota. Founded in 1905, it has approximately 13,500 employees and annual revenue of $17,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 88, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ch-robinson-worldwide', 'industrial', 1905, NULL, NULL);

-- Company Expeditors International (Fortune 500 #423)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_expeditors', 'organization', 'expeditors', 'Expeditors International', 'published', 'Expeditors International is an American transportation and logistics company headquartered in Bellevue, Washington. Founded in 1979, it has approximately 19,000 employees and annual revenue of $9,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 87, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_expeditors', 'industrial', 1979, NULL, NULL);

-- Company Landstar System (Fortune 500 #424)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_landstar-system', 'organization', 'landstar-system', 'Landstar System', 'published', 'Landstar System is an American transportation and logistics company headquartered in Jacksonville, Florida. Founded in 1988, it has approximately 1,400 employees and annual revenue of $5,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 86, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_landstar-system', 'industrial', 1988, NULL, NULL);

-- Company Hub Group (Fortune 500 #425)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hub', 'organization', 'hub', 'Hub Group', 'published', 'Hub Group is an American transportation and logistics company headquartered in Oak Brook, Illinois. Founded in 1971, it has approximately 5,000 employees and annual revenue of $4,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 85, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hub', 'industrial', 1971, NULL, NULL);

-- Company Cummins Inc (Fortune 500 #426)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cummins', 'organization', 'cummins', 'Cummins Inc', 'published', 'Cummins Inc is an American engines and power company headquartered in Columbus, Indiana. Founded in 1919, it has approximately 75,000 employees and annual revenue of $34,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 84, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cummins', 'conglomerate', 1919, NULL, NULL);

-- Company Parker Hannifin (Fortune 500 #427)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_parker-hannifin', 'organization', 'parker-hannifin', 'Parker Hannifin', 'published', 'Parker Hannifin is an American industrial machinery company headquartered in Cleveland, Ohio. Founded in 1917, it has approximately 61,120 employees and annual revenue of $19,930 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 83, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_parker-hannifin', 'industrial', 1917, NULL, NULL);

-- Company Emerson Electric (Fortune 500 #428)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_emerson-electric', 'organization', 'emerson-electric', 'Emerson Electric', 'published', 'Emerson Electric is an American industrial automation company headquartered in St. Louis, Missouri. Founded in 1890, it has approximately 70,000 employees and annual revenue of $17,492 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 82, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_emerson-electric', 'industrial', 1890, NULL, NULL);

-- Company Eaton Corporation (Fortune 500 #429)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_eaton', 'organization', 'eaton', 'Eaton Corporation', 'published', 'Eaton Corporation is an American power management company headquartered in Dublin, Ohio. Founded in 1911, it has approximately 95,000 employees and annual revenue of $24,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 81, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_eaton', 'conglomerate', 1911, NULL, NULL);

-- Company Illinois Tool Works (Fortune 500 #430)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_illinois-tool-works', 'organization', 'illinois-tool-works', 'Illinois Tool Works', 'published', 'Illinois Tool Works is an American industrial conglomerate company headquartered in Glenview, Illinois. Founded in 1912, it has approximately 45,000 employees and annual revenue of $15,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 80, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_illinois-tool-works', 'industrial', 1912, NULL, NULL);

-- Company Dover Corporation (Fortune 500 #431)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_dover', 'organization', 'dover', 'Dover Corporation', 'published', 'Dover Corporation is an American industrial conglomerate company headquartered in Downers Grove, Illinois. Founded in 1947, it has approximately 25,000 employees and annual revenue of $7,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 79, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_dover', 'industrial', 1947, NULL, NULL);

-- Company Roper Technologies (Fortune 500 #432)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_roper-technologies', 'organization', 'roper-technologies', 'Roper Technologies', 'published', 'Roper Technologies is an American industrial technology company headquartered in Sarasota, Florida. Founded in 1981, it has approximately 19,000 employees and annual revenue of $7,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 78, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_roper-technologies', 'technology', 1981, NULL, NULL);

-- Company AMETEK Inc (Fortune 500 #433)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ametek', 'organization', 'ametek', 'AMETEK Inc', 'published', 'AMETEK Inc is an American industrial instruments company headquartered in Berwyn, Pennsylvania. Founded in 1930, it has approximately 21,000 employees and annual revenue of $6,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 77, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ametek', 'industrial', 1930, NULL, NULL);

-- Company Roper Industries (Fortune 500 #434)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_roper', 'organization', 'roper', 'Roper Industries', 'published', 'Roper Industries is an American industrial technology company headquartered in Sarasota, Florida.', '["src_wikidata","src_dbpedia"]', unixepoch(), 76, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_roper', 'technology', 1981, NULL, NULL);

-- Company Watts Water Technologies (Fortune 500 #436)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_watts-water-technologies', 'organization', 'watts-water-technologies', 'Watts Water Technologies', 'published', 'Watts Water Technologies is an American plumbing products company headquartered in North Andover, Massachusetts. Founded in 1874, it has approximately 5,000 employees and annual revenue of $2,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 74, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_watts-water-technologies', 'conglomerate', 1874, NULL, NULL);

-- Company Roper Industries Inc (Fortune 500 #437)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_roper-industries', 'organization', 'roper-industries', 'Roper Industries Inc', 'published', 'Roper Industries Inc is an American industrial technology company headquartered in Sarasota, Florida.', '["src_wikidata","src_dbpedia"]', unixepoch(), 73, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_roper-industries', 'technology', 1981, NULL, NULL);

-- Company Trane Technologies (Fortune 500 #438)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_trane-technologies', 'organization', 'trane-technologies', 'Trane Technologies', 'published', 'Trane Technologies is an American hvac and refrigeration company headquartered in Dublin, Ireland. Founded in 1885, it has approximately 40,000 employees and annual revenue of $19,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 72, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_trane-technologies', 'conglomerate', 1885, NULL, NULL);

-- Company Carrier Global (Fortune 500 #439)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_carrier-global', 'organization', 'carrier-global', 'Carrier Global', 'published', 'Carrier Global is an American hvac and refrigeration company headquartered in Palm Beach Gardens, Florida. Founded in 2020, it has approximately 53,000 employees and annual revenue of $22,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 71, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_carrier-global', 'conglomerate', 2020, NULL, NULL);

-- Company Otis Worldwide (Fortune 500 #440)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_otis-worldwide', 'organization', 'otis-worldwide', 'Otis Worldwide', 'published', 'Otis Worldwide is an American elevators and escalators company headquartered in Farmington, Connecticut. Founded in 1853, it has approximately 71,000 employees and annual revenue of $14,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 70, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_otis-worldwide', 'conglomerate', 1853, NULL, NULL);

-- Company Johnson Controls International (Fortune 500 #441)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_johnson-controls', 'organization', 'johnson-controls', 'Johnson Controls International', 'published', 'Johnson Controls International is an American building automation company headquartered in Cork, Ireland. Founded in 1885, it has approximately 100,000 employees and annual revenue of $22,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 69, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_johnson-controls', 'industrial', 1885, NULL, NULL);

-- Company Stanley Black & Decker Inc (Fortune 500 #442)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_stanley-black-decker', 'organization', 'stanley-black-decker', 'Stanley Black & Decker Inc', 'published', 'Stanley Black & Decker Inc is an American tools and hardware company headquartered in New Britain, Connecticut.', '["src_wikidata","src_dbpedia"]', unixepoch(), 68, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_stanley-black-decker', 'conglomerate', 1843, NULL, NULL);

-- Company TopBuild (Fortune 500 #443)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_topbuild', 'organization', 'topbuild', 'TopBuild', 'published', 'TopBuild is an American building products company headquartered in Boca Raton, Florida. Founded in 1957, it has approximately 14,000 employees and annual revenue of $5,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 67, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_topbuild', 'conglomerate', 1957, NULL, NULL);

-- Company Owens Corning Inc (Fortune 500 #444)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_owens-corning', 'organization', 'owens-corning', 'Owens Corning Inc', 'published', 'Owens Corning Inc is an American building materials company headquartered in Toledo, Ohio.', '["src_wikidata","src_dbpedia"]', unixepoch(), 66, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_owens-corning', 'conglomerate', 1938, NULL, NULL);

-- Company AGC Networks (Fortune 500 #445)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_agc-networks', 'organization', 'agc-networks', 'AGC Networks', 'published', 'AGC Networks is an American technology services company headquartered in Herndon, Virginia.', '["src_wikidata","src_dbpedia"]', unixepoch(), 65, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_agc-networks', 'technology', 1994, NULL, NULL);

-- Company General Cable (Fortune 500 #446)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_general-cable', 'organization', 'general-cable', 'General Cable', 'published', 'General Cable is an American cables and wires company headquartered in Highland Heights, Kentucky.', '["src_wikidata","src_dbpedia"]', unixepoch(), 64, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_general-cable', 'media', 1927, NULL, NULL);

-- Company EnPro Industries (Fortune 500 #447)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_enpro', 'organization', 'enpro', 'EnPro Industries', 'published', 'EnPro Industries is an American industrial products company headquartered in Charlotte, North Carolina. Founded in 2002, it has approximately 5,000 employees and annual revenue of $1,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 63, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_enpro', 'industrial', 2002, NULL, NULL);

-- Company Harsco Corporation (Fortune 500 #448)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_harsco', 'organization', 'harsco', 'Harsco Corporation', 'published', 'Harsco Corporation is an American industrial services company headquartered in Charlotte, North Carolina. Founded in 1853, it has approximately 11,000 employees and annual revenue of $2,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 62, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_harsco', 'industrial', 1853, NULL, NULL);

-- Company Mueller Industries (Fortune 500 #449)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mueller', 'organization', 'mueller', 'Mueller Industries', 'published', 'Mueller Industries is an American industrial products company headquartered in Memphis, Tennessee. Founded in 1917, it has approximately 4,500 employees and annual revenue of $3,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 61, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mueller', 'industrial', 1917, NULL, NULL);

-- Company Kennametal (Fortune 500 #450)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_kennametal', 'organization', 'kennametal', 'Kennametal', 'published', 'Kennametal is an American industrial tools company headquartered in Pittsburgh, Pennsylvania. Founded in 1938, it has approximately 8,500 employees and annual revenue of $2,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 60, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_kennametal', 'industrial', 1938, NULL, NULL);

-- Company Lincoln Electric (Fortune 500 #451)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_lincoln-electric', 'organization', 'lincoln-electric', 'Lincoln Electric', 'published', 'Lincoln Electric is an American welding products company headquartered in Cleveland, Ohio. Founded in 1895, it has approximately 12,000 employees and annual revenue of $4,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 59, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_lincoln-electric', 'conglomerate', 1895, NULL, NULL);

-- Company Snap-on Incorporated (Fortune 500 #452)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_snap-on-incorporated', 'organization', 'snap-on-incorporated', 'Snap-on Incorporated', 'published', 'Snap-on Incorporated is an American tools and equipment company headquartered in Kenosha, Wisconsin. Founded in 1920, it has approximately 13,500 employees and annual revenue of $4,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 58, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_snap-on-incorporated', 'conglomerate', 1920, NULL, NULL);

-- Company IDEX Corporation (Fortune 500 #453)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_idex', 'organization', 'idex', 'IDEX Corporation', 'published', 'IDEX Corporation is an American industrial equipment company headquartered in Northbrook, Illinois. Founded in 1987, it has approximately 8,500 employees and annual revenue of $3,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 57, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_idex', 'industrial', 1987, NULL, NULL);

-- Company Xylem Inc (Fortune 500 #454)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_xylem', 'organization', 'xylem', 'Xylem Inc', 'published', 'Xylem Inc is an American water technology company headquartered in Washington, District of Columbia. Founded in 2011, it has approximately 23,000 employees and annual revenue of $8,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 56, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_xylem', 'technology', 2011, NULL, NULL);

-- Company Watts Industries (Fortune 500 #455)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_watts', 'organization', 'watts', 'Watts Industries', 'published', 'Watts Industries is an American plumbing products company headquartered in North Andover, Massachusetts.', '["src_wikidata","src_dbpedia"]', unixepoch(), 55, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_watts', 'conglomerate', 1874, NULL, NULL);

-- Company Roper Technologies Inc (Fortune 500 #456)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_roper-technologies', 'organization', 'roper-technologies', 'Roper Technologies Inc', 'published', 'Roper Technologies Inc is an American industrial technology company headquartered in Sarasota, Florida.', '["src_wikidata","src_dbpedia"]', unixepoch(), 54, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_roper-technologies', 'technology', 1981, NULL, NULL);

-- Company Genuine Parts (Fortune 500 #457)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_genuine-parts', 'organization', 'genuine-parts', 'Genuine Parts', 'published', 'Genuine Parts is an American automotive parts distribution company headquartered in Atlanta, Georgia.', '["src_wikidata","src_dbpedia"]', unixepoch(), 53, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_genuine-parts', 'industrial', 1928, NULL, NULL);

-- Company IDEXX Laboratories (Fortune 500 #458)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_idexx-laboratories', 'organization', 'idexx-laboratories', 'IDEXX Laboratories', 'published', 'IDEXX Laboratories is an American veterinary diagnostics company headquartered in Westbrook, Maine. Founded in 1983, it has approximately 11,000 employees and annual revenue of $3,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 52, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_idexx-laboratories', 'conglomerate', 1983, NULL, NULL);

-- Company Mettler-Toledo International (Fortune 500 #459)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mettler-toledo', 'organization', 'mettler-toledo', 'Mettler-Toledo International', 'published', 'Mettler-Toledo International is an American precision instruments company headquartered in Columbus, Ohio. Founded in 1945, it has approximately 7,000 employees and annual revenue of $3,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 51, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mettler-toledo', 'conglomerate', 1945, NULL, NULL);

-- Company Waters Corporation (Fortune 500 #460)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_waters', 'organization', 'waters', 'Waters Corporation', 'published', 'Waters Corporation is an American laboratory instruments company headquartered in Milford, Massachusetts. Founded in 1958, it has approximately 8,000 employees and annual revenue of $3,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_waters', 'conglomerate', 1958, NULL, NULL);

-- Company PerkinElmer (Fortune 500 #461)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_perkinelmer', 'organization', 'perkinelmer', 'PerkinElmer', 'published', 'PerkinElmer is an American life sciences company headquartered in Waltham, Massachusetts. Founded in 1937, it has approximately 11,000 employees and annual revenue of $2,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 49, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_perkinelmer', 'conglomerate', 1937, NULL, NULL);

-- Company Agilent Technologies (Fortune 500 #462)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_agilent-technologies', 'organization', 'agilent-technologies', 'Agilent Technologies', 'published', 'Agilent Technologies is an American life sciences company headquartered in Santa Clara, California. Founded in 1999, it has approximately 18,000 employees and annual revenue of $6,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 48, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_agilent-technologies', 'conglomerate', 1999, NULL, NULL);

-- Company Bio-Rad Laboratories (Fortune 500 #463)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bio-rad-laboratories', 'organization', 'bio-rad-laboratories', 'Bio-Rad Laboratories', 'published', 'Bio-Rad Laboratories is an American life sciences company headquartered in Hercules, California. Founded in 1952, it has approximately 8,000 employees and annual revenue of $2,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 47, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bio-rad-laboratories', 'conglomerate', 1952, NULL, NULL);

-- Company Fortive Corporation (Fortune 500 #464)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fortive', 'organization', 'fortive', 'Fortive Corporation', 'published', 'Fortive Corporation is an American industrial technology company headquartered in Everett, Washington. Founded in 2016, it has approximately 18,000 employees and annual revenue of $6,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 46, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fortive', 'technology', 2016, NULL, NULL);

-- Company Keysight Technologies (Fortune 500 #465)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_keysight-technologies', 'organization', 'keysight-technologies', 'Keysight Technologies', 'published', 'Keysight Technologies is an American electronic test company headquartered in Santa Rosa, California. Founded in 2014, it has approximately 15,000 employees and annual revenue of $5,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 45, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_keysight-technologies', 'conglomerate', 2014, NULL, NULL);

-- Company Teledyne Technologies (Fortune 500 #466)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_teledyne-technologies', 'organization', 'teledyne-technologies', 'Teledyne Technologies', 'published', 'Teledyne Technologies is an American industrial technology company headquartered in Thousand Oaks, California. Founded in 1960, it has approximately 14,000 employees and annual revenue of $5,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 44, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_teledyne-technologies', 'technology', 1960, NULL, NULL);

-- Company Flir Systems (Fortune 500 #467)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_flir-systems', 'organization', 'flir-systems', 'Flir Systems', 'published', 'Flir Systems is an American thermal imaging company headquartered in Wilsonville, Oregon. Founded in 1978, it has approximately 4,200 employees and annual revenue of $2,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 43, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_flir-systems', 'conglomerate', 1978, NULL, NULL);

-- Company Curtiss-Wright (Fortune 500 #468)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_curtiss-wright', 'organization', 'curtiss-wright', 'Curtiss-Wright', 'published', 'Curtiss-Wright is an American defense and industrial company headquartered in Davidson, North Carolina. Founded in 1929, it has approximately 8,500 employees and annual revenue of $3,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 42, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_curtiss-wright', 'industrial', 1929, NULL, NULL);

-- Company HEICO Corporation (Fortune 500 #469)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_heico', 'organization', 'heico', 'HEICO Corporation', 'published', 'HEICO Corporation is an American aerospace and defense company headquartered in Hollywood, Florida. Founded in 1957, it has approximately 9,500 employees and annual revenue of $3,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 41, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_heico', 'industrial', 1957, NULL, NULL);

-- Company TransDigm Group (Fortune 500 #470)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_transdigm', 'organization', 'transdigm', 'TransDigm Group', 'published', 'TransDigm Group is an American aerospace components company headquartered in Cleveland, Ohio. Founded in 1993, it has approximately 16,000 employees and annual revenue of $7,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 40, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_transdigm', 'industrial', 1993, NULL, NULL);

-- Company Mercury Systems (Fortune 500 #471)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mercury-systems', 'organization', 'mercury-systems', 'Mercury Systems', 'published', 'Mercury Systems is an American defense electronics company headquartered in Andover, Massachusetts. Founded in 1981, it has approximately 2,500 employees and annual revenue of $1,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 39, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mercury-systems', 'industrial', 1981, NULL, NULL);

-- Company Kratos Defense & Security (Fortune 500 #472)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_kratos-defense-security', 'organization', 'kratos-defense-security', 'Kratos Defense & Security', 'published', 'Kratos Defense & Security is an American defense company headquartered in San Diego, California. Founded in 1994, it has approximately 3,900 employees and annual revenue of $1,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 38, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_kratos-defense-security', 'industrial', 1994, NULL, NULL);

-- Company CACI International (Fortune 500 #473)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_caci', 'organization', 'caci', 'CACI International', 'published', 'CACI International is an American defense and it company headquartered in Reston, Virginia. Founded in 1962, it has approximately 24,000 employees and annual revenue of $6,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 37, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_caci', 'industrial', 1962, NULL, NULL);

-- Company Booz Allen Hamilton (Fortune 500 #474)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_booz-allen-hamilton', 'organization', 'booz-allen-hamilton', 'Booz Allen Hamilton', 'published', 'Booz Allen Hamilton is an American consulting and defense company headquartered in McLean, Virginia. Founded in 1914, it has approximately 33,000 employees and annual revenue of $11,700 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 36, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_booz-allen-hamilton', 'industrial', 1914, NULL, NULL);

-- Company Leidos Holdings (Fortune 500 #475)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_leidos', 'organization', 'leidos', 'Leidos Holdings', 'published', 'Leidos Holdings is an American defense and it company headquartered in Reston, Virginia. Founded in 1969, it has approximately 47,000 employees and annual revenue of $16,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 35, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_leidos', 'industrial', 1969, NULL, NULL);

-- Company SAIC (Fortune 500 #476)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_saic', 'organization', 'saic', 'SAIC', 'published', 'SAIC is an American defense and it company headquartered in Reston, Virginia. Founded in 1969, it has approximately 24,000 employees and annual revenue of $7,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 34, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_saic', 'industrial', 1969, NULL, NULL);

-- Company ICF International (Fortune 500 #477)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_icf', 'organization', 'icf', 'ICF International', 'published', 'ICF International is an American consulting company headquartered in Reston, Virginia. Founded in 1969, it has approximately 9,000 employees and annual revenue of $2,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 33, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_icf', 'services', 1969, NULL, NULL);

-- Company ManTech International (Fortune 500 #478)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mantech', 'organization', 'mantech', 'ManTech International', 'published', 'ManTech International is an American defense and it company headquartered in Herndon, Virginia. Founded in 1968, it has approximately 10,000 employees and annual revenue of $2,600 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 32, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mantech', 'industrial', 1968, NULL, NULL);

-- Company Parsons Corporation (Fortune 500 #479)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_parsons', 'organization', 'parsons', 'Parsons Corporation', 'published', 'Parsons Corporation is an American defense and infrastructure company headquartered in Chantilly, Virginia. Founded in 1944, it has approximately 18,000 employees and annual revenue of $5,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 31, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_parsons', 'industrial', 1944, NULL, NULL);

-- Company Tetra Tech (Fortune 500 #480)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_tetra-tech', 'organization', 'tetra-tech', 'Tetra Tech', 'published', 'Tetra Tech is an American consulting and engineering company headquartered in Pasadena, California. Founded in 1966, it has approximately 28,000 employees and annual revenue of $5,300 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 30, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_tetra-tech', 'services', 1966, NULL, NULL);

-- Company WSP USA (Fortune 500 #481)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_wsp-usa', 'organization', 'wsp-usa', 'WSP USA', 'published', 'WSP USA is an American consulting and engineering company headquartered in New York City, New York. Founded in 1885, it has approximately 50,000 employees and annual revenue of $11,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 29, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_wsp-usa', 'services', 1885, NULL, NULL);

-- Company Jacobs Solutions (Fortune 500 #482)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_jacobs-solutions', 'organization', 'jacobs-solutions', 'Jacobs Solutions', 'published', 'Jacobs Solutions is an American consulting and engineering company headquartered in Dallas, Texas. Founded in 1947, it has approximately 60,000 employees and annual revenue of $16,500 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 28, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_jacobs-solutions', 'services', 1947, NULL, NULL);

-- Company AECOM (Fortune 500 #483)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_aecom', 'organization', 'aecom', 'AECOM', 'published', 'AECOM is an American consulting and engineering company headquartered in Dallas, Texas. Founded in 1990, it has approximately 51,000 employees and annual revenue of $14,400 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 27, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_aecom', 'services', 1990, NULL, NULL);

-- Company HNTB Corporation (Fortune 500 #484)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hntb', 'organization', 'hntb', 'HNTB Corporation', 'published', 'HNTB Corporation is an American consulting and engineering company headquartered in Kansas City, Missouri. Founded in 1914, it has approximately 5,500 employees and annual revenue of $3,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 26, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hntb', 'services', 1914, NULL, NULL);

-- Company HDR Inc (Fortune 500 #485)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hdr', 'organization', 'hdr', 'HDR Inc', 'published', 'HDR Inc is an American consulting and engineering company headquartered in Omaha, Nebraska. Founded in 1917, it has approximately 13,000 employees and annual revenue of $3,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hdr', 'services', 1917, NULL, NULL);

-- Company Kimley-Horn (Fortune 500 #486)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_kimley-horn', 'organization', 'kimley-horn', 'Kimley-Horn', 'published', 'Kimley-Horn is an American consulting and engineering company headquartered in Raleigh, North Carolina. Founded in 1967, it has approximately 9,000 employees and annual revenue of $2,100 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 24, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_kimley-horn', 'services', 1967, NULL, NULL);

-- Company Stantec (Fortune 500 #487)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_stantec', 'organization', 'stantec', 'Stantec', 'published', 'Stantec is an American consulting and engineering company headquartered in Edmonton, Alberta. Founded in 1954, it has approximately 32,000 employees and annual revenue of $4,900 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 23, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_stantec', 'services', 1954, NULL, NULL);

-- Company Burns & McDonnell (Fortune 500 #488)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_burns-mcdonnell', 'organization', 'burns-mcdonnell', 'Burns & McDonnell', 'published', 'Burns & McDonnell is an American consulting and engineering company headquartered in Kansas City, Missouri. Founded in 1898, it has approximately 14,000 employees and annual revenue of $7,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 22, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_burns-mcdonnell', 'services', 1898, NULL, NULL);

-- Company McKinsey & Company (Fortune 500 #489)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mckinsey', 'organization', 'mckinsey', 'McKinsey & Company', 'published', 'McKinsey & Company is an American consulting company headquartered in New York City, New York. Founded in 1926, it has approximately 45,000 employees and annual revenue of $16,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 21, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mckinsey', 'services', 1926, NULL, NULL);

-- Company Boston Consulting Group (Fortune 500 #490)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_boston-consulting', 'organization', 'boston-consulting', 'Boston Consulting Group', 'published', 'Boston Consulting Group is an American consulting company headquartered in Boston, Massachusetts. Founded in 1963, it has approximately 33,000 employees and annual revenue of $12,200 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 20, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_boston-consulting', 'services', 1963, NULL, NULL);

-- Company Bain & Company (Fortune 500 #491)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bain', 'organization', 'bain', 'Bain & Company', 'published', 'Bain & Company is an American consulting company headquartered in Boston, Massachusetts. Founded in 1973, it has approximately 18,000 employees and annual revenue of $5,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 19, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bain', 'services', 1973, NULL, NULL);

-- Company Deloitte US (Fortune 500 #492)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_deloitte-us', 'organization', 'deloitte-us', 'Deloitte US', 'published', 'Deloitte US is an American consulting and accounting company headquartered in New York City, New York. Founded in 1845, it has approximately 200,000 employees and annual revenue of $35,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 18, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_deloitte-us', 'services', 1845, NULL, NULL);

-- Company PwC US (Fortune 500 #493)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_pwc-us', 'organization', 'pwc-us', 'PwC US', 'published', 'PwC US is an American consulting and accounting company headquartered in New York City, New York. Founded in 1998, it has approximately 75,000 employees and annual revenue of $24,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 17, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_pwc-us', 'services', 1998, NULL, NULL);

-- Company EY US (Fortune 500 #494)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ey-us', 'organization', 'ey-us', 'EY US', 'published', 'EY US is an American consulting and accounting company headquartered in New York City, New York. Founded in 1989, it has approximately 80,000 employees and annual revenue of $22,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 16, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ey-us', 'services', 1989, NULL, NULL);

-- Company KPMG US (Fortune 500 #495)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_kpmg-us', 'organization', 'kpmg-us', 'KPMG US', 'published', 'KPMG US is an American consulting and accounting company headquartered in New York City, New York. Founded in 1987, it has approximately 45,000 employees and annual revenue of $18,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 15, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_kpmg-us', 'services', 1987, NULL, NULL);

-- Company Accenture US (Fortune 500 #496)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_accenture-us', 'organization', 'accenture-us', 'Accenture US', 'published', 'Accenture US is an American consulting company headquartered in New York City, New York. Founded in 1989, it has approximately 50,000 employees and annual revenue of $20,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 14, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_accenture-us', 'services', 1989, NULL, NULL);

-- Company Genpact (Fortune 500 #497)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_genpact', 'organization', 'genpact', 'Genpact', 'published', 'Genpact is an American consulting company headquartered in New York City, New York. Founded in 1997, it has approximately 125,000 employees and annual revenue of $4,800 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 13, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_genpact', 'services', 1997, NULL, NULL);

-- Company Cognizant Technology Solutions US (Fortune 500 #498)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cognizant-technology-solutions-us', 'organization', 'cognizant-technology-solutions-us', 'Cognizant Technology Solutions US', 'published', 'Cognizant Technology Solutions US is an American it services company headquartered in Teaneck, New Jersey. Founded in 1994, it has approximately 336,800 employees and annual revenue of $19,736 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 12, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cognizant-technology-solutions-us', 'technology', 1994, NULL, NULL);

-- Company Infosys US (Fortune 500 #499)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_infosys-us', 'organization', 'infosys-us', 'Infosys US', 'published', 'Infosys US is an American it services company headquartered in Plano, Texas. Founded in 1981, it has approximately 50,000 employees and annual revenue of $5,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 11, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_infosys-us', 'technology', 1981, NULL, NULL);

-- Company World Fuel Services (Fortune 500 #500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_world-fuel-services', 'organization', 'world-fuel-services', 'World Fuel Services', 'published', 'World Fuel Services is an American energy distribution company headquartered in Miami, Florida. Founded in 1984, it has approximately 5,000 employees and annual revenue of $47,000 million.', '["src_wikidata","src_dbpedia"]', unixepoch(), 10, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_world-fuel-services', 'industrial', 1984, NULL, NULL);

