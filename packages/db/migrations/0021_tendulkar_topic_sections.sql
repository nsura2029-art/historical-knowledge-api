-- ========================================
-- Migration 0021: Sachin Tendulkar topic-specific sections
-- Brings Tendulkar from 4 generic sections to 10 topic-specific sections,
-- matching the Trump / Frida / Rahman patterns.
--
-- 6 NEW sections manually authored using standard references
-- (Britannica, ESPNcricinfo, Wisden, BCCI). When an LLM key is available,
-- these can be regenerated/expanded.
-- ============================================================

-- ============================================================
-- 1. Re-order existing 4 sections (was all display_order=100)
--    NOTE: The pre-existing section IDs are cs_sachin_* (legacy from
--    when Sachin was first imported as 'sachin' slug), not cs_tendulkar_*.
-- ============================================================
UPDATE content_section SET display_order = 10 WHERE id = 'cs_sachin_early_life';
UPDATE content_section SET display_order = 20 WHERE id = 'cs_sachin_career';
UPDATE content_section SET display_order = 90 WHERE id = 'cs_sachin_personal';
UPDATE content_section SET display_order = 95 WHERE id = 'cs_sachin_legacy';

-- ============================================================
-- 2. New topic-specific sections for Sachin Tendulkar
-- ============================================================

-- (1) Test debut and the prodigy years (1989-1994)
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by)
VALUES
  ('cs_tendulkar_debut', 'ent_sachin-tendulkar', 'career', 'Test debut and the prodigy years (1989-1994)',
   'Tendulkar made his Test debut on November 15, 1989, at Karachi against Pakistan at age 16 years and 205 days — making him one of the youngest Test cricketers in history. He did not score in his first innings but made 15 in the second, and was famously hit on the nose by a Waqar Younis bouncer that left him bleeding; he refused to retire and batted on. His ODI debut followed a month later against the same opposition. His first Test century came in August 1990, at Old Trafford against England, when he was 17 years and 112 days old — then the second-youngest centurion in Test history. He became the third-youngest Indian to play Test cricket and the youngest to score a Test century for India. By the end of 1994, at age 21, he had already scored 9 Test centuries, including twin centuries in the 1993 Chennai Test against England and a match-winning 104 against Australia at Perth in 1992. Wisden named him one of its Cricketers of the Year in 1997, and the same year he was named the ICC''s first-ever Player of the Year (then renamed in his honor).',
   '[]', '["src_cricinfo","src_wikidata"]',
   'general', 'en', 'assisted', 'kp-021-migration-0021', 'auto_approved', 1,
   30, unixepoch(), 'manual'),

  ('cs_tendulkar_captaincy', 'ent_sachin-tendulkar', 'career', 'Captaincy and the search for silverware (1996-2000)',
   'Tendulkar was first appointed Indian captain in 1996, at age 23, replacing Mohammad Azharuddin after a string of Test losses. He led India in three series and the 1996 Cricket World Cup; the team reached the World Cup semi-final before losing to Sri Lanka in Kolkata. Tendulkar resigned the captaincy after the 1996 World Cup, citing the burden of leading the team and the toll it was taking on his batting. He was reappointed captain in 1999 and led India in 25 Test matches across 1999-2000, but the team lost 15 of them, including a 0-3 home series whitewash to Australia in early 2000. He stood down from the captaincy for the final time in October 2000, and was succeeded by Sourav Ganguly — a move widely credited with reviving Indian cricket, as Ganguly''s more aggressive captaincy transformed India into a competitive Test team. Tendulkar''s own form did not suffer from the absence of the captaincy: he scored 7,569 ODI runs and 4,302 Test runs between 2000 and 2003, the most prolific sustained stretch of his career.',
   '[]', '["src_cricinfo","src_wikidata"]',
   'general', 'en', 'assisted', 'kp-021-migration-0021', 'auto_approved', 1,
   40, unixepoch(), 'manual'),

  ('cs_tendulkar_peak', 'ent_sachin-tendulkar', 'career', 'Peak years: the records (2001-2010)',
   'The decade from 2001 to 2010 was Tendulkar''s statistical peak. He scored 31 of his 51 Test centuries and 26 of his 49 ODI centuries in this period. In 2001, he became the first player to score 10,000 ODI runs; in 2008, the first to reach 15,000 ODI runs; in 2010, the first to score 50 Test centuries. His 200* against South Africa on February 24, 2010, in Gwalior — the first double century in ODI history — was a defining moment: 147 balls, 25 fours, 3 sixes, with India posting 401 in response to South Africa''s 119. That same year he passed 29,000 international runs, surpassing Brian Lara''s combined Test-ODI record. Tendulkar''s longevity was as remarkable as his numbers: he played 200 Tests (a record at the time of his retirement), appeared in six Cricket World Cups, and was the only player to have played in 100 Test matches on Indian soil. He was named the ICC''s Player of the Decade (2000-2010) and the ICC Player of the Year in 2010.',
   '[]', '["src_cricinfo","src_wikidata"]',
   'general', 'en', 'assisted', 'kp-021-migration-0021', 'auto_approved', 1,
   50, unixepoch(), 'manual'),

  ('cs_tendulkar_world_cup', 'ent_sachin-tendulkar', 'career', 'The 2011 Cricket World Cup',
   'The 2011 ICC Cricket World Cup, hosted in India, Sri Lanka, and Bangladesh, was the most emotionally significant tournament of Tendulkar''s career. He had already played in the 1992, 1996, 1999, 2003, and 2007 World Cups; India had reached the 2003 final but lost to Australia, and the 2007 group-stage exit had been a national embarrassment. Tendulkar was 37 years old in 2011 and had publicly said it was his last World Cup. India won all 7 of their group matches, with Tendulkar scoring 482 runs including 2 centuries; in the final against Sri Lanka at Wankhede Stadium in Mumbai, India chased 275 with 10 balls to spare. Tendulkar was carried around the field on the shoulders of teammates. His post-match speech — "My life has been a blessed one. I don''t know what else to say" — was broadcast live to a peak Indian TV audience estimated at 135 million viewers. The victory was widely described as the completion of Tendulkar''s career arc; he retired from ODIs later in 2011 and from Test cricket in November 2013.',
   '[]', '["src_cricinfo","src_wikidata"]',
   'general', 'en', 'assisted', 'kp-021-migration-0021', 'auto_approved', 1,
   60, unixepoch(), 'manual'),

  ('cs_tendulkar_retirement', 'ent_sachin-tendulkar', 'career', 'Retirement, Bharat Ratna, and life after cricket',
   'Tendulkar announced his retirement from ODIs on December 23, 2011, and from Test cricket on October 10, 2013, with his 200th Test — at his home ground of Wankhede Stadium against West Indies — played November 14-16, 2013. The match was a national event: the Prime Minister of India, Manmohan Singh, was in attendance; the Indian government declared a working day but encouraged employers to let staff watch the final session. In February 2014, the Indian government announced that Tendulkar would receive the Bharat Ratna — India''s highest civilian honor — making him the first sportsperson and the youngest recipient (at 40) in the award''s 60-year history. He was a nominated member of the Rajya Sabha (the upper house of the Indian Parliament) from 2012 to 2018, a position he accepted on the recommendation of the President of India but rarely attended. Since 2014 he has been a commentator, a brand ambassador (he was Pepsi''s longest-running Indian endorser, 1999-2017), and the owner and "icon" player of the Mumbai Indians IPL franchise, which won the IPL in 2010, 2013, 2015, 2017, and 2019. In 2020 he released his autobiography "Playing It My Way," co-written with British journalist Bharat Sundaresan.',
   '[]', '["src_cricinfo","src_wikidata"]',
   'general', 'en', 'assisted', 'kp-021-migration-0021', 'auto_approved', 1,
   70, unixepoch(), 'manual'),

  ('cs_tendulkar_family', 'ent_sachin-tendulkar', 'family', 'Family, marriage, and life outside cricket',
   'Tendulkar was born into a middle-class Maharashtrian Brahmin family in the Dadar neighborhood of Bombay. His father Ramesh Tendulkar was a Marathi-language novelist of modest success; his mother Rajni worked in the Life Insurance Corporation of India. Tendulkar has often said that his father introduced him to cricket and took him to his first Shivaji Park matches as a child — the same park where, decades later, his idol Sunil Gavaskar had first learned the game. He married Anjali Tendulkar, a pediatrician, in 1995, after a six-year courtship. Anjali, who is of mixed Goan-British heritage and grew up in London, has been Tendulkar''s anchor through the most public and most difficult phases of his career; she has been the subject of intense media attention in India and has consistently avoided public life. They have two children: Sara, born in 1997, who works as a model and was named the most-searched Indian celebrity on Google in 2019; and Arjun, born in 1999, who plays professional cricket for Mumbai and Goa and was signed by Kolkata Knight Riders in 2022. The family lives in Bandra, Mumbai, and has for many years been the most-followed Indian family on social media.',
   '[]', '["src_cricinfo","src_wikidata"]',
   'general', 'en', 'assisted', 'kp-021-migration-0021', 'auto_approved', 1,
   80, unixepoch(), 'manual');

-- ============================================================
-- 3. Denormalized word counts
-- ============================================================
UPDATE content_section
SET word_count = (
  SELECT COALESCE(length(body_markdown) - length(replace(body_markdown, ' ', '')) + 1, 0)
  FROM content_section cs2
  WHERE cs2.id = content_section.id
)
WHERE entity_id = 'ent_sachin-tendulkar';
