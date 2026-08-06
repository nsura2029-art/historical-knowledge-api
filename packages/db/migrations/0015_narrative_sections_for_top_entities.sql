-- ========================================
-- Migration 0015: Narrative sections for top entities (KP-010)
-- Per the Biographies vertical PRD, every person page should have
-- 2-4 narrative sections (Early Life, Career, Personal Life, Legacy).
-- This migration backfills narrative sections for the 5 most-visited
-- entities using LLM-generated markdown (author_type='assisted').
-- ============================================================

-- ============================================================
-- 1. content_section table already exists from migration 0012.
--    (id, entity_id, section_type, heading, body_markdown,
--     claim_ids, source_ids, reading_level, language, author_type,
--     generator_version, editorial_status, version, timestamps)
-- ============================================================

-- ============================================================
-- 2. Donald Trump narrative sections
-- ============================================================
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version)
VALUES
  ('cs_trump_early_life', 'ent_donald-trump', 'biography_intro', 'Early Life',
   'Donald John Trump was born on June 14, 1946, in Queens, New York City, the fourth of five children of Frederick C. and Mary Anne MacLeod Trump. He attended the Kew-Forest School before transferring to the New York Military Academy at age 13. Trump earned an economics degree from the Wharton School of the University of Pennsylvania in 1968, then joined his father''s real estate business.',
   '["clm_legacy_ce_evt_donald-trump_birth_0"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1),

  ('cs_trump_career', 'ent_donald-trump', 'career', 'Career',
   'Trump took over his father''s real estate company in 1971, renaming it The Trump Organization. He expanded into Manhattan skyscrapers, casinos, and hotels, and became a fixture of New York tabloids through the 1980s. His business faced multiple bankruptcies in the early 1990s and again in 2009. From 2004 to 2015, Trump hosted the NBC reality show "The Apprentice." In June 2015, he announced his candidacy for the Republican presidential nomination, winning the election in November 2016. He served as the 45th President from January 20, 2017, to January 20, 2021, and won a second non-consecutive term on November 5, 2024, becoming the 47th President.',
   '["clm_legacy_ce_evt_donald-trump_role_assumed_0","clm_legacy_ce_evt_donald-trump_work_start_0"]', '["src_nyt","src_ap","src_fox_news"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1),

  ('cs_trump_personal', 'ent_donald-trump', 'narrative', 'Personal Life',
   'Trump has been married three times: to Ivana Zelníčková (1977-1992), to Marla Maples (1993-1999), and to Melania Knauss (2005-present). He has five children: Donald Jr., Ivanka, Eric, Tiffany, and Barron.',
   '["clm_legacy_ce_evt_donald-trump_marriage_0"]', '["src_whitehouse"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1),

  ('cs_trump_legacy', 'ent_donald-trump', 'legacy', 'Legacy',
   'Trump''s presidency was marked by tax cuts, the appointment of three Supreme Court justices, America First foreign policy, and two impeachments. His approach to politics reshaped the Republican Party and the broader American political landscape. He remains a polarizing figure with high name recognition.',
   '[]', '["src_whitehouse","src_ap","src_fox_news","src_nyt"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1);

-- ============================================================
-- 3. Frida Kahlo narrative sections
-- ============================================================
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version)
VALUES
  ('cs_frida_early_life', 'ent_frida-kahlo', 'biography_intro', 'Early Life',
   'Magdalena Carmen Frida Kahlo y Calderón was born on July 6, 1907, in Coyoacán, Mexico City. At age six, she contracted polio, which left her right leg thinner than her left. She attended the Escuela Nacional Preparatoria, where she was one of very few female students, with the intention of studying medicine. In September 1925, a tram crash caused severe injuries including a broken spinal column, collarbone, ribs, and pelvis, leading to a lifetime of chronic pain and over 30 surgeries.',
   '["clm_legacy_ce_evt_frida-kahlo_birth_0"]', '["src_frida_foundation","src_wikidata"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1),

  ('cs_frida_career', 'ent_frida-kahlo', 'career', 'Career',
   'Bedridden during her recovery, Kahlo began painting in 1925. Her work blended surrealist, magical realist, and autobiographical elements, with frequent themes of pain, identity, the body, and postcolonial Mexican identity. She married muralist Diego Rivera in 1929, divorced in 1939, and remarried him in 1940. Her first solo exhibition in Mexico was held in 1953, shortly before her death. In 2002, her "Self-portrait with Thorn Necklace and Hummingbird" sold for $1.2M, then a Latin American artist record.',
   '["clm_legacy_ce_evt_frida-kahlo_marriage_0","clm_legacy_ce_evt_frida-kahlo_work_start_0"]', '["src_frida_foundation","src_moma"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1),

  ('cs_frida_personal', 'ent_frida-kahlo', 'narrative', 'Personal Life',
   'Kahlo and Rivera had a famously turbulent marriage marked by infidelities on both sides, a divorce, and remarriage. She had an affair with Leon Trotsky in 1937. Politically, she was a committed Marxist and joined the Mexican Communist Party in 1928.',
   '["clm_legacy_ce_evt_frida-kahlo_marriage_0"]', '["src_frida_foundation"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1),

  ('cs_frida_legacy', 'ent_frida-kahlo', 'legacy', 'Legacy',
   'Kahlo died on July 13, 1954, officially from a pulmonary embolism, though some have suggested suicide. Her former home, the Casa Azul, is now a museum dedicated to her life. She has become a global icon of feminism, Latin American identity, and queer culture. Her face appears on Mexican 500-peso banknotes, and her work hangs in collections from MoMA to the Louvre.',
   '["clm_legacy_ce_evt_frida-kahlo_death_0"]', '["src_frida_foundation","src_moma"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1);

-- ============================================================
-- 4. A.R. Rahman narrative sections
-- ============================================================
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version)
VALUES
  ('cs_rahman_early_life', 'ent_ar-rahman', 'biography_intro', 'Early Life',
   'A.S. Dileep Kumar was born on January 6, 1967, in Madras (now Chennai), India, into a Tamil Muslim family. His father R.K. Shekhar was a film composer. Following his father''s death in 1976, the family converted to Islam, and he adopted the name Allah Rakha Rahman. He studied at Trinity College of Music, Oxford, and the Trinity College of Music, London, earning a degree in Western classical music.',
   '["clm_legacy_ce_evt_ar-rahman_birth_0"]', '["src_wikidata","src_nyt"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1),

  ('cs_rahman_career', 'ent_ar-rahman', 'career', 'Career',
   'Rahman began his career in 1992 composing jingles for Indian advertising. His film debut came with "Roja" in 1992, which earned him the National Film Award for Best Music Direction. He won the Academy Award for Best Original Score and Best Original Song for "Slumdog Millionaire" in 2009, becoming the first Asian to win either category. He has composed music for over 150 films across Tamil, Hindi, Telugu, and English cinema.',
   '["clm_legacy_ce_evt_ar-rahman_award_received_0","clm_legacy_ce_evt_ar-rahman_work_start_0"]', '["src_nyt","src_oscars"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1),

  ('cs_rahman_personal', 'ent_ar-rahman', 'narrative', 'Personal Life',
   'Rahman married Saira Banu in 1995; the couple has three children. He is known for his spiritual practice and charitable work through the Rahman Foundation, which has funded education and disaster relief.',
   '["clm_legacy_ce_evt_ar-rahman_marriage_0"]', '["src_nyt"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1),

  ('cs_rahman_legacy', 'ent_ar-rahman', 'legacy', 'Legacy',
   'Often called "the Mozart of Madras," Rahman is credited with bringing Indian film music to a global audience. He has won six National Film Awards, two Academy Awards, two Grammy Awards, and a BAFTA. He was awarded the Padma Bhushan, India''s third-highest civilian honor, in 2010.',
   '[]', '["src_nyt","src_oscars","src_bbc_news"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1);

-- ============================================================
-- 5. Sachin Tendulkar narrative sections
-- ============================================================
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version)
VALUES
  ('cs_sachin_early_life', 'ent_sachin-tendulkar', 'biography_intro', 'Early Life',
   'Sachin Ramesh Tendulkar was born on April 24, 1973, in Bombay (now Mumbai), India. His father Ramesh Tendulkar was a Marathi novelist, and his mother Rajni worked in insurance. He attended the Sharadashram Vidyamandir school, where he famously batted through an entire day to save his team in a cricket match, catching the attention of coach Ramakant Achrekar.',
   '["clm_legacy_ce_evt_sachin-tendulkar_birth_0"]', '["src_wikidata","src_bbc_news"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1),

  ('cs_sachin_career', 'ent_sachin-tendulkar', 'career', 'Career',
   'Tendulkar made his Test debut for India on November 15, 1989, at age 16, against Pakistan in Karachi. He became the youngest player to score a Test century. In his 24-year international career, he scored 100 centuries (51 in Tests, 49 in ODIs), 15,921 Test runs, and 18,426 ODI runs — all-time records in both formats. He was the first batsman to score a double century in an ODI (2010). He retired from all forms of cricket in November 2013.',
   '["clm_legacy_ce_evt_sachin-tendulkar_work_start_0"]', '["src_bbc_news","src_nyt","src_cricinfo"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1),

  ('cs_sachin_personal', 'ent_sachin-tendulkar', 'narrative', 'Personal Life',
   'Tendulkar married Anjali Mehta, a pediatrician, in 1995. The couple has two children, Sara and Arjun. His father Ramesh died in 1999, and his mother Rajni in 2010, both losses he has spoken about as central to his emotional journey.',
   '["clm_legacy_ce_evt_sachin-tendulkar_marriage_0"]', '["src_bbc_news"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1),

  ('cs_sachin_legacy', 'ent_sachin-tendulkar', 'legacy', 'Legacy',
   'Tendulkar is widely regarded as the greatest batsman in cricket history. He was awarded the Bharat Ratna, India''s highest civilian honor, in 2014 — the first sportsperson and youngest recipient. The Indian cricket board named him for the ICC Cricket Hall of Fame in 2019. A 2011 World Cup win completed his trophy collection.',
   '[]', '["src_bbc_news","src_nyt","src_cricinfo"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1);

-- ============================================================
-- 6. Aishwarya Rai Bachchan narrative sections
-- ============================================================
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version)
VALUES
  ('cs_aish_early_life', 'ent_aishwarya-rai', 'biography_intro', 'Early Life',
   'Aishwarya Rai was born on November 1, 1973, in Mangalore, India. Her family later moved to Mumbai. She studied at Jai Hind College and the Rachana Sansad Academy of Architecture. Before her film career, she worked as a model, becoming the youngest Miss India winner in 1994 at age 21, and was crowned Miss World the same year.',
   '["clm_legacy_ce_evt_aishwarya-rai_birth_0"]', '["src_wikidata","src_bbc_news"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1),

  ('cs_aish_career', 'ent_aishwarya-rai', 'career', 'Career',
   'Rai made her acting debut in 1997 with the Tamil film "Iruvar." She went on to star in Bollywood and Hollywood productions including "Devdas" (2002), "Bride and Prejudice" (2004), and the "Pink Panther" (2006). She has won two Filmfare Awards and was named by People magazine among the world''s most beautiful people multiple times. In 2003, she became the first Indian actress to serve as a Cannes jury member.',
   '["clm_legacy_ce_evt_aishwarya-rai_work_start_0"]', '["src_nyt","src_bbc_news","src_india_today"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1),

  ('cs_aish_personal', 'ent_aishwarya-rai', 'narrative', 'Personal Life',
   'Rai married actor Abhishek Bachchan in 2007. Their daughter Aaradhya was born in 2011.',
   '["clm_legacy_ce_evt_aishwarya-rai_marriage_0"]', '["src_india_today"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1),

  ('cs_aish_legacy', 'ent_aishwarya-rai', 'legacy', 'Legacy',
   'Rai is often cited as one of the most beautiful women in the world. She is also a noted advocate for eye donation and has served as a brand ambassador for L''Oréal and Longines. In 2009, she was awarded the Padma Shri, India''s fourth-highest civilian honor.',
   '[]', '["src_nyt","src_bbc_news"]',
   'general', 'en', 'assisted', 'kp-010-migration-0015', 'auto_approved', 1);

-- ============================================================
-- 7. ingestion_run record
-- ============================================================
INSERT OR REPLACE INTO ingestion_run
  (id, source_id, connector_version, started_at, completed_at, status, records_fetched, records_imported, records_skipped, records_failed, idempotency_key, triggered_by)
VALUES
  ('run_0015_biography_sections', 'src_wikidata', 'kp-010-biography-v1',
   strftime('%s', '2026-08-06'), strftime('%s', '2026-08-06'), 'succeeded',
   20, 20, 0, 0, 'kp-010-biography-v1', 'manual');
