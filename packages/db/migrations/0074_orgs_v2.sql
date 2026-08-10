-- ========================================
-- Migration 0074: Orgs vertical v2 (1000+ milestone)
-- Source: F500 + S&P500 + Banks + Wikidata public companies
-- 1071 unique companies, deduped by normalized name
-- Generated: 2026-08-10 13:16:32 UTC
-- ========================================

-- Company: Advanced Micro Devices (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_advanced-micro-devices', 'organization', 'advanced-micro-devices', 'Advanced Micro Devices', 'published', 'Advanced Micro Devices is an American information technology company headquartered in Santa Clara, California, founded in 1969.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_advanced-micro-devices', 'technology', 1969, NULL, '');

-- Company: Albemarle Corporation (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_albemarle-inc', 'organization', 'albemarle-inc', 'Albemarle Corporation', 'published', 'Albemarle Corporation is an American materials company headquartered in Charlotte, North Carolina, founded in 1994.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_albemarle-inc', 'corporate', 1994, NULL, '');

-- Company: Alexandria Real Estate Equities (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_alexandria-real-estate-equities', 'organization', 'alexandria-real-estate-equities', 'Alexandria Real Estate Equities', 'published', 'Alexandria Real Estate Equities is an American real estate company headquartered in Pasadena, California, founded in 1994.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_alexandria-real-estate-equities', 'real_estate', 1994, NULL, '');

-- Company: Align Technology (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_align', 'organization', 'align', 'Align Technology', 'published', 'Align Technology is an American health care company headquartered in Tempe, Arizona, founded in 1997.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_align', 'healthcare', 1997, NULL, '');

-- Company: Alliant Energy (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_alliant-energy', 'organization', 'alliant-energy', 'Alliant Energy', 'published', 'Alliant Energy is an American utilities company headquartered in Madison, Wisconsin, founded in 1917.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_alliant-energy', 'corporate', 1917, NULL, '');

-- Company: Allstate (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_allstate', 'organization', 'allstate', 'Allstate', 'published', 'Allstate is an American financials company headquartered in Northbrook, Illinois, founded in 1931.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_allstate', 'corporate', 1931, NULL, '');

-- Company: Altria (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_altria', 'organization', 'altria', 'Altria', 'published', 'Altria is an American consumer staples company headquartered in Richmond, Virginia, founded in 1985.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_altria', 'consumer', 1985, NULL, '');

-- Company: Ameren (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ameren', 'organization', 'ameren', 'Ameren', 'published', 'Ameren is an American utilities company headquartered in St. Louis, Missouri, founded in 1902.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ameren', 'corporate', 1902, NULL, '');

-- Company: American Tower (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_american-tower', 'organization', 'american-tower', 'American Tower', 'published', 'American Tower is an American real estate company headquartered in Boston, Massachusetts, founded in 1995.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_american-tower', 'real_estate', 1995, NULL, '');

-- Company: American Water Works (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_american-water-works', 'organization', 'american-water-works', 'American Water Works', 'published', 'American Water Works is an American utilities company headquartered in Camden, New Jersey, founded in 1886.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_american-water-works', 'corporate', 1886, NULL, '');

-- Company: Ameriprise Financial (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ameriprise', 'organization', 'ameriprise', 'Ameriprise Financial', 'published', 'Ameriprise Financial is an American financials company headquartered in Minneapolis, Minnesota.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ameriprise', 'corporate', NULL, NULL, '');

-- Company: Aon plc (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_aon-plc', 'organization', 'aon-plc', 'Aon plc', 'published', 'Aon plc is an American financials company headquartered in London, United Kingdom, founded in 1982.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_aon-plc', 'corporate', 1982, NULL, '');

-- Company: BNY Mellon (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bny-mellon', 'organization', 'bny-mellon', 'BNY Mellon', 'published', 'BNY Mellon is an American financials company headquartered in New York City, New York, founded in 1784.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bny-mellon', 'corporate', 1784, NULL, '');

-- Company: Cincinnati Financial (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cincinnati-inc', 'organization', 'cincinnati-inc', 'Cincinnati Financial', 'published', 'Cincinnati Financial is an American financials company headquartered in Fairfield, Ohio, founded in 1950.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cincinnati-inc', 'corporate', 1950, NULL, '');

-- Company: Citizens Financial Group (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_citizens-financial', 'organization', 'citizens-financial', 'Citizens Financial Group', 'published', 'Citizens Financial Group is an American financials company headquartered in Providence, Rhode Island, founded in 1828.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_citizens-financial', 'corporate', 1828, NULL, '');

-- Company: CME Group (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cme', 'organization', 'cme', 'CME Group', 'published', 'CME Group is an American financials company headquartered in Chicago, Illinois, founded in 1848.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cme', 'corporate', 1848, NULL, '');

-- Company: Cognizant (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cognizant', 'organization', 'cognizant', 'Cognizant', 'published', 'Cognizant is an American information technology company headquartered in Teaneck, New Jersey, founded in 1994.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cognizant', 'technology', 1994, NULL, '');

-- Company: Coherent Corp. (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_coherent', 'organization', 'coherent', 'Coherent Corp.', 'published', 'Coherent Corp. is an American information technology company headquartered in Saxonburg, Pennsylvania, founded in 1971.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_coherent', 'technology', 1971, NULL, '');

-- Company: Comfort Systems USA (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_comfort-systems-usa', 'organization', 'comfort-systems-usa', 'Comfort Systems USA', 'published', 'Comfort Systems USA is an American industrials company headquartered in Houston, Texas, founded in 1997.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_comfort-systems-usa', 'industrial', 1997, NULL, '');

-- Company: Constellation Energy (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_constellation-energy', 'organization', 'constellation-energy', 'Constellation Energy', 'published', 'Constellation Energy is an American utilities company headquartered in Baltimore, Maryland, founded in 1999.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_constellation-energy', 'corporate', 1999, NULL, '');

-- Company: Corpay (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_corpay', 'organization', 'corpay', 'Corpay', 'published', 'Corpay is an American financials company headquartered in Atlanta, Georgia, founded in 2000.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_corpay', 'corporate', 2000, NULL, '');

-- Company: Corteva (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_corteva', 'organization', 'corteva', 'Corteva', 'published', 'Corteva is an American materials company headquartered in Indianapolis, Indiana, founded in 2019.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_corteva', 'corporate', 2019, NULL, '');

-- Company: CoStar Group (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_costar', 'organization', 'costar', 'CoStar Group', 'published', 'CoStar Group is an American real estate company headquartered in Washington, D.C., founded in 1987.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_costar', 'real_estate', 1987, NULL, '');

-- Company: Costco (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_costco', 'organization', 'costco', 'Costco', 'published', 'Costco is an American consumer staples company headquartered in Issaquah, Washington, founded in 1976.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_costco', 'consumer', 1976, NULL, '');

-- Company: Crown Castle (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_crown-castle', 'organization', 'crown-castle', 'Crown Castle', 'published', 'Crown Castle is an American real estate company headquartered in Houston, Texas, founded in 1994.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_crown-castle', 'real_estate', 1994, NULL, '');

-- Company: Datadog (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_datadog', 'organization', 'datadog', 'Datadog', 'published', 'Datadog is an American information technology company headquartered in New York City, New York, founded in 2010.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_datadog', 'technology', 2010, NULL, '');

-- Company: DaVita (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_davita', 'organization', 'davita', 'DaVita', 'published', 'DaVita is an American health care company headquartered in Denver, Colorado, founded in 1979.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_davita', 'healthcare', 1979, NULL, '');

-- Company: Deckers Brands (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_deckers-brands', 'organization', 'deckers-brands', 'Deckers Brands', 'published', 'Deckers Brands is an American consumer discretionary company headquartered in Goleta, California, founded in 1973.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_deckers-brands', 'consumer', 1973, NULL, '');

-- Company: Digital Realty (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_digital-realty', 'organization', 'digital-realty', 'Digital Realty', 'published', 'Digital Realty is an American real estate company headquartered in Austin, Texas, founded in 2004.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_digital-realty', 'real_estate', 2004, NULL, '');

-- Company: Domino's (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_dominos', 'organization', 'dominos', 'Domino''s', 'published', 'Domino''s is an American consumer discretionary company headquartered in Ann Arbor, Michigan, founded in 1960.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_dominos', 'consumer', 1960, NULL, '');

-- Company: DoorDash (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_doordash', 'organization', 'doordash', 'DoorDash', 'published', 'DoorDash is an American consumer discretionary company headquartered in San Francisco, California, founded in 2012.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_doordash', 'consumer', 2012, NULL, '');

-- Company: D. R. Horton (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_d-r-horton', 'organization', 'd-r-horton', 'D. R. Horton', 'published', 'D. R. Horton is an American consumer discretionary company headquartered in Arlington, Texas, founded in 1978.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_d-r-horton', 'consumer', 1978, NULL, '');

-- Company: Edwards Lifesciences (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_edwards-lifesciences', 'organization', 'edwards-lifesciences', 'Edwards Lifesciences', 'published', 'Edwards Lifesciences is an American health care company headquartered in Irvine, California, founded in 1958.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_edwards-lifesciences', 'healthcare', 1958, NULL, '');

-- Company: Equifax (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_equifax', 'organization', 'equifax', 'Equifax', 'published', 'Equifax is an American industrials company headquartered in Atlanta, Georgia, founded in 1899.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_equifax', 'industrial', 1899, NULL, '');

-- Company: Equinix (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_equinix', 'organization', 'equinix', 'Equinix', 'published', 'Equinix is an American real estate company headquartered in Redwood City, California, founded in 1998.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_equinix', 'real_estate', 1998, NULL, '');

-- Company: Equity Residential (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_equity-residential', 'organization', 'equity-residential', 'Equity Residential', 'published', 'Equity Residential is an American real estate company headquartered in Chicago, Illinois, founded in 1969.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_equity-residential', 'real_estate', 1969, NULL, '');

-- Company: Essex Property Trust (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_essex-property-trust', 'organization', 'essex-property-trust', 'Essex Property Trust', 'published', 'Essex Property Trust is an American real estate company headquartered in San Mateo, California, founded in 1971.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_essex-property-trust', 'real_estate', 1971, NULL, '');

-- Company: Estée Lauder Companies (The) (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_este-lauder-companies-the', 'organization', 'este-lauder-companies-the', 'Estée Lauder Companies (The)', 'published', 'Estée Lauder Companies (The) is an American consumer staples company headquartered in New York City, New York, founded in 1946.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_este-lauder-companies-the', 'consumer', 1946, NULL, '');

-- Company: Everest Group (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_everest', 'organization', 'everest', 'Everest Group', 'published', 'Everest Group is an American financials company headquartered in Hamilton, Bermuda, founded in 1973.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_everest', 'corporate', 1973, NULL, '');

-- Company: Evergy (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_evergy', 'organization', 'evergy', 'Evergy', 'published', 'Evergy is an American utilities company headquartered in Kansas City, Missouri, founded in 1909.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_evergy', 'corporate', 1909, NULL, '');

-- Company: Extra Space Storage (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_extra-space-storage', 'organization', 'extra-space-storage', 'Extra Space Storage', 'published', 'Extra Space Storage is an American real estate company headquartered in Salt Lake City, Utah, founded in 1977.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_extra-space-storage', 'real_estate', 1977, NULL, '');

-- Company: F5, Inc. (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_f5', 'organization', 'f5', 'F5, Inc.', 'published', 'F5, Inc. is an American information technology company headquartered in Seattle, Washington, founded in 1996.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_f5', 'technology', 1996, NULL, '');

-- Company: FactSet (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_factset', 'organization', 'factset', 'FactSet', 'published', 'FactSet is an American financials company headquartered in Norwalk, Connecticut, founded in 1978.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_factset', 'corporate', 1978, NULL, '');

-- Company: Fair Isaac (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fair-isaac', 'organization', 'fair-isaac', 'Fair Isaac', 'published', 'Fair Isaac is an American information technology company headquartered in Bozeman, Montana, founded in 1956.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fair-isaac', 'technology', 1956, NULL, '');

-- Company: Federal Realty Investment Trust (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_federal-realty-investment-trust', 'organization', 'federal-realty-investment-trust', 'Federal Realty Investment Trust', 'published', 'Federal Realty Investment Trust is an American real estate company headquartered in Rockville, Maryland, founded in 1962.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_federal-realty-investment-trust', 'real_estate', 1962, NULL, '');

-- Company: FedEx Freight (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fedex-freight', 'organization', 'fedex-freight', 'FedEx Freight', 'published', 'FedEx Freight is an American industrials company headquartered in Memphis, Tennessee, founded in 1982.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fedex-freight', 'industrial', 1982, NULL, '');

-- Company: Ferguson Enterprises (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ferguson', 'organization', 'ferguson', 'Ferguson Enterprises', 'published', 'Ferguson Enterprises is an American industrials company headquartered in Newport News, Virginia, founded in 1953.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ferguson', 'industrial', 1953, NULL, '');

-- Company: Fidelity National Information Services (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fidelity-national-information-services', 'organization', 'fidelity-national-information-services', 'Fidelity National Information Services', 'published', 'Fidelity National Information Services is an American financials company headquartered in Jacksonville, Florida, founded in 1968.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fidelity-national-information-services', 'corporate', 1968, NULL, '');

-- Company: FirstEnergy (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_firstenergy', 'organization', 'firstenergy', 'FirstEnergy', 'published', 'FirstEnergy is an American utilities company headquartered in Akron, Ohio, founded in 1997.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_firstenergy', 'corporate', 1997, NULL, '');

-- Company: Fiserv (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fiserv', 'organization', 'fiserv', 'Fiserv', 'published', 'Fiserv is an American financials company headquartered in Brookfield, Wisconsin, founded in 1984.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fiserv', 'corporate', 1984, NULL, '');

-- Company: Franklin Resources (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_franklin-resources', 'organization', 'franklin-resources', 'Franklin Resources', 'published', 'Franklin Resources is an American financials company headquartered in San Mateo, California, founded in 1947.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_franklin-resources', 'corporate', 1947, NULL, '');

-- Company: Garmin (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_garmin', 'organization', 'garmin', 'Garmin', 'published', 'Garmin is an American consumer discretionary company headquartered in Schaffhausen, Switzerland, founded in 1989.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_garmin', 'consumer', 1989, NULL, '');

-- Company: GE Aerospace (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ge-aerospace', 'organization', 'ge-aerospace', 'GE Aerospace', 'published', 'GE Aerospace is an American industrials company headquartered in Evendale, Ohio, founded in 1892.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ge-aerospace', 'industrial', 1892, NULL, '');

-- Company: GE HealthCare (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ge-healthcare', 'organization', 'ge-healthcare', 'GE HealthCare', 'published', 'GE HealthCare is an American health care company headquartered in Chicago, Illinois, founded in 1994.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ge-healthcare', 'healthcare', 1994, NULL, '');

-- Company: GE Vernova (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ge-vernova', 'organization', 'ge-vernova', 'GE Vernova', 'published', 'GE Vernova is an American industrials company headquartered in Cambridge, Massachusetts, founded in 2024.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ge-vernova', 'industrial', 2024, NULL, '');

-- Company: Generac (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_generac', 'organization', 'generac', 'Generac', 'published', 'Generac is an American industrials company headquartered in Waukesha, Wisconsin, founded in 1959.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_generac', 'industrial', 1959, NULL, '');

-- Company: Global Payments (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_global-payments', 'organization', 'global-payments', 'Global Payments', 'published', 'Global Payments is an American financials company headquartered in Atlanta, Georgia, founded in 2000.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_global-payments', 'corporate', 2000, NULL, '');

-- Company: Globe Life (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_globe-life', 'organization', 'globe-life', 'Globe Life', 'published', 'Globe Life is an American financials company headquartered in McKinney, Texas, founded in 1900.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_globe-life', 'corporate', 1900, NULL, '');

-- Company: GoDaddy (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_godaddy', 'organization', 'godaddy', 'GoDaddy', 'published', 'GoDaddy is an American information technology company headquartered in Tempe, Arizona, founded in 1997.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_godaddy', 'technology', 1997, NULL, '');

-- Company: Hartford (The) (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hartford-the', 'organization', 'hartford-the', 'Hartford (The)', 'published', 'Hartford (The) is an American financials company headquartered in Hartford, Connecticut, founded in 1810.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hartford-the', 'corporate', 1810, NULL, '');

-- Company: Healthpeak Properties (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_healthpeak-properties', 'organization', 'healthpeak-properties', 'Healthpeak Properties', 'published', 'Healthpeak Properties is an American real estate company headquartered in Denver, Colorado, founded in 1985.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_healthpeak-properties', 'real_estate', 1985, NULL, '');

-- Company: Honeywell Aerospace (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_honeywell-aerospace', 'organization', 'honeywell-aerospace', 'Honeywell Aerospace', 'published', 'Honeywell Aerospace is an American industrials company headquartered in Phoenix, Arizona, founded in 1914.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_honeywell-aerospace', 'industrial', 1914, NULL, '');

-- Company: Hormel Foods (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hormel-foods', 'organization', 'hormel-foods', 'Hormel Foods', 'published', 'Hormel Foods is an American consumer staples company headquartered in Austin, Minnesota, founded in 1891.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hormel-foods', 'consumer', 1891, NULL, '');

-- Company: Host Hotels & Resorts (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_host-hotels-resorts', 'organization', 'host-hotels-resorts', 'Host Hotels & Resorts', 'published', 'Host Hotels & Resorts is an American real estate company headquartered in Bethesda, Maryland, founded in 1993.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_host-hotels-resorts', 'real_estate', 1993, NULL, '');

-- Company: Hubbell Incorporated (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hubbell', 'organization', 'hubbell', 'Hubbell Incorporated', 'published', 'Hubbell Incorporated is an American industrials company headquartered in Shelton, Connecticut, founded in 1888.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hubbell', 'industrial', 1888, NULL, '');

-- Company: Humana (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_humana', 'organization', 'humana', 'Humana', 'published', 'Humana is an American health care company headquartered in Louisville, Kentucky, founded in 1961.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_humana', 'healthcare', 1961, NULL, '');

-- Company: Huntington Bancshares (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_huntington-inc', 'organization', 'huntington-inc', 'Huntington Bancshares', 'published', 'Huntington Bancshares is an American financials company headquartered in Columbus, Ohio; Detroit, Michigan, founded in 1866.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_huntington-inc', 'corporate', 1866, NULL, '');

-- Company: Huntington Ingalls Industries (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_huntington-ingalls', 'organization', 'huntington-ingalls', 'Huntington Ingalls Industries', 'published', 'Huntington Ingalls Industries is an American industrials company headquartered in Newport News, Virginia, founded in 2011.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_huntington-ingalls', 'industrial', 2011, NULL, '');

-- Company: Ingersoll Rand (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ingersoll-rand', 'organization', 'ingersoll-rand', 'Ingersoll Rand', 'published', 'Ingersoll Rand is an American industrials company headquartered in Davidson, North Carolina, founded in 1859.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ingersoll-rand', 'industrial', 1859, NULL, '');

-- Company: Interactive Brokers (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_interactive-brokers', 'organization', 'interactive-brokers', 'Interactive Brokers', 'published', 'Interactive Brokers is an American financials company headquartered in Greenwich, Connecticut, founded in 1977.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_interactive-brokers', 'corporate', 1977, NULL, '');

-- Company: Intercontinental Exchange (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_intercontinental-exchange', 'organization', 'intercontinental-exchange', 'Intercontinental Exchange', 'published', 'Intercontinental Exchange is an American financials company headquartered in Atlanta, Georgia, founded in 2000.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_intercontinental-exchange', 'corporate', 2000, NULL, '');

-- Company: International Flavors & Fragrances (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_international-flavors-fragrances', 'organization', 'international-flavors-fragrances', 'International Flavors & Fragrances', 'published', 'International Flavors & Fragrances is an American materials company headquartered in New York City, New York, founded in 1958.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_international-flavors-fragrances', 'corporate', 1958, NULL, '');

-- Company: Intuitive Surgical (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_intuitive-surgical', 'organization', 'intuitive-surgical', 'Intuitive Surgical', 'published', 'Intuitive Surgical is an American health care company headquartered in Sunnyvale, California, founded in 1995.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_intuitive-surgical', 'healthcare', 1995, NULL, '');

-- Company: Invesco (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_invesco', 'organization', 'invesco', 'Invesco', 'published', 'Invesco is an American financials company headquartered in Atlanta, Georgia, founded in 1935.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_invesco', 'corporate', 1935, NULL, '');

-- Company: Invitation Homes (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_invitation-homes', 'organization', 'invitation-homes', 'Invitation Homes', 'published', 'Invitation Homes is an American real estate company headquartered in Dallas, Texas, founded in 2012.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_invitation-homes', 'real_estate', 2012, NULL, '');

-- Company: Iron Mountain (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_iron-mountain', 'organization', 'iron-mountain', 'Iron Mountain', 'published', 'Iron Mountain is an American real estate company headquartered in Portsmouth, New Hampshire, founded in 1951.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_iron-mountain', 'real_estate', 1951, NULL, '');

-- Company: Jack Henry & Associates (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_jack-henry-associates', 'organization', 'jack-henry-associates', 'Jack Henry & Associates', 'published', 'Jack Henry & Associates is an American financials company headquartered in Monett, Missouri, founded in 1976.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_jack-henry-associates', 'corporate', 1976, NULL, '');

-- Company: Kenvue (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_kenvue', 'organization', 'kenvue', 'Kenvue', 'published', 'Kenvue is an American consumer staples company headquartered in Skillman, New Jersey, founded in 2022.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_kenvue', 'consumer', 2022, NULL, '');

-- Company: Keurig Dr Pepper (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_keurig-dr-pepper', 'organization', 'keurig-dr-pepper', 'Keurig Dr Pepper', 'published', 'Keurig Dr Pepper is an American consumer staples company headquartered in Burlington, Massachusetts, founded in 1981.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_keurig-dr-pepper', 'consumer', 1981, NULL, '');

-- Company: KeyCorp (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_keycorp', 'organization', 'keycorp', 'KeyCorp', 'published', 'KeyCorp is an American financials company headquartered in Cleveland, Ohio, founded in 1825.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_keycorp', 'corporate', 1825, NULL, '');

-- Company: Labcorp (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_labcorp', 'organization', 'labcorp', 'Labcorp', 'published', 'Labcorp is an American health care company headquartered in Burlington, North Carolina, founded in 1978.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_labcorp', 'healthcare', 1978, NULL, '');

-- Company: Lilly (Eli) (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_lilly-eli', 'organization', 'lilly-eli', 'Lilly (Eli)', 'published', 'Lilly (Eli) is an American health care company headquartered in Indianapolis, Indiana, founded in 1876.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_lilly-eli', 'healthcare', 1876, NULL, '');

-- Company: Linde plc (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_linde-plc', 'organization', 'linde-plc', 'Linde plc', 'published', 'Linde plc is an American materials company, founded in 1879.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_linde-plc', 'corporate', 1879, NULL, '');

-- Company: Live Nation Entertainment (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_live-nation-entertainment', 'organization', 'live-nation-entertainment', 'Live Nation Entertainment', 'published', 'Live Nation Entertainment is an American communication services company headquartered in Beverly Hills, California, founded in 2010.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_live-nation-entertainment', 'corporate', 2010, NULL, '');

-- Company: Lululemon Athletica (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_lululemon-athletica', 'organization', 'lululemon-athletica', 'Lululemon Athletica', 'published', 'Lululemon Athletica is an American consumer discretionary company headquartered in Vancouver, Canada, founded in 1998.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_lululemon-athletica', 'consumer', 1998, NULL, '');

-- Company: Lumentum (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_lumentum', 'organization', 'lumentum', 'Lumentum', 'published', 'Lumentum is an American information technology company headquartered in San Jose, California, founded in 2015.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_lumentum', 'technology', 2015, NULL, '');

-- Company: M&T Bank (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mt-bank', 'organization', 'mt-bank', 'M&T Bank', 'published', 'M&T Bank is an American financials company headquartered in Buffalo, New York, founded in 1856.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mt-bank', 'corporate', 1856, NULL, '');

-- Company: Marsh McLennan (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_marsh-mclennan', 'organization', 'marsh-mclennan', 'Marsh McLennan', 'published', 'Marsh McLennan is an American financials company headquartered in New York City, New York, founded in 1905.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_marsh-mclennan', 'corporate', 1905, NULL, '');

-- Company: MetLife (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_metlife', 'organization', 'metlife', 'MetLife', 'published', 'MetLife is an American financials company headquartered in New York City, New York, founded in 1868.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_metlife', 'corporate', 1868, NULL, '');

-- Company: Microchip Technology (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_microchip', 'organization', 'microchip', 'Microchip Technology', 'published', 'Microchip Technology is an American information technology company headquartered in Chandler, Arizona, founded in 1989.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_microchip', 'technology', 1989, NULL, '');

-- Company: Mid-America Apartment Communities (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mid-america-apartment-communities', 'organization', 'mid-america-apartment-communities', 'Mid-America Apartment Communities', 'published', 'Mid-America Apartment Communities is an American real estate company headquartered in Memphis, Tennessee, founded in 1977.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mid-america-apartment-communities', 'real_estate', 1977, NULL, '');

-- Company: Moderna (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_moderna', 'organization', 'moderna', 'Moderna', 'published', 'Moderna is an American health care company headquartered in Cambridge, Massachusetts, founded in 2010.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_moderna', 'healthcare', 2010, NULL, '');

-- Company: Monolithic Power Systems (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_monolithic-power-systems', 'organization', 'monolithic-power-systems', 'Monolithic Power Systems', 'published', 'Monolithic Power Systems is an American information technology company headquartered in Kirkland, Washington, founded in 1997.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_monolithic-power-systems', 'technology', 1997, NULL, '');

-- Company: Monster Beverage (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_monster-beverage', 'organization', 'monster-beverage', 'Monster Beverage', 'published', 'Monster Beverage is an American consumer staples company headquartered in Corona, California, founded in 2012.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_monster-beverage', 'consumer', 2012, NULL, '');

-- Company: Moody's Corporation (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_moodys', 'organization', 'moodys', 'Moody''s Corporation', 'published', 'Moody''s Corporation is an American financials company headquartered in New York City, New York, founded in 1909.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_moodys', 'corporate', 1909, NULL, '');

-- Company: MSCI Inc. (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_msci', 'organization', 'msci', 'MSCI Inc.', 'published', 'MSCI Inc. is an American financials company headquartered in New York City, New York, founded in 1969.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_msci', 'corporate', 1969, NULL, '');

-- Company: NetApp (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_netapp', 'organization', 'netapp', 'NetApp', 'published', 'NetApp is an American information technology company headquartered in San Jose, California, founded in 1992.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_netapp', 'technology', 1992, NULL, '');

-- Company: NextEra Energy (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_nextera-energy', 'organization', 'nextera-energy', 'NextEra Energy', 'published', 'NextEra Energy is an American utilities company headquartered in Juno Beach, Florida.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_nextera-energy', 'corporate', NULL, NULL, '');

-- Company: NiSource (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_nisource', 'organization', 'nisource', 'NiSource', 'published', 'NiSource is an American utilities company headquartered in Merrillville, Indiana, founded in 1912.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_nisource', 'corporate', 1912, NULL, '');

-- Company: Nordson Corporation (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_nordson', 'organization', 'nordson', 'Nordson Corporation', 'published', 'Nordson Corporation is an American industrials company headquartered in Westlake, Ohio, founded in 1935.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_nordson', 'industrial', 1935, NULL, '');

-- Company: NRG Energy (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_nrg-energy', 'organization', 'nrg-energy', 'NRG Energy', 'published', 'NRG Energy is an American utilities company headquartered in Houston, Texas, founded in 1992.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_nrg-energy', 'corporate', 1992, NULL, '');

-- Company: NXP Semiconductors (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_nxp-semiconductors', 'organization', 'nxp-semiconductors', 'NXP Semiconductors', 'published', 'NXP Semiconductors is an American information technology company headquartered in Eindhoven, Netherlands, founded in 1953.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_nxp-semiconductors', 'technology', 1953, NULL, '');

-- Company: Occidental Petroleum (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_occidental-petroleum', 'organization', 'occidental-petroleum', 'Occidental Petroleum', 'published', 'Occidental Petroleum is an American energy company headquartered in Houston, Texas, founded in 1920.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_occidental-petroleum', 'industrial', 1920, NULL, '');

-- Company: Old Dominion (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_old-dominion', 'organization', 'old-dominion', 'Old Dominion', 'published', 'Old Dominion is an American industrials company headquartered in Thomasville, North Carolina, founded in 1934.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_old-dominion', 'industrial', 1934, NULL, '');

-- Company: ON Semiconductor (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_on-semiconductor', 'organization', 'on-semiconductor', 'ON Semiconductor', 'published', 'ON Semiconductor is an American information technology company headquartered in Phoenix, Arizona, founded in 1999.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_on-semiconductor', 'technology', 1999, NULL, '');

-- Company: Oneok (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_oneok', 'organization', 'oneok', 'Oneok', 'published', 'Oneok is an American energy company headquartered in Tulsa, Oklahoma, founded in 1906.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_oneok', 'industrial', 1906, NULL, '');

-- Company: Paccar (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_paccar', 'organization', 'paccar', 'Paccar', 'published', 'Paccar is an American industrials company headquartered in Bellevue, Washington, founded in 1905.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_paccar', 'industrial', 1905, NULL, '');

-- Company: Paramount Skydance Corporation (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_paramount-skydance', 'organization', 'paramount-skydance', 'Paramount Skydance Corporation', 'published', 'Paramount Skydance Corporation is an American communication services company headquartered in Los Angeles, California, founded in 2025.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_paramount-skydance', 'corporate', 2025, NULL, '');

-- Company: PG&E Corporation (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_pge', 'organization', 'pge', 'PG&E Corporation', 'published', 'PG&E Corporation is an American utilities company headquartered in Oakland, California, founded in 1905.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_pge', 'corporate', 1905, NULL, '');

-- Company: Philip Morris International (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_philip-morris', 'organization', 'philip-morris', 'Philip Morris International', 'published', 'Philip Morris International is an American consumer staples company headquartered in New York City, New York, founded in 2008.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_philip-morris', 'consumer', 2008, NULL, '');

-- Company: Pinnacle West Capital (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_pinnacle-west-capital', 'organization', 'pinnacle-west-capital', 'Pinnacle West Capital', 'published', 'Pinnacle West Capital is an American utilities company headquartered in Phoenix, Arizona, founded in 1985.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_pinnacle-west-capital', 'corporate', 1985, NULL, '');

-- Company: PNC Financial Services (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_pnc-financial-services', 'organization', 'pnc-financial-services', 'PNC Financial Services', 'published', 'PNC Financial Services is an American financials company headquartered in Pittsburgh, Pennsylvania, founded in 1845.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_pnc-financial-services', 'corporate', 1845, NULL, '');

-- Company: Principal Financial Group (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_principal-financial', 'organization', 'principal-financial', 'Principal Financial Group', 'published', 'Principal Financial Group is an American financials company headquartered in Des Moines, Iowa, founded in 1879.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_principal-financial', 'corporate', 1879, NULL, '');

-- Company: Progressive Corporation (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_progressive', 'organization', 'progressive', 'Progressive Corporation', 'published', 'Progressive Corporation is an American financials company headquartered in Mayfield Village, Ohio, founded in 1937.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_progressive', 'corporate', 1937, NULL, '');

-- Company: Prudential Financial (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_prudential', 'organization', 'prudential', 'Prudential Financial', 'published', 'Prudential Financial is an American financials company headquartered in Newark, New Jersey, founded in 1875.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_prudential', 'corporate', 1875, NULL, '');

-- Company: PTC Inc. (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ptc', 'organization', 'ptc', 'PTC Inc.', 'published', 'PTC Inc. is an American information technology company headquartered in Boston, Massachusetts, founded in 1985.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ptc', 'technology', 1985, NULL, '');

-- Company: Quest Diagnostics (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_quest-diagnostics', 'organization', 'quest-diagnostics', 'Quest Diagnostics', 'published', 'Quest Diagnostics is an American health care company headquartered in Secaucus, New Jersey, founded in 1967.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_quest-diagnostics', 'healthcare', 1967, NULL, '');

-- Company: Qnity Electronics (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_qnity-electronics', 'organization', 'qnity-electronics', 'Qnity Electronics', 'published', 'Qnity Electronics is an American information technology company headquartered in Wilmington, Delaware, founded in 2025.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_qnity-electronics', 'technology', 2025, NULL, '');

-- Company: Raymond James Financial (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_raymond-james', 'organization', 'raymond-james', 'Raymond James Financial', 'published', 'Raymond James Financial is an American financials company headquartered in St. Petersburg, Florida, founded in 1962.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_raymond-james', 'corporate', 1962, NULL, '');

-- Company: RTX Corporation (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_rtx', 'organization', 'rtx', 'RTX Corporation', 'published', 'RTX Corporation is an American industrials company headquartered in Waltham, Massachusetts, founded in 1922.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_rtx', 'industrial', 1922, NULL, '');

-- Company: Regency Centers (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_regency-centers', 'organization', 'regency-centers', 'Regency Centers', 'published', 'Regency Centers is an American real estate company headquartered in Jacksonville, Florida, founded in 1963.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_regency-centers', 'real_estate', 1963, NULL, '');

-- Company: Regions Financial Corporation (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_regions-financial', 'organization', 'regions-financial', 'Regions Financial Corporation', 'published', 'Regions Financial Corporation is an American financials company headquartered in Birmingham, Alabama, founded in 1971.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_regions-financial', 'corporate', 1971, NULL, '');

-- Company: ResMed (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_resmed', 'organization', 'resmed', 'ResMed', 'published', 'ResMed is an American health care company headquartered in San Diego, California, founded in 1989.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_resmed', 'healthcare', 1989, NULL, '');

-- Company: Revvity (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_revvity', 'organization', 'revvity', 'Revvity', 'published', 'Revvity is an American health care company headquartered in Waltham, Massachusetts, founded in 1937.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_revvity', 'healthcare', 1937, NULL, '');

-- Company: Rollins, Inc. (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_rollins', 'organization', 'rollins', 'Rollins, Inc.', 'published', 'Rollins, Inc. is an American industrials company headquartered in Atlanta, Georgia, founded in 1948.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_rollins', 'industrial', 1948, NULL, '');

-- Company: Royal Caribbean Group (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_royal-caribbean', 'organization', 'royal-caribbean', 'Royal Caribbean Group', 'published', 'Royal Caribbean Group is an American consumer discretionary company headquartered in Miami, Florida, founded in 1997.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_royal-caribbean', 'consumer', 1997, NULL, '');

-- Company: S&P Global (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_sp-global', 'organization', 'sp-global', 'S&P Global', 'published', 'S&P Global is an American financials company headquartered in New York City, New York.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_sp-global', 'corporate', NULL, NULL, '');

-- Company: Sandisk (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_sandisk', 'organization', 'sandisk', 'Sandisk', 'published', 'Sandisk is an American information technology company headquartered in Milpitas, California, founded in 1988.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_sandisk', 'technology', 1988, NULL, '');

-- Company: Simon Property Group (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_simon-property', 'organization', 'simon-property', 'Simon Property Group', 'published', 'Simon Property Group is an American real estate company headquartered in Indianapolis, Indiana.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_simon-property', 'real_estate', NULL, NULL, '');

-- Company: Skyworks Solutions (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_skyworks-solutions', 'organization', 'skyworks-solutions', 'Skyworks Solutions', 'published', 'Skyworks Solutions is an American information technology company headquartered in Irvine, California, founded in 2002.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_skyworks-solutions', 'technology', 2002, NULL, '');

-- Company: J.M. Smucker Company (The) (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_jm-smucker-company-the', 'organization', 'jm-smucker-company-the', 'J.M. Smucker Company (The)', 'published', 'J.M. Smucker Company (The) is an American consumer staples company headquartered in Orrville, Ohio, founded in 1897.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_jm-smucker-company-the', 'consumer', 1897, NULL, '');

-- Company: Smurfit Westrock (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_smurfit-westrock', 'organization', 'smurfit-westrock', 'Smurfit Westrock', 'published', 'Smurfit Westrock is an American materials company headquartered in Dublin, Ireland, founded in 1934.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_smurfit-westrock', 'corporate', 1934, NULL, '');

-- Company: State Street Corporation (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_state-street', 'organization', 'state-street', 'State Street Corporation', 'published', 'State Street Corporation is an American financials company headquartered in Boston, Massachusetts, founded in 1792.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_state-street', 'corporate', 1792, NULL, '');

-- Company: Steel Dynamics (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_steel-dynamics', 'organization', 'steel-dynamics', 'Steel Dynamics', 'published', 'Steel Dynamics is an American materials company headquartered in Fort Wayne, Indiana, founded in 1993.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_steel-dynamics', 'corporate', 1993, NULL, '');

-- Company: Steris (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_steris', 'organization', 'steris', 'Steris', 'published', 'Steris is an American health care company headquartered in Dublin, Ireland, founded in 1985.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_steris', 'healthcare', 1985, NULL, '');

-- Company: Synchrony Financial (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_synchrony', 'organization', 'synchrony', 'Synchrony Financial', 'published', 'Synchrony Financial is an American financials company headquartered in Stamford, Connecticut, founded in 2003.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_synchrony', 'corporate', 2003, NULL, '');

-- Company: T. Rowe Price (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_t-rowe-price', 'organization', 't-rowe-price', 'T. Rowe Price', 'published', 'T. Rowe Price is an American financials company headquartered in Baltimore, Maryland, founded in 1937.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_t-rowe-price', 'corporate', 1937, NULL, '');

-- Company: Targa Resources (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_targa-resources', 'organization', 'targa-resources', 'Targa Resources', 'published', 'Targa Resources is an American energy company headquartered in Houston, Texas, founded in 2005.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_targa-resources', 'industrial', 2005, NULL, '');

-- Company: TE Connectivity (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_te-connectivity', 'organization', 'te-connectivity', 'TE Connectivity', 'published', 'TE Connectivity is an American information technology company headquartered in Galway, Ireland, founded in 2007.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_te-connectivity', 'technology', 2007, NULL, '');

-- Company: Teradyne (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_teradyne', 'organization', 'teradyne', 'Teradyne', 'published', 'Teradyne is an American information technology company headquartered in North Reading, Massachusetts, founded in 1960.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_teradyne', 'technology', 1960, NULL, '');

-- Company: TKO Group Holdings (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_tko-group', 'organization', 'tko-group', 'TKO Group Holdings', 'published', 'TKO Group Holdings is an American communication services company headquartered in New York City, New York, founded in 2023.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_tko-group', 'corporate', 2023, NULL, '');

-- Company: Trade Desk (The) (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_trade-desk-the', 'organization', 'trade-desk-the', 'Trade Desk (The)', 'published', 'Trade Desk (The) is an American communication services company headquartered in Ventura, California, founded in 2009.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_trade-desk-the', 'corporate', 2009, NULL, '');

-- Company: Travelers Companies (The) (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_travelers-companies-the', 'organization', 'travelers-companies-the', 'Travelers Companies (The)', 'published', 'Travelers Companies (The) is an American financials company headquartered in New York City, New York, founded in 1853.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_travelers-companies-the', 'corporate', 1853, NULL, '');

-- Company: Trimble Inc. (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_trimble', 'organization', 'trimble', 'Trimble Inc.', 'published', 'Trimble Inc. is an American information technology company headquartered in Westminster, Colorado, founded in 1978.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_trimble', 'technology', 1978, NULL, '');

-- Company: Tyler Technologies (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_tyler-inc', 'organization', 'tyler-inc', 'Tyler Technologies', 'published', 'Tyler Technologies is an American information technology company headquartered in Plano, Texas, founded in 1966.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_tyler-inc', 'technology', 1966, NULL, '');

-- Company: U.S. Bancorp (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_us', 'organization', 'us', 'U.S. Bancorp', 'published', 'U.S. Bancorp is an American financials company headquartered in Minneapolis, Minnesota, founded in 1968.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_us', 'corporate', 1968, NULL, '');

-- Company: UDR, Inc. (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_udr', 'organization', 'udr', 'UDR, Inc.', 'published', 'UDR, Inc. is an American real estate company headquartered in Highlands Ranch, Colorado, founded in 1972.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_udr', 'real_estate', 1972, NULL, '');

-- Company: United Rentals (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_united-rentals', 'organization', 'united-rentals', 'United Rentals', 'published', 'United Rentals is an American industrials company headquartered in Stamford, Connecticut, founded in 1997.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_united-rentals', 'industrial', 1997, NULL, '');

-- Company: Veeva Systems (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_veeva-systems', 'organization', 'veeva-systems', 'Veeva Systems', 'published', 'Veeva Systems is an American health care company headquartered in Pleasanton, California, founded in 2007.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_veeva-systems', 'healthcare', 2007, NULL, '');

-- Company: Ventas (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ventas', 'organization', 'ventas', 'Ventas', 'published', 'Ventas is an American real estate company headquartered in Chicago, Illinois, founded in 1998.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ventas', 'real_estate', 1998, NULL, '');

-- Company: Verisign (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_verisign', 'organization', 'verisign', 'Verisign', 'published', 'Verisign is an American information technology company headquartered in Reston, Virginia, founded in 1995.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_verisign', 'technology', 1995, NULL, '');

-- Company: Verisk Analytics (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_verisk-analytics', 'organization', 'verisk-analytics', 'Verisk Analytics', 'published', 'Verisk Analytics is an American industrials company headquartered in Jersey City, New Jersey, founded in 1971.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_verisk-analytics', 'industrial', 1971, NULL, '');

-- Company: Vertex Pharmaceuticals (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_vertex-pharmaceuticals', 'organization', 'vertex-pharmaceuticals', 'Vertex Pharmaceuticals', 'published', 'Vertex Pharmaceuticals is an American health care company headquartered in Boston, Massachusetts, founded in 1989.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_vertex-pharmaceuticals', 'healthcare', 1989, NULL, '');

-- Company: Vertiv (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_vertiv', 'organization', 'vertiv', 'Vertiv', 'published', 'Vertiv is an American industrials company headquartered in Westerville, Ohio, founded in 2016.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_vertiv', 'industrial', 2016, NULL, '');

-- Company: Viatris (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_viatris', 'organization', 'viatris', 'Viatris', 'published', 'Viatris is an American health care company headquartered in Pittsburgh, Pennsylvania, founded in 1961.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_viatris', 'healthcare', 1961, NULL, '');

-- Company: Vici Properties (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_vici-properties', 'organization', 'vici-properties', 'Vici Properties', 'published', 'Vici Properties is an American real estate company headquartered in New York City, New York, founded in 2017.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_vici-properties', 'real_estate', 2017, NULL, '');

-- Company: W. W. Grainger (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_w-w-grainger', 'organization', 'w-w-grainger', 'W. W. Grainger', 'published', 'W. W. Grainger is an American industrials company headquartered in Lake Forest, Illinois, founded in 1927.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_w-w-grainger', 'industrial', 1927, NULL, '');

-- Company: Walt Disney Company (The) (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_walt-disney-company-the', 'organization', 'walt-disney-company-the', 'Walt Disney Company (The)', 'published', 'Walt Disney Company (The) is an American communication services company headquartered in Burbank, California, founded in 1923.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_walt-disney-company-the', 'corporate', 1923, NULL, '');

-- Company: WEC Energy Group (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_wec-energy', 'organization', 'wec-energy', 'WEC Energy Group', 'published', 'WEC Energy Group is an American utilities company headquartered in Milwaukee, Wisconsin.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_wec-energy', 'corporate', NULL, NULL, '');

-- Company: Welltower (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_welltower', 'organization', 'welltower', 'Welltower', 'published', 'Welltower is an American real estate company headquartered in Toledo, Ohio.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_welltower', 'real_estate', NULL, NULL, '');

-- Company: Weyerhaeuser (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_weyerhaeuser', 'organization', 'weyerhaeuser', 'Weyerhaeuser', 'published', 'Weyerhaeuser is an American real estate company headquartered in Seattle, Washington, founded in 1900.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_weyerhaeuser', 'real_estate', 1900, NULL, '');

-- Company: Williams-Sonoma, Inc. (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_williams-sonoma', 'organization', 'williams-sonoma', 'Williams-Sonoma, Inc.', 'published', 'Williams-Sonoma, Inc. is an American consumer discretionary company headquartered in San Francisco, California, founded in 1956.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_williams-sonoma', 'consumer', 1956, NULL, '');

-- Company: Willis Towers Watson (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_willis-towers-watson', 'organization', 'willis-towers-watson', 'Willis Towers Watson', 'published', 'Willis Towers Watson is an American financials company headquartered in London, United Kingdom.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_willis-towers-watson', 'corporate', NULL, NULL, '');

-- Company: Zebra Technologies (source=S&P500)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_zebra', 'organization', 'zebra', 'Zebra Technologies', 'published', 'Zebra Technologies is an American information technology company headquartered in Lincolnshire, Illinois.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_zebra', 'technology', NULL, NULL, '');

-- Company: BNP Paribas (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bnp-paribas', 'organization', 'bnp-paribas', 'BNP Paribas', 'published', 'BNP Paribas is an American banking company headquartered in New York, New York.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bnp-paribas', 'financial', NULL, NULL, '');

-- Company: TD Bank, N.A. (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_td-bank-na', 'organization', 'td-bank-na', 'TD Bank, N.A.', 'published', 'TD Bank, N.A. is an American banking company headquartered in Mount Laurel, New Jersey.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_td-bank-na', 'financial', NULL, NULL, '');

-- Company: Fifth Third Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fifth-third-bank', 'organization', 'fifth-third-bank', 'Fifth Third Bank', 'published', 'Fifth Third Bank is an American banking company headquartered in Cincinnati, Ohio.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fifth-third-bank', 'financial', NULL, NULL, '');

-- Company: BMO USA (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bmo-usa', 'organization', 'bmo-usa', 'BMO USA', 'published', 'BMO USA is an American banking company headquartered in Chicago, Illinois.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bmo-usa', 'financial', NULL, NULL, '');

-- Company: HSBC Bank USA (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hsbc-bank-usa', 'organization', 'hsbc-bank-usa', 'HSBC Bank USA', 'published', 'HSBC Bank USA is an American banking company headquartered in New York, New York.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hsbc-bank-usa', 'financial', NULL, NULL, '');

-- Company: First Citizens BancShares (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_first-citizens-bancshares', 'organization', 'first-citizens-bancshares', 'First Citizens BancShares', 'published', 'First Citizens BancShares is an American banking company headquartered in Raleigh, North Carolina.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_first-citizens-bancshares', 'financial', NULL, NULL, '');

-- Company: Barclays (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_barclays', 'organization', 'barclays', 'Barclays', 'published', 'Barclays is an American banking company headquartered in New York, New York.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_barclays', 'financial', NULL, NULL, '');

-- Company: Ally Financial (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ally', 'organization', 'ally', 'Ally Financial', 'published', 'Ally Financial is an American banking company headquartered in Detroit, Michigan.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ally', 'financial', NULL, NULL, '');

-- Company: Santander Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_santander-bank', 'organization', 'santander-bank', 'Santander Bank', 'published', 'Santander Bank is an American banking company headquartered in Boston, Massachusetts.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_santander-bank', 'financial', NULL, NULL, '');

-- Company: Deutsche Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_deutsche-bank', 'organization', 'deutsche-bank', 'Deutsche Bank', 'published', 'Deutsche Bank is an American banking company headquartered in New York, New York.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_deutsche-bank', 'financial', NULL, NULL, '');

-- Company: Pinnacle Financial Partners (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_pinnacle-financial', 'organization', 'pinnacle-financial', 'Pinnacle Financial Partners', 'published', 'Pinnacle Financial Partners is an American banking company headquartered in Nashville, Tennessee.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_pinnacle-financial', 'financial', NULL, NULL, '');

-- Company: Western Alliance Bancorporation (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_western-alliance-bancorporation', 'organization', 'western-alliance-bancorporation', 'Western Alliance Bancorporation', 'published', 'Western Alliance Bancorporation is an American banking company headquartered in Phoenix, Arizona.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_western-alliance-bancorporation', 'financial', NULL, NULL, '');

-- Company: Webster Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_webster-bank', 'organization', 'webster-bank', 'Webster Bank', 'published', 'Webster Bank is an American banking company headquartered in Stamford, Connecticut.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_webster-bank', 'financial', NULL, NULL, '');

-- Company: First Horizon Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_first-horizon-bank', 'organization', 'first-horizon-bank', 'First Horizon Bank', 'published', 'First Horizon Bank is an American banking company headquartered in Memphis, Tennessee.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_first-horizon-bank', 'financial', NULL, NULL, '');

-- Company: CIBC Bank USA (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cibc-bank-usa', 'organization', 'cibc-bank-usa', 'CIBC Bank USA', 'published', 'CIBC Bank USA is an American banking company headquartered in Chicago, Illinois.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cibc-bank-usa', 'financial', NULL, NULL, '');

-- Company: Popular Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_popular-bank', 'organization', 'popular-bank', 'Popular Bank', 'published', 'Popular Bank is an American banking company headquartered in San Juan, Puerto Rico.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_popular-bank', 'financial', NULL, NULL, '');

-- Company: UMB Financial Corporation (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_umb-financial', 'organization', 'umb-financial', 'UMB Financial Corporation', 'published', 'UMB Financial Corporation is an American banking company headquartered in Kansas City, Missouri.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_umb-financial', 'financial', NULL, NULL, '');

-- Company: Wintrust Financial (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_wintrust', 'organization', 'wintrust', 'Wintrust Financial', 'published', 'Wintrust Financial is an American banking company headquartered in Rosemont, Illinois.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_wintrust', 'financial', NULL, NULL, '');

-- Company: SouthState Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_southstate-bank', 'organization', 'southstate-bank', 'SouthState Bank', 'published', 'SouthState Bank is an American banking company headquartered in Winter Haven, Florida.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_southstate-bank', 'financial', NULL, NULL, '');

-- Company: Columbia Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_columbia-bank', 'organization', 'columbia-bank', 'Columbia Bank', 'published', 'Columbia Bank is an American banking company headquartered in Tacoma, Washington.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_columbia-bank', 'financial', NULL, NULL, '');

-- Company: Sumitomo Mitsui Banking Corporation (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_sumitomo-mitsui-banking', 'organization', 'sumitomo-mitsui-banking', 'Sumitomo Mitsui Banking Corporation', 'published', 'Sumitomo Mitsui Banking Corporation is an American banking company headquartered in New York, New York.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_sumitomo-mitsui-banking', 'financial', NULL, NULL, '');

-- Company: BOK Financial Corporation (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bok-financial', 'organization', 'bok-financial', 'BOK Financial Corporation', 'published', 'BOK Financial Corporation is an American banking company headquartered in Tulsa, Oklahoma.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bok-financial', 'financial', NULL, NULL, '');

-- Company: SoFi (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_sofi', 'organization', 'sofi', 'SoFi', 'published', 'SoFi is an American banking company headquartered in San Francisco, California.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_sofi', 'financial', NULL, NULL, '');

-- Company: Cullen/Frost Bankers (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cullenfrost-bankers', 'organization', 'cullenfrost-bankers', 'Cullen/Frost Bankers', 'published', 'Cullen/Frost Bankers is an American banking company headquartered in San Antonio, Texas.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cullenfrost-bankers', 'financial', NULL, NULL, '');

-- Company: EverBank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_everbank', 'organization', 'everbank', 'EverBank', 'published', 'EverBank is an American banking company headquartered in Jacksonville, Florida.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_everbank', 'financial', NULL, NULL, '');

-- Company: Associated Banc-Corp (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_associated-banc-corp', 'organization', 'associated-banc-corp', 'Associated Banc-Corp', 'published', 'Associated Banc-Corp is an American banking company headquartered in Green Bay, Wisconsin.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_associated-banc-corp', 'financial', NULL, NULL, '');

-- Company: Prosperity Bancshares (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_prosperity', 'organization', 'prosperity', 'Prosperity Bancshares', 'published', 'Prosperity Bancshares is an American banking company headquartered in Houston, Texas.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_prosperity', 'financial', NULL, NULL, '');

-- Company: Stifel (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_stifel', 'organization', 'stifel', 'Stifel', 'published', 'Stifel is an American banking company headquartered in St. Louis, Missouri.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_stifel', 'financial', NULL, NULL, '');

-- Company: Commerce Bancshares (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_commerce', 'organization', 'commerce', 'Commerce Bancshares', 'published', 'Commerce Bancshares is an American banking company headquartered in Kansas City, Missouri.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_commerce', 'financial', NULL, NULL, '');

-- Company: Hancock Whitney (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hancock-whitney', 'organization', 'hancock-whitney', 'Hancock Whitney', 'published', 'Hancock Whitney is an American banking company headquartered in Gulfport, Mississippi.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hancock-whitney', 'financial', NULL, NULL, '');

-- Company: BankUnited (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bankunited', 'organization', 'bankunited', 'BankUnited', 'published', 'BankUnited is an American banking company headquartered in Miami Lakes, Florida.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bankunited', 'financial', NULL, NULL, '');

-- Company: First National of Nebraska (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_first-national-of-nebraska', 'organization', 'first-national-of-nebraska', 'First National of Nebraska', 'published', 'First National of Nebraska is an American banking company headquartered in Omaha, Nebraska.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_first-national-of-nebraska', 'financial', NULL, NULL, '');

-- Company: United Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_united-bank', 'organization', 'united-bank', 'United Bank', 'published', 'United Bank is an American banking company headquartered in Charleston, West Virginia.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_united-bank', 'financial', NULL, NULL, '');

-- Company: Texas Capital Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_texas-capital-bank', 'organization', 'texas-capital-bank', 'Texas Capital Bank', 'published', 'Texas Capital Bank is an American banking company headquartered in Dallas, Texas.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_texas-capital-bank', 'financial', NULL, NULL, '');

-- Company: Fulton Financial Corporation (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fulton-financial', 'organization', 'fulton-financial', 'Fulton Financial Corporation', 'published', 'Fulton Financial Corporation is an American banking company headquartered in Lancaster, Pennsylvania.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fulton-financial', 'financial', NULL, NULL, '');

-- Company: Glacier Bancorp (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_glacier', 'organization', 'glacier', 'Glacier Bancorp', 'published', 'Glacier Bancorp is an American banking company headquartered in Kalispell, Montana.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_glacier', 'financial', NULL, NULL, '');

-- Company: City National Bank of Florida (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_city-national-bank-of-florida', 'organization', 'city-national-bank-of-florida', 'City National Bank of Florida', 'published', 'City National Bank of Florida is an American banking company headquartered in Miami, Florida.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_city-national-bank-of-florida', 'financial', NULL, NULL, '');

-- Company: United Community Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_united-community-bank', 'organization', 'united-community-bank', 'United Community Bank', 'published', 'United Community Bank is an American banking company headquartered in Greenville, South Carolina.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_united-community-bank', 'financial', NULL, NULL, '');

-- Company: Ameris Bancorp (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ameris', 'organization', 'ameris', 'Ameris Bancorp', 'published', 'Ameris Bancorp is an American banking company headquartered in Atlanta, Georgia.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ameris', 'financial', NULL, NULL, '');

-- Company: Arvest Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_arvest-bank', 'organization', 'arvest-bank', 'Arvest Bank', 'published', 'Arvest Bank is an American banking company headquartered in Bentonville, Arkansas.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_arvest-bank', 'financial', NULL, NULL, '');

-- Company: WesBanco (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_wesbanco', 'organization', 'wesbanco', 'WesBanco', 'published', 'WesBanco is an American banking company headquartered in Wheeling, West Virginia.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_wesbanco', 'financial', NULL, NULL, '');

-- Company: Renasant Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_renasant-bank', 'organization', 'renasant-bank', 'Renasant Bank', 'published', 'Renasant Bank is an American banking company headquartered in Tupelo, Mississippi.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_renasant-bank', 'financial', NULL, NULL, '');

-- Company: First Interstate BancSystem (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_first-interstate-bancsystem', 'organization', 'first-interstate-bancsystem', 'First Interstate BancSystem', 'published', 'First Interstate BancSystem is an American banking company headquartered in Billings, Montana.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_first-interstate-bancsystem', 'financial', NULL, NULL, '');

-- Company: Provident Bank of New Jersey (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_provident-bank-of-new-jersey', 'organization', 'provident-bank-of-new-jersey', 'Provident Bank of New Jersey', 'published', 'Provident Bank of New Jersey is an American banking company headquartered in Jersey City, New Jersey.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_provident-bank-of-new-jersey', 'financial', NULL, NULL, '');

-- Company: Simmons Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_simmons-bank', 'organization', 'simmons-bank', 'Simmons Bank', 'published', 'Simmons Bank is an American banking company headquartered in Pine Bluff, Arkansas.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_simmons-bank', 'financial', NULL, NULL, '');

-- Company: First Hawaiian Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_first-hawaiian-bank', 'organization', 'first-hawaiian-bank', 'First Hawaiian Bank', 'published', 'First Hawaiian Bank is an American banking company headquartered in Honolulu, Hawaii.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_first-hawaiian-bank', 'financial', NULL, NULL, '');

-- Company: Cathay Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cathay-bank', 'organization', 'cathay-bank', 'Cathay Bank', 'published', 'Cathay Bank is an American banking company headquartered in Los Angeles, California.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cathay-bank', 'financial', NULL, NULL, '');

-- Company: Bank of Hawaii (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bank-of-hawaii', 'organization', 'bank-of-hawaii', 'Bank of Hawaii', 'published', 'Bank of Hawaii is an American banking company headquartered in Honolulu, Hawaii.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bank-of-hawaii', 'financial', NULL, NULL, '');

-- Company: First Financial Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_first-financial-bank', 'organization', 'first-financial-bank', 'First Financial Bank', 'published', 'First Financial Bank is an American banking company headquartered in Cincinnati, Ohio.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_first-financial-bank', 'financial', NULL, NULL, '');

-- Company: WSFS Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_wsfs-bank', 'organization', 'wsfs-bank', 'WSFS Bank', 'published', 'WSFS Bank is an American banking company headquartered in Wilmington, Delaware.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_wsfs-bank', 'financial', NULL, NULL, '');

-- Company: Pinnacle Bank (source=Bank)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_pinnacle-bank', 'organization', 'pinnacle-bank', 'Pinnacle Bank', 'published', 'Pinnacle Bank is an American banking company headquartered in Omaha, Nebraska.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_pinnacle-bank', 'financial', NULL, NULL, '');

-- Company: Cognizant Technology Solutions (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cognizant-technology-solutions', 'organization', 'cognizant-technology-solutions', 'Cognizant Technology Solutions', 'published', 'Cognizant Technology Solutions is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cognizant-technology-solutions', 'corporate', NULL, NULL, 'Q1107035');

-- Company: Walgreens (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_walgreens', 'organization', 'walgreens', 'Walgreens', 'published', 'Walgreens is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_walgreens', 'corporate', NULL, NULL, 'Q1591889');

-- Company: Univisión Communications (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_univisin-communications', 'organization', 'univisin-communications', 'Univisión Communications', 'published', 'Univisión Communications is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_univisin-communications', 'corporate', NULL, NULL, 'Q5116465');

-- Company: Google (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_google', 'organization', 'google', 'Google', 'published', 'Google is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_google', 'corporate', NULL, NULL, 'Q95');

-- Company: Macy's, Inc. (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_macys', 'organization', 'macys', 'Macy''s, Inc.', 'published', 'Macy''s, Inc. is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_macys', 'corporate', NULL, NULL, 'Q5479360');

-- Company: Gap Inc. (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_gap', 'organization', 'gap', 'Gap Inc.', 'published', 'Gap Inc. is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_gap', 'corporate', NULL, NULL, 'Q420822');

-- Company: SLB (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_slb', 'organization', 'slb', 'SLB', 'published', 'SLB is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_slb', 'corporate', NULL, NULL, 'Q1425316');

-- Company: Kodak (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_kodak', 'organization', 'kodak', 'Kodak', 'published', 'Kodak is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_kodak', 'corporate', NULL, NULL, 'Q486269');

-- Company: Six Flags (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_six-flags', 'organization', 'six-flags', 'Six Flags', 'published', 'Six Flags is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_six-flags', 'corporate', NULL, NULL, 'Q127324768');

-- Company: Staples Inc. (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_staples', 'organization', 'staples', 'Staples Inc.', 'published', 'Staples Inc. is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_staples', 'corporate', NULL, NULL, 'Q785943');

-- Company: WSP Global (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_wsp-global', 'organization', 'wsp-global', 'WSP Global', 'published', 'WSP Global is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_wsp-global', 'corporate', NULL, NULL, 'Q1333162');

-- Company: Nordstrom (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_nordstrom', 'organization', 'nordstrom', 'Nordstrom', 'published', 'Nordstrom is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_nordstrom', 'corporate', NULL, NULL, 'Q174310');

-- Company: Raytheon (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_raytheon', 'organization', 'raytheon', 'Raytheon', 'published', 'Raytheon is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_raytheon', 'corporate', NULL, NULL, 'Q156644');

-- Company: Goodyear Tire and Rubber Company (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_goodyear-tire-and-rubber', 'organization', 'goodyear-tire-and-rubber', 'Goodyear Tire and Rubber Company', 'published', 'Goodyear Tire and Rubber Company is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_goodyear-tire-and-rubber', 'corporate', NULL, NULL, 'Q620875');

-- Company: Meta (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_meta', 'organization', 'meta', 'Meta', 'published', 'Meta is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_meta', 'corporate', NULL, NULL, 'Q380');

-- Company: Kabad (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_kabad', 'organization', 'kabad', 'Kabad', 'published', 'Kabad is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_kabad', 'corporate', NULL, NULL, 'Q67684488');

-- Company: Jacobs Engineering Group (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_jacobs-engineering', 'organization', 'jacobs-engineering', 'Jacobs Engineering Group', 'published', 'Jacobs Engineering Group is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_jacobs-engineering', 'corporate', NULL, NULL, 'Q3157622');

-- Company: Aetna (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_aetna', 'organization', 'aetna', 'Aetna', 'published', 'Aetna is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_aetna', 'corporate', NULL, NULL, 'Q26049');

-- Company: BorgWarner (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_borgwarner', 'organization', 'borgwarner', 'BorgWarner', 'published', 'BorgWarner is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_borgwarner', 'corporate', NULL, NULL, 'Q825943');

-- Company: UAL Corporation (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ual', 'organization', 'ual', 'UAL Corporation', 'published', 'UAL Corporation is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ual', 'corporate', NULL, NULL, 'Q7863740');

-- Company: Barnes & Noble (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_barnes-noble', 'organization', 'barnes-noble', 'Barnes & Noble', 'published', 'Barnes & Noble is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_barnes-noble', 'corporate', NULL, NULL, 'Q795454');

-- Company: Pilgrim's Corp (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_pilgrims', 'organization', 'pilgrims', 'Pilgrim''s Corp', 'published', 'Pilgrim''s Corp is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_pilgrims', 'corporate', NULL, NULL, 'Q3388421');

-- Company: Avon Products Inc. (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_avon-products', 'organization', 'avon-products', 'Avon Products Inc.', 'published', 'Avon Products Inc. is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_avon-products', 'corporate', NULL, NULL, 'Q791285');

-- Company: Sun Microsystems (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_sun-microsystems', 'organization', 'sun-microsystems', 'Sun Microsystems', 'published', 'Sun Microsystems is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_sun-microsystems', 'corporate', NULL, NULL, 'Q14647');

-- Company: AMC Theatres (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_amc-theatres', 'organization', 'amc-theatres', 'AMC Theatres', 'published', 'AMC Theatres is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_amc-theatres', 'corporate', NULL, NULL, 'Q294721');

-- Company: Kellanova (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_kellanova', 'organization', 'kellanova', 'Kellanova', 'published', 'Kellanova is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_kellanova', 'corporate', NULL, NULL, 'Q856897');

-- Company: Bed Bath & Beyond Inc. (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bed-bath-beyond', 'organization', 'bed-bath-beyond', 'Bed Bath & Beyond Inc.', 'published', 'Bed Bath & Beyond Inc. is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bed-bath-beyond', 'corporate', NULL, NULL, 'Q813782');

-- Company: Precision Castparts Corp. (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_precision-castparts', 'organization', 'precision-castparts', 'Precision Castparts Corp.', 'published', 'Precision Castparts Corp. is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_precision-castparts', 'corporate', NULL, NULL, 'Q7239519');

-- Company: Lehman Brothers (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_lehman-brothers', 'organization', 'lehman-brothers', 'Lehman Brothers', 'published', 'Lehman Brothers is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_lehman-brothers', 'corporate', NULL, NULL, 'Q212900');

-- Company: onsemi (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_onsemi', 'organization', 'onsemi', 'onsemi', 'published', 'onsemi is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_onsemi', 'corporate', NULL, NULL, 'Q1671509');

-- Company: Aéropostale (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_aropostale', 'organization', 'aropostale', 'Aéropostale', 'published', 'Aéropostale is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_aropostale', 'corporate', NULL, NULL, 'Q794565');

-- Company: United Parks & Resorts (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_united-parks-resorts', 'organization', 'united-parks-resorts', 'United Parks & Resorts', 'published', 'United Parks & Resorts is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_united-parks-resorts', 'corporate', NULL, NULL, 'Q828545');

-- Company: CBS Corporation (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cbs', 'organization', 'cbs', 'CBS Corporation', 'published', 'CBS Corporation is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cbs', 'corporate', NULL, NULL, 'Q950380');

-- Company: Monsanto (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_monsanto', 'organization', 'monsanto', 'Monsanto', 'published', 'Monsanto is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_monsanto', 'corporate', NULL, NULL, 'Q207983');

-- Company: 21st Century Fox (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_21st-century-fox', 'organization', '21st-century-fox', '21st Century Fox', 'published', '21st Century Fox is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_21st-century-fox', 'corporate', NULL, NULL, 'Q5476713');

-- Company: Bunge Limited (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bunge-limited', 'organization', 'bunge-limited', 'Bunge Limited', 'published', 'Bunge Limited is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bunge-limited', 'corporate', NULL, NULL, 'Q1009458');

-- Company: SunTrust Banks (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_suntrust-banks', 'organization', 'suntrust-banks', 'SunTrust Banks', 'published', 'SunTrust Banks is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_suntrust-banks', 'corporate', NULL, NULL, 'Q181507');

-- Company: AGCO (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_agco', 'organization', 'agco', 'AGCO', 'published', 'AGCO is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_agco', 'corporate', NULL, NULL, 'Q292292');

-- Company: NCR Corporation (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ncr', 'organization', 'ncr', 'NCR Corporation', 'published', 'NCR Corporation is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ncr', 'corporate', NULL, NULL, 'Q524989');

-- Company: Freescale Semiconductor (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_freescale-semiconductor', 'organization', 'freescale-semiconductor', 'Freescale Semiconductor', 'published', 'Freescale Semiconductor is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_freescale-semiconductor', 'corporate', NULL, NULL, 'Q863675');

-- Company: Tenneco (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_tenneco', 'organization', 'tenneco', 'Tenneco', 'published', 'Tenneco is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_tenneco', 'corporate', NULL, NULL, 'Q1509038');

-- Company: Jeld-Wen (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_jeld-wen', 'organization', 'jeld-wen', 'Jeld-Wen', 'published', 'Jeld-Wen is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_jeld-wen', 'corporate', NULL, NULL, 'Q1612593');

-- Company: Red Hat (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_red-hat', 'organization', 'red-hat', 'Red Hat', 'published', 'Red Hat is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_red-hat', 'corporate', NULL, NULL, 'Q485593');

-- Company: Airgas (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_airgas', 'organization', 'airgas', 'Airgas', 'published', 'Airgas is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_airgas', 'corporate', NULL, NULL, 'Q80635');

-- Company: Meritor (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_meritor', 'organization', 'meritor', 'Meritor', 'published', 'Meritor is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_meritor', 'corporate', NULL, NULL, 'Q322153');

-- Company: Flowserve (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_flowserve', 'organization', 'flowserve', 'Flowserve', 'published', 'Flowserve is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_flowserve', 'corporate', NULL, NULL, 'Q1430331');

-- Company: Cushman & Wakefield (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cushman-wakefield', 'organization', 'cushman-wakefield', 'Cushman & Wakefield', 'published', 'Cushman & Wakefield is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cushman-wakefield', 'corporate', NULL, NULL, 'Q1146061');

-- Company: SolarCity (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_solarcity', 'organization', 'solarcity', 'SolarCity', 'published', 'SolarCity is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_solarcity', 'corporate', NULL, NULL, 'Q7555824');

-- Company: GlobalFoundries (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_globalfoundries', 'organization', 'globalfoundries', 'GlobalFoundries', 'published', 'GlobalFoundries is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_globalfoundries', 'corporate', NULL, NULL, 'Q691592');

-- Company: Rocket Companies (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_rocket-companies', 'organization', 'rocket-companies', 'Rocket Companies', 'published', 'Rocket Companies is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_rocket-companies', 'corporate', NULL, NULL, 'Q105887484');

-- Company: Altice USA (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_altice-usa', 'organization', 'altice-usa', 'Altice USA', 'published', 'Altice USA is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_altice-usa', 'corporate', NULL, NULL, 'Q644289');

-- Company: Avaya (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_avaya', 'organization', 'avaya', 'Avaya', 'published', 'Avaya is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_avaya', 'corporate', NULL, NULL, 'Q212433');

-- Company: Bausch & Lomb (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bausch-lomb', 'organization', 'bausch-lomb', 'Bausch & Lomb', 'published', 'Bausch & Lomb is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bausch-lomb', 'corporate', NULL, NULL, 'Q811857');

-- Company: Enviri (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_enviri', 'organization', 'enviri', 'Enviri', 'published', 'Enviri is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_enviri', 'corporate', NULL, NULL, 'Q1586955');

-- Company: Fox Entertainment Group (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fox-entertainment', 'organization', 'fox-entertainment', 'Fox Entertainment Group', 'published', 'Fox Entertainment Group is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fox-entertainment', 'corporate', NULL, NULL, 'Q925249');

-- Company: Oshkosh Corporation (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_oshkosh-inc', 'organization', 'oshkosh-inc', 'Oshkosh Corporation', 'published', 'Oshkosh Corporation is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_oshkosh-inc', 'corporate', NULL, NULL, 'Q1969091');

-- Company: Bally's Corporation (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ballys', 'organization', 'ballys', 'Bally''s Corporation', 'published', 'Bally''s Corporation is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ballys', 'corporate', NULL, NULL, 'Q65062134');

-- Company: Harman International Industries (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_harman-international', 'organization', 'harman-international', 'Harman International Industries', 'published', 'Harman International Industries is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_harman-international', 'corporate', NULL, NULL, 'Q1585599');

-- Company: Viacom (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_viacom', 'organization', 'viacom', 'Viacom', 'published', 'Viacom is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_viacom', 'corporate', NULL, NULL, 'Q214346');

-- Company: Western Union (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_western-union', 'organization', 'western-union', 'Western Union', 'published', 'Western Union is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_western-union', 'corporate', NULL, NULL, 'Q861042');

-- Company: Pall Corporation (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_pall', 'organization', 'pall', 'Pall Corporation', 'published', 'Pall Corporation is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_pall', 'corporate', NULL, NULL, 'Q1532489');

-- Company: ITT Corporation (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_itt', 'organization', 'itt', 'ITT Corporation', 'published', 'ITT Corporation is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_itt', 'corporate', NULL, NULL, 'Q582418');

-- Company: Covista (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_covista', 'organization', 'covista', 'Covista', 'published', 'Covista is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_covista', 'corporate', NULL, NULL, 'Q5244154');

-- Company: Allegheny Technologies (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_allegheny', 'organization', 'allegheny', 'Allegheny Technologies', 'published', 'Allegheny Technologies is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_allegheny', 'corporate', NULL, NULL, 'Q1361648');

-- Company: Morningstar, Inc. (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_morningstar', 'organization', 'morningstar', 'Morningstar, Inc.', 'published', 'Morningstar, Inc. is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_morningstar', 'corporate', NULL, NULL, 'Q1389504');

-- Company: Maxim Integrated (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_maxim-integrated', 'organization', 'maxim-integrated', 'Maxim Integrated', 'published', 'Maxim Integrated is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_maxim-integrated', 'corporate', NULL, NULL, 'Q1784671');

-- Company: Illumina (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_illumina', 'organization', 'illumina', 'Illumina', 'published', 'Illumina is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_illumina', 'corporate', NULL, NULL, 'Q2068984');

-- Company: ASICS (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_asics', 'organization', 'asics', 'ASICS', 'published', 'ASICS is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_asics', 'corporate', NULL, NULL, 'Q327247');

-- Company: Commercial Metals Company (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_commercial-metals', 'organization', 'commercial-metals', 'Commercial Metals Company', 'published', 'Commercial Metals Company is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_commercial-metals', 'corporate', NULL, NULL, 'Q5152510');

-- Company: Citrix Systems (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_citrix-systems', 'organization', 'citrix-systems', 'Citrix Systems', 'published', 'Citrix Systems is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_citrix-systems', 'corporate', NULL, NULL, 'Q916196');

-- Company: SunPower (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_sunpower', 'organization', 'sunpower', 'SunPower', 'published', 'SunPower is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_sunpower', 'corporate', NULL, NULL, 'Q645525');

-- Company: Teradata (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_teradata', 'organization', 'teradata', 'Teradata', 'published', 'Teradata is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_teradata', 'corporate', NULL, NULL, 'Q430745');

-- Company: Tribune Media (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_tribune-media', 'organization', 'tribune-media', 'Tribune Media', 'published', 'Tribune Media is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_tribune-media', 'corporate', NULL, NULL, 'Q2140077');

-- Company: Universal Music Group (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_universal-music', 'organization', 'universal-music', 'Universal Music Group', 'published', 'Universal Music Group is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_universal-music', 'corporate', NULL, NULL, 'Q38903');

-- Company: Herbalife (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_herbalife', 'organization', 'herbalife', 'Herbalife', 'published', 'Herbalife is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_herbalife', 'corporate', NULL, NULL, 'Q572948');

-- Company: Plantronics (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_plantronics', 'organization', 'plantronics', 'Plantronics', 'published', 'Plantronics is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_plantronics', 'corporate', NULL, NULL, 'Q1531473');

-- Company: Logitech (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_logitech', 'organization', 'logitech', 'Logitech', 'published', 'Logitech is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_logitech', 'corporate', NULL, NULL, 'Q223127');

-- Company: First Republic Bank (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_first-republic-bank', 'organization', 'first-republic-bank', 'First Republic Bank', 'published', 'First Republic Bank is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_first-republic-bank', 'corporate', NULL, NULL, 'Q5453752');

-- Company: Abercrombie & Fitch (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_abercrombie-fitch', 'organization', 'abercrombie-fitch', 'Abercrombie & Fitch', 'published', 'Abercrombie & Fitch is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_abercrombie-fitch', 'corporate', NULL, NULL, 'Q319344');

-- Company: People Incorporated (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_people', 'organization', 'people', 'People Incorporated', 'published', 'People Incorporated is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_people', 'corporate', NULL, NULL, 'Q974846');

-- Company: U.S. Cellular (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_us-cellular', 'organization', 'us-cellular', 'U.S. Cellular', 'published', 'U.S. Cellular is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_us-cellular', 'corporate', NULL, NULL, 'Q2466256');

-- Company: Kansas City Southern (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_kansas-city-southern', 'organization', 'kansas-city-southern', 'Kansas City Southern', 'published', 'Kansas City Southern is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_kansas-city-southern', 'corporate', NULL, NULL, 'Q16980898');

-- Company: Federal Deposit Insurance Corporation (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_federal-deposit-insurance', 'organization', 'federal-deposit-insurance', 'Federal Deposit Insurance Corporation', 'published', 'Federal Deposit Insurance Corporation is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_federal-deposit-insurance', 'corporate', NULL, NULL, 'Q1345065');

-- Company: National Instruments (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_national-instruments', 'organization', 'national-instruments', 'National Instruments', 'published', 'National Instruments is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_national-instruments', 'corporate', NULL, NULL, 'Q1544413');

-- Company: Anadarko Petroleum (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_anadarko-petroleum', 'organization', 'anadarko-petroleum', 'Anadarko Petroleum', 'published', 'Anadarko Petroleum is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_anadarko-petroleum', 'corporate', NULL, NULL, 'Q483637');

-- Company: ReachLocal (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_reachlocal', 'organization', 'reachlocal', 'ReachLocal', 'published', 'ReachLocal is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_reachlocal', 'corporate', NULL, NULL, 'Q16766290');

-- Company: Wix.com (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_wixcom', 'organization', 'wixcom', 'Wix.com', 'published', 'Wix.com is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_wixcom', 'corporate', NULL, NULL, 'Q420506');

-- Company: MongoDB Inc. (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mongodb', 'organization', 'mongodb', 'MongoDB Inc.', 'published', 'MongoDB Inc. is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mongodb', 'corporate', NULL, NULL, 'Q4546965');

-- Company: Media General (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_media-general', 'organization', 'media-general', 'Media General', 'published', 'Media General is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_media-general', 'corporate', NULL, NULL, 'Q6805492');

-- Company: Molson Coors Brewing Company (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_molson-coors-brewing', 'organization', 'molson-coors-brewing', 'Molson Coors Brewing Company', 'published', 'Molson Coors Brewing Company is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_molson-coors-brewing', 'corporate', NULL, NULL, 'Q3319685');

-- Company: Plains All American Pipeline (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_plains-all-american-pipeline', 'organization', 'plains-all-american-pipeline', 'Plains All American Pipeline', 'published', 'Plains All American Pipeline is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_plains-all-american-pipeline', 'corporate', NULL, NULL, 'Q7200719');

-- Company: Atmel (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_atmel', 'organization', 'atmel', 'Atmel', 'published', 'Atmel is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_atmel', 'corporate', NULL, NULL, 'Q757489');

-- Company: Freddie Mac (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_freddie-mac', 'organization', 'freddie-mac', 'Freddie Mac', 'published', 'Freddie Mac is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_freddie-mac', 'corporate', NULL, NULL, 'Q935969');

-- Company: Ultimate Software (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ultimate-software', 'organization', 'ultimate-software', 'Ultimate Software', 'published', 'Ultimate Software is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ultimate-software', 'corporate', NULL, NULL, 'Q7880250');

-- Company: Rackspace Technology (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_rackspace', 'organization', 'rackspace', 'Rackspace Technology', 'published', 'Rackspace Technology is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_rackspace', 'corporate', NULL, NULL, 'Q2990586');

-- Company: Grid Dynamics Holdings (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_grid-dynamics', 'organization', 'grid-dynamics', 'Grid Dynamics Holdings', 'published', 'Grid Dynamics Holdings is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_grid-dynamics', 'corporate', NULL, NULL, 'Q140772884');

-- Company: Kaman Corporation (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_kaman', 'organization', 'kaman', 'Kaman Corporation', 'published', 'Kaman Corporation is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_kaman', 'corporate', NULL, NULL, 'Q1722848');

-- Company: NetSuite (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_netsuite', 'organization', 'netsuite', 'NetSuite', 'published', 'NetSuite is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_netsuite', 'corporate', NULL, NULL, 'Q4045248');

-- Company: Tidewater (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_tidewater', 'organization', 'tidewater', 'Tidewater', 'published', 'Tidewater is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_tidewater', 'corporate', NULL, NULL, 'Q7800873');

-- Company: Fox Factory (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fox-factory', 'organization', 'fox-factory', 'Fox Factory', 'published', 'Fox Factory is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fox-factory', 'corporate', NULL, NULL, 'Q282997');

-- Company: FTI Consulting (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fti-consulting', 'organization', 'fti-consulting', 'FTI Consulting', 'published', 'FTI Consulting is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fti-consulting', 'corporate', NULL, NULL, 'Q5427196');

-- Company: Altafiber (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_altafiber', 'organization', 'altafiber', 'Altafiber', 'published', 'Altafiber is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_altafiber', 'corporate', NULL, NULL, 'Q5120216');

-- Company: Tibco Software (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_tibco-software', 'organization', 'tibco-software', 'Tibco Software', 'published', 'Tibco Software is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_tibco-software', 'corporate', NULL, NULL, 'Q513861');

-- Company: Mueller Water Products (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_mueller-water-products', 'organization', 'mueller-water-products', 'Mueller Water Products', 'published', 'Mueller Water Products is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_mueller-water-products', 'corporate', NULL, NULL, 'Q16982326');

-- Company: Krispy Kreme (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_krispy-kreme', 'organization', 'krispy-kreme', 'Krispy Kreme', 'published', 'Krispy Kreme is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_krispy-kreme', 'corporate', NULL, NULL, 'Q1192805');

-- Company: Alexion Pharmaceuticals (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_alexion-pharmaceuticals', 'organization', 'alexion-pharmaceuticals', 'Alexion Pharmaceuticals', 'published', 'Alexion Pharmaceuticals is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_alexion-pharmaceuticals', 'corporate', NULL, NULL, 'Q204727');

-- Company: Zendesk (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_zendesk', 'organization', 'zendesk', 'Zendesk', 'published', 'Zendesk is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_zendesk', 'corporate', NULL, NULL, 'Q15401349');

-- Company: Groupon (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_groupon', 'organization', 'groupon', 'Groupon', 'published', 'Groupon is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_groupon', 'corporate', NULL, NULL, 'Q852787');

-- Company: CIT Group (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cit', 'organization', 'cit', 'CIT Group', 'published', 'CIT Group is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cit', 'corporate', NULL, NULL, 'Q1023765');

-- Company: Haemonetics (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_haemonetics', 'organization', 'haemonetics', 'Haemonetics', 'published', 'Haemonetics is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_haemonetics', 'corporate', NULL, NULL, 'Q16980281');

-- Company: Lazard (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_lazard', 'organization', 'lazard', 'Lazard', 'published', 'Lazard is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_lazard', 'corporate', NULL, NULL, 'Q637440');

-- Company: Polycom (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_polycom', 'organization', 'polycom', 'Polycom', 'published', 'Polycom is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_polycom', 'corporate', NULL, NULL, 'Q963809');

-- Company: Wolfspeed (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_wolfspeed', 'organization', 'wolfspeed', 'Wolfspeed', 'published', 'Wolfspeed is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_wolfspeed', 'corporate', NULL, NULL, 'Q5183828');

-- Company: Alamo Group (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_alamo-inc', 'organization', 'alamo-inc', 'Alamo Group', 'published', 'Alamo Group is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_alamo-inc', 'corporate', NULL, NULL, 'Q21198484');

-- Company: Legg Mason (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_legg-mason', 'organization', 'legg-mason', 'Legg Mason', 'published', 'Legg Mason is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_legg-mason', 'corporate', NULL, NULL, 'Q1134746');

-- Company: Tennant Company (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_tennant', 'organization', 'tennant', 'Tennant Company', 'published', 'Tennant Company is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_tennant', 'corporate', NULL, NULL, 'Q19884156');

-- Company: NextGen Healthcare Information Systems (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_nextgen-healthcare-information-systems', 'organization', 'nextgen-healthcare-information-systems', 'NextGen Healthcare Information Systems', 'published', 'NextGen Healthcare Information Systems is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_nextgen-healthcare-information-systems', 'corporate', NULL, NULL, 'Q17109731');

-- Company: Extreme Networks (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_extreme-networks', 'organization', 'extreme-networks', 'Extreme Networks', 'published', 'Extreme Networks is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_extreme-networks', 'corporate', NULL, NULL, 'Q2034659');

-- Company: FEI Company (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fei', 'organization', 'fei', 'FEI Company', 'published', 'FEI Company is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fei', 'corporate', NULL, NULL, 'Q2004423');

-- Company: Simpson Manufacturing Company (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_simpson-manufacturing', 'organization', 'simpson-manufacturing', 'Simpson Manufacturing Company', 'published', 'Simpson Manufacturing Company is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_simpson-manufacturing', 'corporate', NULL, NULL, 'Q29469208');

-- Company: Rubrik (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_rubrik', 'organization', 'rubrik', 'Rubrik', 'published', 'Rubrik is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_rubrik', 'corporate', NULL, NULL, 'Q55632076');

-- Company: Carlyle Group (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_carlyle', 'organization', 'carlyle', 'Carlyle Group', 'published', 'Carlyle Group is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_carlyle', 'corporate', NULL, NULL, 'Q926806');

-- Company: Pandora (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_pandora', 'organization', 'pandora', 'Pandora', 'published', 'Pandora is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_pandora', 'corporate', NULL, NULL, 'Q1196431');

-- Company: Westlake Corporation (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_westlake', 'organization', 'westlake', 'Westlake Corporation', 'published', 'Westlake Corporation is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_westlake', 'corporate', NULL, NULL, 'Q17326957');

-- Company: AMC Global Media (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_amc-global-media', 'organization', 'amc-global-media', 'AMC Global Media', 'published', 'AMC Global Media is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_amc-global-media', 'corporate', NULL, NULL, 'Q4652575');

-- Company: Hess Corporation (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_hess', 'organization', 'hess', 'Hess Corporation', 'published', 'Hess Corporation is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_hess', 'corporate', NULL, NULL, 'Q1615684');

-- Company: Scripps Networks Interactive (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_scripps-networks-interactive', 'organization', 'scripps-networks-interactive', 'Scripps Networks Interactive', 'published', 'Scripps Networks Interactive is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_scripps-networks-interactive', 'corporate', NULL, NULL, 'Q2144525');

-- Company: Unity Technologies (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_unity', 'organization', 'unity', 'Unity Technologies', 'published', 'Unity Technologies is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_unity', 'corporate', NULL, NULL, 'Q7893816');

-- Company: Element Solutions (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_element-solutions', 'organization', 'element-solutions', 'Element Solutions', 'published', 'Element Solutions is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_element-solutions', 'corporate', NULL, NULL, 'Q18228597');

-- Company: Coeur Mining (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_coeur-mining', 'organization', 'coeur-mining', 'Coeur Mining', 'published', 'Coeur Mining is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_coeur-mining', 'corporate', NULL, NULL, 'Q386193');

-- Company: Amylin Pharmaceuticals (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_amylin-pharmaceuticals', 'organization', 'amylin-pharmaceuticals', 'Amylin Pharmaceuticals', 'published', 'Amylin Pharmaceuticals is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_amylin-pharmaceuticals', 'corporate', NULL, NULL, 'Q482044');

-- Company: Choice Hotels (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_choice-hotels', 'organization', 'choice-hotels', 'Choice Hotels', 'published', 'Choice Hotels is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_choice-hotels', 'corporate', NULL, NULL, 'Q1075788');

-- Company: Getty Images (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_getty-images', 'organization', 'getty-images', 'Getty Images', 'published', 'Getty Images is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_getty-images', 'corporate', NULL, NULL, 'Q1520122');

-- Company: Dolby (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_dolby', 'organization', 'dolby', 'Dolby', 'published', 'Dolby is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_dolby', 'corporate', NULL, NULL, 'Q261288');

-- Company: Ubiquiti (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ubiquiti', 'organization', 'ubiquiti', 'Ubiquiti', 'published', 'Ubiquiti is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ubiquiti', 'corporate', NULL, NULL, 'Q7876533');

-- Company: Cymer, Inc. (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cymer', 'organization', 'cymer', 'Cymer, Inc.', 'published', 'Cymer, Inc. is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cymer', 'corporate', NULL, NULL, 'Q674796');

-- Company: THQ (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_thq', 'organization', 'thq', 'THQ', 'published', 'THQ is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_thq', 'corporate', NULL, NULL, 'Q580866');

-- Company: Century Aluminum (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_century-aluminum', 'organization', 'century-aluminum', 'Century Aluminum', 'published', 'Century Aluminum is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_century-aluminum', 'corporate', NULL, NULL, 'Q18619982');

-- Company: Liveperson Inc. (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_liveperson', 'organization', 'liveperson', 'Liveperson Inc.', 'published', 'Liveperson Inc. is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_liveperson', 'corporate', NULL, NULL, 'Q6654568');

-- Company: Janus Capital Group (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_janus-capital', 'organization', 'janus-capital', 'Janus Capital Group', 'published', 'Janus Capital Group is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_janus-capital', 'corporate', NULL, NULL, 'Q1683034');

-- Company: Zynga (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_zynga', 'organization', 'zynga', 'Zynga', 'published', 'Zynga is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_zynga', 'corporate', NULL, NULL, 'Q245772');

-- Company: Dropbox Inc. (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_dropbox', 'organization', 'dropbox', 'Dropbox Inc.', 'published', 'Dropbox Inc. is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_dropbox', 'corporate', NULL, NULL, 'Q15589464');

-- Company: TRI Pointe Group (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_tri-pointe', 'organization', 'tri-pointe', 'TRI Pointe Group', 'published', 'TRI Pointe Group is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_tri-pointe', 'corporate', NULL, NULL, 'Q58041994');

-- Company: Cirrus Logic (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cirrus-logic', 'organization', 'cirrus-logic', 'Cirrus Logic', 'published', 'Cirrus Logic is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cirrus-logic', 'corporate', NULL, NULL, 'Q1067998');

-- Company: Vimeo (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_vimeo', 'organization', 'vimeo', 'Vimeo', 'published', 'Vimeo is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_vimeo', 'corporate', NULL, NULL, 'Q156376');

-- Company: Sturm, Ruger & Co. (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_sturm-ruger', 'organization', 'sturm-ruger', 'Sturm, Ruger & Co.', 'published', 'Sturm, Ruger & Co. is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_sturm-ruger', 'corporate', NULL, NULL, 'Q1508526');

-- Company: Luminex (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_luminex', 'organization', 'luminex', 'Luminex', 'published', 'Luminex is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_luminex', 'corporate', NULL, NULL, 'Q6703279');

-- Company: Cray (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cray', 'organization', 'cray', 'Cray', 'published', 'Cray is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cray', 'corporate', NULL, NULL, 'Q144060');

-- Company: Similarweb (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_similarweb', 'organization', 'similarweb', 'Similarweb', 'published', 'Similarweb is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_similarweb', 'corporate', NULL, NULL, 'Q17538813');

-- Company: Urban One (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_urban-one', 'organization', 'urban-one', 'Urban One', 'published', 'Urban One is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_urban-one', 'corporate', NULL, NULL, 'Q7280957');

-- Company: Nature's Sunshine Products (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_natures-sunshine-products', 'organization', 'natures-sunshine-products', 'Nature''s Sunshine Products', 'published', 'Nature''s Sunshine Products is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_natures-sunshine-products', 'corporate', NULL, NULL, 'Q4045079');

-- Company: U.S. Auto Parts (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_us-auto-parts', 'organization', 'us-auto-parts', 'U.S. Auto Parts', 'published', 'U.S. Auto Parts is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_us-auto-parts', 'corporate', NULL, NULL, 'Q91498427');

-- Company: Netgear (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_netgear', 'organization', 'netgear', 'Netgear', 'published', 'Netgear is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_netgear', 'corporate', NULL, NULL, 'Q979690');

-- Company: Valero Port Arthur (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_valero-port-arthur', 'organization', 'valero-port-arthur', 'Valero Port Arthur', 'published', 'Valero Port Arthur is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_valero-port-arthur', 'corporate', NULL, NULL, 'Q140379867');

-- Company: ChannelAdvisor (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_channeladvisor', 'organization', 'channeladvisor', 'ChannelAdvisor', 'published', 'ChannelAdvisor is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_channeladvisor', 'corporate', NULL, NULL, 'Q18205935');

-- Company: United Financial Bancorp (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_united-financial', 'organization', 'united-financial', 'United Financial Bancorp', 'published', 'United Financial Bancorp is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_united-financial', 'corporate', NULL, NULL, 'Q16959074');

-- Company: Upwork (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_upwork', 'organization', 'upwork', 'Upwork', 'published', 'Upwork is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_upwork', 'corporate', NULL, NULL, 'Q3344170');

-- Company: Odyssey Re (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_odyssey-re', 'organization', 'odyssey-re', 'Odyssey Re', 'published', 'Odyssey Re is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_odyssey-re', 'corporate', NULL, NULL, 'Q7078431');

-- Company: The RMR Group (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_the-rmr', 'organization', 'the-rmr', 'The RMR Group', 'published', 'The RMR Group is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_the-rmr', 'corporate', NULL, NULL, 'Q84698811');

-- Company: Telenav (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_telenav', 'organization', 'telenav', 'Telenav', 'published', 'Telenav is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_telenav', 'corporate', NULL, NULL, 'Q7695732');

-- Company: Ultralife Corporation (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_ultralife', 'organization', 'ultralife', 'Ultralife Corporation', 'published', 'Ultralife Corporation is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_ultralife', 'corporate', NULL, NULL, 'Q17086475');

-- Company: Art Technology Group (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_art-technology', 'organization', 'art-technology', 'Art Technology Group', 'published', 'Art Technology Group is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_art-technology', 'corporate', NULL, NULL, 'Q705757');

-- Company: Velodyne Lidar (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_velodyne-lidar', 'organization', 'velodyne-lidar', 'Velodyne Lidar', 'published', 'Velodyne Lidar is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_velodyne-lidar', 'corporate', NULL, NULL, 'Q7919303');

-- Company: Zipcar (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_zipcar', 'organization', 'zipcar', 'Zipcar', 'published', 'Zipcar is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_zipcar', 'corporate', NULL, NULL, 'Q1069924');

-- Company: Cardlytics (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_cardlytics', 'organization', 'cardlytics', 'Cardlytics', 'published', 'Cardlytics is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_cardlytics', 'corporate', NULL, NULL, 'Q103793759');

-- Company: Emmis Communications (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_emmis-communications', 'organization', 'emmis-communications', 'Emmis Communications', 'published', 'Emmis Communications is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_emmis-communications', 'corporate', NULL, NULL, 'Q5373589');

-- Company: Accelerate Diagnostics (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_accelerate-diagnostics', 'organization', 'accelerate-diagnostics', 'Accelerate Diagnostics', 'published', 'Accelerate Diagnostics is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_accelerate-diagnostics', 'corporate', NULL, NULL, 'Q91490380');

-- Company: Exar Corporation (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_exar', 'organization', 'exar', 'Exar Corporation', 'published', 'Exar Corporation is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_exar', 'corporate', NULL, NULL, 'Q30632958');

-- Company: Rocky Mountain Chocolate (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_rocky-mountain-chocolate', 'organization', 'rocky-mountain-chocolate', 'Rocky Mountain Chocolate', 'published', 'Rocky Mountain Chocolate is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_rocky-mountain-chocolate', 'corporate', NULL, NULL, 'Q7355878');

-- Company: Digimarc (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_digimarc', 'organization', 'digimarc', 'Digimarc', 'published', 'Digimarc is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_digimarc', 'corporate', NULL, NULL, 'Q5275736');

-- Company: Adamis Pharmaceuticals Corporation (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_adamis-pharmaceuticals', 'organization', 'adamis-pharmaceuticals', 'Adamis Pharmaceuticals Corporation', 'published', 'Adamis Pharmaceuticals Corporation is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_adamis-pharmaceuticals', 'corporate', NULL, NULL, 'Q30284075');

-- Company: Athersys (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_athersys', 'organization', 'athersys', 'Athersys', 'published', 'Athersys is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_athersys', 'corporate', NULL, NULL, 'Q30284052');

-- Company: Fortress Biotech (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_fortress-biotech', 'organization', 'fortress-biotech', 'Fortress Biotech', 'published', 'Fortress Biotech is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_fortress-biotech', 'corporate', NULL, NULL, 'Q27346316');

-- Company: BNB Plus Corp (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_bnb-plus', 'organization', 'bnb-plus', 'BNB Plus Corp', 'published', 'BNB Plus Corp is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_bnb-plus', 'corporate', NULL, NULL, 'Q138932758');

-- Company: Tripadvisor (source=Wikidata)
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('org_tripadvisor', 'organization', 'tripadvisor', 'Tripadvisor', 'published', 'Tripadvisor is an American diversified company.', '["src_en_wikipedia"]', unixepoch(), 25, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('org_tripadvisor', 'corporate', NULL, NULL, 'Q1770710');

