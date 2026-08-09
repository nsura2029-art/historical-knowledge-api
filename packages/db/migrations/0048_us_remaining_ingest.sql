-- ========================================
-- Migration 0025: Top-110-famous-Americans bulk ingest
-- Generated: 2026-08-09 10:20:34 UTC
-- Source: Wikipedia REST API (en.wikipedia.org)
-- License: Wikipedia content is CC-BY-SA 4.0 (attribution preserved in source_ids)
-- ========================================

-- 26. Reggie Jackson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_reggie-jackson', 'person', 'reggie-jackson', 'Reggie Jackson', 'published', 'Reginald Martinez Jackson (born May 18, 1946) is an American former professional baseball right fielder who played 21 seasons in Major League Baseball (MLB) for the Kansas City / Oakland Athletics, Baltimore Orioles, New York Yankees, and California Angels. Jackson was inducted into the National Baseball Hall of Fame in 1993 in his first year of eligibility.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_reggie-jackson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_reggie-jackson_us', 'ent_reggie-jackson', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_reggie-jackson_intro', 'ent_reggie-jackson', 'biography_intro', 'Introduction', 'Reginald Martinez Jackson (born May 18, 1946) is an American former professional baseball right fielder who played 21 seasons in Major League Baseball (MLB) for the Kansas City / Oakland Athletics, Baltimore Orioles, New York Yankees, and California Angels. Jackson was inducted into the National Baseball Hall of Fame in 1993 in his first year of eligibility.
Jackson was nicknamed "Mr. October" for his clutch hitting in the postseason with the Athletics and the Yankees. He helped Oakland win five consecutive American League West divisional titles, three straight American League pennants and three consecutive World Series titles from 1972 to 1974. Jackson helped New York win four American League East divisional pennants, three American League pennants and back-to-back World Series titles, in 1977 and 1978. He also helped the California Angels win two AL West divisional titles in 1982 and 1986. Jackson hit three consecutive home runs at Yankee Stadium in the clinching game six of the 1977 World Series.
Jackson hit 563 career home runs and was an American League (AL) All-Star for 14 seasons. He won two Silver Slugger Awards, the AL Most Valuable Player (MVP) Award in 1973, two World Series MVP Awards and the Babe Ruth Award in 1977. Jackson additionally holds the record for  most career strikeouts by a batter. The Yankees retired his uniform number in 1993, and the Athletics retired it in 2004. Jackson currently serves as a special advisor to the Houston Astros, and a sixth championship associated with Jackson came with Houston''s win in the 2022 World Series.
Jackson led his teams to first place eleven times over his 21-year baseball career and had only two losing seasons.',
   '["clm_wiki_reggie-jackson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 277);

-- 27. Mike Schmidt
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_mike-schmidt', 'person', 'mike-schmidt', 'Mike Schmidt', 'published', 'Michael Jack Schmidt (born September 27, 1949) is an American former professional baseball third baseman who spent his entire 18-year Major League Baseball (MLB) career with the Philadelphia Phillies from 1972 to 1989. Schmidt was a 12-time All-Star and a three-time winner of the National League (NL) Most Valuable Player award (MVP), and he was known for his combination of power hitting and strong', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_mike-schmidt', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_mike-schmidt_us', 'ent_mike-schmidt', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_mike-schmidt_intro', 'ent_mike-schmidt', 'biography_intro', 'Introduction', 'Michael Jack Schmidt (born September 27, 1949) is an American former professional baseball third baseman who spent his entire 18-year Major League Baseball (MLB) career with the Philadelphia Phillies from 1972 to 1989. Schmidt was a 12-time All-Star and a three-time winner of the National League (NL) Most Valuable Player award (MVP), and he was known for his combination of power hitting and strong defense. As a hitter, he compiled 548 home runs and 1,595 runs batted in (RBIs), and led the NL in home runs eight times and in RBIs four times. As a fielder, Schmidt won the National League Gold Glove Award for third basemen ten times. Schmidt was elected to the Baseball Hall of Fame in 1995 in his first year of eligibility, and is widely considered to be one of the greatest third basemen in baseball history.
Having an unusual batting stance, Schmidt turned his back somewhat toward the pitcher and rocked his rear end back and forth while waiting for a pitch. By standing far back in the batter''s box, he made it almost impossible to jam him by pitching inside.
Teammate Pete Rose once said, "To have his body, I''d trade him mine and my wife''s, and I''d throw in some cash."',
   '["clm_wiki_mike-schmidt_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 208);

-- 28. Pete Rose
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_pete-rose', 'person', 'pete-rose', 'Pete Rose', 'published', 'Peter Edward Rose Sr. (April 14, 1941 – September 30, 2024), nicknamed "Charlie Hustle", was an American professional baseball player and manager. He played in Major League Baseball (MLB) from 1963 to 1986, most prominently as a member of the Cincinnati Reds lineup known as the Big Red Machine for their dominance of the National League in the 1970s. He also played for the Philadelphia Phillies, wh', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_pete-rose', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_pete-rose_us', 'ent_pete-rose', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_pete-rose_intro', 'ent_pete-rose', 'biography_intro', 'Introduction', 'Peter Edward Rose Sr. (April 14, 1941 – September 30, 2024), nicknamed "Charlie Hustle", was an American professional baseball player and manager. He played in Major League Baseball (MLB) from 1963 to 1986, most prominently as a member of the Cincinnati Reds lineup known as the Big Red Machine for their dominance of the National League in the 1970s. He also played for the Philadelphia Phillies, where he won his third World Series championship in 1980, and had a brief stint with the Montreal Expos. He managed the Reds from 1984 to 1989.
Rose was a switch hitter and is MLB''s all-time leader in hits (4,256), games played (3,562), at-bats (14,053), singles (3,215), and outs (10,328). He won three World Series championships, three batting titles, one Most Valuable Player Award, two Gold Glove Awards, and the Rookie of the Year Award. He made 17 All-Star appearances in an unequaled five positions (second baseman, left fielder, right fielder, third baseman, and first baseman). He won two Gold Glove Awards when he was an outfielder, in 1969 and 1970. He also has the third-longest hit streak in MLB history at 44, and remains the last player to hit safely in 40 or more consecutive games.
In August 1989 (his last year as a manager and three years after retiring as a player), Rose was penalized with permanent ineligibility from baseball amid accusations that he gambled on baseball games while he played for and managed the Reds; the charges of wrongdoing included claims that he bet on his own team. In 1991, the Baseball Hall of Fame formally voted to ban those on the "permanently ineligible" list from induction, after previously excluding such players by informal agreement among voters. After years of public denial, he admitted in 2004 that he had bet on baseball and on the Reds. The issue of his election to the Hall of Fame remains contentious throughout baseball. In 2025, he was posthumously reinstated and became eligible for the Hall of Fame.',
   '["clm_wiki_pete-rose_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 333);

-- 29. Tony Pérez
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_tony-perez', 'person', 'tony-perez', 'Tony Pérez', 'published', 'Atanasio "Tony" Pérez Rigal (born May 14, 1942), nicknamed Big Dog, is a Cuban-American former professional baseball player, coach and manager. He played in Major League Baseball (MLB) as a first baseman and third baseman from 1964 through 1986, most notably as a member of the Cincinnati Reds dynasty that won four National League pennants and two World Series championships between 1970 and 1976. H', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_tony-perez', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_tony-perez_us', 'ent_tony-perez', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_tony-perez_intro', 'ent_tony-perez', 'biography_intro', 'Introduction', 'Atanasio "Tony" Pérez Rigal (born May 14, 1942), nicknamed Big Dog, is a Cuban-American former professional baseball player, coach and manager. He played in Major League Baseball (MLB) as a first baseman and third baseman from 1964 through 1986, most notably as a member of the Cincinnati Reds dynasty that won four National League pennants and two World Series championships between 1970 and 1976. He also played for the Montreal Expos, Boston Red Sox and the Philadelphia Phillies.
A seven-time All-Star, Pérez averaged more than 100 runs batted in per season from 1970 to 1976 for the powerful Cincinnati team that became known as the Big Red Machine for their dominance of the National League in the mid-1970s. Variously nicknamed "Big Dog", "Big Doggie", and "Doggie", he was one of the most popular players in Reds history.
After his playing career, Pérez became a coach and later managed the Reds and the Florida Marlins. From 1993 through the 2017 season, he was Special Assistant to the General Manager with the Marlins. In 2000, Pérez was inducted into the Baseball Hall of Fame.',
   '["clm_wiki_tony-perez_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 182);

-- 30. Patrick Collison
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_patrick-collison', 'person', 'patrick-collison', 'Patrick Collison', 'published', 'Patrick Collison (born 9 September 1988) is an Irish entrepreneur, investor, and philanthropist. He is the chief executive officer of Stripe, which he co-founded with his younger brother, John, in 2010. A billionaire since 2016, his net worth as of August 2026 is estimated at $17.5 billion.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_patrick-collison', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_patrick-collison_us', 'ent_patrick-collison', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_patrick-collison_intro', 'ent_patrick-collison', 'biography_intro', 'Introduction', 'Patrick Collison (born 9 September 1988) is an Irish entrepreneur, investor, and philanthropist. He is the chief executive officer of Stripe, which he co-founded with his younger brother, John, in 2010. A billionaire since 2016, his net worth as of August 2026 is estimated at $17.5 billion.
Originally from the west of Ireland, Collison won that country’s 41st Young Scientist and Technology Exhibition in 2005 at the age of sixteen. In 2021, he co-founded Arc Institute, a nonprofit research organization, with bioscientists Silvana Konermann and Patrick Hsu.',
   '["clm_wiki_patrick-collison_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 87);

-- 31. Nathan Blecharczyk
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_nathan-blecharczyk', 'person', 'nathan-blecharczyk', 'Nathan Blecharczyk', 'published', 'Nathan Blecharczyk (; born 1983) is the co-founder and chief strategy officer (CSO) of Airbnb, and chairman of Airbnb China. Blecharczyk was also the company''s first chief technology officer. Blecharczyk is the 203rd richest person in the world according to Forbes, with a net worth of $9.4 billion, mostly due to his ownership of 62 million shares of Airbnb.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_nathan-blecharczyk', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_nathan-blecharczyk_us', 'ent_nathan-blecharczyk', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_nathan-blecharczyk_intro', 'ent_nathan-blecharczyk', 'biography_intro', 'Introduction', 'Nathan Blecharczyk (; born 1983) is the co-founder and chief strategy officer (CSO) of Airbnb, and chairman of Airbnb China. Blecharczyk was also the company''s first chief technology officer. Blecharczyk is the 203rd richest person in the world according to Forbes, with a net worth of $9.4 billion, mostly due to his ownership of 62 million shares of Airbnb.',
   '["clm_wiki_nathan-blecharczyk_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 59);

-- 32. Oscar Salazar
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_oscar-salazar', 'person', 'oscar-salazar', 'Oscar Salazar', 'published', 'Oscar Salazar may refer to:', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_oscar-salazar', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_oscar-salazar_us', 'ent_oscar-salazar', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_oscar-salazar_intro', 'ent_oscar-salazar', 'biography_intro', 'Introduction', 'Oscar Salazar may refer to:

Oscar Salazar (baseball) (born 1978), Major League Baseball infielder
Óscar Salazar (taekwondo) (born 1977), practitioner of taekwondo
Óscar Lara Salazar (born 1962), Mexican politician',
   '["clm_wiki_oscar-salazar_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 29);

-- 33. Tony Xu
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_tony-xu', 'person', 'tony-xu', 'Tony Xu', 'published', 'Tony Xu (Chinese: 徐迅; pinyin: Xú Xùn; born Xu Xun, 1983/1984) is a Chinese-born American billionaire businessman and the co-founder and CEO of DoorDash. ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_tony-xu', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_tony-xu_us', 'ent_tony-xu', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_tony-xu_intro', 'ent_tony-xu', 'biography_intro', 'Introduction', 'Tony Xu (Chinese: 徐迅; pinyin: Xú Xùn; born Xu Xun, 1983/1984) is a Chinese-born American billionaire businessman and the co-founder and CEO of DoorDash. 
Xu was born in Nanjing, China, and immigrated to the United States with his parents at the age of four. He earned degrees from the University of California, Berkeley, and the Stanford Graduate School of Business. Early in his career, Xu interned at Square, Inc., and worked for McKinsey & Company, eBay, and PayPal. He was included in Fortune''s 40 Under 40 in 2020.
DoorDash had its IPO in December 2020, making Xu''s net worth an estimated $2.8 billion as of April 2021. He and his wife Patti are signatories to the Giving Pledge.',
   '["clm_wiki_tony-xu_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 118);

-- 34. Stanley Tang
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_stanley-tang', 'person', 'stanley-tang', 'Stanley Tang', 'published', 'Stanley Wei Rui Tang (simplified Chinese: 汤玮锐; traditional Chinese: 湯瑋銳; pinyin: Tāng Wěi Ruì, born 1992) is a Hong Kong-American billionaire tech entrepreneur. He is best known as the Co-Founder and Chief Product Officer at DoorDash, which he started along with Tony Xu, Andy Fang and Evan Moore in 2013.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_stanley-tang', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_stanley-tang_us', 'ent_stanley-tang', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_stanley-tang_intro', 'ent_stanley-tang', 'biography_intro', 'Introduction', 'Stanley Wei Rui Tang (simplified Chinese: 汤玮锐; traditional Chinese: 湯瑋銳; pinyin: Tāng Wěi Ruì, born 1992) is a Hong Kong-American billionaire tech entrepreneur. He is best known as the Co-Founder and Chief Product Officer at DoorDash, which he started along with Tony Xu, Andy Fang and Evan Moore in 2013.
DoorDash had its IPO in December 2020, making Tang''s net worth an estimated $2.2 billion at the time.',
   '["clm_wiki_stanley-tang_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 68);

-- 44. Tina Brown
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_tina-brown', 'person', 'tina-brown', 'Tina Brown', 'published', 'Christina Hambley Brown, Lady Evans (born 21 November 1953), is a British and American journalist, magazine editor, columnist, broadcaster, and author. She is the former editor in chief of Tatler (1979–1982), Vanity Fair (1984–1992), The New Yorker (1992–1998), and the founding editor in chief of The Daily Beast (2008–2013). From 1998–2002, Brown was chairman of Talk Media, which included Talk mag', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_tina-brown', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_tina-brown_us', 'ent_tina-brown', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_tina-brown_intro', 'ent_tina-brown', 'biography_intro', 'Introduction', 'Christina Hambley Brown, Lady Evans (born 21 November 1953), is a British and American journalist, magazine editor, columnist, broadcaster, and author. She is the former editor in chief of Tatler (1979–1982), Vanity Fair (1984–1992), The New Yorker (1992–1998), and the founding editor in chief of The Daily Beast (2008–2013). From 1998–2002, Brown was chairman of Talk Media, which included Talk magazine and Talk Miramax Books. In 2010, she founded Women in the World, a live journalism platform to elevate the voices of women globally, with summits held through 2019. Brown is author of The Diana Chronicles (2007), The Vanity Fair Diaries (2017) and The Palace Papers (2022).
As a magazine editor, she has received four George Polk Awards, five Overseas Press Club awards, and ten National Magazine Awards, and in 2007 was inducted into the Magazine Editors'' Hall of Fame. In 2021, she was honored as a Library Lion by the New York Public Library. In 2022, Women in Journalism, the UK''s leading networking and training organization for journalists, honored her with their Lifetime Achievement Award.
Brown emigrated from her native England to the United States in 1984, and became a U.S. citizen in 2005. In 2000 she was appointed a CBE (Commander of the Order of the British Empire), for her services to journalism overseas, by Queen Elizabeth II. In September 2022, she was a CBS commentator for the funeral of the Queen.',
   '["clm_wiki_tina-brown_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 234);

-- 45. Prince
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_prince', 'person', 'prince', 'Prince', 'published', 'A prince is a male ruler (ranked below a king, grand prince, and grand duke) or a male member of a monarch''s or former monarch''s family. Prince is also a title of nobility (often highest), often hereditary, in some European states. The female equivalent is a princess. The English word derives, via the French word prince, from the Latin noun prīnceps, from primus (first) and caput (head), meaning "', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_prince', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_prince_us', 'ent_prince', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_prince_intro', 'ent_prince', 'biography_intro', 'Introduction', 'A prince is a male ruler (ranked below a king, grand prince, and grand duke) or a male member of a monarch''s or former monarch''s family. Prince is also a title of nobility (often highest), often hereditary, in some European states. The female equivalent is a princess. The English word derives, via the French word prince, from the Latin noun prīnceps, from primus (first) and caput (head), meaning "the first, foremost, the chief, most distinguished, noble ruler, prince".
In a related sense, now not commonly used, all more or less sovereign rulers over a state, including kings, were "princes", they were members of the princely class, in the language of international politics and diplomacy. Princes was thus a collective noun, that applied to the group of sovereign monarchs, even if they used another title, for example king or duke. Many of these were Princes of the Holy Roman Empire.',
   '["clm_wiki_prince_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 149);

-- 46. Michael Jackson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_michael-jackson', 'person', 'michael-jackson', 'Michael Jackson', 'published', 'Michael Joseph Jackson (August 29, 1958 – June 25, 2009) was an American singer, songwriter, dancer, and philanthropist. Dubbed the "King of Pop", he is widely regarded as one of the most culturally significant figures of the 20th century. His musical achievements broke American racial barriers and made him a dominant figure worldwide. Through his songs, music videos, concerts, and fashion, he tra', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_michael-jackson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_michael-jackson_us', 'ent_michael-jackson', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_michael-jackson_intro', 'ent_michael-jackson', 'biography_intro', 'Introduction', 'Michael Joseph Jackson (August 29, 1958 – June 25, 2009) was an American singer, songwriter, dancer, and philanthropist. Dubbed the "King of Pop", he is widely regarded as one of the most culturally significant figures of the 20th century. His musical achievements broke American racial barriers and made him a dominant figure worldwide. Through his songs, music videos, concerts, and fashion, he transformed visual performance in popular music, popularizing street dance moves such as the moonwalk, the robot, and the anti-gravity lean. Jackson is often deemed the greatest entertainer of all time.
The eighth of ten children in the Jackson family, he made his public debut at age six as the lead singer of the Jackson 5. Jackson rose to solo stardom with Off the Wall (1979) and achieved unprecedented global success with Thriller (1982), the best-selling album in history. The music videos for "Thriller", "Beat It", and "Billie Jean" redefined the medium. Bad (1987) was the first album to produce five US Billboard Hot 100 number-one singles: "I Just Can''t Stop Loving You", "Bad", "The Way You Make Me Feel", "Man in the Mirror", and "Dirty Diana". Dangerous (1991) and HIStory (1995) were also successful. Jackson''s final album, Invincible (2001), is the most expensive ever made.
From the mid-1980s, Jackson came under public scrutiny for his relationships, lifestyle, and changing appearance. He was accused of sexually abusing a child in 1993 and settled out of court in 1994. In 2005, he was tried and acquitted on other child sexual abuse charges. While preparing for This Is It, a series of comeback concerts, he died in 2009 from an overdose of propofol administered by his personal physician, Conrad Murray. His death caused unprecedented surges in internet traffic and a spike in music sales. Posthumous Jackson releases include the documentary Michael Jackson''s This Is It (2009) and the albums Michael (2010) and Xscape (2014). The 2019 documentary Leaving Neverland detailed furthe',
   '["clm_wiki_michael-jackson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 320);

-- 47. The Notorious B.I.G.
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_notorious-big', 'person', 'notorious-big', 'The Notorious B.I.G.', 'published', 'Christopher George Latore Wallace (May 21, 1972 – March 9, 1997), known professionally as the Notorious B.I.G. or Biggie Smalls, was an American rapper and songwriter. Rooted in the East Coast hip-hop and gangsta rap traditions, he is widely considered one of the greatest rappers of all time. Wallace became known for his distinctive, laidback lyrical delivery, offsetting his lyrics'' often grim con', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_notorious-big', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_notorious-big_us', 'ent_notorious-big', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_notorious-big_intro', 'ent_notorious-big', 'biography_intro', 'Introduction', 'Christopher George Latore Wallace (May 21, 1972 – March 9, 1997), known professionally as the Notorious B.I.G. or Biggie Smalls, was an American rapper and songwriter. Rooted in the East Coast hip-hop and gangsta rap traditions, he is widely considered one of the greatest rappers of all time. Wallace became known for his distinctive, laidback lyrical delivery, offsetting his lyrics'' often grim content. His music was semi-autobiographical, telling of hardship and criminality but also of debauchery and celebration.
Wallace was born and raised in Brooklyn, New York City. In 1993, he became the first artist to sign with Sean Combs''s Bad Boy Records and gained recognition for his guest appearances on other artists'' singles. His debut studio album, Ready to Die (1994), received acclaim and included the successful singles "Juicy", "Big Poppa", and "One More Chance". Ready to Die made Wallace the central figure of East Coast hip-hop and helped restore its prominence at a time when the West Coast was dominating the genre. In 1995, Wallace was named Rapper of the Year at the Billboard Music Awards, and with his protégé group, Junior M.A.F.I.A.—which included longtime friends like Lil'' Kim—released the album Conspiracy.
While working on his second album in 1995, Wallace became embroiled in the growing East Coast–West Coast hip-hop rivalry, including a feud with his former friend Tupac Shakur. After Shakur was murdered in a drive-by shooting in Las Vegas in September 1996, rumors circulated suggesting that Wallace might have been involved, given the two artists'' feud. In March 1997, six months after Shakur''s death, Wallace was also shot and killed in a drive-by shooting in Los Angeles by an unknown assailant. Two weeks later, Life After Death (1997) was released as a posthumous double album; it debuted atop the Billboard 200, yielded the Billboard Hot 100 number-one singles "Hypnotize" and "Mo Money Mo Problems", and received diamond certification by the Recording Industry Asso',
   '["clm_wiki_notorious-big_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 317);

-- 48. Aaliyah
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_aaliyah', 'person', 'aaliyah', 'Aaliyah', 'published', 'Aaliyah Dana Haughton ( ah-LEE-ə; January 16, 1979 – August 25, 2001) was an American singer, actress, dancer, and model. Known as the "Princess of R&B" and "Queen of Urban Pop", she is credited with helping to redefine contemporary R&B, pop, and hip hop. Her accolades include three American Music Awards and two MTV VMAs, along with five Grammy Award nominations.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_aaliyah', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_aaliyah_us', 'ent_aaliyah', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_aaliyah_intro', 'ent_aaliyah', 'biography_intro', 'Introduction', 'Aaliyah Dana Haughton ( ah-LEE-ə; January 16, 1979 – August 25, 2001) was an American singer, actress, dancer, and model. Known as the "Princess of R&B" and "Queen of Urban Pop", she is credited with helping to redefine contemporary R&B, pop, and hip hop. Her accolades include three American Music Awards and two MTV VMAs, along with five Grammy Award nominations.
Born in Brooklyn and raised in Detroit, Aaliyah first gained recognition at the age of 10, when she appeared on the television show Star Search and performed in concert alongside Gladys Knight. At the age of 12, she signed with Jive Records and her uncle Barry Hankerson''s Blackground Records. Hankerson introduced her to R. Kelly, who became her mentor, as well as lead songwriter and producer of her debut album, Age Ain''t Nothing but a Number (1994). The album sold three million copies in the US and was certified double Platinum by the Recording Industry Association of America (RIAA). Her first single, "Back & Forth", rose to number five on the Billboard Hot 100. After allegations of an illegal marriage with Kelly, she ended her contract with Jive and signed with Atlantic Records.
Aaliyah worked with record producers Timbaland and Missy Elliott for her second album, One in a Million (1996), which sold three million copies in the US and more than eight million copies worldwide. She made her acting debut in the action film Romeo Must Die. Its soundtrack was supported by her single "Try Again", the first song to top the Billboard Hot 100 solely through airplay. She subsequently filmed her starring role in Queen of the Damned (2002; released posthumously) and released her third album, Aaliyah (2001), which topped the Billboard 200. The album spawned the singles "We Need a Resolution", "Rock the Boat", and "More Than a Woman".
On August 25, 2001, at the age of 22, Aaliyah was killed in a plane crash along with eight other people on board, when the overloaded aircraft she was traveling in crashed shortly after tak',
   '["clm_wiki_aaliyah_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 338);

-- 49. Amy Winehouse
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_amy-winehouse', 'person', 'amy-winehouse', 'Amy Winehouse', 'published', 'Amy Jade Winehouse (14 September 1983 – 23 July 2011) was a British singer, songwriter, musician, and businesswoman. She is known for her distinctive contralto vocals, expressive and autobiographical songwriting, and eclectic blend of genres such as soul, rhythm and blues, and jazz. Her music, along with her fashion and highly publicised personal life, made her an influential figure in popular cul', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_amy-winehouse', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_amy-winehouse_us', 'ent_amy-winehouse', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_amy-winehouse_intro', 'ent_amy-winehouse', 'biography_intro', 'Introduction', 'Amy Jade Winehouse (14 September 1983 – 23 July 2011) was a British singer, songwriter, musician, and businesswoman. She is known for her distinctive contralto vocals, expressive and autobiographical songwriting, and eclectic blend of genres such as soul, rhythm and blues, and jazz. Her music, along with her fashion and highly publicised personal life, made her an influential figure in popular culture.
Born to a Jewish family in Enfield, London, Winehouse grew up in a jazz-influenced household. She was a member of the National Youth Jazz Orchestra in her youth, recording several songs before signing a publishing deal with EMI. After a friend passed her demo to a music executive, Winehouse signed with Island Records in 2002. She worked with producer Salaam Remi for debut studio album, Frank (2003), which was commercially successful in the UK and drew critical acclaim for its mature songwriting and jazz-imbued production. Its lead single, "Stronger Than Me", earned the singer an Ivor Novello Award.
Inspired by 1960s girl groups and soul music, Winehouse recorded her second studio album, Back to Black (2006), with Remi, the Dap-Kings and producer Mark Ronson. It became an international critical and commercial success and one of the best-selling albums of all time. Its lead single, "Rehab", was a worldwide top-ten song and won her a second Ivor Novello Award. At the 50th Annual Grammy Awards in 2008, Winehouse won five awards, tying the then-record for the most Grammys won by a female artist in a single night and becoming the first British woman to win five Grammys. Her wins included three of the "Big Four" categories—Best New Artist, and Record of the Year and Song of the Year for "Rehab"—along with Best Pop Vocal Album.
Winehouse''s career was often overshadowed by substance abuse, mental illness, and addiction, culminating in her death from alcohol poisoning. Her brother believed that bulimia was also a factor. Winehouse''s life and career were depicted in the document',
   '["clm_wiki_amy-winehouse_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 323);

-- 50. Mac Miller
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_mac-miller', 'person', 'mac-miller', 'Mac Miller', 'published', 'Malcolm James McCormick (January 19, 1992 – September 7, 2018), known by the stage name Mac Miller, was an American rapper. He began his career in Pittsburgh''s local hip-hop scene in 2007, at the age of 15. In 2010, he signed a record deal with independent label Rostrum Records and released his breakthrough mixtapes K.I.D.S. (2010) and Best Day Ever (2011). Miller''s debut studio album, Blue Slide ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_mac-miller', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_mac-miller_us', 'ent_mac-miller', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_mac-miller_intro', 'ent_mac-miller', 'biography_intro', 'Introduction', 'Malcolm James McCormick (January 19, 1992 – September 7, 2018), known by the stage name Mac Miller, was an American rapper. He began his career in Pittsburgh''s local hip-hop scene in 2007, at the age of 15. In 2010, he signed a record deal with independent label Rostrum Records and released his breakthrough mixtapes K.I.D.S. (2010) and Best Day Ever (2011). Miller''s debut studio album, Blue Slide Park (2011), became the first independently distributed debut album to top the US Billboard 200 since 1995.
In 2013, Miller founded the record label imprint REMember Music. After his second studio album, Watching Movies with the Sound Off (2013), he left Rostrum and signed with the major label Warner Bros. Records in 2014. With them, he released five studio albums: GO:OD AM (2015), The Divine Feminine (2016), Swimming (2018), and the posthumous albums Circles (2020) and Balloonerism (2025). For Swimming, he was posthumously nominated for a Grammy Award for Best Rap Album. Along with recording, he also served as a record producer for himself and other artists under the pseudonym Larry Fisherman.
Miller struggled with addiction and substance abuse, which was often referenced in his lyrics. He died from an accidental drug overdose of cocaine, fentanyl, and alcohol at his home at the age of 26.',
   '["clm_wiki_mac-miller_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 213);

-- 52. Pop Smoke
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_pop-smoke', 'person', 'pop-smoke', 'Pop Smoke', 'published', 'Bashar Barakah Jackson (July 20, 1999 – February 19, 2020), known professionally as Pop Smoke, was an American rapper. Born and raised in Brooklyn, New York City, he rose to fame with the release of his 2019 singles "Welcome to the Party" and "Dior". He frequently collaborated with UK drill artists and producers, who employed more minimal and aggressive instrumentation than American drill artists ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_pop-smoke', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_pop-smoke_us', 'ent_pop-smoke', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_pop-smoke_intro', 'ent_pop-smoke', 'biography_intro', 'Introduction', 'Bashar Barakah Jackson (July 20, 1999 – February 19, 2020), known professionally as Pop Smoke, was an American rapper. Born and raised in Brooklyn, New York City, he rose to fame with the release of his 2019 singles "Welcome to the Party" and "Dior". He frequently collaborated with UK drill artists and producers, who employed more minimal and aggressive instrumentation than American drill artists from Chicago, reintroducing the sound as Brooklyn drill.
Following his rise to fame, record producer Rico Beats introduced Pop Smoke to Steven Victor in April 2019. Victor would later have Pop Smoke sign a recording contract with Victor Victor Worldwide and Republic Records. He released his debut mixtape Meet the Woo in July 2019. His second mixtape, Meet the Woo 2, was released on February 7, 2020, and debuted at number seven on the  Billboard 200, becoming the rapper''s first top-10 project in the United States.
Twelve days after the mixtape''s release, Pop Smoke was murdered during a home invasion in Los Angeles. Fellow New York rapper 50 Cent served as executive producer for his posthumous debut studio album, Shoot for the Stars, Aim for the Moon (2020), which debuted atop the Billboard 200; all 19 of its tracks entered the Billboard Hot 100. The album also spawned the singles "For the Night" (featuring DaBaby and Lil Baby) and "What You Know Bout Love". The following year, Republic released Pop Smoke''s second studio album, Faith (2021).',
   '["clm_wiki_pop-smoke_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 240);

-- 53. XXXTentacion
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_xxxtentacion', 'person', 'xxxtentacion', 'XXXTentacion', 'published', 'Jahseh Dwayne Ricardo Onfroy (January 23, 1998 – June 18, 2018), professionally known as XXXTentacion, was an American rapper, singer-songwriter, and record producer. Though a controversial figure due to his widely publicized legal troubles, XXXTentacion gained a cult following among his young fan base during his short career with his depression and alienation-themed music. Critics and audiences o', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_xxxtentacion', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_xxxtentacion_us', 'ent_xxxtentacion', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_xxxtentacion_intro', 'ent_xxxtentacion', 'biography_intro', 'Introduction', 'Jahseh Dwayne Ricardo Onfroy (January 23, 1998 – June 18, 2018), professionally known as XXXTentacion, was an American rapper, singer-songwriter, and record producer. Though a controversial figure due to his widely publicized legal troubles, XXXTentacion gained a cult following among his young fan base during his short career with his depression and alienation-themed music. Critics and audiences often credit him for his musical versatility, with his music exploring emo, trap, trap metal, nu metal, indie rock, lo-fi, hip-hop, R&B, and punk rock. He was considered to be a leading figure in the establishment of the emo rap and SoundCloud rap genres, which garnered mainstream attention during the mid-to-late 2010s. In the years after his death, Onfroy''s musical style would later go on to influence the development of rage music.
Born in Plantation, Florida, Onfroy spent most of his childhood in Lauderhill. He began writing music after being released from a juvenile detention center and soon started his music career on SoundCloud in 2013, employing styles and techniques that were considered unconventional in rap music such as distortion and heavy guitar-backed instrumentals, drawing inspiration from third-wave emo and grunge. In 2014, he formed the underground collective Members Only and, alongside other members of the collective, soon became a popular figure in SoundCloud rap, a trap music scene that takes elements of lo-fi music and harsh 808s. Onfroy gained mainstream attention with his 2016 single "Look at Me!". His debut studio album, 17 (2017), peaked at number two on the Billboard 200, while his second album, ? (2018), debuted atop the chart; both received triple platinum certifications by the Recording Industry Association of America (RIAA). The latter''s lead single, "Sad!", posthumously reached number one on the Billboard Hot 100 and had amassed more than 1.2 billion views on YouTube and 2.1 billion streams on Spotify by February 2024, in addition to having recei',
   '["clm_wiki_xxxtentacion_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 311);

-- 54. Nipsey Hussle
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_nipsey-hussle', 'person', 'nipsey-hussle', 'Nipsey Hussle', 'published', 'Ermias Joseph Asghedom (born Airmiess Joseph Asghedom; August 15, 1985 – March 31, 2019), known professionally as Nipsey Hussle, was an American rapper, activist and entrepreneur. Emerging from the West Coast hip-hop scene in the mid-2000s, Hussle self-released his debut mixtape, Slauson Boy Volume 1, to moderate local success, leading him to sign with Cinematic Music Group and Epic Records. ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_nipsey-hussle', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_nipsey-hussle_us', 'ent_nipsey-hussle', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_nipsey-hussle_intro', 'ent_nipsey-hussle', 'biography_intro', 'Introduction', 'Ermias Joseph Asghedom (born Airmiess Joseph Asghedom; August 15, 1985 – March 31, 2019), known professionally as Nipsey Hussle, was an American rapper, activist and entrepreneur. Emerging from the West Coast hip-hop scene in the mid-2000s, Hussle self-released his debut mixtape, Slauson Boy Volume 1, to moderate local success, leading him to sign with Cinematic Music Group and Epic Records. 
Born and raised in Los Angeles, Hussle gained a regional following for his Bullets Ain''t Got No Name mixtape series, as well as The Marathon, The Marathon Continues, and Crenshaw, the latter of which was purchased 100 times by American rapper Jay-Z for US$100 each. After multiple delays, his debut studio album Victory Lap (2018), peaked at number 2 on the Billboard 200, received critical acclaim, and was nominated for the Best Rap Album at the 61st Grammy Awards. His 2019 single, "Racks in the Middle" (featuring Roddy Ricch and Hit-Boy), and guest appearance alongside John Legend on DJ Khaled''s song "Higher", won Best Rap Performance and Best Rap/Sung Performance, respectively at the 62nd Grammy Awards.
Outside of music, Hussle inaugurated the Marathon Clothing store, which he founded along with partners Carless, the head of the agency, Karen Civil, and his brother Samiel Asghedom in 2017, and started a co-working environment which he named "Vector 90". On March 31, 2019, Hussle was fatally shot outside his store in South Central Los Angeles. Eric Holder, a 29-year-old man who confronted Hussle earlier that day, was arrested and charged with murder two days later. Holder was found guilty of first-degree murder on July 6, 2022. On February 22, 2023, Holder was sentenced to 60 years to life in prison.',
   '["clm_wiki_nipsey-hussle_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 277);

-- 55. Paul McCartney
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_paul-mccartney', 'person', 'paul-mccartney', 'Paul McCartney', 'published', 'Sir James Paul McCartney (born 18 June 1942) is an English musician and songwriter. He gained global fame with the Beatles, for whom he was the bassist and keyboardist, and shared primary songwriting and lead vocal duties with John Lennon. McCartney is known for his melodic approach to bass-playing, versatile tenor vocal range and musical eclecticism, exploring genres ranging from pre-rock and rol', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_paul-mccartney', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_paul-mccartney_us', 'ent_paul-mccartney', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_paul-mccartney_intro', 'ent_paul-mccartney', 'biography_intro', 'Introduction', 'Sir James Paul McCartney (born 18 June 1942) is an English musician and songwriter. He gained global fame with the Beatles, for whom he was the bassist and keyboardist, and shared primary songwriting and lead vocal duties with John Lennon. McCartney is known for his melodic approach to bass-playing, versatile tenor vocal range and musical eclecticism, exploring genres ranging from pre-rock and roll pop to classical, ballads and electronica. His songwriting partnership with Lennon is the most successful in music history.
Born in Liverpool, McCartney taught himself piano, guitar, and songwriting as a teenager, having been influenced by his father, a jazz player, and rock and roll performers such as Little Richard and Buddy Holly. He began his career when he joined Lennon''s skiffle group, the Quarrymen, in 1957, which evolved into the Beatles in 1960. Sometimes called "the cute Beatle", McCartney later immersed himself in the London avant-garde scene and played a key role in incorporating experimental aesthetics into the Beatles'' studio productions. Starting with the 1967 album Sgt. Pepper''s Lonely Hearts Club Band, he gradually became the band''s de facto leader, providing creative impetus for most of their music and film projects. Many of his Beatles songs, including "And I Love Her", "Yesterday", "Eleanor Rigby" and "Blackbird", rank among the most covered songs in history. Although primarily a bassist with the Beatles, he has played a number of other instruments, including keyboards, guitars and drums, on various songs with all of his associated bands and projects.
After the Beatles disbanded, he debuted as a solo artist with the 1970 album McCartney and went on to form the band Wings with his first wife, Linda, and Denny Laine. Under McCartney''s leadership, Wings became one of the most successful bands of the 1970s. He wrote or co-wrote their US or UK number-one hits, such as "My Love", "Band on the Run", "Listen to What the Man Said", "Silly Love Songs" and "Mull ',
   '["clm_wiki_paul-mccartney_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 322);

-- 56. Mick Jagger
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_mick-jagger', 'person', 'mick-jagger', 'Mick Jagger', 'published', 'Sir Michael Philip Jagger (born 26 July 1943) is an English musician, songwriter, and film producer known as the lead singer and founder member of the Rolling Stones. Jagger has co-written most of the Stones'' songs with lead guitarist Keith Richards; their songwriting partnership is one of the most successful in rock music history. His career has spanned more than six decades, and he has been wide', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_mick-jagger', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_mick-jagger_us', 'ent_mick-jagger', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_mick-jagger_intro', 'ent_mick-jagger', 'biography_intro', 'Introduction', 'Sir Michael Philip Jagger (born 26 July 1943) is an English musician, songwriter, and film producer known as the lead singer and founder member of the Rolling Stones. Jagger has co-written most of the Stones'' songs with lead guitarist Keith Richards; their songwriting partnership is one of the most successful in rock music history. His career has spanned more than six decades, and he has been widely described as one of the most popular and influential front men in the history of rock music. His distinctive voice and energetic live performances, along with Richards''s guitar style, have been the Rolling Stones'' trademark throughout the band''s career. Early in his career, Jagger gained notoriety for his romantic involvements and illicit drug use, and has often been portrayed as a countercultural figure.
Jagger was born and grew up in Dartford. He studied at the London School of Economics before abandoning his studies to focus on his career with the Rolling Stones. In the early 1970s, Jagger starred in the films Performance (1970) and Ned Kelly (1970), to mixed receptions. Beginning in the 1980s, he released a number of solo works, including four albums and the single "Dancing in the Street", a 1985 duet with David Bowie that reached No. 1 in the UK and Australia and was a top-ten hit in other countries.
In the 2000s, Jagger co-founded a film production company, Jagged Films, and produced feature films through the company beginning with the 2001 historical drama Enigma. He was also a member of the supergroup SuperHeavy from 2009 to 2011. Although relationships with his bandmates, particularly Richards, deteriorated during the 1980s, Jagger has always found more success with the Rolling Stones than with his solo and side projects. He was married to Bianca Pérez-Mora Macias from 1971 to 1978, and has had several other relationships; he has eight children with five women.
In 1989, Jagger was inducted into the Rock and Roll Hall of Fame as a member of the Rolling Stones and',
   '["clm_wiki_mick-jagger_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 332);

-- 57. Robert Plant
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_robert-plant', 'person', 'robert-plant', 'Robert Plant', 'published', 'Robert Anthony Plant (born 20 August 1948) is an English singer and songwriter. He was the lead singer and lyricist of the rock band Led Zeppelin from its founding in 1968 until their break-up in 1980. Since then, he has had a successful solo career, sometimes collaborating with other artists such as Alison Krauss. Regarded by many as one of the greatest singers in rock music, he is known for his ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_robert-plant', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_robert-plant_us', 'ent_robert-plant', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_robert-plant_intro', 'ent_robert-plant', 'biography_intro', 'Introduction', 'Robert Anthony Plant (born 20 August 1948) is an English singer and songwriter. He was the lead singer and lyricist of the rock band Led Zeppelin from its founding in 1968 until their break-up in 1980. Since then, he has had a successful solo career, sometimes collaborating with other artists such as Alison Krauss. Regarded by many as one of the greatest singers in rock music, he is known for his raw stage performances and his powerful, wide-ranging voice.
Plant was born and raised in the West Midlands area of England. On leaving grammar school he briefly trained as a chartered accountant, before leaving home aged 16 to concentrate on singing with a series of local blues bands, including Band of Joy with drummer John Bonham. In 1968 he was invited by manager Peter Grant and guitarist Jimmy Page to join the Yardbirds, which Grant and Page were attempting to keep going after some of its members had left. The new version of the Yardbirds, with Plant, changed their name to Led Zeppelin and, from the late 1960s until their disbandment in 1980, had international success.
Plant was a charismatic rock ''n'' roll frontman, comparable to ''70s contemporaries such as Mick Jagger of the Rolling Stones and Roger Daltrey of the Who. After Led Zeppelin dissolved in 1980, Plant continued to perform and record continuously on a variety of solo and group projects. His first two solo studio albums, Pictures at Eleven (1982) and The Principle of Moments (1983), each reached the top ten on the US Billboard 200.
With his rock and roll band the Honeydrippers he scored a top-ten hit single in 1984 with a cover version of Phil Phillips'' 1959 song "Sea of Love", which featured former Led Zeppelin bandmate Jimmy Page on guitar. Plant''s fourth solo studio album Now and Zen (1988) was certified 3× Platinum and is his biggest-selling solo album to date. In the 1990s, another reunion project called Page and Plant released two albums and earned a Grammy Award for Best Hard Rock Performance in 1998 fo',
   '["clm_wiki_robert-plant_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 344);

-- 58. Roger Waters
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_roger-waters', 'person', 'roger-waters', 'Roger Waters', 'published', 'George Roger Waters (born 6 September 1943) is an English singer-songwriter, musician and political activist. In 1965, he co-founded the rock band Pink Floyd as the bassist. Following the departure of the band''s main songwriter Syd Barrett in 1968, Waters became Pink Floyd''s principal lyricist, co-lead vocalist and conceptual leader until his departure in 1985.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_roger-waters', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_roger-waters_us', 'ent_roger-waters', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_roger-waters_intro', 'ent_roger-waters', 'biography_intro', 'Introduction', 'George Roger Waters (born 6 September 1943) is an English singer-songwriter, musician and political activist. In 1965, he co-founded the rock band Pink Floyd as the bassist. Following the departure of the band''s main songwriter Syd Barrett in 1968, Waters became Pink Floyd''s principal lyricist, co-lead vocalist and conceptual leader until his departure in 1985.
Pink Floyd achieved international success with the concept albums The Dark Side of the Moon (1973), Wish You Were Here (1975), Animals (1977), The Wall (1979), and The Final Cut (1983). By the early 1980s, they had become one of the most acclaimed and commercially successful groups in popular music. Amid creative differences, Waters left in 1985 and began a legal dispute over the use of the band''s name and material. They settled out of court in 1987. His solo work includes the studio albums The Pros and Cons of Hitch Hiking (1984), Radio K.A.O.S. (1987), Amused to Death (1992), and Is This the Life We Really Want? (2017). In 2005, he released Ça Ira, an opera translated from Étienne and Nadine Roda-Gils''s libretto about the French Revolution.
In 1990, Waters staged one of the largest rock concerts in history, The Wall – Live in Berlin, with an attendance of 450,000. As a member of Pink Floyd, he was inducted into the US Rock and Roll Hall of Fame in 1996 and the UK Music Hall of Fame in 2005. Later in 2005, he reunited with Pink Floyd for the Live 8 global awareness event, their only appearance with Waters since 1981. He has toured extensively as a solo act since 1999. He performed The Dark Side of the Moon for his world tour of 2006–2008, and The Wall Live, his tour of 2010–2013, was the highest-grossing tour by a solo artist at the time.
Waters incorporates political themes in his work, many of them considered radical. He supports socialism, has defended Vladimir Putin and the Russian invasion of Ukraine, and has been ruled by a court to have made defamatory comments. Waters is a prominent supporter of Pale',
   '["clm_wiki_roger-waters_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 344);

-- 59. Pete Townshend
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_pete-townshend', 'person', 'pete-townshend', 'Pete Townshend', 'published', 'Peter Dennis Blandford Townshend (; born 19 May 1945) is an English musician and songwriter. He is the co-founder, guitarist, keyboardist, second lead vocalist, and principal songwriter of the Who, one of the most influential rock bands of the 1960s and 1970s. His aggressive playing style, poetic songwriting techniques and authorship of two rock operas with the Who, as well as other projects, have', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_pete-townshend', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_pete-townshend_us', 'ent_pete-townshend', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_pete-townshend_intro', 'ent_pete-townshend', 'biography_intro', 'Introduction', 'Peter Dennis Blandford Townshend (; born 19 May 1945) is an English musician and songwriter. He is the co-founder, guitarist, keyboardist, second lead vocalist, and principal songwriter of the Who, one of the most influential rock bands of the 1960s and 1970s. His aggressive playing style, poetic songwriting techniques and authorship of two rock operas with the Who, as well as other projects, have earned him critical acclaim.
Townshend has written more than 100 songs for 12 of the Who''s studio albums. These include concept albums, the rock operas Tommy (1969) and Quadrophenia (1973), plus popular rock radio staples such as Who''s Next (1971); as well as dozens more that appeared as non-album singles, bonus tracks on reissues, and tracks on rarities compilation albums such as Odds & Sods (1974). He has also written more than 100 songs that have appeared on his solo albums, as well as radio jingles and television theme songs.
While known primarily as a guitarist, Townshend also plays keyboards, banjo, accordion, harmonica, ukulele, mandolin, violin, synthesiser, bass guitar, and drums; he is self-taught on all of these instruments and plays on his own solo albums, several Who albums, and as a guest contributor to an array of other artists'' recordings. Townshend has also contributed to and authored many newspaper and magazine articles, book reviews, essays, books, and scripts, and he has collaborated as a lyricist and composer for many other musical acts.
In 1983, Townshend received the Brit Award for Lifetime Achievement and in 1990 he was inducted into the Rock and Roll Hall of Fame as a member of the Who. Townshend was ranked No. 3 in Dave Marsh''s 1994 list of Best Guitarists in The New Book of Rock Lists. In 2001, he received a Grammy Lifetime Achievement Award as a member of the Who; and in 2008 he received Kennedy Center Honors. He was ranked No. 10 in Gibson.com''s 2011 list of the top 50 guitarists, and No. 37 on Rolling Stone''s 2023 list of 250 greatest guitaris',
   '["clm_wiki_pete-townshend_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 336);

-- 60. Roger Daltrey
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_roger-daltrey', 'person', 'roger-daltrey', 'Roger Daltrey', 'published', 'Sir Roger Harry Daltrey (born 1 March 1944) is an English singer, songwriter and actor. He is the co-founder and lead vocalist of the rock band the Who, known for his powerful voice and charismatic stage presence. His stage persona earned him a position as one of the "gods of rock and roll".', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_roger-daltrey', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_roger-daltrey_us', 'ent_roger-daltrey', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_roger-daltrey_intro', 'ent_roger-daltrey', 'biography_intro', 'Introduction', 'Sir Roger Harry Daltrey (born 1 March 1944) is an English singer, songwriter and actor. He is the co-founder and lead vocalist of the rock band the Who, known for his powerful voice and charismatic stage presence. His stage persona earned him a position as one of the "gods of rock and roll".
Daltrey''s hit songs with the Who include "My Generation", "Pinball Wizard", "Won''t Get Fooled Again", "Baba O''Riley", "Who Are You" and "You Better You Bet". He began a solo career in 1973 while still a member of the Who, and has released ten solo studio albums, five compilation albums and one live album. His solo hits include "Giving It All Away", "Free Me", "Without Your Love", "Walking in My Sleep", "After the Fire" and "Under a Raging Moon".
The Who are considered one of the most influential rock bands of the 20th century and have sold over 100 million records worldwide. As a member of the band, Daltrey received a Lifetime achievement award from the British Phonographic Industry in 1988, and from the Grammy Foundation in 2001. He was inducted into the Rock and Roll Hall of Fame in 1990, and the UK Music Hall of Fame in 2005. He and Pete Townshend received Kennedy Center Honors in 2008, and The George and Ira Gershwin Award for Lifetime Musical Achievement at UCLA on 21 May 2016. 
Daltrey was ranked number 61 on Rolling Stone''s list of the 100 greatest singers of all time in 2008; Planet Rock listeners voted him rock''s fifth-greatest voice in 2009. Daltrey has also been an actor and film producer, with roles in films, theatre, and television. In June 2025 Daltrey was appointed a Knight Bachelor in the Birthday Honours for services to charity and music.',
   '["clm_wiki_roger-daltrey_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 293);

-- 61. Mick Fleetwood
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_mick-fleetwood', 'person', 'mick-fleetwood', 'Mick Fleetwood', 'published', 'Michael John Kells Fleetwood (born 24 June 1947) is an English musician, songwriter and actor. He is the drummer, co-founder and leader of the rock band Fleetwood Mac. His surname was merged with that of the group''s bassist John "Mac" McVie (they were the only two members to appear on every studio album during the band''s run) to form the name of the band. He was inducted into the Rock and Roll Hal', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_mick-fleetwood', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_mick-fleetwood_us', 'ent_mick-fleetwood', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_mick-fleetwood_intro', 'ent_mick-fleetwood', 'biography_intro', 'Introduction', 'Michael John Kells Fleetwood (born 24 June 1947) is an English musician, songwriter and actor. He is the drummer, co-founder and leader of the rock band Fleetwood Mac. His surname was merged with that of the group''s bassist John "Mac" McVie (they were the only two members to appear on every studio album during the band''s run) to form the name of the band. He was inducted into the Rock and Roll Hall of Fame with Fleetwood Mac in 1998. 
Born in Redruth, Cornwall, Fleetwood lived in Egypt and Norway for much of his childhood. Choosing to follow his musical interests, Fleetwood travelled to London at the age of 15, eventually forming the first incarnation of Fleetwood Mac with Peter Green, Jeremy Spencer and Bob Brunning. After several album releases and line-up changes, the group moved to the United States in 1974. Fleetwood then invited Lindsey Buckingham and Stevie Nicks to join. Buckingham and Nicks contributed to much of Fleetwood Mac''s later commercial success, including the celebrated album Rumours, while Fleetwood''s own determination to keep the band together was essential to the band''s longevity. Fleetwood has also enjoyed a solo career, published written works, and flirted briefly with acting.',
   '["clm_wiki_mick-fleetwood_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 199);

-- 62. Stevie Nicks
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_stevie-nicks', 'person', 'stevie-nicks', 'Stevie Nicks', 'published', 'Stephanie Lynn Nicks (born May 26, 1948) is an American singer-songwriter, known for her work with the band Fleetwood Mac and as a solo artist.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_stevie-nicks', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_stevie-nicks_us', 'ent_stevie-nicks', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_stevie-nicks_intro', 'ent_stevie-nicks', 'biography_intro', 'Introduction', 'Stephanie Lynn Nicks (born May 26, 1948) is an American singer-songwriter, known for her work with the band Fleetwood Mac and as a solo artist.
After starting her career as a duo with her then-boyfriend Lindsey Buckingham, releasing the album Buckingham Nicks to little success, the pair joined Fleetwood Mac in 1975, helping the band to become one of the best-selling music acts of all time with over 120 million records sold worldwide. Rumours, the band''s second album with Nicks, became one of the best-selling albums worldwide, being certified 21× platinum in the US. In 1981, while remaining a member of Fleetwood Mac, Nicks began her solo career, releasing the studio album Bella Donna, which topped the Billboard 200 and has reached multiplatinum status. She has released eight studio albums as a solo artist and seven with Fleetwood Mac, selling a certified total of 65 million copies in the US alone.
After the release of her first solo album, Rolling Stone named her the "Reigning Queen of Rock and Roll". Nicks was named one of the 100 Greatest Songwriters of All Time and one of the 100 Greatest Singers of All Time by Rolling Stone. Her Fleetwood Mac songs "Landslide", "Rhiannon", and "Dreams", with the last being the band''s only number one hit in the U.S., together with her solo hit "Edge of Seventeen", have all been included in Rolling Stone''s list of the 500 Greatest Songs of All Time. Nicks is the first woman to have been inducted twice into the Rock and Roll Hall of Fame; she was inducted as a member of Fleetwood Mac in 1998 and was inducted as a solo artist in 2019.
Nicks has garnered eight Grammy Award nominations and two American Music Award nominations as a solo artist. She has won numerous awards with Fleetwood Mac, including a Grammy Award for Album of the Year in 1978 for Rumours. The albums Fleetwood Mac, Rumours, and Bella Donna have been included in the "Greatest of All Time Billboard 200 Albums" chart by Billboard. Rumours was also rated the seventh-great',
   '["clm_wiki_stevie-nicks_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 345);

-- 63. Michael Jackson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_michael-jackson', 'person', 'michael-jackson', 'Michael Jackson', 'published', 'Michael Joseph Jackson (August 29, 1958 – June 25, 2009) was an American singer, songwriter, dancer, and philanthropist. Dubbed the "King of Pop", he is widely regarded as one of the most culturally significant figures of the 20th century. His musical achievements broke American racial barriers and made him a dominant figure worldwide. Through his songs, music videos, concerts, and fashion, he tra', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_michael-jackson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_michael-jackson_us', 'ent_michael-jackson', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_michael-jackson_intro', 'ent_michael-jackson', 'biography_intro', 'Introduction', 'Michael Joseph Jackson (August 29, 1958 – June 25, 2009) was an American singer, songwriter, dancer, and philanthropist. Dubbed the "King of Pop", he is widely regarded as one of the most culturally significant figures of the 20th century. His musical achievements broke American racial barriers and made him a dominant figure worldwide. Through his songs, music videos, concerts, and fashion, he transformed visual performance in popular music, popularizing street dance moves such as the moonwalk, the robot, and the anti-gravity lean. Jackson is often deemed the greatest entertainer of all time.
The eighth of ten children in the Jackson family, he made his public debut at age six as the lead singer of the Jackson 5. Jackson rose to solo stardom with Off the Wall (1979) and achieved unprecedented global success with Thriller (1982), the best-selling album in history. The music videos for "Thriller", "Beat It", and "Billie Jean" redefined the medium. Bad (1987) was the first album to produce five US Billboard Hot 100 number-one singles: "I Just Can''t Stop Loving You", "Bad", "The Way You Make Me Feel", "Man in the Mirror", and "Dirty Diana". Dangerous (1991) and HIStory (1995) were also successful. Jackson''s final album, Invincible (2001), is the most expensive ever made.
From the mid-1980s, Jackson came under public scrutiny for his relationships, lifestyle, and changing appearance. He was accused of sexually abusing a child in 1993 and settled out of court in 1994. In 2005, he was tried and acquitted on other child sexual abuse charges. While preparing for This Is It, a series of comeback concerts, he died in 2009 from an overdose of propofol administered by his personal physician, Conrad Murray. His death caused unprecedented surges in internet traffic and a spike in music sales. Posthumous Jackson releases include the documentary Michael Jackson''s This Is It (2009) and the albums Michael (2010) and Xscape (2014). The 2019 documentary Leaving Neverland detailed furthe',
   '["clm_wiki_michael-jackson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 320);

-- 64. Marvin Gaye
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_marvin-gaye', 'person', 'marvin-gaye', 'Marvin Gaye', 'published', 'Marvin Pentz Gaye Jr. (né Gay; April 2, 1939 – April 1, 1984) was an American R&B and soul singer, songwriter, musician, and record producer. Commonly referred to as the "Prince of Motown" and "Prince of Soul", he helped to shape the sound of Motown and soul music in the 1960s and 1970s. A cultural icon, Gaye is often considered one of the greatest singers and songwriters of all time.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_marvin-gaye', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_marvin-gaye_us', 'ent_marvin-gaye', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_marvin-gaye_intro', 'ent_marvin-gaye', 'biography_intro', 'Introduction', 'Marvin Pentz Gaye Jr. (né Gay; April 2, 1939 – April 1, 1984) was an American R&B and soul singer, songwriter, musician, and record producer. Commonly referred to as the "Prince of Motown" and "Prince of Soul", he helped to shape the sound of Motown and soul music in the 1960s and 1970s. A cultural icon, Gaye is often considered one of the greatest singers and songwriters of all time.
Born and raised in Washington, D.C., Gaye began his career being guided by Harvey Fuqua, who put him in his group, Harvey and the Moonglows, before Gaye ventured into a solo career at the beginning of the 1960s. Signing to Motown''s Tamla subsidiary, he achieved stardom with a series of hit singles such as "How Sweet It Is (to Be Loved by You)", "Ain''t That Peculiar" and "I Heard It Through the Grapevine" and also earned success as a collaborative duet partner with several female artists, most notably, Diana Ross and Tammi Terrell, the latter of whom recorded the hits "Ain''t No Mountain High Enough" and "You''re All I Need to Get By". Following the successful release of his landmark album, What''s Going On and its hit of the same name, in 1971, Gaye became one of the first Motown artists to break away from the reins of a production company, later producing the albums, Let''s Get It On, I Want You and Here, My Dear.
After a period as a tax exile in Europe from 1980 to 1981 and leaving Motown for Columbia Records in 1982, Gaye re-emerged that year with "Sexual Healing" and its album, Midnight Love, which became his most successful single and album respectively to date and performed a memorable rendition of "The Star-Spangled Banner" at the 1983 NBA All-Star Game. The success of "Sexual Healing" led to Gaye winning an American Music Award and two Grammy Awards.
On April 1, 1984, Gaye was shot and killed by his father, Marvin Gay Sr. at his parents'' house in Western Heights, Los Angeles, on the eve of his 45th birthday. Gay Sr. later pleaded no contest to voluntary manslaughter, receiving a si',
   '["clm_wiki_marvin-gaye_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 355);

-- 65. Smokey Robinson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_smokey-robinson', 'person', 'smokey-robinson', 'Smokey Robinson', 'published', 'William "Smokey" Robinson Jr. (born February 19, 1940) is an American R&B and soul singer, songwriter, and record producer. He was the founder and frontman of the pioneering Motown vocal group the Miracles, for which he was also chief songwriter and producer. He led the group from its 1955 origins, when they were called the Five Chimes, until 1972, when he retired from the group to focus on his ro', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_smokey-robinson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_smokey-robinson_us', 'ent_smokey-robinson', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_smokey-robinson_intro', 'ent_smokey-robinson', 'biography_intro', 'Introduction', 'William "Smokey" Robinson Jr. (born February 19, 1940) is an American R&B and soul singer, songwriter, and record producer. He was the founder and frontman of the pioneering Motown vocal group the Miracles, for which he was also chief songwriter and producer. He led the group from its 1955 origins, when they were called the Five Chimes, until 1972, when he retired from the group to focus on his role as Motown Records vice president. Robinson returned to the music industry as a solo artist the following year. He left Motown in 1999.
Robinson was inducted into the Rock and Roll Hall of Fame in 1987 and awarded the 2016 Library of Congress Gershwin Prize for his lifetime contributions to popular music. He is a double Hollywood Walk of Fame Inductee, as a solo artist (1983) and as a member of the Miracles (2009). In 2022, he was inducted into the Black Music & Entertainment Walk of Fame.',
   '["clm_wiki_smokey-robinson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 158);

-- 66. The Temptations
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_the-temptations', 'person', 'the-temptations', 'The Temptations', 'published', 'The Temptations are an American vocal group formed in Detroit, Michigan, in 1961 as The Elgins, known for their string of successful singles and albums with Motown from the 1960s to  the mid-1970s. The group''s work with producer Norman Whitfield, beginning with the Top 10 hit single "Cloud Nine" in October 1968, pioneered psychedelic soul, and was significant in the evolution of R&B and soul music', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_the-temptations', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_the-temptations_us', 'ent_the-temptations', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_the-temptations_intro', 'ent_the-temptations', 'biography_intro', 'Introduction', 'The Temptations are an American vocal group formed in Detroit, Michigan, in 1961 as The Elgins, known for their string of successful singles and albums with Motown from the 1960s to  the mid-1970s. The group''s work with producer Norman Whitfield, beginning with the Top 10 hit single "Cloud Nine" in October 1968, pioneered psychedelic soul, and was significant in the evolution of R&B and soul music. The group members were known for their choreography, distinct harmonies, and dress style. Having sold tens of millions of albums, the Temptations are among the most successful groups in popular music.
Featuring five male vocalists and dancers (save for brief periods with fewer or more members), the group''s founding members came from two rival Detroit vocal groups: Otis Williams, Elbridge "Al" Bryant, and Melvin Franklin of (Otis Williams &) The Distants, and Eddie Kendricks and Paul Williams of The Primes. In 1964, Bryant was replaced by David Ruffin, who was the lead vocalist on a number of the group''s biggest hits, including "My Girl" (1964), "Ain''t Too Proud to Beg" (1966), and "I Wish It Would Rain" (1967). Ruffin was replaced in 1968 by Dennis Edwards, with whom the group continued to record hit records such as "Cloud Nine" (1968), "I Can''t Get Next to You" (1969), and "Ball of Confusion (That''s What the World Is Today)" (1970). Kendricks and Paul Williams both left the group in 1971, with subsequent members including Richard Street, Damon Harris, Glenn Leonard, Ron Tyson, and Ali-Ollie Woodson, the last of whom was the lead singer on late-period hit "Treat Her Like a Lady" in 1984 and the theme song for the children''s movement program Kids in Motion in 1987.
Over the course of their career, the Temptations released four Billboard Hot 100 number-one singles and fourteen R&B number-one singles. The group was the first Motown act to win a Grammy Award –  for "Cloud Nine" in 1969 – and the Grammy Lifetime Achievement Award, received in 2013. They won four Grammy Awards ',
   '["clm_wiki_the-temptations_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 334);

-- 67. The Supremes
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_the-supremes', 'person', 'the-supremes', 'The Supremes', 'published', 'The Supremes were an American girl group formed in Detroit, Michigan, in 1959 as the Primettes. The premier act of Motown Records during the 1960s, the Supremes were the most commercially successful of Motown''s acts and the most successful American vocal group, with twelve number 1 singles on the Billboard Hot 100. Most of these hits were written and produced by Motown''s main songwriting and produ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_the-supremes', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_the-supremes_us', 'ent_the-supremes', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_the-supremes_intro', 'ent_the-supremes', 'biography_intro', 'Introduction', 'The Supremes were an American girl group formed in Detroit, Michigan, in 1959 as the Primettes. The premier act of Motown Records during the 1960s, the Supremes were the most commercially successful of Motown''s acts and the most successful American vocal group, with twelve number 1 singles on the Billboard Hot 100. Most of these hits were written and produced by Motown''s main songwriting and production team, Holland–Dozier–Holland. The breakthrough by the Supremes is considered to have made it possible for future African-American R&B and soul musicians to find mainstream success. Billboard ranked the Supremes as the 16th greatest Hot 100 artist of all time.
Florence Ballard, Mary Wilson, Diana Ross, and Betty McGlown, the original members, were all from the Brewster-Douglass public housing project in Detroit. Forming as the Primettes, they were the sister act to the Primes (with Paul Williams and Eddie Kendricks, who went on to form the Temptations). Barbara Martin replaced McGlown in 1960, and the group signed with Motown the following year as the Supremes. Martin left the group in early 1962, and Ross, Ballard, and Wilson continued as a trio.
During the mid-1960s, the Supremes achieved mainstream success with Ross as lead singer and Holland–Dozier–Holland as its songwriting and production team. In 1967, Motown president Berry Gordy renamed the group Diana Ross & the Supremes, and replaced Ballard with Cindy Birdsong. In 1970, Ross left to pursue a solo career and was replaced by Jean Terrell, and the group''s name was reverted to the Supremes. During the mid-1970s, the lineup continued to change with Lynda Laurence, Scherrie Payne and Susaye Greene joining until the group, 18 years after its formation, disbanded in 1977.',
   '["clm_wiki_the-supremes_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 279);

-- 68. Four Tops
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_the-four-tops', 'person', 'the-four-tops', 'Four Tops', 'published', 'The Four Tops are an American vocal group formed in Detroit, Michigan, in 1953 as the Four Aims. They were one of the most commercially successful American pop music groups of the 1960s and helped propel Motown Records to international fame. The group''s repertoire has incorporated elements of soul, R&B, disco, adult contemporary, doo-wop, jazz, and show tunes. Lead singer Levi Stubbs, along with b', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_the-four-tops', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_the-four-tops_us', 'ent_the-four-tops', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_the-four-tops_intro', 'ent_the-four-tops', 'biography_intro', 'Introduction', 'The Four Tops are an American vocal group formed in Detroit, Michigan, in 1953 as the Four Aims. They were one of the most commercially successful American pop music groups of the 1960s and helped propel Motown Records to international fame. The group''s repertoire has incorporated elements of soul, R&B, disco, adult contemporary, doo-wop, jazz, and show tunes. Lead singer Levi Stubbs, along with backing vocalists Abdul "Duke" Fakir, Renaldo "Obie" Benson and Lawrence Payton remained together in the group for more than four decades, performing until 1997 without a change in personnel. Along with fellow Motown groups the Miracles, the Marvelettes, Martha and the Vandellas, the Temptations, and the Supremes, the Four Tops helped to establish the "Motown sound"; pop-friendly soul and R&B with a clean, polished production quality. They were notable for having Stubbs, a baritone, as their lead singer, whereas most other male and mixed vocal groups of the time were fronted by tenors.
The group was the primary male vocal group for the highly successful songwriting and production team of Holland–Dozier–Holland, who wrote numerous hit singles for Motown. These included two Billboard Hot 100 number-one hits for the Tops: "I Can''t Help Myself (Sugar Pie Honey Bunch)" in 1965 and "Reach Out I''ll Be There" in 1966. The group continued to chart singles into the 1970s, including the million-seller "Ain''t No Woman" (1973). The Four Tops were inducted into the Rock and Roll Hall of Fame in 1990, the Vocal Group Hall of Fame in 1999, and the National Rhythm & Blues Hall of Fame in 2013. In 2010, Rolling Stone ranked them number 79 on its list of the "100 Greatest Artists of All Time".
On July 20, 2024, the last surviving original member, Fakir, retired. He died two days later.',
   '["clm_wiki_the-four-tops_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 296);

-- 69. The Miracles
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_the-miracles', 'person', 'the-miracles', 'The Miracles', 'published', 'The Miracles (known as Smokey Robinson and the Miracles from 1965 to 1972) were an American vocal group formed in Detroit, Michigan in 1955. They were the first successful recording act for Motown Records and are considered one of the most important and most influential groups in the history of pop, soul, rhythm and blues, and rock and roll music. The group''s international fame in the 1960s, along', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_the-miracles', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_the-miracles_us', 'ent_the-miracles', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_the-miracles_intro', 'ent_the-miracles', 'biography_intro', 'Introduction', 'The Miracles (known as Smokey Robinson and the Miracles from 1965 to 1972) were an American vocal group formed in Detroit, Michigan in 1955. They were the first successful recording act for Motown Records and are considered one of the most important and most influential groups in the history of pop, soul, rhythm and blues, and rock and roll music. The group''s international fame in the 1960s, alongside other Motown acts, led to a greater acceptance of R&B and pop music in the U.S., with the group being considered influential and important in the development of modern popular music.
The group was formed as The Five Chimes and changed their name first to the Matadors, and then after adding Claudette, to the Miracles in 1958, by which time their lineup consisted of Smokey Robinson, Claudette Rogers (later Robinson), Bobby Rogers, Warren "Pete" Moore,  Marv Tarplin, and Ronnie White. Referred to as Motown''s "soul supergroup", the Miracles recorded more than 50 chart hits, including 26 Top 40 pop hits, 16 of which reached the Billboard Hot 100 Top 20, seven Top 10 singles, and a number-one single (1967''s "The Tears of a Clown") while the Robinsons and Tarplin were members. Following the departure of Tarplin and the Robinsons, the rest of the group continued with singer Billy Griffin and manager Martin Pichinson, who helped rebuild the Miracles. They scored two final Top 20 singles, "Do It Baby" (1974) and "Love Machine" (1975), a second No. 1 hit, which topped the charts before the group departed for Columbia Records in 1977. Recording as a quintet at Columbia Records, Billy''s brother Donald Griffin replacing Marv Tarplin, after a few releases, they disbanded in 1978. The group has won numerous music industry awards, including four songs inducted into the Grammy Hall of Fame, several BMI and ASCAP Songwriters'' Awards, and induction into the Rock and Roll Hall of Fame.
On the R&B charts, the Miracles scored 26 Top 10 Billboard R&B hits, with four R&B No. 1''s, and 11 U.S. R',
   '["clm_wiki_the-miracles_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 337);

-- 70. The Platters
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_the-platters', 'person', 'the-platters', 'The Platters', 'published', 'The Platters are an American rhythm and blues vocal group formed in 1952. They are one of the most successful vocal bands of the early rock and roll era. Their distinctive sound bridges the pre-rock Tin Pan Alley tradition and the new burgeoning genre. The act has gone through multiple line-ups over the years, earning it the branding tag "Many Voices One Name", with the most successful incarnation', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_the-platters', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_the-platters_us', 'ent_the-platters', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_the-platters_intro', 'ent_the-platters', 'biography_intro', 'Introduction', 'The Platters are an American rhythm and blues vocal group formed in 1952. They are one of the most successful vocal bands of the early rock and roll era. Their distinctive sound bridges the pre-rock Tin Pan Alley tradition and the new burgeoning genre. The act has gone through multiple line-ups over the years, earning it the branding tag "Many Voices One Name", with the most successful incarnation comprising lead tenor Tony Williams, David Lynch, Paul Robi, naming member Herb Reed, and Zola Taylor. The Platters had 40 charting singles on the  Billboard Hot 100 between 1955 and 1967, including four number-one hits. In 1990, the band was inducted into the Rock and Roll Hall of Fame. The group continues to perform around the world with "Herb Reed Enterprises" (an LLC set up by Reed in response to numerous fake Platters groups) owning the rights and trademark to the name.

',
   '["clm_wiki_the-platters_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 150);

-- 71. The Drifters
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_the-drifters', 'person', 'the-drifters', 'The Drifters', 'published', 'The Drifters are an American pop and R&B/soul vocal group. They were originally formed as a backing group for Clyde McPhatter, formerly the lead tenor of Billy Ward and his Dominoes in 1953. The second group of Drifters, formed in 1959 and led by Ben E. King, were originally an up-and-coming group named the Five Crowns. After 1965, members moved between both groups, and many of these formed other ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_the-drifters', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_the-drifters_us', 'ent_the-drifters', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_the-drifters_intro', 'ent_the-drifters', 'biography_intro', 'Introduction', 'The Drifters are an American pop and R&B/soul vocal group. They were originally formed as a backing group for Clyde McPhatter, formerly the lead tenor of Billy Ward and his Dominoes in 1953. The second group of Drifters, formed in 1959 and led by Ben E. King, were originally an up-and-coming group named the Five Crowns. After 1965, members moved between both groups, and many of these formed other groups of Drifters as well. Over the succeeding decades, several different bands, all called the Drifters, can trace roots back to these original groups, but contain few—if any—original members.
According to Rolling Stone, the Drifters were the least stable of the great vocal groups, as they were low-paid musicians hired by George Treadwell, who owned the Drifters'' name from 1955, after McPhatter left. The Treadwell Drifters line has had 60 musicians, including several splinter groups by former Drifters members (not under Treadwell''s management). These groups are usually identified with a possessive credit such as "Bill Pinkney''s Original Drifters" and "Charlie Thomas'' Drifters".
The three golden eras of the Drifters were the early 1950s, the 1960s, and the early 1970s (post-Atlantic period). From these, the first Drifters, formed by Clyde McPhatter, were inducted into the Vocal Group Hall of Fame as "The Drifters". The second Drifters, featuring Ben E. King, were separately inducted into the Vocal Group Hall of Fame as "Ben E. King and the Drifters". In their induction, the Rock and Roll Hall of Fame selected four members from the first Drifters (Clyde McPhatter, Bill Pinkney, Gerhart Thrasher and Johnny Moore), two from the second Drifters (Ben E. King and Charlie Thomas), and one from the post-Atlantic Drifters (Rudy Lewis). There were other lead singers too, but the group was less successful during those times.
According to the Vocal Group Hall of Fame: "Through turmoil and changes, the (original) Drifters managed to set musical trends and give the public 13 chart hits,',
   '["clm_wiki_the-drifters_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 322);

-- 72. The Coasters
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_the-coasters', 'person', 'the-coasters', 'The Coasters', 'published', 'The Coasters are an American rhythm and blues/rock and roll vocal group who had a string of hits in the late 1950s. With hits including "Searchin''", "Young Blood", "Charlie Brown", "Poison Ivy", and "Yakety Yak", their most memorable songs were written by the songwriting and producing team of Leiber and Stoller. Although the Coasters originated outside of mainstream doo-wop, their records were so ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_the-coasters', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_the-coasters_us', 'ent_the-coasters', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_the-coasters_intro', 'ent_the-coasters', 'biography_intro', 'Introduction', 'The Coasters are an American rhythm and blues/rock and roll vocal group who had a string of hits in the late 1950s. With hits including "Searchin''", "Young Blood", "Charlie Brown", "Poison Ivy", and "Yakety Yak", their most memorable songs were written by the songwriting and producing team of Leiber and Stoller. Although the Coasters originated outside of mainstream doo-wop, their records were so frequently imitated that they became an important part of the doo-wop legacy through the 1960s.   In 1987, they were the first vocal group inducted into the Rock and Roll Hall of Fame.',
   '["clm_wiki_the-coasters_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 95);

-- 73. Rihanna
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_rihanna', 'person', 'rihanna', 'Rihanna', 'published', 'Robyn Rihanna Fenty (  ree-AN-ə; born February 20, 1988) is a Barbadian singer, songwriter, businesswoman, and actress. An influential figure in popular culture, she is known for her multifaceted career, artistic reinventions, and eclectic fashion style. With estimated sales exceeding 250 million records, Rihanna is one of the best-selling music artists of all time.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_rihanna', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_rihanna_us', 'ent_rihanna', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_rihanna_intro', 'ent_rihanna', 'biography_intro', 'Introduction', 'Robyn Rihanna Fenty (  ree-AN-ə; born February 20, 1988) is a Barbadian singer, songwriter, businesswoman, and actress. An influential figure in popular culture, she is known for her multifaceted career, artistic reinventions, and eclectic fashion style. With estimated sales exceeding 250 million records, Rihanna is one of the best-selling music artists of all time.
After signing with Def Jam Recordings, Rihanna debuted with the Caribbean-inspired records Music of the Sun (2005) and A Girl Like Me (2006), both of which reached the top ten of the US Billboard 200. Their respective lead singles, "Pon de Replay" and "SOS", peaked at numbers two and one on the US Billboard Hot 100. Adopting a more mature image, Rihanna rose to stardom and transitioned to dance-pop and R&B with her best-selling album Good Girl Gone Bad (2007) and its reissue, subtitled Reloaded (2008). The project yielded a string of successful songs, including the US number-one singles "Umbrella", "Take a Bow", and "Disturbia". Her guest appearances on "Live Your Life", "Love the Way You Lie", and "The Monster" also topped the Billboard Hot 100.
After exploring more personal themes on the rock-influenced record Rated R (2009), Rihanna returned to her more upbeat sound with the dance-pop albums Loud (2010) and Talk That Talk (2011), and topped the Billboard 200 with her synth-pop set Unapologetic (2012). Departing from Def Jam in favour of Roc Nation, she released the eclectic Anti (2016)—her second number-one album. These albums contained the US number-one singles "Rude Boy", "Only Girl (In the World)", "What''s My Name?", "S&M", "We Found Love", "Diamonds", and "Work". Since 2016, Rihanna has been releasing singles and performing sporadically. She has also ventured into acting, and her film roles include Battleship (2012), Home (2015), Ocean''s 8 (2018), and Smurfs (2025).
Rihanna is the recipient of numerous accolades, including nine Grammy Awards, twelve Billboard Music Awards, thirteen American Music ',
   '["clm_wiki_rihanna_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 312);

-- 74. Megan Thee Stallion
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_megan-thee-stallion', 'person', 'megan-thee-stallion', 'Megan Thee Stallion', 'published', 'Megan Jovon Ruth Pete (born February 15, 1995), known professionally as Megan Thee Stallion, is an American rapper, songwriter, and actress. She gained recognition when videos of her freestyling went viral on social media, leading her to sign with 1501 Certified Entertainment in 2018. She achieved mainstream success the following year with the release of her commercial mixtape Fever (2019), follow', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_megan-thee-stallion', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_megan-thee-stallion_us', 'ent_megan-thee-stallion', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_megan-thee-stallion_intro', 'ent_megan-thee-stallion', 'biography_intro', 'Introduction', 'Megan Jovon Ruth Pete (born February 15, 1995), known professionally as Megan Thee Stallion, is an American rapper, songwriter, and actress. She gained recognition when videos of her freestyling went viral on social media, leading her to sign with 1501 Certified Entertainment in 2018. She achieved mainstream success the following year with the release of her commercial mixtape Fever (2019), followed by the extended play Suga (2020), both of which peaked within the top ten of the Billboard 200 chart.
Megan had her breakthrough with her 2019 singles "Hot Girl Summer" and "Cash Shit"; her 2020 single "Savage" spawned a remix featuring Beyoncé that won two Grammy Awards, peaked atop the US Billboard Hot 100, and was included on her debut studio album Good News (2020). Its single "Body" made her the first female act to release three number-one songs on the Streaming Songs chart within a year. That same year, she guest appeared on Cardi B''s single "WAP", which became her second number one song on the Hot 100. Her compilation album Something for Thee Hotties (2021) peaked at number five on the Billboard 200 and included the Grammy Award-nominated top-20 single "Thot Shit".
Following the shooting trial after she was shot in the foot by Tory Lanez, as well as contractual issues with her record label, Megan left both 1501 and 300 Entertainment. Her second studio album, Traumazine (2022), included the single "Sweetest Pie" (with Dua Lipa)—which peaked at number 15 in the US—and served as her final release with the aforementioned labels. She founded her own record label, Hot Girl Productions, in 2023, through which she released her third studio album, Megan (2024). It spawned the single "Hiss", which became Megan''s first solo song to top the Billboard Hot 100 and made her the first solo female rapper to debut atop the Billboard Global 200.
Megan is the recipient of various accolades, including six BET Awards, five BET Hip Hop Awards, four American Music Awards, four MTV Video M',
   '["clm_wiki_megan-thee-stallion_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 332);

-- 75. SZA
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_sza', 'person', 'sza', 'SZA', 'published', 'Solána Imani Rowe (born November 8, 1989), known professionally as SZA (  SIZ-ə), is an American singer-songwriter. Known for her diaristic songwriting and genre explorations, she is regarded as a prominent figure in influencing contemporary R&B music and popularizing alternative R&B.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_sza', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_sza_us', 'ent_sza', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_sza_intro', 'ent_sza', 'biography_intro', 'Introduction', 'Solána Imani Rowe (born November 8, 1989), known professionally as SZA (  SIZ-ə), is an American singer-songwriter. Known for her diaristic songwriting and genre explorations, she is regarded as a prominent figure in influencing contemporary R&B music and popularizing alternative R&B.
After gaining attention online with two self-released extended plays (EP), SZA signed to Top Dawg Entertainment in 2013. Under the label, she released the lo-fi and psychedelic EP Z (2014) and her R&B debut album Ctrl (2017). The latter was critically acclaimed and placed in several year-end lists. Following Ctrl, she engaged in a series of high-profile collaborations over the next four years. These included the top-ten singles "All the Stars" (2018) with Kendrick Lamar, which garnered Academy Award and Golden Globe nominations, and "Kiss Me More" (2021) with Doja Cat, which won SZA her first Grammy Award.
SZA''s acclaimed and multi-genre second album SOS (2022) became the first by a woman to spend 100 weeks within the Billboard 200''s top ten. The album also broke the record for the longest-running US top-ten by a Black musician.  Its fifth single, "Kill Bill", was the third best-selling song of 2023 and peaked atop the Billboard Hot 100. From 2024 to 2025, SZA achieved a string of top-tens with "Saturn" and "30 for 30", both from the deluxe reissue of SOS entitled Lana (2024), and her longest-running US number-one song, "Luther". Her 2025 Grand National Tour with Lamar is the highest-grossing co-headlining tour in history.
SZA has earned numerous accolades throughout her career, including seven Grammy Awards, a Brit Award, three American Music Awards, a Guild of Music Supervisors Award and two Billboard Women in Music awards, including Woman of the Year. She has co-written songs for artists such as Nicki Minaj, Beyoncé, Travis Scott, Schoolboy Q, and Rihanna. In 2024, she received the Hal David Starlight Award from the Songwriters Hall of Fame.',
   '["clm_wiki_sza_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 313);

-- 76. Olivia Rodrigo
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_olivia-rodrigo', 'person', 'olivia-rodrigo', 'Olivia Rodrigo', 'published', 'Olivia Isabel Rodrigo (born February 20, 2003) is an American singer-songwriter and actress. She began her career as a child actress, appearing in commercials and the direct-to-video film An American Girl: Grace Stirs Up Success (2015). She rose to prominence with her leading roles in the Disney Channel series Bizaardvark (2016–2019) and the Disney+ series High School Musical: The Musical: The Ser', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_olivia-rodrigo', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_olivia-rodrigo_us', 'ent_olivia-rodrigo', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_olivia-rodrigo_intro', 'ent_olivia-rodrigo', 'biography_intro', 'Introduction', 'Olivia Isabel Rodrigo (born February 20, 2003) is an American singer-songwriter and actress. She began her career as a child actress, appearing in commercials and the direct-to-video film An American Girl: Grace Stirs Up Success (2015). She rose to prominence with her leading roles in the Disney Channel series Bizaardvark (2016–2019) and the Disney+ series High School Musical: The Musical: The Series (2019–2022).
Rodrigo shifted her focus to music and signed with Geffen Records in 2020. Her debut studio album, Sour (2021), topped the US Billboard 200 and nine other charts worldwide. It was preceded by the US Billboard Hot 100 number-one singles "Drivers License" and "Good 4 U". She was the subject of a documentary, Olivia Rodrigo: Driving Home 2 U (2022). Her next two studio albums, Guts (2023) and You Seem Pretty Sad for a Girl So in Love (2026), produced the US number-one singles "Vampire" and "Drop Dead" respectively, making her the first artist to have each lead single from their first three albums debut atop the chart.
Rodrigo''s accolades include three Grammy Awards, four MTV Video Music Awards, and seven Billboard Music Awards. She was named Time''s Entertainer of the Year in 2021, Billboard''s Woman of the Year in 2022, and ASCAP''s Pop Music Songwriter of the Year in both 2022 and 2024.',
   '["clm_wiki_olivia-rodrigo_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 217);

-- 77. Travis Scott
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_travis-scott', 'person', 'travis-scott', 'Travis Scott', 'published', 'Jacques Bermon Webster II (born April 30, 1991), known professionally as Travis Scott, is an American rapper, singer, songwriter, and record producer. Scott has had five number-one hits on the U.S. Billboard Hot 100 chart, along with a total of over one hundred charting songs. In addition to ten Grammy Award nominations, he has won a Latin Grammy Award, Billboard Music Award, MTV Video Music Award', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_travis-scott', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_travis-scott_us', 'ent_travis-scott', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_travis-scott_intro', 'ent_travis-scott', 'biography_intro', 'Introduction', 'Jacques Bermon Webster II (born April 30, 1991), known professionally as Travis Scott, is an American rapper, singer, songwriter, and record producer. Scott has had five number-one hits on the U.S. Billboard Hot 100 chart, along with a total of over one hundred charting songs. In addition to ten Grammy Award nominations, he has won a Latin Grammy Award, Billboard Music Award, MTV Video Music Award, and several BET Hip Hop Awards. Scott is known for his dynamic live performances, eclectic musical style and fashion, while taking influences from artists including Kanye West and Kid Cudi. 
In 2012, Scott signed his first major-label recording contract with Epic Records, as well as a publishing deal with Kanye West''s GOOD Music as an in-house producer. In April 2013, he entered a joint-venture record deal with Georgia-based rapper T.I.''s Grand Hustle Records. Scott self-released his first full-length project, a mixtape titled Owl Pharaoh in 2013, which was followed by his second mixtape, Days Before Rodeo (2014). His debut studio album, Rodeo (2015), was met with critical and commercial success; it spawned the singles "3500" (featuring Future and 2 Chainz) and "Antidote", the latter peaked at number 16 on the Billboard Hot 100. His second album, Birds in the Trap Sing McKnight (2016), became his first number-one album on the Billboard 200 chart. In the following year, Scott formed the duo Huncho Jack with rapper Quavo, with whom he released an eponymous collaborative album (2017).
Scott''s third studio album, Astroworld (2018), was released to widespread critical acclaim and became his second consecutive number-one album on the Billboard 200. It yielded his first Billboard Hot 100 number-one single, "Sicko Mode" (featuring Drake). In late 2019, Scott''s vanity label imprint, Cactus Jack Records, released the compilation album JackBoys, which also topped the Billboard 200. With his 2019 single "Highest in the Room" and his 2020 singles "The Scotts" (with Kid Cudi) and "Fran',
   '["clm_wiki_travis-scott_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 317);

-- 78. Post Malone
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_post-malone', 'person', 'post-malone', 'Post Malone', 'published', 'Austin Richard Post (born July 4, 1995), known professionally as Post Malone, is an American singer, rapper, songwriter, record producer, and actor. His music blends various genres including pop, hip-hop, trap, country, R&B, and rock. ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_post-malone', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_post-malone_us', 'ent_post-malone', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_post-malone_intro', 'ent_post-malone', 'biography_intro', 'Introduction', 'Austin Richard Post (born July 4, 1995), known professionally as Post Malone, is an American singer, rapper, songwriter, record producer, and actor. His music blends various genres including pop, hip-hop, trap, country, R&B, and rock. 
Malone began his musical career in 2011, and earned mainstream recognition with his 2015 cloud rap debut single, "White Iverson". The song led him to sign with Republic Records, and served as lead single for his debut studio album, Stoney (2016), which spawned the Diamond-certified single "Congratulations" (featuring Quavo). His second album, Beerbongs & Bentleys (2018), debuted atop the US Billboard 200 and set numerous streaming records. It contained the US Billboard Hot 100 number-one singles "Rockstar" (featuring 21 Savage) and "Psycho" (featuring Ty Dolla Sign), and was nominated for Album of the Year at the 61st Grammy Awards. His third Hot 100 number-one single, "Sunflower", a duet with Swae Lee, was released for the accompanying soundtrack to the 2018 animated film Spider-Man: Into the Spider-Verse; it became the highest-certified song in RIAA history and was the first to receive a 2× Diamond certification. 
Malone''s third album, Hollywood''s Bleeding (2019), became his second project to both debut atop the Billboard 200 and receive Grammy Award nomination for Album of the Year. It spawned the single "Circles", which spent 61 weeks on the Hot 100, becoming Malone''s biggest hit single to date. Malone''s fourth and fifth albums, Twelve Carat Toothache (2022) and Austin (2023), both peaked at number two on the Billboard 200. In 2024, he topped the Billboard Hot 100 twice more with his guest appearance on Taylor Swift''s "Fortnight" and his first country pop song, "I Had Some Help" (featuring Morgan Wallen). The latter served as the lead single for Malone''s sixth album and country music debut, F-1 Trillion (2024), which became his third number-one album on the Billboard 200.
Malone is among the best-selling music artists, with over 1',
   '["clm_wiki_post-malone_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 316);

-- 79. The Weeknd
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_the-weeknd', 'person', 'the-weeknd', 'The Weeknd', 'published', 'Abel Tesfaye (born Abel Makkonen Tesfaye; February 16, 1990), known professionally as the Weeknd, is a Canadian singer-songwriter, record producer, and actor. Regarded as an influential figure in popular music, he is known for his light-lyric tenor vocal range and falsetto, alternative R&B sound, and dark aesthetics, as well as the cinematic visuals and storytelling of his music videos. His accola', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_the-weeknd', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_the-weeknd_us', 'ent_the-weeknd', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_the-weeknd_intro', 'ent_the-weeknd', 'biography_intro', 'Introduction', 'Abel Tesfaye (born Abel Makkonen Tesfaye; February 16, 1990), known professionally as the Weeknd, is a Canadian singer-songwriter, record producer, and actor. Regarded as an influential figure in popular music, he is known for his light-lyric tenor vocal range and falsetto, alternative R&B sound, and dark aesthetics, as well as the cinematic visuals and storytelling of his music videos. His accolades include 4 Grammy Awards, 20 Billboard Music Awards, 22 Juno Awards, 6 American Music Awards, 3 MTV Video Music Awards, and a Latin Grammy Award.
Tesfaye began releasing music anonymously in 2009. After co-founding the record label XO, he released three mixtapes—House of Balloons, Thursday, and Echoes of Silence—in 2011. He signed with Republic Records to compile the mixtapes into the compilation album Trilogy (2012), before releasing his debut studio album, Kiss Land (2013). Following collaborations and film soundtrack contributions from 2013 and 2014, Tesfaye blended alternative R&B with pop on his second and third studio albums, Beauty Behind the Madness (2015) and Starboy (2016); both debuted atop the US Billboard 200 and featured the Billboard Hot 100 number-one singles "Can''t Feel My Face", "The Hills", "Starboy", and "Die for You". His debut extended play (EP), My Dear Melancholy (2018), featured the US top-ten single "Call Out My Name".
Tesfaye began an album trilogy based on three time points, starting with the dream pop and new wave-inspired album After Hours (2020), which spawned the chart-topping singles "Heartless" and "Save Your Tears", as well as "Blinding Lights"—the best-performing song in the Billboard Hot 100''s history and the most-streamed song on Spotify. The trilogy''s latter two installments, Dawn FM (2022) and Hurry Up Tomorrow (2025), featured the US top-ten singles, "Take My Breath" and "Timeless".
Tesfaye is one of the best-selling and most-streamed artists of all time. He has amassed eight diamond-certified singles from the Recording Industry A',
   '["clm_wiki_the-weeknd_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 307);

-- 80. Nicki Minaj
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_nicki-minaj', 'person', 'nicki-minaj', 'Nicki Minaj', 'published', 'Onika Tanya Maraj-Petty (born December 8, 1982), known professionally as Nicki Minaj (  NIK-ee min-AHZH), is a Trinidadian rapper, singer, and songwriter. Dubbed the "Queen of Rap" and one of the most influential rappers of all time, she is noted for her dynamic rap flow, witty lyrics, musical versatility, and alter egos, and is credited as a driving force in the mainstream resurgence of female ra', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_nicki-minaj', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_nicki-minaj_us', 'ent_nicki-minaj', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_nicki-minaj_intro', 'ent_nicki-minaj', 'biography_intro', 'Introduction', 'Onika Tanya Maraj-Petty (born December 8, 1982), known professionally as Nicki Minaj (  NIK-ee min-AHZH), is a Trinidadian rapper, singer, and songwriter. Dubbed the "Queen of Rap" and one of the most influential rappers of all time, she is noted for her dynamic rap flow, witty lyrics, musical versatility, and alter egos, and is credited as a driving force in the mainstream resurgence of female rap since the 2010s.
Raised in New York City, Minaj began rapping professionally in the early 2000s and gained recognition with her three mixtapes between 2007 and 2009. Minaj''s debut studio album, Pink Friday (2010), opened with the largest female rap album sales week of the 21st century, topped the US Billboard 200, and spawned the single "Super Bass". She explored dance-pop on her second US number-one album, Pink Friday: Roman Reloaded (2012), which produced the top-five single, "Starships". She returned to her hip-hop roots with The Pinkprint (2014) aculnd Queen (2018), which yielded the singles "Anaconda" and "Chun-Li". Minaj achieved her first Billboard Hot 100 number-one singles with the 2020 duets "Say So" and "Trollz"; the former was the first female rap collaboration to top the chart. Her fifth studio album, Pink Friday 2 (2023), made her the female rapper with the most US number-one albums (three) and spawned her first solo US number-one single, "Super Freaky Girl". Its concert tour became the highest-grossing by a female rapper and one of the top five highest-grossing tours by a rapper in history.
Minaj is one of the world''s best-selling music artists and the best-selling female rapper, with over 100 million records sold. She has over 54 million certified singles sold in the US and three diamond-certified singles, and in 2024 became the first female rapper with multiple diamond-certified solo songs (two) by the RIAA. In 2023, Billboard and Vibe ranked Minaj as the greatest female rapper of all time. Her various accolades include a Brit Award, five Billboard Music ',
   '["clm_wiki_nicki-minaj_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 324);

-- 81. Selena Gomez
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_selena-gomez', 'person', 'selena-gomez', 'Selena Gomez', 'published', 'Selena Marie Gomez (born July 22, 1992) is an American actress, singer, songwriter, businesswoman, and producer. Gomez began her career as a child actress on the children''s television series Barney & Friends (2002–2004), and emerged as a teen idol for her leading role as Alex Russo on the Disney Channel sitcom Wizards of Waverly Place (2007–2012). She signed with Hollywood Records in 2008 and form', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_selena-gomez', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_selena-gomez_us', 'ent_selena-gomez', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_selena-gomez_intro', 'ent_selena-gomez', 'biography_intro', 'Introduction', 'Selena Marie Gomez (born July 22, 1992) is an American actress, singer, songwriter, businesswoman, and producer. Gomez began her career as a child actress on the children''s television series Barney & Friends (2002–2004), and emerged as a teen idol for her leading role as Alex Russo on the Disney Channel sitcom Wizards of Waverly Place (2007–2012). She signed with Hollywood Records in 2008 and formed the band Selena Gomez & the Scene, which released three albums: Kiss & Tell (2009), A Year Without Rain (2010), and When the Sun Goes Down (2011).
Gomez has released three solo albums. The first of these, Stars Dance (2013), featured 
"Come & Get It". She followed it with Revival (2015), and reached the top five of the US Billboard Hot 100 with its singles "Good for You" and "Same Old Love". Rare (2020) produced the US number-one single "Lose You to Love Me". She also launched the Spanish EP Revelación (2021) and her fourth album I Said I Love You First (2025) with her husband Benny Blanco. Other collaborations include "We Don''t Talk Anymore", "It Ain''t Me", "Wolves", "Taki Taki" and "Calm Down".
She has starred in films, including Another Cinderella Story (2008), Monte Carlo (2011), Spring Breakers (2012), Hotel Transylvania film franchise (2012–2022), The Fundamentals of Caring (2016), The Dead Don''t Die (2019), and Emilia Pérez (2024). Gomez has produced series such as 13 Reasons Why (2017–2020), and Selena + Chef (2020–2023), and has played a lead role in Only Murders in the Building since 2021. Her accolades include an Actor Award, an American Music Award, a Billboard Music Award, a Cannes Film Festival Award, two MTV Video Music Awards and 16 Guinness World Records.
Gomez is a UNICEF Goodwill Ambassador and advocates for mental health and equality. She founded the cosmetic company Rare Beauty, which was valued at $2 billion, and the  Rare Impact Fund. Recognized in listicles such as the Forbes 30 Under 30 (2016 and 2020) and Time 100 (2020), she has received variou',
   '["clm_wiki_selena-gomez_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 334);

-- 82. Miley Cyrus
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_miley-cyrus', 'person', 'miley-cyrus', 'Miley Cyrus', 'published', 'Miley Ray Cyrus ( MY-lee SY-rəs, born Destiny Hope Cyrus; November 23, 1992) is an American singer, songwriter, and actress. An influential figure in popular music, Cyrus is known for her evolving artistry and image reinventions. She was an established child actress before developing a successful entertainment career as an adult. Cyrus emerged as a teen idol with her portrayal of Miley Stewart in ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_miley-cyrus', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_miley-cyrus_us', 'ent_miley-cyrus', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_miley-cyrus_intro', 'ent_miley-cyrus', 'biography_intro', 'Introduction', 'Miley Ray Cyrus ( MY-lee SY-rəs, born Destiny Hope Cyrus; November 23, 1992) is an American singer, songwriter, and actress. An influential figure in popular music, Cyrus is known for her evolving artistry and image reinventions. She was an established child actress before developing a successful entertainment career as an adult. Cyrus emerged as a teen idol with her portrayal of Miley Stewart in the Disney Channel television series Hannah Montana (2006–2011), growing a profitable franchise and achieving two number-one soundtracks on the Billboard 200.
Cyrus''s solo career began with her US number-one pop rock albums Meet Miley Cyrus (2007) and Breakout (2008). The single "Party in the U.S.A.", from her EP The Time of Our Lives (2009), became one of the best-selling singles. She sought a mature image with her dance-pop album Can''t Be Tamed (2010) and later transitioned to trap-pop and R&B with Bangerz (2013), which featured "We Can''t Stop" and her first Billboard Hot 100 number-one "Wrecking Ball". She explored psychedelic, country, and rock genres on her subsequent albums Miley Cyrus & Her Dead Petz (2015), Younger Now (2017), and Plastic Hearts (2020). After signing with Columbia Records, she released her eighth studio album Endless Summer Vacation (2023) and the visual album Something Beautiful (2025); the former was led by her second US number-one single "Flowers", which became the best-selling single of 2023 and won two Grammy Awards, including Record of the Year.
As an actress and television personality, Cyrus starred in the films Bolt (2008), Hannah Montana: The Movie (2009), The Last Song (2010), LOL (2012), and So Undercover (2013). On television, she was the subject of the documentary Miley: The Movement (2013), led the miniseries Crisis in Six Scenes (2017), served as a coach on two seasons of The Voice (2016–2017), and starred in the "Rachel, Jack and Ashley Too" episode of Black Mirror (2019). She also hosted the holiday special Miley''s New Year''s Eve Pa',
   '["clm_wiki_miley-cyrus_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 321);

-- 83. Madonna
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_madonna', 'person', 'madonna', 'Madonna', 'published', 'Madonna Louise Ciccone ( chih-KOH-nee; born August 16, 1958) is an American singer, songwriter, record producer, and actress. Dubbed the "Queen of Pop", she is known for her continual reinvention and versatility in music production, songwriting, and visual presentation. Her works, which concern social, political, sexual, and religious themes, have generated both controversy and critical acclaim. R', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_madonna', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_madonna_us', 'ent_madonna', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_madonna_intro', 'ent_madonna', 'biography_intro', 'Introduction', 'Madonna Louise Ciccone ( chih-KOH-nee; born August 16, 1958) is an American singer, songwriter, record producer, and actress. Dubbed the "Queen of Pop", she is known for her continual reinvention and versatility in music production, songwriting, and visual presentation. Her works, which concern social, political, sexual, and religious themes, have generated both controversy and critical acclaim. Regarded as one of the most influential musicians of all time, Madonna broke gender barriers in popular music and has had a significant socio-cultural impact across her career. 
Born and raised in Michigan, Madonna moved to New York City in 1978 to pursue a career in dance. After performing as a drummer, guitarist, and vocalist in the rock bands Breakfast Club and Emmy, she rose to stardom with her debut studio album, Madonna (1983). She has scored eighteen multi-platinum albums globally, including Like a Virgin (1984), True Blue (1986), and The Immaculate Collection (1990)—some of the best-selling albums of all time—and Confessions on a Dance Floor (2005), her 21st-century bestseller. Like a Prayer (1989), Ray of Light (1998), and Music (2000) were ranked among Rolling Stone''s greatest albums of all time. Madonna''s top-charting singles include "Like a Virgin", "Papa Don''t Preach", "La Isla Bonita", "Like a Prayer", "Vogue", "Take a Bow", "Frozen", "Music", "Hung Up", and "4 Minutes".
Madonna has starred in films such as Desperately Seeking Susan (1985), Dick Tracy (1990), A League of Their Own (1992), and Evita (1996). Although many of her films were not well-received, she won the Golden Globe Award for Best Actress for portraying the titular politician in the lattermost. Her business endeavors encompass the entertainment company Maverick (1992–2009), which included Maverick Records—one of the most successful artist-run labels. Madonna has also pursued fashion brands, written works, health clubs, and filmmaking. She contributes to various charities, having founded the Ray o',
   '["clm_wiki_madonna_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 303);

-- 84. Pink
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_pink', 'person', 'pink', 'Pink', 'published', 'Pink is a pale tint of red or rose, the color of the pink flower. It was first used as a color name in the late 17th century. A combination of pink and white is associated with innocence, whereas a combination of pink and black links to eroticism and seduction. ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_pink', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_pink_us', 'ent_pink', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_pink_intro', 'ent_pink', 'biography_intro', 'Introduction', 'Pink is a pale tint of red or rose, the color of the pink flower. It was first used as a color name in the late 17th century. A combination of pink and white is associated with innocence, whereas a combination of pink and black links to eroticism and seduction. 
In the 21st century, pink is seen as a symbol of femininity, though it has not always been seen this way. Prior to the second half of the 20th century, pink frequently reflected masculinity. Scholars have linked the decisive feminization of pink to the emergence of Barbie in 1959.',
   '["clm_wiki_pink_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 99);

-- 85. Mary J. Blige
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_mary-j-blige', 'person', 'mary-j-blige', 'Mary J. Blige', 'published', 'Mary Jane Blige ( BLYZHE; born January 11, 1971) is an American singer, songwriter, actress, and entrepreneur. Often referred to by the honorifics "Queen of Hip-Hop Soul" and "Queen of R&B", her accolades include nine Grammy Awards, a Primetime Emmy Award, four American Music Awards, twelve NAACP Image Awards, and twelve Billboard Music Awards, including the Billboard Icon Award.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_mary-j-blige', 'deceased', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_mary-j-blige_us', 'ent_mary-j-blige', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_mary-j-blige_intro', 'ent_mary-j-blige', 'biography_intro', 'Introduction', 'Mary Jane Blige ( BLYZHE; born January 11, 1971) is an American singer, songwriter, actress, and entrepreneur. Often referred to by the honorifics "Queen of Hip-Hop Soul" and "Queen of R&B", her accolades include nine Grammy Awards, a Primetime Emmy Award, four American Music Awards, twelve NAACP Image Awards, and twelve Billboard Music Awards, including the Billboard Icon Award.
Blige signed to Uptown Records in 1988. Her debut album, What''s the 411? (1992), is credited for introducing the mix of R&B and hip hop into mainstream pop culture. Its 1993 remix album became the first album by a singer to have a rapper on every song, popularizing rap as a featuring act. Both What''s the 411? and her 1994 album My Life ranked among Rolling Stone''s 500 Greatest Albums of All Time list. Throughout her career, Blige has released 15 studio albums, four of which―Share My World (1997), Love & Live (2003), The Breakthrough (2005) and Growing Pains (2007)―have topped the Billboard 200 chart. Her biggest hits include "Real Love", "You Remind Me", "I''m Goin'' Down", "Not Gon'' Cry", "Everything", "No More Drama", "Be Without You", "One" (with U2), "Just Fine" and the Billboard Hot 100 number-one single "Family Affair".
Blige enhanced her popularity with an acting career. She was nominated for two Academy Awards for her supporting role as Florence Jackson in Mudbound (2017) and the film''s song "Mighty River", becoming the first person nominated for acting and songwriting in the same year. Her other film roles include Prison Song (2001), Rock of Ages (2012), Betty and Coretta (2013), Black Nativity (2013), Trolls World Tour (2020), Body Cam (2020), The Violent Heart (2021), Respect (2021) and Rob Peace (2024). Her television work includes the series The Umbrella Academy (2019) and Power Book II: Ghost (2020–2024).
Blige received a Legends Award at the World Music Awards in 2006, the Voice of Music Award from ASCAP in 2007 and a star on the Hollywood Walk of Fame in 2018. In 2010, Billboa',
   '["clm_wiki_mary-j-blige_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 331);

-- 86. Toni Braxton
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_toni-braxton', 'person', 'toni-braxton', 'Toni Braxton', 'published', 'Toni Michele Braxton (born October 7, 1967) is an American singer, songwriter, actress and television personality. Braxton has won seven Grammy Awards, nine Billboard Music Awards, seven American Music Awards, and numerous other accolades. In 2011, Braxton was inducted into the Georgia Music Hall of Fame. In 2017, she was honored with the Legend Award at the Soul Train Music Awards.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_toni-braxton', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_toni-braxton_us', 'ent_toni-braxton', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_toni-braxton_intro', 'ent_toni-braxton', 'biography_intro', 'Introduction', 'Toni Michele Braxton (born October 7, 1967) is an American singer, songwriter, actress and television personality. Braxton has won seven Grammy Awards, nine Billboard Music Awards, seven American Music Awards, and numerous other accolades. In 2011, Braxton was inducted into the Georgia Music Hall of Fame. In 2017, she was honored with the Legend Award at the Soul Train Music Awards.
In the late 1980s, Braxton began performing with her sisters in the R&B group the Braxtons; the group was signed to Arista Records. After attracting the attention of producers Antonio "L.A." Reid and Kenneth "Babyface" Edmonds, she signed with their label LaFace Records as a solo artist to release her self-titled debut studio album (1993). The album reached number one on the Billboard 200 chart, sold 10 million copies worldwide, and spawned the international hit singles "Another Sad Love Song" and "Breathe Again". Also a critical success, the album yielded Braxton three Grammy Awards, including for Best New Artist. Her success continued with the album Secrets (1996), which included the Billboard Hot 100-number one singles "You''re Makin'' Me High/Let It Flow" and "Un-Break My Heart".
Braxton''s third studio album, The Heat (2000), debuted at number two on the Billboard 200, spawning the international top-five single "He Wasn''t Man Enough". Braxton''s subsequent studio albums, Snowflakes (2001), More Than a Woman (2002), Libra (2005) and Pulse (2010), were released amid contractual disputes and health issues. In 2014, Braxton and former label boss Babyface released the duet album Love, Marriage & Divorce (2014), which won Best R&B Album at the 57th Annual Grammy Awards. Further label changes saw the release of Sex & Cigarettes (2018) under Def Jam Recordings and Spell My Name (2020) under Island.
Braxton is also active in television production and presentation. She competed in the seventh season of the reality competition series Dancing with the Stars. She executive produced and starred in Br',
   '["clm_wiki_toni-braxton_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 315);

-- 87. Monica
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_monica', 'person', 'monica', 'Monica', 'published', 'Monica may refer to:', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_monica', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_monica_us', 'ent_monica', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_monica_intro', 'ent_monica', 'biography_intro', 'Introduction', 'Monica may refer to:

',
   '["clm_wiki_monica_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 4);

-- 88. Michelle Williams
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_michelle-williams', 'person', 'michelle-williams', 'Michelle Williams', 'published', 'Michelle Williams may refer to:', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_michelle-williams', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_michelle-williams_us', 'ent_michelle-williams', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_michelle-williams_intro', 'ent_michelle-williams', 'biography_intro', 'Introduction', 'Michelle Williams may refer to:

Michelle Ann Williams (born circa 1965), American public health scholar
Michelle Williams (singer) (born 1979), American singer, previously a member of Destiny''s Child
Michelle Williams (actress) (born 1980), American actress
Michelle Toro (born 1991), Canadian swimmer; née Michelle Williams
Michelle C. Williams, Scottish physician
Michelle Williams (sprinter), winner of the 1991 NCAA 4 × 100 m championship',
   '["clm_wiki_michelle-williams_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 62);

-- 90. Solange Knowles
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_solange-knowles', 'person', 'solange-knowles', 'Solange Knowles', 'published', 'Solange Piaget Knowles ( soh-LAHNZH; born June 24, 1986), also known mononymously as Solange, is an American R&B singer, songwriter, and actress. She expressed an interest in music from an early age and had temporary stints as a backup dancer for Destiny''s Child, which featured her older sister Beyoncé among its members, before signing with their father Mathew Knowles''s label, Music World Entertai', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_solange-knowles', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_solange-knowles_us', 'ent_solange-knowles', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_solange-knowles_intro', 'ent_solange-knowles', 'biography_intro', 'Introduction', 'Solange Piaget Knowles ( soh-LAHNZH; born June 24, 1986), also known mononymously as Solange, is an American R&B singer, songwriter, and actress. She expressed an interest in music from an early age and had temporary stints as a backup dancer for Destiny''s Child, which featured her older sister Beyoncé among its members, before signing with their father Mathew Knowles''s label, Music World Entertainment. At 16, Knowles released her first studio album Solo Star (2002). She also appeared in the films Johnson Family Vacation (2004), and Bring It On: All or Nothing (2006).
In 2007, Knowles began to record music again. Heavily influenced by Motown girl groups, her second studio album Sol-Angel and the Hadley St. Dreams (2008) deviated from the pop-oriented music of her debut to Motown-inspired sounds from the 1960s and 1970s. It peaked at number nine on the US Billboard 200 and received positive reviews from critics. She followed this up with the 1980s pop and R&B-inspired extended play True (2012) on Terrible Records and her imprint Saint Records. Her third studio album, A Seat at the Table (2016) was released to widespread critical acclaim and became her first number-one album in the US. The album''s lead single, "Cranes in the Sky" won the Grammy for Best R&B Performance. Her fourth studio album, When I Get Home (2019), peaked within the top ten and saw further critical acclaim.
Knowles says that her first passion is songwriting. Frequently compared by the media to her sister Beyoncé, Knowles has claimed that they have different aspirations and are musically different. She has been ranked by Billboard as the 100th most successful dance artist of all time. In 2017, she was honored with the "Impact Award" at the Billboard Women in Music event. Her other ventures include an endorsement deal with Rimmel London and a line of hip-hop-oriented merchandise for young children. Knowles has also ventured into performance art, working in several international museums and exhibition',
   '["clm_wiki_solange-knowles_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 324);

-- 91. Tim McGraw
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_tim-mcgraw', 'person', 'tim-mcgraw', 'Tim McGraw', 'published', 'Samuel Timothy McGraw (born May 1, 1967) is an American country singer and actor. He has released 17 studio albums (11 for Curb Records, five for Big Machine Records and one for Arista Nashville). Ten of those albums have reached number one on the Top Country Albums charts, with his 1994 breakthrough album Not a Moment Too Soon being the top country album of 1994. In total, McGraw''s albums have pr', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_tim-mcgraw', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_tim-mcgraw_us', 'ent_tim-mcgraw', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_tim-mcgraw_intro', 'ent_tim-mcgraw', 'biography_intro', 'Introduction', 'Samuel Timothy McGraw (born May 1, 1967) is an American country singer and actor. He has released 17 studio albums (11 for Curb Records, five for Big Machine Records and one for Arista Nashville). Ten of those albums have reached number one on the Top Country Albums charts, with his 1994 breakthrough album Not a Moment Too Soon being the top country album of 1994. In total, McGraw''s albums have produced 65 singles, 25 of which have reached number one on the Hot Country Songs or Country Airplay charts.
Three of these singles – "It''s Your Love", "Just to See You Smile", and "Live Like You Were Dying" – were respectively the top country songs of 1997, 1998, and 2004 according to Billboard Year-End. He has also won three Grammy Awards, 14 Academy of Country Music awards, 11 Country Music Association (CMA) awards, 10 American Music Awards, and three People''s Choice Awards. His Soul2Soul II Tour, which was done in partnership with his wife, Faith Hill, is one of the highest-grossing tours in country music history, and one of the top five among all genres of music. He has sold more than 80 million records worldwide, making him one of the best-selling music artists of all time.
McGraw has ventured into acting, with supporting roles in The Blind Side, Friday Night Lights, The Kingdom, Tomorrowland, Four Christmases, flashback scenes in 2 episodes of Yellowstone, and The Shack as well as lead roles in Flicka (2006), Country Strong (2010), and 1883 (2021). He was a minority owner of the Arena Football League''s Nashville Kats. McGraw has been married to singer Faith Hill since 1996 and is the eldest son of former Major League Baseball (MLB) pitcher Tug McGraw.
McGraw was inducted into the Country Music Hall of Fame in 2026.',
   '["clm_wiki_tim-mcgraw_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 299);

-- 92. Luke Bryan
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_luke-bryan', 'person', 'luke-bryan', 'Luke Bryan', 'published', 'Thomas Luther "Luke" Bryan (born July 17, 1976) is an American country music singer, songwriter, and television personality. Bryan is a five-time "Entertainer of the Year", being awarded by both the Academy of Country Music Awards and the Country Music Association. In 2019, Bryan''s 2013 album Crash My Party received the first Album of the Decade award from the Academy of Country Music. He is one o', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_luke-bryan', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_luke-bryan_us', 'ent_luke-bryan', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_luke-bryan_intro', 'ent_luke-bryan', 'biography_intro', 'Introduction', 'Thomas Luther "Luke" Bryan (born July 17, 1976) is an American country music singer, songwriter, and television personality. Bryan is a five-time "Entertainer of the Year", being awarded by both the Academy of Country Music Awards and the Country Music Association. In 2019, Bryan''s 2013 album Crash My Party received the first Album of the Decade award from the Academy of Country Music. He is one of the world''s best-selling music artists, with over 75 million records sold. Since 2018, Bryan has been a judge on the singing competition television show American Idol.
His first ten albums – I''ll Stay Me (2007), Doin'' My Thing (2009), Tailgates & Tanlines (2011), Crash My Party (2013), Spring Break...Here to Party (2013), Spring Break...Checkin'' Out (2015), Kill the Lights (2015), Farm Tour... Here''s to the Farmer (2016), What Makes You Country (2017), and Born Here Live Here Die Here (2020) – have included 30 number-one hits. Bryan often co-writes with Jeff Stevens.',
   '["clm_wiki_luke-bryan_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 159);

-- 93. Maren Morris
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_maren-morris', 'person', 'maren-morris', 'Maren Morris', 'published', 'Maren Larae Morris (born April 10, 1990) is an American singer, songwriter, and actress from Arlington, Texas. Her music has been described as country pop and country incorporating elements of R&B, hip-hop, rock, and pop. Her accolades include a Grammy Award, an American Music Award, five Country Music Association Awards, and five Academy of Country Music Awards.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_maren-morris', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_maren-morris_us', 'ent_maren-morris', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_maren-morris_intro', 'ent_maren-morris', 'biography_intro', 'Introduction', 'Maren Larae Morris (born April 10, 1990) is an American singer, songwriter, and actress from Arlington, Texas. Her music has been described as country pop and country incorporating elements of R&B, hip-hop, rock, and pop. Her accolades include a Grammy Award, an American Music Award, five Country Music Association Awards, and five Academy of Country Music Awards.
Morris''s debut single, "My Church", from her major-label debut studio album, Hero (2016), became her breakout single at country radio and was followed by the commercially successful songs "80s Mercedes", "I Could Use a Love Song", and "Rich". In 2018, she was featured on the song "The Middle", written by Grey and Zedd, which reached the top ten in various countries.
Her second studio album, titled Girl, followed in 2019; it included number one US Country Airplay single "Girl" and number one Hot Country single "The Bones". Morris''s third studio album, Humble Quest (2022), earned her a Guinness World Records for most first-day and first-week streams for a country album by a female artist on Amazon Music. Dreamsicle was released as her fourth studio album in 2025, failing to enter the both US Billboard 200 and Top Country Albums charts.
In addition to her solo work, Morris has recorded as a member of the Highwomen. She had two albums certified for sales certifications in North America and has scored three number one songs on the Country Airplay chart as well as eight top ten songs on the Hot Country Songs chart. In 2018, Morris was featured in Forbes''s 30 Under 30 list. Out magazine recognized her as one of the most impactful and influential LGBTQ artists of 2024, and she was included on the Billboard Decade-End of the top 50 most successful Country Artists of the 2010s. In 2024, she was included on the Billboard list of the 100 Greatest Country Artists of All Time.

',
   '["clm_wiki_maren-morris_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 312);

-- 94. Sturgill Simpson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_sturgill-simpson', 'person', 'sturgill-simpson', 'Sturgill Simpson', 'published', 'John Sturgill Simpson (born June 8, 1978) is an American country music singer-songwriter and actor. Simpson''s style has been met with critical favor and frequent comparisons to outlaw country.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_sturgill-simpson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_sturgill-simpson_us', 'ent_sturgill-simpson', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_sturgill-simpson_intro', 'ent_sturgill-simpson', 'biography_intro', 'Introduction', 'John Sturgill Simpson (born June 8, 1978) is an American country music singer-songwriter and actor. Simpson''s style has been met with critical favor and frequent comparisons to outlaw country.
His first two albums, High Top Mountain and Metamodern Sounds in Country Music, were independently released in the US in 2013 and 2014 and in Europe, through the British record label Loose. The latter album was nominated for a Grammy Award for Best Americana Album, listed 18th on Rolling Stone''s "50 Best Albums of 2014," and named among "NPR''s 50 Favorite Albums of 2014." Simpson''s third album, A Sailor''s Guide to Earth, was released in April 2016 on Atlantic Records and was his first major-label release, later earning him Best Country Album at the 59th Grammy Awards and also being nominated for Album of the Year.
Simpson''s fourth album, Sound & Fury, was released on September 27, 2019, and was nominated for a Grammy Award for Best Rock Album at the 63rd Grammy Awards. He released two albums in 2020 – Cuttin'' Grass, Vol. 1 and Vol. 2 – which feature bluegrass interpretations of songs from across his catalog, and marked his return to independent music. His seventh studio album, The Ballad of Dood and Juanita was released in August 2021. Having promised to release only five studio albums under his own name (not counting the Cuttin'' Grass project) Simpson debuted the alter ego Johnny Blue Skies for his eighth album Passage du Desir. His second album as Johnny Blue Skies and his first to share billing with his band The Dark Clouds, Mutiny After Midnight, was released in 2026.',
   '["clm_wiki_sturgill-simpson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 269);

-- 95. Tyler Childers
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_tyler-childers', 'person', 'tyler-childers', 'Tyler Childers', 'published', 'Timothy Tyler Childers ( CHILL-dərz; born June 21, 1991) is an American country singer-songwriter. His music has been described as a mix of neotraditional country, bluegrass, folk, and honky-tonk. His breakthrough studio album, Purgatory (2017), was named one of the best albums of the year by several publications, and earned Childers an Americana Music Award. He subsequently received Grammy Award ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_tyler-childers', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_tyler-childers_us', 'ent_tyler-childers', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_tyler-childers_intro', 'ent_tyler-childers', 'biography_intro', 'Introduction', 'Timothy Tyler Childers ( CHILL-dərz; born June 21, 1991) is an American country singer-songwriter. His music has been described as a mix of neotraditional country, bluegrass, folk, and honky-tonk. His breakthrough studio album, Purgatory (2017), was named one of the best albums of the year by several publications, and earned Childers an Americana Music Award. He subsequently received Grammy Award nominations for his albums Long Violent History (2020) and Rustin'' in the Rain (2023) and the singles "All Your''n" (2019) and "In Your Love" (2023), the latter of which was his first top 10 hit on Billboard''s Hot Country Songs chart.',
   '["clm_wiki_tyler-childers_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 101);

-- 96. Zach Bryan
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_zach-bryan', 'person', 'zach-bryan', 'Zach Bryan', 'published', 'Zachary Lane Bryan (born April 2, 1996) is an American country singer-songwriter. Born in Yokosuka, Japan, and raised in Oologah, Oklahoma, he released two self-produced studio albums, DeAnn (2019) and Elisabeth (2020), before signing with Warner Records to release his third album and major label debut American Heartbreak (2022), which peaked at number five on the Billboard 200 and was led by the ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_zach-bryan', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_zach-bryan_us', 'ent_zach-bryan', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_zach-bryan_intro', 'ent_zach-bryan', 'biography_intro', 'Introduction', 'Zachary Lane Bryan (born April 2, 1996) is an American country singer-songwriter. Born in Yokosuka, Japan, and raised in Oologah, Oklahoma, he released two self-produced studio albums, DeAnn (2019) and Elisabeth (2020), before signing with Warner Records to release his third album and major label debut American Heartbreak (2022), which peaked at number five on the Billboard 200 and was led by the Billboard Hot 100-top ten single "Something in the Orange". His self-titled fourth album (2023) debuted atop the Billboard 200, while its lead single, "I Remember Everything" (featuring Kacey Musgraves), peaked atop the Billboard Hot 100, Hot Country Songs, and Hot Rock & Alternative Songs charts simultaneously, also earning him a Grammy Award for Best Country Duo/Group Performance. His fifth studio album, The Great American Bar Scene (2024), peaked at number two on the Billboard 200 and spawned the Billboard Hot 100 top-ten single "Pink Skies".
Throughout his career, Bryan has won several awards, including an Academy of Country Music Award, a Grammy Award and four Billboard Music Awards. He has sold over 30 million albums and singles, according to the RIAA.',
   '["clm_wiki_zach-bryan_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 184);

-- 97. Willie Nelson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_willie-nelson', 'person', 'willie-nelson', 'Willie Nelson', 'published', 'Willie Hugh Nelson (born April 29, 1933) is an American singer, guitarist, songwriter, actor, and activist. He was one of the main figures of the outlaw country subgenre that developed in the late 1960s as a reaction to the conservative restrictions of the Nashville sound. The critical success of his album Shotgun Willie (1973), combined with the critical and commercial success of Red Headed Stran', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_willie-nelson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_willie-nelson_us', 'ent_willie-nelson', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_willie-nelson_intro', 'ent_willie-nelson', 'biography_intro', 'Introduction', 'Willie Hugh Nelson (born April 29, 1933) is an American singer, guitarist, songwriter, actor, and activist. He was one of the main figures of the outlaw country subgenre that developed in the late 1960s as a reaction to the conservative restrictions of the Nashville sound. The critical success of his album Shotgun Willie (1973), combined with the critical and commercial success of Red Headed Stranger (1975) and Stardust (1978), made Nelson one of the most recognized artists in country music. Nelson has acted in over 30 films, co-authored several books, and has been involved in activism for the use of biofuels and the legalization of marijuana.
Nelson wrote his first song at the age of seven and joined his first band at ten. During high school, he toured locally with the Bohemian Polka as their lead singer and guitar player. After graduating from high school in 1950, he joined the U.S. Air Force but was later discharged due to back problems. After his return, Nelson attended Baylor University for two years but dropped out because he was succeeding in music. He worked as a disc jockey at radio stations in his native Texas, and at several radio stations in the Pacific Northwest, all the while working as a singer and songwriter throughout the late 1950s. During that time, he wrote songs that would become country standards, including "Funny How Time Slips Away", "Hello Walls", "Pretty Paper", and "Crazy". 
In 1960, Nelson moved to Nashville, Tennessee, then signed a publishing contract with Pamper Music that allowed him to join Ray Price''s band as a bassist. In 1962, he recorded his first album, ...And Then I Wrote. Its success enabled  Nelson to sign with RCA Victor in 1964 and join the Grand Ole Opry the following year. After mid-chart hits in the late 1960s and early 1970s, Nelson grew weary of the corporate Nashville music scene. In 1972, he moved to Austin, Texas, returned to performing, and appeared frequently at the Armadillo World Headquarters.
In 1973, after sig',
   '["clm_wiki_willie-nelson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 336);

-- 98. Waylon Jennings
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_waylon-jennings', 'person', 'waylon-jennings', 'Waylon Jennings', 'published', 'Waylon Arnold Jennings (born Wayland Arnold Jennings, June 15, 1937 – February 13, 2002) was an American country music singer, songwriter, musician, and actor. He is considered one of the pioneers of the outlaw movement in country music.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_waylon-jennings', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_waylon-jennings_us', 'ent_waylon-jennings', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_waylon-jennings_intro', 'ent_waylon-jennings', 'biography_intro', 'Introduction', 'Waylon Arnold Jennings (born Wayland Arnold Jennings, June 15, 1937 – February 13, 2002) was an American country music singer, songwriter, musician, and actor. He is considered one of the pioneers of the outlaw movement in country music.
Jennings started playing guitar at age eight and performed at fourteen on KVOW radio, after which he formed his first band, the Texas Longhorns. Jennings left high school at age sixteen, determined to become a musician, and worked as a performer and DJ on KVOW, KDAV, KYTI, KLLL, in Coolidge, Arizona, and Phoenix. In 1958, Buddy Holly arranged Jennings''s first recording session, a cover of "Jole Blon", and hired him to play bass. Jennings gave up his seat on the ill-fated airplane flight in 1959 that crashed and killed Holly, J. P. "the Big Bopper" Richardson and Ritchie Valens.
Jennings then returned to Texas, taking several years off from music before eventually moving to Arizona and forming a rockabilly club band, the Waylors, which became the house band at JD''s, a club in Tempe, Arizona. He recorded for independent label Trend Records and A&M Records, but did not achieve success until moving to RCA Victor in 1965. In 1972 he hired Neil Reshen as his manager, who negotiated significantly better touring and recording contracts. After Jennings gained creative control from RCA Records, he released the critically acclaimed albums Lonesome, On''ry and Mean and Honky Tonk Heroes, followed by the hit albums Dreaming My Dreams featuring number-one hit "Are You Sure Hank Done It This Way" and Are You Ready for the Country.
During the 1970s, Jennings drove outlaw country. With Willie Nelson, Tompall Glaser, and Jessi Colter he recorded country music''s first platinum album, Wanted! The Outlaws. It was followed by another platinum album, a first for any solo artist in country music, Ol'' Waylon, and the hit song "Luckenbach, Texas". He was featured on the 1978 album White Mansions, performed by various artists documenting the lives of Confedera',
   '["clm_wiki_waylon-jennings_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 327);

-- 99. Merle Haggard
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_merle-haggard', 'person', 'merle-haggard', 'Merle Haggard', 'published', 'Merle Ronald Haggard (April 6, 1937 – April 6, 2016) was an American country music singer, songwriter, guitarist, and fiddler. Widely regarded as one of the greatest and most influential figures in country music, he was a central pioneer of the Bakersfield sound. With a career spanning over five decades, Haggard had 38 number-one hits on the US country charts, several of which also made the Billbo', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_merle-haggard', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_merle-haggard_us', 'ent_merle-haggard', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_merle-haggard_intro', 'ent_merle-haggard', 'biography_intro', 'Introduction', 'Merle Ronald Haggard (April 6, 1937 – April 6, 2016) was an American country music singer, songwriter, guitarist, and fiddler. Widely regarded as one of the greatest and most influential figures in country music, he was a central pioneer of the Bakersfield sound. With a career spanning over five decades, Haggard had 38 number-one hits on the US country charts, several of which also made the Billboard all-genre singles chart.
Haggard overcame a troubled childhood, criminal convictions and time in prison to launch a successful country music career. He gained popularity with his songs about the working class; these occasionally contained themes contrary to the anti–Vietnam War sentiment of some popular music of the time, most notably "Okie From Muskogee", and "The Fightin'' Side of Me". 
Haggard received many honors and awards, including a Kennedy Center Honor (2010); a Grammy Lifetime Achievement Award (2006); a BMI Icon Award (2006); and induction into the Nashville Songwriters Hall of Fame (1977); Country Music Hall of Fame (1994) and Oklahoma Music Hall of Fame (1997). 
In 2017 he beat out Johnny Cash and Hank Williams to earn the number 1 spot in Rolling Stone''s list of The 100 Greatest Country Artists of All Time.',
   '["clm_wiki_merle-haggard_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 201);

-- 100. Tammy Wynette
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_tammy-wynette', 'person', 'tammy-wynette', 'Tammy Wynette', 'published', 'Tammy Wynette (born Virginia Wynette Pugh; May 5, 1942 – April 6, 1998) was an American country music singer and songwriter, considered among the genre''s most influential and successful artists. Along with Loretta Lynn, Wynette helped bring a woman''s perspective to the male-dominated country music field that helped other women find representation in the genre. Her characteristic vocal delivery has', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_tammy-wynette', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_tammy-wynette_us', 'ent_tammy-wynette', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_tammy-wynette_intro', 'ent_tammy-wynette', 'biography_intro', 'Introduction', 'Tammy Wynette (born Virginia Wynette Pugh; May 5, 1942 – April 6, 1998) was an American country music singer and songwriter, considered among the genre''s most influential and successful artists. Along with Loretta Lynn, Wynette helped bring a woman''s perspective to the male-dominated country music field that helped other women find representation in the genre. Her characteristic vocal delivery has been acclaimed by critics, journalists and writers for conveying unique emotion. Twenty of her singles topped the US country chart during her career. Her signature song "Stand by Your Man" received both acclaim and criticism for its portrayal of women''s loyalty to their husbands.
Wynette was born and raised near Tremont, a small town in Itawamba County, Mississippi, by her mother, stepfather, and maternal grandparents. During childhood, Wynette picked cotton on her family''s farm but also had aspirations of becoming a singer. She performed music through her teen years and married Euple Byrd at age 17. Wynette enrolled in cosmetology school and later appeared on a local country music television program. Wynette then divorced and moved to Nashville, Tennessee, to pursue a country music career in 1965. She soon met her second husband, Don Chapel, and eventually signed with Epic Records. Under the production of Billy Sherrill, her first single, "Apartment No. 9", was released in 1966. In 1967, she had her first commercial success with the single "Your Good Girl''s Gonna Go Bad". In the late 1960s, Wynette''s career rose further with the number one country singles "I Don''t Wanna Play House", "D-I-V-O-R-C-E" and the self-penned "Stand by Your Man".
As her career entered the 1970s, Wynette was among country music''s most popular artists and regularly topped the charts. During the late 1960s, she had met and in 1969 married her third husband, fellow country artist George Jones. The pair had a recording career together that resulted in several number one country singles and a successfu',
   '["clm_wiki_tammy-wynette_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 317);

-- 101. Reba McEntire
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_reba-mcentire', 'person', 'reba-mcentire', 'Reba McEntire', 'published', 'Reba Nell McEntire ( REE-bə MAK-in-tire; born March 28, 1955), or simply Reba, is an American country singer and actress. Dubbed "The Queen of Country", she has sold more than 75 million records worldwide. Since the 1970s, she has placed over 100 singles on the Billboard Hot Country Songs chart, 25 of which reached the number-one spot. An actress in both film and television, McEntire starred in th', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_reba-mcentire', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_reba-mcentire_us', 'ent_reba-mcentire', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_reba-mcentire_intro', 'ent_reba-mcentire', 'biography_intro', 'Introduction', 'Reba Nell McEntire ( REE-bə MAK-in-tire; born March 28, 1955), or simply Reba, is an American country singer and actress. Dubbed "The Queen of Country", she has sold more than 75 million records worldwide. Since the 1970s, she has placed over 100 singles on the Billboard Hot Country Songs chart, 25 of which reached the number-one spot. An actress in both film and television, McEntire starred in the television series Reba, which aired for six seasons. She also owns several businesses, including a restaurant and a clothing line.
One of four children, McEntire was born and raised in Oklahoma. With her mother''s help, she and her siblings formed the Singing McEntires, who played at local events and recorded for a small label. McEntire later enrolled at Southeastern Oklahoma State University and studied to become a public-school teacher. She also continued to occasionally perform and was heard singing at a rodeo event by country performer Red Steagall. Drawn to her singing voice, Steagall helped McEntire secure a country music recording contract with PolyGram/Mercury Records in 1975.
Over the next several years, PolyGram/Mercury released a series of McEntire''s albums and singles, which amounted to little success. In the early 1980s, McEntire''s music gained more momentum through several top-10 country songs, including "(You Lift Me) Up to Heaven", "I''m Not That Lonely Yet", and her first number one "Can''t Even Get the Blues". Yet McEntire became increasingly unhappy with her career trajectory and signed with MCA Records in 1984. Her second MCA album titled My Kind of Country (1984) became her breakout release, spawning two number-one Billboard country singles and pointed toward a more traditional musical style. Through the 1980s, McEntire released seven more studio albums and had ten more number-one country hits. Her number-one singles included "One Promise Too Late", "The Last One to Know", and the Grammy Award-winning "Whoever''s in New England".
In 1991, McEntire lost ei',
   '["clm_wiki_reba-mcentire_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 316);

-- 102. Shania Twain
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_shania-twain', 'person', 'shania-twain', 'Shania Twain', 'published', 'Eilleen Regina "Shania" Twain (    eye-LEEN ... shə-NY-ə) (née Edwards; born August 28, 1965) is a Canadian singer and songwriter. She has sold more than 100 million records, making her one of the best-selling music artists of all time and the best-selling female artist in country music history. She received several titles including the "Queen of Country Pop". Billboard named her as the leader of ', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_shania-twain', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_shania-twain_us', 'ent_shania-twain', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_shania-twain_intro', 'ent_shania-twain', 'biography_intro', 'Introduction', 'Eilleen Regina "Shania" Twain (    eye-LEEN ... shə-NY-ə) (née Edwards; born August 28, 1965) is a Canadian singer and songwriter. She has sold more than 100 million records, making her one of the best-selling music artists of all time and the best-selling female artist in country music history. She received several titles including the "Queen of Country Pop". Billboard named her as the leader of the 1990s country pop crossover stars.
Twain grew up in Timmins, Ontario, and from a young age she pursued singing and songwriting before signing with Mercury Nashville Records in the early 1990s. Her self-titled debut studio album was a commercial failure upon release in 1993. After collaborating with producer and husband-to-be Robert John "Mutt" Lange, she rose to fame with her second studio album, The Woman in Me (1995), which brought her widespread success. It sold more than 20 million copies worldwide, spawned eight singles, including "Any Man of Mine" and earned her a Grammy Award. Twain''s third studio album, Come On Over (1997), has sold more than 40 million copies worldwide, making it the best-selling studio album by a female solo artist, the best-selling country album, best-selling album by a Canadian, and one of the best-selling albums of all time. Come On Over produced twelve singles, including "You''re Still the One", "From This Moment On", "That Don''t Impress Me Much" and "Man! I Feel Like a Woman!" and earned her four Grammy Awards. Her fourth studio album, Up! (2002), spawned eight singles, including "I''m Gonna Getcha Good!", "Ka-Ching!" and "Forever and for Always".
In 2004, after releasing her Greatest Hits album, which produced three singles including "Party for Two", Twain entered a hiatus, stating years later that diagnoses with Lyme disease and dysphonia severely weakened her singing voice. She chronicled her vocal rehabilitation on the OWN miniseries Why Not? with Shania Twain, released her first single in six years in 2011, "Today Is Your Day", and pub',
   '["clm_wiki_shania-twain_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 323);

-- 103. Alan Jackson
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_alan-jackson', 'person', 'alan-jackson', 'Alan Jackson', 'published', 'Alan Eugene Jackson (born October 17, 1958) is an American retired country singer-songwriter. He is known for performing a style widely regarded as "neotraditional country", as well as writing many of his own songs. Jackson has recorded twenty-one studio albums, including two Christmas albums and two gospel albums, and he released three greatest-hits albums. Jackson is one of the best-selling musi', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_alan-jackson', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_alan-jackson_us', 'ent_alan-jackson', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_alan-jackson_intro', 'ent_alan-jackson', 'biography_intro', 'Introduction', 'Alan Eugene Jackson (born October 17, 1958) is an American retired country singer-songwriter. He is known for performing a style widely regarded as "neotraditional country", as well as writing many of his own songs. Jackson has recorded twenty-one studio albums, including two Christmas albums and two gospel albums, and he released three greatest-hits albums. Jackson is one of the best-selling music artists of all time, having sold over 75 million records worldwide, with 44 million sold in the United States alone. 
He has had sixty-six songs appear on the Billboard Hot Country Songs chart, thirty-five of which claimed the number one spot. Out of fifteen titles to reach the Billboard Top Country Albums chart, nine have been certified multi-Platinum. He is the recipient of two Grammy Awards, sixteen Country Music Association (CMA) Awards, and seventeen Academy of Country Music (ACM) Awards. He is a member of the Grand Ole Opry, and was inducted into the Georgia Music Hall of Fame in 2001. He was inducted into the Country Music Hall of Fame in 2017 by Loretta Lynn and into the Nashville Songwriters Hall of Fame in 2018.
Jackson is known for songs such as "Chattahoochee", "Livin'' on Love", "Where Were You (When the World Stopped Turning)", "It''s Five O''Clock Somewhere", and "Remember When". He held his final concert on June 27, 2026, because of his Charcot–Marie–Tooth disease.',
   '["clm_wiki_alan-jackson_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 227);

-- 104. Toby Keith
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_toby-keith', 'person', 'toby-keith', 'Toby Keith', 'published', 'Toby Keith Covel (July 8, 1961 – February 5, 2024) was an American country music singer, songwriter, record producer, actor, and businessman.  He began using the stage name Toby Keith early in his music career.', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_toby-keith', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_toby-keith_us', 'ent_toby-keith', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_toby-keith_intro', 'ent_toby-keith', 'biography_intro', 'Introduction', 'Toby Keith Covel (July 8, 1961 – February 5, 2024) was an American country music singer, songwriter, record producer, actor, and businessman.  He began using the stage name Toby Keith early in his music career.
Keith''s debut single, "Should''ve Been a Cowboy", topped the Billboard Hot Country Songs chart in 1993. "How Do You Like Me Now?!" was the number one country song of 2000. In all, Keith has had 42 top 10 country hits and 33 No. 1s. He has released 19 studio albums, two Christmas albums, and five compilation albums, totaling worldwide sales of over 44 million albums. He was nominated for seven Grammy Awards, and was awarded the National Medal of Arts by President Donald Trump in a closed ceremony alongside Ricky Skaggs on January 13, 2021.
In 2005, Keith founded the label Show Dog Nashville, which later became Show Dog-Universal Music. Keith also made his acting debut in 2006, starring in the film Broken Bridges. He co-starred with comedian Rodney Carrington in the 2008 film Beer for My Horses, inspired by his namesake 2003 duet with Willie Nelson.
Keith died on February 5, 2024, from stomach cancer. He was inducted into the Country Music Hall of Fame in 2024, having been elected just hours after his death.

',
   '["clm_wiki_toby-keith_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 211);

-- 105. Tim McGraw
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_tim-mcgraw', 'person', 'tim-mcgraw', 'Tim McGraw', 'published', 'Samuel Timothy McGraw (born May 1, 1967) is an American country singer and actor. He has released 17 studio albums (11 for Curb Records, five for Big Machine Records and one for Arista Nashville). Ten of those albums have reached number one on the Top Country Albums charts, with his 1994 breakthrough album Not a Moment Too Soon being the top country album of 1994. In total, McGraw''s albums have pr', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_tim-mcgraw', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_tim-mcgraw_us', 'ent_tim-mcgraw', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_tim-mcgraw_intro', 'ent_tim-mcgraw', 'biography_intro', 'Introduction', 'Samuel Timothy McGraw (born May 1, 1967) is an American country singer and actor. He has released 17 studio albums (11 for Curb Records, five for Big Machine Records and one for Arista Nashville). Ten of those albums have reached number one on the Top Country Albums charts, with his 1994 breakthrough album Not a Moment Too Soon being the top country album of 1994. In total, McGraw''s albums have produced 65 singles, 25 of which have reached number one on the Hot Country Songs or Country Airplay charts.
Three of these singles – "It''s Your Love", "Just to See You Smile", and "Live Like You Were Dying" – were respectively the top country songs of 1997, 1998, and 2004 according to Billboard Year-End. He has also won three Grammy Awards, 14 Academy of Country Music awards, 11 Country Music Association (CMA) awards, 10 American Music Awards, and three People''s Choice Awards. His Soul2Soul II Tour, which was done in partnership with his wife, Faith Hill, is one of the highest-grossing tours in country music history, and one of the top five among all genres of music. He has sold more than 80 million records worldwide, making him one of the best-selling music artists of all time.
McGraw has ventured into acting, with supporting roles in The Blind Side, Friday Night Lights, The Kingdom, Tomorrowland, Four Christmases, flashback scenes in 2 episodes of Yellowstone, and The Shack as well as lead roles in Flicka (2006), Country Strong (2010), and 1883 (2021). He was a minority owner of the Arena Football League''s Nashville Kats. McGraw has been married to singer Faith Hill since 1996 and is the eldest son of former Major League Baseball (MLB) pitcher Tug McGraw.
McGraw was inducted into the Country Music Hall of Fame in 2026.',
   '["clm_wiki_tim-mcgraw_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 299);

-- 106. Martina McBride
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_martina-mcbride', 'person', 'martina-mcbride', 'Martina McBride', 'published', 'Martina Mariea McBride (née Schiff; born July 29, 1966) is an American country music singer and songwriter. An icon in the country music world, she is known for her country pop material with a powerful soprano voice and expansive range. McBride has won the Country Music Association Award for Female Vocalist of the Year award four times (tied with Reba McEntire for the third-most wins) and the Acad', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_martina-mcbride', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_martina-mcbride_us', 'ent_martina-mcbride', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_martina-mcbride_intro', 'ent_martina-mcbride', 'biography_intro', 'Introduction', 'Martina Mariea McBride (née Schiff; born July 29, 1966) is an American country music singer and songwriter. An icon in the country music world, she is known for her country pop material with a powerful soprano voice and expansive range. McBride has won the Country Music Association Award for Female Vocalist of the Year award four times (tied with Reba McEntire for the third-most wins) and the Academy of Country Music''s "Top Female Vocalist" award three times. She is also a 14-time Grammy Award nominee.
McBride was born in Sharon, Kansas, and relocated to Nashville, Tennessee, in 1989. She signed to RCA Records in 1991, and made her debut the following year as a neo-traditionalist country singer with the single, "The Time Has Come". Over time, she developed a pop-styled crossover sound, similar to Shania Twain and Faith Hill, and had a string of singles on the Billboard country chart and occasionally on the adult contemporary chart. Five of these singles went to No. 1 on the country chart between 1995 and 2001, and one peaked at No. 1 on the adult contemporary chart in 2003.
McBride has fourteen studio albums, two greatest hits compilations, one "live" album, as well as two additional compilation albums. Eight of her studio albums and two of her compilations have an RIAA Gold certification, or higher. In the U.S., she has sold over 14 million albums.',
   '["clm_wiki_martina-mcbride_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 232);

-- 107. Trisha Yearwood
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_trisha-yearwood', 'person', 'trisha-yearwood', 'Trisha Yearwood', 'published', 'Patricia Lynn Yearwood (born September 19, 1964) is an American country singer. She rose to fame with her 1991 debut single "She''s in Love with the Boy", which became a number-one hit on the Billboard country singles chart. Its corresponding self-titled debut album sold over two million copies. Yearwood continued with a series of major country hits during the early to mid-1990s, including "The Wom', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_trisha-yearwood', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_trisha-yearwood_us', 'ent_trisha-yearwood', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_trisha-yearwood_intro', 'ent_trisha-yearwood', 'biography_intro', 'Introduction', 'Patricia Lynn Yearwood (born September 19, 1964) is an American country singer. She rose to fame with her 1991 debut single "She''s in Love with the Boy", which became a number-one hit on the Billboard country singles chart. Its corresponding self-titled debut album sold over two million copies. Yearwood continued with a series of major country hits during the early to mid-1990s, including "The Woman Before Me" (1991), "Walkaway Joe" (1992), "The Song Remembers When" (1993), "XXX''s and OOO''s (An American Girl)" (1994), and "Believe Me Baby (I Lied)" (1996).
Yearwood''s 1997 single "How Do I Live" reached number two on the U.S. country singles chart and was internationally successful. It appeared on her first compilation (Songbook) A Collection of Hits (1997). The album certified quadruple-platinum in the United States and featured the hits "In Another''s Eyes" and "Perfect Love". Yearwood had a string of commercial successes over the next several years including the hit singles "There Goes My Baby" and "I Would''ve Loved You Anyway". She released her 10th studio record Jasper County in 2005, which debuted at number one on the Billboard Top Country Albums chart and the top 10 of the Billboard 200. It became her fastest-selling album in the United States. Yearwood signed with Big Machine Records in 2007 and released the critically acclaimed Heaven, Heartache and the Power of Love the same year.
Yearwood spent several years on hiatus from her own musical career to focus on other projects. She published three successful cookbooks, which appeared on The New York Times Best Seller list. In 2012, she began a culinary television series on the Food Network called Trisha''s Southern Kitchen, which later won a Daytime Emmy Award. Yearwood has sold over 15 million records worldwide. Her work has earned her several awards and nominations, including three Grammy Awards, three awards from the Academy of Country Music, and three awards from the Country Music Association. Yearwood has al',
   '["clm_wiki_trisha-yearwood_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 322);

-- 108. Wynonna Judd
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_wynonna-judd', 'person', 'wynonna-judd', 'Wynonna Judd', 'published', 'Wynonna Ellen Judd Moser ( wy-NOH-nə; born Christina Claire Ciminella; May 30, 1964) is an American country music singer. She is one of the most widely recognized and awarded female country musicians in history. She has had 19 No. 1 singles, including those with The Judds. She first rose to fame in the 1980s alongside her mother, Naomi, in their mother-daughter country music duo, The Judds. They r', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_wynonna-judd', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_wynonna-judd_us', 'ent_wynonna-judd', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_wynonna-judd_intro', 'ent_wynonna-judd', 'biography_intro', 'Introduction', 'Wynonna Ellen Judd Moser ( wy-NOH-nə; born Christina Claire Ciminella; May 30, 1964) is an American country music singer. She is one of the most widely recognized and awarded female country musicians in history. She has had 19 No. 1 singles, including those with The Judds. She first rose to fame in the 1980s alongside her mother, Naomi, in their mother-daughter country music duo, The Judds. They released seven albums on Curb Records, in addition to 26 singles, of which 14 were No. 1 hits.
The Judds disbanded in 1991, and Wynonna began a solo career (also on Curb). During her solo career, Wynonna has released eight studio albums, as well as a live album, a holiday album, and two compilation albums, with the releasing of more than 20 singles. Her first three singles, "She Is His Only Need", "I Saw the Light", and "No One Else on Earth" all reached No. 1 on the U.S. Billboard Hot Country Songs chart. In 1996, "To Be Loved by You" also hit number one, becoming her fourth number one and top-ten hit. Three of her albums are certified multiple-times platinum by the RIAA. Her most recent recording is Wynonna & the Big Noise, which was released on February 12, 2016, followed by the release of the single "Cool Ya''" that same month. "Recollections" was released in 2020. Wynonna is most recognized for her musical work, although she has also pursued other interests starting in the 2000s, including writing, acting, and philanthropy.
In 2022, Wynonna was inducted into the Country Music Hall of Fame as a member of The Judds.',
   '["clm_wiki_wynonna-judd_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 267);

-- 109. Naomi Judd
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_naomi-judd', 'person', 'naomi-judd', 'Naomi Judd', 'published', 'Naomi Judd (born Diana Ellen Judd; January 11, 1946 – April 30, 2022) was an American country music singer and actress. In 1980, she and her daughter Wynonna (born Christina Claire) formed the duo known as The Judds, who became a successful country music act, winning five Grammy Awards and nine Country Music Association awards. The Judds ceased performing in 1991 after Naomi was diagnosed with hep', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_naomi-judd', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_naomi-judd_us', 'ent_naomi-judd', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_naomi-judd_intro', 'ent_naomi-judd', 'biography_intro', 'Introduction', 'Naomi Judd (born Diana Ellen Judd; January 11, 1946 – April 30, 2022) was an American country music singer and actress. In 1980, she and her daughter Wynonna (born Christina Claire) formed the duo known as The Judds, who became a successful country music act, winning five Grammy Awards and nine Country Music Association awards. The Judds ceased performing in 1991 after Naomi was diagnosed with hepatitis; while Wynonna continued to perform as a solo artist, she occasionally reunited with her mother for tours as The Judds. Naomi died by suicide in 2022, the day before she and Wynonna were inducted into the Country Music Hall of Fame.',
   '["clm_wiki_naomi-judd_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 108);

-- 110. Tammy Wynette
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('ent_tammy-wynette', 'person', 'tammy-wynette', 'Tammy Wynette', 'published', 'Tammy Wynette (born Virginia Wynette Pugh; May 5, 1942 – April 6, 1998) was an American country music singer and songwriter, considered among the genre''s most influential and successful artists. Along with Loretta Lynn, Wynette helped bring a woman''s perspective to the male-dominated country music field that helped other women find representation in the genre. Her characteristic vocal delivery has', '["src_wikidata"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('ent_tammy-wynette', 'living', NULL, NULL, '', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT OR IGNORE INTO person_citizenship
  (id, person_id, country_id, primary_flag, source_claim_id, created_at)
VALUES
  ('pcs_tammy-wynette_us', 'ent_tammy-wynette', 'ent_usa', 1, NULL, unixepoch());

-- Introduction section
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_tammy-wynette_intro', 'ent_tammy-wynette', 'biography_intro', 'Introduction', 'Tammy Wynette (born Virginia Wynette Pugh; May 5, 1942 – April 6, 1998) was an American country music singer and songwriter, considered among the genre''s most influential and successful artists. Along with Loretta Lynn, Wynette helped bring a woman''s perspective to the male-dominated country music field that helped other women find representation in the genre. Her characteristic vocal delivery has been acclaimed by critics, journalists and writers for conveying unique emotion. Twenty of her singles topped the US country chart during her career. Her signature song "Stand by Your Man" received both acclaim and criticism for its portrayal of women''s loyalty to their husbands.
Wynette was born and raised near Tremont, a small town in Itawamba County, Mississippi, by her mother, stepfather, and maternal grandparents. During childhood, Wynette picked cotton on her family''s farm but also had aspirations of becoming a singer. She performed music through her teen years and married Euple Byrd at age 17. Wynette enrolled in cosmetology school and later appeared on a local country music television program. Wynette then divorced and moved to Nashville, Tennessee, to pursue a country music career in 1965. She soon met her second husband, Don Chapel, and eventually signed with Epic Records. Under the production of Billy Sherrill, her first single, "Apartment No. 9", was released in 1966. In 1967, she had her first commercial success with the single "Your Good Girl''s Gonna Go Bad". In the late 1960s, Wynette''s career rose further with the number one country singles "I Don''t Wanna Play House", "D-I-V-O-R-C-E" and the self-penned "Stand by Your Man".
As her career entered the 1970s, Wynette was among country music''s most popular artists and regularly topped the charts. During the late 1960s, she had met and in 1969 married her third husband, fellow country artist George Jones. The pair had a recording career together that resulted in several number one country singles and a successfu',
   '["clm_wiki_tammy-wynette_intro"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   10, unixepoch(), 'wikipedia', 317);

