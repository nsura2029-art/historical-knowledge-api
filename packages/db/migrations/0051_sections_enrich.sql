-- ========================================
-- Migration 0025: Top-400-famous-Americans bulk ingest
-- Generated: 2026-08-09 12:28:44 UTC
-- Source: Wikipedia REST API (en.wikipedia.org)
-- License: Wikipedia content is CC-BY-SA 4.0 (attribution preserved in source_ids)
-- ========================================

-- 3. Mohammed bin Rashid Al Maktoum
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_sheikh-mohammed-bin-rashid-al-maktoum', 'person', 'sheikh-mohammed-bin-rashid-al-maktoum', 'Mohammed bin Rashid Al Maktoum', 'published', 'Sheikh Mohammed bin Rashid Al Maktoum (Arabic: محمد بن راشد آل مكتوم, romanized: Muḥammad bin Rāšid Āl Maktūm; born 15 July 1949) is an Emirati politician and royal. He is the current ruler of Dubai and serves as the vice president and prime minister of the UAE. Mohammed succeeded his brother Maktoum bin Rashid Al Maktoum as UAE vice president, UAE prime minister and ruler of Dubai following the l', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_sheikh-mohammed-bin-rashid-al-maktoum', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_sheikh-mohammed-bin-rashid-al-maktoum_us', 'ent_sheikh-mohammed-bin-rashid-al-maktoum', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_sheikh-mohammed-bin-rashid-al-maktoum_intro', 'ent_sheikh-mohammed-bin-rashid-al-maktoum', 'biography_intro', 'Introduction', 'Sheikh Mohammed bin Rashid Al Maktoum (Arabic: محمد بن راشد آل مكتوم, romanized: Muḥammad bin Rāšid Āl Maktūm; born 15 July 1949) is an Emirati politician and royal. He is the current ruler of Dubai and serves as the vice president and prime minister of the UAE. Mohammed succeeded his brother Maktoum bin Rashid Al Maktoum as UAE vice president, UAE prime minister and ruler of Dubai following the latter''s death in 2006.
Under his leadership, Dubai became a global city. A number of government-owned enterprises have been launched, including the Emirates airline, DP World and the Jumeirah Group. 
Mohammed oversaw the development of Palm Islands, the establishment of Burj Al Arab hotel and Burj Khalifa, the tallest building in the world since 2010. 
Mohammed is the absolute ruler of Dubai and the prime minister of the UAE, a position appointed by the president. 
Mohammed is an equestrian and is the founder of the Maktoum family-owned Godolphin stable and the owner of Darley, a thoroughbred breeding operation in six countries. In 2012, he rode the horse Madji Du Pont 160 km to take the FEI World Endurance Championship. He has been found guilty of coercive and abusive behaviour towards his wife and children and was subject to controversy for the claimed kidnapping and imprisonment of one of his daughters.

',
   '["clm_wiki_sheikh-mohammed-bin-rashid-al-maktoum_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 219);

-- 4. Recep Tayyip Erdoğan
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_recep-tayyip-erdoan', 'person', 'recep-tayyip-erdoan', 'Recep Tayyip Erdoğan', 'published', 'Recep Tayyip Erdoğan (born 26 February 1954) is a Turkish politician and statesman who has been the president of Turkey since 2014. He previously served as the 25th prime minister from 2003 to 2014 as part of the Justice and Development Party (AKP), which he co-founded in 2001. He also served as mayor of Istanbul from 1994 to 1998. Coming from an Islamist background and promoting socially conserva', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_recep-tayyip-erdoan', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_recep-tayyip-erdoan_us', 'ent_recep-tayyip-erdoan', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_recep-tayyip-erdoan_intro', 'ent_recep-tayyip-erdoan', 'biography_intro', 'Introduction', 'Recep Tayyip Erdoğan (born 26 February 1954) is a Turkish politician and statesman who has been the president of Turkey since 2014. He previously served as the 25th prime minister from 2003 to 2014 as part of the Justice and Development Party (AKP), which he co-founded in 2001. He also served as mayor of Istanbul from 1994 to 1998. Coming from an Islamist background and promoting socially conservative policies, Erdoğan has been Turkey''s de facto leader since 2002. Turkey has experienced democratic backsliding and suppression of dissent under Erdoğan.
Erdoğan was born in Beyoğlu, Istanbul, and studied at the Aksaray Academy of Economic and Commercial Sciences, before working as a consultant and senior manager in the private sector. Becoming active in local politics, he was elected Welfare Party''s Beyoğlu district chair in 1984 and Istanbul chair in 1985. Following the 1994 local elections, Erdoğan was elected mayor of Istanbul. In 1998 he was convicted for inciting religious hatred and banned from politics after reciting a poem by Ziya Gökalp that compared mosques to barracks and the faithful to an army. Erdoğan was released from prison in 1999 and formed the AKP, abandoning openly Islamist policies.
Erdoğan led the AKP to a landslide victory in the election for the Grand National Assembly in 2002, and became prime minister after winning a by-election in Siirt in 2003. Erdoğan led the AKP to two more election victories in 2007 and 2011. His tenure consisted of economic recovery from the economic crisis of 2001, the start of EU membership negotiations, and the reduction of military influence on politics. In late 2012, his government began peace negotiations with the Kurdistan Workers Party (PKK) to end the Kurdish–Turkish conflict, negotiations which ended three years later.
In 2014, Erdoğan became the country''s first directly elected president. Erdoğan''s presidency has been marked by democratic backsliding and a shift towards authoritarianism. His economic policies h',
   '["clm_wiki_recep-tayyip-erdoan_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 316);

-- 9. André Breton
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_andr-breton', 'person', 'andr-breton', 'André Breton', 'published', 'André Robert Breton (; French: [ɑ̃dʁe ʁɔbɛʁ bʁətɔ̃]; 19 February 1896 – 28 September 1966) was a French writer and poet, known as a principal theorist and co-founder of surrealism. His writings include the first Surrealist Manifesto (Manifeste du surréalisme) of 1924, in which he defined surrealism as "pure psychic automatism".', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_andr-breton', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_andr-breton_us', 'ent_andr-breton', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_andr-breton_intro', 'ent_andr-breton', 'biography_intro', 'Introduction', 'André Robert Breton (; French: [ɑ̃dʁe ʁɔbɛʁ bʁətɔ̃]; 19 February 1896 – 28 September 1966) was a French writer and poet, known as a principal theorist and co-founder of surrealism. His writings include the first Surrealist Manifesto (Manifeste du surréalisme) of 1924, in which he defined surrealism as "pure psychic automatism".
Along with his role as leader of the surrealist movement he is the author of celebrated books such as Nadja and L''Amour fou (Mad Love). Those activities, combined with his critical and theoretical work on writing and the visual arts, made André Breton a major figure in 20th-century French art and literature.',
   '["clm_wiki_andr-breton_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 103);

-- 22. Anna J. Cooper
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_anna-j-cooper', 'person', 'anna-j-cooper', 'Anna J. Cooper', 'published', 'Anna Julia Cooper (née Haywood; August 10, 1858 – February 27, 1964) was an African American author, educator, and activist. Although born enslaved, Cooper pursued higher education at Oberlin College in Ohio, where she earned a Bachelor of Arts in 1884 and a master''s degree in mathematics in 1887. At the age of sixty-six, she completed her doctoral studies at the University of Paris, making her th', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_anna-j-cooper', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_anna-j-cooper_us', 'ent_anna-j-cooper', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_anna-j-cooper_intro', 'ent_anna-j-cooper', 'biography_intro', 'Introduction', 'Anna Julia Cooper (née Haywood; August 10, 1858 – February 27, 1964) was an African American author, educator, and activist. Although born enslaved, Cooper pursued higher education at Oberlin College in Ohio, where she earned a Bachelor of Arts in 1884 and a master''s degree in mathematics in 1887. At the age of sixty-six, she completed her doctoral studies at the University of Paris, making her the fourth African American woman to earn a PhD. She was a well-known member of Washington, D.C.''s African-American community, and a member of Alpha Kappa Alpha sorority.
Cooper''s scholarly contributions to sociology started with her first book, A Voice from the South: By a Black Woman of the South, which is widely acknowledged as one of the first articulations of Black feminism and gave her the often-used title of "the Mother of Black Feminism".',
   '["clm_wiki_anna-j-cooper_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 140);

-- 32. Babe Didrikson Zaharias
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_babe-didrikson-zaharias', 'person', 'babe-didrikson-zaharias', 'Babe Didrikson Zaharias', 'published', 'Mildred Ella "Babe" Didrikson Zaharias (; née Didrikson; June 26, 1911 – September 27, 1956) was an American athlete who excelled in golf, basketball, baseball, and track and field. She won two gold medals and a silver in track and field at the 1932 Summer Olympics before turning to professional golf and winning 10 LPGA major championships.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_babe-didrikson-zaharias', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_babe-didrikson-zaharias_us', 'ent_babe-didrikson-zaharias', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_babe-didrikson-zaharias_intro', 'ent_babe-didrikson-zaharias', 'biography_intro', 'Introduction', 'Mildred Ella "Babe" Didrikson Zaharias (; née Didrikson; June 26, 1911 – September 27, 1956) was an American athlete who excelled in golf, basketball, baseball, and track and field. She won two gold medals and a silver in track and field at the 1932 Summer Olympics before turning to professional golf and winning 10 LPGA major championships.',
   '["clm_wiki_babe-didrikson-zaharias_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 57);

-- 35. Benjamin Smith
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_benjamin-smith', 'person', 'benjamin-smith', 'Benjamin Smith', 'published', 'Ben or Benjamin Smith may refer to:', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_benjamin-smith', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_benjamin-smith_us', 'ent_benjamin-smith', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_benjamin-smith_intro', 'ent_benjamin-smith', 'biography_intro', 'Introduction', 'Ben or Benjamin Smith may refer to:',
   '["clm_wiki_benjamin-smith_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 7);

-- 53. T. D. Jakes
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_t-d-jakes', 'person', 't-d-jakes', 'T. D. Jakes', 'published', 'Thomas Dexter Jakes Sr. (born June 9, 1957) is an American non-denominational Christian evangelical pastor and motivational speaker. He was the senior pastor of The Potter''s House, a non-denominational American megachurch in Dallas, Texas, from 1996 to 2025. Jakes'' church services and evangelistic sermons are broadcast on The Potter''s Touch. He is the author of many books and also produces films.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_t-d-jakes', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_t-d-jakes_us', 'ent_t-d-jakes', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_t-d-jakes_intro', 'ent_t-d-jakes', 'biography_intro', 'Introduction', 'Thomas Dexter Jakes Sr. (born June 9, 1957) is an American non-denominational Christian evangelical pastor and motivational speaker. He was the senior pastor of The Potter''s House, a non-denominational American megachurch in Dallas, Texas, from 1996 to 2025. Jakes'' church services and evangelistic sermons are broadcast on The Potter''s Touch. He is the author of many books and also produces films.',
   '["clm_wiki_t-d-jakes_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 61);

-- 60. Robert Kahn (computer scientist)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_robert-kahn-computer-scientist', 'person', 'robert-kahn-computer-scientist', 'Robert Kahn (computer scientist)', 'published', 'Robert Elliot Kahn (born December 23, 1938) is an American electrical engineer who, along with Vint Cerf, first proposed the Transmission Control Protocol (TCP) and the Internet Protocol (IP), the fundamental communication protocols at the heart of the Internet.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_robert-kahn-computer-scientist', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_robert-kahn-computer-scientist_us', 'ent_robert-kahn-computer-scientist', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_robert-kahn-computer-scientist_intro', 'ent_robert-kahn-computer-scientist', 'biography_intro', 'Introduction', 'Robert Elliot Kahn (born December 23, 1938) is an American electrical engineer who, along with Vint Cerf, first proposed the Transmission Control Protocol (TCP) and the Internet Protocol (IP), the fundamental communication protocols at the heart of the Internet.
In 2004, Kahn won the Turing Award with Vint Cerf for their work on TCP/IP.',
   '["clm_wiki_robert-kahn-computer-scientist_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 54);

-- 61. Robert Jones
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_robert-jones', 'person', 'robert-jones', 'Robert Jones', 'published', 'Rob(ert), Bob, or Bobby Jones may refer to:', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_robert-jones', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_robert-jones_us', 'ent_robert-jones', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_robert-jones_intro', 'ent_robert-jones', 'biography_intro', 'Introduction', 'Rob(ert), Bob, or Bobby Jones may refer to:',
   '["clm_wiki_robert-jones_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 8);

-- 72. C. T. Vivian
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_c-t-vivian', 'person', 'c-t-vivian', 'C. T. Vivian', 'published', 'Cordy Tindell Vivian (July 30, 1924 – July 17, 2020) was an American minister, author, and close friend and lieutenant of Martin Luther King Jr. during the civil rights movement. He resided in Atlanta, Georgia, and founded the C. T. Vivian Leadership Institute, Inc. He was a member of the Alpha Phi Alpha fraternity.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_c-t-vivian', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_c-t-vivian_us', 'ent_c-t-vivian', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_c-t-vivian_intro', 'ent_c-t-vivian', 'biography_intro', 'Introduction', 'Cordy Tindell Vivian (July 30, 1924 – July 17, 2020) was an American minister, author, and close friend and lieutenant of Martin Luther King Jr. during the civil rights movement. He resided in Atlanta, Georgia, and founded the C. T. Vivian Leadership Institute, Inc. He was a member of the Alpha Phi Alpha fraternity.
Senator Barack Obama, speaking at Selma''s Brown Chapel on the March 2007, anniversary of the 1965 Selma to Montgomery marches, referred to Vivian in his opening remarks in the words of Martin L. King Jr. as "the greatest preacher to ever live."',
   '["clm_wiki_c-t-vivian_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 96);

-- 149. Eliza McCardle Johnson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_eliza-mccardle-johnson', 'person', 'eliza-mccardle-johnson', 'Eliza McCardle Johnson', 'published', 'Eliza McCardle Johnson (October 4, 1810 – January 15, 1876) was the first lady of the United States from 1865 to 1869 as the wife of President Andrew Johnson. She also served as the second lady of the United States from March until April 1865 when her husband was vice president. Johnson was relatively inactive as first lady, and she stayed out of public attention for the duration of her husband''s ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_eliza-mccardle-johnson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_eliza-mccardle-johnson_us', 'ent_eliza-mccardle-johnson', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_eliza-mccardle-johnson_intro', 'ent_eliza-mccardle-johnson', 'biography_intro', 'Introduction', 'Eliza McCardle Johnson (October 4, 1810 – January 15, 1876) was the first lady of the United States from 1865 to 1869 as the wife of President Andrew Johnson. She also served as the second lady of the United States from March until April 1865 when her husband was vice president. Johnson was relatively inactive as first lady, and she stayed out of public attention for the duration of her husband''s presidency. She was the youngest first lady to wed, doing so at the age of 16.
Johnson significantly contributed to her husband''s early career, providing him with an education and encouraging him to strengthen his oratory skills and seek office. Johnson did not participate in the social aspects of politics, however, remaining at home while her husband took office. During the American Civil War, she was forced from her home for her family''s Unionist loyalties. She was affected by tuberculosis throughout much of her life, and what activity she did choose to undertake was limited due to her health.
Johnson was briefly the second lady of the United States before becoming the first lady, as her husband was vice president until the assassination of Abraham Lincoln. After becoming the first lady, Johnson delegated the role''s social duties to her daughter Martha Johnson Patterson. Though she only made two public appearances during her tenure as first lady, Johnson was a strong influence on her husband, and he would consult her regularly for advice. Johnson returned to her home of Greeneville, Tennessee with her family after leaving the White House, living a quiet retirement. She died six months after her husband and was buried beside him.',
   '["clm_wiki_eliza-mccardle-johnson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 275);

-- 162. Gene Cernan
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_gene-cernan', 'person', 'gene-cernan', 'Gene Cernan', 'published', 'Eugene Andrew Cernan (; March 14, 1934 – January 16, 2017) was an American astronaut, naval aviator, electrical engineer, aeronautical engineer, and fighter pilot.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_gene-cernan', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_gene-cernan_us', 'ent_gene-cernan', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_gene-cernan_intro', 'ent_gene-cernan', 'biography_intro', 'Introduction', 'Eugene Andrew Cernan (; March 14, 1934 – January 16, 2017) was an American astronaut, naval aviator, electrical engineer, aeronautical engineer, and fighter pilot.
Cernan traveled into space three times and to the Moon twice: as pilot of Gemini 9A in June 1966, as Lunar Module pilot of Apollo 10 in May 1969, and as commander of Apollo 17 in December 1972, the final Apollo lunar landing. He was also a backup crew member of Gemini 12, Apollo 7, and Apollo 14. During the Apollo 17 mission, he became the 11th person to walk on the Moon as well as the astronaut with the longest time spent walking on the Moon; he is also the last person to walk on the Moon as of 2026.
Before becoming an astronaut, Cernan graduated with a Bachelor of Science degree in electrical engineering from Purdue University in Indiana, and joined the U.S. Navy through the Naval Reserve Officers Training Corps (NROTC). After flight training, he received his naval aviator wings and served as a fighter pilot. In 1963, he received a Master of Science degree in aeronautical engineering from the U.S. Naval Postgraduate School. Achieving the rank of captain, he retired from the Navy in 1976.',
   '["clm_wiki_gene-cernan_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 203);

-- 170. Floyd Mayweather Jr.
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_floyd-mayweather-jr', 'person', 'floyd-mayweather-jr', 'Floyd Mayweather Jr.', 'published', 'Floyd Joy Mayweather Jr. (né Sinclair; born February 24, 1977) is an American professional boxer and boxing promoter. He is undefeated at 50–0. Mayweather won 15 major world championships spanning five weight classes from super featherweight to light middleweight. This includes the Ring magazine title in three weight classes. As an amateur, he won a bronze medal in the featherweight division at th', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_floyd-mayweather-jr', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_floyd-mayweather-jr_us', 'ent_floyd-mayweather-jr', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_floyd-mayweather-jr_intro', 'ent_floyd-mayweather-jr', 'biography_intro', 'Introduction', 'Floyd Joy Mayweather Jr. (né Sinclair; born February 24, 1977) is an American professional boxer and boxing promoter. He is undefeated at 50–0. Mayweather won 15 major world championships spanning five weight classes from super featherweight to light middleweight. This includes the Ring magazine title in three weight classes. As an amateur, he won a bronze medal in the featherweight division at the 1996 Olympics, three U.S. Golden Gloves championships (at light flyweight, flyweight, and featherweight), and the U.S. national championship at featherweight. After retiring from professional boxing in August 2017, he transitioned to exhibition boxing.
As of July 2025, BoxRec ranks him the third greatest boxer of all time, pound for pound. Mayweather was named "Fighter of the Decade" for the 2010s by the Boxing Writers Association of America (BWAA) and The Sporting News, a two-time winner of The Ring magazine''s Fighter of the Year award (1998 and 2007), a three-time winner of the BWAA Fighter of the Year award (2007, 2013, and 2015), and a six-time winner of the Best Fighter ESPY Award (2007–2010, 2012–2014). In 2016, ESPN ranked him the greatest boxer, pound for pound, of the last 25 years; in 2024, they also ranked him the best boxer of the 21st century. In 2025, The Ring ranked him the greatest boxer, pound-for-pound, of the 21st century.
He is referred to as one of the best defensive boxers in history: since the existence of CompuBox, Mayweather is the most accurate puncher among professional boxers, having the highest plus–minus ratio in recorded boxing history. He has a tied record with Joe Louis of 26 consecutive wins in world title fights. He also holds 24 wins (7 KOs) against former or current world titlists, and 8 wins (3 KOs) against International Boxing Hall of Fame inductees. He was inducted into the International Boxing Hall of Fame in the class of 2021.

Mayweather is one of the most lucrative pay-per-view attractions of all time, in any sport. He topped th',
   '["clm_wiki_floyd-mayweather-jr_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 330);

-- 175. Fred M. Vinson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_fred-m-vinson', 'person', 'fred-m-vinson', 'Fred M. Vinson', 'published', 'Frederick Moore Vinson (January 22, 1890 – September 8, 1953) was an American attorney and politician who served as the 13th chief justice of the United States from 1946 until his death in 1953. Vinson was one of the few Americans to have served in all three branches of the U.S. government. Before becoming chief justice, Vinson served as a U.S. representative from Kentucky from 1924 to 1928 and 19', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_fred-m-vinson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_fred-m-vinson_us', 'ent_fred-m-vinson', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_fred-m-vinson_intro', 'ent_fred-m-vinson', 'biography_intro', 'Introduction', 'Frederick Moore Vinson (January 22, 1890 – September 8, 1953) was an American attorney and politician who served as the 13th chief justice of the United States from 1946 until his death in 1953. Vinson was one of the few Americans to have served in all three branches of the U.S. government. Before becoming chief justice, Vinson served as a U.S. representative from Kentucky from 1924 to 1928 and 1930 to 1938, as a federal appellate judge on the U.S. Court of Appeals for the District of Columbia Circuit from 1938 to 1943, and as the U.S. secretary of the treasury from 1945 to 1946.
Born in Louisa, Kentucky, Vinson pursued a legal career in Louisa, and served briefly in the United States Army during World War I. After the war, he served as the Commonwealth''s Attorney for the Thirty-Second Judicial District of Kentucky before winning election to the U.S. House of Representatives in 1924. He lost re-election in 1928 but regained his seat in 1930 and served in Congress until 1937. During his time in Congress, he became an adviser and confidante of Missouri Senator Harry S. Truman. In 1937, President Franklin D. Roosevelt appointed Vinson to be a judge on the D.C. Circuit. Vinson resigned from the appellate court in 1943, when he became the Director of the Office of Economic Stabilization. After Truman acceded to the presidency following Roosevelt''s death in 1945, Truman appointed Vinson to the position of Secretary of the Treasury. Vinson negotiated the payment of the Anglo-American loan and presided over the establishment of numerous post-war organizations, including the International Bank for Reconstruction and Development (commonly called the World Bank) and the International Monetary Fund.
After the death of Chief Justice Harlan F. Stone in 1946, Truman appointed Vinson to the Supreme Court. Vinson dissented in the case of Youngstown Sheet & Tube Co. v. Sawyer, which ruled against the Truman administration''s control of the nation''s steel mills during a strike. He orde',
   '["clm_wiki_fred-m-vinson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 329);

-- 186. George B. McClellan
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_george-b-mcclellan', 'person', 'george-b-mcclellan', 'George B. McClellan', 'published', 'George Brinton McClellan (December 3, 1826 – October 29, 1885) was an American military officer, politician, and engineer who served as the 24th governor of New Jersey from 1878 to 1881, as Commanding General of the United States Army from November 1861 to March 1862, and the unsuccessful Democratic Party candidate in the 1864 presidential election. He was also chief engineer and vice president of', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_george-b-mcclellan', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_george-b-mcclellan_us', 'ent_george-b-mcclellan', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_george-b-mcclellan_intro', 'ent_george-b-mcclellan', 'biography_intro', 'Introduction', 'George Brinton McClellan (December 3, 1826 – October 29, 1885) was an American military officer, politician, and engineer who served as the 24th governor of New Jersey from 1878 to 1881, as Commanding General of the United States Army from November 1861 to March 1862, and the unsuccessful Democratic Party candidate in the 1864 presidential election. He was also chief engineer and vice president of the Illinois Central Railroad, and later president of the Ohio and Mississippi Railroad in 1860.
A West Point graduate, McClellan served with distinction during the Mexican-American War. He was a railway executive and engineer until the outbreak of the American Civil War in 1861. Early in the conflict, McClellan was appointed to the rank of major general and played an important role in raising the Army of the Potomac, which served in the Eastern Theater.
McClellan organized and led the Union Army in the Peninsula campaign in southeastern Virginia from March through July 1862. It was the first large-scale offensive in the Eastern Theater. Making an amphibious clockwise turning movement around the Confederate Army in northern Virginia, McClellan''s forces turned west to move up the Virginia Peninsula, between the James River and York River, landing from Chesapeake Bay, with the Confederate capital, Richmond, as their objective. Initially, McClellan was somewhat successful against General Joseph E. Johnston, but the emergence of General Robert E. Lee to command the Army of Northern Virginia turned the subsequent Seven Days Battles into a Union defeat. However, historians note that Lee''s victory was in many ways pyrrhic as he failed to destroy the Army of the Potomac and suffered a bloody repulse at Malvern Hill.
McClellan and President Abraham Lincoln developed a mutual distrust, and McClellan was privately derisive of Lincoln. He was removed from command in November, in the aftermath of the 1862 midterm elections. A major contributing factor in this decision was McClellan''s f',
   '["clm_wiki_george-b-mcclellan_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 316);

-- 198. H. R. McMaster
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_h-r-mcmaster', 'person', 'h-r-mcmaster', 'H. R. McMaster', 'published', 'Herbert Raymond McMaster (born July 24, 1962) is a retired United States Army lieutenant general who served as the 25th United States National Security Advisor from 2017 to 2018. He is also known for his roles in the Gulf War, Operation Enduring Freedom, and Operation Iraqi Freedom.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_h-r-mcmaster', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_h-r-mcmaster_us', 'ent_h-r-mcmaster', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_h-r-mcmaster_intro', 'ent_h-r-mcmaster', 'biography_intro', 'Introduction', 'Herbert Raymond McMaster (born July 24, 1962) is a retired United States Army lieutenant general who served as the 25th United States National Security Advisor from 2017 to 2018. He is also known for his roles in the Gulf War, Operation Enduring Freedom, and Operation Iraqi Freedom.
Born in Philadelphia, McMaster graduated from the United States Military Academy in 1984 and earned a Ph.D. in American history from the University of North Carolina at Chapel Hill in 1996. His dissertation was critical of American strategy and military leadership during the Vietnam War and served as the basis for his book Dereliction of Duty, which was a NYT Bestseller and is widely read in the United States military. During the Gulf War, then Captain McMaster commanded Eagle Troop, 2nd Cavalry Regiment in the Battle of 73 Easting.
After the Gulf War, McMaster attended graduate school at UNC Chapel Hill then taught military history at the United States Military Academy from 1994 to 1996. After serving as a squadron executive officer and a regimental operations officer in the 11th Cavalry Regiment at Fort Irwin, California, he commanded the 1st Squadron 4th Cavalry at Schweinfurt, Germany from 1999 to 2002. After an Army War College Fellowship at the Hoover Institution, Stanford University, he served as an executive officer and director of the Commander''s Advisory Group at United States Central Command forward headquarters command in Qatar. In 2004, he took command of the 3rd Cavalry Regiment and fought the Iraqi insurgency in South Baghdad and Tal Afar from 2005 to 2006 after which he  became a top counterinsurgency advisor to General David Petraeus in Baghdad from 2007 to 2008.  Brigadier General McMaster was the Director of Concept Development and Learning at the U.S. Army Training and Doctrine Command (TRADOC) from 2008 to 2010.  From 2010 to 2012, he commanded Task Force Shafafiyat (Transparency), International Security Assistance Force in Afghanistan. Major General McMaster command',
   '["clm_wiki_h-r-mcmaster_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 319);

-- 202. Harlan F. Stone
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_harlan-f-stone', 'person', 'harlan-f-stone', 'Harlan F. Stone', 'published', 'Harlan Fiske Stone (October 11, 1872 – April 22, 1946) was an American attorney who served as an associate justice of the U.S. Supreme Court from 1925 to 1941 and then as the 12th chief justice of the United States from 1941 until his death in 1946. He also served as the U.S. Attorney General from 1924 to 1925 under President Calvin Coolidge, with whom he had attended Amherst College as a young ma', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_harlan-f-stone', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_harlan-f-stone_us', 'ent_harlan-f-stone', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_harlan-f-stone_intro', 'ent_harlan-f-stone', 'biography_intro', 'Introduction', 'Harlan Fiske Stone (October 11, 1872 – April 22, 1946) was an American attorney who served as an associate justice of the U.S. Supreme Court from 1925 to 1941 and then as the 12th chief justice of the United States from 1941 until his death in 1946. He also served as the U.S. Attorney General from 1924 to 1925 under President Calvin Coolidge, with whom he had attended Amherst College as a young man. His most famous dictum was that "Courts are not the only agency of government that must be assumed to have capacity to govern."
Raised in Western Massachusetts, Stone practiced law in New York City after graduating from Columbia Law School. He became the Dean of Columbia Law School and a partner with Sullivan & Cromwell. During World War I, he served on the U.S. Department of War''s Board of Inquiry, which evaluated the sincerity of conscientious objectors. In 1924, President Calvin Coolidge appointed Stone as the Attorney General. Stone sought to reform the U.S. Department of Justice in the aftermath of several scandals that occurred during the administration of President Warren G. Harding. He also pursued several antitrust cases against large corporations.
In 1925, Coolidge nominated Stone to the Supreme Court to succeed retiring Associate Justice Joseph McKenna, and Stone won U.S. Senate confirmation with little opposition. On the Taft Court, Stone joined with Justices Oliver Wendell Holmes Jr. and Louis Brandeis in calling for judicial restraint and deference to the legislative will. On the Hughes Court, Stone and Justices Brandeis and Benjamin N. Cardozo formed a liberal bloc called the Three Musketeers that generally voted to uphold the constitutionality of the New Deal. His majority opinions in United States v. Darby Lumber Co. (1941) and United States v. Carolene Products Co. (1938) were influential in shaping standards of judicial scrutiny.
In 1941, President Franklin D. Roosevelt nominated Stone to succeed the retiring Charles Evans Hughes as Chief Justice, and ',
   '["clm_wiki_harlan-f-stone_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 324);

-- 212. Helen Herron Taft
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_helen-herron-taft', 'person', 'helen-herron-taft', 'Helen Herron Taft', 'published', 'Helen Louise Taft (née Herron; June 2, 1861 – May 22, 1943) was First Lady of the United States from 1909 to 1913 as the wife of President William Howard Taft. Born to a politically well-connected Ohio family, she took an early interest in political life, deciding at the age of 17 that she wished to become first lady. Herron married Taft in 1886, and she guided him throughout his political career,', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_helen-herron-taft', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_helen-herron-taft_us', 'ent_helen-herron-taft', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_helen-herron-taft_intro', 'ent_helen-herron-taft', 'biography_intro', 'Introduction', 'Helen Louise Taft (née Herron; June 2, 1861 – May 22, 1943) was First Lady of the United States from 1909 to 1913 as the wife of President William Howard Taft. Born to a politically well-connected Ohio family, she took an early interest in political life, deciding at the age of 17 that she wished to become first lady. Herron married Taft in 1886, and she guided him throughout his political career, encouraging him to take actions that would bring him closer to the presidency. Accompanying her husband to the Philippines in 1900, she became a prominent socialite in Manila, contributing to US-Philippines relations. After her husband was appointed Secretary of War, she played a significant role in convincing him to run for president in the 1908 presidential election and making the necessary connections to ensure his success.
As first lady, Taft was closely involved in the political aspects of the presidency, regularly sitting in on meetings and serving as her husband''s closest advisor. She held a strong influence over the president''s decisions, expressing her concerns when she disagreed with him and providing her input on presidential appointments. She also carried out a reorganization of the White House staff and decor. Inspired by her experience in the Philippines, she converted the White House lawn and the West Potomac Park into social hubs with regular live shows and events. Her decision to plant cherry trees in the park proved to be a success, creating a popular tourist attraction. Taft''s influence as first lady was cut short by a stroke two months into her tenure, permanently limiting her mobility and leaving her absent for a year while she partially recovered.
Though President Taft was relieved that his term had ended, Helen Taft was upset by his defeat for reelection. She remained active after leaving the White House, supporting the Red Cross during World War I and participating in activities for the Colonial Dames of America. She was widowed in 1930, and was bur',
   '["clm_wiki_helen-herron-taft_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 331);

-- 220. Ida Saxton McKinley
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_ida-saxton-mckinley', 'person', 'ida-saxton-mckinley', 'Ida Saxton McKinley', 'published', 'Ida McKinley (née Saxton; June 8, 1847 – May 26, 1907) was the first lady of the United States from 1897 until 1901, as the wife of President William McKinley. McKinley also served as the First Lady of Ohio from 1892 to 1896 while her husband was the governor of Ohio.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_ida-saxton-mckinley', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_ida-saxton-mckinley_us', 'ent_ida-saxton-mckinley', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_ida-saxton-mckinley_intro', 'ent_ida-saxton-mckinley', 'biography_intro', 'Introduction', 'Ida McKinley (née Saxton; June 8, 1847 – May 26, 1907) was the first lady of the United States from 1897 until 1901, as the wife of President William McKinley. McKinley also served as the First Lady of Ohio from 1892 to 1896 while her husband was the governor of Ohio.
Born to a successful Ohio family, McKinley met her future husband and later married him during the early Reconstruction years. McKinley never recovered from losing their two daughters as children and remained in a fragile state of health for the rest of her life, including having seizures. During campaigns and while in office, her husband took great care to accommodate her needs, as they were a devoted couple. McKinley''s ability to fulfill the role of First Lady was nevertheless limited. She was brought further grief by the death of her brother and the assassination of her husband. McKinley reportedly visited her husband''s resting place daily until her own death and supported James Benjamin Parker, who had attempted to stop her husband''s assassination.',
   '["clm_wiki_ida-saxton-mckinley_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 173);

-- 224. J. E. B. Stuart
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_j-e-b-stuart', 'person', 'j-e-b-stuart', 'J. E. B. Stuart', 'published', 'James Ewell Brown "Jeb" Stuart (February 6, 1833 – May 12, 1864) was a Confederate cavalry general during the American Civil War. He was known to his friends as "Jeb", from the initials of his given names. Stuart was a cavalry commander known for his mastery of reconnaissance and the use of cavalry in support of offensive operations. While he cultivated a cavalier image (red-lined gray cape, the y', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_j-e-b-stuart', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_j-e-b-stuart_us', 'ent_j-e-b-stuart', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_j-e-b-stuart_intro', 'ent_j-e-b-stuart', 'biography_intro', 'Introduction', 'James Ewell Brown "Jeb" Stuart (February 6, 1833 – May 12, 1864) was a Confederate cavalry general during the American Civil War. He was known to his friends as "Jeb", from the initials of his given names. Stuart was a cavalry commander known for his mastery of reconnaissance and the use of cavalry in support of offensive operations. While he cultivated a cavalier image (red-lined gray cape, the yellow waist sash of a regular cavalry officer, hat cocked to the side with an ostrich plume, red flower in his lapel, often sporting cologne), his serious work made him the trusted eyes and ears of Robert E. Lee''s army and inspired Southern morale.
Stuart graduated from West Point in 1854 and served in Texas and Kansas with the U.S. Army. Stuart was a veteran of the frontier conflicts with Native Americans and the violence of Bleeding Kansas, and he participated in the capture of John Brown at Harpers Ferry. He resigned his commission when his home state of Virginia seceded, to serve in the Confederate Army, first under Stonewall Jackson in the Shenandoah Valley, but then in increasingly important cavalry commands of the Army of Northern Virginia, playing a role in all of that army''s campaigns until his death.
He established a reputation as an audacious cavalry commander and on two occasions (during the Peninsula Campaign and the Maryland Campaign) circumnavigated the Union Army of the Potomac, bringing fame to himself and embarrassment to the North. At the Battle of Chancellorsville, he distinguished himself as a temporary commander of the wounded Stonewall Jackson''s infantry corps.
Stuart''s most famous campaign, the Gettysburg campaign, was flawed when his long separation from Lee''s army left Lee unaware of Union troop movements so that Lee was surprised and almost trapped at the Battle of Gettysburg. Stuart received criticism from the Southern press as well as the proponents of the Lost Cause movement after the war. During the 1864 Overland Campaign, Union Maj. Gen. Phil',
   '["clm_wiki_j-e-b-stuart_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 329);

-- 225. J. P. Morgan
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_j-p-morgan', 'person', 'j-p-morgan', 'J. P. Morgan', 'published', 'John Pierpont  Morgan Sr. (April 17, 1837 – March 31, 1913) was an American financier and investment banker who dominated corporate finance on Wall Street throughout the Gilded Age and Progressive Era. As the head of the banking firm that ultimately became known as JPMorgan Chase & Co., he was the driving force behind a wave of industrial consolidations in the United States at the turn of the twen', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_j-p-morgan', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_j-p-morgan_us', 'ent_j-p-morgan', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_j-p-morgan_intro', 'ent_j-p-morgan', 'biography_intro', 'Introduction', 'John Pierpont  Morgan Sr. (April 17, 1837 – March 31, 1913) was an American financier and investment banker who dominated corporate finance on Wall Street throughout the Gilded Age and Progressive Era. As the head of the banking firm that ultimately became known as JPMorgan Chase & Co., he was the driving force behind a wave of industrial consolidations in the United States at the turn of the twentieth century.
Over the course of his career on Wall Street, Morgan spearheaded the formation of several prominent multinational corporations including U.S. Steel, International Harvester, and General Electric. He and his partners also held controlling interests in numerous other American businesses including Aetna, Western Union, the Pullman Car Company, and 21 railroads. His grandfather Joseph Morgan was one of the co-founders of Aetna. Through his holdings, Morgan exercised enormous influence over capital markets in the United States. During the Panic of 1907, he organized a coalition of financiers that saved the American monetary system from collapse.
As the Progressive Era''s leading banker, Morgan''s dedication to efficiency and modernization helped transform the shape of the American economy. Adrian Wooldridge characterized Morgan as America''s "greatest banker". Morgan died in Rome, Italy, in his sleep in 1913 at the age of 75, leaving his fortune and business to his son, J. P. Morgan Jr. Biographer Ron Chernow estimated his fortune at $80 million (equivalent to $1.9 billion in 2024).',
   '["clm_wiki_j-p-morgan_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 234);

-- 228. Jacqueline Kennedy Onassis
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_jacqueline-kennedy-onassis', 'person', 'jacqueline-kennedy-onassis', 'Jacqueline Kennedy Onassis', 'published', 'Jacqueline Lee Kennedy Onassis (née Bouvier; July 28, 1929 – May 19, 1994) was the first lady of the United States from 1961 to 1963, as the wife of John F. Kennedy, the 35th president of the United States. She redefined the previously mostly ceremonial role into a platform for arts and culture by hosting multiple high-profile events at the White House and leading its restoration into being a hist', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_jacqueline-kennedy-onassis', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_jacqueline-kennedy-onassis_us', 'ent_jacqueline-kennedy-onassis', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_jacqueline-kennedy-onassis_intro', 'ent_jacqueline-kennedy-onassis', 'biography_intro', 'Introduction', 'Jacqueline Lee Kennedy Onassis (née Bouvier; July 28, 1929 – May 19, 1994) was the first lady of the United States from 1961 to 1963, as the wife of John F. Kennedy, the 35th president of the United States. She redefined the previously mostly ceremonial role into a platform for arts and culture by hosting multiple high-profile events at the White House and leading its restoration into being a historical site. Through her fashion and cultural literacy, she improved the global standing of the United States during the politically volatile Cold War. Her personal style became known as the "Jackie Look", which inspired worldwide fashion trends during the 1960s.
Born into the upper-class Bouvier family in Southampton, New York, Bouvier studied history and art at Vassar College before graduating with a Bachelor of Arts in French literature from George Washington University in 1951. She then began working for the Washington Times-Herald as an inquiring photographer. The following year, she met then-congressman John Fitzgerald Kennedy of Massachusetts at a dinner party in Washington. He was elected to the Senate that same year, and the couple married on September 12, 1953, in Newport, Rhode Island. They had four children, two of whom died in infancy. Following her husband''s election to the presidency in 1960, Kennedy was known for her highly publicized restoration of the White House and emphasis on arts and culture as well as for her style. She also traveled to many countries where her fluency in foreign languages and history made her very popular. At age 33, she was named Time magazine''s Woman of the Year in 1962.
After her husband''s assassination and funeral in 1963, Kennedy and her children largely withdrew from public view. In 1968, she married Greek shipping magnate Aristotle Onassis, which caused  controversy. Following Onassis''s death in 1975, she had a career as a book editor in New York City, first at Viking Press and then at Doubleday, and worked to restore her publ',
   '["clm_wiki_jacqueline-kennedy-onassis_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 328);

-- 242. Jim Mattis
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_jim-mattis', 'person', 'jim-mattis', 'Jim Mattis', 'published', 'James Norman Mattis (born September 8, 1950) is an American military officer who served as the 26th United States secretary of defense from 2017 to 2019. A retired Marine Corps four-star general, he commanded forces in the Gulf War, the War in Afghanistan, and the Iraq War.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_jim-mattis', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_jim-mattis_us', 'ent_jim-mattis', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_jim-mattis_intro', 'ent_jim-mattis', 'biography_intro', 'Introduction', 'James Norman Mattis (born September 8, 1950) is an American military officer who served as the 26th United States secretary of defense from 2017 to 2019. A retired Marine Corps four-star general, he commanded forces in the Gulf War, the War in Afghanistan, and the Iraq War.
Mattis was commissioned in the Marine Corps through the Naval Reserve Officers'' Training Corps after graduating from Central Washington University. A career Marine, he gained a reputation among his peers for intellectualism and eventually advanced to the rank of general. From 2007 to 2010, he commanded the United States Joint Forces Command and concurrently served as NATO''s Supreme Allied Commander Transformation. He was commander of United States Central Command from 2010 to 2013, with Admiral Bob Harward serving as his deputy commander. After retiring from the military, Mattis held several private sector roles, including serving on the board of directors at Theranos.
Mattis was nominated as secretary of defense by president-elect Donald Trump, and confirmed by the Senate on January 20, 2017. As secretary of defense, Mattis affirmed the United States'' commitment to defending longtime ally South Korea in the wake of the 2017 North Korea crisis. An opponent of proposed collaboration with China and Russia, Mattis stressed what he saw as their "threat to the American-led world order". Mattis occasionally voiced his disagreement with certain Trump administration policies such as the withdrawal from the Iran nuclear deal, withdrawals of troops from Syria and Afghanistan, and budget cuts hampering the ability to monitor the impacts of climate change. According to The Hill, Mattis also reportedly dissuaded Trump from attempting to assassinate Bashar al-Assad, the president of Syria.
On December 20, 2018, after failing to convince Trump to reconsider his decision to withdraw all American troops from Syria, Mattis announced his resignation effective the end of February 2019; after Mattis''s resignation gen',
   '["clm_wiki_jim-mattis_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 308);

-- 305. Julia Gardiner Tyler
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_julia-gardiner-tyler', 'person', 'julia-gardiner-tyler', 'Julia Gardiner Tyler', 'published', 'Julia Gardiner Tyler (May 4, 1820 – July 10, 1889) was the first lady of the United States from June 26, 1844, to March 4, 1845, as the second wife of President John Tyler. A member of the influential Gardiner family, Tyler had many figures as suitors. She met the widowed President Tyler in 1842, and agreed to marry him after he comforted her in the aftermath of her father David Gardiner''s death. ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_julia-gardiner-tyler', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_julia-gardiner-tyler_us', 'ent_julia-gardiner-tyler', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_julia-gardiner-tyler_intro', 'ent_julia-gardiner-tyler', 'biography_intro', 'Introduction', 'Julia Gardiner Tyler (May 4, 1820 – July 10, 1889) was the first lady of the United States from June 26, 1844, to March 4, 1845, as the second wife of President John Tyler. A member of the influential Gardiner family, Tyler had many figures as suitors. She met the widowed President Tyler in 1842, and agreed to marry him after he comforted her in the aftermath of her father David Gardiner''s death. They married in secret, making her first lady immediately upon their marriage, serving in the role for the final eight months of his presidency.
Tyler was delighted with her role as first lady, redecorating the White House and establishing her own "court" of ladies-in-waiting to mimic the practices of European monarchies she had visited years before. She also established the tradition of playing "Hail to the Chief" when the president arrived at an event, and she popularized the waltz and polka dances in the United States. Tyler was a fierce advocate for her husband''s political priorities, organizing social events to lobby Congressmen, particularly for the Texas annexation. She is credited with revitalizing the position of first lady, both socially and politically, after several inactive first ladies before her.
After leaving the White House, Tyler moved to the Sherwood Forest Plantation in Virginia with her husband and had seven children. She became a prominent supporter of slavery in the United States, writing an influential pamphlet in 1853 that defended the practice. During the American Civil War, Tyler provided support to the Confederate States of America, creating a permanent rift with her family in New York. After the war, she was involved in a legal dispute regarding her mother''s estate with her brother, who had been a loyal Unionist. Tyler returned to Washington in the 1870s as her reputation recovered, assisting first lady Julia Grant at the White House and convincing Congress to provide a pension for widowed first ladies. She spent her final years in Richmond, Vir',
   '["clm_wiki_julia-gardiner-tyler_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 329);

-- 338. Letitia Christian Tyler
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_letitia-christian-tyler', 'person', 'letitia-christian-tyler', 'Letitia Christian Tyler', 'published', 'Letitia Christian Tyler (November 12, 1790 – September 10, 1842) was the first lady of the United States from 1841 to 1842 as the first wife of President John Tyler. After meeting in 1808, the two married in 1813. Tyler managed their plantation in Virginia while her husband progressed his political career at the state capital and in Washington, D.C., accompanying him only while he was governor of ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_letitia-christian-tyler', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_letitia-christian-tyler_us', 'ent_letitia-christian-tyler', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_letitia-christian-tyler_intro', 'ent_letitia-christian-tyler', 'biography_intro', 'Introduction', 'Letitia Christian Tyler (November 12, 1790 – September 10, 1842) was the first lady of the United States from 1841 to 1842 as the first wife of President John Tyler. After meeting in 1808, the two married in 1813. Tyler managed their plantation in Virginia while her husband progressed his political career at the state capital and in Washington, D.C., accompanying him only while he was governor of Virginia. She had a stroke in 1839 that left her permanently disabled.
Tyler became the second lady of the United States when her husband became vice president of the United States in 1841, and she became the first lady when President William Henry Harrison died the following month and her husband ascended to the presidency. Tyler was unable to perform the duties of first lady due to her health, delegating them to her daughter-in-law Priscilla Cooper Tyler. She died of a second stroke in 1842, becoming the first person to die while serving as first lady of the United States. Tyler played virtually no role in her husband''s presidency, but maintained a positive reputation among the American people.',
   '["clm_wiki_letitia-christian-tyler_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 186);

-- 347. Lou Henry Hoover
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_lou-henry-hoover', 'person', 'lou-henry-hoover', 'Lou Henry Hoover', 'published', 'Lou Henry Hoover (née Henry; March 29, 1874 – January 7, 1944) was an American philanthropist, geologist, and the first lady of the United States from 1929 to 1933 as the wife of President Herbert Hoover. She was active in community organizations and volunteer groups throughout her life, including the Girl Scouts of the USA, which she led from 1922 to 1925 and from 1935 to 1937. Throughout her lif', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_lou-henry-hoover', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_lou-henry-hoover_us', 'ent_lou-henry-hoover', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_lou-henry-hoover_intro', 'ent_lou-henry-hoover', 'biography_intro', 'Introduction', 'Lou Henry Hoover (née Henry; March 29, 1874 – January 7, 1944) was an American philanthropist, geologist, and the first lady of the United States from 1929 to 1933 as the wife of President Herbert Hoover. She was active in community organizations and volunteer groups throughout her life, including the Girl Scouts of the USA, which she led from 1922 to 1925 and from 1935 to 1937. Throughout her life, Hoover supported women''s rights and women''s independence. She was a polyglot, fluent in Mandarin Chinese and well-versed in Latin, and was the primary translator from Latin to English of the complex 16th-century metallurgy text De re metallica.
Hoover was raised in California while it was part of the American frontier. She attended Stanford University, and became the first woman to receive a degree in geology from the institution. She met fellow geology student Herbert Hoover at Stanford, and they married in 1899. The Hoovers first resided in China; the Boxer Rebellion broke out later that year, and they were at the Battle of Tientsin. In 1901 they moved to London, where Hoover raised their two sons and became a popular hostess between their international travels. During World War I, the Hoovers led humanitarian efforts to assist war refugees. The family moved to Washington, D.C. in 1917, when Herbert was appointed head of the Food and Drug Administration, and Lou became a food conservation activist in support of his work.
Hoover became the First Lady of the United States when her husband was inaugurated as president in 1929. Her invitation of Jessie De Priest to the White House for tea was controversial for its implied support of racial integration and civil rights. She refused to give interviews to reporters, but she became the first first lady to give regular radio broadcasts. Hoover was responsible for refurbishing the White House during her tenure, and saw to the construction of a presidential retreat at Rapidan Camp. She minimized her public role as White House hos',
   '["clm_wiki_lou-henry-hoover_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 332);

-- 370. Chester W. Nimitz
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_chester-w-nimitz', 'person', 'chester-w-nimitz', 'Chester W. Nimitz', 'published', 'Chester William Nimitz (; 24 February 1885 – 20 February 1966) was a fleet admiral in the United States Navy. He played a major role in the naval history of World War II as Commander in Chief, US Pacific Fleet, and Commander in Chief, Pacific Ocean Areas, commanding Allied air, land, and sea forces during World War II.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_chester-w-nimitz', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_chester-w-nimitz_us', 'ent_chester-w-nimitz', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_chester-w-nimitz_intro', 'ent_chester-w-nimitz', 'biography_intro', 'Introduction', 'Chester William Nimitz (; 24 February 1885 – 20 February 1966) was a fleet admiral in the United States Navy. He played a major role in the naval history of World War II as Commander in Chief, US Pacific Fleet, and Commander in Chief, Pacific Ocean Areas, commanding Allied air, land, and sea forces during World War II.
Nimitz was the leading U.S. Navy authority on submarines. Qualified in submarines during his early years, Nimitz later oversaw the conversion of these vessels'' propulsion from gasoline to diesel, and then later was key in acquiring approval to build the world''s first nuclear-powered submarine, USS Nautilus, whose propulsion system later completely superseded diesel-powered submarines in the United States. Beginning in 1917, Nimitz was the Navy''s leading developer of underway replenishment techniques, the tool which during the Pacific war would allow the American fleet to operate away from port almost indefinitely. The chief of the Navy''s Bureau of Navigation from 1939 to 1942, Nimitz served as the chief of naval operations from 1945 until 1947. He was the United States'' last surviving officer who served in the rank of fleet admiral. The USS Nimitz supercarrier, the lead ship of her class, is named after Nimitz.',
   '["clm_wiki_chester-w-nimitz_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 202);

-- 395. Wright brothers
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_wright-brothers', 'person', 'wright-brothers', 'Wright brothers', 'published', 'The Wright brothers, Orville Wright (August 19, 1871 – January 30, 1948) and Wilbur Wright (April 16, 1867 – May 30, 1912), were American aviation pioneers generally credited with inventing, building, and flying the world''s first successful airplane. They made the first controlled, sustained flight of an engine-powered, heavier-than-air aircraft with the Wright Flyer on December 17, 1903, four mil', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_wright-brothers', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_wright-brothers_us', 'ent_wright-brothers', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_wright-brothers_intro', 'ent_wright-brothers', 'biography_intro', 'Introduction', 'The Wright brothers, Orville Wright (August 19, 1871 – January 30, 1948) and Wilbur Wright (April 16, 1867 – May 30, 1912), were American aviation pioneers generally credited with inventing, building, and flying the world''s first successful airplane. They made the first controlled, sustained flight of an engine-powered, heavier-than-air aircraft with the Wright Flyer on December 17, 1903, four miles (6 km) south of Kitty Hawk, North Carolina, at what is now known as Kill Devil Hills. In 1904 the Wright brothers developed the Wright Flyer II, which made longer-duration flights including the first circle, followed in 1905 by the first truly practical fixed-wing aircraft, the Wright Flyer III.
The brothers'' breakthrough invention was their creation of a three-axis control system, which enabled the pilot to steer the aircraft effectively and to maintain its equilibrium. Their system of aircraft controls made fixed-wing powered flight possible and remains standard on airplanes of all kinds. Their first U.S. patent, written in March 1903, before their first flight at Kitty Hawk, did not claim invention of a flying machine, but rather a system of aerodynamic control that manipulated a flying machine''s surfaces. From the beginning of their aeronautical work, Wilbur and Orville focused on developing a reliable method of pilot control as the key to solving "the flying problem". This approach differed significantly from other experimenters of the time who put more emphasis on developing powerful engines. Using a small home-built wind tunnel, the Wrights also collected more accurate data than any before, enabling them to design more efficient wings and propellers.
The brothers gained the mechanical skills essential to their success by working for years in their Dayton, Ohio-based shop with printing presses, bicycles, motors, and other machinery. Their work with bicycles, in particular, influenced their belief that an unstable vehicle such as a flying machine could be controlled',
   '["clm_wiki_wright-brothers_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 307);

