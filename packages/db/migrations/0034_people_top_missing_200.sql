-- ========================================
-- Migration 0025: Top-200-famous-Americans bulk ingest
-- Generated: 2026-08-08 14:38:02 UTC
-- Source: Wikipedia REST API (en.wikipedia.org)
-- License: Wikipedia content is CC-BY-SA 4.0 (attribution preserved in source_ids)
-- ========================================

-- 1. Mark Zuckerberg
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_mark-zuckerberg', 'person', 'mark-zuckerberg', 'Mark Zuckerberg', 'published', 'Mark Elliot Zuckerberg (; born May 14, 1984) is an American businessman and programmer who co-founded the social media service Facebook and its parent company Meta Platforms. He is its chairman, chief executive officer (CEO), and controlling shareholder.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_mark-zuckerberg', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_mark-zuckerberg_intro', 'ent_mark-zuckerberg', 'biography_intro', 'Introduction', 'Mark Elliot Zuckerberg (; born May 14, 1984) is an American businessman and programmer who co-founded the social media service Facebook and its parent company Meta Platforms. He is its chairman, chief executive officer (CEO), and controlling shareholder.
Zuckerberg briefly attended Harvard College, and launched Facebook there in February 2004 with his roommates Eduardo Saverin, Andrew McCollum, Dustin Moskovitz and Chris Hughes. Zuckerberg took the company public in May 2012 with majority shares. He became the world''s youngest self-made billionaire in 2008 at age 23 and has consistently ranked among the world''s wealthiest people.  According to Forbes, Zuckerberg''s estimated net worth stood at US$220 billion as of December 2025.
He has used his funds to organize multiple large donations, including the establishment of the Chan Zuckerberg Initiative. A film based on Zuckerberg''s early career, legal troubles and initial success with Facebook, The Social Network, was released in 2010. His prominence and fast rise in the technology industry has prompted political and legal attention. He has been the subject of multiple lawsuits regarding the creation and ownership of the website as well as issues such as user privacy.',
   '["clm_wiki_mark-zuckerberg_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 187);

-- 2. Serena Williams
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_serena-williams', 'person', 'serena-williams', 'Serena Williams', 'published', 'Serena Jameka Williams (born September 26, 1981) is an American professional tennis player. She was ranked as the world No. 1 in women''s singles by the Women''s Tennis Association (WTA) for 319 weeks (third-most of all time), and finished as the year-end No. 1 five times. Williams won 73 WTA Tour–level singles titles, including 23 major women''s singles titles—the most in the Open Era, and the secon', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_serena-williams', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_serena-williams_intro', 'ent_serena-williams', 'biography_intro', 'Introduction', 'Serena Jameka Williams (born September 26, 1981) is an American professional tennis player. She was ranked as the world No. 1 in women''s singles by the Women''s Tennis Association (WTA) for 319 weeks (third-most of all time), and finished as the year-end No. 1 five times. Williams won 73 WTA Tour–level singles titles, including 23 major women''s singles titles—the most in the Open Era, and the second-most of all time. She is the only player to accomplish a Career Golden Slam in both singles and doubles, and the only player to have simultaneously held Olympic gold and all four major titles in both singles and doubles.
Along with her elder sister Venus, Serena Williams was coached by her parents Oracene Price and Richard Williams. Turning professional in 1995, she won her first major singles title at the 1999 US Open. From the 2002 French Open to the 2003 Australian Open she was dominant, winning all four major singles titles consecutively (each time over Venus in the final) to achieve a non-calendar year Grand Slam (nicknamed the "Serena Slam"). The next few years saw Williams capture two more major singles titles, but suffer from injury and decline in form. Starting in 2007, however, she gradually returned to form despite continued injuries, reclaiming the world No. 1 singles ranking. Beginning with the 2012 Wimbledon Championships, Williams returned to dominance, claiming Olympic gold (completing the career Golden Slam in singles) and winning eight out of thirteen singles majors, including all four in a row in 2014–2015 to achieve a second "Serena Slam". At the 2017 Australian Open, she won her 23rd major singles title, surpassing Steffi Graf''s Open Era record. After becoming pregnant, Williams took a break from professional tennis, but reached four major finals upon returning to play. In August 2022, Williams announced her impending "evolution" away from professional tennis, and played her final match at the 2022 US Open. She has made a return to competition in 2026',
   '["clm_wiki_serena-williams_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 327);

-- 3. Albert Einstein
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_albert-einstein', 'person', 'albert-einstein', 'Albert Einstein', 'published', 'Albert Einstein (14 March 1879 – 18 April 1955) was a German-born theoretical physicist best known for developing the theory of relativity. Einstein also made important contributions to quantum theory. His mass–energy equivalence formula E = mc2, which arises from special relativity, has been called "the world''s most famous equation". He received the 1921 Nobel Prize in Physics for "his services t', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_albert-einstein', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_albert-einstein_intro', 'ent_albert-einstein', 'biography_intro', 'Introduction', 'Albert Einstein (14 March 1879 – 18 April 1955) was a German-born theoretical physicist best known for developing the theory of relativity. Einstein also made important contributions to quantum theory. His mass–energy equivalence formula E = mc2, which arises from special relativity, has been called "the world''s most famous equation". He received the 1921 Nobel Prize in Physics for "his services to theoretical physics, and especially for his discovery of the law of the photoelectric effect".
Born as a subject to the Kingdom of Württemberg, part of the German Empire, Einstein moved to Switzerland in 1895, forsaking his citizenship the following year. In 1896, at the age of seventeen, he enrolled in the mathematics and physics teaching diploma program at the Swiss federal polytechnic school in Zurich, graduating in 1900. He acquired Swiss citizenship a year later, which he kept for the rest of his life, and afterwards secured a permanent position at the Swiss Patent Office in Bern. In 1905, he submitted a successful PhD dissertation to the University of Zurich. In 1914, he moved to Berlin to join the Prussian Academy of Sciences and the Humboldt University of Berlin, becoming director of the Kaiser Wilhelm Institute for Physics in 1917; he also became a Prussian and consequently also German citizen again. In 1933, while Einstein was visiting the United States, Adolf Hitler came to power in Germany. Horrified by the Nazi persecution of his fellow Jews, he decided to remain in the US, and was granted American citizenship in 1940. On the eve of World War II, he endorsed a letter to President Franklin D. Roosevelt alerting him to the potential German nuclear weapons program and recommending that the US begin similar research, later carried out as the Manhattan Project.
In 1905, sometimes described as his annus mirabilis (miracle year), he published four groundbreaking papers. In them, he outlined a theory of the photoelectric effect, explained Brownian motion, introduced ',
   '["clm_wiki_albert-einstein_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 321);

-- 4. Mariah Carey
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_mariah-carey', 'person', 'mariah-carey', 'Mariah Carey', 'published', 'Mariah Carey (  mə-RY-ə; born March 27, 1969) is an American singer-songwriter, record producer, and actress. Dubbed the "Songbird Supreme", Carey is known for her five-octave vocal range, melismatic singing style, signature use of the whistle register, and diva persona. An influential figure in popular culture, she was ranked as the fifth-greatest singer of all time by Rolling Stone in 2023.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_mariah-carey', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_mariah-carey_intro', 'ent_mariah-carey', 'biography_intro', 'Introduction', 'Mariah Carey (  mə-RY-ə; born March 27, 1969) is an American singer-songwriter, record producer, and actress. Dubbed the "Songbird Supreme", Carey is known for her five-octave vocal range, melismatic singing style, signature use of the whistle register, and diva persona. An influential figure in popular culture, she was ranked as the fifth-greatest singer of all time by Rolling Stone in 2023.
Carey rose to fame with her eponymous debut album (1990) and became the only artist to have their first five singles reach number one in the US, from "Vision of Love" to the title track of her second album, Emotions (1991). She achieved international success with the best-selling albums Music Box (1993) and Daydream (1995). The remix to "Fantasy", with Ol'' Dirty Bastard, introduced her new image and hip-hop-inflected sound, which she later embraced on Butterfly (1997) and Rainbow (1999). With eleven consecutive years of US number-one singles, Carey was named by Billboard as the Artist of the Decade. Following a career decline, she made a comeback with The Emancipation of Mimi (2005), her 21st-century bestseller.
Carey''s life and career have received widespread media coverage. She has been dubbed the "Queen of Christmas" due to the enduring popularity of her Christmas music, particularly Merry Christmas (1994), one of the best-selling holiday albums. Its lead single, "All I Want for Christmas Is You", is the longest-running number-one song on the Billboard Hot 100 and the best-selling holiday single by a woman. Outside of music, she co-founded the youth program Camp Mariah in 1994; starred in films such as Glitter (2001), Precious (2009), The Butler (2013), and The Lego Batman Movie (2017); and served as a judge on American Idol (2013). Her 2020 memoir, The Meaning of Mariah Carey, reached number one on The New York Times Best Seller list.
Carey is one of the best-selling music artists in history, with estimated sales of over 220 million records. She has the most Billboard Hot 1',
   '["clm_wiki_mariah-carey_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 324);

-- 5. Michael Dell
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_michael-dell', 'person', 'michael-dell', 'Michael Dell', 'published', 'Michael Saul Dell (born February 23, 1965) is an American billionaire businessman and investor. He is the founder, chairman, and CEO of Dell Technologies, one of the world''s largest technology infrastructure companies.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_michael-dell', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_michael-dell_intro', 'ent_michael-dell', 'biography_intro', 'Introduction', 'Michael Saul Dell (born February 23, 1965) is an American billionaire businessman and investor. He is the founder, chairman, and CEO of Dell Technologies, one of the world''s largest technology infrastructure companies.
As of May 2026, Bloomberg Billionaires Index and Forbes estimate he''s the 7th wealthiest person in the world with a net worth of about US $212.8 billion.  As of October 2023, according to Forbes, net worth was derived from his 50% stake in Dell and 40% stake in VMware, with the rest being held by his family office DFO Management.
In January 2013, it was announced that he had bid to take Dell Inc. private for $24.4 billion in the biggest management buyout since the Great Recession. Dell Inc. officially went private in October 2013. The company once again went public in December 2018.',
   '["clm_wiki_michael-dell_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 136);

-- 6. Simone Biles
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_simone-biles', 'person', 'simone-biles', 'Simone Biles', 'published', 'Simone Arianne Biles Owens (née Biles; born March 14, 1997) is an American artistic gymnast. Her 11 Olympic medals and 30 World Championship medals make her the most decorated gymnast in history. She is widely regarded as one of the greatest gymnasts of all time, and one of the greatest female athletes in history. With 11 Olympic medals, she is tied with Věra Čáslavská as the second-most decorated', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_simone-biles', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_simone-biles_intro', 'ent_simone-biles', 'biography_intro', 'Introduction', 'Simone Arianne Biles Owens (née Biles; born March 14, 1997) is an American artistic gymnast. Her 11 Olympic medals and 30 World Championship medals make her the most decorated gymnast in history. She is widely regarded as one of the greatest gymnasts of all time, and one of the greatest female athletes in history. With 11 Olympic medals, she is tied with Věra Čáslavská as the second-most decorated female Olympic gymnast behind Larisa Latynina, and has the most Olympic medals earned by a U.S. gymnast.
At the Olympic Games, Biles is a two-time gold medalist in the individual all-around (2016, 2024). She is also a two-time champion on vault (2016, 2024), the 2016 champion and 2024 silver medalist on floor exercise, and a two-time bronze medalist on balance beam (2016, 2020). Biles led the gold medal-winning U.S. teams in 2016, dubbed the "Final Five", and in 2024, dubbed the "Golden Girls". At the 2020 Summer Olympics, where she was favored to win at least four of the six available gold medals, she withdrew from most of the competition after the qualification round due to "the twisties", a temporary loss of proprioception while performing twisting elements. She won a silver medal with the U.S. team nicknamed the "Fighting Four".
Biles is the most-decorated gymnast of the World Championships, with 30 medals, all but seven gold. She is a six-time all-around champion (2013, 2014, 2015, 2018, 2019 and 2023), six-time floor exercise champion (2013–2015, 2018–2019, 2023), and four-time balance beam champion (2014–2015, 2019, 2023), all record totals. She is also a two-time vault champion (2018–2019) and a member of a record five gold-medal-winning U.S. teams (2014–2015, 2018–2019, 2023). She is also a four-time silver medalist (2013–2014 and 2023 on vault, 2018 on uneven bars) and a three-time bronze medalist (2015 on vault, 2013 and 2018 on balance beam).
Domestically, Biles has won a record nine U.S. national all-around championships (2013–2016, 2018–2019, 2021, 2023–2024)',
   '["clm_wiki_simone-biles_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 321);

-- 7. Snoop Dogg
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_snoop-dogg', 'person', 'snoop-dogg', 'Snoop Dogg', 'published', 'Calvin Cordozar Broadus Jr. (born October 20, 1971), known professionally as Snoop Dogg, is an American rapper, singer, record producer, songwriter, and actor. A key figure in West Coast hip-hop, he helped define G-funk and gangsta rap, and is often regarded as one of the greatest rappers of all time. Known for his signature drawled delivery and melodic flow, his lyrics frequently address social i', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_snoop-dogg', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_snoop-dogg_intro', 'ent_snoop-dogg', 'biography_intro', 'Introduction', 'Calvin Cordozar Broadus Jr. (born October 20, 1971), known professionally as Snoop Dogg, is an American rapper, singer, record producer, songwriter, and actor. A key figure in West Coast hip-hop, he helped define G-funk and gangsta rap, and is often regarded as one of the greatest rappers of all time. Known for his signature drawled delivery and melodic flow, his lyrics frequently address social issues such as recreational drug use and gun violence.
He rose to prominence in 1992 through his collaborations with Dr. Dre, first on the single "Deep Cover" and later on The Chronic, including "Nuthin'' but a ''G'' Thang". Produced by Dr. Dre, his debut album Doggystyle (1993) debuted atop the Billboard 200 with 806,000 copies sold in its first week. The album spawned the hit singles "What''s My Name?" and "Gin and Juice", later receiving quadruple platinum certification by the Recording Industry Association of America (RIAA). His second album, Tha Doggfather (1996), also debuted at number one.
After leaving Death Row Records, Snoop Dogg signed with Master P''s No Limit Records, and saw continued success with his albums Da Game Is to Be Sold, Not to Be Told (1998), No Limit Top Dogg (1999), and Tha Last Meal (2000). His album R&G (Rhythm & Gangsta): The Masterpiece (2004) spawned the single "Drop It Like It''s Hot" (featuring Pharrell), his first Billboard Hot 100 number one. In later years, he adopted the alias Snoop Lion, under which he released a reggae album, Reincarnated (2013), and a namesake documentary film about his experience in Jamaica. The album was followed by the Pharrell-produced Bush (2015) and the gospel album Bible of Love (2018). In 2022, he acquired Death Row Records from MNRK Music Group and released BODR (2022).
Snoop Dogg has sold over 35 million records worldwide. In 2022, he co-headlined the Super Bowl LVI halftime show, earning a Primetime Emmy Award. He has received several accolades including seventeen Grammy Award nominations, two Sports Emmy Awards ',
   '["clm_wiki_snoop-dogg_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 327);

-- 8. Taylor Swift
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_taylor-swift', 'person', 'taylor-swift', 'Taylor Swift', 'published', 'Taylor Alison Swift (born December 13, 1989) is an American singer-songwriter. An influential figure in popular culture, she is known for her autobiographical songwriting and artistic reinventions. Swift is the highest-grossing live music artist, the wealthiest female musician, and one of the best-selling music artists of all time.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_taylor-swift', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_taylor-swift_intro', 'ent_taylor-swift', 'biography_intro', 'Introduction', 'Taylor Alison Swift (born December 13, 1989) is an American singer-songwriter. An influential figure in popular culture, she is known for her autobiographical songwriting and artistic reinventions. Swift is the highest-grossing live music artist, the wealthiest female musician, and one of the best-selling music artists of all time.
Swift signed with Big Machine Records in 2005 and debuted as a country singer with the albums Taylor Swift (2006) and Fearless (2008). The singles "Teardrops on My Guitar", "Love Story", and "You Belong with Me" found crossover success on country and pop radio formats. Swift incorporated elements of rock on Speak Now (2010) and pop and rock styles on Red (2012). She recalibrated her artistic identity from country to pop with the synth-pop album 1989 (2014), while ensuing media scrutiny inspired the trap-imbued Reputation (2017). Through the 2010s, Swift accumulated the US Billboard Hot 100 number-one singles "We Are Never Ever Getting Back Together", "Shake It Off", "Blank Space", "Bad Blood", and "Look What You Made Me Do".
Shifting to Republic Records in 2018, Swift released the eclectic pop album Lover (2019) and re-recorded four of her first six albums due to a dispute with Big Machine. She explored indie folk on the 2020 albums Folklore and Evermore, returned to synth-pop on Midnights (2022) and The Tortured Poets Department (2024), and delved into soft rock on The Life of a Showgirl (2025). The singles "Cardigan", "Willow", "All Too Well (Taylor''s Version)", "Anti-Hero", "Cruel Summer", "Is It Over Now?", "Fortnight", "The Fate of Ophelia", "Opalite", and "I Knew It, I Knew You" topped the Hot 100. Her Eras Tour (2023–2024) and its associated film, Taylor Swift: The Eras Tour (2023), are the highest-grossing concert tour and concert film of all time.
Swift is the only artist to have been named the IFPI Global Recording Artist of the Year six times. A record eight of her albums have each sold over a million copies first-week in the U',
   '["clm_wiki_taylor-swift_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 325);

-- 9. Theodore Roosevelt
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_theodore-roosevelt', 'person', 'theodore-roosevelt', 'Theodore Roosevelt', 'published', 'Theodore Roosevelt Jr. (October 27, 1858 – January 6, 1919) was the 26th president of the United States, serving from 1901 to 1909. Previously serving for six months as vice president under William McKinley, Roosevelt became president after McKinley''s assassination in 1901. He was 42 years old upon his first inauguration, making him the youngest person to hold the office.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_theodore-roosevelt', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_theodore-roosevelt_intro', 'ent_theodore-roosevelt', 'biography_intro', 'Introduction', 'Theodore Roosevelt Jr. (October 27, 1858 – January 6, 1919) was the 26th president of the United States, serving from 1901 to 1909. Previously serving for six months as vice president under William McKinley, Roosevelt became president after McKinley''s assassination in 1901. He was 42 years old upon his first inauguration, making him the youngest person to hold the office.
A sickly child with debilitating asthma, Roosevelt overcame health problems through a regime of vigorous exercise, which he called "the strenuous life". He was homeschooled and began a lifelong naturalist avocation before attending Harvard University. His book The Naval War of 1812 established his reputation as a historian and popular writer. Roosevelt became leader of the reform faction of Republicans in the New York State Legislature. After the simultaneous deaths of his first wife Alice Hathaway Lee Roosevelt and mother Martha Bulloch Roosevelt, he recuperated by buying and operating a cattle ranch in the Dakotas. Roosevelt served as the assistant secretary of the Navy under McKinley, and in 1898 helped plan the successful naval war against Spain. He resigned to help form and lead the Rough Riders, a unit that fought the Spanish Army in Cuba to great publicity. Returning a war hero, Roosevelt was elected New York''s governor in 1898. Because the New York state party leadership disliked his ambitious state agenda, they convinced McKinley to choose him as his running mate in the 1900 presidential election. The McKinley–Roosevelt ticket won a landslide victory.
As a leader of the progressive movement, Roosevelt championed his "Square Deal" domestic policies after taking over as president, which called for fairness for all citizens, breaking bad trusts, regulating railroads, and pure food and drugs. His pursuit of antitrust litigation in particular earned him the nickname "the Trust Buster". Roosevelt prioritized conservation and established national parks, forests, and monuments to preserve U.S. nat',
   '["clm_wiki_theodore-roosevelt_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 309);

-- 10. Toni Morrison
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_toni-morrison', 'person', 'toni-morrison', 'Toni Morrison', 'published', 'Chloe Anthony Wofford "Toni" Morrison (born Chloe Ardelia Wofford; February 18, 1931 – August 5, 2019) was an American novelist and editor. She was awarded the Nobel Prize in Literature in 1993. Her first novel, The Bluest Eye, was published in 1970. The critically acclaimed Song of Solomon (1977) brought her national attention and won the National Book Critics Circle Award. In 1988, Morrison won ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_toni-morrison', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_toni-morrison_intro', 'ent_toni-morrison', 'biography_intro', 'Introduction', 'Chloe Anthony Wofford "Toni" Morrison (born Chloe Ardelia Wofford; February 18, 1931 – August 5, 2019) was an American novelist and editor. She was awarded the Nobel Prize in Literature in 1993. Her first novel, The Bluest Eye, was published in 1970. The critically acclaimed Song of Solomon (1977) brought her national attention and won the National Book Critics Circle Award. In 1988, Morrison won the Pulitzer Prize for Beloved (1987). Some of her other notable works include The Bluest Eye (1970), Song of Solomon (1977), Sula (1973), and Recitatif (1983).
Born and raised in Lorain, Ohio, Morrison graduated from Howard University in 1953 with a B.A. in English. Morrison earned a master''s degree in American Literature from Cornell University in 1955. In 1957 she returned to Howard University, was married, and had two children before divorcing in 1964. Morrison became the first Black female editor for fiction at Random House in New York City in the late 1960s. She developed her own reputation as an author in the 1970s and ''80s. Her novel Beloved was made into a film in 1998. Morrison''s works are praised for addressing the harsh consequences of racism in the United States and the Black American experience.
The National Endowment for the Humanities selected Morrison for the Jefferson Lecture, the U.S. federal government''s highest honor for achievement in the humanities, in 1996. She was honored with the National Book Foundation''s Medal of Distinguished Contribution to American Letters the same year. President Barack Obama presented her with the Presidential Medal of Freedom on May 29, 2012. She received the PEN/Saul Bellow Award for Achievement in American Fiction in 2016. Morrison was inducted into the National Women''s Hall of Fame in 2020.',
   '["clm_wiki_toni-morrison_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 285);

-- 11. Abigail Johnson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_abigail-johnson', 'person', 'abigail-johnson', 'Abigail Johnson', 'published', 'Abigail Pierrepont Johnson (born December 19, 1961) is an American billionaire businesswoman, heiress and chief executive of Fidelity Investments. Her family and their affiliates own approximately 40% of Fidelity Investments, which was founded by her grandfather, Edward C. Johnson II.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_abigail-johnson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_abigail-johnson_intro', 'ent_abigail-johnson', 'biography_intro', 'Introduction', 'Abigail Pierrepont Johnson (born December 19, 1961) is an American billionaire businesswoman, heiress and chief executive of Fidelity Investments. Her family and their affiliates own approximately 40% of Fidelity Investments, which was founded by her grandfather, Edward C. Johnson II.
Since 2014, Johnson has been president and chief executive of Fidelity, and chair of its former sister company Fidelity International (FIL). In November 2016, Johnson was named chair and remained CEO and president, giving her full control of Fidelity.
Johnson''s net worth is approximately $47.3 billion according to Bloomberg L.P. and $35 billion according to Forbes. She is one of the world''s wealthiest women and the richest person residing in Massachusetts. She is also ranked on the "Forbes list of the World''s 100 Most Powerful Women". She is a board member of Breakthrough Energy Ventures.',
   '["clm_wiki_abigail-johnson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 135);

-- 12. Abraham Lincoln
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_abraham-lincoln', 'person', 'abraham-lincoln', 'Abraham Lincoln', 'published', 'Abraham Lincoln (February 12, 1809 – April 15, 1865) was the 16th president of the United States, serving from 1861 until his assassination in 1865. He led the United States through the American Civil War, defeating the Confederacy and playing a major role in the abolition of slavery.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_abraham-lincoln', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_abraham-lincoln_intro', 'ent_abraham-lincoln', 'biography_intro', 'Introduction', 'Abraham Lincoln (February 12, 1809 – April 15, 1865) was the 16th president of the United States, serving from 1861 until his assassination in 1865. He led the United States through the American Civil War, defeating the Confederacy and playing a major role in the abolition of slavery.
Born in a one-room log cabin in Kentucky, Lincoln was raised on the frontier. He was self-educated and became a lawyer, Illinois state legislator, and U.S. representative. Angered by the Kansas–Nebraska Act of 1854, which opened the territories to slavery, he became a leader of the new Republican Party. He reached a national audience in the 1858 Senate campaign debates against Stephen A. Douglas. Lincoln won the 1860 presidential election, becoming the first Republican president. His victory prompted a majority of the slave states to begin seceding and form the Confederate States. A month after Lincoln assumed the presidency, Confederate forces attacked Fort Sumter, starting the Civil War.
As a moderate Republican, Lincoln had to navigate conflicting political opinions from contentious factions during the war effort. He closely supervised the Union''s strategy and tactics, including the selection of generals and the implementation of a naval blockade of Southern ports. He suspended the writ of habeas corpus in April 1861, an action that Chief Justice Roger Taney found in Ex parte Merryman that only Congress could do, and he averted war with Britain by defusing the Trent Affair. On January 1, 1863, he issued the Emancipation Proclamation, which declared the slaves in the states "in rebellion" to be free. On November 19, 1863, he delivered the Gettysburg Address, which became one of the most famous speeches in American history. He promoted the Thirteenth Amendment to the U.S. Constitution, which, in 1865, abolished chattel slavery. Following his re-election in 1864, he sought to heal the war-torn nation through Reconstruction.

On April 14, 1865, five days after the Confederate surrender ',
   '["clm_wiki_abraham-lincoln_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 315);

-- 13. Alexander Graham Bell
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_alexander-graham-bell', 'person', 'alexander-graham-bell', 'Alexander Graham Bell', 'published', 'Alexander Graham Bell ( ; born Alexander Bell; March 3, 1847 – August 2, 1922) was a  Scottish-born Canadian-American inventor, scientist, and engineer who is credited with patenting the first practical telephone. He also co-founded the American Telephone and Telegraph Company (AT&T) in 1885.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_alexander-graham-bell', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_alexander-graham-bell_intro', 'ent_alexander-graham-bell', 'biography_intro', 'Introduction', 'Alexander Graham Bell ( ; born Alexander Bell; March 3, 1847 – August 2, 1922) was a  Scottish-born Canadian-American inventor, scientist, and engineer who is credited with patenting the first practical telephone. He also co-founded the American Telephone and Telegraph Company (AT&T) in 1885.
Bell''s father, grandfather, and brother had all been associated with work on elocution and speech, and both his mother and wife were deaf, profoundly influencing Bell''s life''s work. His research on hearing and speech further led him to experiment with hearing devices, which eventually culminated in his being awarded the first U.S. patent for the telephone, on March 7, 1876. Bell considered his invention an intrusion on his real work as a scientist and refused to have a telephone in his study.
Many other inventions marked Bell''s later life, including ground-breaking work in optical telecommunications, hydrofoils, and aeronautics. Bell also had a strong influence on the National Geographic Society and its magazine while serving as its second president from 1898 to 1903. For National Geographic, Bell wrote under the pseudonym H. A. Largelamb, an anagram of his name.
Beyond his work in engineering, Bell had a deep interest in the emerging science of heredity. His work in this area has been called "the soundest, and most useful study of human heredity proposed in nineteenth-century America ... Bell''s most notable contribution to basic science, as distinct from invention."',
   '["clm_wiki_alexander-graham-bell_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 231);

-- 14. Amelia Earhart
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_amelia-earhart', 'person', 'amelia-earhart', 'Amelia Earhart', 'published', 'Amelia Mary Earhart ( AIR-hart; born July 24, 1897; disappeared July 2, 1937; declared dead January 5, 1939) was an American aviator and aviation pioneer who became one of the most celebrated figures of early flight.  ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_amelia-earhart', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_amelia-earhart_intro', 'ent_amelia-earhart', 'biography_intro', 'Introduction', 'Amelia Mary Earhart ( AIR-hart; born July 24, 1897; disappeared July 2, 1937; declared dead January 5, 1939) was an American aviator and aviation pioneer who became one of the most celebrated figures of early flight.  
In 1928, she was the first female passenger to cross the Atlantic by airplane. In 1932, she became the first woman to make a nonstop solo transatlantic flight, and was awarded the Distinguished Flying Cross for her achievement. She was one of the first aviators to promote commercial air travel, wrote best-selling books about her flying experiences, and helped found the Ninety-Nines, an organization for female pilots.

On July 2, 1937, she disappeared over the Pacific Ocean while attempting to become the first female pilot to circumnavigate the world. Since her disappearance, Earhart  has become a global cultural figure and numerous films, documentaries, and books have recounted her life.',
   '["clm_wiki_amelia-earhart_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 145);

-- 15. Arnold Schwarzenegger
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_arnold-schwarzenegger', 'person', 'arnold-schwarzenegger', 'Arnold Schwarzenegger', 'published', 'Arnold Alois Schwarzenegger (born July 30, 1947) is an Austrian and American actor, businessman, film producer, politician, and former professional bodybuilder who served as the 38th governor of California from 2003 to 2011.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_arnold-schwarzenegger', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_arnold-schwarzenegger_intro', 'ent_arnold-schwarzenegger', 'biography_intro', 'Introduction', 'Arnold Alois Schwarzenegger (born July 30, 1947) is an Austrian and American actor, businessman, film producer, politician, and former professional bodybuilder who served as the 38th governor of California from 2003 to 2011.
Schwarzenegger began lifting weights at the age of 15 and won the Mr. Universe bodybuilding championship at the age of 20. He won the Mr. Olympia title seven times, tying with Phil Heath for the second-highest number of wins. Nicknamed the "Austrian Oak" in his bodybuilding days, he is regarded as one of the greatest bodybuilders of all time. He has written books and articles about bodybuilding, including the autobiographical Arnold: The Education of a Bodybuilder (1977) and The New Encyclopedia of Modern Bodybuilding (1998). The Arnold Sports Festival, the second-most prestigious bodybuilding event after the Mr. Olympia competition, is named after him. He appeared in the bodybuilding documentary Pumping Iron (1977), which set him on his way to a career in films.
After retiring from bodybuilding, Schwarzenegger gained worldwide fame in the 1980s as a Hollywood action star. His breakthrough came with his starring role in Conan the Barbarian (1982), which was followed by a sequel, Conan the Destroyer (1984). He subsequently starred as the Terminator in the science fiction film The Terminator (1984), and reprised the role in four sequels. Schwarzenegger''s other appearances include the action films Commando (1985), The Running Man (1987), Predator (1987), Total Recall (1990), and True Lies (1994), and the comedies Twins (1988), Kindergarten Cop (1990) and Jingle All the Way (1996). At the height of his career, Schwarzenegger was known for his rivalry with Sylvester Stallone. Films in which he has appeared have grossed over $5.4 billion worldwide. He is the founder of the film production company Oak Productions.
As a registered member of the Republican Party, Schwarzenegger chaired the President''s Council on Physical Fitness and Sports during most of',
   '["clm_wiki_arnold-schwarzenegger_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 310);

-- 16. Bob Dylan
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_bob-dylan', 'person', 'bob-dylan', 'Bob Dylan', 'published', 'Bob Dylan (legally Robert Dylan; born Robert Allen Zimmerman, May 24, 1941) is an American singer-songwriter. Described as one of the greatest songwriters of all time, Dylan has been a major figure in popular culture over his 69-year career. Dylan added increasingly sophisticated lyrical techniques to the folk music of the early 1960s, infusing it "with the intellectualism of classic literature an', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_bob-dylan', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_bob-dylan_intro', 'ent_bob-dylan', 'biography_intro', 'Introduction', 'Bob Dylan (legally Robert Dylan; born Robert Allen Zimmerman, May 24, 1941) is an American singer-songwriter. Described as one of the greatest songwriters of all time, Dylan has been a major figure in popular culture over his 69-year career. Dylan added increasingly sophisticated lyrical techniques to the folk music of the early 1960s, infusing it "with the intellectualism of classic literature and poetry". His lyrics incorporated political, social, and philosophical influences, defying pop music conventions and appealing to the burgeoning counterculture.
Dylan was born in St. Louis County, Minnesota. He moved to New York City in 1961 to pursue a music career. His 1962 debut album, Bob Dylan, containing traditional folk and blues material, was followed by his breakthrough album, The Freewheelin'' Bob Dylan (1963), which included "Girl from the North Country" and "A Hard Rain''s a-Gonna Fall", adapting older folk songs. His songs "Blowin'' in the Wind" (1963) and "The Times They Are a-Changin''" (1964) became anthems for the civil rights and antiwar movements. Dylan created controversy when he used electrically amplified rock instrumentation for his albums Bringing It All Back Home, Highway 61 Revisited (both 1965), and Blonde on Blonde (1966). His six-minute single "Like a Rolling Stone" (1965) expanded commercial and creative boundaries in popular music.
After a motorcycle crash in 1966, Dylan ceased touring for seven years. During this period, he recorded a large body of songs with members of the Band, which produced the album The Basement Tapes (1975). Dylan explored country music and rural themes on the albums John Wesley Harding (1967), Nashville Skyline (1969), and New Morning (1970). He gained acclaim for Blood on the Tracks (1975) and Time Out of Mind (1997), the latter of which earned him the Grammy Award for Album of the Year. Dylan still releases music and has toured continually since the late 1980s on what has become known as the Never Ending Tour. Since 199',
   '["clm_wiki_bob-dylan_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 318);

-- 17. Bruno Mars
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_bruno-mars', 'person', 'bruno-mars', 'Bruno Mars', 'published', 'Peter Gene Hernandez (born October 8, 1985), known professionally as Bruno Mars, is an American singer-songwriter, record producer and dancer. Regarded as a pop icon, he is known for his three-octave tenor vocal range, live performances, retro showmanship, and musical versatility. He is accompanied by his band, the Hooligans. Raised in Honolulu, Mars gained recognition in Hawaii as a child for his', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_bruno-mars', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_bruno-mars_intro', 'ent_bruno-mars', 'biography_intro', 'Introduction', 'Peter Gene Hernandez (born October 8, 1985), known professionally as Bruno Mars, is an American singer-songwriter, record producer and dancer. Regarded as a pop icon, he is known for his three-octave tenor vocal range, live performances, retro showmanship, and musical versatility. He is accompanied by his band, the Hooligans. Raised in Honolulu, Mars gained recognition in Hawaii as a child for his impersonation of Elvis Presley, before moving to Los Angeles in 2003 to pursue a musical career.
Mars established his name in the music industry as a songwriter and co-founder of the production team the Smeezingtons. He rose to fame as a recording artist after featuring on the US number-one single "Nothin'' on You" (2009) by B.o.B. Mars''s first three studio albums—Doo-Wops & Hooligans (2010), Unorthodox Jukebox (2012), and 24K Magic (2016)—found critical and commercial success, with the lattermost winning the Grammy Award for Album of the Year. The albums spawned multiple international hit singles, including "Just the Way You Are", "Grenade", "The Lazy Song", "Locked Out of Heaven", "When I Was Your Man", "Treasure", "24K Magic", "That''s What I Like", and "Finesse". He also featured on Mark Ronson''s 2014 single "Uptown Funk", which became Billboard''s best-performing song of the 2010s.
In 2021, Mars released An Evening with Silk Sonic alongside Anderson .Paak, as the musical superduo Silk Sonic. The album contained the US number-one single "Leave the Door Open". Following two record-breaking number-one duets in 2024, "Die with a Smile" with Lady Gaga and "APT." with Rosé, Mars released his first solo album in ten years, The Romantic (2026). It spawned the successful singles "I Just Might" and "Risk It All"; the former became his first song to debut atop the Billboard Hot 100.
Mars has sold over 150 million records worldwide, making him one of the best-selling music artists of all time. He has ten number-one singles on the Billboard Hot 100 and the most weeks atop the Billboa',
   '["clm_wiki_bruno-mars_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 322);

-- 18. Charles Lindbergh
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_charles-lindbergh', 'person', 'charles-lindbergh', 'Charles Lindbergh', 'published', 'Charles Augustus Lindbergh (February 4, 1902 – August 26, 1974) was an American aviator, military officer, and author. On May 20–21, 1927, he made the first nonstop flight from New York to Paris, a distance of 3,600 miles (5,800 km), flying alone for over 33 hours. His aircraft, the Spirit of St. Louis, was built to compete for the $25,000 Orteig Prize for the first flight between the two cities. ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_charles-lindbergh', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_charles-lindbergh_intro', 'ent_charles-lindbergh', 'biography_intro', 'Introduction', 'Charles Augustus Lindbergh (February 4, 1902 – August 26, 1974) was an American aviator, military officer, and author. On May 20–21, 1927, he made the first nonstop flight from New York to Paris, a distance of 3,600 miles (5,800 km), flying alone for over 33 hours. His aircraft, the Spirit of St. Louis, was built to compete for the $25,000 Orteig Prize for the first flight between the two cities. Although not the first transatlantic flight, it was the first solo crossing of the Atlantic and the longest at the time by nearly 2,000 miles (3,200 km), setting a new flight distance world record. The achievement garnered Lindbergh worldwide fame and stands as one of the most consequential flights in history, signalling a new era of air transportation between parts of the globe.
Lindbergh was raised mostly in Little Falls, Minnesota, and Washington, D.C., the son of U.S. congressman Charles August Lindbergh. He became a U.S. Army Air Service cadet in 1924. The next year, he was hired as a U.S. Air Mail pilot in the Greater St. Louis area, where he began to prepare for crossing the Atlantic. For his 1927 flight, President Calvin Coolidge presented him both the Distinguished Flying Cross and Medal of Honor, the highest U.S. military award. He was promoted to colonel in the U.S. Army Air Corps Reserve and also earned the highest French order of merit, the Legion of Honor. His achievement spurred significant global interest in flight training, commercial aviation and air mail, which revolutionized the aviation industry worldwide (a phenomenon dubbed the "Lindbergh Boom"), and he spent much time promoting these industries.
Time magazine named Lindbergh its first Man of the Year for 1927, President Herbert Hoover appointed him to the National Advisory Committee for Aeronautics in 1929, and he received the Congressional Gold Medal in 1930. In 1931, he and French surgeon Alexis Carrel began work on inventing the first perfusion pump, a device credited with making future heart surg',
   '["clm_wiki_charles-lindbergh_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 330);

-- 19. Chester W. Nimitz
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_chester-nimitz', 'person', 'chester-nimitz', 'Chester W. Nimitz', 'published', 'Chester William Nimitz (; 24 February 1885 – 20 February 1966) was a fleet admiral in the United States Navy. He played a major role in the naval history of World War II as Commander in Chief, US Pacific Fleet, and Commander in Chief, Pacific Ocean Areas, commanding Allied air, land, and sea forces during World War II.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_chester-nimitz', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_chester-nimitz_intro', 'ent_chester-nimitz', 'biography_intro', 'Introduction', 'Chester William Nimitz (; 24 February 1885 – 20 February 1966) was a fleet admiral in the United States Navy. He played a major role in the naval history of World War II as Commander in Chief, US Pacific Fleet, and Commander in Chief, Pacific Ocean Areas, commanding Allied air, land, and sea forces during World War II.
Nimitz was the leading U.S. Navy authority on submarines. Qualified in submarines during his early years, Nimitz later oversaw the conversion of these vessels'' propulsion from gasoline to diesel, and then later was key in acquiring approval to build the world''s first nuclear-powered submarine, USS Nautilus, whose propulsion system later completely superseded diesel-powered submarines in the United States. Beginning in 1917, Nimitz was the Navy''s leading developer of underway replenishment techniques, the tool which during the Pacific war would allow the American fleet to operate away from port almost indefinitely. The chief of the Navy''s Bureau of Navigation from 1939 to 1942, Nimitz served as the chief of naval operations from 1945 until 1947. He was the United States'' last surviving officer who served in the rank of fleet admiral. The USS Nimitz supercarrier, the lead ship of her class, is named after Nimitz.',
   '["clm_wiki_chester-nimitz_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 202);

-- 20. Christina Applegate
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_christina-applegate', 'person', 'christina-applegate', 'Christina Applegate', 'published', 'Christina Applegate (born November 25, 1971) is a retired American actress. She gained recognition in the late 1980s for playing Kelly Bundy in the Fox sitcom Married... with Children (1987–1997). Her titular role in the sitcom Jesse (1998–2000), earned her first nomination for the Golden Globe Award for Best Actress – Television Series Musical or Comedy. For her guest role in the NBC sitcom Frien', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_christina-applegate', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_christina-applegate_intro', 'ent_christina-applegate', 'biography_intro', 'Introduction', 'Christina Applegate (born November 25, 1971) is a retired American actress. She gained recognition in the late 1980s for playing Kelly Bundy in the Fox sitcom Married... with Children (1987–1997). Her titular role in the sitcom Jesse (1998–2000), earned her first nomination for the Golden Globe Award for Best Actress – Television Series Musical or Comedy. For her guest role in the NBC sitcom Friends (2002–2003), she won the Primetime Emmy Award for Outstanding Guest Actress in a Comedy Series. She received additional Emmy and Golden Globe nominations for her roles in the television sitcom Samantha Who? (2007–2009), starred in a short-lived sitcom Up All Night (2011–2012), and the dark tragicomedy series Dead to Me (2019–2022).  Applegate served as a producer of all three aforementioned projects. 
Applegate has achieved success in films of varying genres, particularly in comedies such as Don''t Tell Mom the Babysitter''s Dead (1991), The Big Hit (1998), The Sweetest Thing (2002), Anchorman: The Legend of Ron Burgundy (2004) and Anchorman 2: The Legend Continues (2013), Hall Pass (2011), Vacation (2015), Bad Moms (2016), and Crash Pad (2017). On stage, Applegate received a nomination for the Tony Award for Best Actress in a Musical for her debut performance as the title character in the Broadway musical revival Sweet Charity (2005).
After being diagnosed with multiple sclerosis in August 2021, Applegate announced she would step away from appearing on-screen, but would continue doing voice work.
She published a memoir in 2026 which became a New York Times Best Seller, where she focused on resilience and self-acceptance.',
   '["clm_wiki_christina-applegate_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 258);

-- 21. Dr. Seuss
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_dr-seuss', 'person', 'dr-seuss', 'Dr. Seuss', 'published', 'Theodor Seuss Geisel (  sooss GHY-zəl, zoyss -⁠; March 2, 1904 – September 24, 1991) was an American children''s author, illustrator, animator, and cartoonist. He is known for his work writing and illustrating more than 60 books under the pen name Dr. Seuss ( sooss, zooss). His work includes many of the most popular children''s books of all time, selling over 600 million copies and being translated ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_dr-seuss', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_dr-seuss_intro', 'ent_dr-seuss', 'biography_intro', 'Introduction', 'Theodor Seuss Geisel (  sooss GHY-zəl, zoyss -⁠; March 2, 1904 – September 24, 1991) was an American children''s author, illustrator, animator, and cartoonist. He is known for his work writing and illustrating more than 60 books under the pen name Dr. Seuss ( sooss, zooss). His work includes many of the most popular children''s books of all time, selling over 600 million copies and being translated into more than 20 languages by the time of his death.
Geisel adopted the name "Dr. Seuss" as an undergraduate at Dartmouth College and as a graduate student at Lincoln College, Oxford. He left Oxford in 1927 to begin his career as an illustrator and cartoonist for Vanity Fair, Life, and various other publications. He also worked as an illustrator for advertising campaigns, including for Flit and Standard Oil, and as a political cartoonist for the New York newspaper PM. He published his first children''s book And to Think That I Saw It on Mulberry Street in 1937. During World War II, he took a brief hiatus from children''s literature to illustrate political cartoons, and he worked in the animation and film department of the United States Army.
After the war, Geisel returned to writing children''s books, writing acclaimed works such as If I Ran the Zoo (1950), Horton Hears a Who! (1954), The Cat in the Hat (1957), How the Grinch Stole Christmas! (1957), Green Eggs and Ham (1960), One Fish, Two Fish, Red Fish, Blue Fish (1960), The Sneetches and Other Stories (1961), The Lorax (1971), The Butter Battle Book (1984), and Oh, the Places You''ll Go! (1990). He published over 60 books during his career, which have spawned numerous adaptations, including eleven television specials, five feature films, a Broadway musical, and four television series.
He received two Primetime Emmy Awards for Outstanding Children''s Special for Halloween Is Grinch Night (1978) and Outstanding Animated Program for The Grinch Grinches the Cat in the Hat (1982). In 1984, he won a Pulitzer Prize Special Citatio',
   '["clm_wiki_dr-seuss_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 333);

-- 22. Edwin Hubble
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_edwin-hubble', 'person', 'edwin-hubble', 'Edwin Hubble', 'published', 'Edwin Powell Hubble (November 20, 1889 – September 28, 1953) was an American astronomer. He played a crucial role in establishing the fields of extragalactic astronomy and observational cosmology. Hubble proved that many objects previously thought to be clouds of dust and gas and classified as "nebulae" were actually galaxies beyond the Milky Way. He used the strong direct relationship between a c', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_edwin-hubble', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_edwin-hubble_intro', 'ent_edwin-hubble', 'biography_intro', 'Introduction', 'Edwin Powell Hubble (November 20, 1889 – September 28, 1953) was an American astronomer. He played a crucial role in establishing the fields of extragalactic astronomy and observational cosmology. Hubble proved that many objects previously thought to be clouds of dust and gas and classified as "nebulae" were actually galaxies beyond the Milky Way. He used the strong direct relationship between a classical Cepheid variable''s luminosity and pulsation period (discovered in 1908 by Henrietta Swan Leavitt) for scaling galactic and extragalactic distances.
Hubble confirmed in 1929 that the recessional velocity of a galaxy increases with its distance from Earth, a behavior that became known as Hubble''s law, although it had been proposed two years earlier by Georges Lemaître. The Hubble law implies that the universe is expanding. A decade before, American astronomer Vesto Slipher had provided the first evidence that the light from many of these nebulae was strongly red-shifted, indicative of high recession velocities.
Hubble''s name is most widely recognized for the Hubble Space Telescope, which was named in his honor, with a model prominently displayed in his hometown of Marshfield, Missouri.',
   '["clm_wiki_edwin-hubble_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 183);

-- 23. Eminem
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_eminem', 'person', 'eminem', 'Eminem', 'published', 'Marshall Bruce Mathers III (born October 17, 1972), known professionally as Eminem, is an American rapper, songwriter, record producer, and record executive. Known for his rap flow and conscious rap, which includes political criticism and social commentary, he is widely regarded as one of the greatest and most influential rappers of all time, often credited with popularizing hip-hop in Middle Amer', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_eminem', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_eminem_intro', 'ent_eminem', 'biography_intro', 'Introduction', 'Marshall Bruce Mathers III (born October 17, 1972), known professionally as Eminem, is an American rapper, songwriter, record producer, and record executive. Known for his rap flow and conscious rap, which includes political criticism and social commentary, he is widely regarded as one of the greatest and most influential rappers of all time, often credited with popularizing hip-hop in Middle America and the acceptance of white rappers. While much of his transgressive art during the late 1990s and early 2000s made him a controversial figure, Eminem has become a representation of popular angst in lower-income America.
After the release of his debut album, Infinite (1996), and the extended play Slim Shady EP (1997), Eminem signed with Dr. Dre''s Aftermath Entertainment and achieved mainstream popularity with The Slim Shady LP (1999). Each of his next two releases, The Marshall Mathers LP (2000) and The Eminem Show (2002), sold over one million copies in a single week; the latter became the best-selling album worldwide in 2002 and the best-selling hip-hop album of all time. After the release of Encore (2004), Eminem took a hiatus due in part to struggles with prescription drug addiction. He returned to the music industry with the releases of Relapse (2009) and Recovery (2010); the latter was the best-selling album worldwide in 2010. Each of his subsequent releases—The Marshall Mathers LP 2 (2013), Revival (2017), Kamikaze (2018), Music to Be Murdered By (2020), and The Death of Slim Shady (Coup de Grâce) (2024)—has debuted atop the US Billboard 200 chart.
Eminem was also a member of the hip-hop groups New Jacks, Soul Intent, Outsidaz, and D12, as well as the duo Bad Meets Evil with Royce da 5''9". In 2002, he starred in the drama film 8 Mile, receiving critical acclaim for playing a dramatized version of himself. "Lose Yourself", a song from the 8 Mile soundtrack, topped the US Billboard Hot 100 chart for 12 weeks—the most for a solo rap song—and won the Academy Award fo',
   '["clm_wiki_eminem_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 330);

-- 24. Helen Keller
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_helen-keller', 'person', 'helen-keller', 'Helen Keller', 'published', 'Helen Adams Keller (June 27, 1880 – June 1, 1968) was an American author, disability rights advocate, political activist and lecturer. Born in West Tuscumbia, Alabama, she lost her sight and her hearing after a bout of illness when she was 19 months old. She then communicated primarily using home signs until the age of seven, when she met her first teacher and life-long companion Anne Sullivan. Su', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_helen-keller', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_helen-keller_intro', 'ent_helen-keller', 'biography_intro', 'Introduction', 'Helen Adams Keller (June 27, 1880 – June 1, 1968) was an American author, disability rights advocate, political activist and lecturer. Born in West Tuscumbia, Alabama, she lost her sight and her hearing after a bout of illness when she was 19 months old. She then communicated primarily using home signs until the age of seven, when she met her first teacher and life-long companion Anne Sullivan. Sullivan taught Keller language, including reading and writing. After an education at both specialist and mainstream schools, Keller attended Radcliffe College of Harvard University and became the first deafblind person in the United States to earn a college diploma.
Keller was also a prolific author, writing 14 books and hundreds of speeches and essays on topics ranging from animals to Mahatma Gandhi. Keller campaigned for those with disabilities and for women''s suffrage, labor rights, and world peace. In 1909, she joined the Socialist Party of America (SPA). She was a founding member of the American Civil Liberties Union (ACLU).
Keller''s autobiography, The Story of My Life (1903), publicized her education and life with Sullivan. The playwright William Gibson wrote a theatrical adaptation, The Miracle Worker, in 1959, which he adapted as a film under the same title in 1962. Her birthplace has been designated and preserved as a National Historic Landmark. Since 1954, it has been operated as a house museum and sponsors an annual "Helen Keller Day".',
   '["clm_wiki_helen-keller_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 235);

-- 26. Jane Addams
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_jane-addams', 'person', 'jane-addams', 'Jane Addams', 'published', 'Laura Jane Addams (September 6, 1860 – May 21, 1935) was an American settlement activist, reformer, social worker, sociologist, public administrator, philosopher, and author. She was a leader in the history of social work and women''s suffrage. In 1889, Addams co-founded Hull House, one of America''s most famous settlement houses, in Chicago, Illinois, providing extensive social services to poor, la', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_jane-addams', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_jane-addams_intro', 'ent_jane-addams', 'biography_intro', 'Introduction', 'Laura Jane Addams (September 6, 1860 – May 21, 1935) was an American settlement activist, reformer, social worker, sociologist, public administrator, philosopher, and author. She was a leader in the history of social work and women''s suffrage. In 1889, Addams co-founded Hull House, one of America''s most famous settlement houses, in Chicago, Illinois, providing extensive social services to poor, largely immigrant families. Philosophically a "radical pragmatist", she was arguably the first woman public philosopher in the United States. In the Progressive Era, when even presidents such as Theodore Roosevelt and Woodrow Wilson identified themselves as reformers and might be seen as social activists, Addams was one of the most prominent reformers.
An advocate for world peace, and recognized as the founder of the social work profession in the United States, in 1931 Addams became the first American woman to be awarded the Nobel Peace Prize; she shared the win with Nicholas Murray Butler. Earlier, Addams was awarded an honorary Master of Arts degree from Yale University in 1910, becoming the first woman to receive an honorary degree from the school. In 1920, she was a co-founder of the American Civil Liberties Union (ACLU).
Addams helped America address and focus on issues that were of concern to mothers, as well as the domestic work assigned to women, such as the needs of children, local public health, and world peace. In her essay "Utilization of Women in City Government", Addams noted the connection between the workings of government and the household, stating that many departments of government, such as sanitation and the schooling of children, could be traced back to traditional women''s roles in the private sphere. When she died in 1935, Addams was the best-known female public figure in the United States.',
   '["clm_wiki_jane-addams_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 291);

-- 27. Johnny Carson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_johnny-carson', 'person', 'johnny-carson', 'Johnny Carson', 'published', 'John William Carson (October 23, 1925 – January 23, 2005) was an American television host, comedian, and writer. He was best known as the host of The Tonight Show Starring Johnny Carson, the third installment of The Tonight Show, which aired on NBC from 1962 to 1992.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_johnny-carson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_johnny-carson_intro', 'ent_johnny-carson', 'biography_intro', 'Introduction', 'John William Carson (October 23, 1925 – January 23, 2005) was an American television host, comedian, and writer. He was best known as the host of The Tonight Show Starring Johnny Carson, the third installment of The Tonight Show, which aired on NBC from 1962 to 1992.
Born and raised in Iowa, Carson hitchhiked to Hollywood after graduating from high school. During World War II, Carson served in the United States Navy. After the war, Carson graduated from the University of Nebraska with a Bachelor of Arts. Carson began his a career in radio, then moved to television and took over as host of the late-night talk show Tonight from Jack Paar in 1962.
In a career spanning four decades, Carson received six Primetime Emmy Awards, the Television Academy''s 1980 Governor''s Award, and a 1985 Peabody Award. He was inducted into the Television Academy Hall of Fame in 1987. Carson was awarded the Presidential Medal of Freedom in 1992 and received a Kennedy Center Honor in 1993. 
Carson remained an American cultural icon even after his retirement in 1992. He adopted a casual, conversational approach with extensive interaction with guests, an approach pioneered by Arthur Godfrey and previous Tonight Show hosts Paar and Steve Allen, but enhanced by Carson''s lightning-quick wit. A cultural phenomenon, Carson is widely regarded as the King of Late Night Television. Former late-night host and friend David Letterman, as well as many others, have cited Carson''s influence.',
   '["clm_wiki_johnny-carson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 241);

-- 28. Kanye West
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_kanye-west', 'person', 'kanye-west', 'Kanye West', 'published', 'Ye ( YAY; born Kanye Omari West  KAHN-yay oh-MAH-ree, June 8, 1977) is an American rapper, songwriter, and record producer. He has been listed among the greatest rappers of all time and referred to as one of the most prominent figures in hip-hop. His music, characterized by frequent stylistic shifts, has been credited with facilitating the emergence of rappers who did not conform to gangsta rap co', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_kanye-west', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_kanye-west_intro', 'ent_kanye-west', 'biography_intro', 'Introduction', 'Ye ( YAY; born Kanye Omari West  KAHN-yay oh-MAH-ree, June 8, 1977) is an American rapper, songwriter, and record producer. He has been listed among the greatest rappers of all time and referred to as one of the most prominent figures in hip-hop. His music, characterized by frequent stylistic shifts, has been credited with facilitating the emergence of rappers who did not conform to gangsta rap conventions. He is also known for his controversial public persona, including his polarizing cultural and political commentary.
West was born in Atlanta and raised in Chicago. After dropping out of college to pursue a music career, he became a producer for Jay-Z''s Roc-A-Fella Records and garnered recognition for his "chipmunk soul" production style before signing with the label as a recording artist. His debut studio album, The College Dropout (2004), received acclaim, and his second album, Late Registration (2005), became his first of eleven US Billboard 200 number-one albums. He has five US Billboard Hot 100 number-one singles―"Slow Jamz" (2003), "Gold Digger" (2005), "Stronger" (2007), "E.T." (2011, as a featured artist), and "Carnival" (2024)―and was the first rapper to top the chart across three decades. Beyond his musical career, he has collaborated with Nike, Louis Vuitton, and Gap Inc. on clothing and footwear, and led the Yeezy collaboration with Adidas.
West''s life has been the subject of significant media coverage. He has been a frequent source of controversy due to his conduct on social media, at award shows, and in public settings, as well as his comments on the music and fashion industries, U.S. politics, race, and slavery. His Christian faith, relationships, feuds with other celebrities, and mental health have also been topics of media attention. From 2014 to 2022, he was married to Kim Kardashian, with whom he has four children. In 2020, West ran an unsuccessful independent presidential campaign. From 2022 to 2025, West drew widespread condemnation—and lost sp',
   '["clm_wiki_kanye-west_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 317);

-- 29. Leslie Groves
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_leslie-groves', 'person', 'leslie-groves', 'Leslie Groves', 'published', 'Leslie Richard Groves Jr. (17 August 1896 – 13 July 1970) was a United States Army Corps of Engineers officer who oversaw the construction of the Pentagon and directed the Manhattan Project, the top secret research program that developed the atomic bomb during World War II, leading to the atomic bombings of Hiroshima and Nagasaki in 1945.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_leslie-groves', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_leslie-groves_intro', 'ent_leslie-groves', 'biography_intro', 'Introduction', 'Leslie Richard Groves Jr. (17 August 1896 – 13 July 1970) was a United States Army Corps of Engineers officer who oversaw the construction of the Pentagon and directed the Manhattan Project, the top secret research program that developed the atomic bomb during World War II, leading to the atomic bombings of Hiroshima and Nagasaki in 1945.
The son of a U.S. Army chaplain, Groves lived at various Army posts during his childhood. In 1918, he graduated fourth in his class at the United States Military Academy at West Point and was commissioned into the United States Army Corps of Engineers. In 1929, he went to Nicaragua as part of an expedition to conduct a survey for the Inter-Oceanic Nicaragua Canal. Following the 1931 Nicaraguan earthquake, Groves took over Managua''s water supply system, for which he was awarded the Nicaraguan Presidential Medal of Merit. He attended the Command and General Staff School at Fort Leavenworth, Kansas, in 1935 and 1936, and the Army War College in 1938 and 1939, after which he was posted to the War Department General Staff. Groves developed "a reputation as a doer, a driver, and a stickler for duty". In 1940 he became special assistant for construction to the Quartermaster General, tasked with inspecting construction sites and checking on their progress. In August 1941, he was appointed to create the gigantic office complex for the War Department''s 40,000 staff that would ultimately become the Pentagon.
In September 1942, Groves took charge of the Manhattan Project. He was involved in most aspects of the atomic bomb''s development: he participated in the selection of sites for research and production at Oak Ridge, Tennessee; Los Alamos, New Mexico; and Hanford, Washington. He directed the enormous construction effort, made critical decisions on the various methods of isotope separation, acquired raw materials, directed the collection of military intelligence on the German nuclear energy project and helped select the cities in Japan that w',
   '["clm_wiki_leslie-groves_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 323);

-- 30. Lisa Su
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_lisa-su', 'person', 'lisa-su', 'Lisa Su', 'published', 'Lisa Tzwu-Fang Su (Chinese: 蘇姿丰; Wade–Giles: Sū Tzū-fēng; Tâi-lô: Soo Tsu-hong; born November 7, 1969) is a Taiwanese and American business executive, computer scientist, and electrical engineer who has been the president and CEO of the American semiconductor company AMD since 2014. ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_lisa-su', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_lisa-su_intro', 'ent_lisa-su', 'biography_intro', 'Introduction', 'Lisa Tzwu-Fang Su (Chinese: 蘇姿丰; Wade–Giles: Sū Tzū-fēng; Tâi-lô: Soo Tsu-hong; born November 7, 1969) is a Taiwanese and American business executive, computer scientist, and electrical engineer who has been the president and CEO of the American semiconductor company AMD since 2014. 
Su was born in Taiwan and immigrated to the United States with her family as a young child. After earning three degrees from the Massachusetts Institute of Technology (MIT), she worked at Texas Instruments, IBM, and Freescale Semiconductor in engineering and management positions. She is known for her work developing silicon-on-insulator semiconductor manufacturing technologies and more efficient semiconductor chips during her time as vice president of IBM''s Semiconductor Research and Development Center. Su is also a member of The Business Council.
Su was appointed president and CEO of AMD in October 2014, after joining the company in 2012 and holding roles such as senior vice president of AMD''s global business units and chief operating officer. She previously was on the board of Cisco Systems and is currently on the board of the U.S. Semiconductor Industry Association, in addition to being a fellow of the Institute of Electrical and Electronics Engineers (IEEE). 
Recognized with a number of awards and accolades, Su was named Executive of the Year by EE Times in 2014, one of the World''s Greatest Leaders in 2017 by Fortune and was the first woman to be named Time magazine CEO of the year in 2014, and a second time in 2024. She also became the first woman to receive the IEEE Robert Noyce Medal in 2021. During her tenure as CEO of AMD, the market capitalization of AMD has grown from roughly $3 billion to more than $700 billion. AMD also overtook Intel in market capitalization for the first time. In 2024, Su was selected the Fellow of Industrial Technology Research Institute (ITRI). She was named the tenth most powerful woman in the world for 2025 by Forbes. She was named as one of the "Arch',
   '["clm_wiki_lisa-su_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 330);

-- 31. Lyndon B. Johnson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_lyndon-b-johnson', 'person', 'lyndon-b-johnson', 'Lyndon B. Johnson', 'published', 'Lyndon Baines Johnson (August 27, 1908 – January 22, 1973), also known as LBJ, was the 36th president of the United States from 1963 to 1969. Johnson was vice president under John F. Kennedy from 1961 until Kennedy''s assassination in 1963, when he assumed the presidency. Before becoming vice president, he served in both houses of the U.S. Congress, representing Texas as a member of the Democratic ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_lyndon-b-johnson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_lyndon-b-johnson_intro', 'ent_lyndon-b-johnson', 'biography_intro', 'Introduction', 'Lyndon Baines Johnson (August 27, 1908 – January 22, 1973), also known as LBJ, was the 36th president of the United States from 1963 to 1969. Johnson was vice president under John F. Kennedy from 1961 until Kennedy''s assassination in 1963, when he assumed the presidency. Before becoming vice president, he served in both houses of the U.S. Congress, representing Texas as a member of the Democratic Party.
Born in Stonewall, Texas, Johnson worked as a teacher and a congressional aide before winning election to the U.S. House of Representatives in 1937. In 1948, he was controversially declared the winner in the Democratic primary for the U.S. Senate election in Texas before winning the general election. He became Senate majority whip in 1951, Senate Democratic leader in 1953 and majority leader in 1954. Senator Kennedy bested Johnson and his other rivals for the 1960 Democratic presidential nomination before surprising many by offering to make Johnson his vice presidential running mate. The Kennedy–Johnson ticket won the general election. Johnson assumed the presidency in 1963, after Kennedy was assassinated. The following year, Johnson won reelection to the presidency in a landslide, winning the largest share of the popular vote for the Democratic Party in history, and the highest for any American presidential candidate in history.
Johnson''s domestic policy agenda known as the Great Society was aimed at expanding civil rights, public broadcasting, access to health care, aid to education and the arts, urban and rural development, consumer protection, environmentalism, and public services. He sought to create better living conditions for low-income Americans by spearheading the War on Poverty. As part of these efforts, Johnson signed the Social Security Amendments of 1965, which resulted in the creation of Medicare and Medicaid. Johnson made the Apollo Moon landing program a national priority; enacted the Higher Education Act of 1965 which established federally insured s',
   '["clm_wiki_lyndon-b-johnson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 310);

-- 32. MacKenzie Scott
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_mackenzie-scott', 'person', 'mackenzie-scott', 'MacKenzie Scott', 'published', 'MacKenzie Scott (née Tuttle, formerly Bezos; born April 7, 1970) is an American novelist, philanthropist, and early contributor to Amazon. She was married to Jeff Bezos, the co-founder of Amazon, from 1993 to 2019.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_mackenzie-scott', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_mackenzie-scott_intro', 'ent_mackenzie-scott', 'biography_intro', 'Introduction', 'MacKenzie Scott (née Tuttle, formerly Bezos; born April 7, 1970) is an American novelist, philanthropist, and early contributor to Amazon. She was married to Jeff Bezos, the co-founder of Amazon, from 1993 to 2019.
As of December 2025, she had a net worth of US$40.0 billion, according to Bloomberg Billionaires Index, owning a 1.3 percent stake in Amazon. As such, Scott was the third-wealthiest woman in the United States and the 40th-wealthiest person in the world. Scott was named one of Time''s 100 most influential people in 2020 and one of the world''s 100 most powerful women by Forbes in 2021, 2023 and 2025.
In 2006, Scott won an American Book Award for her 2005 debut novel, The Testing of Luther Albright. Her second novel, Traps, was published in 2013.
She has been executive director of Bystander Revolution, an anti-bullying organization, since she founded it in 2014. She is committed to giving at least half of her wealth to charity as a signatory to the Giving Pledge. Scott made $5.8 billion in charitable gifts in 2020, one of the largest annual distributions by a private individual to working charities. She donated a further $2.7 billion in 2021. As of December 2025, Scott had given a total of $26.3 billion to over 1,600 charitable organizations through her vehicle, Yield Giving.',
   '["clm_wiki_mackenzie-scott_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 219);

-- 33. Magic Johnson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_magic-johnson', 'person', 'magic-johnson', 'Magic Johnson', 'published', 'Earvin "Magic" Johnson Jr. (born August 14, 1959) is an American businessman and former professional basketball player. He is widely regarded as the greatest point guard of all time and one of the greatest basketball players in history. Johnson spent his entire career with the Los Angeles Lakers in the National Basketball Association (NBA). After winning a national championship with the Michigan S', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_magic-johnson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_magic-johnson_intro', 'ent_magic-johnson', 'biography_intro', 'Introduction', 'Earvin "Magic" Johnson Jr. (born August 14, 1959) is an American businessman and former professional basketball player. He is widely regarded as the greatest point guard of all time and one of the greatest basketball players in history. Johnson spent his entire career with the Los Angeles Lakers in the National Basketball Association (NBA). After winning a national championship with the Michigan State Spartans in 1979, Johnson was selected first overall in the 1979 NBA draft by the Lakers, then led the team to five NBA championships during their "Showtime" era. Johnson retired abruptly in 1991 after announcing that he had contracted HIV, but returned to play in the 1992 All-Star Game, winning the All-Star MVP Award. He retired again after fellow players protested his return, but returned in 1996, at age 36, to play 32 games for the Lakers before retiring for the third and final time.
Known for his extraordinary court vision, passing abilities, and leadership, Johnson was one of the most accomplished and influential players in basketball history. He received three NBA Most Valuable Player awards, three NBA Finals MVP awards, nine All-NBA First Team designations, and twelve All-Star Game selections. He led the league in regular-season assists four times. Johnson holds the NBA records for average assists per game in the regular season (11.19) and in the playoffs (12.35 assists per game). He also holds the NBA playoffs records for most career assists and triple-doubles. Johnson was the co-captain of the 1992 United States men''s Olympic basketball team ("The Dream Team"), which won the Olympic gold medal in Barcelona. Johnson is one of eight players to achieve the basketball Triple Crown. After leaving the NBA in 1991, he formed the Magic Johnson All-Stars, a barnstorming team that traveled around the world playing exhibition games.
Johnson was honored as one of the 50 Greatest Players in NBA History in 1996 and selected to the NBA 75th Anniversary Team in 2021, and beca',
   '["clm_wiki_magic-johnson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 325);

-- 34. Margaret Hamilton
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_margaret-hamilton', 'person', 'margaret-hamilton', 'Margaret Hamilton', 'published', 'Margaret Hamilton may refer to:', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_margaret-hamilton', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_margaret-hamilton_intro', 'ent_margaret-hamilton', 'biography_intro', 'Introduction', 'Margaret Hamilton may refer to:

Margaret Hamilton (nurse) (1840–1922), American nurse in the Civil War
Maggie Hamilton (1867–1952), Scottish artist
Margaret Hamilton (educator) (1871–1969), American educator
Margaret Hamilton (actress) (1902–1985), American film character actress
Margaret Hamilton (software engineer) (born 1936), American software engineer
Margaret Hamilton (publisher) (1941–2022), Australian publisher of children''s literature',
   '["clm_wiki_margaret-hamilton_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 52);

-- 35. Mark Twain
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_mark-twain', 'person', 'mark-twain', 'Mark Twain', 'published', 'Samuel Langhorne Clemens (November 30, 1835 – April 21, 1910), known by the pen name Mark Twain, was an American writer, humorist, and essayist. He has been praised as the "greatest humorist the United States has produced", with William Faulkner calling him "the father of American literature". Twain''s novels include The Adventures of Tom Sawyer (1876) and its sequel, Adventures of Huckleberry Finn', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_mark-twain', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_mark-twain_intro', 'ent_mark-twain', 'biography_intro', 'Introduction', 'Samuel Langhorne Clemens (November 30, 1835 – April 21, 1910), known by the pen name Mark Twain, was an American writer, humorist, and essayist. He has been praised as the "greatest humorist the United States has produced", with William Faulkner calling him "the father of American literature". Twain''s novels include The Adventures of Tom Sawyer (1876) and its sequel, Adventures of Huckleberry Finn (1884), with the latter often called the "Great American Novel". He also wrote A Connecticut Yankee in King Arthur''s Court (1889) and Pudd''nhead Wilson (1894) and cowrote The Gilded Age: A Tale of Today (1873) with Charles Dudley Warner.
Twain was raised in Hannibal, Missouri, which later provided the setting for both Tom Sawyer and Huckleberry Finn. He served an apprenticeship with a printer early in his career, and then worked as a typesetter, contributing articles to his older brother Orion Clemens''s newspaper. Twain then became a riverboat pilot on the Mississippi River, which provided him the material for Life on the Mississippi (1883). Soon after, Twain headed west to join Orion in Nevada. He referred humorously to his lack of success at mining, turning to journalism for the Virginia City Territorial Enterprise.
Twain first achieved success as a writer with the humorous story "The Celebrated Jumping Frog of Calaveras County," which was published in 1865; it was based on a story that he heard at the Angels Hotel in Angels Camp, California, where Twain had spent some time while he was working as a miner. The short story brought Twain international attention. He wrote both fiction and non-fiction. As his fame grew, Twain became a much sought-after speaker. His wit and satire, both in prose and in speech, earned praise from critics and peers, and Twain was a friend to presidents, artists, industrialists, and European royalty.
Although Twain initially spoke out in favor of American interests in the Hawaiian Islands, he later reversed his position, going on to become vice ',
   '["clm_wiki_mark-twain_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 324);

-- 36. Martin Van Buren
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_martin-van-buren', 'person', 'martin-van-buren', 'Martin Van Buren', 'published', 'Martin Van Buren (born Maarten Van Buren, December 5, 1782 – July 24, 1862) was the eighth president of the United States, serving from 1837 to 1841. Van Buren co-founded the Democratic Party with Andrew Jackson and became Jackson''s vice president from 1833 to 1837.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_martin-van-buren', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_martin-van-buren_intro', 'ent_martin-van-buren', 'biography_intro', 'Introduction', 'Martin Van Buren (born Maarten Van Buren, December 5, 1782 – July 24, 1862) was the eighth president of the United States, serving from 1837 to 1841. Van Buren co-founded the Democratic Party with Andrew Jackson and became Jackson''s vice president from 1833 to 1837.
Van Buren was born in Kinderhook, New York, where most residents were of Dutch descent and spoke Dutch as their primary language. He is the only president to have spoken English as a second language. Van Buren entered politics as a member of the Democratic-Republican Party, won a seat in the New York State Senate in 1813, and was elected to the United States Senate in 1821. As the leader of the Bucktails faction of the party, he established the political machine known as the Albany Regency. Van Buren ran successfully for governor of New York to support Andrew Jackson''s candidacy in the 1828 presidential election but resigned shortly after Jackson was inaugurated so he could accept appointment as Jackson''s secretary of state. In the cabinet, Van Buren was a key Jackson advisor and built the organizational structure for the coalescing Democratic Party. He ultimately resigned to help resolve the Petticoat affair and briefly served as ambassador to the United Kingdom. At Jackson''s behest, the 1832 Democratic National Convention nominated Van Buren for vice president, and he took office after the Democratic ticket won the 1832 presidential election.
With Jackson''s strong support and the organizational strength of the Democratic Party, Van Buren successfully ran for president in the 1836 presidential election. However, his popularity soon eroded because of his response to the Panic of 1837, which centered on his Independent Treasury system, a plan under which the federal government of the United States would store its funds in vaults rather than in banks. More conservative Democrats and Whigs in Congress ultimately delayed Van Buren''s plan from being implemented until 1840. His presidency was further marred by',
   '["clm_wiki_martin-van-buren_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 321);

-- 37. Mary Baker Eddy
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_mary-baker-eddy', 'person', 'mary-baker-eddy', 'Mary Baker Eddy', 'published', 'Mary Baker Eddy (née Baker; July 16, 1821 – December 3, 1910) was an American religious leader and author, who in 1879 founded The Church of Christ, Scientist, the Mother Church of the Christian Science movement. She also founded The Christian Science Monitor in 1908, and three religious magazines: the Christian Science Sentinel, The Christian Science Journal, and The Herald of Christian Science.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_mary-baker-eddy', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_mary-baker-eddy_intro', 'ent_mary-baker-eddy', 'biography_intro', 'Introduction', 'Mary Baker Eddy (née Baker; July 16, 1821 – December 3, 1910) was an American religious leader and author, who in 1879 founded The Church of Christ, Scientist, the Mother Church of the Christian Science movement. She also founded The Christian Science Monitor in 1908, and three religious magazines: the Christian Science Sentinel, The Christian Science Journal, and The Herald of Christian Science.
Eddy wrote numerous books and articles, most notably the 1875 book Science and Health with Key to the Scriptures, selected as one of the "75 Books by Women Whose Words Have Changed the World" by the Women''s National Book Association. She was inducted into the National Women''s Hall of Fame in 1995. Other works Eddy authored include Manual of The Mother Church, and a collection of varied writings that were consolidated posthumously into a book called Prose Works.',
   '["clm_wiki_mary-baker-eddy_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 141);

-- 38. Mary Barra
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_mary-barra', 'person', 'mary-barra', 'Mary Barra', 'published', 'Mary Teresa Barra (née Makela; born December 24, 1961) is an American businesswoman who has been the chair and chief executive officer (CEO) of General Motors since January 15, 2014. She is the first female CEO of a ''Big Three'' automaker. ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_mary-barra', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_mary-barra_intro', 'ent_mary-barra', 'biography_intro', 'Introduction', 'Mary Teresa Barra (née Makela; born December 24, 1961) is an American businesswoman who has been the chair and chief executive officer (CEO) of General Motors since January 15, 2014. She is the first female CEO of a ''Big Three'' automaker. 
In December 2013, GM named her to succeed Daniel Akerson as CEO. Prior to being named CEO, Barra was executive vice president of global product development, purchasing, and supply chain.',
   '["clm_wiki_mary-barra_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 71);

-- 39. Melinda French Gates
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_melinda-french-gates', 'person', 'melinda-french-gates', 'Melinda French Gates', 'published', 'Melinda Ann French Gates (née French; born August 15, 1964) is an American philanthropist. Born and raised in Dallas, Texas, she attended Duke University, where she earned a bachelor''s degree in computer science and economics and an MBA. She joined Microsoft in 1987 as a multimedia product developer. In the same year, she began dating the company''s co-founder and then-chief executive Bill Gates, w', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_melinda-french-gates', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_melinda-french-gates_intro', 'ent_melinda-french-gates', 'biography_intro', 'Introduction', 'Melinda Ann French Gates (née French; born August 15, 1964) is an American philanthropist. Born and raised in Dallas, Texas, she attended Duke University, where she earned a bachelor''s degree in computer science and economics and an MBA. She joined Microsoft in 1987 as a multimedia product developer. In the same year, she began dating the company''s co-founder and then-chief executive Bill Gates, whom she married in 1994 and divorced in 2021. They have three children together.
From 2000 to 2024, she and Gates co-chaired the Bill & Melinda Gates Foundation, the world''s largest private charitable organization. For their philanthropic endeavors, which focused on global health, development, and education, they received numerous awards and honors, including the U.S. Presidential Medal of Freedom and the French Legion of Honour. After French Gates resigned as co-chair in 2024, Gates became sole chair of the renamed Gates Foundation.
As part of her divorce settlement, French Gates received $12.5 billion for independent philanthropy, which she has stated will focus on women and families. She has become a prominent megadonor to the Democratic Party, with a focus on abortion rights, and endorsed Kamala Harris in the 2024 US presidential election. In 2025, she published a memoir, The Next Day: Transition, Change and Moving Forward.
Consistently ranked by Forbes magazine as one of the world''s most powerful women, French Gates was recognized as one of the BBC''s 100 women of 2021. As of February 2026, her net worth is estimated at US$30.4 billion, making her the world''s 72nd wealthiest person, according to Forbes.',
   '["clm_wiki_melinda-french-gates_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 257);

-- 40. Michael Jordan
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_michael-jordan', 'person', 'michael-jordan', 'Michael Jordan', 'published', 'Michael Jeffrey Jordan (born February 17, 1963), also known by his initials MJ, is an American businessman, former professional basketball player, and former baseball player. He played 15 seasons in the National Basketball Association (NBA) between 1984 and 2003, winning six NBA championships with the Chicago Bulls. Widely considered one of the greatest basketball players of all time, he was integ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_michael-jordan', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_michael-jordan_intro', 'ent_michael-jordan', 'biography_intro', 'Introduction', 'Michael Jeffrey Jordan (born February 17, 1963), also known by his initials MJ, is an American businessman, former professional basketball player, and former baseball player. He played 15 seasons in the National Basketball Association (NBA) between 1984 and 2003, winning six NBA championships with the Chicago Bulls. Widely considered one of the greatest basketball players of all time, he was integral in popularizing basketball and the NBA around the world in the 1980s and 1990s. He is the wealthiest athlete of all time with official records, and one of the world''s richest celebrities, with a $4.3 billion net worth as of 2026.
Jordan played college basketball with the North Carolina Tar Heels. As a freshman, he was a member of the Tar Heels'' national championship team in 1982. As a junior in 1984, he was named the national college player of the year and was selected by the Bulls with the third overall pick of the 1984 NBA draft. With the Bulls, he emerged as a league star known for prolific scoring, defensive prowess and vehement competitiveness. His leaping ability, demonstrated by performing slam dunks from the free-throw line in Slam Dunk Contests, earned him the nicknames "Air Jordan" and "His Airness". Jordan won his first NBA title with the Bulls in 1991 and followed that with titles in 1992 and 1993, securing a three-peat.
Citing physical and mental exhaustion from basketball and superstardom, Jordan abruptly retired before the 1993–94 NBA season to play Minor League Baseball in the Chicago White Sox organization. He returned to the Bulls in 1995 and led them to three more championships in 1996, 1997, and 1998, as well as a then-record 72 regular season wins in the 1995–96 NBA season. Jordan retired for the second time in 1999, then returned for two NBA seasons from 2001 to 2003 as a member of the Washington Wizards. He was selected to play for the United States national team during his college and NBA careers, winning four gold medals—at the 1983 Pan American',
   '["clm_wiki_michael-jordan_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 336);

-- 41. Millard Fillmore
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_millard-fillmore', 'person', 'millard-fillmore', 'Millard Fillmore', 'published', 'Millard Fillmore (January 7, 1800 – March 8, 1874) was the 13th president of the United States, serving from 1850 to 1853. He was the last president to be a member of the Whig Party while in the White House, and the last to be neither a Democrat nor a Republican. A former member of the U.S. House of Representatives, Fillmore was elected vice president in 1848, and succeeded to the presidency when ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_millard-fillmore', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_millard-fillmore_intro', 'ent_millard-fillmore', 'biography_intro', 'Introduction', 'Millard Fillmore (January 7, 1800 – March 8, 1874) was the 13th president of the United States, serving from 1850 to 1853. He was the last president to be a member of the Whig Party while in the White House, and the last to be neither a Democrat nor a Republican. A former member of the U.S. House of Representatives, Fillmore was elected vice president in 1848, and succeeded to the presidency when Zachary Taylor died in 1850. Fillmore was instrumental in passing the Compromise of 1850, which led to a brief truce in the battle over the expansion of slavery.
Fillmore was born into poverty in the Finger Lakes area of upstate New York. He had little formal schooling, but studied to become a lawyer. Fillmore became prominent in the Buffalo area as an attorney and politician, and was elected to the New York Assembly in 1828 and the House of Representatives in 1832. Fillmore initially belonged to the Anti-Masonic Party, but became a member of the Whig Party as it formed in the mid-1830s. He was a rival for the state party leadership with Thurlow Weed and his protégé William H. Seward. Throughout his career, Fillmore declared slavery evil but said it was beyond the federal government''s power to end it. Conversely, Seward argued that the federal government had a role to play. Fillmore was an unsuccessful candidate for Speaker of the U.S. House of Representatives when the Whigs took control of the chamber in 1841, but was made chairman of the Ways and Means Committee. Defeated in bids for the Whig nomination for vice president and for New York governor in 1844, Fillmore was elected Comptroller of New York in 1847, the first to hold that post by election.
As vice president, Fillmore was largely ignored by Taylor; even in dispensing patronage in New York, Taylor consulted Weed and Seward. In his capacity as president of the Senate, Fillmore presided over its angry debates as the 31st Congress decided whether to allow slavery in the Mexican Cession. Unlike Taylor, Fillmore suppor',
   '["clm_wiki_millard-fillmore_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 344);

-- 42. Muhammad Ali
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_muhammad-ali', 'person', 'muhammad-ali', 'Muhammad Ali', 'published', 'Muhammad Ali ( ah-LEE; born Cassius Marcellus Clay Jr.; January 17, 1942 – June 3, 2016) was an American professional boxer and activist. A global cultural icon, widely known by the nickname "the Greatest", he is often regarded as the greatest heavyweight boxer of all time. He held the Ring magazine heavyweight title from 1964 to 1970, was the undisputed champion from 1974 to 1978, and was the WBA', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_muhammad-ali', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_muhammad-ali_intro', 'ent_muhammad-ali', 'biography_intro', 'Introduction', 'Muhammad Ali ( ah-LEE; born Cassius Marcellus Clay Jr.; January 17, 1942 – June 3, 2016) was an American professional boxer and activist. A global cultural icon, widely known by the nickname "the Greatest", he is often regarded as the greatest heavyweight boxer of all time. He held the Ring magazine heavyweight title from 1964 to 1970, was the undisputed champion from 1974 to 1978, and was the WBA and Ring heavyweight champion from 1978 to 1979. In 1999, he was named Sportsman of the Century by Sports Illustrated and the Sports Personality of the Century by the BBC.
Born in Louisville, Kentucky, he began training as an amateur boxer at age 12. At 18, he won a gold medal in the light heavyweight division at the 1960 Summer Olympics and turned professional later that year. He joined the Nation of Islam in the early 1960s, but later transitioned to Sunni Islam in the mid-1970s after the death of its longtime leader, Elijah Muhammad. He won the world heavyweight championship, defeating Sonny Liston in a major upset on February 25, 1964, at age 22. During that year, he denounced his birth name as a "slave name" and formally changed his name to Muhammad Ali. In 1967, Ali refused to be drafted into the military, owing to his religious beliefs and ethical opposition to the Vietnam War, and was found guilty of draft evasion and stripped of his boxing titles. He stayed out of prison while appealing the decision to the Supreme Court, where his conviction was overturned in 1971. He did not fight for nearly four years and lost a period of peak performance as an athlete. Ali''s actions as a conscientious objector to the Vietnam War made him an icon for the larger counterculture of the 1960s generation, and he became a prominent, high-profile figure of racial pride for African Americans during the civil rights movement and throughout his career.
Ali fought in several highly publicized boxing matches, including fights with Liston, Joe Frazier (including the Fight of the Century, whi',
   '["clm_wiki_muhammad-ali_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 342);

-- 43. Neil Armstrong
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_neil-armstrong', 'person', 'neil-armstrong', 'Neil Armstrong', 'published', 'Neil Alden Armstrong (August 5, 1930 – August 25, 2012) was an American astronaut and aeronautical engineer who, as the commander of the 1969 Apollo 11 mission, became the first person to walk on the Moon. He was also a naval aviator, test pilot and university professor.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_neil-armstrong', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_neil-armstrong_intro', 'ent_neil-armstrong', 'biography_intro', 'Introduction', 'Neil Alden Armstrong (August 5, 1930 – August 25, 2012) was an American astronaut and aeronautical engineer who, as the commander of the 1969 Apollo 11 mission, became the first person to walk on the Moon. He was also a naval aviator, test pilot and university professor.
Armstrong was born and raised near Wapakoneta, Ohio. He entered Purdue University, studying aeronautical engineering, with the United States Navy paying his tuition under the Holloway Plan.  He became a midshipman in 1949 and a naval aviator the following year. He saw action in the Korean War, flying the Grumman F9F Panther from the aircraft carrier USS Essex. After the war, he completed his bachelor''s degree at Purdue and became a test pilot at the National Advisory Committee for Aeronautics (NACA) High-Speed Flight Station at Edwards Air Force Base in California. He was the project pilot on Century Series fighters and flew the North American X-15 seven times. He was also a participant in the U.S. Air Force''s Man in Space Soonest and X-20 Dyna-Soar human spaceflight programs.
Armstrong joined the NASA Astronaut Corps in the second group, which was selected in 1962. He made his first spaceflight as command pilot of Gemini 8 in March 1966, becoming NASA''s first civilian astronaut to fly in space. During this mission with pilot David Scott, he performed the first docking of two spacecraft; the mission was aborted after Armstrong used some of his re-entry control fuel to stabilize a dangerous roll caused by a stuck thruster. During training for Armstrong''s second and last spaceflight as commander of Apollo 11, he had to eject from the Lunar Landing Research Vehicle moments before a crash.
On July 20, 1969, Armstrong and Apollo 11 Lunar Module (LM) pilot Buzz Aldrin became the first people to land on the Moon, and the next day they spent two and a half hours outside the Lunar Module Eagle spacecraft while Michael Collins remained in lunar orbit in the Apollo Command Module Columbia. When Armstrong first',
   '["clm_wiki_neil-armstrong_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 334);

-- 44. Norman Borlaug
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_norman-borlaug', 'person', 'norman-borlaug', 'Norman Borlaug', 'published', 'Norman Ernest Borlaug (; March 25, 1914 – September 12, 2009) was an American agronomist who led initiatives worldwide that contributed to the extensive increases in agricultural production termed the Green Revolution. Borlaug was awarded multiple honors for his work, including the Nobel Peace Prize, the Presidential Medal of Freedom, and the Congressional Gold Medal, one of only seven people to h', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_norman-borlaug', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_norman-borlaug_intro', 'ent_norman-borlaug', 'biography_intro', 'Introduction', 'Norman Ernest Borlaug (; March 25, 1914 – September 12, 2009) was an American agronomist who led initiatives worldwide that contributed to the extensive increases in agricultural production termed the Green Revolution. Borlaug was awarded multiple honors for his work, including the Nobel Peace Prize, the Presidential Medal of Freedom, and the Congressional Gold Medal, one of only seven people to have received all three awards.
Borlaug received his B.S. in forestry in 1937 and PhD in plant pathology and genetics from the University of Minnesota in 1942. He took up an agricultural research position with CIMMYT in Mexico, where he developed semi-dwarf, high-yield, disease-resistant wheat varieties. During the mid-20th century, Borlaug led the introduction of these high-yielding varieties combined with modern agricultural production techniques to Mexico, Pakistan, and India. As a result, Mexico became a net exporter of wheat by 1963. Between 1965 and 1970, wheat yields nearly doubled in Pakistan and India, greatly improving the food security in those nations.
Borlaug is often called "the father of the Green Revolution", and is credited with saving over a billion people worldwide from starvation. According to Jan Douglas, executive assistant to the president of the World Food Prize Foundation, the source of this number is Gregg Easterbrook''s 1997 article "Forgotten Benefactor of Humanity." The article states that the "form of agriculture that Borlaug preaches may have prevented a billion deaths." Dennis T. Avery also estimated that the number of lives saved by Borlaug''s efforts to be one billion. In 2009, Josette Sheeran, then the Executive Director of the World Food Programme, stated that Borlaug "saved more lives than any man in human history". He was awarded the 1970 Nobel Peace Prize in recognition of his contributions to world peace through increasing food supply.
Later in his life, he helped apply these methods of increasing food production in Asia and Africa. He w',
   '["clm_wiki_norman-borlaug_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 312);

-- 45. Oprah Winfrey
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_oprah-winfrey', 'person', 'oprah-winfrey', 'Oprah Winfrey', 'published', 'Oprah Gail Winfrey (; born  Orpah Gail Winfrey; January 29, 1954) is an American talk show host, television producer, actress, author, and media proprietor. She is best known for her talk show, The Oprah Winfrey Show, broadcast from Chicago, which ran in national syndication for 25 years, from 1986 to 2011. Globally, she is the richest Black woman and the wealthiest female celebrity. Dubbed the "Q', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_oprah-winfrey', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_oprah-winfrey_intro', 'ent_oprah-winfrey', 'biography_intro', 'Introduction', 'Oprah Gail Winfrey (; born  Orpah Gail Winfrey; January 29, 1954) is an American talk show host, television producer, actress, author, and media proprietor. She is best known for her talk show, The Oprah Winfrey Show, broadcast from Chicago, which ran in national syndication for 25 years, from 1986 to 2011. Globally, she is the richest Black woman and the wealthiest female celebrity. Dubbed the "Queen of All Media", she was the richest African-American of the 20th century and was once the world''s only Black billionaire. By 2007, she was often ranked as the most influential woman in the world and in 2026 was named the greatest living self-made American.
Winfrey was born into poverty in rural Mississippi to a single teenage mother and later raised in inner-city Milwaukee. Winfrey was then sent to live with the man she calls her father, Vernon Winfrey, a barber in Nashville, Tennessee, and landed a job in radio while still in high school. By 19, she was a co-anchor for the local evening news. Winfrey''s often emotional, extemporaneous delivery eventually led to her transfer to the daytime talk show arena, and after boosting a third-rated local Chicago talk show to first place, she launched her own production company.
Credited with creating a more intimate, confessional form of media communication, Winfrey popularized and revolutionized the tabloid talk show genre pioneered by Phil Donahue. By the mid-1990s, Winfrey had reinvented her show with a focus on literature, self-improvement, mindfulness, and spirituality. She has been criticized for unleashing a confession culture, promoting controversial self-help ideas, and having an emotion-centered approach, and has also been praised for overcoming adversity to become a benefactor to others. Winfrey also emerged as a political force in the 2008 presidential race, with her endorsement of Barack Obama estimated to have been worth about one million votes during the 2008 Democratic primaries.  In the same year, she formed her o',
   '["clm_wiki_oprah-winfrey_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 318);

-- 46. Wright brothers
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_orville-wright', 'person', 'orville-wright', 'Wright brothers', 'published', 'The Wright brothers, Orville Wright (August 19, 1871 – January 30, 1948) and Wilbur Wright (April 16, 1867 – May 30, 1912), were American aviation pioneers generally credited with inventing, building, and flying the world''s first successful airplane. They made the first controlled, sustained flight of an engine-powered, heavier-than-air aircraft with the Wright Flyer on December 17, 1903, four mil', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_orville-wright', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_orville-wright_intro', 'ent_orville-wright', 'biography_intro', 'Introduction', 'The Wright brothers, Orville Wright (August 19, 1871 – January 30, 1948) and Wilbur Wright (April 16, 1867 – May 30, 1912), were American aviation pioneers generally credited with inventing, building, and flying the world''s first successful airplane. They made the first controlled, sustained flight of an engine-powered, heavier-than-air aircraft with the Wright Flyer on December 17, 1903, four miles (6 km) south of Kitty Hawk, North Carolina, at what is now known as Kill Devil Hills. In 1904 the Wright brothers developed the Wright Flyer II, which made longer-duration flights including the first circle, followed in 1905 by the first truly practical fixed-wing aircraft, the Wright Flyer III.
The brothers'' breakthrough invention was their creation of a three-axis control system, which enabled the pilot to steer the aircraft effectively and to maintain its equilibrium. Their system of aircraft controls made fixed-wing powered flight possible and remains standard on airplanes of all kinds. Their first U.S. patent, written in March 1903, before their first flight at Kitty Hawk, did not claim invention of a flying machine, but rather a system of aerodynamic control that manipulated a flying machine''s surfaces. From the beginning of their aeronautical work, Wilbur and Orville focused on developing a reliable method of pilot control as the key to solving "the flying problem". This approach differed significantly from other experimenters of the time who put more emphasis on developing powerful engines. Using a small home-built wind tunnel, the Wrights also collected more accurate data than any before, enabling them to design more efficient wings and propellers.
The brothers gained the mechanical skills essential to their success by working for years in their Dayton, Ohio-based shop with printing presses, bicycles, motors, and other machinery. Their work with bicycles, in particular, influenced their belief that an unstable vehicle such as a flying machine could be controlled',
   '["clm_wiki_orville-wright_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 307);

-- 47. Otis Redding
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_otis-redding', 'person', 'otis-redding', 'Otis Redding', 'published', 'Otis Ray Redding Jr. (September 9, 1941 – December 10, 1967) was an American singer and songwriter. He is regarded as one of the greatest singers in the history of American popular music and a seminal artist in soul music and rhythm and blues. Nicknamed the "King of Soul", Redding''s style of singing drew inspiration from the gospel music that preceded the genre. His vocal style influenced many oth', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_otis-redding', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_otis-redding_intro', 'ent_otis-redding', 'biography_intro', 'Introduction', 'Otis Ray Redding Jr. (September 9, 1941 – December 10, 1967) was an American singer and songwriter. He is regarded as one of the greatest singers in the history of American popular music and a seminal artist in soul music and rhythm and blues. Nicknamed the "King of Soul", Redding''s style of singing drew inspiration from the gospel music that preceded the genre. His vocal style influenced many other soul artists of the 1960s.
Redding was born in Dawson, Georgia, and his family soon moved to Macon. He dropped out of high school at age 15 to support his family, working with Little Richard''s backing band, the Upsetters, and performing in talent shows at Macon''s historic Douglass Theatre. In 1958, Redding joined Johnny Jenkins''s band, the Pinetoppers, with whom he toured the Southern states as a singer and driver. An unscheduled appearance at a Stax Records recording session led to a contract and Redding''s first hit single, "These Arms of Mine", in 1962.
Stax released Redding''s debut album, Pain in My Heart, two years later. Initially popular mainly with African Americans, Redding later reached a wider American pop music audience. Along with his group, he first played small shows in the American South. Redding later performed at the popular Los Angeles night club Whisky a Go Go and toured Europe, performing in London, Paris and other major cities. In June 1967, he performed at the Monterey Pop Festival.
Shortly before his death in a plane crash, Redding wrote and recorded "(Sittin'' On) The Dock of the Bay" with Steve Cropper. Released in January 1968, the song became the first posthumous number-one record on both the Billboard Hot 100 and R&B charts. The album The Dock of the Bay was the first posthumous album to reach number one on the UK Albums Chart. Redding''s premature death devastated Stax. Already on the verge of bankruptcy, the label soon discovered that the Atco division of Atlantic Records owned the rights to his entire song catalog.
Redding received many posth',
   '["clm_wiki_otis-redding_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 336);

-- 48. Patrick Mahomes
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_patrick-mahomes', 'person', 'patrick-mahomes', 'Patrick Mahomes', 'published', 'Patrick Lavon Mahomes II ( mə-HOHMZ; born September 17, 1995) is an American professional football quarterback for the Kansas City Chiefs of the National Football League (NFL). After becoming the Chiefs'' starting quarterback in 2018, he led the team to seven consecutive AFC Championship Game appearances and five Super Bowl appearances, winning three. He is one of only five quarterbacks in NFL hist', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_patrick-mahomes', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_patrick-mahomes_intro', 'ent_patrick-mahomes', 'biography_intro', 'Introduction', 'Patrick Lavon Mahomes II ( mə-HOHMZ; born September 17, 1995) is an American professional football quarterback for the Kansas City Chiefs of the National Football League (NFL). After becoming the Chiefs'' starting quarterback in 2018, he led the team to seven consecutive AFC Championship Game appearances and five Super Bowl appearances, winning three. He is one of only five quarterbacks in NFL history to win three or more Super Bowls as a starter. Mahomes is widely regarded as one of the greatest quarterbacks of all time. He is often considered the best quarterback of his generation, with many outlets ranking him as the league''s top player at the position.
Mahomes played college football for the Texas Tech Red Raiders, winning the Sammy Baugh Trophy as a junior after leading the FBS in passing yards and total touchdowns. He was selected 10th overall by the Kansas City Chiefs in the 2017 NFL draft and spent his rookie season as the backup to Alex Smith. In 2018, after the Chiefs traded Smith, Mahomes became the starter and threw for 5,097 yards, 50 touchdowns, and 12 interceptions. He became the first quarterback to achieve over 5,000 passing yards in both college and the NFL, and joined Peyton Manning as the only players to record 5,000 passing yards and 50 touchdowns in an NFL season. For his performance in his first season as a starter, he won the NFL Offensive Player of the Year and NFL Most Valuable Player awards, becoming one of four black quarterbacks to win the AP MVP award.
In the 2019 season, Mahomes led the Chiefs to their first Super Bowl in 50 years, winning Super Bowl LIV. Mahomes was awarded the Super Bowl MVP for his performance, becoming the youngest quarterback and the second Black quarterback to earn the honor. In 2020, Mahomes signed a 10-year contract extension worth over $450 million, making it one of the largest contracts in sports history. That season, the Chiefs returned to the Super Bowl but lost in Super Bowl LV. In the 2022 season, Mahomes ',
   '["clm_wiki_patrick-mahomes_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 343);

-- 49. Phil Knight
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_phil-knight', 'person', 'phil-knight', 'Phil Knight', 'published', 'Philip Hampson Knight (born February 24, 1938) is an American billionaire businessman who is the co-founder and chairman emeritus of Nike, Inc., a global sports footwear, equipment and apparel company. He was previously its chairman and CEO. As of October 2025, Forbes estimated his net worth at US$35.4 billion. He is also the owner of the stop motion film production company Laika. Knight is a grad', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_phil-knight', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_phil-knight_intro', 'ent_phil-knight', 'biography_intro', 'Introduction', 'Philip Hampson Knight (born February 24, 1938) is an American billionaire businessman who is the co-founder and chairman emeritus of Nike, Inc., a global sports footwear, equipment and apparel company. He was previously its chairman and CEO. As of October 2025, Forbes estimated his net worth at US$35.4 billion. He is also the owner of the stop motion film production company Laika. Knight is a graduate of the University of Oregon and the Stanford Graduate School of Business. He was part of the track and field club under coach Bill Bowerman at the University of Oregon with whom he would later co-found Nike.
Knight has donated hundreds of millions of dollars to each of his alma maters, as well as Oregon Health & Science University.',
   '["clm_wiki_phil-knight_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 125);

-- 50. Reed Hastings
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_reed-hastings', 'person', 'reed-hastings', 'Reed Hastings', 'published', 'Wilmot Reed Hastings Jr. (born October 8, 1960) is an American billionaire businessman. He is the co-founder of Netflix, which provides the eponymous streaming service. Hastings serves on a number of boards and works with various non-profit organizations. A former president of the California State Board of Education, Hastings is also an advocate for charter schools.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_reed-hastings', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_reed-hastings_intro', 'ent_reed-hastings', 'biography_intro', 'Introduction', 'Wilmot Reed Hastings Jr. (born October 8, 1960) is an American billionaire businessman. He is the co-founder of Netflix, which provides the eponymous streaming service. Hastings serves on a number of boards and works with various non-profit organizations. A former president of the California State Board of Education, Hastings is also an advocate for charter schools.
As of May 2025, Forbes estimated Hastings''s net worth at $6.6 billion.',
   '["clm_wiki_reed-hastings_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 68);

-- 51. Reese Witherspoon
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_reese-witherspoon', 'person', 'reese-witherspoon', 'Reese Witherspoon', 'published', 'Laura Jeanne Reese Witherspoon (born March 22, 1976) is an American actress and producer. She is the recipient of various accolades, including an Academy Award, a Primetime Emmy Award, and two Golden Globe Awards. In 2021, Forbes named her the world''s highest-paid actress, and in 2023, she was named one of the wealthiest celebrities in the U.S. with an estimated net worth of $440 million.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_reese-witherspoon', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_reese-witherspoon_intro', 'ent_reese-witherspoon', 'biography_intro', 'Introduction', 'Laura Jeanne Reese Witherspoon (born March 22, 1976) is an American actress and producer. She is the recipient of various accolades, including an Academy Award, a Primetime Emmy Award, and two Golden Globe Awards. In 2021, Forbes named her the world''s highest-paid actress, and in 2023, she was named one of the wealthiest celebrities in the U.S. with an estimated net worth of $440 million.
Witherspoon began her career as a teenager, making her screen debut in The Man in the Moon (1991). After starring in the 1996 films Freeway and Fear, her breakthrough came in 1999 with a supporting role in Cruel Intentions and the lead role of Tracy Flick in the black comedy Election. She gained wider recognition for playing Elle Woods in the comedy Legally Blonde (2001) and its 2003 sequel, and for starring in the romantic comedy Sweet Home Alabama (2002). She won the Academy Award for Best Actress for portraying June Carter Cash in the musical biopic Walk the Line (2005). She had a downturn in her career and during that era, her sole box-office success was the romantic drama Water for Elephants (2011), She made a comeback, producing and starring as Cheryl Strayed in the drama Wild (2014), which earned her a second Academy Award nomination.
Since then she has primarily worked in television, producing and starring in several female-led literary adaptations under her company Hello Sunshine. They include the HBO drama series Big Little Lies (2017–2019), the Apple TV+ drama series The Morning Show (2019–present), and the Hulu miniseries Little Fires Everywhere (2020). For the first of these, she won the Primetime Emmy Award for Outstanding Limited Series. She has produced the film adaptations Gone Girl (2014) and Where the Crawdads Sing (2022), and the miniseries adaptation Daisy Jones & the Six (2023).
Witherspoon owns Reese''s Book Club and a clothing company, Draper James. She is involved in children''s and women''s advocacy organizations. She serves on the board of the Children''s Def',
   '["clm_wiki_reese-witherspoon_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 329);

-- 52. Richard Feynman
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_richard-feynman', 'person', 'richard-feynman', 'Richard Feynman', 'published', 'Richard Phillips Feynman (; May 11, 1918 – February 15, 1988) was an American theoretical physicist. He shared the 1965 Nobel Prize in Physics with Julian Schwinger and Shin''ichirō Tomonaga "for their fundamental work in quantum electrodynamics (QED), with deep-ploughing consequences for the physics of elementary particles".', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_richard-feynman', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_richard-feynman_intro', 'ent_richard-feynman', 'biography_intro', 'Introduction', 'Richard Phillips Feynman (; May 11, 1918 – February 15, 1988) was an American theoretical physicist. He shared the 1965 Nobel Prize in Physics with Julian Schwinger and Shin''ichirō Tomonaga "for their fundamental work in quantum electrodynamics (QED), with deep-ploughing consequences for the physics of elementary particles".
He is also known for his work in the path integral formulation of quantum mechanics, the theory of the physics of the superfluidity of supercooled liquid helium, and the parton model. Feynman developed a pictorial representation scheme for the mathematical expressions describing the behavior of subatomic particles, which later became known as Feynman diagrams and remains widely used.
He assisted in the development of the atomic bomb during World War II and became known to the wider public in the 1980s as a member of the Rogers Commission, the panel that investigated the Space Shuttle Challenger disaster. Along with his work in theoretical physics, Feynman has been credited with having pioneered the field of quantum computing and introducing the concept of nanotechnology. He held the Richard C. Tolman professorship in theoretical physics at the California Institute of Technology.  In a 1999 poll of 130 leading physicists worldwide by the British journal Physics World, he was ranked the seventh-greatest physicist of all time.
Feynman was a keen physics popularizer through books and lectures, including a talk on top-down nanotechnology, "There''s Plenty of Room at the Bottom" (1959) and his undergraduate lectures, The Feynman Lectures on Physics (1961–1964). He delivered lectures for lay audiences, recorded in The Character of Physical Law (1965) and QED: The Strange Theory of Light and Matter (1985). Feynman also became known through Ralph Leighton''s collections of his anecdotes, Surely You''re Joking, Mr. Feynman! (1985) and What Do You Care What Other People Think? (1988). Leighton covered his dream of travelling to Tannu Tuva in Tuva or Bust!. He',
   '["clm_wiki_richard-feynman_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 308);

-- 53. Richard Nixon
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_richard-nixon', 'person', 'richard-nixon', 'Richard Nixon', 'published', 'Richard Milhous Nixon (January 9, 1913 – April 22, 1994) was the 37th president of the United States, serving from 1969 until his resignation in 1974. A member of the Republican Party, he represented California in both houses of the United States Congress before serving as the 36th vice president under President Dwight D. Eisenhower from 1953 to 1961. His presidency saw the reduction of U.S. invol', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_richard-nixon', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_richard-nixon_intro', 'ent_richard-nixon', 'biography_intro', 'Introduction', 'Richard Milhous Nixon (January 9, 1913 – April 22, 1994) was the 37th president of the United States, serving from 1969 until his resignation in 1974. A member of the Republican Party, he represented California in both houses of the United States Congress before serving as the 36th vice president under President Dwight D. Eisenhower from 1953 to 1961. His presidency saw the reduction of U.S. involvement in the Vietnam War, détente with the Soviet Union and China, the Apollo 11 Moon landing, and the establishment of the Environmental Protection Agency and Occupational Safety and Health Administration. Nixon''s second term ended early when he became the only U.S. president to resign from office, as a result of the Watergate scandal.
Nixon was born into a poor family of Quakers in Yorba Linda, Southern California. He graduated from Whittier College with a Bachelor of Arts in 1934 and from Duke University School of Law with a Bachelor of Laws degree in 1937, practiced law in California, and then moved with his wife Pat to Washington, D.C., in 1942 to work for the federal government. After serving in the Naval Reserve during World War II, he was elected to the House of Representatives in 1946. His work on the Alger Hiss case established his reputation as a leading anti-communist. In 1950, he was elected to the Senate. Nixon was the running mate of Eisenhower, the Republican Party''s presidential nominee in the 1952 and 1956 elections. Nixon served for eight years as vice president, and his two terms saw an increase in the notability of the office. He narrowly lost the 1960 presidential election to John F. Kennedy. After his loss in the 1962 race for governor of California, Nixon announced his retirement from politics. However, he ran again for the presidency in 1968 and defeated the Democratic candidate, Vice President Hubert Humphrey.
Seeking to bring the North Vietnamese to the negotiating table, Nixon ordered military operations and carpet bombing campaigns in Cambodia.',
   '["clm_wiki_richard-nixon_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 330);

-- 54. Robert E. Lee
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_robert-e-lee', 'person', 'robert-e-lee', 'Robert E. Lee', 'published', 'Robert Edward Lee (January 19, 1807 – October 12, 1870) was a Confederate general whose early actions in the American Civil War led to his appointment as the overall commander of the Confederate States Army near the end of the war. He led the Army of Northern Virginia, the Confederacy''s most powerful army, from 1862 until its surrender in 1865, earning a reputation as one of the war''s most skilled', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_robert-e-lee', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_robert-e-lee_intro', 'ent_robert-e-lee', 'biography_intro', 'Introduction', 'Robert Edward Lee (January 19, 1807 – October 12, 1870) was a Confederate general whose early actions in the American Civil War led to his appointment as the overall commander of the Confederate States Army near the end of the war. He led the Army of Northern Virginia, the Confederacy''s most powerful army, from 1862 until its surrender in 1865, earning a reputation as one of the war''s most skilled tacticians.
A son of Revolutionary War officer Henry "Light Horse Harry" Lee III, of the Lee family of Virginia, Lee was a top graduate of the United States Military Academy and an exceptional officer and military engineer in the United States Army for 32 years. He served across the United States, distinguished himself during the Mexican–American War, and was Superintendent of the United States Military Academy. He married Mary Anna Custis, great-granddaughter of George Washington''s wife Martha. While he stated that he opposed slavery from a philosophical perspective, he supported its legality and enslaved hundreds. When Virginia declared its secession from the Union in 1861, Lee chose to follow his home state, despite his desire for the country to remain intact and an offer of a senior Union command. During the first year of the Civil War, he served in minor combat operations and as a senior military adviser to Confederate president Jefferson Davis.
Lee took command of the Army of Northern Virginia in June 1862 during the Peninsula campaign following the wounding of Joseph E. Johnston. He succeeded in driving the Union Army of the Potomac under George B. McClellan away from the Confederate capital of Richmond during the Seven Days Battles, but he was unable to destroy McClellan''s army. Lee then overcame Union forces under John Pope at the Second Battle of Bull Run in August. His invasion of Maryland that September ended with the inconclusive Battle of Antietam, after which he retreated to Virginia. Lee won two major victories at Fredericksburg and Chancellorsville before ',
   '["clm_wiki_robert-e-lee_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 327);

-- 55. Robert F. Kennedy
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_robert-f-kennedy', 'person', 'robert-f-kennedy', 'Robert F. Kennedy', 'published', 'Robert Francis Kennedy (November 20, 1925 – June 6, 1968), also known by his initials RFK, was an American politician and lawyer. A member of the Democratic Party, Kennedy served as the 64th United States attorney general from 1961 to 1964, and as a U.S. senator from New York from 1965 until his assassination in 1968. Like his brothers John F. Kennedy and Ted Kennedy, he is considered an icon of m', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_robert-f-kennedy', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_robert-f-kennedy_intro', 'ent_robert-f-kennedy', 'biography_intro', 'Introduction', 'Robert Francis Kennedy (November 20, 1925 – June 6, 1968), also known by his initials RFK, was an American politician and lawyer. A member of the Democratic Party, Kennedy served as the 64th United States attorney general from 1961 to 1964, and as a U.S. senator from New York from 1965 until his assassination in 1968. Like his brothers John F. Kennedy and Ted Kennedy, he is considered an icon of modern American liberalism in the 21st century.
Born into the prominent Kennedy family in Brookline, Massachusetts, Kennedy attended Harvard University, and later received his law degree from the University of Virginia. He began his career as a correspondent for The Boston Post and as a lawyer at the Justice Department, but later resigned to manage his brother John''s successful campaign for the U.S. Senate in 1952. The following year, Kennedy worked as an assistant counsel to the Senate committee chaired by Senator Joseph McCarthy. He gained national attention as the chief counsel of the Senate Labor Rackets Committee from 1957 to 1959, where he publicly challenged Teamsters president Jimmy Hoffa over the union''s corrupt practices. Kennedy resigned from the committee to conduct his brother''s successful campaign in the 1960 presidential election. He was appointed United States attorney general at the age of 35, one of the youngest cabinet members in American history. Kennedy served as John''s closest advisor until the latter''s assassination in 1963.
Kennedy''s tenure is known for advocating for the civil rights movement, the fight against organized crime, and involvement in U.S. foreign policy related to Cuba. He authored his account of the Cuban Missile Crisis in a book titled Thirteen Days. As attorney general, Kennedy authorized the Federal Bureau of Investigation (FBI) to wiretap Martin Luther King Jr. and the Southern Christian Leadership Conference on a limited basis. After his brother John was assassinated, he remained in office during the presidency of Lyndon B. Johnson',
   '["clm_wiki_robert-f-kennedy_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 319);

-- 56. Ronald Reagan
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_ronald-reagan', 'person', 'ronald-reagan', 'Ronald Reagan', 'published', 'Ronald Wilson Reagan (February 6, 1911 – June 5, 2004) was an American politician and actor who served as the 40th president of the United States from 1981 to 1989. A member of the Republican Party, he became an important figure in the American conservative movement. The period encompassing his presidency is known as the Reagan era.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_ronald-reagan', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_ronald-reagan_intro', 'ent_ronald-reagan', 'biography_intro', 'Introduction', 'Ronald Wilson Reagan (February 6, 1911 – June 5, 2004) was an American politician and actor who served as the 40th president of the United States from 1981 to 1989. A member of the Republican Party, he became an important figure in the American conservative movement. The period encompassing his presidency is known as the Reagan era.
Born in Tampico, Illinois, Reagan graduated from Eureka College in 1932 and was hired the next year as a sports broadcaster in Iowa. In 1937, he moved to California where he became a well-known film actor. During his acting career, Reagan was president of the Screen Actors Guild twice from 1947 to 1952 and from 1959 to 1960. In the 1950s, he hosted General Electric Theater and worked as a motivational speaker for General Electric. During the 1964 presidential election, Reagan''s "A Time for Choosing" speech launched his rise as a leading conservative figure. After being elected governor of California in 1966, he raised state taxes, turned the state budget deficit into a surplus, and implemented crackdowns on university protests. Following his loss to Gerald Ford in the 1976 Republican Party presidential primaries, Reagan won the Republican Party''s nomination and then obtained a landslide victory over President Jimmy Carter in the 1980 presidential election.
In his first term as president, Reagan began implementing "Reaganomics", a policy involving economic deregulation and cuts to both taxes and government spending during a period of stagflation. On the world stage, he escalated the arms race, increased military spending, shifted Cold War policy away from détente, and ordered the 1983 invasion of Grenada. Other notable events during Reagan''s first term included his survival of an assassination attempt, a well-publicized fight with public-sector labor unions, an expansion of the war on drugs, and his administration''s slow response to the AIDS epidemic. In the 1984 presidential election, he was elected to a second term by defeating former v',
   '["clm_wiki_ronald-reagan_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 318);

-- 57. Sally Ride
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_sally-ride', 'person', 'sally-ride', 'Sally Ride', 'published', 'Sally Kristen Ride (May 26, 1951 – July 23, 2012) was an American astronaut and physicist. Born in Southern California, she joined NASA in 1978, and in 1983, became the first American woman and the third woman to fly in space. She was the youngest American astronaut to have flown in space, having done so at the age of 32.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_sally-ride', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_sally-ride_intro', 'ent_sally-ride', 'biography_intro', 'Introduction', 'Sally Kristen Ride (May 26, 1951 – July 23, 2012) was an American astronaut and physicist. Born in Southern California, she joined NASA in 1978, and in 1983, became the first American woman and the third woman to fly in space. She was the youngest American astronaut to have flown in space, having done so at the age of 32.
Ride was a graduate of Stanford University, where she earned a Bachelor of Science degree in physics and a Bachelor of Arts degree in English literature in 1973, a Master of Science degree in 1975, and a Doctor of Philosophy in 1978 (both in physics) for research on the interaction of X-rays with the interstellar medium. She was selected as a mission specialist astronaut with NASA Astronaut Group 8, the first class of NASA astronauts to include women. After completing her training in 1979, she served as the ground-based capsule communicator (CapCom) for the second and third Space Shuttle flights, and helped develop the Space Shuttle''s robotic arm. In June 1983, she flew in space on the Space Shuttle Challenger on the STS-7 mission. The mission deployed two communications satellites and the first Shuttle pallet satellite (SPAS-1). Ride operated the robotic arm to deploy and retrieve SPAS-1. Her second space flight was the STS-41-G mission in 1984, also on board Challenger. She spent a total of more than 343 hours in space. She left NASA in 1987.
Ride worked for two years at Stanford University''s Center for International Security and Arms Control, then at the University of California, San Diego, primarily researching nonlinear optics and Thomson scattering. She served on the committees that investigated the loss of Challenger and of Columbia, the only person to participate in both. Having been married to astronaut Steven Hawley during her spaceflight years and in a private, long-term relationship with former Women''s Tennis Association player Tam O''Shaughnessy, she is the first astronaut known to have been LGBTQ, a fact that she hid until her death fr',
   '["clm_wiki_sally-ride_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 332);

-- 58. Samuel Morse
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_samuel-morse', 'person', 'samuel-morse', 'Samuel Morse', 'published', 'Samuel Finley Breese Morse (April 27, 1791 – April 2, 1872) was an American inventor and painter. After establishing his reputation as a portrait painter, Morse, in his middle age, contributed to the invention of a single-wire telegraph system based on European telegraphs. He was a co-developer and the namesake of Morse code in 1837 and helped to develop the commercial use of telegraphy.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_samuel-morse', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_samuel-morse_intro', 'ent_samuel-morse', 'biography_intro', 'Introduction', 'Samuel Finley Breese Morse (April 27, 1791 – April 2, 1872) was an American inventor and painter. After establishing his reputation as a portrait painter, Morse, in his middle age, contributed to the invention of a single-wire telegraph system based on European telegraphs. He was a co-developer and the namesake of Morse code in 1837 and helped to develop the commercial use of telegraphy.',
   '["clm_wiki_samuel-morse_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 64);

-- 59. Satya Nadella
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_satya-nadella', 'person', 'satya-nadella', 'Satya Nadella', 'published', 'Satya Narayana Nadella (born 19 August 1967) is an Indian-American business executive. He is the chairman and chief executive officer (CEO) of Microsoft, succeeding Steve Ballmer in 2014 as CEO and John W. Thompson in 2021 as chairman. Before becoming CEO, he was the executive vice president of Microsoft''s cloud and enterprise group, responsible for building and running the company''s computing pla', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_satya-nadella', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_satya-nadella_intro', 'ent_satya-nadella', 'biography_intro', 'Introduction', 'Satya Narayana Nadella (born 19 August 1967) is an Indian-American business executive. He is the chairman and chief executive officer (CEO) of Microsoft, succeeding Steve Ballmer in 2014 as CEO and John W. Thompson in 2021 as chairman. Before becoming CEO, he was the executive vice president of Microsoft''s cloud and enterprise group, responsible for building and running the company''s computing platforms.',
   '["clm_wiki_satya-nadella_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 62);

-- 60. Saul Bellow
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_saul-bellow', 'person', 'saul-bellow', 'Saul Bellow', 'published', 'Saul Bellow (born Solomon Bellows; June 10, 1915 – April 5, 2005) was a Canadian-American writer. For his literary work, Bellow was awarded the Pulitzer Prize, the 1976 Nobel Prize in Literature, and the National Medal of Arts. He is the only writer to win the National Book Award for Fiction three times, and he received the National Book Foundation''s lifetime Medal for Distinguished Contribution t', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_saul-bellow', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_saul-bellow_intro', 'ent_saul-bellow', 'biography_intro', 'Introduction', 'Saul Bellow (born Solomon Bellows; June 10, 1915 – April 5, 2005) was a Canadian-American writer. For his literary work, Bellow was awarded the Pulitzer Prize, the 1976 Nobel Prize in Literature, and the National Medal of Arts. He is the only writer to win the National Book Award for Fiction three times, and he received the National Book Foundation''s lifetime Medal for Distinguished Contribution to American Letters in 1990.
In the words of the Swedish Nobel Committee, his writing exhibited "the mixture of rich picaresque novel and subtle analysis of our culture, of entertaining adventure, drastic and tragic episodes in quick succession interspersed with philosophic conversation, all developed by a commentator with a witty tongue and penetrating insight into the outer and inner complications that drive us to act, or prevent us from acting, and that can be called the dilemma of our age." His best-known works include The Adventures of Augie March, Henderson the Rain King, Herzog, Mr. Sammler''s Planet, Seize the Day, Humboldt''s Gift, and Ravelstein.
Bellow said that of all his characters, Eugene Henderson, of Henderson the Rain King, was the one most like himself. Bellow grew up as an immigrant from Quebec. As Christopher Hitchens describes it, Bellow''s fiction and principal characters reflect his own yearning for transcendence, a battle "to overcome not just ghetto conditions but also ghetto psychoses." Bellow''s protagonists wrestle with what Albert Corde, the dean in The Dean''s December, called "the big-scale insanities of the 20th century." This transcendence of the "unutterably dismal" (a phrase from Dangling Man) is achieved, if it can be achieved at all, through a "ferocious assimilation of learning" (Hitchens) and an emphasis on nobility.',
   '["clm_wiki_saul-bellow_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 278);

-- 61. Scarlett Johansson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_scarlett-johansson', 'person', 'scarlett-johansson', 'Scarlett Johansson', 'published', 'Scarlett Ingrid Johansson ( ; born November 22, 1984) is an American actress, singer, producer, and director. Her films as a leading actress have grossed over $15.4 billion worldwide, making her the second-highest-grossing actor in history. Her accolades include a British Academy Film Award and Tony Award, as well as nominations for two Academy Awards and five Golden Globe Awards. She was the worl', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_scarlett-johansson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_scarlett-johansson_intro', 'ent_scarlett-johansson', 'biography_intro', 'Introduction', 'Scarlett Ingrid Johansson ( ; born November 22, 1984) is an American actress, singer, producer, and director. Her films as a leading actress have grossed over $15.4 billion worldwide, making her the second-highest-grossing actor in history. Her accolades include a British Academy Film Award and Tony Award, as well as nominations for two Academy Awards and five Golden Globe Awards. She was the world''s highest-paid actress in 2018, 2019, and 2025.
Johansson first appeared as a child actress on stage in an off-Broadway play. She made her film debut in the fantasy comedy North (1994) and gained early recognition for her roles in Manny & Lo (1996), The Horse Whisperer (1998), and Ghost World (2001). In 2003, she marked her transition to mature roles with acclaimed performances in Lost in Translation, for which she won the BAFTA Award for Best Actress, and Girl with a Pearl Earring. Her profile continued to grow with roles in A Love Song for Bobby Long (2004),  The Prestige (2006), and the Woody Allen films Match Point (2005) and Vicky Cristina Barcelona (2008). 
Johansson achieved global stardom for portraying Natasha Romanoff / Black Widow in eight films across the Marvel Cinematic Universe (MCU), beginning with Iron Man 2 (2010) and culminating with her solo feature Black Widow (2021). During this period, Johansson also starred in the science fiction films Her (2013), Under the Skin (2013), and Lucy (2014). She received two simultaneous Academy Award nominations—Best Actress and Best Supporting Actress—for the respective performances as an actress going through a divorce in the drama Marriage Story (2019) and a single mother living in Nazi Germany in the satire Jojo Rabbit (2019), becoming one of the few actors to achieve this feat.
On stage, Johansson starred in the Broadway revivals of A View from the Bridge (2010), for which she won the Tony Award for Best Featured Actress in a Play, and Cat on a Hot Tin Roof (2013). As a singer, she released the albums Anywhere I L',
   '["clm_wiki_scarlett-johansson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 332);

-- 62. Sergey Brin
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_sergey-brin', 'person', 'sergey-brin', 'Sergey Brin', 'published', 'Sergey Mikhailovich Brin (Russian: Сергей Михайлович Брин; born August 21, 1973) is an American computer scientist and businessman who co-founded Google with Larry Page. He was the president of Google''s parent company, Alphabet Inc., until stepping down from the role in 2019. He and Page remain at Alphabet as co-founders, controlling shareholders, and board members. Brin is a centibillionaire and ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_sergey-brin', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_sergey-brin_intro', 'ent_sergey-brin', 'biography_intro', 'Introduction', 'Sergey Mikhailovich Brin (Russian: Сергей Михайлович Брин; born August 21, 1973) is an American computer scientist and businessman who co-founded Google with Larry Page. He was the president of Google''s parent company, Alphabet Inc., until stepping down from the role in 2019. He and Page remain at Alphabet as co-founders, controlling shareholders, and board members. Brin is a centibillionaire and among the richest people in the world, in August 2026, his current estimated net worth is of U$264.9 billion.
Born into a Russian-Jewish family in Moscow, Soviet Union, Brin immigrated to the United States at the age of six. He earned his bachelor''s degree at the University of Maryland, College Park, following in his father''s and grandfather''s footsteps by studying mathematics as well as computer science. After graduation, in 1993, he enrolled in Stanford University to pursue a PhD in computer science. There, Brin met Page, with whom he built a web search engine. The program became popular at Stanford, and he discontinued his PhD studies to start Google in Susan Wojcicki''s garage in Menlo Park, California. In 2023, Brin came out of retirement to contribute to AI research at Alphabet.',
   '["clm_wiki_sergey-brin_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 191);

-- 63. Shirley Temple
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_shirley-temple', 'person', 'shirley-temple', 'Shirley Temple', 'published', 'Shirley Temple Black (born Shirley Jane Temple; April 23, 1928 – February 10, 2014) was an American actress, singer, dancer, politician, and diplomat, who was Hollywood''s number-one box-office draw as a child actress from 1934 to 1938. Later, she was named United States Ambassador to Ghana and to Czechoslovakia, and also served as Chief of Protocol of the United States.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_shirley-temple', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_shirley-temple_intro', 'ent_shirley-temple', 'biography_intro', 'Introduction', 'Shirley Temple Black (born Shirley Jane Temple; April 23, 1928 – February 10, 2014) was an American actress, singer, dancer, politician, and diplomat, who was Hollywood''s number-one box-office draw as a child actress from 1934 to 1938. Later, she was named United States Ambassador to Ghana and to Czechoslovakia, and also served as Chief of Protocol of the United States.
Temple began her film career in 1931 when she was three years old and became well known for her performance in Bright Eyes, released in 1934. She won a special Juvenile Academy Award in February 1935 for her outstanding contribution as a juvenile performer in motion pictures during 1934 and continued to appear in popular films through the remainder of the 1930s, although her subsequent films became less popular as she grew older. She appeared in her last film, A Kiss for Corliss, in 1949.
Temple joined the Junior League of Palo Alto, California, in 1959 and shortly thereafter began a new chapter of public service, perhaps using a combination of her stardom and her leadership training to advocate for important causes.
She began her diplomatic career in 1969, when she was appointed to represent the U.S. at a session of the United Nations General Assembly, where she worked at the U.S. Mission under Ambassador Charles Yost. Later, she was named U.S. Ambassador to Ghana, and also served as the first female U.S. Chief of Protocol. In 1988, she published her autobiography, Child Star. After her biography was published, she served as the penultimate U.S. ambassador to Czechoslovakia (1989–1992).
Temple was the recipient of numerous awards and honors, including the Kennedy Center Honors and a Screen Actors Guild Life Achievement Award. In 1999, Temple is 18th on the American Film Institute''s list of the greatest female American screen legends of classic Hollywood cinema.',
   '["clm_wiki_shirley-temple_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 303);

-- 64. Stan Smith
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_stan-smith', 'person', 'stan-smith', 'Stan Smith', 'published', 'Stanley Roger Smith (born December 14, 1946) is an American former professional tennis player. A world No. 1 player and two-time major singles champion (at the 1971 US Open and 1972 Wimbledon Championships), Smith also paired with Bob Lutz to create one of the most successful doubles teams of all time. ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_stan-smith', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_stan-smith_intro', 'ent_stan-smith', 'biography_intro', 'Introduction', 'Stanley Roger Smith (born December 14, 1946) is an American former professional tennis player. A world No. 1 player and two-time major singles champion (at the 1971 US Open and 1972 Wimbledon Championships), Smith also paired with Bob Lutz to create one of the most successful doubles teams of all time. 
In 1970, Smith won the inaugural year-end championships title. In 1972, he was the year-end world No. 1 singles player. In 1973, he won his second and last year end championship title at the Dallas WCT Finals. In addition, he won four Grand Prix Championship Series titles. 
In his early years he improved his tennis game through lessons from Pancho Segura, the Pasadena Tennis Patrons, and the sponsorship of the Southern California Tennis Association headed by Perry T. Jones. Smith is a past President of the International Tennis Hall of Fame and an ITHF Life Trustee. Outside tennis circles, Smith is best known as the namesake of a line of tennis shoes made by Adidas.',
   '["clm_wiki_stan-smith_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 166);

-- 65. Stanley Kubrick
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_stanley-kubrick', 'person', 'stanley-kubrick', 'Stanley Kubrick', 'published', 'Stanley Kubrick (July 26, 1928 – March 7, 1999) was an American filmmaker and photographer. A prominent figure of the New Hollywood era, Kubrick is regarded as one of the greatest and most influential filmmakers. His films spanned a number of genres and gained recognition for their attention to detail, innovative cinematography, extensive set design, and dark humor.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_stanley-kubrick', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_stanley-kubrick_intro', 'ent_stanley-kubrick', 'biography_intro', 'Introduction', 'Stanley Kubrick (July 26, 1928 – March 7, 1999) was an American filmmaker and photographer. A prominent figure of the New Hollywood era, Kubrick is regarded as one of the greatest and most influential filmmakers. His films spanned a number of genres and gained recognition for their attention to detail, innovative cinematography, extensive set design, and dark humor.
Born in New York City, Kubrick worked as a photographer for Look magazine in the late 1940s and early 1950s. He made his first major Hollywood film, The Killing, in 1956. This was followed by two collaborations with Kirk Douglas: the anti-war film Paths of Glory (1957) and the historical epic Spartacus (1960). In 1961, Kubrick settled in England. In 1978, he made his home at Childwickbury Manor with his wife Christiane, and it became his workplace where he centralized the writing, research, editing, and management of his productions. This permitted him almost complete artistic control over his films, with the rare advantage of financial support from major Hollywood studios. His first productions in England were two films with Peter Sellers: the comedy-drama Lolita (1962) and the Cold War satire Dr. Strangelove (1964).
A perfectionist who assumed direct control over most aspects of his filmmaking, Kubrick cultivated expertise in writing, editing, color grading, promotion, and exhibition. He was famous for the painstaking care taken in researching his films and staging scenes. He frequently asked for several dozen retakes of the same shot, often confusing and frustrating his actors. Many of Kubrick''s films broke new cinematic ground and are now considered landmarks. The scientific realism and innovative special effects in his science fiction epic 2001: A Space Odyssey (1968) were a first in cinema history; the film earned him his only Academy Award (for Best Visual Effects) and is regarded as one of the greatest films ever made.
While many of Kubrick''s films were controversial and initially received mixed ',
   '["clm_wiki_stanley-kubrick_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 316);

-- 66. Steve Ballmer
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_steve-ballmer', 'person', 'steve-ballmer', 'Steve Ballmer', 'published', 'Steven Anthony Ballmer ( BAWL-mər; born March 24, 1956) is an American businessman and investor who was the chief executive officer of Microsoft from 2000 to 2014. He is the owner of the Los Angeles Clippers of the National Basketball Association (NBA), and a co-founder of the Ballmer Group, a philanthropic investment company.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_steve-ballmer', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_steve-ballmer_intro', 'ent_steve-ballmer', 'biography_intro', 'Introduction', 'Steven Anthony Ballmer ( BAWL-mər; born March 24, 1956) is an American businessman and investor who was the chief executive officer of Microsoft from 2000 to 2014. He is the owner of the Los Angeles Clippers of the National Basketball Association (NBA), and a co-founder of the Ballmer Group, a philanthropic investment company.
As of February 2026, the Bloomberg Billionaires Index estimated his personal wealth at around $145 billion, making him the thirteenth-richest person in the world, and the Forbes Real-Time Billionaires List ranked him as the fourteenth-richest person with a net worth of $130 billion.
Ballmer was hired by Bill Gates at Microsoft in 1980, and subsequently left the MBA program at Stanford University. He eventually became president in 1998, and replaced Gates as CEO on January 13, 2000. On February 4, 2014, Ballmer retired as CEO and was replaced by Satya Nadella; Ballmer remained on Microsoft''s board of directors until August 19, 2014. Under Ballmer''s leadership, a 14-year period, the company tripled sales and doubled profits, but lost its market dominance and missed out on 21st-century technology trends such as the ascendance of smartphones in the forms of iPhone and Android.
Players and sportswriters generally consider Ballmer''s ownership of the Los Angeles Clippers as an improvement over previous owner Donald Sterling, citing his willingness to acquire superstar players and finance the construction of Intuit Dome.',
   '["clm_wiki_steve-ballmer_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 227);

-- 67. Steve Jobs
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_steve-jobs', 'person', 'steve-jobs', 'Steve Jobs', 'published', 'Steven Paul Jobs  (February 24, 1955 – October 5, 2011) was an American businessman, inventor, and investor. A pioneer of the personal computer revolution of the 1970s and 1980s, Jobs co-founded Apple Inc. with his early business partner Steve Wozniak as Apple Computer Company in 1976. After the company''s board of directors fired him in 1985, he founded NeXT the same year and purchased Pixar in 19', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_steve-jobs', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_steve-jobs_intro', 'ent_steve-jobs', 'biography_intro', 'Introduction', 'Steven Paul Jobs  (February 24, 1955 – October 5, 2011) was an American businessman, inventor, and investor. A pioneer of the personal computer revolution of the 1970s and 1980s, Jobs co-founded Apple Inc. with his early business partner Steve Wozniak as Apple Computer Company in 1976. After the company''s board of directors fired him in 1985, he founded NeXT the same year and purchased Pixar in 1986, becoming its chairman and majority shareholder until 2007. Jobs returned to Apple in 1997 as CEO, where he was closely involved with the creation and promotion of many of the company''s most influential products until his resignation in 2011.',
   '["clm_wiki_steve-jobs_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 106);

-- 68. Steven Spielberg
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_steven-spielberg', 'person', 'steven-spielberg', 'Steven Spielberg', 'published', 'Steven Allan Spielberg (; born December 18, 1946) is an American filmmaker. A major figure of the New Hollywood era and pioneer of the modern blockbuster, Spielberg is widely regarded as one of the greatest and most influential filmmakers in the history of cinema and is the highest-grossing film director of all time, with his films grossing almost $11 billion worldwide. Among other accolades, he h', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_steven-spielberg', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_steven-spielberg_intro', 'ent_steven-spielberg', 'biography_intro', 'Introduction', 'Steven Allan Spielberg (; born December 18, 1946) is an American filmmaker. A major figure of the New Hollywood era and pioneer of the modern blockbuster, Spielberg is widely regarded as one of the greatest and most influential filmmakers in the history of cinema and is the highest-grossing film director of all time, with his films grossing almost $11 billion worldwide. Among other accolades, he has received three Academy Awards, four Golden Globe Awards, four BAFTA Awards, twelve Emmy Awards, a Tony Award, and a Grammy Award, as well as the AFI Life Achievement Award in 1995, an honorary knighthood in 2001, the Kennedy Center Honor in 2006, the Cecil B. DeMille Award in 2009, the Presidential Medal of Freedom in 2015, and the National Medal of Arts in 2023. According to Forbes, he is one of the world''s wealthiest celebrities, with a net worth of at least $5.3 billion. He is one of 22 people to achieve EGOT status.
Spielberg was born in Cincinnati, Ohio; his family moved to Haddonfield, New Jersey, when he was six, and to Phoenix, Arizona, when he was ten. He moved to California and studied film in college. Starting in television, he made his directorial debut with Duel (1971). His theatrical debut was The Sugarland Express (1974), which began his decades-long collaboration with composer John Williams. He became a household name with Jaws (1975) and earned further critical and commercial success with Close Encounters of the Third Kind (1977), E.T. the Extra-Terrestrial (1982) and the original Indiana Jones trilogy (1981–1989). He explored drama in The Color Purple (1985) and Empire of the Sun (1987).
Spielberg directed the historical war epics Schindler''s List (1993)—which has often been listed as one of the greatest films ever made—and Saving Private Ryan (1998), both of which won him the Academy Award for Best Director with the former also earning him Best Picture. He has also directed the science fiction films Jurassic Park (1993)—which became the highest-grossin',
   '["clm_wiki_steven-spielberg_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 328);

-- 69. Stevie Wonder
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_stevie-wonder', 'person', 'stevie-wonder', 'Stevie Wonder', 'published', 'Stevland Hardaway Morris (  STEEV-lənd; né Judkins; born May 13, 1950), known professionally as Stevie Wonder, is an American singer-songwriter, musician, and record producer. He is widely regarded as one of the most influential musicians of the 20th century, and is credited as a pioneer and influence by musicians across a range of genres that include R&B, pop, soul, gospel, funk, and jazz. A virt', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_stevie-wonder', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_stevie-wonder_intro', 'ent_stevie-wonder', 'biography_intro', 'Introduction', 'Stevland Hardaway Morris (  STEEV-lənd; né Judkins; born May 13, 1950), known professionally as Stevie Wonder, is an American singer-songwriter, musician, and record producer. He is widely regarded as one of the most influential musicians of the 20th century, and is credited as a pioneer and influence by musicians across a range of genres that include R&B, pop, soul, gospel, funk, and jazz. A virtual one-man band during much of his peak years, Wonder''s use of synthesizers and other electronic musical instruments in the 1970s reshaped the conventions of contemporary R&B. He also helped drive such genres into the album era, crafting his LPs as cohesive and consistent, in addition to socially conscious statements with complex compositions.
Blind since shortly after his birth, Wonder was a child prodigy who signed with Motown''s Tamla label at the age of 11, where he was given the professional name Little Stevie Wonder. As a teenager, he established himself as one of Motown''s most successful acts, known for his excited harmonica playing and high-pitched singing in songs including "Uptight (Everything''s Alright)", "I Was Made to Love Her", "For Once in My Life", and "My Cherie Amour"; his single "Fingertips" hit No. 1 on the Billboard Hot 100 when he was 13, making him the youngest solo artist ever to top the chart. Wonder''s critical and commercial peak, termed his "classic period" (1972–1976), began with the albums Music of My Mind and Talking Book (1972), which abandoned the Motown sound in favor of a synthesizer- and keyboard-driven one. With Innervisions (1973), Fulfillingness'' First Finale (1974), and Songs in the Key of Life (1976), he became the first Black musician to win the Grammy Award for Album of the Year and the only artist to have won the award with three consecutive album releases. During the 1970s, he scored the US number-one singles "Superstition", "You Are the Sunshine of My Life", "You Haven''t Done Nothin''", "I Wish" and "Sir Duke".
In the 1980s, Wonde',
   '["clm_wiki_stevie-wonder_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 328);

-- 70. Stonewall Jackson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_stonewall-jackson', 'person', 'stonewall-jackson', 'Stonewall Jackson', 'published', 'Thomas Jonathan "Stonewall" Jackson (January 21, 1824 – May 10, 1863) was a Confederate general and military officer who served during the American Civil War. He played a prominent role in nearly all military engagements in the eastern theater of the war until his death. Military historians regard him as one of the most gifted tactical commanders in U.S. history.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_stonewall-jackson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_stonewall-jackson_intro', 'ent_stonewall-jackson', 'biography_intro', 'Introduction', 'Thomas Jonathan "Stonewall" Jackson (January 21, 1824 – May 10, 1863) was a Confederate general and military officer who served during the American Civil War. He played a prominent role in nearly all military engagements in the eastern theater of the war until his death. Military historians regard him as one of the most gifted tactical commanders in U.S. history.
Born in what was then part of Virginia (now in West Virginia), Jackson received an appointment to the United States Military Academy, graduating in the class of 1846. He served in the United States Army during the Mexican–American War, distinguishing himself at the Battle of Chapultepec. From 1851 to 1861, he taught at the Virginia Military Institute.
When Virginia seceded from the United States in May 1861 after the Battle of Fort Sumter, Jackson joined the Confederate States Army. He distinguished himself commanding a brigade at the First Battle of Bull Run in July, providing crucial reinforcements and beating back a fierce Union assault. Thus Barnard E. Bee compared him to a "stone wall", which became his enduring nickname.
Jackson performed exceptionally well in various campaigns over the next two years. On May 2, 1863, he was accidentally shot by Confederate pickets. He lost his left arm to amputation. Weakened by his wounds, he died of pneumonia eight days later. Jackson''s death was a severe setback for the Confederacy. After his death, his military exploits developed a legendary quality, becoming an important element of the pseudohistorical ideology of the "Lost Cause".',
   '["clm_wiki_stonewall-jackson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 251);

-- 71. Sylvia Plath
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_sylvia-plath', 'person', 'sylvia-plath', 'Sylvia Plath', 'published', 'Sylvia Plath (October 27, 1932 – February 11, 1963) was an American poet and author. She is credited with advancing the genre of confessional poetry and her works include The Colossus and Other Poems (1960), Ariel (1965), and The Bell Jar (1963), a semi-autobiographical novel published one month before her suicide. Her poems show womanhood in a very different manner than her contemporaries, and in', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_sylvia-plath', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_sylvia-plath_intro', 'ent_sylvia-plath', 'biography_intro', 'Introduction', 'Sylvia Plath (October 27, 1932 – February 11, 1963) was an American poet and author. She is credited with advancing the genre of confessional poetry and her works include The Colossus and Other Poems (1960), Ariel (1965), and The Bell Jar (1963), a semi-autobiographical novel published one month before her suicide. Her poems show womanhood in a very different manner than her contemporaries, and in them she also shows how women too collude with patriarchy. The Collected Poems was published in 1981, which included previously unpublished works. For this collection Plath was awarded a Pulitzer Prize for Poetry in 1982, making her the fourth person to receive this honor posthumously.
Born in Jamaica Plain, Boston, Massachusetts, Plath graduated from Smith College in Northampton, Massachusetts, and then the University of Cambridge in England, where she was a Fulbright student at Newnham College. In 1959, Plath took a creative writing seminar taught by Robert Lowell at Boston University, alongside poets Anne Sexton and George Starbuck. Within this seminar, Plath, Lowell and Sexton, whilst starting with very different writing styles, each gravitated towards a new style of poetry dubbed confessional for its use of personal experience and its tendency to use a direct form of address. She married fellow poet Ted Hughes in 1956 in London. In 1957, they briefly moved to the United States, but moved back to England in the winter of 1959.
They had two children, Frieda and Nicholas, before separating in 1962.
Plath suffered a lifelong battle with severe depression, often characterized as a bipolar-type illness, leading to multiple traumatic treatments with early model electroconvulsive therapy (ECT). She died by suicide at age 30 in London on February 11, 1963.',
   '["clm_wiki_sylvia-plath_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 281);

-- 72. Thasunda Duckett
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_thasunda-brown-duckett', 'person', 'thasunda-brown-duckett', 'Thasunda Duckett', 'published', 'Thasunda Brown Duckett (born July 22, 1973) is an American businesswoman who serves as the president and chief executive officer (CEO) of TIAA. She is a former CEO of Chase Consumer Banking, a division of JPMorgan Chase, and a member of the board of directors of Nike. Duckett is also a member of The Business Council''s Executive Committee.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_thasunda-brown-duckett', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_thasunda-brown-duckett_intro', 'ent_thasunda-brown-duckett', 'biography_intro', 'Introduction', 'Thasunda Brown Duckett (born July 22, 1973) is an American businesswoman who serves as the president and chief executive officer (CEO) of TIAA. She is a former CEO of Chase Consumer Banking, a division of JPMorgan Chase, and a member of the board of directors of Nike. Duckett is also a member of The Business Council''s Executive Committee.

',
   '["clm_wiki_thasunda-brown-duckett_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 58);

-- 73. Thomas Edison
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_thomas-edison', 'person', 'thomas-edison', 'Thomas Edison', 'published', 'Thomas Alva Edison (February 11, 1847 – October 18, 1931) was an American inventor and businessman known for his work on the incandescent light bulb, the phonograph, electric power distribution and early motion pictures. The merger of the Edison General Electric Company and the competitor Thomson-Houston Electric Company resulted in the formation of General Electric. Edison registered 1,093 patent', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_thomas-edison', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_thomas-edison_intro', 'ent_thomas-edison', 'biography_intro', 'Introduction', 'Thomas Alva Edison (February 11, 1847 – October 18, 1931) was an American inventor and businessman known for his work on the incandescent light bulb, the phonograph, electric power distribution and early motion pictures. The merger of the Edison General Electric Company and the competitor Thomson-Houston Electric Company resulted in the formation of General Electric. Edison registered 1,093 patents in the United States.
Edison was born in Milan, Ohio, but grew up in Michigan with little formal schooling. He became deaf as a child and learned through books and tinkering. Edison began working at a young age; as a railroad telegrapher, he spent much of his time inventing improvements to telegraph systems. By the age of 22, he had sold a few of his early inventions and moved to New York City to focus on engineering. He had three children with his first wife, Mary, but Edison was neglectful. She died at 29 years old. Edison had troubled relationships with his children for the rest of his life. With the help of friends, the inventor attracted investment and grew his company. By the age of 29, he owned a telegraph recorder factory in Newark with over one hundred employees.
Edison expanded, developing Menlo Park, now considered the first industrial research laboratory. Edison, known as "The Wizard of Menlo Park", drove his staff extremely hard and constantly worked himself and his associates to exhaustion. The inventor also drove up investment and publicity. He rose to international fame with the invention of the phonograph which took many years to turn into a commercial success. He later built a larger research lab in West Orange, New Jersey.
In 1878, Edison began working on an electrical lighting system which he hoped would replace the common gas lamp. Going from electrical light bulb to the modern electric grid took decades of invention, investment, and influence. Edison and his colleagues had the opportunity to get enormously wealthy as they designed and built a nation ',
   '["clm_wiki_thomas-edison_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 328);

-- 74. Thomas Jefferson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_thomas-jefferson', 'person', 'thomas-jefferson', 'Thomas Jefferson', 'published', 'Thomas Jefferson (April 13 [O.S. April 2], 1743 – July 4, 1826) was a Founding Father and the third president of the United States from 1801 to 1809. He also served as the second vice president under John Adams from 1797 to 1801. Jefferson was the principal author of the Declaration of Independence in 1776.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_thomas-jefferson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_thomas-jefferson_intro', 'ent_thomas-jefferson', 'biography_intro', 'Introduction', 'Thomas Jefferson (April 13 [O.S. April 2], 1743 – July 4, 1826) was a Founding Father and the third president of the United States from 1801 to 1809. He also served as the second vice president under John Adams from 1797 to 1801. Jefferson was the principal author of the Declaration of Independence in 1776.
He was born into the Colony of Virginia''s planter class. During the American Revolution, Jefferson represented Virginia in the Second Continental Congress. His advocacy for individual rights, including the freedoms of thought, speech, and religion, helped shape the ideological foundations of the revolution. Jefferson served as the second governor of Virginia from 1779 to 1781. In 1785, Congress appointed him as U.S. Minister to France, where he served from 1785 to 1789. President George Washington then appointed Jefferson the nation''s first secretary of state, where he served from 1790 to 1793. In 1792, Jefferson and political ally James Madison organized the Democratic-Republican Party to oppose the Federalist Party during the formation of the nation''s First Party System. Jefferson and Federalist John Adams became both personal friends and political rivals. In the 1796 U.S. presidential election between the two, Jefferson came in second, which made him Adams'' vice president under the electoral laws of the time. Four years later, in the 1800 presidential election, he again challenged Adams and won the presidency. When running for reelection in 1804, Jefferson overwhelmingly defeated the Federalists'' Charles Cotesworth Pinckney of South Carolina.
Jefferson''s presidency assertively defended the nation''s shipping and trade interests against Barbary pirates and aggressive British trade policies, promoted a western expansionist policy with the Louisiana Purchase, which doubled the nation''s geographic size, and reduced military forces and expenditures following successful negotiations with France. In his second presidential term, he was beset by difficulties at home, i',
   '["clm_wiki_thomas-jefferson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 300);

-- 75. Tom Brady
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_tom-brady', 'person', 'tom-brady', 'Tom Brady', 'published', 'Thomas Edward Patrick  Brady Jr. (born August 3, 1977) is an American former professional football quarterback who played in the National Football League (NFL) for 23 seasons. He spent his first 20 seasons with the New England Patriots and was a central contributor to the franchise''s dynasty from 2001 to 2019. In his final three seasons, he played for the Tampa Bay Buccaneers. Brady is widely rega', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_tom-brady', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_tom-brady_intro', 'ent_tom-brady', 'biography_intro', 'Introduction', 'Thomas Edward Patrick  Brady Jr. (born August 3, 1977) is an American former professional football quarterback who played in the National Football League (NFL) for 23 seasons. He spent his first 20 seasons with the New England Patriots and was a central contributor to the franchise''s dynasty from 2001 to 2019. In his final three seasons, he played for the Tampa Bay Buccaneers. Brady is widely regarded as the greatest quarterback of all time.
After playing college football for the Michigan Wolverines, Brady was selected 199th overall by the Patriots in the sixth round of the 2000 NFL draft, later earning him a reputation as the NFL''s biggest draft steal. He became the starting quarterback during his second season, which saw the Patriots win their first Super Bowl title in Super Bowl XXXVI. As the team''s primary starter for 18 seasons, Brady led the Patriots to 17 division titles (including 11 consecutive from 2009 to 2019), 13 AFC Championship Games (including eight consecutive from 2011 to 2018), nine Super Bowl appearances, and six Super Bowl titles, all NFL records for a player and franchise. He joined the Buccaneers in 2020 and won Super Bowl LV, extending his individual records to 10 Super Bowl appearances and seven victories. In 2024, Brady became the lead color commentator for the NFL on Fox and a partial owner of the Las Vegas Raiders.
Brady holds many major quarterback records, including most career passing yards, completions, touchdown passes, and games started. He is the NFL leader in career quarterback wins, quarterback regular season wins, quarterback playoff wins, and Super Bowl Most Valuable Player (MVP) Awards, and the only Super Bowl MVP for two different franchises. Additional accolades held by Brady include the most Pro Bowl selections and the first unanimous NFL MVP. The only quarterback to win a Super Bowl in three separate decades, Brady is also noted for the longevity of his success. He was the oldest NFL MVP at age 40, the oldest Super Bowl MV',
   '["clm_wiki_tom-brady_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 333);

-- 76. Tupac Shakur
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_tupac-shakur', 'person', 'tupac-shakur', 'Tupac Shakur', 'published', 'Tupac Amaru Shakur (  TOO-pahk shə-KOOR; born Lesane Parish Crooks; June 16, 1971 – September 13, 1996), also known by his stage names 2Pac and Makaveli, was an American rapper and actor. He was one of the most influential musical artists of the 20th century, and a prominent political activist for Black America. He is among the best-selling music artists, having sold more than 75 million records w', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_tupac-shakur', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_tupac-shakur_intro', 'ent_tupac-shakur', 'biography_intro', 'Introduction', 'Tupac Amaru Shakur (  TOO-pahk shə-KOOR; born Lesane Parish Crooks; June 16, 1971 – September 13, 1996), also known by his stage names 2Pac and Makaveli, was an American rapper and actor. He was one of the most influential musical artists of the 20th century, and a prominent political activist for Black America. He is among the best-selling music artists, having sold more than 75 million records worldwide. Some of Shakur''s music addressed social injustice, political issues, and the marginalization of African Americans, but he was also synonymous with gangsta rap and violent lyrics.
Shakur was born in New York City to parents who were Black Panther Party members. Raised by his mother, Afeni Shakur, he relocated to the San Francisco Bay Area in 1988. His debut album 2Pacalypse Now (1991) cemented him as a central figure in West Coast hip-hop for his political rap lyrics. Shakur achieved further critical and commercial success with his subsequent albums Strictly 4 My N.I.G.G.A.Z... (1993) and Me Against the World (1995). His Diamond-certified album All Eyez on Me (1996), the first hip-hop double album, abandoned introspective lyrics for volatile gangsta rap. It yielded two Billboard Hot 100-number one singles, "California Love" and "How Do U Want It". Alongside his solo career, Shakur formed the group Thug Life and collaborated with artists like Snoop Dogg, Dr. Dre, and the Outlawz. As an actor, Shakur starred in the films Juice (1992), Poetic Justice (1993), Above the Rim (1994), Bullet (1996), Gridlock''d (1997), and Gang Related (1997).
During his later career, Shakur was shot five times in the lobby of a New York recording studio and experienced legal troubles, including incarceration. He served eight months in prison on sexual abuse charges, but was released pending appeal in 1995. Following his release, he signed to Marion "Suge" Knight''s label Death Row Records and became embroiled in the East Coast–West Coast hip-hop rivalry, which included a high-profile feud w',
   '["clm_wiki_tupac-shakur_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 321);

-- 77. Ty Cobb
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_ty-cobb', 'person', 'ty-cobb', 'Ty Cobb', 'published', 'Tyrus Raymond Cobb (December 18, 1886 – July 17, 1961), nicknamed "the Georgia Peach", was an American professional baseball center fielder. A native of rural Narrows, Georgia, Cobb played 24 seasons in Major League Baseball (MLB). He spent 22 years with the Detroit Tigers and served as the team''s player-manager for the last six, and he finished his career with the Philadelphia Athletics. In 1936,', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_ty-cobb', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_ty-cobb_intro', 'ent_ty-cobb', 'biography_intro', 'Introduction', 'Tyrus Raymond Cobb (December 18, 1886 – July 17, 1961), nicknamed "the Georgia Peach", was an American professional baseball center fielder. A native of rural Narrows, Georgia, Cobb played 24 seasons in Major League Baseball (MLB). He spent 22 years with the Detroit Tigers and served as the team''s player-manager for the last six, and he finished his career with the Philadelphia Athletics. In 1936, Cobb received the most votes of any player on the inaugural ballot for the National Baseball Hall of Fame, receiving 222 out of a possible 226 votes (98.2%); no other player received a higher percentage of votes until Tom Seaver in 1992.  In 1999, The Sporting News ranked Cobb third on its list of "Baseball''s 100 Greatest Players."
Cobb is credited with setting 90 MLB records throughout his career. Cobb has won more batting titles than any other player, with 12. During his 24-year career, he hit .300 in a record 23 consecutive seasons, with the exception being his rookie season. He also hit .400 in three different seasons, a record he shares with three other players. Cobb has more five-hit games (14) than any other player in major league history. He also holds the career record for stealing home (54 times) and for stealing second base, third base, and home in succession (4 times). His combined total of 4,065 runs scored and runs batted in (after adjusting for home runs) is still the highest ever produced by any major league player. Cobb also ranks first in games played by an outfielder in major league history (2,934). He retained many other records for almost a half century or more, including most career games played (3,035) and at bats (11,429 or 11,434 depending on source) until 1974 as well as the modern record for most career stolen bases (892) until 1977. He also had the most career hits until 1985 (4,189 or 4,191, depending on source) and most career runs until 2001. His .366 or .367 (depending on source) career batting average ranked as the highest-ever recorded up ',
   '["clm_wiki_ty-cobb_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 342);

-- 78. Ulysses S. Grant
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_ulysses-s-grant', 'person', 'ulysses-s-grant', 'Ulysses S. Grant', 'published', 'Ulysses S. Grant (born Hiram Ulysses Grant; April 27, 1822 – July 23, 1885) was the 18th president of the United States, serving from 1869 to 1877, and was the Commanding General of the Union Army, leading it to victory in the American Civil War in 1865.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_ulysses-s-grant', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_ulysses-s-grant_intro', 'ent_ulysses-s-grant', 'biography_intro', 'Introduction', 'Ulysses S. Grant (born Hiram Ulysses Grant; April 27, 1822 – July 23, 1885) was the 18th president of the United States, serving from 1869 to 1877, and was the Commanding General of the Union Army, leading it to victory in the American Civil War in 1865.
Grant was born in Ohio and graduated from the United States Military Academy in 1843. He served with distinction in the Mexican–American War, but returned to civilian life impoverished in 1854. In 1861, shortly after the Civil War began, Grant joined the Union Army. He rose to prominence after securing victories in the western theater in 1862. In 1863, he led the Vicksburg campaign that gave Union forces control of the Mississippi River and dealt a major strategic blow to the Confederacy. President Abraham Lincoln promoted Grant to lieutenant general and command of all Union armies after his victory at Chattanooga. Grant fought Robert E. Lee through the Overland Campaign, which ended when Lee surrendered to Grant at Appomattox. In 1866, President Andrew Johnson promoted Grant to General of the Army. Grant broke with Johnson over Reconstruction policies. A war hero, drawn in by his sense of duty, Grant was unanimously nominated by the Republican Party and elected president in 1868.
As president, Grant stabilized the post-war economy, supported Reconstruction and the Fifteenth Amendment, and prosecuted the Ku Klux Klan. An effective civil rights executive, Grant signed a bill to create the United States Department of Justice and worked with Radical Republicans to protect African Americans. In 1871, he created the first Civil Service Commission. Grant was re-elected in the 1872 presidential election, but was inundated by executive scandals during his second term. His response to the Panic of 1873 was ineffective in halting the Long Depression, which contributed to the Democrats winning the House majority in 1874. Grant''s Native American policy was to assimilate Indians into Anglo-American culture. In his foreign policy',
   '["clm_wiki_ulysses-s-grant_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 320);

-- 79. Walt Disney
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_walt-disney', 'person', 'walt-disney', 'Walt Disney', 'published', 'Walter Elias Disney ( DIZ-nee; December 5, 1901 – December 15, 1966) was an American animator, film producer, voice actor, and entrepreneur. A pioneer of the American animation industry, he introduced several developments in the production of cartoons. As a film producer, he holds the record for most Academy Awards won (22) and nominations (59) by an individual. He was presented with two Golden Gl', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_walt-disney', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_walt-disney_intro', 'ent_walt-disney', 'biography_intro', 'Introduction', 'Walter Elias Disney ( DIZ-nee; December 5, 1901 – December 15, 1966) was an American animator, film producer, voice actor, and entrepreneur. A pioneer of the American animation industry, he introduced several developments in the production of cartoons. As a film producer, he holds the record for most Academy Awards won (22) and nominations (59) by an individual. He was presented with two Golden Globe Special Achievement Awards and an Emmy Award, among other honors. Several of his films are included in the National Film Registry by the Library of Congress and have also been named as some of the best by the American Film Institute.
Born in Chicago in 1901 and raised largely in Missouri, Disney developed an early interest in drawing. He took art classes as a boy and took a job as a commercial illustrator at the age of 18. He moved to California in the early 1920s and set up the Disney Brothers Studio (now the Walt Disney Company) with his brother Roy. With Ub Iwerks, he developed the character Mickey Mouse in 1928, his first highly popular success; he also provided the voice for his creation in the early years. As the studio grew, he became more adventurous, introducing synchronized sound, full-color three-strip Technicolor, animated feature films and technical developments in cameras. The results, seen in features such as Snow White and the Seven Dwarfs (1937), Pinocchio, Fantasia (both 1940), Dumbo (1941), and Bambi (1942), furthered the development of animated film. New animated and live-action films followed after World War II, including Cinderella (1950), Sleeping Beauty (1959), and Mary Poppins (1964), the last of which received five Academy Awards.
In the 1950s, Disney expanded into the theme park industry, and in July 1955 he opened Disneyland in Anaheim, California. To fund the project he diversified into television programs, such as Walt Disney''s Disneyland and The Mickey Mouse Club. He was also involved in planning the 1959 Moscow Fair, the 1960 Winter Olymp',
   '["clm_wiki_walt-disney_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 327);

-- 80. Walter Johnson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_walter-johnson', 'person', 'walter-johnson', 'Walter Johnson', 'published', 'Walter Perry Johnson (November 6, 1887 – December 10, 1946), nicknamed "Barney" and "the Big Train", was an American professional baseball player and manager. He played his entire 21-year baseball career in Major League Baseball (MLB) as a right-handed pitcher for the Washington Senators from 1907 to 1927. He later served as manager of the Senators from 1929 through 1932 and of the Cleveland India', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_walter-johnson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_walter-johnson_intro', 'ent_walter-johnson', 'biography_intro', 'Introduction', 'Walter Perry Johnson (November 6, 1887 – December 10, 1946), nicknamed "Barney" and "the Big Train", was an American professional baseball player and manager. He played his entire 21-year baseball career in Major League Baseball (MLB) as a right-handed pitcher for the Washington Senators from 1907 to 1927. He later served as manager of the Senators from 1929 through 1932 and of the Cleveland Indians from 1933 through 1935.
Generally regarded as one of the greatest pitchers in baseball history, Johnson established several records, some of which remain unbroken. He remains by far the all-time career leader in shutouts with 110, second in wins with 417, and fourth in complete games with 531. He held the career record in strikeouts from 1919, passing Christy Mathewson’s mark of 2,507, until 1983, when three players (Steve Carlton, Nolan Ryan and Gaylord Perry) passed his career total of 3,508. On July 22, 1923, Johnson became the first pitcher to record 3,000 strikeouts. He remained the only player to do so until Bob Gibson matched the feat on July 17, 1974. Of the club''s 20 members, he pitched the most innings and has the lowest strikeouts per nine innings pitched (5.34 K/9). Johnson led the league in strikeouts for 12 total seasons, 8 of which were consecutive, both all-time records. He is the only pitcher in Major League history to record more than 400 wins and strike out more than 3,500 batters.
In 1936, Johnson was elected into the Baseball Hall of Fame as one of its "first five" inaugural members.',
   '["clm_wiki_walter-johnson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 257);

-- 81. Warren Buffett
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_warren-buffett', 'person', 'warren-buffett', 'Warren Buffett', 'published', 'Warren Edward Buffett ( BUFF-it; born August 30, 1930) is an American investor and philanthropist who is the chairman and former CEO of the conglomerate Berkshire Hathaway. As a result of his success, Buffett is one of the best-known investors in the world. According to Forbes, as of January 2026, Buffett''s estimated net worth stood at US$148.9 billion, making him the ninth-richest person in the w', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_warren-buffett', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_warren-buffett_intro', 'ent_warren-buffett', 'biography_intro', 'Introduction', 'Warren Edward Buffett ( BUFF-it; born August 30, 1930) is an American investor and philanthropist who is the chairman and former CEO of the conglomerate Berkshire Hathaway. As a result of his success, Buffett is one of the best-known investors in the world. According to Forbes, as of January 2026, Buffett''s estimated net worth stood at US$148.9 billion, making him the ninth-richest person in the world.
Buffett was born in Omaha, Nebraska. The son of U.S. congressman and businessman Howard Buffett, he developed an interest in business and investing during his youth. He entered the Wharton School of the University of Pennsylvania in 1947 before graduating from the University of Nebraska in Lincoln at 20. He went on to graduate from Columbia Business School, where he molded his investment approach around the concept of value investing pioneered by Benjamin Graham. He attended New York Institute of Finance to focus on his economics background and soon pursued a business career.
He then began several business ventures and investment partnerships, including one with Graham. He created Buffett Partnership Ltd. in 1956 and his investment firm eventually acquired textile manufacturer Berkshire Hathaway, applying its name to a diversified holding company. Buffett emerged as the company''s chairman and majority shareholder in 1970. In 1978, fellow investor and long-time business associate Charlie Munger joined Buffett as vice-chairman.
From 1970 to 2026, Buffett presided as the chairman and largest shareholder of Berkshire Hathaway, one of America''s foremost holding companies and world''s leading corporate conglomerates. He has been referred to as the "Oracle" or "Sage" of Omaha by global media as a result of having accumulated a massive fortune derived from his business and investment success. Buffett adheres to the principles of value investing and frugality despite his wealth. Buffett met Chuck Feeney and has pledged to give away 99 percent of his fortune to philanthropic cau',
   '["clm_wiki_warren-buffett_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 310);

-- 82. Warren G. Harding
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_warren-g-harding', 'person', 'warren-g-harding', 'Warren G. Harding', 'published', 'Warren Gamaliel Harding (November 2, 1865 – August 2, 1923) was the 29th president of the United States, serving from 1921 until his death in 1923. A member of the Republican Party, he was one of the most popular presidents at the time of his death. After that, a number of scandals were exposed that greatly damaged his reputation.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_warren-g-harding', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_warren-g-harding_intro', 'ent_warren-g-harding', 'biography_intro', 'Introduction', 'Warren Gamaliel Harding (November 2, 1865 – August 2, 1923) was the 29th president of the United States, serving from 1921 until his death in 1923. A member of the Republican Party, he was one of the most popular presidents at the time of his death. After that, a number of scandals were exposed that greatly damaged his reputation.
Harding lived in rural Ohio all his life, except when political service took him elsewhere. As a young man, he bought The Marion Star and built it into a successful newspaper. Harding served in the Ohio State Senate from 1900 to 1904, and was lieutenant governor for two years. He was defeated for governor in 1910, but was elected to the United States Senate in 1914—the state''s first direct election for that office. Harding ran for the Republican nomination for president in 1920, but was considered a long shot before the convention. When the leading candidates could not garner a majority, and the convention deadlocked, support for Harding increased, and he was nominated on the tenth ballot. He conducted a front porch campaign, remaining mostly in Marion and allowing people to come to him. He promised a return to normalcy of the pre–World War I period, and defeated Democratic nominee James M. Cox in a landslide, becoming the first sitting senator to be elected president.
Harding appointed a number of respected figures to his cabinet, including Andrew Mellon at Treasury, Herbert Hoover at Commerce, and Charles Evans Hughes at the State Department. A major foreign policy achievement came with the Washington Naval Conference of 1921–1922, in which the world''s major naval powers agreed on a naval limitations program that lasted a decade. Harding released political prisoners who had been arrested for their opposition to World War I. In 1923, he died of a heart attack in San Francisco while on a western tour, and was succeeded by Vice President Calvin Coolidge.
The exposure of scandals after Harding''s death, including Teapot Dome, as well as an ex',
   '["clm_wiki_warren-g-harding_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 335);

-- 83. Whitney Houston
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_whitney-houston', 'person', 'whitney-houston', 'Whitney Houston', 'published', 'Whitney Elizabeth Houston (August 9, 1963 – February 11, 2012) was an American singer, actress, film producer, and record producer. Commonly referred to as "the Voice", she is one of the most awarded entertainers of all time. Houston is one of the best-selling music artists of all time, with sales of more than 220 million records worldwide. A cultural icon, she broke down gender and racial barrier', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_whitney-houston', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_whitney-houston_intro', 'ent_whitney-houston', 'biography_intro', 'Introduction', 'Whitney Elizabeth Houston (August 9, 1963 – February 11, 2012) was an American singer, actress, film producer, and record producer. Commonly referred to as "the Voice", she is one of the most awarded entertainers of all time. Houston is one of the best-selling music artists of all time, with sales of more than 220 million records worldwide. A cultural icon, she broke down gender and racial barriers through her artistic achievements, Hollywood crossover, and music videos. Known for her vocal delivery, gospel singing style, crossover appeal, and live performances, Houston was ranked second on Rolling Stone''s list of the greatest singers of all time in 2023. 
Houston became one of the first black women to appear on the cover of Seventeen after becoming a teen model in 1981. She signed to Arista Records at the age of 19. Her first two studio albums, Whitney Houston (1985) and Whitney (1987), topped the Billboard 200 for 14 and 11 weeks, respectively. The former remains the best-selling debut album by a solo artist, while the latter made her the first woman to debut atop the US and UK charts. Houston took a more urban turn with her third album, I''m Your Baby Tonight (1990), and performed an acclaimed rendition of "The Star-Spangled Banner" at Super Bowl XXV in 1991. She then starred in the films The Bodyguard (1992), Waiting to Exhale (1995), The Preacher''s Wife (1996), Cinderella (1997) and Sparkle (2012), and produced the film franchises The Princess Diaries (2001–2004) and The Cheetah Girls (2003–2006). Soundtracks of The Bodyguard and The Preacher''s Wife, respectively, rank as the best-selling soundtrack album and gospel album of all time, with the former winning the Grammy Award for Album of the Year and topping the Billboard 200 for 20 weeks.
Following the success of My Love Is Your Love (1998), Houston''s first studio album in eight years, she renewed her contract with Arista Records for $100 million in 2001, one of the largest recording deals of all time. However,',
   '["clm_wiki_whitney-houston_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 332);

-- 84. Will Durant
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_will-durant', 'person', 'will-durant', 'Will Durant', 'published', 'William James Durant (; November 5, 1885 – November 7, 1981) was an American historian and philosopher, best known for his eleven-volume work, The Story of Civilization, which contains and details the history of Eastern and Western civilizations. It was written in collaboration with his wife, Ariel Durant, and published between 1935 and 1975. He was earlier noted for The Story of Philosophy (1926)', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_will-durant', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_will-durant_intro', 'ent_will-durant', 'biography_intro', 'Introduction', 'William James Durant (; November 5, 1885 – November 7, 1981) was an American historian and philosopher, best known for his eleven-volume work, The Story of Civilization, which contains and details the history of Eastern and Western civilizations. It was written in collaboration with his wife, Ariel Durant, and published between 1935 and 1975. He was earlier noted for The Story of Philosophy (1926), described as "a groundbreaking work that helped to popularize philosophy".
Durant conceived of philosophy as total perspective or seeing things sub specie totius (i.e., "from the perspective of the whole")—a phrase inspired by Spinoza''s sub specie aeternitatis, roughly meaning "from the perspective of the eternal". He sought to unify and humanize the great body of historical knowledge, which had grown voluminous and become fragmented into esoteric specialties, and to vitalize it for contemporary application. As a result of their success, he and his wife were jointly awarded the Pulitzer Prize for General Nonfiction in 1968 and the Presidential Medal of Freedom in 1977.',
   '["clm_wiki_will-durant_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 167);

-- 85. William Faulkner
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_william-faulkner', 'person', 'william-faulkner', 'William Faulkner', 'published', 'William Cuthbert Faulkner (; né Falkner; September 25, 1897 – July 6, 1962) was an American writer. He is best known for his novels and short stories set in the fictional Yoknapatawpha County, Mississippi, a stand-in for Lafayette County where he spent most of his life. Winner of the 1949 Nobel Prize in Literature, Faulkner is one of the most celebrated writers of American literature, often consid', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_william-faulkner', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_william-faulkner_intro', 'ent_william-faulkner', 'biography_intro', 'Introduction', 'William Cuthbert Faulkner (; né Falkner; September 25, 1897 – July 6, 1962) was an American writer. He is best known for his novels and short stories set in the fictional Yoknapatawpha County, Mississippi, a stand-in for Lafayette County where he spent most of his life. Winner of the 1949 Nobel Prize in Literature, Faulkner is one of the most celebrated writers of American literature, often considered the greatest writer of Southern literature and regarded as one of the most influential and important writers of the 20th century.
Faulkner was born in New Albany, Mississippi, and raised in Oxford, Mississippi. During World War I, he joined the Royal Canadian Air Force, but did not serve in combat. Returning to Oxford, he attended the University of Mississippi for three semesters before dropping out. He moved to New Orleans, where he wrote his first novel Soldiers'' Pay (1925). He went back to Oxford and wrote Sartoris (1927), his first work set in Yoknapatawpha County. In 1929, he published The Sound and the Fury. The following year, he wrote As I Lay Dying. Later that decade, he wrote Light in August; Absalom, Absalom!; and The Wild Palms. He also worked as a screenwriter, contributing to Howard Hawks''s To Have and Have Not and The Big Sleep, adapted from Raymond Chandler''s novel. The former film, adapted from Ernest Hemingway''s novel, is the only film with contributions by two Nobel laureates.
Faulkner''s reputation grew following publication of Malcolm Cowley''s The Portable Faulkner (1946), and he was awarded the 1949 Nobel Prize in Literature for "his powerful and unique contribution to the modern American novel." He is the only Mississippi-born Nobel laureate. Two of his works, A Fable (1954) and The Reivers (1962), won the Pulitzer Prize for Fiction. Faulkner died from a heart attack on July 6, 1962, following a fall from his horse the month before. Ralph Ellison called him "the greatest artist the South has produced".

',
   '["clm_wiki_william-faulkner_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 323);

-- 86. William Henry Harrison
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_william-henry-harrison', 'person', 'william-henry-harrison', 'William Henry Harrison', 'published', 'William Henry Harrison (February 9, 1773 – April 4, 1841) was the ninth president of the United States from March to April 1841. He died 31 days into his term, making him the shortest serving president and the first president to die in office. Immediately after his death, Vice President John Tyler took over, ending the constitutional crisis that had been triggered by the question of presidential s', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_william-henry-harrison', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_william-henry-harrison_intro', 'ent_william-henry-harrison', 'biography_intro', 'Introduction', 'William Henry Harrison (February 9, 1773 – April 4, 1841) was the ninth president of the United States from March to April 1841. He died 31 days into his term, making him the shortest serving president and the first president to die in office. Immediately after his death, Vice President John Tyler took over, ending the constitutional crisis that had been triggered by the question of presidential succession in the U.S. Constitution.
Harrison was born in Charles City County, Virginia. He was the last president to be born before the U.S. Declaration of Independence, making him a British subject. A member of the Harrison family of Virginia, he was a son of Benjamin Harrison V, a Founding Father, and the father of John Scott Harrison, the only son and father of two presidents of the United States. His grandson, Benjamin Harrison, became the 23rd president of the United States. In 1794, he participated in the Battle of Fallen Timbers, an American military victory that ended the Northwest Indian War. In 1811, he led a military force against Tecumseh''s confederacy at the Battle of Tippecanoe, for which he earned the nickname "Old Tippecanoe". He was promoted to major general in the Army during the War of 1812, and led American infantry and cavalry to victory at the Battle of the Thames in Upper Canada.
Harrison''s political career began in 1798, with an appointment as secretary of the Northwest Territory. In 1799, he was elected as the territory''s non-voting delegate in the U.S. House of Representatives. He became governor of the newly established Indiana Territory in 1801 and, through multiple treaties with American Indian tribes, he acquired millions of acres for the nation. After the War of 1812, he moved to Ohio where, in 1816, he was elected to represent the state''s 1st district in the House. In 1824, he was elected to the U.S. Senate, though his Senate term was cut short by his appointment as minister plenipotentiary to Gran Colombia in 1828.
Harrison returned to priva',
   '["clm_wiki_william-henry-harrison_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 336);

-- 87. William Howard Taft
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_william-howard-taft', 'person', 'william-howard-taft', 'William Howard Taft', 'published', 'William Howard Taft (September 15, 1857 – March 8, 1930) was the 27th president of the United States from 1909 to 1913 and the tenth chief justice of the United States from 1921 to 1930. He is the only person to have held both offices.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_william-howard-taft', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_william-howard-taft_intro', 'ent_william-howard-taft', 'biography_intro', 'Introduction', 'William Howard Taft (September 15, 1857 – March 8, 1930) was the 27th president of the United States from 1909 to 1913 and the tenth chief justice of the United States from 1921 to 1930. He is the only person to have held both offices.
Taft was born in Cincinnati, Ohio. His father, Alphonso Taft, was a U.S. attorney general and secretary of war. Taft attended Yale and joined Skull and Bones, of which his father was a founding member. After becoming a lawyer, Taft was appointed a judge while still in his twenties. He continued a rapid rise, being named solicitor general and a judge of the Sixth Circuit Court of Appeals. In 1901, President William McKinley appointed Taft civilian governor of the Philippines. In 1904, President Theodore Roosevelt made him Secretary of War, and he became Roosevelt''s hand-picked successor. Despite his personal ambition to become chief justice, Taft declined repeated offers of appointment to the Supreme Court of the United States, believing his political work to be more important.
With Roosevelt''s help, Taft had little opposition for the Republican nomination for president in 1908 and easily defeated William Jennings Bryan for the presidency in that November''s election. As president, he focused on East Asia more than European affairs and repeatedly intervened to prop up or remove Latin American governments. While Taft sought reductions to trade tariffs, the resulting bill was heavily influenced by special interests. His administration was filled with conflict between the Republican Party''s conservative wing, with which Taft often sympathized, and its progressive wing, towards which Roosevelt increasingly gravitated. Controversies over conservation and antitrust cases filed by the Taft administration served to further separate the two men. The 1912 presidential election was a three-way race, as Roosevelt challenged Taft for renomination. Taft used his control of the party machinery to gain a bare majority of delegates and Roosevelt bolted ',
   '["clm_wiki_william-howard-taft_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 313);

-- 88. William McKinley
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_william-mckinley', 'person', 'william-mckinley', 'William McKinley', 'published', 'William McKinley (January 29, 1843 – September 14, 1901) was the 25th president of the United States, serving from 1897 until his assassination in 1901. A member of the Republican Party, he led a realignment that made Republicans largely dominant in the industrial states and nationwide for decades. McKinley successfully led the U.S. in the Spanish–American War and oversaw a period of American expa', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_william-mckinley', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_william-mckinley_intro', 'ent_william-mckinley', 'biography_intro', 'Introduction', 'William McKinley (January 29, 1843 – September 14, 1901) was the 25th president of the United States, serving from 1897 until his assassination in 1901. A member of the Republican Party, he led a realignment that made Republicans largely dominant in the industrial states and nationwide for decades. McKinley successfully led the U.S. in the Spanish–American War and oversaw a period of American expansionism, with the annexations of Hawaii, Puerto Rico, Guam, the Philippines, and American Samoa.
McKinley was the last president to have served in the American Civil War; he was the only one to begin his service as an enlisted man and end it as a brevet major. After the war, he settled in Canton, Ohio, where he practiced law and married Ida Saxton. In 1876, McKinley was elected to Congress, where he became the Republican expert on the protective tariff, believing protectionism would bring prosperity. His 1890 McKinley Tariff was highly controversial and, together with a Democratic Party redistricting aimed at gerrymandering him out of office, led to his defeat in the Democratic landslide of 1890. He was elected governor of Ohio in 1891 and 1893, steering a moderate course between capital and labor interests.
McKinley secured the Republican nomination for president in 1896 amid a deep economic depression and defeated his Democratic rival William Jennings Bryan after a front porch campaign in which he advocated "sound money" (the gold standard unless altered by international agreement) and promised that high tariffs would restore prosperity. McKinley''s presidency saw rapid economic growth.  He rejected free silver in favor of keeping the nation on the gold standard, and raised protective tariffs, signing the Dingley Tariff of 1897 to protect manufacturers and factory workers from foreign competition and securing the passage of the Gold Standard Act of 1900. 
McKinley''s foreign policy emulated the era''s overseas imperialism of the great powers in Oceania, Asia, and the Caribb',
   '["clm_wiki_william-mckinley_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 315);

-- 89. Willie Mays
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_willie-mays', 'person', 'willie-mays', 'Willie Mays', 'published', 'Willie Howard Mays Jr. (May 6, 1931 – June 18, 2024), nicknamed "the Say Hey Kid", was an American professional baseball center fielder who played 23 seasons in Major League Baseball (MLB). Widely regarded as one of the greatest players of all time, Mays was a five-tool player who began his career in the Negro leagues, playing for the Birmingham Black Barons, and spent the rest of his career in th', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_willie-mays', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_willie-mays_intro', 'ent_willie-mays', 'biography_intro', 'Introduction', 'Willie Howard Mays Jr. (May 6, 1931 – June 18, 2024), nicknamed "the Say Hey Kid", was an American professional baseball center fielder who played 23 seasons in Major League Baseball (MLB). Widely regarded as one of the greatest players of all time, Mays was a five-tool player who began his career in the Negro leagues, playing for the Birmingham Black Barons, and spent the rest of his career in the National League (NL), playing for the New York / San Francisco Giants and New York Mets.
Born in Westfield, Alabama, Mays was an all-around athlete. He joined the Black Barons of the Negro American League in 1948, playing with them until the Giants signed him upon his graduation from high school in 1950. He debuted in MLB with the Giants and won the Rookie of the Year Award in 1951 after hitting 20 home runs to help the Giants win their first pennant in 14 years. In 1954, he won the NL Most Valuable Player (MVP) Award, leading the Giants to their last World Series title before their move to the West Coast. His over-the-shoulder catch in Game 1 of the 1954 World Series is one of the most famous baseball plays of all time. After the Giants moved to San Francisco, Mays went on to win another MVP Award in 1965 and also led the Giants to the 1962 World Series, this time losing to the New York Yankees. He ended his career with a return to New York after an early season trade to the New York Mets in 1972, retiring after the team''s trip to the 1973 World Series. He served as a coach for the Mets for the rest of the decade before rejoining the Giants as a special assistant to the president and general manager.
Mays was an All-Star 24 times, tying for the second-most appearances in history. He led the NL in home runs four times and in slugging percentage five times while batting over .300 and posting 100 runs batted in (RBI) ten times each. Mays was also at the forefront of a resurgence of speed as an offensive weapon in the 1950s, leading the league in stolen bases four times, tri',
   '["clm_wiki_willie-mays_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 370);

-- 90. Wilt Chamberlain
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_wilt-chamberlain', 'person', 'wilt-chamberlain', 'Wilt Chamberlain', 'published', 'Wilton Norman Chamberlain ( CHAYM-bər-lin; August 21, 1936 – October 12, 1999) was an American professional basketball player. Standing 7 feet 1 inch (2.16 m) tall, he played center in the National Basketball Association (NBA) for 14 seasons. He was enshrined in the Naismith Memorial Basketball Hall of Fame in 1978, and was elected to the NBA''s 35th, 50th, and 75th anniversary teams. Chamberlain i', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_wilt-chamberlain', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_wilt-chamberlain_intro', 'ent_wilt-chamberlain', 'biography_intro', 'Introduction', 'Wilton Norman Chamberlain ( CHAYM-bər-lin; August 21, 1936 – October 12, 1999) was an American professional basketball player. Standing 7 feet 1 inch (2.16 m) tall, he played center in the National Basketball Association (NBA) for 14 seasons. He was enshrined in the Naismith Memorial Basketball Hall of Fame in 1978, and was elected to the NBA''s 35th, 50th, and 75th anniversary teams. Chamberlain is widely considered to be one of the greatest basketball players of all time.
According to former teammate Billy Cunningham, "The NBA Guide reads like Wilt''s personal diary." Chamberlain holds 72 NBA records, including several regular season records in scoring, rebounding, and durability; blocks were not counted during his career. He remains the only player to score 100 points in a single game. He also once gathered 55 rebounds, and never fouled out. Chamberlain is the only player to average 30 points and 20 rebounds per game in a season, a feat he accomplished seven times. He once averaged 50 points per game, as well as 48 minutes per game, in a season. Chamberlain ultimately won two NBA championships, four regular-season Most Valuable Player (MVP) awards, the Rookie of the Year, one Finals MVP, and one All-Star Game MVP; he was selected to thirteen All-Star Games and ten All-NBA Teams (seven First and three Second teams). He won seven scoring, eleven rebounding, nine durability, and nine field goal percentage titles.
While in college, Chamberlain played for the Kansas Jayhawks, and lost the national championship game to the North Carolina Tar Heels in triple overtime his sophomore year. He also played for the Harlem Globetrotters before joining the NBA, where he played for the Philadelphia / San Francisco Warriors, Philadelphia 76ers, and Los Angeles Lakers. Chamberlain had an on-court rivalry with Boston Celtics'' center Bill Russell, suffering a long string of losses before breaking through and winning the 1967 NBA Finals as a member of the 76ers. Chamberlain won his sec',
   '["clm_wiki_wilt-chamberlain_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 324);

-- 91. Woodrow Wilson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_woodrow-wilson', 'person', 'woodrow-wilson', 'Woodrow Wilson', 'published', 'Thomas Woodrow Wilson (December 28, 1856 – February 3, 1924) was the 28th president of the United States, serving from 1913 to 1921. He was the only Democrat to serve as president during the Progressive Era, when Republicans dominated the presidency and legislative branches. As president, Wilson made significant economic reforms and led the United States through World War I. He was the leading arc', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_woodrow-wilson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_woodrow-wilson_intro', 'ent_woodrow-wilson', 'biography_intro', 'Introduction', 'Thomas Woodrow Wilson (December 28, 1856 – February 3, 1924) was the 28th president of the United States, serving from 1913 to 1921. He was the only Democrat to serve as president during the Progressive Era, when Republicans dominated the presidency and legislative branches. As president, Wilson made significant economic reforms and led the United States through World War I. He was the leading architect of the League of Nations, and his stance on foreign policy came to be known as Wilsonian idealism.
Born in Staunton, Virginia, Wilson grew up in the Southern United States during the American Civil War and Reconstruction era. After earning a PhD in history and political science from Johns Hopkins University, Wilson taught at several colleges prior to being appointed president of Princeton University, where he emerged as a prominent spokesman for progressivism in higher education. Wilson is considered one of the founding fathers of the field of public administration due to his 1887 article "The Study of Administration". Wilson served as the governor of New Jersey from 1911 to 1913, during which he broke with party bosses and won the passage of several progressive reforms.
In the 1912 election, Wilson defeated the incumbent Republican president, William Howard Taft, and the third-party nominee and former president Theodore Roosevelt, becoming the first Southerner to win the presidency since 1848. During his first year as president, Wilson authorized the widespread imposition of racial segregation inside the federal bureaucracy, and his opposition to women''s suffrage drew protests. His first term was largely devoted to pursuing the passage of his progressive New Freedom domestic agenda. His first major priority was the Revenue Act of 1913, which began the modern income tax, and the Federal Reserve Act, which created the Federal Reserve System. At the outbreak of World War I in 1914, the U.S. declared neutrality as Wilson tried to negotiate peace between the Allied and C',
   '["clm_wiki_woodrow-wilson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 317);

-- 92. 50 Cent
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_50-cent', 'person', '50-cent', '50 Cent', 'published', 'Curtis James Jackson III (born July 6, 1975), known professionally as 50 Cent, is an American rapper, actor, television producer, record executive, and businessman. Born in Queens, a borough of New York City, Jackson began pursuing a musical career in 1996. In 1999–2000, he recorded his debut album, Power of the Dollar, for Columbia Records. During a shooting in May 2000, he was struck by nine bul', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_50-cent', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_50-cent_intro', 'ent_50-cent', 'biography_intro', 'Introduction', 'Curtis James Jackson III (born July 6, 1975), known professionally as 50 Cent, is an American rapper, actor, television producer, record executive, and businessman. Born in Queens, a borough of New York City, Jackson began pursuing a musical career in 1996. In 1999–2000, he recorded his debut album, Power of the Dollar, for Columbia Records. During a shooting in May 2000, he was struck by nine bullets, causing its release to be canceled and Jackson to be dropped from the label. His 2002 mixtape Guess Who''s Back? was discovered by Detroit rapper Eminem, who signed Jackson to his label Shady Records (an imprint of Interscope Records) that year.
Jackson''s debut studio album, Get Rich or Die Tryin'' (2003), was released to critical acclaim and commercial success. Peaking atop the Billboard 200, it spawned the Billboard Hot 100-number one singles "In da Club" and "21 Questions" (featuring Nate Dogg), and received Multiple Platinum certification by the Recording Industry Association of America (RIAA). Also in 2003, he launched the record label G-Unit Records, namesake of a hip-hop group he formed two years earlier; the label''s initial signees were its members, fellow East Coast rappers Lloyd Banks and Tony Yayo. His second album, The Massacre (2005), met with continued success, yielding his third number-one single, "Candy Shop" (featuring Olivia). He took a lighter, more commercially oriented approach with his third and fourth albums, Curtis (2007) and Before I Self Destruct (2009)—both of which witnessed critical and commercial declines—and aimed for a return to his roots with his fifth album, Animal Ambition (2014), which received mixed reviews. He has since focused on television and media, having executive-produced and starred in the television series Power (2014–2020), as well as its numerous spin-offs under his company G-Unit Films and Television Inc.
Jackson has sold over 30 million albums worldwide and earned several accolades, including a Grammy Award, a Primetime ',
   '["clm_wiki_50-cent_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 313);

-- 93. A'ja Wilson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_aja-wilson', 'person', 'aja-wilson', 'A''ja Wilson', 'published', 'A''ja Riyadh Wilson ( AY-zhə; born August 8, 1996) is an American professional basketball player for the Las Vegas Aces of the Women''s National Basketball Association (WNBA). Wilson is regarded by many as the best female basketball player of her generation, and is widely considered one of the greatest WNBA players ever.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_aja-wilson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_aja-wilson_intro', 'ent_aja-wilson', 'biography_intro', 'Introduction', 'A''ja Riyadh Wilson ( AY-zhə; born August 8, 1996) is an American professional basketball player for the Las Vegas Aces of the Women''s National Basketball Association (WNBA). Wilson is regarded by many as the best female basketball player of her generation, and is widely considered one of the greatest WNBA players ever.
Wilson played college basketball at the University of South Carolina and helped lead the Gamecocks to their first NCAA women''s basketball championship in 2017, winning the NCAA basketball tournament Most Outstanding Player award. In 2018, she won a record third straight SEC Player of the Year award, leading South Carolina to a record fourth straight SEC tournament championship, becoming the all-time leading scorer in South Carolina women''s basketball history, and was a consensus first-team All-American for the third consecutive season. Wilson swept all National Player of the Year awards (Wade, AP, Honda, USBWA, Wooden and Naismith) as the best player in women''s college basketball.
In the 2018 WNBA draft, Wilson was drafted first overall by the Las Vegas Aces. She won her first WNBA MVP with the Aces in 2020, winning again in 2022, 2024 and 2025. In 2022, Wilson helped lead the Aces to their first title in franchise history, a feat she repeated in 2023 while earning Finals MVP. On July 7, 2024, in a matchup against the Dallas Wings, she became the Aces'' all-time leading scorer. In 2025, she led the Aces to a third championship title, becoming the first WNBA or NBA player to win a scoring title, be a champion, Finals MVP, MVP and Defensive Player of the Year in the same season.
Internationally, Wilson plays for the United States women''s national basketball team, with whom she has won two Olympic and two World Cup gold medals.',
   '["clm_wiki_aja-wilson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 294);

-- 94. A. J. Foyt
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_a-j-foyt', 'person', 'a-j-foyt', 'A. J. Foyt', 'published', 'Anthony Joseph Foyt Jr. (born January 16, 1935) is a retired American racing driver who competed in numerous disciplines of motorsport, best known for his open wheel racing career, and as the first four-time winner of the Indianapolis 500. He holds the most American National Championship titles in history with seven.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_a-j-foyt', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_a-j-foyt_intro', 'ent_a-j-foyt', 'biography_intro', 'Introduction', 'Anthony Joseph Foyt Jr. (born January 16, 1935) is a retired American racing driver who competed in numerous disciplines of motorsport, best known for his open wheel racing career, and as the first four-time winner of the Indianapolis 500. He holds the most American National Championship titles in history with seven.
Foyt competed in United States Automobile Club (USAC) Championship cars, sprint cars and midget cars. He raced stock cars in NASCAR and USAC. He holds the USAC career wins record with 159 victories, and the Indy car racing career wins record with 67.
Foyt is the only driver to have won the Indianapolis 500, the 24 Hours of Le Mans, the Daytona 500, and the 24 Hours of Daytona. He is a member of numerous motorsports halls of fame.
In the mid-1960s, Foyt became a team owner, fielding cars for himself and other drivers. After retiring from race driving, he has owned A. J. Foyt Enterprises, which has fielded teams in CART, the IndyCar Series, and NASCAR.',
   '["clm_wiki_a-j-foyt_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 168);

-- 95. A. Philip Randolph
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_a-philip-randolph', 'person', 'a-philip-randolph', 'A. Philip Randolph', 'published', 'Asa Philip Randolph (April 15, 1889 – May 16, 1979) was an American railwayman, trade unionist and civil rights activist. In 1925, he organized and led the Brotherhood of Sleeping Car Porters, the first successful African-American-led labor union. In the early Civil Rights Movement and the Labor Movement, Randolph was a prominent voice. His continuous agitation with the support of fellow labor rig', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_a-philip-randolph', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_a-philip-randolph_intro', 'ent_a-philip-randolph', 'biography_intro', 'Introduction', 'Asa Philip Randolph (April 15, 1889 – May 16, 1979) was an American railwayman, trade unionist and civil rights activist. In 1925, he organized and led the Brotherhood of Sleeping Car Porters, the first successful African-American-led labor union. In the early Civil Rights Movement and the Labor Movement, Randolph was a prominent voice. His continuous agitation with the support of fellow labor rights activists against racist labor practices helped lead President Franklin D. Roosevelt to issue Executive Order 8802 in 1941, banning discrimination in the defense industries during World War II. The group then successfully maintained pressure, so that President Harry S. Truman proposed a new Civil Rights Act and issued Executive Orders 9980 and 9981 in 1948, promoting fair employment and anti-discrimination policies in federal government hiring, and ending racial segregation in the armed services.
Randolph was born and raised in Florida. He was educated at Cookman Institute, then moved to New York City as part of the early Great Migration, leaving behind the discriminatory Jim Crow–era south. There he became convinced that overcoming racism required collective action and he was drawn to socialism and workers'' rights. He unsuccessfully ran for state office on the socialist ticket in the early 1920s, but found more success in organizing for African American workers'' rights.
In 1963, Randolph was the head of the March on Washington, organized by Bayard Rustin, at which Reverend Martin Luther King Jr. delivered his "I Have a Dream" speech. Randolph inspired the "Freedom Budget", sometimes called the "Randolph Freedom budget", which aimed to deal with the economic problems facing the Black community. It was published by the Randolph Institute in January 1967 as "A Freedom Budget for All Americans".',
   '["clm_wiki_a-philip-randolph_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 282);

-- 96. Aaron Burr
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_aaron-burr', 'person', 'aaron-burr', 'Aaron Burr', 'published', 'Aaron Burr Jr. (February 6, 1756 – September 14, 1836) was an American politician, businessman, and lawyer who served as the third vice president of the United States from 1801 to 1805, during Thomas Jefferson''s first presidential term. A member of the Democratic-Republican Party, he is primarily remembered for the killing of Founding Father Alexander Hamilton in a duel, as well as his conspiracy ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_aaron-burr', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_aaron-burr_intro', 'ent_aaron-burr', 'biography_intro', 'Introduction', 'Aaron Burr Jr. (February 6, 1756 – September 14, 1836) was an American politician, businessman, and lawyer who served as the third vice president of the United States from 1801 to 1805, during Thomas Jefferson''s first presidential term. A member of the Democratic-Republican Party, he is primarily remembered for the killing of Founding Father Alexander Hamilton in a duel, as well as his conspiracy to take parts of the United States or the Spanish Empire to form an independent country.
Burr was born to a prominent family in what was then the Province of New Jersey. After studying theology at College of New Jersey, he began his career as a lawyer before joining the Continental Army as an officer in the American Revolutionary War in 1775. After leaving military service in 1779, Burr practiced law in New York City, where he became a leading politician and helped form the new Jeffersonian Democratic-Republican Party.
In 1791, Burr was elected to the United States Senate, where he served until 1797. He later ran in the 1800 presidential election. An Electoral College tie between Burr and Thomas Jefferson resulted in the U.S. House of Representatives voting in Jefferson''s favor, with Burr becoming Jefferson''s vice president due to receiving the second-highest share of the votes. Although Burr maintained that he supported Jefferson, the president was somewhat at odds with Burr, who was relegated to the sidelines of the administration during his vice presidency and was not selected as Jefferson''s running mate in 1804 after the ratification of the 12th Amendment to the U.S. Constitution.
Burr traveled west to the American frontier, seeking new economic and political opportunities. His secretive activities led to his 1807 arrest in Alabama on charges of treason. He was brought to trial more than once for what became known as the Burr conspiracy, an alleged plot to create an independent country led by Burr, but was acquitted each time. For a short period of time, Burr left the U',
   '["clm_wiki_aaron-burr_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 329);

-- 97. Aaron Judge
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_aaron-judge', 'person', 'aaron-judge', 'Aaron Judge', 'published', 'Aaron James Judge (born April 26, 1992) is an American professional baseball right fielder for the New York Yankees of Major League Baseball (MLB). He is an eight-time MLB All-Star and three-time American League (AL) Most Valuable Player Award (MVP) winner. He holds the AL record for most home runs in a season with 62. He stands 6 feet 7 inches (2.01 m) tall and weighs 282 pounds (128 kg), making ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_aaron-judge', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_aaron-judge_intro', 'ent_aaron-judge', 'biography_intro', 'Introduction', 'Aaron James Judge (born April 26, 1992) is an American professional baseball right fielder for the New York Yankees of Major League Baseball (MLB). He is an eight-time MLB All-Star and three-time American League (AL) Most Valuable Player Award (MVP) winner. He holds the AL record for most home runs in a season with 62. He stands 6 feet 7 inches (2.01 m) tall and weighs 282 pounds (128 kg), making him one of the tallest and largest players in MLB. He is considered by some to be among the best power hitters  of all time.
Judge played college baseball for the Fresno State Bulldogs, and was selected by the Yankees with the 32nd pick in the first round of the 2013 MLB draft. After making his MLB debut in 2016, Judge won AL Rookie of the Year in 2017 by unanimous vote and finished second in AL MVP voting. He hit an AL-leading 52 home runs, temporarily setting a new MLB rookie record, and became the first rookie to win the Home Run Derby. In 2022, Judge won his first MVP after setting the AL single-season home run record, breaking the 61-year-old mark held by Roger Maris.
Following the 2022 season, Judge re-signed with the Yankees on a nine-year, $360-million contract and was named the team''s captain. In 2024, he won his second MVP by unanimous vote, leading MLB in home runs and OPS while becoming the fastest MLB player to reach 300 career home runs. That postseason, the Yankees won their first AL pennant in 15 years, but lost in the World Series. He won his third MVP and second consecutive in 2025, and also captured his first batting title. Judge captained the United States national team during the 2026 World Baseball Classic.',
   '["clm_wiki_aaron-judge_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 295);

-- 98. Aaron Rodgers
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_aaron-rodgers', 'person', 'aaron-rodgers', 'Aaron Rodgers', 'published', 'Aaron Charles Rodgers (born December 2, 1983) is an American professional football quarterback for the Pittsburgh Steelers of the National Football League (NFL). He played college football for the California Golden Bears, setting the school''s record for lowest single-season and career interception rates before being selected by the Green Bay Packers in the first round of the 2005 NFL draft. He is ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_aaron-rodgers', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_aaron-rodgers_intro', 'ent_aaron-rodgers', 'biography_intro', 'Introduction', 'Aaron Charles Rodgers (born December 2, 1983) is an American professional football quarterback for the Pittsburgh Steelers of the National Football League (NFL). He played college football for the California Golden Bears, setting the school''s record for lowest single-season and career interception rates before being selected by the Green Bay Packers in the first round of the 2005 NFL draft. He is regarded as one of the greatest and most talented quarterbacks of all time.
After backing up Brett Favre for the first three years of his NFL career, Rodgers became the Packers'' starting quarterback in 2008. In the 2010 season, he led them to a victory in Super Bowl XLV, earning the Super Bowl MVP. He was named Associated Press Athlete of the Year in 2011, and was voted league MVP by the Associated Press for the 2011, 2014, 2020, and 2021 NFL seasons. Rodgers is the fifth player to win NFL MVP in consecutive seasons, joining Peyton Manning, Favre, Joe Montana and Jim Brown. Rodgers has led the NFL six times in touchdown-to-interception ratio (2011, 2012, 2014, 2018, 2020, 2021); six times in lowest passing interception percentage (2009, 2014, 2018, 2019, 2020, 2021); four times in passer rating (2011, 2012, 2020, 2021); and four times in touchdown passing percentage (2011, 2012, 2020, 2021); three times in total touchdowns (2011, 2016, 2020); twice in touchdown passes (2016, 2020) and once in yards per attempt (2011) and completion percentage (2020). In 2023, Rodgers was traded to the New York Jets, where he spent two seasons with the team. Released by the Jets after the 2024 season, Rodgers signed with the Steelers, whom he led to a division title that season.
Ranking first on the NFL''s all-time regular-season career passer rating list, Rodgers is among the most efficient quarterbacks of all time. Apart from a regular-season career passer rating of over 100 (the first to ever have a career rating over 100), he also holds the best touchdown-to-interception ratio and the low',
   '["clm_wiki_aaron-rodgers_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 331);

-- 99. Adam Riess
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_adam-riess', 'person', 'adam-riess', 'Adam Riess', 'published', 'Adam Guy Riess (born December 16, 1969) is an American astrophysicist and Bloomberg Distinguished Professor at Johns Hopkins University and the Space Telescope Science Institute. He is known for his research in using supernovae as cosmological probes. Riess shared both the 2006 Shaw Prize in Astronomy and the 2011 Nobel Prize in Physics with Saul Perlmutter and Brian Schmidt for providing evidence', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_adam-riess', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_adam-riess_intro', 'ent_adam-riess', 'biography_intro', 'Introduction', 'Adam Guy Riess (born December 16, 1969) is an American astrophysicist and Bloomberg Distinguished Professor at Johns Hopkins University and the Space Telescope Science Institute. He is known for his research in using supernovae as cosmological probes. Riess shared both the 2006 Shaw Prize in Astronomy and the 2011 Nobel Prize in Physics with Saul Perlmutter and Brian Schmidt for providing evidence that the expansion of the universe is accelerating.
Riess has been at the center of a growing scientific debate about the so-called “Hubble tension” — a discrepancy between measurements of the universe’s expansion rate using nearby supernovae, and measurements inferred from the cosmic microwave background radiation using the Standard Model of cosmology. Riess’s data has prompted questions and further testing to determine if the Standard Model still adequately describes the universe.',
   '["clm_wiki_adam-riess_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 133);

-- 100. Adam Scott
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_adam-scott', 'person', 'adam-scott', 'Adam Scott', 'published', 'Adam Paul Scott (born April 3, 1973) is an American actor and comedian. He is best known for his role as Ben Wyatt in the NBC sitcom Parks and Recreation (2010–2015), for which he was twice nominated for a Critics'' Choice Television Award, as well as Mark Scout in the Apple TV sci-fi thriller series Severance, for which he was nominated for four Primetime Emmy Awards (two for acting and two for pr', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_adam-scott', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_adam-scott_intro', 'ent_adam-scott', 'biography_intro', 'Introduction', 'Adam Paul Scott (born April 3, 1973) is an American actor and comedian. He is best known for his role as Ben Wyatt in the NBC sitcom Parks and Recreation (2010–2015), for which he was twice nominated for a Critics'' Choice Television Award, as well as Mark Scout in the Apple TV sci-fi thriller series Severance, for which he was nominated for four Primetime Emmy Awards (two for acting and two for producing) and two Golden Globes, among others.
Scott has also appeared in films, including The Aviator (2004), Step Brothers (2008) and Hokum (2026), as well as the Starz sitcom Party Down (2009–2010; 2023), the HBO drama series Big Little Lies (2017–present), and the NBC comedy series The Good Place (2016–2018).',
   '["clm_wiki_adam-scott_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 122);

-- 101. Adele
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_adele', 'person', 'adele', 'Adele', 'published', 'Adele Laurie Blue Adkins ( ə-DEL; born 5 May 1988), known mononymously as Adele, is an English singer and songwriter. Regarded as a British cultural icon, she is known for her mezzo-soprano vocals and sentimental songwriting. Her accolades include 16 Grammy Awards, 12 Brit Awards (including three for British Album of the Year), an Academy Award, a Primetime Emmy Award, and a Golden Globe Award.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_adele', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_adele_intro', 'ent_adele', 'biography_intro', 'Introduction', 'Adele Laurie Blue Adkins ( ə-DEL; born 5 May 1988), known mononymously as Adele, is an English singer and songwriter. Regarded as a British cultural icon, she is known for her mezzo-soprano vocals and sentimental songwriting. Her accolades include 16 Grammy Awards, 12 Brit Awards (including three for British Album of the Year), an Academy Award, a Primetime Emmy Award, and a Golden Globe Award.
After graduating from the BRIT School in 2006, Adele signed a record deal with XL Recordings. Her debut album, 19 (2008), included the UK top-five singles "Chasing Pavements" and "Make You Feel My Love", becoming one of best-selling debut albums ever in the UK. She received the Grammy Award for Best New Artist. Her second studio album, 21 (2011), became the best-selling album of the 21st century. 21 holds the record for the top-performing album in US chart history, topping the Billboard 200 for 24 weeks, with the singles "Rolling in the Deep", "Someone like You", and "Set Fire to the Rain" heading charts worldwide and becoming her signature songs. The album received a record-tying six Grammy Awards, including Album of the Year. 
In 2012, Adele released "Skyfall", a soundtrack single for the James Bond film Skyfall, which won her the Academy Award for Best Original Song. Her third studio album, 25 (2015), broke first-week sales records in both the UK and US. In the US, it became the first album to sell over three million copies in a week. 25 earned her five Grammy Awards, including the Album of the Year. The lead single, "Hello", achieved huge success worldwide. Her fourth studio album, 30 (2021), contains "Easy on Me", which won her a Grammy Award in 2023. 25 and 30 became the best-selling albums worldwide, including the US and the UK, in 2015 and 2021, respectively.
Adele is one of the world''s best-selling music artists, with sales of over 120 million records worldwide. The best-selling female artist of the 21st century in the UK, she was named the best-selling artist of the',
   '["clm_wiki_adele_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 338);

-- 102. Adena Friedman
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_adena-friedman', 'person', 'adena-friedman', 'Adena Friedman', 'published', 'Adena T. Friedman (born Adena Robinson Testa; 1969) is an American businesswoman. She currently serves as the president and CEO of Nasdaq, Inc. She was formerly a managing director and CFO of the Carlyle Group. Initially joining Nasdaq in 1993, she returned to Nasdaq from Carlyle in May 2014 as President of Global Corporate and information technology solutions. She was named the CEO of Nasdaq in J', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_adena-friedman', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_adena-friedman_intro', 'ent_adena-friedman', 'biography_intro', 'Introduction', 'Adena T. Friedman (born Adena Robinson Testa; 1969) is an American businesswoman. She currently serves as the president and CEO of Nasdaq, Inc. She was formerly a managing director and CFO of the Carlyle Group. Initially joining Nasdaq in 1993, she returned to Nasdaq from Carlyle in May 2014 as President of Global Corporate and information technology solutions. She was named the CEO of Nasdaq in January 2017, the first woman to lead a global exchange.
Forbes has repeatedly listed Friedman as one of the world''s most powerful women on their annual Power Women list. She ranked 43rd in Forbes list of "World''s 100 most powerful women" in 2023. She was ranked 55th on Fortune''s list of Most Powerful Women in 2023.',
   '["clm_wiki_adena-friedman_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 122);

-- 103. Adrien Brody
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_adrien-brody', 'person', 'adrien-brody', 'Adrien Brody', 'published', 'Adrien Nicholas Brody (born April 14, 1973) is an American actor and visual artist. Prolific in both independent films and blockbusters, he has received various accolades including two Academy Awards, a British Academy Film Award and a Golden Globe Award with nominations for three Primetime Emmy Awards and a Laurence Olivier Award.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_adrien-brody', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_adrien-brody_intro', 'ent_adrien-brody', 'biography_intro', 'Introduction', 'Adrien Nicholas Brody (born April 14, 1973) is an American actor and visual artist. Prolific in both independent films and blockbusters, he has received various accolades including two Academy Awards, a British Academy Film Award and a Golden Globe Award with nominations for three Primetime Emmy Awards and a Laurence Olivier Award.
Brody started his career in the early 1990s, appearing in a number of roles in his early career, including King of the Hill (1993), The Thin Red Line (1998), and Summer of Sam (1999). Brody won two Academy Awards for Best Actor for portraying Polish pianist Władysław Szpilman in Roman Polanski''s war drama The Pianist (2002) and Hungarian brutalist architect László Tóth in Brady Corbet''s period epic The Brutalist (2024); his first win, at age 29, made him the youngest winner in the category. 
For his performance in the latter he also won the BAFTA Award, the Critics'' Choice Movie Award, and the Golden Globe Award for Best Actor.
His other notable films include The Village (2004), King Kong (2005), Hollywoodland (2006), Cadillac Records (2008), Splice (2009), Predators (2010), Midnight in Paris (2011), Detachment (2011), and Blonde (2022). Also a frequent collaborator of filmmaker Wes Anderson, he acted in his films The Darjeeling Limited (2007), Fantastic Mr. Fox (2009), The Grand Budapest Hotel (2014), The French Dispatch (2021), and Asteroid City (2023).
On television, Brody has played Luca Changretta in the fourth season of the BBC series Peaky Blinders (2017), and Pat Riley in the HBO sports drama series Winning Time: The Rise of the Lakers Dynasty (2022–2023). He earned nominations for Outstanding Lead Actor in a Limited Series or Movie and Outstanding Guest Actor in a Drama Series at the Primetime Emmy Awards for his respective roles as Harry Houdini in the History Channel miniseries Houdini (2014) and investor Josh Aaronson in the HBO series Succession (2021). On stage, Brody made his London theatre debut as death row inmate Nick Ya',
   '["clm_wiki_adrien-brody_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 324);

-- 104. Ahmed Zewail
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_ahmed-zewail', 'person', 'ahmed-zewail', 'Ahmed Zewail', 'published', 'Ahmed Hassan Zewail (Arabic: أَحْمَد حَسَن زُوَيْل; February 26, 1946 – August 2, 2016) was an Egyptian-American chemist, known as the "father of femtochemistry". He was awarded the 1999 Nobel Prize in Chemistry for his work on femtochemistry and became the first Egyptian and Arab to win a Nobel Prize in a scientific field, and the first African to win a Nobel Prize in Chemistry. He was a professo', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_ahmed-zewail', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_ahmed-zewail_intro', 'ent_ahmed-zewail', 'biography_intro', 'Introduction', 'Ahmed Hassan Zewail (Arabic: أَحْمَد حَسَن زُوَيْل; February 26, 1946 – August 2, 2016) was an Egyptian-American chemist, known as the "father of femtochemistry". He was awarded the 1999 Nobel Prize in Chemistry for his work on femtochemistry and became the first Egyptian and Arab to win a Nobel Prize in a scientific field, and the first African to win a Nobel Prize in Chemistry. He was a professor of chemistry and physics at the California Institute of Technology (Caltech), where he was the first Caltech faculty member to be named the Linus Pauling Chair of Chemical Physics and was the director of the Physical Biology Center for Ultrafast Science and Technology.',
   '["clm_wiki_ahmed-zewail_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 112);

-- 105. Al Capone
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_al-capone', 'person', 'al-capone', 'Al Capone', 'published', 'Alphonse Gabriel Capone (, kə-POHN; Italian: [kaˈpoːne]; January 17, 1899 – January 25, 1947), sometimes known by the nickname "Scarface", was an American gangster and businessman who attained notoriety during the Prohibition era as the co-founder and boss of the Chicago Outfit from 1925 to 1931. His seven-year reign as a crime boss ended when he was imprisoned at the age of 33.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_al-capone', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_al-capone_intro', 'ent_al-capone', 'biography_intro', 'Introduction', 'Alphonse Gabriel Capone (, kə-POHN; Italian: [kaˈpoːne]; January 17, 1899 – January 25, 1947), sometimes known by the nickname "Scarface", was an American gangster and businessman who attained notoriety during the Prohibition era as the co-founder and boss of the Chicago Outfit from 1925 to 1931. His seven-year reign as a crime boss ended when he was imprisoned at the age of 33.
Capone was born in New York City in 1899 to Italian immigrants. He joined the Five Points Gang as a teenager and became a bouncer in organized crime premises such as brothels. In his early twenties, Capone moved to Chicago and became a bodyguard of Johnny Torrio, head of a criminal syndicate that illegally supplied alcohol—the forerunner of the Outfit—and was politically protected through the Unione Siciliana.
A conflict with the North Side Gang was instrumental in Capone''s rise and fall. Torrio went into retirement after North Side gunmen almost killed him, handing control to Capone. Although Capone expanded the bootlegging business through increasingly violent means, his mutually profitable relationships with Mayor William Hale Thompson and the Chicago Police Department meant he seemed safe from law enforcement.
Capone apparently reveled in attention, such as the cheers from spectators when he appeared at baseball games. He made donations to various charities and was viewed by many as a "modern-day Robin Hood". The Saint Valentine''s Day Massacre, in which seven people from rival gangs were murdered in broad daylight, damaged the public image of Chicago and Capone, leading influential citizens to demand government action and newspapers to dub Capone "Public Enemy No. 1".
Federal authorities became intent on jailing Capone and charged him with twenty-two counts of tax evasion. He was convicted of five counts in 1931. During a highly publicized case, the judge admitted as evidence Capone''s admissions of his income and unpaid taxes, made during prior and ultimately abortive negotiations to pay',
   '["clm_wiki_al-capone_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 315);

-- 106. Al Gore
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_al-gore', 'person', 'al-gore', 'Al Gore', 'published', 'Albert Arnold Gore Jr. (born March 31, 1948) is an American former politician, businessman, and environmentalist who served as the 45th vice president of the United States from 1993 to 2001 under President Bill Clinton. A member of the Democratic Party, he previously represented Tennessee in both houses of the U.S. Congress, first as a member of the U.S. House of Representatives from 1977 to 1985,', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_al-gore', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_al-gore_intro', 'ent_al-gore', 'biography_intro', 'Introduction', 'Albert Arnold Gore Jr. (born March 31, 1948) is an American former politician, businessman, and environmentalist who served as the 45th vice president of the United States from 1993 to 2001 under President Bill Clinton. A member of the Democratic Party, he previously represented Tennessee in both houses of the U.S. Congress, first as a member of the U.S. House of Representatives from 1977 to 1985, and then as a U.S. senator from 1985 to 1993. Gore was the Democratic nominee in the 2000 presidential election, losing to Republican nominee George W. Bush.
The son of politician Albert Gore Sr., Gore was raised in Tennessee and Washington, D.C., where he was born. After graduating from Harvard University and serving in the U.S. Army, he quit law school to run as a representative for Tennessee''s 4th congressional district in 1976. Gore was re-elected three times before running for U.S. Senate in 1984, winning re-election in 1990. He was considered a moderate and an "Atari Democrat". Gore served as vice president during the Clinton administration from 1993 to 2001, defeating then-incumbents George H. W. Bush and Dan Quayle in 1992, and Bob Dole and Jack Kemp in 1996, and was the first Democrat to serve two full terms as vice president since John Nance Garner. As of 2025, Gore''s 1990 re-election remains the last time Democrats won a Senate election in Tennessee.
Gore was the Democratic presidential nominee in the 2000 election, in which he lost the U.S. Electoral College vote by five electoral votes to Republican nominee George W. Bush while winning the popular vote by 543,895 votes. The election concluded after the U.S. Supreme Court ruled 5–4 in Bush v. Gore against a previous ruling by the Supreme Court of Florida on a re-count. He is one of five presidential candidates in American history to lose a presidential election despite winning the popular vote.
After his vice presidency ended in 2001, Gore remained prominent as an author and environmental activist, and his work',
   '["clm_wiki_al-gore_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 333);

-- 107. Al Pacino
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_al-pacino', 'person', 'al-pacino', 'Al Pacino', 'published', 'Alfredo James Pacino ( pə-CHEE-noh; Italian: [paˈtʃiːno]; born April 25, 1940) is an American actor. Known for his intense performances on stage and screen, Pacino is widely regarded as one of the greatest actors of all time. His career spans more than five decades, during which he has earned many accolades, including an Academy Award, two Tony Awards, and two Primetime Emmy Awards, achieving the ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_al-pacino', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_al-pacino_intro', 'ent_al-pacino', 'biography_intro', 'Introduction', 'Alfredo James Pacino ( pə-CHEE-noh; Italian: [paˈtʃiːno]; born April 25, 1940) is an American actor. Known for his intense performances on stage and screen, Pacino is widely regarded as one of the greatest actors of all time. His career spans more than five decades, during which he has earned many accolades, including an Academy Award, two Tony Awards, and two Primetime Emmy Awards, achieving the Triple Crown of Acting. He has also received four Golden Globe Awards, a BAFTA, two Actor Awards, and was honored with the Cecil B. DeMille Award in 2001, the AFI Life Achievement Award in 2007, the National Medal of Arts in 2011, the Kennedy Center Honors in 2016, and the Sam Wanamaker Award in 2026. Films in which he has appeared have grossed over $3 billion worldwide.
Pacino started acting in theater, ranging from underground to off-Broadway and out-of-town productions to Broadway. A method actor, Pacino studied at HB Studio and the Actors Studio where he was taught by Charlie Laughton and Lee Strasberg. Pacino went on to receive the Academy Award for Best Actor for his role in Scent of a Woman (1992). His other Oscar-nominated roles were in The Godfather (1972), Serpico (1973), The Godfather Part II (1974), Dog Day Afternoon (1975), ...And Justice for All (1979), Dick Tracy (1990), Glengarry Glen Ross (1992), and The Irishman (2019). Pacino has starred in The Panic in Needle Park (1971), Scarecrow (1973), Scarface (1983), The Godfather Part III (1990), Frankie and Johnny (1991), Carlito''s Way (1993), Heat (1995), Donnie Brasco, The Devil''s Advocate (both 1997), The Insider, Any Given Sunday (both 1999), Insomnia (2002), The Recruit (2003), Ocean''s Thirteen (2007), Once Upon a Time in Hollywood (2019), and House of Gucci (2021).
On television, Pacino has acted in multiple productions for HBO, including Angels in America (2003) and the Jack Kevorkian biopic You Don''t Know Jack (2010), winning a Primetime Emmy Award for Outstanding Lead Actor in a Miniseries or a Movie for',
   '["clm_wiki_al-pacino_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 328);

-- 108. Alan Shepard
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_alan-shepard', 'person', 'alan-shepard', 'Alan Shepard', 'published', 'Alan Bartlett Shepard Jr. (November 18, 1923 – July 21, 1998) was an American astronaut. In 1961, he became the second person and the first American to travel into space and, in 1971, he became the fifth and oldest person to walk on the Moon, at age 47.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_alan-shepard', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_alan-shepard_intro', 'ent_alan-shepard', 'biography_intro', 'Introduction', 'Alan Bartlett Shepard Jr. (November 18, 1923 – July 21, 1998) was an American astronaut. In 1961, he became the second person and the first American to travel into space and, in 1971, he became the fifth and oldest person to walk on the Moon, at age 47.
A graduate of the United States Naval Academy at Annapolis, Shepard saw action with the surface navy during World War II. He became a naval aviator in 1947, and a test pilot in 1950. He was selected as one of NASA''s original  Mercury Seven astronauts in 1959, and in May 1961 he made the first crewed Project Mercury flight, Mercury-Redstone 3, in a spacecraft he named Freedom 7. His craft entered space, but was not capable of achieving orbit. He became the second person, and the first American, to travel into space. In the final stages of Project Mercury, Shepard was scheduled to pilot the Mercury-Atlas 10 (MA-10), which was planned as a three-day mission. He named Mercury Spacecraft 15B Freedom 7 II in honor of his first spacecraft, but the mission was canceled.
Shepard was designated as the commander of the first crewed Project Gemini mission, but was grounded in October 1963 due to Ménière''s disease, an inner-ear ailment that caused episodes of extreme dizziness and nausea. This was surgically corrected in 1968, and in 1971, Shepard commanded the Apollo 14 mission, piloting the Apollo Lunar Module Antares. He was the only one of the Mercury Seven astronauts to walk on the Moon. During the mission, he hit two golf balls on the lunar surface.
Shepard was Chief of the Astronaut Office from November 1963 to August 1969 (the approximate period of his grounding), and from June 1971 until April 30, 1974. On August 25, 1971, he was promoted to rear admiral, the first astronaut to reach that rank. He retired from the United States Navy and NASA on July 31, 1974.',
   '["clm_wiki_alan-shepard_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 321);

-- 109. Alexander Ovechkin
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_alex-ovechkin', 'person', 'alex-ovechkin', 'Alexander Ovechkin', 'published', 'Alexander Mikhailovich Ovechkin (Russian: Алексaндр Михайлович Овечкин, romanized: Aleksandr Mikhaylovich Ovechkin, pronounced [ɐlʲɪˈksandr ɐˈvʲetɕkʲɪn]; born 17 September 1985) is a Russian professional ice hockey left winger and captain for the Washington Capitals of the National Hockey League (NHL). Nicknamed "the Great 8" (in reference to his jersey number) and "Ovi", as well as "Alexander the', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_alex-ovechkin', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_alex-ovechkin_intro', 'ent_alex-ovechkin', 'biography_intro', 'Introduction', 'Alexander Mikhailovich Ovechkin (Russian: Алексaндр Михайлович Овечкин, romanized: Aleksandr Mikhaylovich Ovechkin, pronounced [ɐlʲɪˈksandr ɐˈvʲetɕkʲɪn]; born 17 September 1985) is a Russian professional ice hockey left winger and captain for the Washington Capitals of the National Hockey League (NHL). Nicknamed "the Great 8" (in reference to his jersey number) and "Ovi", as well as "Alexander the Great" (Russian: Александр Великий) by Russian media, Ovechkin has scored the most career goals in NHL regular season history, and is the only player in NHL history to have scored 900 regular season goals.
Ovechkin began his professional career with Dynamo Moscow of the Russian Superleague in 2001, playing there for four seasons. Ovechkin was selected by the Capitals first overall in the 2004 NHL entry draft. In the 2005–06 season, Ovechkin captured the Calder Memorial Trophy as rookie of the year and finished third overall in league scoring.
Ovechkin has won the Maurice "Rocket" Richard Trophy as the NHL''s leading goal scorer a record nine times and been runner-up once. He holds the NHL record for most 40-goal seasons with fourteen, and shares with Mike Bossy and Wayne Gretzky the record for most 50-goal campaigns with nine. He is the only player to have tallied 200 or more goals in three different decades, with 245 in the 2000s, 437 in the 2010s, and 247 in the 2020s. He also holds multiple other NHL records, including the most power play goals, most goals in away games, most overtime goals, most game-winning goals, most individual goalies scored upon, and most goals with one team.
He has won the Hart Memorial Trophy for most valuable player three times (in 2008, 2009, and 2013) while also being a finalist two other times (2010 and 2015), and the award for best player as voted on by the National Hockey League Players'' Association three times (2008, 2009, and 2010) while also being a finalist two other times (2013 and 2015). In 2018, the Capitals won the Stanley Cup for t',
   '["clm_wiki_alex-ovechkin_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 330);

-- 110. Alexander H. Stephens
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_alexander-h-stephens', 'person', 'alexander-h-stephens', 'Alexander H. Stephens', 'published', 'Alexander Hamilton Stephens (February 11, 1812 – March 4, 1883) was an American politician who served as the only vice president of the Confederate States from 1861 to 1865, and later as the 50th governor of Georgia from 1882 until his death in 1883. A member of the Democratic Party, he represented the state of Georgia in the United States House of Representatives before and after the Civil War.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_alexander-h-stephens', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_alexander-h-stephens_intro', 'ent_alexander-h-stephens', 'biography_intro', 'Introduction', 'Alexander Hamilton Stephens (February 11, 1812 – March 4, 1883) was an American politician who served as the only vice president of the Confederate States from 1861 to 1865, and later as the 50th governor of Georgia from 1882 until his death in 1883. A member of the Democratic Party, he represented the state of Georgia in the United States House of Representatives before and after the Civil War.
Stephens attended Franklin College and established a legal practice in his hometown of Crawfordville, Georgia. After serving in both houses of the Georgia General Assembly, he was elected to the U.S. Congress, taking his seat in 1843. He became a leading Southern Whig and strongly opposed the Mexican–American War. After the war, Stephens was a prominent supporter of the Compromise of 1850 and helped draft the Georgia Platform, which opposed secession. A proponent of the expansion of slavery into the territories, Stephens also helped pass the Kansas–Nebraska Act. As the Whig Party collapsed in the 1850s, Stephens joined the Democratic Party and worked with President James Buchanan to admit Kansas as a state under the pro-slavery Lecompton Constitution (which was overwhelmingly rejected by Kansas voters in a referendum).
Stephens declined to seek re-election in 1858 but continued to publicly advocate against secession. After Georgia and other Southern states seceded and formed the Confederate States of America, Stephens was elected as the Confederate Vice President. On March 21, 1861, Stephens delivered his infamous Cornerstone Speech while visiting Savannah, Georgia, which defended slavery; enumerated contrasts between the American and Confederate foundings, ideologies, and constitutions; and laid out the Confederacy''s rationale for seceding. Stephens would attempt to deny and retract this speech following the Confederacy''s defeat in 1865. In the course of the war, he became increasingly critical of President Jefferson Davis''s policies, especially Confederate conscription and',
   '["clm_wiki_alexander-h-stephens_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 303);

-- 111. Alexander Hamilton
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_alexander-hamilton', 'person', 'alexander-hamilton', 'Alexander Hamilton', 'published', 'Alexander Hamilton (January 11, 1755, or 1757 – July 12, 1804) was an American military officer, statesman, and Founding Father who served as the first U.S. secretary of the treasury from 1789 to 1795 under the presidency of George Washington. He also founded America''s first political party, the Federalist Party, in 1791.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_alexander-hamilton', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_alexander-hamilton_intro', 'ent_alexander-hamilton', 'biography_intro', 'Introduction', 'Alexander Hamilton (January 11, 1755, or 1757 – July 12, 1804) was an American military officer, statesman, and Founding Father who served as the first U.S. secretary of the treasury from 1789 to 1795 under the presidency of George Washington. He also founded America''s first political party, the Federalist Party, in 1791.
Born out of wedlock in Charlestown on the Caribbean island of Nevis, Hamilton was orphaned as a child and taken in by a prosperous merchant. He was given a scholarship and pursued his education at King''s College (now Columbia University) in New York City where, despite his young age, he was an anonymous but prolific and widely read pamphleteer and advocate for the American Revolution. He then served as an artillery officer in the American Revolutionary War, where he saw military action against the British Army in the New York and New Jersey campaign, served for four years as aide-de-camp to Continental Army commander-in-chief George Washington, and fought under Washington''s command in the war''s climactic battle, the Siege of Yorktown, which secured American victory in the war and with it the independence of the United States.
After the Revolutionary War, Hamilton served as a delegate from New York to the Congress of the Confederation in Philadelphia. He resigned to practice law and founded the Bank of New York. In 1786, Hamilton led the Annapolis Convention, which sought to strengthen the power of the loose confederation of independent states under the limited authorities granted the Congress by the Articles of Confederation. The following year he was a delegate to the Philadelphia Convention, which drafted the U.S. Constitution creating a more centralized federal national government. He then authored 51 of the 85 installments of The Federalist Papers, which proved persuasive in securing its ratification by the states and remains the preeminent interpretation of Constitutional intent.
As a trusted member of President Washington''s first cabinet, Ham',
   '["clm_wiki_alexander-hamilton_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 315);

-- 112. Alfred Hitchcock
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_alfred-hitchcock', 'person', 'alfred-hitchcock', 'Alfred Hitchcock', 'published', 'Sir Alfred Joseph Hitchcock (13 August 1899 – 29 April 1980) was an English filmmaker. He is widely regarded as one of the greatest and most influential figures in the history of cinema. In a career spanning six decades, he directed over 50 feature films, many of which are still widely watched and studied today. Known as the "Master of Suspense", Hitchcock became as well known as any of his actors', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_alfred-hitchcock', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_alfred-hitchcock_intro', 'ent_alfred-hitchcock', 'biography_intro', 'Introduction', 'Sir Alfred Joseph Hitchcock (13 August 1899 – 29 April 1980) was an English filmmaker. He is widely regarded as one of the greatest and most influential figures in the history of cinema. In a career spanning six decades, he directed over 50 feature films, many of which are still widely watched and studied today. Known as the "Master of Suspense", Hitchcock became as well known as any of his actors thanks to his many interviews, his cameo appearances in most of his films, and his hosting and producing the television anthology Alfred Hitchcock Presents (1955–65). Among other accolades, his films garnered 46 Academy Award nominations, including six wins, although he never won the award for Best Director, despite five nominations.
Hitchcock initially trained as a technical clerk and copywriter before entering the film industry in 1919 as a title card designer. His directorial debut was the British–German silent film The Pleasure Garden (1926). His first successful film, The Lodger: A Story of the London Fog (1927), helped to shape the thriller genre, and Blackmail (1929) was the first British "talkie". His thrillers The 39 Steps (1935) and The Lady Vanishes (1938) are ranked among the greatest British films of the 20th century. By 1939, he had earned international recognition, and producer David O. Selznick persuaded him to move to Hollywood. A string of successful films followed, including Rebecca (1940), Foreign Correspondent (1940), Suspicion (1941), Shadow of a Doubt (1943) and Notorious (1946). Rebecca won the Academy Award for Best Picture, with Hitchcock nominated as Best Director. He also received Oscar nominations for Lifeboat (1944), Spellbound (1945), Rear Window (1954) and Psycho (1960).
Hitchcock''s other notable films include Rope (1948), Strangers on a Train (1951), Dial M for Murder (1954), To Catch a Thief (1955), The Trouble with Harry (1955), Vertigo (1958), North by Northwest (1959), The Birds (1963), Marnie (1964) and Frenzy (1972), all of which were',
   '["clm_wiki_alfred-hitchcock_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 318);

-- 113. Alia Bhatt
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_alia-bhatt', 'person', 'alia-bhatt', 'Alia Bhatt', 'published', 'Alia Bhatt (; born 15 March 1993) is a British actress of Indian descent who predominantly works in Hindi films. Known for her portrayals of women in challenging circumstances, she has received several accolades, including a National Film Award and seven Filmfare Awards. She is one of India''s highest-paid actresses. Time awarded her with the Time100 Impact Award in 2022 and named her one of the 10', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_alia-bhatt', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_alia-bhatt_intro', 'ent_alia-bhatt', 'biography_intro', 'Introduction', 'Alia Bhatt (; born 15 March 1993) is a British actress of Indian descent who predominantly works in Hindi films. Known for her portrayals of women in challenging circumstances, she has received several accolades, including a National Film Award and seven Filmfare Awards. She is one of India''s highest-paid actresses. Time awarded her with the Time100 Impact Award in 2022 and named her one of the 100 most influential people in the world in 2024.
Born into the Bhatt family, she is a daughter of filmmaker Mahesh Bhatt and actress Soni Razdan. After making her acting debut as a child in the 1999 thriller film Sangharsh, she played her first leading role in Karan Johar''s teen film Student of the Year (2012). She won the Filmfare Critics Award for Best Actress for playing a kidnapping victim in the road drama Highway (2014) and went on to establish herself with starring roles in several romantic films produced by Johar''s studio Dharma Productions.
Bhatt won Filmfare Awards for Best Actress for playing a victim of drug abuse in the crime drama Udta Punjab (2016), an undercover spy in the thriller Raazi (2018), a possessive girlfriend in the musical drama Gully Boy (2019), and the title role of a prostitute in the biopic Gangubai Kathiawadi (2022). The last of these also earned her the National Film Award for Best Actress. She expanded to film production with the black comedy Darlings (2022) and had her biggest commercial success in the fantasy film Brahmāstra: Part One – Shiva (2022) and the romantic comedy Rocky Aur Rani Kii Prem Kahaani (2023). The last of these earned her a fifth Best Actress award at Filmfare, followed by a record-setting sixth for her performance in the action thriller Jigra (2024), which she also co-produced.
In addition to acting, Bhatt supports various charities and is an investor and prominent brand endorser. She founded an ecological initiative, CoExist, in 2017, a production company, Eternal Sunshine Productions, in 2019, and a sustainable clothi',
   '["clm_wiki_alia-bhatt_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 332);

-- 114. Alice Cooper
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_alice-cooper', 'person', 'alice-cooper', 'Alice Cooper', 'published', 'Alice Cooper (born Vincent Damon Furnier; February 4, 1948) is an American singer and songwriter. With a career spanning over six decades, he is known for his raspy singing voice and theatrical stage shows that feature numerous props and illusions. Cooper is considered by music journalists and peers to be "The Godfather of Shock Rock". He has drawn from horror films, vaudeville, and garage rock to', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_alice-cooper', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_alice-cooper_intro', 'ent_alice-cooper', 'biography_intro', 'Introduction', 'Alice Cooper (born Vincent Damon Furnier; February 4, 1948) is an American singer and songwriter. With a career spanning over six decades, he is known for his raspy singing voice and theatrical stage shows that feature numerous props and illusions. Cooper is considered by music journalists and peers to be "The Godfather of Shock Rock". He has drawn from horror films, vaudeville, and garage rock to pioneer a macabre and theatrical brand of rock designed to shock audiences.
Originating in Phoenix, Arizona in 1964, Alice Cooper was originally a band consisting of Furnier, guitarists Glen Buxton and Michael Bruce, bassist Dennis Dunaway, and drummer Neal Smith. The band released seven studio albums from 1969 to 1973 and hit singles such as "I''m Eighteen", "School''s Out", and "No More Mr. Nice Guy". Following their disbandment in 1975, Furnier legally changed his name to Alice Cooper and began a solo career with the concept album Welcome to My Nightmare (1975). His hit singles as a solo artist include "Only Women Bleed", "You and Me", and "Poison". Over the course of his career, Cooper has released 30 studio albums and sold over 50 million records worldwide. The original Alice Cooper band was inducted into the Rock and Roll Hall of Fame in 2011.
Cooper has experimented with various musical styles, mainly hard rock, glam rock, heavy metal, and glam metal, as well as new wave, art rock, and industrial rock. He helped shape the sound and look of heavy metal, and he has been described as the artist who "first introduced horror imagery to rock''n''roll, and whose stagecraft and showmanship have permanently transformed the genre". Cooper is also known for his wit offstage, with The Rolling Stone Album Guide calling him the world''s most "beloved heavy metal entertainer". His philanthropic work includes his Solid Rock Foundation, which provides free music, art, and vocational programs for at-risk youth in Phoenix, Arizona.',
   '["clm_wiki_alice-cooper_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 317);

-- 115. Alice Paul
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_alice-paul', 'person', 'alice-paul', 'Alice Paul', 'published', 'Alice Stokes Paul (January 11, 1885 – July 9, 1977) was an American Quaker, suffragette, suffragist, feminist, and women''s rights activist, and one of the foremost leaders and strategists of the campaign for the Nineteenth Amendment to the United States Constitution, which prohibits sex discrimination in the right to vote. Paul initiated, and along with Lucy Burns and others, strategized events su', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_alice-paul', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_alice-paul_intro', 'ent_alice-paul', 'biography_intro', 'Introduction', 'Alice Stokes Paul (January 11, 1885 – July 9, 1977) was an American Quaker, suffragette, suffragist, feminist, and women''s rights activist, and one of the foremost leaders and strategists of the campaign for the Nineteenth Amendment to the United States Constitution, which prohibits sex discrimination in the right to vote. Paul initiated, and along with Lucy Burns and others, strategized events such as the Woman Suffrage Procession and the Silent Sentinels, which were part of the successful campaign that resulted in the amendment''s passage in August 1920.
Paul often suffered police brutality and other physical abuse for her activism, always responding with nonviolence. She was jailed in 1917 for participating in a Silent Sentinels protest in front of the White House, as she had been several times during earlier efforts to secure the vote for women in the United Kingdom.
After 1920, Paul spent a half-century as leader of the National Woman''s Party, which fought for the Equal Rights Amendment, written by Paul and Crystal Eastman, to secure constitutional equality for women. She won a major permanent success with the inclusion of women as a group protected against discrimination by the Civil Rights Act of 1964.',
   '["clm_wiki_alice-paul_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 196);

-- 116. Alice Walton
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_alice-walton', 'person', 'alice-walton', 'Alice Walton', 'published', 'Alice Louise Walton (born October 7, 1949) is an American billionaire and, as the daughter of Sam Walton, heiress to the fortune of Walmart. As of July 2025, Walton has an estimated net worth of $116 billion, making her the richest woman in the world and 15th richest person overall, according to the Bloomberg Billionaires Index.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_alice-walton', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_alice-walton_intro', 'ent_alice-walton', 'biography_intro', 'Introduction', 'Alice Louise Walton (born October 7, 1949) is an American billionaire and, as the daughter of Sam Walton, heiress to the fortune of Walmart. As of July 2025, Walton has an estimated net worth of $116 billion, making her the richest woman in the world and 15th richest person overall, according to the Bloomberg Billionaires Index.',
   '["clm_wiki_alice-walton_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 56);

-- 117. Alicia Keys
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_alicia-keys', 'person', 'alicia-keys', 'Alicia Keys', 'published', 'Alicia Augello Cook (born January 25, 1981), known professionally as Alicia Keys, is an  American singer, songwriter, and pianist. A classically trained pianist, Keys began composing songs at the age of 12 and was signed by Columbia Records at 15. After disputes with the label, she signed with J Records to release her debut studio album, Songs in A Minor (2001). Met with critical acclaim and comme', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_alicia-keys', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_alicia-keys_intro', 'ent_alicia-keys', 'biography_intro', 'Introduction', 'Alicia Augello Cook (born January 25, 1981), known professionally as Alicia Keys, is an  American singer, songwriter, and pianist. A classically trained pianist, Keys began composing songs at the age of 12 and was signed by Columbia Records at 15. After disputes with the label, she signed with J Records to release her debut studio album, Songs in A Minor (2001). Met with critical acclaim and commercial success, the album sold over 12 million copies worldwide and won five awards at the 44th Annual Grammy Awards. It contained the Billboard Hot 100-number one single "Fallin''". Her second album, The Diary of Alicia Keys (2003), was met with continued success, selling eight million units worldwide and spawning the US top-five singles "You Don''t Know My Name" and "If I Ain''t Got You". Its release earned an additional four Grammy Awards.
Her 2004 duet with Usher, "My Boo", became her second number-one single in the US. Keys''s first live album, Unplugged (2005), spawned the single "Unbreakable" and made her the first female artist to have an MTV Unplugged project debut atop the Billboard 200. Her third album, As I Am (2007), sold seven million units worldwide and yielded her third Billboard Hot 100-number one single, "No One". In 2007, Keys made her film debut in the action-thriller Smokin'' Aces, and performed the theme song to the James Bond film Quantum of Solace with her single "Another Way to Die" (with Jack White) the following year. Her fourth album, The Element of Freedom (2009), peaked atop the UK Albums Chart, sold four million copies worldwide, and was supported by the singles "Doesn''t Mean Anything", "Try Sleeping with a Broken Heart", and "Un-Thinkable (I''m Ready)".
Keys guest appeared on Jay-Z''s 2009 single "Empire State of Mind", which became her fourth number-one hit in the US. Her fifth album, Girl on Fire (2012), was her fourth non-consecutive album to peak the Billboard 200, and was supported by its lead single of the same name; her sixth album, Here (2016',
   '["clm_wiki_alicia-keys_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 334);

-- 118. Allen Ginsberg
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_allen-ginsberg', 'person', 'allen-ginsberg', 'Allen Ginsberg', 'published', 'Irwin Allen Ginsberg (; June 3, 1926 – April 5, 1997) was an American poet and writer. As a student at Columbia University in the 1940s, he befriended Lucien Carr, William S. Burroughs, and Jack Kerouac, forming the core of the Beat Generation. He vigorously opposed militarism, economic materialism, and sexual repression, and he embodied various aspects of this counterculture with his views on dru', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_allen-ginsberg', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_allen-ginsberg_intro', 'ent_allen-ginsberg', 'biography_intro', 'Introduction', 'Irwin Allen Ginsberg (; June 3, 1926 – April 5, 1997) was an American poet and writer. As a student at Columbia University in the 1940s, he befriended Lucien Carr, William S. Burroughs, and Jack Kerouac, forming the core of the Beat Generation. He vigorously opposed militarism, economic materialism, and sexual repression, and he embodied various aspects of this counterculture with his views on drugs, sex, multiculturalism, hostility to bureaucracy, and openness to Eastern religions.
Best known for his poem "Howl", Ginsberg denounced what he saw as the destructive forces of capitalism and conformity in the United States. San Francisco police and US Customs seized copies of "Howl" in 1956 and a 1957 obscenity trial attracted widespread publicity due to the poem''s language and descriptions of heterosexual and homosexual sex at a time when sodomy laws criminalized male homosexual acts in every state. The poem reflected Ginsberg''s own sexuality and his relationships with men, including Peter Orlovsky, his lifelong partner. Judge Clayton W. Horn ruled that "Howl" was not obscene, asking: "Would there be any freedom of press or speech if one must reduce his vocabulary to vapid innocuous euphemisms?".
Ginsberg was a Buddhist who extensively studied Eastern religions. He lived modestly, buying his clothing in secondhand stores and residing in apartments in New York City''s East Village. One of his most influential teachers was Tibetan Buddhist Chögyam Trungpa, the founder of the Naropa Institute in Boulder, Colorado. At Trungpa''s urging, Ginsberg and poet Anne Waldman started The Jack Kerouac School of Disembodied Poetics there in 1974.
For decades, Ginsberg was active in political protests across a range of issues from the Vietnam War to the war on drugs. His poem "September on Jessore Road" drew attention to refugees fleeing the Bangladesh genocide, exemplifying what literary critic Helen Vendler called Ginsberg''s persistent opposition to "imperial politics" and "persecutio',
   '["clm_wiki_allen-ginsberg_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 308);

-- 119. Amy Fisher
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_amy-fisher', 'person', 'amy-fisher', 'Amy Fisher', 'published', 'Amy Elizabeth Fisher (born 1974) is an American woman, who, in 1992, at the age of 17, shot and severely wounded Mary Jo Buttafuoco, the wife of Joey Buttafuoco, who had initiated a sexual relationship with the underaged Fisher in 1990. Buttafuoco would later be convicted of statutory rape and serve four months in prison. Fisher pleaded guilty to aggravated assault and served seven years in prison', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_amy-fisher', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_amy-fisher_intro', 'ent_amy-fisher', 'biography_intro', 'Introduction', 'Amy Elizabeth Fisher (born 1974) is an American woman, who, in 1992, at the age of 17, shot and severely wounded Mary Jo Buttafuoco, the wife of Joey Buttafuoco, who had initiated a sexual relationship with the underaged Fisher in 1990. Buttafuoco would later be convicted of statutory rape and serve four months in prison. Fisher pleaded guilty to aggravated assault and served seven years in prison. Her story was featured heavily in the tabloid press and was often sensationalized by the news media, who dubbed her the "Long Island Lolita". Fisher was paroled in 1999 and became a writer, webcam model, and pornographic film actress.',
   '["clm_wiki_amy-fisher_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 106);

-- 120. Amy Griffin
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_amy-griffin', 'person', 'amy-griffin', 'Amy Griffin', 'published', 'Amy Griffin (née Allmann; born October 25, 1965) is an American soccer coach and former player. As a player, Griffin played for the United States women''s national soccer team and won the 1991 FIFA Women''s World Cup. She is currently the head coach of the United States women''s national deaf soccer team.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_amy-griffin', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_amy-griffin_intro', 'ent_amy-griffin', 'biography_intro', 'Introduction', 'Amy Griffin (née Allmann; born October 25, 1965) is an American soccer coach and former player. As a player, Griffin played for the United States women''s national soccer team and won the 1991 FIFA Women''s World Cup. She is currently the head coach of the United States women''s national deaf soccer team.',
   '["clm_wiki_amy-griffin_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 52);

-- 121. Amy Hood
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_amy-hood', 'person', 'amy-hood', 'Amy Hood', 'published', 'Amy Hood (born August 9, 1971) is an American business executive and has been the executive vice president and chief financial officer of Microsoft since 2013. Hood is the first female chief financial officer in Microsoft''s history.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_amy-hood', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_amy-hood_intro', 'ent_amy-hood', 'biography_intro', 'Introduction', 'Amy Hood (born August 9, 1971) is an American business executive and has been the executive vice president and chief financial officer of Microsoft since 2013. Hood is the first female chief financial officer in Microsoft''s history.',
   '["clm_wiki_amy-hood_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 37);

-- 122. Anderson Cooper
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_anderson-cooper', 'person', 'anderson-cooper', 'Anderson Cooper', 'published', 'Anderson Hays Cooper (born June 3, 1967) is an American broadcast journalist and political commentator who anchors the CNN news broadcast show Anderson Cooper 360°. In addition to his duties at CNN, for two decades Cooper served as a correspondent for 60 Minutes, produced by CBS News. After graduating from Yale University with a Bachelor of Arts in 1989, he began traveling the world, shooting foot', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_anderson-cooper', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_anderson-cooper_intro', 'ent_anderson-cooper', 'biography_intro', 'Introduction', 'Anderson Hays Cooper (born June 3, 1967) is an American broadcast journalist and political commentator who anchors the CNN news broadcast show Anderson Cooper 360°. In addition to his duties at CNN, for two decades Cooper served as a correspondent for 60 Minutes, produced by CBS News. After graduating from Yale University with a Bachelor of Arts in 1989, he began traveling the world, shooting footage of war-torn regions for Channel One News. Cooper was hired by ABC News as a correspondent in 1995, but he soon took more jobs throughout the network, working for a short time as a co-anchor, reality game show host, and fill-in morning talk show host.
In 2001, Cooper joined CNN, where he was given his own show, Anderson Cooper 360°; he has remained the show''s host since. He developed a reputation for his on-the-ground reporting of breaking news events, with his coverage of Hurricane Katrina causing his popularity to sharply increase. For his coverage of the 2010 Haiti earthquake, Cooper received a National Order of Honour and Merit, the highest honor granted by the Haitian government. From September 2011 to May 2013, he also served as the host of his own syndicated television daytime talk show, Anderson Live.
Cooper has won 18 Emmy Awards and two Peabody Awards, as well as an Edward Murrow Award from the Overseas Press Club in 2011. A member of the Vanderbilt family, he came out as gay in 2012, becoming "the most prominent gay journalist on American television". In 2016, Cooper became the first LGBT person to moderate a presidential debate, and he has received several GLAAD Media Awards.',
   '["clm_wiki_anderson-cooper_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 271);

-- 123. Andrew Beal
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_andrew-beal', 'person', 'andrew-beal', 'Andrew Beal', 'published', 'Daniel Andrew Beal (born November 29, 1952) is an American banker, businessman, investor, and amateur mathematician. He is a Dallas-based businessman who accumulated wealth in real estate and banking. Born and raised in Lansing, Michigan, Beal is founder and chairman of Beal Bank and Beal Bank USA, as well as other affiliated companies. According to the 2025 Forbes List of Billionaires, Beal has a', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_andrew-beal', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_andrew-beal_intro', 'ent_andrew-beal', 'biography_intro', 'Introduction', 'Daniel Andrew Beal (born November 29, 1952) is an American banker, businessman, investor, and amateur mathematician. He is a Dallas-based businessman who accumulated wealth in real estate and banking. Born and raised in Lansing, Michigan, Beal is founder and chairman of Beal Bank and Beal Bank USA, as well as other affiliated companies. According to the 2025 Forbes List of Billionaires, Beal has an estimated worth of US$12 billion.
A number theorist, Beal is also known for the Beal conjecture, a mathematical generalization of Fermat''s Last Theorem. He has funded a $1 million standing prize for its proof or disproof. His banks sponsor two annual science and technology fairs affiliated with the International Science & Engineering Fair. Beal participated in some high-stakes poker games in the mid-2000s that were the subject of a book.',
   '["clm_wiki_andrew-beal_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 134);

-- 124. Andrew Fire
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_andrew-fire', 'person', 'andrew-fire', 'Andrew Fire', 'published', 'Andrew Zachary Fire (born April 27, 1959) is an American biologist and professor of pathology and of genetics at the Stanford University School of Medicine. He was awarded the 2006 Nobel Prize in Physiology or Medicine, along with Craig C. Mello, for the discovery of RNA interference (RNAi). This research was conducted at the Carnegie Institution of Washington and published in 1998.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_andrew-fire', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_andrew-fire_intro', 'ent_andrew-fire', 'biography_intro', 'Introduction', 'Andrew Zachary Fire (born April 27, 1959) is an American biologist and professor of pathology and of genetics at the Stanford University School of Medicine. He was awarded the 2006 Nobel Prize in Physiology or Medicine, along with Craig C. Mello, for the discovery of RNA interference (RNAi). This research was conducted at the Carnegie Institution of Washington and published in 1998.',
   '["clm_wiki_andrew-fire_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 62);

-- 125. Andrew Forrest
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_andrew-forrest', 'person', 'andrew-forrest', 'Andrew Forrest', 'published', 'John Andrew Henry Forrest  (born 18 November 1961), nicknamed Twiggy, is an Australian businessman. He is best known as the founder and current executive chairman of mining company Fortescue, one of Australia''s largest companies.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_andrew-forrest', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_andrew-forrest_intro', 'ent_andrew-forrest', 'biography_intro', 'Introduction', 'John Andrew Henry Forrest  (born 18 November 1961), nicknamed Twiggy, is an Australian businessman. He is best known as the founder and current executive chairman of mining company Fortescue, one of Australia''s largest companies.
With an assessed net worth of A$33.29 billion according to the Financial Review Rich List 2023, Forrest was ranked as the second richest Australian. The Australian Financial Review named him the richest person in Australia in 2008.
Forrest holds a Doctor of Philosophy (PHD) in Marine Ecology.',
   '["clm_wiki_andrew-forrest_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 81);

-- 126. Andrew Mellon
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_andrew-mellon', 'person', 'andrew-mellon', 'Andrew Mellon', 'published', 'Andrew William Mellon (; March 24, 1855 – August 26, 1937), known also as A. W. Mellon, was an American banker, businessman, industrialist, philanthropist, art collector, and politician. The son of Mellon family patriarch Thomas Mellon, he established a vast business empire before moving into politics. He served as United States Secretary of the Treasury from March 9, 1921, to February 12, 1932, p', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_andrew-mellon', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_andrew-mellon_intro', 'ent_andrew-mellon', 'biography_intro', 'Introduction', 'Andrew William Mellon (; March 24, 1855 – August 26, 1937), known also as A. W. Mellon, was an American banker, businessman, industrialist, philanthropist, art collector, and politician. The son of Mellon family patriarch Thomas Mellon, he established a vast business empire before moving into politics. He served as United States Secretary of the Treasury from March 9, 1921, to February 12, 1932, presiding over the boom years of the 1920s and the Wall Street crash of 1929. A conservative Republican, Mellon favored policies that reduced taxation and the national debt of the United States in the aftermath of World War I. Mellon also helped fund and manage Kennywood Park in West Mifflin, Pennsylvania.
Andrew began working at his father''s Pittsburgh, Pennsylvania, bank, T. Mellon & Sons, in the early 1870s, eventually becoming the leading figure in the institution. He later renamed T. Mellon & Sons as Mellon National Bank and established another financial institution, the Union Trust Company in Pittsburgh in 1889. By the end of 1913, Mellon National Bank held more money in deposits than any other bank in Pittsburgh, and the second-largest bank in the region was controlled by Union Trust. In the course of his business career, Mellon owned or helped finance large companies including Alcoa, the New York Shipbuilding Corporation, Old Overholt whiskey, Standard Steel Car Company, Westinghouse Electric Corporation, Koppers, the Pittsburgh Coal Company, the Carborundum Company, Union Steel Company, the McClintic-Marshall Construction Company, Gulf Oil, and numerous others. He was also an influential donor to the Republican Party during the Gilded Age and the Progressive Era.
In 1921, newly elected president Warren G. Harding chose Mellon as his secretary of the treasury. Mellon would remain in office until 1932, serving under Harding, Calvin Coolidge, and Herbert Hoover, all three of whom were members of the Republican Party. Mellon sought to reform federal taxation in the afte',
   '["clm_wiki_andrew-mellon_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 313);

-- 127. Andrew Mellon
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_andrew-w-mellon', 'person', 'andrew-w-mellon', 'Andrew Mellon', 'published', 'Andrew William Mellon (; March 24, 1855 – August 26, 1937), known also as A. W. Mellon, was an American banker, businessman, industrialist, philanthropist, art collector, and politician. The son of Mellon family patriarch Thomas Mellon, he established a vast business empire before moving into politics. He served as United States Secretary of the Treasury from March 9, 1921, to February 12, 1932, p', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_andrew-w-mellon', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_andrew-w-mellon_intro', 'ent_andrew-w-mellon', 'biography_intro', 'Introduction', 'Andrew William Mellon (; March 24, 1855 – August 26, 1937), known also as A. W. Mellon, was an American banker, businessman, industrialist, philanthropist, art collector, and politician. The son of Mellon family patriarch Thomas Mellon, he established a vast business empire before moving into politics. He served as United States Secretary of the Treasury from March 9, 1921, to February 12, 1932, presiding over the boom years of the 1920s and the Wall Street crash of 1929. A conservative Republican, Mellon favored policies that reduced taxation and the national debt of the United States in the aftermath of World War I. Mellon also helped fund and manage Kennywood Park in West Mifflin, Pennsylvania.
Andrew began working at his father''s Pittsburgh, Pennsylvania, bank, T. Mellon & Sons, in the early 1870s, eventually becoming the leading figure in the institution. He later renamed T. Mellon & Sons as Mellon National Bank and established another financial institution, the Union Trust Company in Pittsburgh in 1889. By the end of 1913, Mellon National Bank held more money in deposits than any other bank in Pittsburgh, and the second-largest bank in the region was controlled by Union Trust. In the course of his business career, Mellon owned or helped finance large companies including Alcoa, the New York Shipbuilding Corporation, Old Overholt whiskey, Standard Steel Car Company, Westinghouse Electric Corporation, Koppers, the Pittsburgh Coal Company, the Carborundum Company, Union Steel Company, the McClintic-Marshall Construction Company, Gulf Oil, and numerous others. He was also an influential donor to the Republican Party during the Gilded Age and the Progressive Era.
In 1921, newly elected president Warren G. Harding chose Mellon as his secretary of the treasury. Mellon would remain in office until 1932, serving under Harding, Calvin Coolidge, and Herbert Hoover, all three of whom were members of the Republican Party. Mellon sought to reform federal taxation in the afte',
   '["clm_wiki_andrew-w-mellon_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 313);

-- 128. Angela Davis
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_angela-davis', 'person', 'angela-davis', 'Angela Davis', 'published', 'Angela Yvonne Davis (born January 26, 1944) is an American Marxist feminist political activist, philosopher, academic, author and social theorist. She is Distinguished Professor Emerita of Feminist Studies and History of Consciousness at the University of California, Santa Cruz. Davis was a longtime member of the Communist Party USA (CPUSA), running for Vice President in the 1980 and 1984 election', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_angela-davis', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_angela-davis_intro', 'ent_angela-davis', 'biography_intro', 'Introduction', 'Angela Yvonne Davis (born January 26, 1944) is an American Marxist feminist political activist, philosopher, academic, author and social theorist. She is Distinguished Professor Emerita of Feminist Studies and History of Consciousness at the University of California, Santa Cruz. Davis was a longtime member of the Communist Party USA (CPUSA), running for Vice President in the 1980 and 1984 elections under that party. She is also a founding member of the Committees of Correspondence for Democracy and Socialism (CCDS). She has been active in movements such as the Occupy movement and the Boycott, Divestment and Sanctions campaign.
Davis was born in Birmingham, Alabama; she studied at Brandeis University and the University of Frankfurt. She also studied at the University of California, San Diego, before moving to East Germany, where she completed some studies for a doctorate at the Humboldt-University of Berlin. After returning to the United States, she joined the CPUSA and became involved in the second-wave feminist movement and the campaign against the Vietnam War.
In 1969, she was hired as an assistant professor of philosophy at the University of California, Los Angeles (UCLA). UCLA''s governing Board of Regents soon fired her due to her membership in the CPUSA. After a court ruled the firing illegal, the university fired her for the use of inflammatory language. In 1970, guns belonging to Davis were used in an armed takeover of a courtroom in Marin County, California, in which four people were killed. Prosecuted for three capital felonies, including conspiracy to murder, she was held in jail for more than a year, before being acquitted of all charges in 1972. While in prison, she was often considered a political prisoner.
In 1991, amid the dissolution of the Soviet Union, she broke away from the CPUSA to help establish the CCDS. That same year, she joined the feminist studies department at the University of California, Santa Cruz, where she became department director ',
   '["clm_wiki_angela-davis_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 320);

-- 129. Angus Deaton
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_angus-deaton', 'person', 'angus-deaton', 'Angus Deaton', 'published', 'Sir Angus Stewart Deaton  (born 19 October 1945) is a British-American economist and academic. Deaton is a Senior Scholar and the Dwight D. Eisenhower Professor of Economics and International Affairs Emeritus (since 2016) at the Princeton School of Public and International Affairs and the Economics Department at Princeton University. His research focuses primarily on poverty, inequality, health, w', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_angus-deaton', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_angus-deaton_intro', 'ent_angus-deaton', 'biography_intro', 'Introduction', 'Sir Angus Stewart Deaton  (born 19 October 1945) is a British-American economist and academic. Deaton is a Senior Scholar and the Dwight D. Eisenhower Professor of Economics and International Affairs Emeritus (since 2016) at the Princeton School of Public and International Affairs and the Economics Department at Princeton University. His research focuses primarily on poverty, inequality, health, wellbeing, and economic development.
In 2015, he was awarded the Nobel Memorial Prize in Economic Sciences for his analysis of consumption, poverty, and welfare.',
   '["clm_wiki_angus-deaton_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 81);

-- 130. Ann Lee
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_ann-lee', 'person', 'ann-lee', 'Ann Lee', 'published', 'Ann Lee (29 February 1736 – 8 September 1784), commonly known as Mother Ann Lee, was the founding leader of the Shakers, later changed to United Society of Believers in Christ''s Second Appearing following her death. She was born during the Evangelical revival in England and greatly influenced religion of that time, especially in the Americas.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_ann-lee', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_ann-lee_intro', 'ent_ann-lee', 'biography_intro', 'Introduction', 'Ann Lee (29 February 1736 – 8 September 1784), commonly known as Mother Ann Lee, was the founding leader of the Shakers, later changed to United Society of Believers in Christ''s Second Appearing following her death. She was born during the Evangelical revival in England and greatly influenced religion of that time, especially in the Americas.
In 1774, after nearly two decades of participation in a religious movement that became the Shakers, Ann Lee and a small group of her followers emigrated from England to New York. After several years, they gathered at Niskayuna, renting land from the Manor of Rensselaerswyck, Albany County, New York (the area now called Colonie). They worshiped by ecstatic dancing or "shaking", which resulted in their being dubbed the Shakers. Ann Lee preached to the public and led the Shaker church at a time when few women were religious leaders. She was often referred to as, and considered by some Shakers, the female representation of God.',
   '["clm_wiki_ann-lee_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 161);

-- 131. Anne Bancroft
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_anne-bancroft', 'person', 'anne-bancroft', 'Anne Bancroft', 'published', 'Anne Bancroft (born Anna Maria Louisa Italiano; September 17, 1931 – June 6, 2005) was an American actress. Respected for her acting prowess and versatility, Bancroft received an Academy Award, three BAFTA Awards, two Golden Globe Awards, two Tony Awards, two Primetime Emmy Awards, and a Cannes Film Festival Award. She is one of 24 thespians to achieve the Triple Crown of Acting.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_anne-bancroft', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_anne-bancroft_intro', 'ent_anne-bancroft', 'biography_intro', 'Introduction', 'Anne Bancroft (born Anna Maria Louisa Italiano; September 17, 1931 – June 6, 2005) was an American actress. Respected for her acting prowess and versatility, Bancroft received an Academy Award, three BAFTA Awards, two Golden Globe Awards, two Tony Awards, two Primetime Emmy Awards, and a Cannes Film Festival Award. She is one of 24 thespians to achieve the Triple Crown of Acting.
Associated with the method acting technique, having studied under Lee Strasberg at the Actors Studio, Bancroft made her film debut in the noir thriller Don''t Bother to Knock in 1952, and appeared in 14 other films over the following five years. In 1958, she made her Broadway debut with the play Two for the Seesaw, winning the Tony Award for Best Featured Actress in a Play. The next year she portrayed Anne Sullivan in the original Broadway production of The Miracle Worker, winning the Tony Award for Best Actress in a Play. After her continued success on stage, Bancroft''s film career was revived when she was cast in the acclaimed film adaptation of The Miracle Worker (1962) for which she won the Academy Award for Best Actress. Her film career progressed with Oscar nominated performances in The Pumpkin Eater (1964), The Graduate (1967), The Turning Point (1977), and Agnes of God (1985).
Bancroft continued to act in the later half of her life, with prominent roles including Mary Magdalene in Franco Zeffirelli''s Jesus of Nazareth (1977), The Elephant Man (1980), To Be or Not to Be (1983), Garbo Talks (1984), 84 Charing Cross Road (1987), Torch Song Trilogy (1988), Home for the Holidays (1995), G.I. Jane (1997), Great Expectations (1998), and Up at the Villa (2000). She had received multiple Primetime Emmy Award nominations, including for the television films Broadway Bound (1992), Deep in My Heart (1999), for which she won, and The Roman Spring of Mrs. Stone (2003). She died in 2005, at the age of 73, as a result of uterine cancer. She was married to director, actor, and writer Mel Brooks, with ',
   '["clm_wiki_anne-bancroft_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 338);

-- 132. Anne Morrow Lindbergh
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_anne-morrow-lindbergh', 'person', 'anne-morrow-lindbergh', 'Anne Morrow Lindbergh', 'published', 'Anne Spencer Morrow Lindbergh (June 22, 1906 – February 7, 2001) was an American writer and aviator. She was the wife of decorated pioneer aviator Charles Lindbergh, with whom she made many exploratory flights.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_anne-morrow-lindbergh', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_anne-morrow-lindbergh_intro', 'ent_anne-morrow-lindbergh', 'biography_intro', 'Introduction', 'Anne Spencer Morrow Lindbergh (June 22, 1906 – February 7, 2001) was an American writer and aviator. She was the wife of decorated pioneer aviator Charles Lindbergh, with whom she made many exploratory flights.
Raised in Englewood, New Jersey, and later New York City, Anne Morrow graduated from Smith College in Northampton, Massachusetts, in 1928. She married Charles in 1929, and in 1930 became the first woman to receive a U.S. glider pilot license. Throughout the early 1930s, she served as radio operator and copilot to Charles on multiple exploratory flights and aerial surveys. Following the 1932 kidnapping and murder of their first-born infant child, Anne and Charles moved to Europe in 1935 to escape the American press and hysteria surrounding the case, where their views shifted during the preliminary time of World War II towards an alleged sympathy for Nazi Germany and a concern for the United States'' ability to compete with Germany in the war with their opposing air power. When they returned to America in 1939, the couple supported the isolationist America First Committee before ultimately expressing public support for the U.S. war effort after the 1941 Japanese attack on Pearl Harbor and subsequent German declaration of war against the United States.
After the war, she moved away from politics and wrote extensive poetry and nonfiction that helped the Lindberghs regain their reputation, which had been greatly damaged since the days leading up to the war. She authored the popular Gift from the Sea (1955), and became an inspirational figure for many American women.  According to Publishers Weekly, the book was one of the top nonfiction bestsellers of the 1950s. After suffering a series of strokes throughout the 1990s that left her disoriented and disabled, Anne died in 2001 at the age of 94.',
   '["clm_wiki_anne-morrow-lindbergh_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 297);

-- 133. Annie Oakley
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_annie-oakley', 'person', 'annie-oakley', 'Annie Oakley', 'published', 'Annie Oakley (born Phoebe Ann Mosey; August 13, 1860 – November 3, 1926) was an American exhibition/trick shooter and folk heroine who starred in Buffalo Bill''s Wild West.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_annie-oakley', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_annie-oakley_intro', 'ent_annie-oakley', 'biography_intro', 'Introduction', 'Annie Oakley (born Phoebe Ann Mosey; August 13, 1860 – November 3, 1926) was an American exhibition/trick shooter and folk heroine who starred in Buffalo Bill''s Wild West.
Oakley developed hunting skills as a child in order to provide for her impoverished family in western Ohio. At age 15, she won a shooting contest against an experienced marksman, Frank E. Butler, whom she married in 1876. The pair joined Buffalo Bill in 1885, performing in Europe before royalty and other heads of state. Audiences were astounded to see her shooting out a cigar from her husband''s hand or splitting a playing-card edge-on at 30 paces. She earned more than anyone else in the troupe except Buffalo Bill himself.
After a bad rail accident in 1901, she engaged in a less taxing routine, touring in a play about her career. She also instructed women in marksmanship, believing strongly in women''s self-defense. Her stage acts were filmed for one of Thomas Edison''s earliest Kinetoscopes in 1894. Upon her death, an Ohio newspaper editorial noted her reply to the King of England, who had told her that America should be proud of her: "I haven''t given that much thought," she reportedly answered, "but I am proud of America." Since her death in 1926, her story has been adapted for stage musicals and films, including Annie Get Your Gun.',
   '["clm_wiki_annie-oakley_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 225);

-- 134. Aretha Franklin
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_aretha-franklin', 'person', 'aretha-franklin', 'Aretha Franklin', 'published', 'Aretha Louise Franklin ( ə-REE-thə; March 25, 1942 – August 16, 2018) was an American singer, songwriter and pianist. Regarded as the "Queen of Soul", she was twice named by Rolling Stone magazine as the greatest singer of all time.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_aretha-franklin', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_aretha-franklin_intro', 'ent_aretha-franklin', 'biography_intro', 'Introduction', 'Aretha Louise Franklin ( ə-REE-thə; March 25, 1942 – August 16, 2018) was an American singer, songwriter and pianist. Regarded as the "Queen of Soul", she was twice named by Rolling Stone magazine as the greatest singer of all time.
As a child Franklin was noticed for her gospel singing at New Bethel Baptist Church in Detroit, Michigan, where her father, C. L. Franklin, was a minister. At the age of 18 she was signed as a recording artist for Columbia Records. Whilst her career did not immediately flourish, Franklin found acclaim and commercial success once she had signed with Atlantic Records in 1966. There she recorded significant hit albums such as I Never Loved a Man the Way I Love You, Lady Soul and Aretha Now in the late 1960s and Young, Gifted and Black, Amazing Grace and Sparkle in the 1970s, before experiencing problems with the record company. Franklin left Atlantic in 1979 and signed with Arista Records, where her career was revived with the hit albums Jump to It, Who''s Zoomin'' Who?, Aretha and A Rose Is Still a Rose.
Franklin is one of the best-selling music artists, with more than 75 million records sold worldwide. She had 112 singles on the US Billboard charts, including 73 Hot 100 entries, 17 top-ten pop singles, 96 R&B entries and 20 number-one R&B singles. Although her rendition of Respect has been referred to as her signature song, Franklin is known for other hit singles such as (You Make Me Feel Like) A Natural Woman, Chain of Fools, Think, I Say a Little Prayer, Rock Steady, Day Dreaming, Freeway of Love and I Knew You Were Waiting (For Me) (a duet with George Michael). She also made a featured appearance in the 1980 musical-comedy film The Blues Brothers.
Franklin received numerous honors throughout her career. She won 18 Grammy Awards out of 44 nominations, including the first eight awards given for Best Female R&B Vocal Performance (1968–1975), as well as a Grammy Living Legend Award and Lifetime Achievement Award. She was also awarded the Nat',
   '["clm_wiki_aretha-franklin_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 345);

-- 135. Arthur Compton
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_arthur-compton', 'person', 'arthur-compton', 'Arthur Compton', 'published', 'Arthur Holly Compton (September 10, 1892 – March 15, 1962) was an American physicist who shared the 1927 Nobel Prize in Physics with C. T. R. Wilson for his discovery of the Compton effect, which demonstrated the particle nature of electromagnetic radiation. It was a significant discovery at the time; the wave nature of light had been well-demonstrated, but the idea that light had both wave and pa', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_arthur-compton', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_arthur-compton_intro', 'ent_arthur-compton', 'biography_intro', 'Introduction', 'Arthur Holly Compton (September 10, 1892 – March 15, 1962) was an American physicist who shared the 1927 Nobel Prize in Physics with C. T. R. Wilson for his discovery of the Compton effect, which demonstrated the particle nature of electromagnetic radiation. It was a significant discovery at the time; the wave nature of light had been well-demonstrated, but the idea that light had both wave and particle properties was not easily accepted.
In 1919, Compton was awarded one of the first two National Research Council Fellowships that allowed students to study abroad. He chose to go to the University of Cambridge''s Cavendish Laboratory in England, where he studied the scattering and absorption of gamma rays. Further research along these lines led to the discovery of the Compton effect.
Compton used X-rays to investigate ferromagnetism, concluding that it was a result of the alignment of electron spins, and studied cosmic rays, discovering that they were made principally of positively charged particles.
During World War II, Compton was a key figure in the Manhattan Project that developed the first nuclear weapons. His reports were important in launching the project. In 1942, he became a member of the S-1 Executive Committee, and then head of the "X" projects overseeing the Metallurgical Laboratory, with responsibility for producing nuclear reactors to convert uranium into plutonium, finding ways to separate the plutonium from the uranium and to design an atomic bomb. Compton oversaw Enrico Fermi''s creation of Chicago Pile-1, the first nuclear reactor, which went critical on December 2, 1942. The Metallurgical Laboratory was also responsible for the design and operation of the X-10 Graphite Reactor at Oak Ridge, Tennessee. Plutonium began being produced in the Hanford Site reactors in 1945.
After the War, Compton became Chancellor of Washington University in St. Louis. During his tenure, the university formally desegregated its undergraduate divisions, named its first fema',
   '["clm_wiki_arthur-compton_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 312);

-- 136. Assata Shakur
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_assata-shakur', 'person', 'assata-shakur', 'Assata Shakur', 'published', 'Assata Olugbala Shakur ( ə-SAH-tə shə-KOOR; born JoAnne Deborah Byron, July 16, 1947 – September 25, 2025) was an American political activist, revolutionary, and fugitive who was a member of the Black Panther Party, and later the Black Liberation Army. In 1977, she was convicted of the first-degree murder of New Jersey State Trooper Werner Foerster during a shootout on the New Jersey Turnpike in 1', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_assata-shakur', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_assata-shakur_intro', 'ent_assata-shakur', 'biography_intro', 'Introduction', 'Assata Olugbala Shakur ( ə-SAH-tə shə-KOOR; born JoAnne Deborah Byron, July 16, 1947 – September 25, 2025) was an American political activist, revolutionary, and fugitive who was a member of the Black Panther Party, and later the Black Liberation Army. In 1977, she was convicted of the first-degree murder of New Jersey State Trooper Werner Foerster during a shootout on the New Jersey Turnpike in 1973. She escaped from prison in 1979 and was wanted by the FBI, with a $1 million reward for information leading to her capture, and an additional $1 million reward offered by the New Jersey attorney general. She was never caught and remained a fugitive for 45 years.
Born in Flushing, Queens, Shakur grew up in New York City and Wilmington, North Carolina. After running away from home several times, she was taken in by an aunt, who later acted as one of her lawyers. Shakur became involved in political activism while attending the Borough of Manhattan Community College and the City College of New York. After graduation, she adopted the name Assata Shakur and briefly joined the Black Panther Party before becoming a member of the BLA.
Between 1971 and 1973, Shakur was charged with several crimes, leading to a multi-state manhunt. On May 2, 1973, Shakur, along with BLA members Zayd Malik Shakur and Sundiata Acoli, were stopped on the New Jersey Turnpike. The incident escalated into a shootout with State Troopers Werner Foerster and James Harper. Foerster was killed and Harper was wounded; Zayd Shakur was killed, and both Assata Shakur and Acoli were wounded. At her 1977 trial, Shakur was convicted on multiple charges, including the murder of Foerster and the assault of Harper, and was sentenced to life plus 26 to 33 years in prison. Shakur maintained that she could not have fired the shots that wounded Harper and killed Foerster, as her right arm had been injured by police gunfire early in the confrontation.
While serving her sentence at the Clinton Correctional Facility for Wom',
   '["clm_wiki_assata-shakur_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 336);

-- 137. Axl Rose
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_axl-rose', 'person', 'axl-rose', 'Axl Rose', 'published', 'W. Axl Rose ( AK-səl; born William Bruce Rose Jr., February 6, 1962) is an American singer and songwriter, best known as the lead vocalist and lyricist of the hard rock band Guns N'' Roses. He has been the band''s only constant member since its formation in 1985. Renowned for his wide-ranging, powerful voice, Rose has been ranked among the greatest singers of all time by outlets such as Rolling Ston', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_axl-rose', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_axl-rose_intro', 'ent_axl-rose', 'biography_intro', 'Introduction', 'W. Axl Rose ( AK-səl; born William Bruce Rose Jr., February 6, 1962) is an American singer and songwriter, best known as the lead vocalist and lyricist of the hard rock band Guns N'' Roses. He has been the band''s only constant member since its formation in 1985. Renowned for his wide-ranging, powerful voice, Rose has been ranked among the greatest singers of all time by outlets such as Rolling Stone, NME and Billboard.
Born in Lafayette, Indiana, Rose moved to Los Angeles in the early 1980s, joining bands like Hollywood Rose and L.A. Guns before co-founding Guns N'' Roses. The band''s debut album, Appetite for Destruction (1987), sold over 30 million copies worldwide and remains the best-selling U.S. debut. Rose''s relationships with Erin Everly and Stephanie Seymour inspired multiple songs, including the chart-topping "Sweet Child o'' Mine", though allegations of abuse, and controversial lyrics on "One in a Million" from the band''s next release G N'' R Lies (1988) drew criticism.
The twin albums Use Your Illusion I and II (1991), debuted at No. 2 and No. 1 on the Billboard 200, selling 35 million copies combined. Rose''s volatile behavior during the Use Your Illusion Tour, with riots (including his arrest for inciting the Riverport Riot), media rants, and feuds with Metallica and Nirvana, fueled further controversy. The follow-up, "The Spaghetti Incident?" (1993), was less successful and drew backlash for including a cover of "Look at Your Game, Girl" by convicted murderer Charles Manson.
After the tour, Rose disappeared from the public eye while Guns N'' Roses stalled on making a new album. Rose reemerged in 2001 with a new version of Guns N'' Roses, eventually releasing Chinese Democracy (2008), the most expensive rock album ever produced. Inducted into the Rock and Roll Hall of Fame in 2012, Rose declined to attend. In 2016, he reconciled with Slash and Duff McKagan for the record-breaking Not in This Lifetime... Tour, and also toured with AC/DC as a fill-in vocalist for',
   '["clm_wiki_axl-rose_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 330);

-- 138. B. B. King
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_bb-king', 'person', 'bb-king', 'B. B. King', 'published', 'Riley B. King (September 16, 1925 – May 14, 2015), known professionally as B. B. King, was an American blues guitarist, singer, songwriter, and record producer. He introduced a sophisticated style of soloing based on fluid string bending, shimmering vibrato, and staccato picking that influenced many later electric guitar blues players. AllMusic recognized King as "the single most important electri', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_bb-king', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_bb-king_intro', 'ent_bb-king', 'biography_intro', 'Introduction', 'Riley B. King (September 16, 1925 – May 14, 2015), known professionally as B. B. King, was an American blues guitarist, singer, songwriter, and record producer. He introduced a sophisticated style of soloing based on fluid string bending, shimmering vibrato, and staccato picking that influenced many later electric guitar blues players. AllMusic recognized King as "the single most important electric guitarist of the last half of the 20th century".
King was inducted into the Rock and Roll Hall of Fame in 1987 and is one of the most influential blues musicians in history, earning the nickname "The King of the Blues", and is referred to as one of the "Three Kings of the Blues Guitar" (along with Albert King and Freddie King, none of whom are related). King performed tirelessly throughout his musical career, appearing on average at more than 200 concerts a year into his 70s. In 1956 alone, he appeared at 342 shows.
Born and raised in the Mississippi Delta, King was attracted to music and taught himself to play guitar, beginning his career in juke joints and on local radio. King later lived and performed in Memphis and Chicago. As his fame grew, he toured the world extensively.',
   '["clm_wiki_bb-king_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 201);

-- 139. Baby Face Nelson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_baby-face-nelson', 'person', 'baby-face-nelson', 'Baby Face Nelson', 'published', 'Lester Joseph Gillis (December 6, 1908 – November 27, 1934), also known as George Nelson and Baby Face Nelson, was an American bank robber who became a criminal partner of John Dillinger when he helped Dillinger escape from prison in Crown Point, Indiana. Later, the Federal Bureau of Investigation (FBI) announced that Nelson and the remaining gang of bank robbers were collectively "Public Enemy Nu', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_baby-face-nelson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_baby-face-nelson_intro', 'ent_baby-face-nelson', 'biography_intro', 'Introduction', 'Lester Joseph Gillis (December 6, 1908 – November 27, 1934), also known as George Nelson and Baby Face Nelson, was an American bank robber who became a criminal partner of John Dillinger when he helped Dillinger escape from prison in Crown Point, Indiana. Later, the Federal Bureau of Investigation (FBI) announced that Nelson and the remaining gang of bank robbers were collectively "Public Enemy Number One".
The "Baby Face Nelson" nickname derived from Gillis being a short man with a youthful appearance; however, in the professional realm, Gillis''s fellow criminals addressed him as "Jimmy". A violent bank robber, Lester Joseph Gillis has killed more FBI agents than any other criminal. FBI agents fatally wounded Baby Face Nelson in the Battle of Barrington, fought in a suburb of Chicago.',
   '["clm_wiki_baby-face-nelson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 128);

-- 140. Barbara Bach
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_barbara-bach', 'person', 'barbara-bach', 'Barbara Bach', 'published', 'Barbara Bach, Lady Starkey (née Goldbach; born August 27 or 28, 1946) is an American retired actress and model. She played the Bond girl Anya Amasova in The Spy Who Loved Me. She is married to former Beatles drummer Ringo Starr.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_barbara-bach', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_barbara-bach_intro', 'ent_barbara-bach', 'biography_intro', 'Introduction', 'Barbara Bach, Lady Starkey (née Goldbach; born August 27 or 28, 1946) is an American retired actress and model. She played the Bond girl Anya Amasova in The Spy Who Loved Me. She is married to former Beatles drummer Ringo Starr.',
   '["clm_wiki_barbara-bach_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 41);

-- 141. Barbra Streisand
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_barbra-streisand', 'person', 'barbra-streisand', 'Barbra Streisand', 'published', 'Barbara Joan "Barbra" Streisand ( STRY-sand; born April 24, 1942) is an American singer, actress, songwriter, and filmmaker. Over a career spanning more than six decades, she has achieved success across multiple fields of entertainment, earning her all four of the major performing art awards—Emmy, Grammy, Oscar, and Tony (EGOT).', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_barbra-streisand', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_barbra-streisand_intro', 'ent_barbra-streisand', 'biography_intro', 'Introduction', 'Barbara Joan "Barbra" Streisand ( STRY-sand; born April 24, 1942) is an American singer, actress, songwriter, and filmmaker. Over a career spanning more than six decades, she has achieved success across multiple fields of entertainment, earning her all four of the major performing art awards—Emmy, Grammy, Oscar, and Tony (EGOT).
Streisand began performing in the early 1960s in nightclubs and Broadway theaters, which led to guest appearances on various television shows. Signing with Columbia Records, Streisand retained full artistic control of her performances in exchange for accepting lower pay—an arrangement that continued throughout her career. Her studio debut The Barbra Streisand Album (1963) won the Grammy Award for Album of the Year. During her recording career, Streisand has amassed a total of 31 RIAA platinum-certified albums, including People (1964), The Way We Were (1974), Guilty (1980), The Broadway Album (1985), and Higher Ground (1997). She was the first woman to score 11 number one albums on the US Billboard 200—from People to Encore: Movie Partners Sing Broadway (2016)—and remains the only artist to top the chart in six decades. Streisand also topped the US Billboard Hot 100 with five singles: "The Way We Were", "Evergreen", "You Don''t Bring Me Flowers", "No More Tears (Enough Is Enough)", and "Woman in Love".
In the latter 1960s, after having established success as a vocalist, Streisand ventured into film. She starred in the critically acclaimed Funny Girl (1968), winning the Academy Award for Best Actress. Additional fame on the big screen followed with the extravagant musical Hello, Dolly! (1969), the screwball comedy What''s Up, Doc? (1972), and the romantic drama The Way We Were (1973). Streisand won the Academy Award for Best Original Song for writing the love theme from A Star Is Born (1976), the first woman to be honored as a composer. With the release of Yentl (1983), Streisand became the first woman to write, produce, direct, and star in a ma',
   '["clm_wiki_barbra-streisand_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 320);

-- 142. Bari Weiss
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_bari-weiss', 'person', 'bari-weiss', 'Bari Weiss', 'published', 'Bari Weiss ( BARR-ee WYSSE; born March 25, 1984) is an American journalist and political commentator who has served since October 2025 as editor-in-chief of CBS News. She was an op-ed and book review editor at The Wall Street Journal from 2013 to 2017 and an op-ed staff editor and writer on culture and politics at The New York Times from 2017 to 2020, resigning in a widely covered public letter cr', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_bari-weiss', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_bari-weiss_intro', 'ent_bari-weiss', 'biography_intro', 'Introduction', 'Bari Weiss ( BARR-ee WYSSE; born March 25, 1984) is an American journalist and political commentator who has served since October 2025 as editor-in-chief of CBS News. She was an op-ed and book review editor at The Wall Street Journal from 2013 to 2017 and an op-ed staff editor and writer on culture and politics at The New York Times from 2017 to 2020, resigning in a widely covered public letter criticizing the paper''s culture. In 2021, Weiss founded the media company The Free Press (formerly Common Sense) and launched the podcast Honestly.
Weiss has described herself as a "left-leaning centrist" and "radical centrist", though several publications have characterized her as conservative; she is also known for her pro-Israel views and criticism of progressive politics. Her tenure at CBS News has been marked by controversy, including layoffs, the spiking of a 60 Minutes segment, and the firing of veteran correspondent Scott Pelley in June 2026.',
   '["clm_wiki_bari-weiss_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 155);

-- 143. Barry Bonds
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_barry-bonds', 'person', 'barry-bonds', 'Barry Bonds', 'published', 'Barry Lamar Bonds (born July 24, 1964) is an American former professional baseball left fielder who played 22 seasons in Major League Baseball (MLB). Bonds was a member of the Pittsburgh Pirates from 1986 to 1992 and the San Francisco Giants from 1993 to 2007. He is considered one of the greatest baseball players of all time.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_barry-bonds', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_barry-bonds_intro', 'ent_barry-bonds', 'biography_intro', 'Introduction', 'Barry Lamar Bonds (born July 24, 1964) is an American former professional baseball left fielder who played 22 seasons in Major League Baseball (MLB). Bonds was a member of the Pittsburgh Pirates from 1986 to 1992 and the San Francisco Giants from 1993 to 2007. He is considered one of the greatest baseball players of all time.
Recognized as an all-around player, Bonds received a record seven National League (NL) Most Valuable Player Awards and 12 Silver Slugger Awards, along with 14 All-Star selections. He holds many MLB hitting records, including most career home runs (762), most home runs in a single season (73, set in 2001), and the records for the most walks and intentional walks in a career, season, and in consecutive games. Bonds led MLB in on-base plus slugging six times and placed within the top five hitters in 12 of his 17 qualifying seasons. For his defensive play in the outfield, he won eight Gold Glove Awards. He also had 514 stolen bases, becoming the first and only MLB player to date with at least 500 home runs and 500 stolen bases. Bonds is ranked first in career Wins Above Replacement among all Major League position players by Baseball Reference and second by FanGraphs, behind only Babe Ruth.
Despite his accolades, Bonds led a controversial career, notably as a central figure in baseball''s steroids scandal. He was indicted in 2007 on charges of perjury and obstruction of justice for allegedly lying to a grand jury during the federal government''s investigation of BALCO, a manufacturer of an undetectable steroid. After the perjury charges were dropped, Bonds was convicted of obstruction of justice in 2011, but was exonerated on appeal in 2015. During his 10 years of eligibility, he did not receive the 75% of the vote needed to be elected to the National Baseball Hall of Fame. Some voters of the Baseball Writers'' Association of America (BBWAA) stated they did not vote for Bonds because they believe he used performance-enhancing drugs.',
   '["clm_wiki_barry-bonds_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 334);

-- 144. Karl Barry Sharpless
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_barry-sharpless', 'person', 'barry-sharpless', 'Karl Barry Sharpless', 'published', 'Karl Barry Sharpless (born April 28, 1941) is an American stereochemist. He is a two-time Nobel laureate in chemistry, known for his work on stereoselective reactions and click chemistry.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_barry-sharpless', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_barry-sharpless_intro', 'ent_barry-sharpless', 'biography_intro', 'Introduction', 'Karl Barry Sharpless (born April 28, 1941) is an American stereochemist. He is a two-time Nobel laureate in chemistry, known for his work on stereoselective reactions and click chemistry.
Sharpless was awarded half of the 2001 Nobel Prize in Chemistry "for his work on chirally catalysed oxidation reactions", and one third of the 2022 prize, jointly with Carolyn R. Bertozzi and Morten P. Meldal, "for the development of click chemistry and bioorthogonal chemistry". Sharpless is the fifth person (in addition to two organizations) to have twice been awarded a Nobel prize, along with Marie Curie, John Bardeen, Linus Pauling and Frederick Sanger, and the third to have been awarded two prizes in the same discipline (after Bardeen and Sanger).',
   '["clm_wiki_barry-sharpless_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 119);

-- 145. Bayard Rustin
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_bayard-rustin', 'person', 'bayard-rustin', 'Bayard Rustin', 'published', 'Bayard Rustin ( BY-ərd; March 17, 1912 – August 24, 1987) was an American political activist and prominent leader in social movements for civil rights, socialism, nonviolence, and gay rights. Rustin was the principal organizer of the March on Washington for Jobs and Freedom in 1963.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_bayard-rustin', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_bayard-rustin_intro', 'ent_bayard-rustin', 'biography_intro', 'Introduction', 'Bayard Rustin ( BY-ərd; March 17, 1912 – August 24, 1987) was an American political activist and prominent leader in social movements for civil rights, socialism, nonviolence, and gay rights. Rustin was the principal organizer of the March on Washington for Jobs and Freedom in 1963.
In 1941, Rustin worked with A. Philip Randolph on the March on Washington Movement to press for an end to racial discrimination in the military and defense industry. Rustin later organized Freedom Rides and helped organize the Southern Christian Leadership Conference to mentor Martin Luther King Jr. on nonviolent resistance. In 1954, Rustin worked alongside Ella Baker, a co-director of the Crusade for Citizenship. Before the Montgomery bus boycott, he helped organize a group called "In Friendship" to provide material and legal assistance to people threatened with eviction from their tenant farms and homes. Rustin became the head of the AFL–CIO''s A. Philip Randolph Institute, which promoted the integration of formerly all-white unions and the unionization of African Americans. During the 1970s and 1980s, Rustin served on many humanitarian missions, such as aiding refugees from Vietnam and Cambodia.
Rustin was a gay man and, due to criticism of his sexuality, usually advised other civil rights leaders from behind the scenes. During the 1980s, he became a public advocate on behalf of gay causes, speaking at events as an activist and supporter of human rights.
Later in life, Rustin shifted toward neoconservative views. As leader of Social Democrats USA, he opposed racial quotas and Black studies programs. He occasionally wrote for Commentary magazine, aligning closely with its publisher, Norman Podhoretz. Upon Rustin''s death, President Ronald Reagan paid tribute to his work. 
On November 20, 2013, Rustin was posthumously awarded the Presidential Medal of Freedom by President Barack Obama.
In 2018, the nonprofit Bayard Rustin Center for Social Justice was created in Rustin''s honor in collabor',
   '["clm_wiki_bayard-rustin_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 310);

-- 146. Beth Ford
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_beth-ford', 'person', 'beth-ford', 'Beth Ford', 'published', 'Beth E. Ford (born 1964) is an American businessperson. Ford is most notable for being the CEO of Land O''Lakes, an American agricultural cooperative which she assumed leadership of in 2018. She is the first openly gay female CEO of an American Fortune 500 company. She is a member of the President''s Export Council. In 2023. She was ranked 26th on Fortune''s list of Most Powerful Women.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_beth-ford', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_beth-ford_intro', 'ent_beth-ford', 'biography_intro', 'Introduction', 'Beth E. Ford (born 1964) is an American businessperson. Ford is most notable for being the CEO of Land O''Lakes, an American agricultural cooperative which she assumed leadership of in 2018. She is the first openly gay female CEO of an American Fortune 500 company. She is a member of the President''s Export Council. In 2023. She was ranked 26th on Fortune''s list of Most Powerful Women.',
   '["clm_wiki_beth-ford_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 67);

-- 147. Betsy Ross
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_betsy-ross', 'person', 'betsy-ross', 'Betsy Ross', 'published', '"Burials, Christ Church, 1772-1787". Philadelphia Congregations Early Records. July 27, 2026. Retrieved July 27, 2026.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_betsy-ross', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_betsy-ross_intro', 'ent_betsy-ross', 'biography_intro', 'Introduction', '"Burials, Christ Church, 1772-1787". Philadelphia Congregations Early Records. July 27, 2026. Retrieved July 27, 2026.

Elizabeth Griscom Ross (née Griscom; January 1, 1752 – January 30, 1836), also known by her second and third married names, Ashburn and Claypoole, was an American upholsterer who was credited by her relatives in 1870 with designing and making the first U.S. flag, commonly known as the Betsy Ross flag. Though historians dismissed the story both then and now, Ross family tradition holds that General George Washington, commander-in-chief of the Continental Army and two members of a congressional committee—Robert Morris and George Ross—visited Ross in 1776. Ross convinced Washington to change the shape of the stars in a sketch of a flag he showed her from six-pointed to five-pointed by demonstrating that it was easier and speedier to cut the latter. However, there is no archival evidence or other recorded verbal tradition to substantiate this story of the first U.S. flag. It appears that the story first surfaced in the writings of her grandson in the 1870s (a century after the fact), with no mention or documentation in earlier decades. The myth was later incorporated into a large oil painting that appeared at the 1893 Chicago World''s fair.  The painter, Charles Weisgerber, subsequently promoted the myth, even buying a house he deemed The Betsy Ross House.  He solicited money nationwide for the upkeep of the house as a tourist attraction. With the solicitations, he provided a synopsis of the myth with reproductions of his painting.
Ross made flags for the Pennsylvania Navy during the American Revolution. After the Revolution, she made U.S. flags for over 50 years, including 50 garrison flags for the U.S. Arsenal on the Schuylkill River during 1811. The flags of the Pennsylvania navy were overseen by the Pennsylvania Navy Board. The board reported to the Pennsylvania Provincial Assembly''s Committee of Safety. In July 1775, the President of the Committee ',
   '["clm_wiki_betsy-ross_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 319);

-- 148. Bette Davis
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_bette-davis', 'person', 'bette-davis', 'Bette Davis', 'published', 'Ruth Elizabeth "Bette" Davis (; April 5, 1908 – October 6, 1989) was an American actress of film, television, and theater. Regarded as one of the greatest actresses in Hollywood history, she was noted for her willingness to play unsympathetic, sardonic characters and was known for her performances in a range of film genres, from contemporary crime melodramas to historical and period films and occa', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_bette-davis', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_bette-davis_intro', 'ent_bette-davis', 'biography_intro', 'Introduction', 'Ruth Elizabeth "Bette" Davis (; April 5, 1908 – October 6, 1989) was an American actress of film, television, and theater. Regarded as one of the greatest actresses in Hollywood history, she was noted for her willingness to play unsympathetic, sardonic characters and was known for her performances in a range of film genres, from contemporary crime melodramas to historical and period films and occasional comedies, although her greatest successes were her roles in romantic dramas. She won the Academy Award for Best Actress twice, was the first person to accrue ten Academy Award nominations (and one write-in) for acting, and was the first woman to receive a Lifetime Achievement Award from the American Film Institute.
After appearing in Broadway plays, Davis moved to Hollywood in 1930, but her early films for Universal Studios were unsuccessful. She joined Warner Bros. in 1932 and had her critical breakthrough playing a vulgar waitress in Of Human Bondage (1934). Contentiously, she was not among the three nominees for the Academy Award for Best Actress that year, and she won it the following year for her performance in Dangerous (1935). In 1936, due to poor film offers, she attempted to free herself from her contract, and although she lost a well-publicized legal case, it marked the beginning of the most successful period of her career. Until the late 1940s, she was one of American cinema''s most celebrated leading ladies. She was praised for her role in Marked Woman (1937) and won a second Academy Award for her portrayal of a strong-willed 1850s Southern belle in Jezebel (1938), the first of five consecutive years in which she received a Best Actress nomination; the others for Dark Victory (1939), The Letter (1940), The Little Foxes (1941), and Now, Voyager (1942).
A period of decline in the late 1940s was redeemed with her role as a fading Broadway star in All About Eve (1950), which has often been cited as her best performance. She received Best Actress nominations fo',
   '["clm_wiki_bette-davis_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 332);

-- 149. Betty Grable
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_betty-grable', 'person', 'betty-grable', 'Betty Grable', 'published', 'Elizabeth Ruth Grable (December 18, 1916 – July 2, 1973) was an American actress, pin-up girl, dancer, model, and singer. Her 42 films during the 1930s and 1940s grossed more than $100 million, and for 10 consecutive years (1942–1951) she placed among the Quigley Poll''s top 10 box office stars (a feat only matched by Doris Day, Julia Roberts and Barbra Streisand, although all were surpassed by Mar', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_betty-grable', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_betty-grable_intro', 'ent_betty-grable', 'biography_intro', 'Introduction', 'Elizabeth Ruth Grable (December 18, 1916 – July 2, 1973) was an American actress, pin-up girl, dancer, model, and singer. Her 42 films during the 1930s and 1940s grossed more than $100 million, and for 10 consecutive years (1942–1951) she placed among the Quigley Poll''s top 10 box office stars (a feat only matched by Doris Day, Julia Roberts and Barbra Streisand, although all were surpassed by Mary Pickford, with 13 years). The U.S. Treasury Department listed her as the highest-salaried American woman in 1946 and 1947, and she earned more than $3 million during her career.
Grable began her film career in 1929 at age 12 and was later fired from a contract for having signed with a false identification. She studied acting with Neely Dickson at the Hollywood Community Theater. She had contracts with RKO and Paramount Pictures during the 1930s and appeared in a string of B movies, mostly portraying college students. She came to prominence in the Broadway musical Du Barry Was a Lady (1939), which brought her to the attention of 20th Century-Fox.
She replaced Alice Faye in Down Argentine Way (1940), her first major Hollywood film, and became Fox''s biggest film star throughout the next decade. Fox cast Grable in a succession of Technicolor musicals during the decade that were immensely popular, costarring with such leading men as Victor Mature, Don Ameche, John Payne and Tyrone Power. In 1943, she was the number-one box-office draw in the world. Two of her greatest film successes were the musical Mother Wore Tights (1947) and the comedy How to Marry a Millionaire (1953), one of her later films. Grable retired from screen acting in 1955 after she withdrew from her Fox contract, but she continued to perform on the stage and on television.
Throughout her career, Grable was a celebrated sex symbol. Her bathing-suit poster made her the top pin-up girl of World War II, surpassing Rita Hayworth. The photo was later included in the Life magazine project "100 Photographs That Change',
   '["clm_wiki_betty-grable_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 335);

-- 150. Beyoncé
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_beyonc-knowles-carter', 'person', 'beyonc-knowles-carter', 'Beyoncé', 'published', 'Beyoncé Giselle Knowles-Carter (  bee-ON-say; born September 4, 1981) is an American singer, songwriter, actress, and businesswoman. Known for her vocal ability, artistic reinventions, and live performances, she is widely regarded as one of the most culturally significant figures of the 21st century. Credited with shaping popular music, Beyoncé is often deemed one of the greatest entertainers of a', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_beyonc-knowles-carter', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_beyonc-knowles-carter_intro', 'ent_beyonc-knowles-carter', 'biography_intro', 'Introduction', 'Beyoncé Giselle Knowles-Carter (  bee-ON-say; born September 4, 1981) is an American singer, songwriter, actress, and businesswoman. Known for her vocal ability, artistic reinventions, and live performances, she is widely regarded as one of the most culturally significant figures of the 21st century. Credited with shaping popular music, Beyoncé is often deemed one of the greatest entertainers of all time.
Beyoncé rose to fame in the late 1990s as the lead singer of Destiny''s Child, one of the best-selling girl groups in history. Her debut solo album, Dangerously in Love (2003), became one of the best-selling albums of the 21st century. After Destiny''s Child disbanded in 2005, Beyoncé released the funk-imbued B''Day (2006) and starred in the drama film Dreamgirls (2006). Her marriage to rapper Jay-Z and portrayal of Etta James in the biopic Cadillac Records (2008) influenced her pop-oriented double album I Am... Sasha Fierce (2008). Through the 2000s, Beyoncé garnered the US Billboard Hot 100 number-one singles "Crazy in Love", "Baby Boy", "Check on It", "Irreplaceable", and "Single Ladies (Put a Ring on It)".
After forming the management company Parkwood Entertainment, Beyoncé embraced traditional R&B and soul on 4 (2011). The electronic-influenced Beyoncé (2013) popularized surprise and visual albums, inspiring the setting of Friday as Global Release Day, while the eclectic Lemonade (2016) sparked sociopolitical discourse and was the best-selling album of 2016. Her ongoing trilogy project—consisting of the queer-inspired dance album Renaissance (2022) and the Americana-rooted country record Cowboy Carter (2024)—has highlighted the overlooked contributions of Black pioneers to American musical and cultural history, spawning the respective US number-one singles "Break My Soul" and "Texas Hold ''Em".
Beyoncé is one of the best-selling music artists of all time, with estimated sales of over 200 million records. She is the most-certified female artist by the Recording Ind',
   '["clm_wiki_beyonc-knowles-carter_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 299);

-- 151. Bill Bixby
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_bill-bixby', 'person', 'bill-bixby', 'Bill Bixby', 'published', 'Wilfred Bailey Everett Bixby III (January 22, 1934 – November 21, 1993) was an American actor and television director. His career spanned more than three decades, including appearances on stage, in films, and on television series. He is known for his roles in the CBS sitcom My Favorite Martian as Tim O''Hara, in the ABC sitcom The Courtship of Eddie''s Father as Tom Corbett, in the NBC crime drama s', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_bill-bixby', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_bill-bixby_intro', 'ent_bill-bixby', 'biography_intro', 'Introduction', 'Wilfred Bailey Everett Bixby III (January 22, 1934 – November 21, 1993) was an American actor and television director. His career spanned more than three decades, including appearances on stage, in films, and on television series. He is known for his roles in the CBS sitcom My Favorite Martian as Tim O''Hara, in the ABC sitcom The Courtship of Eddie''s Father as Tom Corbett, in the NBC crime drama series The Magician as stage illusionist Anthony Blake, in the ABC miniseries Rich Man, Poor Man as Willie Abbott, and the CBS science-fiction drama series The Incredible Hulk as Dr. David Bruce Banner.',
   '["clm_wiki_bill-bixby_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 102);

-- 152. William Poole
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_bill-the-butcher', 'person', 'bill-the-butcher', 'William Poole', 'published', 'William Poole (July 24, 1821 – March 8, 1855), also known as Bill the Butcher, was the leader of the Washington Street Gang, which later became known as the Bowery Boys gang. He was a local leader of the Know Nothing political movement in mid-19th-century New York City.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_bill-the-butcher', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_bill-the-butcher_intro', 'ent_bill-the-butcher', 'biography_intro', 'Introduction', 'William Poole (July 24, 1821 – March 8, 1855), also known as Bill the Butcher, was the leader of the Washington Street Gang, which later became known as the Bowery Boys gang. He was a local leader of the Know Nothing political movement in mid-19th-century New York City.',
   '["clm_wiki_bill-the-butcher_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 48);

-- 153. Billy the Kid
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_billy-the-kid', 'person', 'billy-the-kid', 'Billy the Kid', 'published', 'Henry McCarty (September 17 or November 23, 1859 – July 14, 1881), alias William H. Bonney, better known as Billy the Kid, was an American outlaw and gunfighter of the Old West who was linked to nine murders. He was solely responsible for four of them, and he may have played a role in five, alongside other men. He is also noted for his involvement in New Mexico''s Lincoln County War.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_billy-the-kid', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_billy-the-kid_intro', 'ent_billy-the-kid', 'biography_intro', 'Introduction', 'Henry McCarty (September 17 or November 23, 1859 – July 14, 1881), alias William H. Bonney, better known as Billy the Kid, was an American outlaw and gunfighter of the Old West who was linked to nine murders. He was solely responsible for four of them, and he may have played a role in five, alongside other men. He is also noted for his involvement in New Mexico''s Lincoln County War.
McCarty was orphaned at the age of 15. His first arrest was for stealing food at the age of 16 in 1875. Ten days later, he robbed a Chinese laundry and was arrested again, but escaped shortly afterwards. He fled from New Mexico Territory into neighboring Arizona Territory, making himself both an outlaw and a federal fugitive. In 1877, he began to call himself "William H. Bonney."
After killing a blacksmith during an altercation in August 1877, Bonney became a wanted man in Arizona and returned to New Mexico, where he joined a group of cattle rustlers. He became well known in the region when he joined the Regulators and took part in the Lincoln County War of 1878. He and two other Regulators were later charged with killing three men, including Lincoln County Sheriff William J. Brady and one of his deputies.
Bonney''s notoriety grew in December 1880 when the Las Vegas Gazette, in Las Vegas, New Mexico, and The Sun, in New York City, carried stories about his crimes. Sheriff Pat Garrett captured Bonney later that month. In April 1881, Bonney was tried for and convicted of Brady''s murder and was sentenced to hang in May of that year. He escaped from jail on April 28, killing two sheriff''s deputies in the process, and evaded capture for more than two months. Garrett shot and killed Bonney, by then aged 21, in Fort Sumner on July 14, 1881. During his short career as an outlaw, Bonney was the subject of numerous U.S. newspaper articles, some as far away as New York.
During the decades following his death, stories spread that Bonney had survived, and a number of men claimed to be him. The legend ',
   '["clm_wiki_billy-the-kid_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 356);

-- 154. Blake Lively
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_blake-lively', 'person', 'blake-lively', 'Blake Lively', 'published', 'Blake Ellender Brown (born August 25, 1987), known professionally as Blake Lively, is an American actress and entrepreneur. ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_blake-lively', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_blake-lively_intro', 'ent_blake-lively', 'biography_intro', 'Introduction', 'Blake Ellender Brown (born August 25, 1987), known professionally as Blake Lively, is an American actress and entrepreneur. 
A daughter of actor Ernie Lively, she made her professional debut in his directorial project Sandman (1998). She had her breakthrough role in The Sisterhood of the Traveling Pants (2005) and its 2008 sequel. Lively achieved stardom with her portrayal of Serena van der Woodsen in the CW teen drama television series Gossip Girl (2007–2012). During this period, she also took on supporting roles in the romantic comedies New York, I Love You (2008) and The Private Lives of Pippa Lee (2009), as well as in the thrillers The Town (2010) and Savages (2012).
She starred in the romantic fantasy The Age of Adaline (2015), the survival film The Shallows (2016), the comedy Café Society (2016), and the comedy thriller A Simple Favor (2018) as well as its 2025 sequel. She expanded her career by directing Taylor Swift''s 2021 music video "I Bet You Think About Me". Lively produced and starred opposite Justin Baldoni in the romantic drama It Ends with Us (2024).',
   '["clm_wiki_blake-lively_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 181);

-- 155. Bob Dole
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_bob-dole', 'person', 'bob-dole', 'Bob Dole', 'published', 'Robert Joseph  Dole (July 22, 1923 – December 5, 2021) was an American politician, attorney, and U.S. Army officer who represented Kansas in the United States Senate from 1969 to 1996. He was the Republican leader of the U.S. Senate during the final 11 years of his tenure, including three non-consecutive years as Majority Leader of the U.S. Senate. Prior to his 27 years in the Senate, he served in', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_bob-dole', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_bob-dole_intro', 'ent_bob-dole', 'biography_intro', 'Introduction', 'Robert Joseph  Dole (July 22, 1923 – December 5, 2021) was an American politician, attorney, and U.S. Army officer who represented Kansas in the United States Senate from 1969 to 1996. He was the Republican leader of the U.S. Senate during the final 11 years of his tenure, including three non-consecutive years as Majority Leader of the U.S. Senate. Prior to his 27 years in the Senate, he served in the United States House of Representatives from 1961 to 1969. Dole was also the Republican presidential nominee in the 1996 presidential election and the vice presidential nominee in the 1976 presidential election.
Dole was born and raised in Russell, Kansas, where he established a legal career after serving with distinction in the United States Army during World War II. Following a period as county attorney for Russell County, he won election to the House of Representatives in 1960, initially from Kansas''s 6th congressional district and then from the 1st congressional district. He served this seat until 1968, when he was elected to the Senate, and was re-elected four more times there. In the Senate, Dole served as chairman of the Republican National Committee from 1971 to 1973 and chairman of the United States Senate Committee on Finance from 1981 to 1985. He led the U.S. Senate Republican members from 1985 to his resignation in 1996, and served as Senate Majority Leader from 1985 to 1987 and from 1995 to 1996. In his role as Republican leader, he helped defeat the Clinton health care plan of 1993, proposed by Democratic President Bill Clinton.
In 1976, President Gerald Ford selected Dole as his running mate for that year''s presidential election after Vice President Nelson Rockefeller withdrew from seeking a full term. Their ticket was defeated by the Democratic ticket of Jimmy Carter and Walter Mondale in the general election. Dole sought the Republican presidential nomination in 1980 United States presidential election, but quickly dropped out of the race. He experience',
   '["clm_wiki_bob-dole_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 328);

-- 156. Bobbi Brown
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_bobbi-brown', 'person', 'bobbi-brown', 'Bobbi Brown', 'published', 'Bobbi Brown (born April 14, 1957) is an American professional make-up artist, author, and the founder of Bobbi Brown Cosmetics. She created ten natural-shade lipsticks, which, according to Entrepreneur "revolutionized the beauty industry". She has written ten books about beauty and wellness. In 2025, Time magazine listed her as one of the world''s 100 most influential people.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_bobbi-brown', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_bobbi-brown_intro', 'ent_bobbi-brown', 'biography_intro', 'Introduction', 'Bobbi Brown (born April 14, 1957) is an American professional make-up artist, author, and the founder of Bobbi Brown Cosmetics. She created ten natural-shade lipsticks, which, according to Entrepreneur "revolutionized the beauty industry". She has written ten books about beauty and wellness. In 2025, Time magazine listed her as one of the world''s 100 most influential people.
After leaving Bobbi Brown Cosmetics in 2016, she launched Beauty Evolution, LLC, and became certified as a health coach through the Institute for Integrative Nutrition. Brown also started a line of beauty-inspired wellness products. and launched a second beauty line, Jones Road, in 2020. Brown curates an editorial website. She and her husband Steven Plofker redesigned The George, a boutique hotel located in Montclair, New Jersey.',
   '["clm_wiki_bobbi-brown_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 123);

-- 157. Bobby Orr
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_bobby-orr', 'person', 'bobby-orr', 'Bobby Orr', 'published', 'Robert Gordon Orr (born March 20, 1948) is a Canadian former professional ice hockey player, widely acknowledged as one of the greatest players of all time. Orr used his skating speed, scoring, and play-making abilities to revolutionize the position of defenceman. He played in the National Hockey League (NHL) for 12 seasons, the first 10 with the Boston Bruins, followed by two with the Chicago Bla', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_bobby-orr', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_bobby-orr_intro', 'ent_bobby-orr', 'biography_intro', 'Introduction', 'Robert Gordon Orr (born March 20, 1948) is a Canadian former professional ice hockey player, widely acknowledged as one of the greatest players of all time. Orr used his skating speed, scoring, and play-making abilities to revolutionize the position of defenceman. He played in the National Hockey League (NHL) for 12 seasons, the first 10 with the Boston Bruins, followed by two with the Chicago Black Hawks. Orr remains the only defenceman to have won the league scoring title with two Art Ross Trophies. He holds the record for most points and assists in a single season by a defenceman. Orr won a record eight consecutive Norris Trophies as the NHL''s best defenceman and three consecutive Hart Trophies as the league''s most valuable player (MVP). Orr was inducted into the Hockey Hall of Fame in 1979 at age 31, the youngest to be inducted at that time. In 2017, Orr was named by the National Hockey League as one of the "100 Greatest NHL Players" in history.
Orr started in organized hockey at age eight. He first played as a forward, but moved to defence  and was encouraged to use his skating skills to control play. Orr''s play in Ontario provincial competition attracted the notice of NHL scouts as early as age twelve. At fourteen, Orr joined the Oshawa Generals, the Bruins'' junior hockey affiliate, and he was an all-star for three of his four seasons there.
In 1966, Orr joined the Boston Bruins, a team that had not won a Stanley Cup since 1941 and had not made the playoffs since 1959. With Orr, the Bruins won the Stanley Cup twice, in 1970 and 1972. Both times, Orr scored the clinching goal and was named the playoff MVP. In the final achievement of his career, he was the MVP of the 1976 Canada Cup international hockey tournament. In 1976, Orr left Boston as a free agent to join the Black Hawks, but repeated injuries had effectively destroyed his left knee, and he retired in 1978 at age 30.
Orr''s first professional contract was one of the first in professional hockey to be neg',
   '["clm_wiki_bobby-orr_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 354);

-- 158. Bobby Riggs
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_bobby-riggs', 'person', 'bobby-riggs', 'Bobby Riggs', 'published', 'Robert Larimore Riggs (February 25, 1918 – October 25, 1995) was an American tennis champion who was the world No. 1 amateur in 1939 and world No. 1 professional in 1946 and 1947. He played his first professional tennis match on December 26, 1941.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_bobby-riggs', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_bobby-riggs_intro', 'ent_bobby-riggs', 'biography_intro', 'Introduction', 'Robert Larimore Riggs (February 25, 1918 – October 25, 1995) was an American tennis champion who was the world No. 1 amateur in 1939 and world No. 1 professional in 1946 and 1947. He played his first professional tennis match on December 26, 1941.
As a 21-year-old amateur in 1939, Riggs won the singles title at Wimbledon, the U.S. National Championships (now U.S. Open), and was runner-up at the French Championships. He was U.S. champion again in 1941, after a runner-up finish in the previous year. At the 1939 Wimbledon Championships he also won the Men''s Doubles and the Mixed Doubles.
After retirement from his pro career, Riggs became well known as a hustler and gambler. He organized numerous exhibition challenges, inviting active and retired tennis pros to participate. In 1973, aged 55, he held two such events, first against the No. 1–ranked woman player Margaret Smith Court, which he won, and another against the then-current women''s champion Billie Jean King, which he lost. The latter, the primetime "Battle of the Sexes" match, remains one of the most famous tennis events of all time, with a $100,000 ($725,000 today) winner-takes-all prize.',
   '["clm_wiki_bobby-riggs_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 191);

-- 159. Bonnie and Clyde
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_bonnie-parker', 'person', 'bonnie-parker', 'Bonnie and Clyde', 'published', 'Bonnie Elizabeth Parker (October 1, 1910 – May 23, 1934) and Clyde Chestnut "Champion" Barrow (March 24, 1909 – May 23, 1934) were outlaws who traveled the Central United States with their gang during the Great Depression, committing a series of criminal acts such as robbing of stores, robbing of banks, kidnappings and murders between 1932 and 1934. The couple were known for their bank robberies a', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_bonnie-parker', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_bonnie-parker_intro', 'ent_bonnie-parker', 'biography_intro', 'Introduction', 'Bonnie Elizabeth Parker (October 1, 1910 – May 23, 1934) and Clyde Chestnut "Champion" Barrow (March 24, 1909 – May 23, 1934) were outlaws who traveled the Central United States with their gang during the Great Depression, committing a series of criminal acts such as robbing of stores, robbing of banks, kidnappings and murders between 1932 and 1934. The couple were known for their bank robberies and multiple murders, although they preferred to rob small stores or rural gas stations. Their exploits captured the attention of the American press and its readership during what is occasionally referred to as the "public enemy era" between 1931 and 1934. On May 23, 1934, they were ambushed and killed on Louisiana Highway 154 in Bienville Parish, Louisiana, by a law enforcement posse led by retired Texas Ranger Frank Hamer. They are believed to have murdered at least nine police officers and three civilians.
The film Bonnie and Clyde (1967), directed by Arthur Penn and starring Warren Beatty and Faye Dunaway in the title roles, despite being highly fictionalized and historically inaccurate, was a critical and commercial success which revived interest in the criminals and glamorized them with a romantic aura. The Netflix film The Highwaymen (2019) depicted their manhunt from the point of view of the pursuing lawmen.

',
   '["clm_wiki_bonnie-parker_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 215);

-- 160. Breanna Stewart
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_breanna-stewart', 'person', 'breanna-stewart', 'Breanna Stewart', 'published', 'Breanna Mackenzie Stewart ( bree-ANN-ə; born August 27, 1994), nicknamed "Stewie", is an American professional basketball player for the New York Liberty of the Women''s National Basketball Association (WNBA) and for the Mist of Unrivaled. She is one of the most accomplished basketball players in history. Stewart is a founder of the Unrivaled basketball league together with Napheesa Collier.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_breanna-stewart', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_breanna-stewart_intro', 'ent_breanna-stewart', 'biography_intro', 'Introduction', 'Breanna Mackenzie Stewart ( bree-ANN-ə; born August 27, 1994), nicknamed "Stewie", is an American professional basketball player for the New York Liberty of the Women''s National Basketball Association (WNBA) and for the Mist of Unrivaled. She is one of the most accomplished basketball players in history. Stewart is a founder of the Unrivaled basketball league together with Napheesa Collier.
In high school, Stewart was the National Gatorade Player of the Year, the Gatorade Female Athlete of the Year, and a McDonald''s All-American. She led the University of Connecticut Huskies to four consecutive national championships, was named the Final Four''s most outstanding player a record four times, and was a three-time consensus national player of the year.
She was the first overall pick in the 2016 WNBA draft and was named the 2016 WNBA Rookie of the Year. She was named the WNBA MVP in 2018 and 2023, and was named an All-Star in 2017, 2018, 2021, 2022, 2023, 2024, and 2025. She led the Storm to two championships in 2018 and 2020, and received the WNBA Finals MVP award both times. She also won the 2024 WNBA championship with the New York Liberty. In 2021, Stewart was named to The W25 as one of the top 25 players of the WNBA''s first 25 years.
Stewart is a three-time EuroLeague Women champion and was MVP of the league in 2019, as well as winning national league titles in Russia and Türkiye.
As a member of the U.S. women''s national team, Stewart has won gold medals in the 2016, 2020, and 2024 Olympics and at the 2014, 2018, and 2022 FIBA World Cups.',
   '["clm_wiki_breanna-stewart_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 271);

-- 161. Brigham Young
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_brigham-young', 'person', 'brigham-young', 'Brigham Young', 'published', 'Brigham Young ( BRIG-əm; June 1, 1801 – August 29, 1877) was an American religious leader and politician. He was the second president of the Church of Jesus Christ of Latter-day Saints (LDS Church) from 1847 until his death in 1877. He also served as the first governor of the Utah Territory from 1851 until his resignation in 1858.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_brigham-young', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_brigham-young_intro', 'ent_brigham-young', 'biography_intro', 'Introduction', 'Brigham Young ( BRIG-əm; June 1, 1801 – August 29, 1877) was an American religious leader and politician. He was the second president of the Church of Jesus Christ of Latter-day Saints (LDS Church) from 1847 until his death in 1877. He also served as the first governor of the Utah Territory from 1851 until his resignation in 1858.
Young was born in 1801 in Whitingham, Vermont, and raised in Upstate New York. After working as a painter and carpenter, he became a full-time LDS Church leader in 1835. Following a short period of service as a missionary, he moved to Missouri in 1838. Later that year, Missouri governor Lilburn Boggs signed the Mormon Extermination Order, and Young organized the migration of the Latter Day Saints from Missouri to Illinois, where he became an inaugural member of the Council of Fifty. In 1844, while he was traveling to gain support for Joseph Smith''s presidential campaign, Smith was killed by a mob, igniting the Illinois Mormon War and triggering a succession crisis in the Latter Day Saint movement. After negotiating a ceasefire, Young was unanimously elected as the church''s second president in 1847. During the Mormon exodus, Young led his followers west from Nauvoo, Illinois, via the Mormon Trail to the Salt Lake Valley. Once settled in Utah, he ordered the construction of numerous temples, including the Salt Lake Temple. He also formalized the prohibition of black men attaining priesthood and directed the Mormon Reformation. An advocate for education, Young sought to establish the higher education institutions that would later become the University of Utah and Brigham Young University.
After arriving in Utah, Young founded Salt Lake City and established the State of Deseret before being appointed Utah''s first territorial governor by President Millard Fillmore in 1850. As governor, Young allowed polygamy, supported slavery and its expansion into Utah, and led the efforts to legalize and regulate slavery in the 1852 Act in Relation to Servic',
   '["clm_wiki_brigham-young_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 325);

-- 162. Bruce Lee
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_bruce-lee', 'person', 'bruce-lee', 'Bruce Lee', 'published', 'Bruce Lee (born Lee Jun-fan; November 27, 1940 – July 20, 1973) was a Hong Kong and American martial artist, actor, and filmmaker. He was the founder of Jeet Kune Do, a hybrid martial arts philosophy, which was formed from his experiences in unarmed fighting and self-defense—as well as eclectic, Zen Buddhist, and Taoist philosophies—as a new school of martial arts thought. With a career spanning H', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_bruce-lee', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_bruce-lee_intro', 'ent_bruce-lee', 'biography_intro', 'Introduction', 'Bruce Lee (born Lee Jun-fan; November 27, 1940 – July 20, 1973) was a Hong Kong and American martial artist, actor, and filmmaker. He was the founder of Jeet Kune Do, a hybrid martial arts philosophy, which was formed from his experiences in unarmed fighting and self-defense—as well as eclectic, Zen Buddhist, and Taoist philosophies—as a new school of martial arts thought. With a career spanning Hong Kong and the United States, Lee is regarded as the first global Chinese film star and one of the most influential martial artists in the history of cinema. Known for the five feature-length martial arts films that he starred in as an adult, he is credited with helping to popularize martial arts films in the 1970s and promoting Hong Kong action cinema.
Born in San Francisco and raised in Hong Kong, Lee was introduced to the Hong Kong film industry as a child actor by his father, Lee Hoi-chuen. Lee''s early martial arts experience included Wing Chun (trained under Ip Man), tai chi, boxing (winning a Hong Kong boxing tournament), and frequent street fighting (neighborhood and rooftop fights). He moved to Seattle in 1959, enrolling at the University of Washington in 1961. It was during this time that Lee began to consider making money by teaching martial arts, even though he aspired to have a career in acting. He opened his first martial arts school, operated out of his home in Seattle. After later adding a second school in Oakland, California, Lee once drew significant attention at the 1964 Long Beach International Karate Championships of California by making demonstrations and speaking. He subsequently moved to Los Angeles to teach, where his students included Chuck Norris, Sharon Tate, and Kareem Abdul-Jabbar.
Lee''s roles in the United States, including Kato in the ABC action television series The Green Hornet (1966–1967), introduced him to American audiences. After returning to Hong Kong in 1971, he landed his first leading role in The Big Boss (1971), directed by Lo Wei',
   '["clm_wiki_bruce-lee_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 332);

-- 163. Bruce Willis
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_bruce-willis', 'person', 'bruce-willis', 'Bruce Willis', 'published', 'Walter Bruce Willis (born March 19, 1955) is a retired American actor. Widely recognized as a Hollywood icon of the action genre, he first achieved fame with a leading role on the comedy-drama series Moonlighting (1985–1989) and has appeared in over one hundred films, gaining widespread recognition as an action hero for his portrayal of John McClane in the Die Hard franchise (1988–2013).', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_bruce-willis', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_bruce-willis_intro', 'ent_bruce-willis', 'biography_intro', 'Introduction', 'Walter Bruce Willis (born March 19, 1955) is a retired American actor. Widely recognized as a Hollywood icon of the action genre, he first achieved fame with a leading role on the comedy-drama series Moonlighting (1985–1989) and has appeared in over one hundred films, gaining widespread recognition as an action hero for his portrayal of John McClane in the Die Hard franchise (1988–2013).
Willis''s other credits include The Last Boy Scout (1991), Pulp Fiction (1994), 12 Monkeys (1995), The Fifth Element (1997), Armageddon (1998), The Sixth Sense (1999), Unbreakable, The Whole Nine Yards (both 2000), Tears of the Sun (2003), Sin City (2005), The Expendables, Red (both 2010), Looper (2012) and Glass (2019). In the last years of his career, he starred in many low-budget direct-to-video films, which were poorly received. Willis retired in 2022 due to aphasia and was diagnosed with frontotemporal dementia in 2023.
Willis has received various accolades throughout his career, including a Golden Globe Award, two Primetime Emmy Awards and two People''s Choice Awards. He received a star on the Hollywood Walk of Fame in 2006. Films featuring Willis have grossed between US$2.64 billion and US$3.05 billion at North American box offices, and he was the eighth-highest-grossing leading actor in 2010s.',
   '["clm_wiki_bruce-willis_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 205);

-- 164. Buck O'Neil
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_buck-oneil', 'person', 'buck-oneil', 'Buck O''Neil', 'published', 'John Jordan "Buck" O''Neil Jr. (November 13, 1911 – October 6, 2006)  was an American first baseman and manager in the Negro American League, mostly with the Kansas City Monarchs.  After his playing days, he worked as a scout and became the first African American coach in Major League Baseball. In his later years he became a popular and renowned speaker and interview subject, helping to renew wides', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_buck-oneil', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_buck-oneil_intro', 'ent_buck-oneil', 'biography_intro', 'Introduction', 'John Jordan "Buck" O''Neil Jr. (November 13, 1911 – October 6, 2006)  was an American first baseman and manager in the Negro American League, mostly with the Kansas City Monarchs.  After his playing days, he worked as a scout and became the first African American coach in Major League Baseball. In his later years he became a popular and renowned speaker and interview subject, helping to renew widespread interest in the Negro leagues, and played a major role in establishing the Negro Leagues Baseball Museum in Kansas City, Missouri. He was inducted into the Baseball Hall of Fame in 2022 as an executive.
O''Neil was prominently featured in Ken Burns''s 1994 documentary series Baseball.  His life was documented in Joe Posnanski''s 2007 book The Soul of Baseball.',
   '["clm_wiki_buck-oneil_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 127);

-- 165. Bud Abbott
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_bud-abbott', 'person', 'bud-abbott', 'Bud Abbott', 'published', 'William Alexander "Bud" Abbott (October 2, 1897 – April 24, 1974) was an American comedian, actor and producer. He was best known as the straight man in the comedy duo Abbott and Costello.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_bud-abbott', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_bud-abbott_intro', 'ent_bud-abbott', 'biography_intro', 'Introduction', 'William Alexander "Bud" Abbott (October 2, 1897 – April 24, 1974) was an American comedian, actor and producer. He was best known as the straight man in the comedy duo Abbott and Costello.',
   '["clm_wiki_bud-abbott_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 33);

-- 166. Buddy Holly
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_buddy-holly', 'person', 'buddy-holly', 'Buddy Holly', 'published', 'Charles Hardin Holley (September 7, 1936 – February 3, 1959), known professionally by his stage name Buddy Holly, was an American singer, songwriter, and guitarist who was a central and pioneering figure of rock and roll. He was born to a musical family in Lubbock, Texas, during the Great Depression, and learned to play guitar and sing alongside his two siblings. ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_buddy-holly', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_buddy-holly_intro', 'ent_buddy-holly', 'biography_intro', 'Introduction', 'Charles Hardin Holley (September 7, 1936 – February 3, 1959), known professionally by his stage name Buddy Holly, was an American singer, songwriter, and guitarist who was a central and pioneering figure of rock and roll. He was born to a musical family in Lubbock, Texas, during the Great Depression, and learned to play guitar and sing alongside his two siblings. 
Holly made his first appearance on local television in 1952, and the following year he formed the group Buddy and Bob with his friend Bob Montgomery. In 1955, after opening once for Elvis Presley, Holly decided to pursue a music career. He played with Presley three times that year, and his band''s style shifted from country and western to rock and roll. In October that year, when Holly opened for Bill Haley & His Comets, he was spotted by Nashville scout Eddie Crandall, who helped him get a contract with Decca Records.
Holly''s recording sessions at Decca were produced by Owen Bradley, who had become famous for producing orchestrated country hits for stars like Patsy Cline. Unhappy with Bradley''s musical style and control in the studio, Holly went to producer Norman Petty in Clovis, New Mexico, and recorded a demo of "That''ll Be the Day", among other songs. Petty became the band''s manager and sent the demo to Brunswick Records, which released it as a single credited to the Crickets, a name chosen by the band to subvert Decca''s contract limitations. In September 1957, as the band toured, "That''ll Be the Day" topped the US and UK singles charts. Its success was followed in October by another major hit, "Peggy Sue".
The album The "Chirping" Crickets, released in November 1957, reached number five on the UK Albums Chart. Holly made his second appearance on The Ed Sullivan Show in January 1958 and soon after toured Australia and then the UK. In early 1959, he assembled a new band, consisting of Waylon Jennings (bass), Tommy Allsup (guitar), and Carl Bunch (drums), and embarked on a tour of the midwestern US. Afte',
   '["clm_wiki_buddy-holly_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 341);

-- 167. Buffalo Bill
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_buffalo-bill', 'person', 'buffalo-bill', 'Buffalo Bill', 'published', 'William Frederick Cody (February 26, 1846 – January 10, 1917), better known as Buffalo Bill, was an American soldier, bison hunter, and showman. One of the most famous figures of the American Old West, Cody began performing at the age of 23. He performed in shows that displayed cowboy themes and episodes from the frontier and Indian Wars. He founded Buffalo Bill''s Wild West in 1883, taking his lar', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_buffalo-bill', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_buffalo-bill_intro', 'ent_buffalo-bill', 'biography_intro', 'Introduction', 'William Frederick Cody (February 26, 1846 – January 10, 1917), better known as Buffalo Bill, was an American soldier, bison hunter, and showman. One of the most famous figures of the American Old West, Cody began performing at the age of 23. He performed in shows that displayed cowboy themes and episodes from the frontier and Indian Wars. He founded Buffalo Bill''s Wild West in 1883, taking his large company on tours in the United States and, beginning in 1887, in Europe.
He was born in Le Claire, Iowa Territory (now the U.S. state of Iowa), but he lived for several years in his father''s hometown in modern-day Mississauga, Ontario, before the family returned to the Midwest and settled in the Kansas Territory. Buffalo Bill started working at the age of 11, after his father''s death, and became a rider for the Pony Express at age 15. During the American Civil War, he served the Union from 1863 to the end of the war in 1865. Later he served as a civilian scout for the U.S. Army during the Indian Wars. While he was initially awarded the Medal of Honor in 1872 for his actions in the Indian Wars, he was among 911 recipients to have the award rescinded in 1917. Congress reinstated the medals for Cody and four other civilian scouts in 1989.',
   '["clm_wiki_buffalo-bill_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 224);

-- 168. Bugsy Siegel
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_bugsy-siegel', 'person', 'bugsy-siegel', 'Bugsy Siegel', 'published', 'Benjamin "Bugsy" Siegel (; February 28, 1906 – June 20, 1947) was an American mobster who was a driving force behind the development of the Las Vegas Strip. Along with his childhood friend and fellow gangster Meyer Lansky, Siegel was influential within the Jewish-American mob, the Italian-American Mafia, and the largely Italian-Jewish coalition known as the National Crime Syndicate. Described as "', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_bugsy-siegel', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_bugsy-siegel_intro', 'ent_bugsy-siegel', 'biography_intro', 'Introduction', 'Benjamin "Bugsy" Siegel (; February 28, 1906 – June 20, 1947) was an American mobster who was a driving force behind the development of the Las Vegas Strip. Along with his childhood friend and fellow gangster Meyer Lansky, Siegel was influential within the Jewish-American mob, the Italian-American Mafia, and the largely Italian-Jewish coalition known as the National Crime Syndicate. Described as "handsome" and "charismatic," Siegel became one of the first front-page celebrity gangsters.
Siegel was one of the founders and leaders of Murder, Inc. and became a bootlegger during American Prohibition. After the Twenty-first Amendment was passed in 1933 repealing Prohibition, he turned to illegal gambling. In 1936, Siegel left New York and moved to California. His time as a mobster during this period was mainly as a hitman and muscle, as he was noted for his prowess with guns and violence. In 1941, Siegel was tried for the murder of friend and fellow mobster Harry Greenberg, who had turned informant; he was acquitted in 1942.
Siegel traveled to Las Vegas, Nevada, where he handled and financed some of the city''s original casinos. He assisted developer William R. Wilkerson''s Flamingo Hotel after Wilkerson ran out of funds. Siegel assumed control of the project and managed the final stages of construction. The Flamingo''s casino opened on December 26, 1946, in a three-day event that was well received but without a hotel to accompany the casino, the Flamingo struggled and was closed from February 6, 1947 until the hotel was finished and reopened on March 1, 1947. Siegel’s mob partners were convinced that an estimated US$1 million of the construction budget overrun had been skimmed by Siegel, his girlfriend Virginia Hill or by both of them. On June 20, 1947, Siegel was murdered at the age of 41 by a sniper through the window of Hill''s Linden Drive mansion in Beverly Hills, California.',
   '["clm_wiki_bugsy-siegel_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 311);

-- 169. Caitlin Clark
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_caitlin-clark', 'person', 'caitlin-clark', 'Caitlin Clark', 'published', 'Caitlin Elizabeth Clark (born January 22, 2002) is an American professional basketball player for the Indiana Fever of the Women''s National Basketball Association (WNBA). Regarded as one of the greatest female collegiate players, Clark was twice named national college basketball player of the year and became the NCAA Division I all-time leading scorer while playing for the Iowa Hawkeyes. Known for', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_caitlin-clark', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_caitlin-clark_intro', 'ent_caitlin-clark', 'biography_intro', 'Introduction', 'Caitlin Elizabeth Clark (born January 22, 2002) is an American professional basketball player for the Indiana Fever of the Women''s National Basketball Association (WNBA). Regarded as one of the greatest female collegiate players, Clark was twice named national college basketball player of the year and became the NCAA Division I all-time leading scorer while playing for the Iowa Hawkeyes. Known for her shooting range and playmaking, she has helped popularize women''s basketball, a phenomenon dubbed the "Caitlin Clark effect". She is a three-time WNBA All-Star and one-time All-WNBA selection.
Clark attended Dowling Catholic High School in her hometown of West Des Moines, Iowa, where she was named a McDonald''s All-American and rated the fourth-best player in her class by ESPN. In her freshman season with Iowa, she led the NCAA Division I in scoring and earned All-American honors. As a sophomore, Clark became the first women''s player to lead Division I in points and assists in a single season. In her junior season, she was the national player of the year and led Iowa to its first national championship game, again leading Division I in assists and setting Big Ten single-season marks in points and assists. As a senior, she repeated as national player of the year and helped Iowa return to the national title game. She also set Division I women''s career and single-season records in points and three-pointers, broke the conference record in assists, and led the nation in points and assists.
Selected first overall by the Indiana Fever in the 2024 WNBA draft, Clark quickly emerged as a premier guard in the league, earning WNBA Rookie of the Year and All-WNBA First Team honors in her first season. She also set league single-season and single-game records in assists, broke the rookie scoring record, and became the first rookie to achieve a triple-double. In 2026, Clark set the Fever franchise single-game scoring record with 45 points.
Clark is a member of the United States women''s ',
   '["clm_wiki_caitlin-clark_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 327);

-- 170. Cal Ripken Jr.
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_cal-ripken-jr', 'person', 'cal-ripken-jr', 'Cal Ripken Jr.', 'published', 'Calvin Edwin Ripken Jr. (born August 24, 1960), nicknamed "the Iron Man", is an American former professional baseball shortstop and third baseman who played his entire 21-season career in Major League Baseball (MLB) for the Baltimore Orioles (1981–2001). One of his position''s most productive offensive players, Ripken compiled 3,184 hits, 431 home runs, 1,695 runs batted in, and won two Gold Glove ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_cal-ripken-jr', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_cal-ripken-jr_intro', 'ent_cal-ripken-jr', 'biography_intro', 'Introduction', 'Calvin Edwin Ripken Jr. (born August 24, 1960), nicknamed "the Iron Man", is an American former professional baseball shortstop and third baseman who played his entire 21-season career in Major League Baseball (MLB) for the Baltimore Orioles (1981–2001). One of his position''s most productive offensive players, Ripken compiled 3,184 hits, 431 home runs, 1,695 runs batted in, and won two Gold Glove Awards for his defense during his career. He was a 19-time All-Star and was twice named American League (AL) Most Valuable Player (MVP), in 1983 and 1991.
Ripken holds the record for consecutive games played (2,632), having surpassed Lou Gehrig''s streak of 2,130 which had stood for 56 years and which many deemed was unbreakable. In 2007, he was elected to the Baseball Hall of Fame in his first year of eligibility with 98.53% of votes, the sixth-highest election percentage ever to-date.
Born in Maryland, Ripken grew up traveling around the United States as his father, Cal Sr., was a player and coach in the Orioles'' organization. After playing at Aberdeen High School, Ripken Jr. was drafted by the Orioles in the second round of the 1978 MLB draft. He reached the major leagues in 1981 as a shortstop but moved to third base in 1982, but the following year, he was shifted back to shortstop, his long-time position for Baltimore. That year, Ripken also won the AL Rookie of the Year Award and began his consecutive games played streak.
In 1983, he won a World Series championship over the Philadelphia Phillies and his first AL MVP Award. One of Ripken''s best years came in 1991 when he was named an All-Star, won the Home Run Derby, and was the recipient of his first All-Star Game MVP Award, his second AL MVP Award, and first Gold Glove Award. He broke the consecutive games played record on September 6, 1995, in his 2,131st consecutive game, which fans voted as the league''s "most memorable moment" in the history of the game in an MLB.com poll; Ripken voluntarily ended his 17-year strea',
   '["clm_wiki_cal-ripken-jr_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 341);

-- 171. Camila Cabello
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_camila-cabello', 'person', 'camila-cabello', 'Camila Cabello', 'published', 'Karla Camila Cabello Estrabao (; Latin American Spanish: [ˈkaɾla kaˈmila kaˈβeʝo esˈtɾaβao]; born March 3, 1997) is an American singer and songwriter. She rose to prominence as a member of the girl group, Fifth Harmony, one of the best-selling girl groups of all time. While in the group, Cabello established herself as a solo artist with collaborative singles "I Know What You Did Last Summer" (with', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_camila-cabello', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_camila-cabello_intro', 'ent_camila-cabello', 'biography_intro', 'Introduction', 'Karla Camila Cabello Estrabao (; Latin American Spanish: [ˈkaɾla kaˈmila kaˈβeʝo esˈtɾaβao]; born March 3, 1997) is an American singer and songwriter. She rose to prominence as a member of the girl group, Fifth Harmony, one of the best-selling girl groups of all time. While in the group, Cabello established herself as a solo artist with collaborative singles "I Know What You Did Last Summer" (with Shawn Mendes) and "Bad Things" (with Machine Gun Kelly), the latter making number four on the US Billboard Hot 100. She left Fifth Harmony in late 2016.
Cabello''s debut studio album, Camila (2018), peaked atop the US Billboard 200. Largely influenced by Latin music, its lead single "Havana" (featuring Young Thug) was an international chart-topper. It was the best-selling digital single of 2018, according to the International Federation of the Phonographic Industry (IFPI). Its follow-up, "Never Be the Same" reached the top ten in multiple countries. Cabello''s 2019 second studio album, Romance, peaked at number three on the Billboard 200 and spawned a second global chart-topper in "Señorita", a duet with Mendes. Cabello''s third album, Familia (2022), made number ten on the Billboard 200 and contained the international hit "Bam Bam" (featuring Ed Sheeran). Cabello''s fourth studio album, C,XOXO, was released in 2024, and it peaked number 13 on the Billboard 200.
Cabello''s awards include two Latin Grammy Awards, five American Music Awards, and one Billboard Music Award. In 2021, Cabello starred as the title character in the film Cinderella.',
   '["clm_wiki_camila-cabello_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 246);

-- 172. Carl Anderson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_carl-anderson', 'person', 'carl-anderson', 'Carl Anderson', 'published', 'Carl Anderson may refer to:', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_carl-anderson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_carl-anderson_intro', 'ent_carl-anderson', 'biography_intro', 'Introduction', 'Carl Anderson may refer to:',
   '["clm_wiki_carl-anderson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 5);

-- 173. Carl David Anderson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_carl-david-anderson', 'person', 'carl-david-anderson', 'Carl David Anderson', 'published', 'Carl David Anderson (September 3, 1905 – January 11, 1991) was an American experimental physicist who shared the 1936 Nobel Prize in Physics with Victor Hess for his discovery of the positron, which confirmed the existence of antimatter.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_carl-david-anderson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_carl-david-anderson_intro', 'ent_carl-david-anderson', 'biography_intro', 'Introduction', 'Carl David Anderson (September 3, 1905 – January 11, 1991) was an American experimental physicist who shared the 1936 Nobel Prize in Physics with Victor Hess for his discovery of the positron, which confirmed the existence of antimatter.',
   '["clm_wiki_carl-david-anderson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 38);

-- 174. Carl Sagan
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_carl-sagan', 'person', 'carl-sagan', 'Carl Sagan', 'published', 'Carl Edward Sagan (; SAY-gən; November 9, 1934 – December 20, 1996) was an American astronomer, planetary scientist and science communicator. Initially an assistant professor at Harvard, Sagan later moved to Cornell, where he was the David Duncan Professor of Astronomy and Space Sciences and directed the Laboratory for Planetary Studies. He played an active role in the Mariner, Viking and Voyager ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_carl-sagan', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_carl-sagan_intro', 'ent_carl-sagan', 'biography_intro', 'Introduction', 'Carl Edward Sagan (; SAY-gən; November 9, 1934 – December 20, 1996) was an American astronomer, planetary scientist and science communicator. Initially an assistant professor at Harvard, Sagan later moved to Cornell, where he was the David Duncan Professor of Astronomy and Space Sciences and directed the Laboratory for Planetary Studies. He played an active role in the Mariner, Viking and Voyager programs. He published more than 600 scientific papers and articles and several popular science books, starting with The Cosmic Connection. He won the Pulitzer Prize for General Nonfiction for The Dragons of Eden. He is widely regarded as one of the most influential science communicators of his generation.
He co-wrote and narrated the 1980 documentary series Cosmos: A Personal Voyage, which has been seen by at least 500 million people in 60 countries and won two Emmy Awards and a Peabody Award. Cosmos, the companion volume, was the bestselling science book to date.
A lifelong science fiction fan, Sagan entered the genre with Contact, which was adapted as the film of the same name. He was a founding member and first president of the Planetary Society. He proposed the Pale Blue Dot photograph of Earth taken by Voyager 1.
He had a lifelong interest in the possibility of extraterrestrial life and is generally credited with contributions to the Arecibo message, with a much more significant role developing the Pioneer plaques and the Voyager Golden Record, universal messages that could potentially be understood by any intelligence that might find them. He promoted skepticism and the scientific method, particularly in his penultimate book The Demon-Haunted World. He popularized a toolkit for critical thinking. He made famous the maxim "Extraordinary claims require extraordinary evidence." The phrase "Billions and billions" was attributed to him, although he never said it; he did use it as the title of his last book. Sagan received numerous awards and honors, including the NASA Dis',
   '["clm_wiki_carl-sagan_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 318);

-- 175. Carmen Electra
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_carmen-electra', 'person', 'carmen-electra', 'Carmen Electra', 'published', 'Carmen Electra (born Tara Leigh Patrick; April 20, 1972) is an American actress, model, media personality, and  singer. Known for her public image, she has been regarded as a sex symbol and pop culture icon since the late 1990s. ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_carmen-electra', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_carmen-electra_intro', 'ent_carmen-electra', 'biography_intro', 'Introduction', 'Carmen Electra (born Tara Leigh Patrick; April 20, 1972) is an American actress, model, media personality, and  singer. Known for her public image, she has been regarded as a sex symbol and pop culture icon since the late 1990s. 
Born and raised in Ohio, Electra began her career as a singer after moving to Minneapolis, where she was discovered by musician Prince who produced her self-titled debut studio album (1993). She began modelling in 1996 with appearances in several issues of Playboy magazine, before relocating to Los Angeles, where she had her breakthrough portraying Lani McKenzie in the drama series Baywatch (1997–1998).
Electra later achieved further recognition for her work in parody films, including Scary Movie (2000), Scary Movie 4, Date Movie (both 2006), Epic Movie (2007), Meet the Spartans, Disaster Movie (both 2008), and Scary Movie (2026). Her other film credits include Get Over It (2001), Starsky & Hutch (2004), Cheaper by the Dozen 2, Dirty Love (both 2005), and I Want Candy (2007). On television, she hosted the MTV dating show Singled Out (1998) and co-starred with her then-husband Dave Navarro on the MTV reality series ''Til Death Do Us Part: Carmen and Dave (2004).    
Aside from her entertainment career, Electra has authored books, launched fitness and beauty-related ventures, and appeared in various advertising campaigns. She has also occasionally worked as a dancer, most notably with The Pussycat Dolls, as a featured guest of the group on the VH1 Divas 2004 concert.',
   '["clm_wiki_carmen-electra_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 244);

-- 176. Carol W. Greider
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_carol-greider', 'person', 'carol-greider', 'Carol W. Greider', 'published', 'Carolyn Widney Greider (born April 15, 1961) is an American molecular biologist and Nobel laureate. She is a Distinguished Professor of Molecular, Cell, and Developmental Biology at the University of California, Santa Cruz.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_carol-greider', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_carol-greider_intro', 'ent_carol-greider', 'biography_intro', 'Introduction', 'Carolyn Widney Greider (born April 15, 1961) is an American molecular biologist and Nobel laureate. She is a Distinguished Professor of Molecular, Cell, and Developmental Biology at the University of California, Santa Cruz.
Greider discovered the enzyme telomerase in 1984, while she was a graduate student of Elizabeth Blackburn at the University of California, Berkeley. Greider pioneered research on the structure of telomeres, the ends of the chromosomes. She was awarded the 2009 Nobel Prize for Physiology or Medicine, along with Blackburn and Jack W. Szostak, for their discovery that telomeres are protected from progressive shortening by the enzyme telomerase.',
   '["clm_wiki_carol-greider_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 100);

-- 177. Carol Tomé
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_carol-tom', 'person', 'carol-tom', 'Carol Tomé', 'published', 'Carol B. Tomé (born Carol Louise Buchenroth; January 8, 1957) is an American business executive and chief executive of United Parcel Service (UPS). She formerly served as the chief financial officer of The Home Depot from 1995 to 2019.  She has been a board member for UPS since 2003, and upon her appointment to chief executive in 2020, Tomé became the first outsider to lead the company.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_carol-tom', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_carol-tom_intro', 'ent_carol-tom', 'biography_intro', 'Introduction', 'Carol B. Tomé (born Carol Louise Buchenroth; January 8, 1957) is an American business executive and chief executive of United Parcel Service (UPS). She formerly served as the chief financial officer of The Home Depot from 1995 to 2019.  She has been a board member for UPS since 2003, and upon her appointment to chief executive in 2020, Tomé became the first outsider to lead the company.',
   '["clm_wiki_carol-tom_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 67);

-- 178. Cathy Moriarty
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_cathy-moriarty', 'person', 'cathy-moriarty', 'Cathy Moriarty', 'published', 'Cathy Moriarty (born November 29, 1960) is an American actress whose career spans five decades. Born and raised in New York City, she made her acting debut opposite Robert De Niro in Martin Scorsese''s Raging Bull (1980), for which she received nominations for the Academy Award for Best Supporting Actress, the Golden Globe Award for Best Supporting Actress – Motion Picture, and the British Academy ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_cathy-moriarty', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_cathy-moriarty_intro', 'ent_cathy-moriarty', 'biography_intro', 'Introduction', 'Cathy Moriarty (born November 29, 1960) is an American actress whose career spans five decades. Born and raised in New York City, she made her acting debut opposite Robert De Niro in Martin Scorsese''s Raging Bull (1980), for which she received nominations for the Academy Award for Best Supporting Actress, the Golden Globe Award for Best Supporting Actress – Motion Picture, and the British Academy Film Award.
Throughout her career, she has worked with a number of prolific directors including Martin Scorsese, Sidney Lumet, Ivan Reitman, Harold Ramis, James Mangold, and Richard Ayoade. She has starred in numerous leading and supporting roles in a variety of films ranging from independent film features to major film studio productions across many genres. Her film appearances include Neighbors (1981), White of the Eye (1987), Kindergarten Cop (1990), Soapdish (1991), Matinee (1993), Casper (1995), Cop Land (1997), But I’m a Cheerleader (1999), Analyze That (2002), The Bounty Hunter (2010), The Double (2013), and Patti Cake$ (2017). The films in which she has appeared have collectively grossed over $1 billion worldwide.
Moriarty has also starred in numerous television series including Tales from the Crypt (1992), Hey Arnold! (1997–1999), Law & Order (2001), Law & Order: Special Victims Unit (2005–2014), Law & Order: Criminal Intent (2010), I''m Dying Up Here (2017), This Is Us (2018), The Assassination of Gianni Versace: American Crime Story (2018), City on a Hill (2019), and HouseBroken (2021).
Moriarty works as an activist for the autistic community and is the national spokesperson for Autism United. She is also an advocate of both Autism Speaks and the autism rights movement.',
   '["clm_wiki_cathy-moriarty_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 267);

-- 179. Cesar Chavez
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_cesar-chavez', 'person', 'cesar-chavez', 'Cesar Chavez', 'published', 'Cesario Estrada "Cesar" Chavez (; Latin American Spanish: [ˈtʃaβes]; March 31, 1927 – April 23, 1993) was an American labor unionist and political activist. Along with Dolores Huerta and Gilbert Padilla, he co-founded the National Farm Workers Association (NFWA), which later merged with the Agricultural Workers Organizing Committee (AWOC) to become the United Farm Workers (UFW). Ideologically, his', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_cesar-chavez', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_cesar-chavez_intro', 'ent_cesar-chavez', 'biography_intro', 'Introduction', 'Cesario Estrada "Cesar" Chavez (; Latin American Spanish: [ˈtʃaβes]; March 31, 1927 – April 23, 1993) was an American labor unionist and political activist. Along with Dolores Huerta and Gilbert Padilla, he co-founded the National Farm Workers Association (NFWA), which later merged with the Agricultural Workers Organizing Committee (AWOC) to become the United Farm Workers (UFW). Ideologically, his worldview combined leftist approaches with Catholic social teaching.
Born in Yuma, Arizona, to a Mexican American family, Chavez began his working life as a manual laborer before spending two years in the US Navy. Relocating to California, where he married, he got involved in the Community Service Organization (CSO), through which he helped laborers register to vote. In 1959, he became the CSO''s national director, a position based in Los Angeles. In 1962, he left the CSO to co-found the NFWA, based in Delano, California, through which he launched an insurance scheme, a credit union, and the El Malcriado newspaper for farmworkers. Later that decade, he began organizing strikes among farmworkers, most notably the successful Delano grape strike of 1965–1970. Amid the grape strike, his NFWA merged with Larry Itliong''s AWOC to form the UFW in 1967. Influenced by the Indian independence leader Mahatma Gandhi, Chavez emphasized direct nonviolent resistance, including picketing and boycotting, to pressure farm owners into granting strikers'' demands. He imbued his campaigns with Catholic symbolism, including public processions, Masses, and fasts. He received much support from labor and leftist groups but was monitored by the Federal Bureau of Investigation (FBI).
In the early 1970s, Chavez sought to expand the UFW''s influence outside California by opening branches in other states. Viewing illegal immigrants as a major source of strikebreakers, he also pushed a campaign against illegal immigration into the US, which generated violence along the Mexico–United States border and caused',
   '["clm_wiki_cesar-chavez_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 301);

-- 180. Lucky Luciano
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_charles-lucky-luciano', 'person', 'charles-lucky-luciano', 'Lucky Luciano', 'published', 'Charles "Lucky" Luciano ( LOO-chee-AH-noh; Italian: [luˈtʃaːno]; born Salvatore Lucania [salvaˈtoːre lukaˈniːa]; November 24, 1897 – January 26, 1962) was an Italian mafioso who operated mainly in the United States. He started his criminal career in New York City''s Five Points Gang and was instrumental in the development of the National Crime Syndicate. Luciano is considered the father of the Ital', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_charles-lucky-luciano', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_charles-lucky-luciano_intro', 'ent_charles-lucky-luciano', 'biography_intro', 'Introduction', 'Charles "Lucky" Luciano ( LOO-chee-AH-noh; Italian: [luˈtʃaːno]; born Salvatore Lucania [salvaˈtoːre lukaˈniːa]; November 24, 1897 – January 26, 1962) was an Italian mafioso who operated mainly in the United States. He started his criminal career in New York City''s Five Points Gang and was instrumental in the development of the National Crime Syndicate. Luciano is considered the father of the Italian-American Mafia for the establishment of the Commission in 1931, after he abolished the capo dei capi (boss of bosses) title held by Salvatore Maranzano following the Castellammarese War. He was also the first official boss of the modern Genovese crime family.
In 1936, Luciano was tried and convicted for compulsory prostitution and running a prostitution racket after years of investigation by District Attorney Thomas E. Dewey. Although he was sentenced to thirty to fifty years in prison, an agreement was struck with the United States Department of the Navy through his Jewish Mob associate, Meyer Lansky, to provide naval intelligence during World War II. In 1946, for his alleged wartime cooperation, Luciano''s sentence was commuted on the condition that he be deported to Italy. Luciano died in Italy on January 26, 1962, and his body was permitted to be transported back to the U.S. for burial.',
   '["clm_wiki_charles-lucky-luciano_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 207);

-- 181. Charles Drew
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_charles-drew', 'person', 'charles-drew', 'Charles Drew', 'published', 'Charles Drew may refer to:', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_charles-drew', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_charles-drew_intro', 'ent_charles-drew', 'biography_intro', 'Introduction', 'Charles Drew may refer to:

Charles R. Drew (1904–1950), American physician, surgeon, and medical researcher
Charles Drew (cricketer) (1888–1960), Australian cricketer
Charles Drew (surgeon) (1916–1987), cardiothoracic surgeon
Charles S. Drew (1825–1886), representative in the legislature of the Oregon Territory of the United States
USNS Charles Drew (T-AKE-10), a 2010 Lewis and Clark-class dry cargo ship of the United States Navy
Charles John Drew (c. 1690–1740), English lawyer murdered in Suffolk by his namesake son',
   '["clm_wiki_charles-drew_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 74);

-- 182. Charles Koch
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_charles-koch', 'person', 'charles-koch', 'Charles Koch', 'published', 'Charles de Ganahl Koch ( KOHK; born November 1, 1935) is an American businessman, engineer, and philanthropist. As of May 2025, he is ranked as the 22nd richest man in the world on the Bloomberg Billionaires Index, with an estimated net worth of US$71.4 billion. Koch has been co-owner, chairman, and chief executive officer of Koch Industries since 1967, while his late brother David Koch served as ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_charles-koch', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_charles-koch_intro', 'ent_charles-koch', 'biography_intro', 'Introduction', 'Charles de Ganahl Koch ( KOHK; born November 1, 1935) is an American businessman, engineer, and philanthropist. As of May 2025, he is ranked as the 22nd richest man in the world on the Bloomberg Billionaires Index, with an estimated net worth of US$71.4 billion. Koch has been co-owner, chairman, and chief executive officer of Koch Industries since 1967, while his late brother David Koch served as executive vice president. Charles and David each owned 42% of the conglomerate. The brothers inherited the business from their father, Fred C. Koch, then expanded the business. Koch Industries is the largest privately held company by revenue in the United States, according to Forbes.
Koch also supports a number of libertarian think tanks, including the Institute for Humane Studies, the Cato Institute, the Ayn Rand Institute, and the Mercatus Center at George Mason University. He also contributes to the Republican Party and candidates, libertarian groups, and various charitable and cultural institutions. He co-founded the Washington, D.C.–based Cato Institute. Along with his brother, Koch has been an important funder of think tanks that lobby to oppose environmental regulation. Koch has published four books detailing his business philosophy: Market Based Management (2006), The Science of Success (2007), Good Profit (2015), and Believe in People (2020).',
   '["clm_wiki_charles-koch_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 210);

-- 183. Charles Manson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_charles-manson', 'person', 'charles-manson', 'Charles Manson', 'published', 'Charles Milles Manson (né Maddox; November 12, 1934 – November 19, 2017) was an American criminal, cult leader, and musician who was the founder of the Manson Family. He gained notoriety for ordering the Tate–LaBianca murders, where his followers murdered nine people around Los Angeles in 1969.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_charles-manson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_charles-manson_intro', 'ent_charles-manson', 'biography_intro', 'Introduction', 'Charles Milles Manson (né Maddox; November 12, 1934 – November 19, 2017) was an American criminal, cult leader, and musician who was the founder of the Manson Family. He gained notoriety for ordering the Tate–LaBianca murders, where his followers murdered nine people around Los Angeles in 1969.
Before the murders, Manson had spent more than half of his life in correctional institutions. While gathering his cult followers, he was a singer-songwriter on the fringe of the Los Angeles music industry, chiefly through an association with Dennis Wilson of the Beach Boys, who introduced Manson to record producer Terry Melcher. In 1968, the Beach Boys recorded Manson''s song "Cease to Exist", renamed "Never Learn Not to Love" as a single B-side, but Manson was uncredited. Afterward, he attempted to secure a record contract through Melcher, but was unsuccessful. 
Manson would often talk about the Beatles, including their eponymous 1968 album. According to Los Angeles County District Attorney Vincent Bugliosi, Manson felt guided by his interpretation of the Beatles'' lyrics and adopted the term "Helter Skelter" to describe an impending apocalyptic race war. During his trial, Bugliosi argued that Manson had intended to start a race war, although Manson and others disputed this. Contemporary interviews and trial witness testimony insisted that the Tate–LaBianca murders were copycat crimes intended to exonerate Manson''s friend Bobby Beausoleil. Manson denied having ordered any murders. He served his time in prison and died from complications from colon cancer in 2017.',
   '["clm_wiki_charles-manson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 243);

-- 184. Charles Schwab
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_charles-schwab', 'person', 'charles-schwab', 'Charles Schwab', 'published', 'Charles Schwab may refer to:', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_charles-schwab', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_charles-schwab_intro', 'ent_charles-schwab', 'biography_intro', 'Introduction', 'Charles Schwab may refer to:

Charles M. Schwab (1862–1939), American steel magnate of Bethlehem Steel
Charles R. Schwab (born 1937), American broker and founder of the Charles Schwab Corporation
Charles Schwab Corporation, an American multinational financial services company, stockbroker and bank
Charles Schwab Cup Championship, a PGA Tour Champions golf tournament
Charles Schwab Challenge at Colonial, a PGA Tour golf tournament
Charles Schwab Field Omaha, Nebraska, United States, a baseball park',
   '["clm_wiki_charles-schwab_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 71);

-- 185. Charles Strite
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_charles-strite', 'person', 'charles-strite', 'Charles Strite', 'published', 'Charles Perkins Strite (February 27, 1878 – October 18, 1956) was an American inventor known for inventing the pop-up toaster. He received U.S. patent #1,394,450 on October 18, 1921, for the pop-up bread toaster. Strite then formed the Waters Genter Company and made the pop-up toaster publicly available in 1926.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_charles-strite', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_charles-strite_intro', 'ent_charles-strite', 'biography_intro', 'Introduction', 'Charles Perkins Strite (February 27, 1878 – October 18, 1956) was an American inventor known for inventing the pop-up toaster. He received U.S. patent #1,394,450 on October 18, 1921, for the pop-up bread toaster. Strite then formed the Waters Genter Company and made the pop-up toaster publicly available in 1926.',
   '["clm_wiki_charles-strite_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 50);

-- 186. Charles H. Townes
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_charles-townes', 'person', 'charles-townes', 'Charles H. Townes', 'published', 'Charles Hard Townes (July 28, 1915 – January 27, 2015) was an American physicist. Townes worked on the theory and application of the maser, for which he obtained the fundamental patent, and other work in quantum electronics associated with both maser and laser devices. He shared the 1964 Nobel Prize in Physics with Nikolay Basov and Alexander Prokhorov. Townes was an adviser to the U.S. Government', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_charles-townes', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_charles-townes_intro', 'ent_charles-townes', 'biography_intro', 'Introduction', 'Charles Hard Townes (July 28, 1915 – January 27, 2015) was an American physicist. Townes worked on the theory and application of the maser, for which he obtained the fundamental patent, and other work in quantum electronics associated with both maser and laser devices. He shared the 1964 Nobel Prize in Physics with Nikolay Basov and Alexander Prokhorov. Townes was an adviser to the U.S. Government, meeting every President from Harry S. Truman (1945) to Bill Clinton (1999).
Townes directed the U.S. government''s Science and Technology Advisory Committee for the Apollo lunar landing program. After becoming a professor of the University of California, Berkeley, in 1967, he began an astrophysical program that produced several important discoveries, for example, the black hole at the center of the Milky Way galaxy.
Townes was religious, and believed that science and religion are converging to provide a greater understanding of the nature and purpose of the universe.',
   '["clm_wiki_charles-townes_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 153);

-- 187. Charlie Sheen
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_charlie-sheen', 'person', 'charlie-sheen', 'Charlie Sheen', 'published', 'Carlos Irwin Estévez (born September 3, 1965), known professionally as Charlie Sheen, is an American actor. He is known as a leading man in film and television. Sheen has received numerous accolades including a Golden Globe Award as well as nominations for four Primetime Emmy Awards and three Actor Awards. In 1994, he received a star on the Hollywood Walk of Fame.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_charlie-sheen', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_charlie-sheen_intro', 'ent_charlie-sheen', 'biography_intro', 'Introduction', 'Carlos Irwin Estévez (born September 3, 1965), known professionally as Charlie Sheen, is an American actor. He is known as a leading man in film and television. Sheen has received numerous accolades including a Golden Globe Award as well as nominations for four Primetime Emmy Awards and three Actor Awards. In 1994, he received a star on the Hollywood Walk of Fame.
Charlie Sheen followed in the footsteps of his father Martin Sheen in becoming an actor. He starred in many successful films such as Red Dawn (1984), Platoon (1986), Wall Street (1987), Eight Men Out (1988), Young Guns (1988), Major League (1989), Hot Shots! (1991), The Three Musketeers (1993), The Arrival (1996), and Money Talks (1997). In the 2000s, when Sheen replaced Michael J. Fox as the star of ABC''s Spin City, his portrayal of Charlie Crawford earned him a Golden Globe Award for Best Actor. He then starred as Charlie Harper on the CBS sitcom Two and a Half Men (2003–11), for which he received many Golden Globe and Primetime Emmy nominations. In 2010, Sheen was the highest-paid actor on television, earning US$1.8 million per episode of Two and a Half Men.
In March 2011, Sheen was terminated from his Two and a Half Men contract by CBS and Warner Bros. following public substance-abuse problems, marital difficulties and comments made towards the series'' creator, Chuck Lorre. In 2015, Sheen publicly revealed that he was HIV positive, which led to an increase in HIV prevention and testing that was dubbed the "Charlie Sheen effect". Post-Two and a Half Men, he starred in the FX sitcom series Anger Management (2012–14), and the films Machete Kills (2013) and 9/11 (2017). 
In 2025, he was the subject of the Netflix documentary Aka Charlie Sheen and published a New York Times best-selling memoir, The Book of Sheen, which detailed his career and recovery.',
   '["clm_wiki_charlie-sheen_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 310);

-- 188. Charo
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_charo', 'person', 'charo', 'Charo', 'published', 'María Rosario Pilar Martínez Molina Baeza, professionally known by her stage name Charo, is a Spanish-born actress, singer, comedian, and flamenco guitarist who rose to international prominence in the 1960s on American television, as well as starring in several films.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_charo', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_charo_intro', 'ent_charo', 'biography_intro', 'Introduction', 'María Rosario Pilar Martínez Molina Baeza, professionally known by her stage name Charo, is a Spanish-born actress, singer, comedian, and flamenco guitarist who rose to international prominence in the 1960s on American television, as well as starring in several films.
Charo began playing classical (Spanish-style) guitar at the age of nine, training under the famed guitarist Andrés Segovia. In 1966, she married 66-year-old bandleader Xavier Cugat and moved to the United States with him. In the late 1960s and 1970s, she became a ubiquitous presence on American television, frequently appearing as a guest star on series such as Laugh-In, Fantasy Island, The Love Boat, and The Tonight Show Starring Johnny Carson. She is known for her uninhibited and exuberant manner, high energy levels, vague age, heavy Spanish accent, and catchphrase "cuchi-cuchi". She frequently pokes fun at herself, while also pointing out the potential judgment of others, through her accent.
As a musician, Charo has performed and recorded in various styles for five decades. She released a series of disco recordings in the 1970s with Salsoul Records, most notably Dance a Little Bit Closer (1977). In 1995, her flamenco album Guitar Passion (1994) was awarded Female Pop Album of the Year at the Billboard International Latin Music Conference, and was named Best Female Latin Pop Album by Billboard Magazine. In an interview, Charo has said, "Around the world I am known as a great musician. But in America, I am known as the cuchi-cuchi girl. That''s okay, because cuchi-cuchi has taken me all the way to the bank."',
   '["clm_wiki_charo_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 257);

-- 189. Chelsea Clinton
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_chelsea-clinton', 'person', 'chelsea-clinton', 'Chelsea Clinton', 'published', 'Chelsea Victoria Clinton (born February 27, 1980) is an American writer. She is the only child of former U.S. President Bill Clinton and former U.S. Secretary of State Hillary Clinton.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_chelsea-clinton', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_chelsea-clinton_intro', 'ent_chelsea-clinton', 'biography_intro', 'Introduction', 'Chelsea Victoria Clinton (born February 27, 1980) is an American writer. She is the only child of former U.S. President Bill Clinton and former U.S. Secretary of State Hillary Clinton.
Clinton was born in Little Rock, Arkansas, during her father''s first term as governor of Arkansas. She attended public schools there until her father was elected president and the family moved to the White House, when she began attending the private Sidwell Friends School. Clinton received an undergraduate degree at Stanford University, later earning master''s degrees from University of Oxford and Columbia University and a Doctor of Philosophy in international relations from the University of Oxford in 2014.
In 2007 and 2008, Clinton campaigned extensively on American college campuses for her mother''s Democratic presidential nomination bid and introduced her at the 2008 Democratic National Convention. She assumed a similar role in her mother''s 2016 presidential campaign, making more than 200 public appearances as her surrogate and again introducing her at the Democratic National Convention.
Clinton has worked for McKinsey & Company, Avenue Capital Group, Columbia University, New York University, and NBC. She serves on several boards, including the board of the Clinton Foundation. Clinton has authored and co-authored best-selling children''s non-fiction books and has co-authored a scholarly book for adults on global health policy.',
   '["clm_wiki_chelsea-clinton_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 214);

-- 190. Cher
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_cher', 'person', 'cher', 'Cher', 'published', 'Cher (  SHAIR; legally mononymous; born Cheryl Sarkisian, May 20, 1946) is an American singer and actress. Dubbed the "Goddess of Pop", she is known for her androgynous, contralto voice, bold fashion, elaborate stagecraft and multifaceted career. Her screen roles often reflect her public image as a strong-willed, outspoken woman. An influential figure in popular culture, Cher has sustained a caree', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_cher', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_cher_intro', 'ent_cher', 'biography_intro', 'Introduction', 'Cher (  SHAIR; legally mononymous; born Cheryl Sarkisian, May 20, 1946) is an American singer and actress. Dubbed the "Goddess of Pop", she is known for her androgynous, contralto voice, bold fashion, elaborate stagecraft and multifaceted career. Her screen roles often reflect her public image as a strong-willed, outspoken woman. An influential figure in popular culture, Cher has sustained a career spanning more than six decades through continual reinvention.
Cher rose to fame in 1965 as part of the folk rock duo Sonny & Cher, whose hit single "I Got You Babe" became emblematic of 1960s counterculture. She simultaneously launched a solo career with moody pop songs such as "Bang Bang (My Baby Shot Me Down)", whose theatrical storytelling foreshadowed her 1970s US Billboard Hot 100 number-one singles "Gypsys, Tramps & Thieves", "Half-Breed" and "Dark Lady". After a period of acting, she released the hair metal albums Cher (1987), Heart of Stone (1989) and Love Hurts (1991), scoring international top-ten hits "If I Could Turn Back Time" and "The Shoop Shoop Song (It''s in His Kiss)". At 52, she released the dance-pop album Believe (1998), which introduced the "Cher effect"—a stylized use of Auto-Tune to distort vocals. Its title track became 1999''s number-one song in the US and the UK''s best-selling single by a female artist. In the 21st century, she released her highest-charting US Billboard 200 albums, Closer to the Truth (2013) and Dancing Queen (2018), each debuting at number three.
Cher became a TV star in the 1970s with her CBS variety shows The Sonny & Cher Comedy Hour, which drew more than 30 million weekly viewers, and the solo Cher, on which she became the first woman to deliberately expose her navel on American television after fighting network censors. She later gained critical acclaim with her Broadway debut and the film adaptation of Come Back to the 5 & Dime, Jimmy Dean, Jimmy Dean (1982). Transitioning to film, she earned two Academy Award nominations—fo',
   '["clm_wiki_cher_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 327);

-- 191. Chris Brown
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_chris-brown', 'person', 'chris-brown', 'Chris Brown', 'published', 'Christopher Maurice Brown (born May 5, 1989) is an American singer, songwriter, dancer, and actor. A pop and hip-hop influenced R&B musician who works in a variety of genres, he has been called the "King of R&B" by some contemporaries. His lyrics often address emotional and hedonistic themes. ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_chris-brown', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_chris-brown_intro', 'ent_chris-brown', 'biography_intro', 'Introduction', 'Christopher Maurice Brown (born May 5, 1989) is an American singer, songwriter, dancer, and actor. A pop and hip-hop influenced R&B musician who works in a variety of genres, he has been called the "King of R&B" by some contemporaries. His lyrics often address emotional and hedonistic themes. 
In 2004, Brown signed with Jive Records. The following year, he released his first album, Chris Brown, which reached double Platinum certification by the end of 2006. Brown topped the Billboard Hot 100 chart with his debut single, "Run It!", making him the first male artist since 1995 to do so. His second album, Exclusive (2007), was commercially successful worldwide and spawned his second Billboard Hot 100 number-one single, "Kiss Kiss".
In 2009, Brown faced significant controversy and media attention when he pleaded guilty to felony assault of his then girlfriend, the singer Rihanna. He was sentenced to five years probation with six months community service. The same year, he released his third album, Graffiti, which was considered to be a commercial failure. He released his fourth album F.A.M.E. (2011), which was his first album to top the Billboard 200. The album contained three commercially successful singles—"Yeah 3x", Diamond certified "Look at Me Now" and "Beautiful People"—and earned him the Grammy Award for Best R&B Album. His fifth album, Fortune, released in 2012, topped the Billboard 200.
Following the releases of X (2014) and Royalty (2015), both peaking in the Top 10 of the Billboard 200, his eighth album, Heartbreak on a Full Moon (2017), a double-disc LP consisting of 45 tracks, was certified Gold for combined sales and album-equivalent units of over 500,000 after one week, and later certified double Platinum. Brown''s ninth album, Indigo (2019) found similar success, debuting atop the Billboard 200. It included the single "No Guidance" which broke the record for longest-running number one on Billboard''s R&B/Hip-Hop Airplay chart. Its chart success was outdone ',
   '["clm_wiki_chris-brown_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 317);

-- 192. Christopher Latham Sholes
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_christopher-latham-sholes', 'person', 'christopher-latham-sholes', 'Christopher Latham Sholes', 'published', 'Christopher Latham Sholes (February 14, 1819 – February 17, 1890) was an American inventor who invented the QWERTY keyboard, and, along with Samuel W. Soule, Carlos Glidden and John Pratt, has been contended to be one of the inventors of the first typewriter in the United States. He was also a newspaper publisher and Wisconsin politician.  In his time, Sholes went by the names C. Latham Sholes, La', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_christopher-latham-sholes', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_christopher-latham-sholes_intro', 'ent_christopher-latham-sholes', 'biography_intro', 'Introduction', 'Christopher Latham Sholes (February 14, 1819 – February 17, 1890) was an American inventor who invented the QWERTY keyboard, and, along with Samuel W. Soule, Carlos Glidden and John Pratt, has been contended to be one of the inventors of the first typewriter in the United States. He was also a newspaper publisher and Wisconsin politician.  In his time, Sholes went by the names C. Latham Sholes, Latham Sholes, or C. L. Sholes, but never "Christopher Sholes" or "Christopher L. Sholes".',
   '["clm_wiki_christopher-latham-sholes_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 81);

-- 193. Christopher Walken
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_christopher-walken', 'person', 'christopher-walken', 'Christopher Walken', 'published', 'Christopher Walken (born Ronald Walken; March 31, 1943) is an American actor. His work on stage and screen has earned him accolades including an Academy Award, a BAFTA Award, and an Actor Award, as well as nominations for two Tony Awards, two Primetime Emmy Awards, and a Golden Globe. His films have grossed more than $1.6 billion in the United States.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_christopher-walken', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_christopher-walken_intro', 'ent_christopher-walken', 'biography_intro', 'Introduction', 'Christopher Walken (born Ronald Walken; March 31, 1943) is an American actor. His work on stage and screen has earned him accolades including an Academy Award, a BAFTA Award, and an Actor Award, as well as nominations for two Tony Awards, two Primetime Emmy Awards, and a Golden Globe. His films have grossed more than $1.6 billion in the United States.
Walken appeared in supporting roles in films such as The Anderson Tapes (1971), Next Stop, Greenwich Village (1976), Roseland (1977) and Annie Hall (1977), before coming to wider attention as the troubled Vietnam War veteran Nick Chevotarevich in The Deer Hunter (1978). His performance earned him an Academy Award for Best Supporting Actor. He was nominated for the same award for portraying con artist Frank Abagnale''s father in Steven Spielberg''s Catch Me If You Can (2002).
Since his breakthrough, Walken has appeared in films in various genres, both in lead and supporting roles. These include The Dogs of War (1980), Brainstorm (1983), The Dead Zone (1983), A View to a Kill (1985), At Close Range (1986), Biloxi Blues (1988), King of New York (1990), The Comfort of Strangers (1990), Communion (1989), Batman Returns (1992), True Romance (1993), Pulp Fiction (1994), The Prophecy (1995, and its two sequels), Suicide Kings (1997), Sleepy Hollow (1999), Man on Fire (2004), Wedding Crashers (2005), Hairspray (2007), Seven Psychopaths (2012), A Late Quartet (2012), Percy (2020), and Dune: Part Two (2024). He also provided voice work for the animated films Antz (1998) and The Jungle Book (2016).
On television, Walken has appeared in films such as Who Am I This Time? (1982), and Sarah, Plain and Tall (1991), for which he received a Primetime Emmy Award nomination. More recently, he has starred in television series The Outlaws (2021–2024), and Severance (2022–), the latter of which earned him a Primetime Emmy Award for Outstanding Supporting Actor in a Drama Series nomination. He has guest-hosted Saturday Night Live seven times. Hi',
   '["clm_wiki_christopher-walken_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 325);

-- 194. Christy Walton
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_christy-walton', 'person', 'christy-walton', 'Christy Walton', 'published', 'Christy Ruth Walton (née Tallant; born February 8, 1949) is an American billionaire heiress and philanthropist. She is the widow of John T. Walton, who was one of the sons of the Walmart founder Sam Walton.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_christy-walton', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_christy-walton_intro', 'ent_christy-walton', 'biography_intro', 'Introduction', 'Christy Ruth Walton (née Tallant; born February 8, 1949) is an American billionaire heiress and philanthropist. She is the widow of John T. Walton, who was one of the sons of the Walmart founder Sam Walton.
In June 2005, her husband died in a homebuilt ultralight plane crash, making her the main heir to his fortune of US$18.2 billion. Forbes listed Christy Walton as the richest woman in the world for several years. Her net worth was estimated to $41.7 billion in March 2015, the bulk of which came from her shares in Walmart, but also from First Solar, in which her husband had invested. In November 2015, an analysis of court documents by Bloomberg revealed that the bulk of her husband''s wealth had been transferred to her son, Lukas Walton, resulting in an estimated net worth of approximately US$5 billion.',
   '["clm_wiki_christy-walton_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 141);

-- 195. Chuck Berry
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_chuck-berry', 'person', 'chuck-berry', 'Chuck Berry', 'published', 'Charles Edward Anderson Berry (October 18, 1926 – March 18, 2017) was an American guitarist, singer, and songwriter who was one of the pioneers of rock and roll. Nicknamed the "Father of Rock and Roll", he refined and developed rhythm and blues into the major elements that made rock and roll distinctive with songs such as "Maybellene" (1955), "Roll Over Beethoven" (1956), "Rock and Roll Music" (19', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_chuck-berry', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_chuck-berry_intro', 'ent_chuck-berry', 'biography_intro', 'Introduction', 'Charles Edward Anderson Berry (October 18, 1926 – March 18, 2017) was an American guitarist, singer, and songwriter who was one of the pioneers of rock and roll. Nicknamed the "Father of Rock and Roll", he refined and developed rhythm and blues into the major elements that made rock and roll distinctive with songs such as "Maybellene" (1955), "Roll Over Beethoven" (1956), "Rock and Roll Music" (1957), and "Johnny B. Goode" (1958). Writing lyrics that focused on teen life and consumerism, and developing a music style that included guitar solos and showmanship, Berry was a major influence on subsequent rock music.
Born into a middle-class family in St. Louis, Berry had an interest in music from an early age and gave his first public performance at Sumner High School. While still a high school student, he was convicted of armed robbery and was sent to a reformatory, where he was held from 1944 to 1947. After his release, Berry settled into married life and worked at an automobile assembly plant. By early 1953, influenced by the guitar riffs and showmanship techniques of the blues musician T-Bone Walker, Berry began performing with the Johnnie Johnson Trio. His break came when he traveled to Chicago in May 1955 and met Muddy Waters, who suggested he contact Leonard Chess, of Chess Records. With Chess, he recorded "Maybellene"—Berry''s adaptation of the country song "Ida Red"—which sold over a million copies, reaching number one on Billboard''s rhythm and blues chart.
By the end of the 1950s, Berry was an established star, with several hit records and film appearances and a lucrative touring career. He had also established his own St. Louis nightclub, Berry''s Club Bandstand. He was sentenced to three years in prison in January 1962 for offenses under the Mann Act—he had transported a 14-year-old girl across state lines for the purpose of having sex. After his release in 1963, Berry had several more successful songs, including "No Particular Place to Go", "You Never Can Tel',
   '["clm_wiki_chuck-berry_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 332);

-- 196. Clara Bow
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_clara-bow', 'person', 'clara-bow', 'Clara Bow', 'published', 'Clara Gordon Bow (; July 29, 1905 – September 27, 1965) was an American actress who rose to stardom during the silent film era of the 1920s and successfully made the transition to "talkies" in 1929. Her appearance as a plucky shopgirl in the 1927 film It brought her global fame and the nickname "The It Girl". Bow came to personify the Roaring Twenties and is described as its leading sex symbol.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_clara-bow', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_clara-bow_intro', 'ent_clara-bow', 'biography_intro', 'Introduction', 'Clara Gordon Bow (; July 29, 1905 – September 27, 1965) was an American actress who rose to stardom during the silent film era of the 1920s and successfully made the transition to "talkies" in 1929. Her appearance as a plucky shopgirl in the 1927 film It brought her global fame and the nickname "The It Girl". Bow came to personify the Roaring Twenties and is described as its leading sex symbol.
Bow appeared in 58 films, all but 11 of which were silent. 33 are extant in their entirety, 14 are partially lost, and 11 are completely lost.  Some hits include Mantrap (1926), It (1927), and Wings (1927). She was named the first box-office draw in 1928 and 1929 and the second box-office draw in 1927 and 1930. Her presence in a motion picture was said to have ensured investors, by odds of almost two-to-one, a "safe return". At the apex of her stardom, she received more than 45,000 fan letters in a single month, in January 1929.
After marrying actor Rex Bell in 1931, Bow retired from acting in 1933. Her final film, Hoop-La, was released in 1933. She then became a rancher in Nevada. Bow had two children. In September 1965, Bow died of a heart attack at the age of 60.',
   '["clm_wiki_clara-bow_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 215);

-- 197. Clint Eastwood
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_clint-eastwood', 'person', 'clint-eastwood', 'Clint Eastwood', 'published', 'Clinton Eastwood Jr. (born May 31, 1930) is a retired American actor and filmmaker. After achieving success in the Western TV series Rawhide, Eastwood rose to international fame with his role as the "Man with No Name" in Sergio Leone''s Dollars Trilogy of spaghetti Westerns during the mid-1960s and as antihero cop Harry Callahan in the five Dirty Harry films throughout the 1970s and 1980s. These ro', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_clint-eastwood', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_clint-eastwood_intro', 'ent_clint-eastwood', 'biography_intro', 'Introduction', 'Clinton Eastwood Jr. (born May 31, 1930) is a retired American actor and filmmaker. After achieving success in the Western TV series Rawhide, Eastwood rose to international fame with his role as the "Man with No Name" in Sergio Leone''s Dollars Trilogy of spaghetti Westerns during the mid-1960s and as antihero cop Harry Callahan in the five Dirty Harry films throughout the 1970s and 1980s. These roles, among others, have made Eastwood an enduring cultural icon of masculinity. Elected in 1986, Eastwood served for two years as the mayor of Carmel-by-the-Sea, California.
Eastwood''s greatest commercial successes are the adventure comedy Every Which Way but Loose (1978) and its action comedy sequel Any Which Way You Can (1980). Other popular Eastwood films include the Westerns Hang ''Em High (1968), The Outlaw Josey Wales (1976) and Pale Rider (1985), the action-war film Where Eagles Dare (1968), the prison film Escape from Alcatraz (1979), the war film Heartbreak Ridge (1986), the action film In the Line of Fire (1993), and the romantic drama The Bridges of Madison County (1995). More recent works include Gran Torino (2008), The Mule (2018), and Cry Macho (2021). Since 1967, Eastwood''s company Malpaso Productions has produced all but four of his American films.
An Academy Award nominee for Best Actor, Eastwood won Best Director and Best Picture for his Western film Unforgiven (1992) and his sports drama Million Dollar Baby (2004). In addition to directing many of his own star vehicles, Eastwood has directed films in which he did not appear, such as the mystery drama Mystic River (2003) and the war film Letters from Iwo Jima (2006), for which he received Academy Award nominations, as well as the legal thriller Juror #2 (2024). He also directed the biographical films Changeling (2008), Invictus (2009), American Sniper (2014), Sully (2016), and Richard Jewell (2019).
Eastwood''s accolades include four Academy Awards, four Golden Globe Awards, and three César Awards as well as',
   '["clm_wiki_clint-eastwood_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 322);

-- 198. Bonnie and Clyde
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_clyde-barrow', 'person', 'clyde-barrow', 'Bonnie and Clyde', 'published', 'Bonnie Elizabeth Parker (October 1, 1910 – May 23, 1934) and Clyde Chestnut "Champion" Barrow (March 24, 1909 – May 23, 1934) were outlaws who traveled the Central United States with their gang during the Great Depression, committing a series of criminal acts such as robbing of stores, robbing of banks, kidnappings and murders between 1932 and 1934. The couple were known for their bank robberies a', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_clyde-barrow', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_clyde-barrow_intro', 'ent_clyde-barrow', 'biography_intro', 'Introduction', 'Bonnie Elizabeth Parker (October 1, 1910 – May 23, 1934) and Clyde Chestnut "Champion" Barrow (March 24, 1909 – May 23, 1934) were outlaws who traveled the Central United States with their gang during the Great Depression, committing a series of criminal acts such as robbing of stores, robbing of banks, kidnappings and murders between 1932 and 1934. The couple were known for their bank robberies and multiple murders, although they preferred to rob small stores or rural gas stations. Their exploits captured the attention of the American press and its readership during what is occasionally referred to as the "public enemy era" between 1931 and 1934. On May 23, 1934, they were ambushed and killed on Louisiana Highway 154 in Bienville Parish, Louisiana, by a law enforcement posse led by retired Texas Ranger Frank Hamer. They are believed to have murdered at least nine police officers and three civilians.
The film Bonnie and Clyde (1967), directed by Arthur Penn and starring Warren Beatty and Faye Dunaway in the title roles, despite being highly fictionalized and historically inaccurate, was a critical and commercial success which revived interest in the criminals and glamorized them with a romantic aura. The Netflix film The Highwaymen (2019) depicted their manhunt from the point of view of the pursuing lawmen.

',
   '["clm_wiki_clyde-barrow_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 215);

-- 199. Coen brothers
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_coen-brothers', 'person', 'coen-brothers', 'Coen brothers', 'published', 'The Coen brothers (), Joel (born 1954) and Ethan (born 1957), are American filmmakers. Their films span many genres and styles, which they frequently subvert or parody. Among their most acclaimed works are Blood Simple (1984), Raising Arizona (1987), Miller''s Crossing (1990), Barton Fink (1991), Fargo (1996), The Big Lebowski (1998), O Brother, Where Art Thou? (2000), No Country for Old Men (2007)', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_coen-brothers', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_coen-brothers_intro', 'ent_coen-brothers', 'biography_intro', 'Introduction', 'The Coen brothers (), Joel (born 1954) and Ethan (born 1957), are American filmmakers. Their films span many genres and styles, which they frequently subvert or parody. Among their most acclaimed works are Blood Simple (1984), Raising Arizona (1987), Miller''s Crossing (1990), Barton Fink (1991), Fargo (1996), The Big Lebowski (1998), O Brother, Where Art Thou? (2000), No Country for Old Men (2007), A Serious Man (2009), True Grit (2010), and Inside Llewyn Davis (2013).
The brothers generally write, direct and produce their films jointly, although due to DGA regulations, Joel received sole directing credit while Ethan received sole production credit until The Ladykillers (2004), from which point on they would be credited together as directors and producers; they also shared editing credits under the alias Roderick Jaynes. The duo started directing separately in the 2020s, beginning with Joel''s The Tragedy of Macbeth (2021) and Ethan''s Jerry Lee Lewis: Trouble in Mind (2022) and Drive-Away Dolls (2024). They have been nominated for 13 Academy Awards together, plus one individual nomination for each, sharing wins for Best Original Screenplay for Fargo, and Best Picture, Best Director and Best Adapted Screenplay for No Country for Old Men. Barton Fink won the Palme d''Or at the 1991 Cannes Film Festival.
The Coens have written films for other directors, including Sam Raimi''s Crimewave (1985), Angelina Jolie''s World War II biopic Unbroken (2014) and Steven Spielberg''s Cold War drama Bridge of Spies (2015). They produced Terry Zwigoff''s Bad Santa (2003) and John Turturro''s Romance and Cigarettes (2005).  Ethan is also a writer of short stories, theater and poetry.
Three of their films have been inducted into the National Film Registry. No Country for Old Men, A Serious Man and Inside Llewyn Davis were included on the BBC''s 2016 poll of the greatest films since 2000. In 1998, the American Film Institute ranked Fargo among the 100 greatest American movies. They are known for',
   '["clm_wiki_coen-brothers_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 318);

-- 200. Cole Haan
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_cole-haan', 'person', 'cole-haan', 'Cole Haan', 'published', 'Cole Haan is an American brand specializing in footwear and accessories for men and women. Established in 1928 in Chicago, Illinois, the company has evolved from a men''s footwear label to a global brand offering a range of products. As of 2023, Cole Haan operates over 500 stores worldwide and maintains dual headquarters in New York City and Greenland, New Hampshire.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_cole-haan', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_cole-haan_intro', 'ent_cole-haan', 'biography_intro', 'Introduction', 'Cole Haan is an American brand specializing in footwear and accessories for men and women. Established in 1928 in Chicago, Illinois, the company has evolved from a men''s footwear label to a global brand offering a range of products. As of 2023, Cole Haan operates over 500 stores worldwide and maintains dual headquarters in New York City and Greenland, New Hampshire.',
   '["clm_wiki_cole-haan_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 61);

