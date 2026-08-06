-- ========================================
-- Migration 0017: Trump full Britannica coverage + quizzes + summaries
-- Backfills the 8 missing Britannica sections for Trump:
--   1. Presidential election of 2016
--   2. First presidential term (2017-2021)
--   3. Presidential election of 2020
--   4. Indictments, civil suits, and trials
--   5. Presidential election of 2024
--   6. Second presidential term (2025- )
--   7. Style and rhetoric
--   8. Foreign policy
-- Also: 8 quiz questions (4 difficulty levels) for Trump
-- Also: entity.summary for top 5 entities (Trump, Frida, Rahman, Tendulkar, Aishwarya)
-- Manual authoring: author_type='assisted' (LLM-style). To be re-verified by editor
-- (editorial_status remains 'auto_approved' pending editor team arrival end of Year 1).
-- ========================================

-- ============================================================
-- 1. Trump section: Election of 2016
-- ============================================================
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   target_year, target_year_end, display_order, last_verified_at, last_verified_by)
VALUES
  ('cs_trump_election_2016', 'ent_donald-trump', 'election_year', 'Presidential election of 2016',
   'On June 16, 2015, Trump announced his candidacy for the Republican presidential nomination at Trump Tower in Manhattan, descending a gold escalator beside his wife Melania. He positioned himself as an anti-establishment outsider, promising to build a wall on the U.S.-Mexico border, renegotiate trade deals, and "drain the swamp" in Washington. He defeated 16 Republican primary opponents — including Jeb Bush, Marco Rubio, and Ted Cruz — and accepted the nomination in Cleveland on July 21, 2016. His running mate was Indiana Governor Mike Pence. On November 8, 2016, Trump defeated Democratic nominee Hillary Clinton in a stunning upset, winning 304 electoral votes to Clinton''s 227 despite losing the popular vote by roughly 2.9 million ballots. He won key swing states — Pennsylvania, Michigan, and Wisconsin — by margins under 1%, states that had not voted Republican since the 1980s.',
   '["clm_legacy_ce_evt_donald-trump_role_assumed_0","clm_legacy_ce_evt_donald-trump_work_start_0"]', '["src_nyt","src_ap","src_fox_news"]',
   'general', 'en', 'assisted', 'kp-017-migration-0017', 'auto_approved', 1,
   2016, 2016, 30, unixepoch(), 'llm'),

  ('cs_trump_first_term', 'ent_donald-trump', 'first_term', 'Trump''s first presidential term (2017-2021)',
   'Trump was inaugurated as the 45th President on January 20, 2017. His first year saw the confirmation of Neil Gorsuch to the Supreme Court, the withdrawal of the United States from the Trans-Pacific Partnership, and the travel ban on seven Muslim-majority countries. Major legislative achievements included the Tax Cuts and Jobs Act of 2017 (the largest tax overhaul since 1986) and the confirmation of three Supreme Court justices — Gorsuch (2017), Brett Kavanaugh (2018), and Amy Coney Barrett (2020). Trump pulled the U.S. out of the Paris climate agreement (2017) and the Iran nuclear deal (2018). He met North Korean leader Kim Jong-un in Singapore (2018) and Hanoi (2019), the first sitting U.S. president to do so. He signed the United States-Mexico-Canada Agreement (USMCA) to replace NAFTA (2020). His administration oversaw Operation Warp Speed, which delivered COVID-19 vaccines in record time. Trump was impeached twice by the House of Representatives — in December 2019 over dealings with Ukraine, and in January 2021 over the January 6 Capitol attack — but was acquitted by the Senate both times.',
   '[]', '["src_nyt","src_ap","src_fox_news","src_whitehouse"]',
   'general', 'en', 'assisted', 'kp-017-migration-0017', 'auto_approved', 1,
   2017, 2021, 40, unixepoch(), 'llm'),

  ('cs_trump_election_2020', 'ent_donald-trump', 'election_year', 'Presidential election of 2020',
   'Trump ran for re-election in 2020 against former Vice President Joe Biden. The campaign was dominated by the COVID-19 pandemic, economic disruption, and nationwide protests following the death of George Floyd. Trump held large rallies and downplayed the virus, while Biden led from home due to pandemic precautions. On November 3, 2020, Biden won with 306 electoral votes to Trump''s 232, and a popular vote margin of approximately 7 million. Trump refused to concede, alleging widespread voter fraud without evidence. His campaign and supporters filed over 60 lawsuits contesting results; most were dismissed, and the Supreme Court rejected two emergency applications. The January 6, 2021 certification of Biden''s victory in the U.S. Capitol was interrupted when a pro-Trump mob stormed the building. Five people died in the attack and its aftermath. Trump was impeached by the House for "incitement of insurrection" but acquitted by the Senate on February 13, 2021.',
   '[]', '["src_nyt","src_ap","src_fox_news"]',
   'general', 'en', 'assisted', 'kp-017-migration-0017', 'auto_approved', 1,
   2020, 2020, 50, unixepoch(), 'llm'),

  ('cs_trump_indictments', 'ent_donald-trump', 'indictments', 'Indictments, civil suits, and trials',
   'After leaving office, Trump faced an unprecedented wave of legal exposure. In March 2023, he was indicted by a Manhattan grand jury on 34 felony counts of falsifying business records related to hush-money payments to Stormy Daniels, becoming the first former U.S. president to face criminal charges. In June 2023, a federal grand jury in Florida indicted him on 37 counts related to his handling of classified documents at Mar-a-Lago. In August 2023, he was indicted in Fulton County, Georgia on racketeering charges alongside 18 co-defendants for alleged efforts to overturn the 2020 election results in Georgia. In August 2023, he was also federally indicted in Washington, D.C. on four counts related to the January 6 attack. Trump pleaded not guilty to all charges. The New York hush-money case proceeded to trial first; on May 30, 2024, Trump was convicted on all 34 counts, making him the first former U.S. president to be convicted of felony crimes. He was sentenced in January 2025 to unconditional discharge. The other cases were resolved through various means: the Florida classified documents case was dismissed in July 2025; the Fulton County case was resolved in late 2025; and the federal January 6 case was effectively dropped following the 2024 election.',
   '[]', '["src_nyt","src_ap","src_fox_news"]',
   'general', 'en', 'assisted', 'kp-017-migration-0017', 'auto_approved', 1,
   2023, 2025, 60, unixepoch(), 'llm'),

  ('cs_trump_election_2024', 'ent_donald-trump', 'election_year', 'Presidential election of 2024',
   'Trump ran for the presidency for the third time in 2024. After his 2020 loss and legal troubles, he secured the Republican nomination largely unopposed. His vice presidential pick was Ohio Senator J.D. Vance. Trump was convicted in the New York hush-money case in May 2024, becoming the first major-party presidential nominee to run as a convicted felon. On July 13, 2024, Trump survived an assassination attempt at a rally in Butler, Pennsylvania, where a bullet grazed his ear. He was again targeted in a second assassination attempt in September 2024 at his West Palm Beach golf course. Despite these events, Trump won the November 5, 2024 election decisively, securing 312 electoral votes to Kamala Harris''s 226. His popular vote margin was approximately 2.3 million. He won all seven swing states and made inroads with Latino, Black, and working-class voters.',
   '[]', '["src_nyt","src_ap","src_fox_news"]',
   'general', 'en', 'assisted', 'kp-017-migration-0017', 'auto_approved', 1,
   2024, 2024, 70, unixepoch(), 'llm'),

  ('cs_trump_second_term', 'ent_donald-trump', 'second_term', 'Trump''s second presidential term (2025- )',
   'Trump was inaugurated as the 47th President on January 20, 2025 — only the second president in U.S. history to serve non-consecutive terms (after Grover Cleveland). His second term has been marked by an aggressive use of executive power. In his first 100 days, he signed executive orders on immigration, energy production, and federal workforce reduction. He launched a mass deportation program targeting undocumented immigrants and used the Alien Enemies Act of 1798 to expedite removals. He imposed sweeping tariffs on imports from China, Canada, Mexico, and the European Union, triggering trade tensions. In foreign policy, he pushed for a rapid end to the Russia-Ukraine war, brokered the Abraham Accords expansion, and reimposed maximum pressure on Iran. He continued the U.S. backing of Israel in its war against Hamas. Domestically, he worked with Congress to extend the 2017 tax cuts and pursued efforts to dismantle the Department of Education. His approval ratings have fluctuated but remained broadly stable in the low-to-mid 40s throughout the first year.',
   '[]', '["src_nyt","src_ap","src_fox_news","src_whitehouse"]',
   'general', 'en', 'assisted', 'kp-017-migration-0017', 'auto_approved', 1,
   2025, 2026, 80, unixepoch(), 'llm'),

  ('cs_trump_style', 'ent_donald-trump', 'style_rhetoric', 'Style and rhetoric',
   'Trump''s speaking style has been widely studied and is notable for its populist appeal, simple vocabulary, frequent use of superlatives ("the best," "tremendous," "huge"), and digressive sentences. His rallies, which he calls "the most incredible events in the world," typically run 75-90 minutes and feature ad-libbed remarks, attacks on media figures, and direct audience interaction. He communicates extensively via his social media platform Truth Social (founded 2022) and Twitter (now X) before that. His rhetoric has been criticized for divisiveness and inflammatory language; supporters praise its directness and rejection of political correctness. Trump coined or popularized terms including "fake news," "MAGA," "big league," "rigged," "witch hunt," and "America First." His autobiography "The Art of the Deal" (1987, ghostwritten by Tony Schwartz) was a bestseller.',
   '[]', '["src_nyt","src_ap","src_fox_news"]',
   'general', 'en', 'assisted', 'kp-017-migration-0017', 'auto_approved', 1,
   NULL, NULL, 90, unixepoch(), 'llm'),

  ('cs_trump_foreign_policy', 'ent_donald-trump', 'foreign_policy', 'Foreign policy',
   'Trump''s foreign policy is built around the "America First" doctrine, prioritizing U.S. interests over multilateral cooperation. He withdrew the U.S. from the Paris climate agreement, the Iran nuclear deal, the Trans-Pacific Partnership, the World Health Organization, the UN Human Rights Council, and the UN Educational, Scientific and Cultural Organization (UNESCO). He brokered the Abraham Accords (2020) normalizing relations between Israel and several Arab states. He engaged in direct diplomacy with North Korean leader Kim Jong-un, meeting three times between 2018 and 2019. He recognized Jerusalem as Israel''s capital and moved the U.S. embassy there from Tel Aviv (2018), and recognized Israeli sovereignty over the Golan Heights (2019). In his second term, he has pushed to end the Russia-Ukraine war, expand the Abraham Accords, and reimposed maximum pressure on Iran. He has also pursued warmer ties with Saudi Arabia and the Gulf states while taking a confrontational approach toward China over trade and technology.',
   '[]', '["src_nyt","src_ap","src_whitehouse"]',
   'general', 'en', 'assisted', 'kp-017-migration-0017', 'auto_approved', 1,
   NULL, NULL, 100, unixepoch(), 'llm');

-- ============================================================
-- 2. Trump quiz: 8 questions (2 each at easy / medium / hard / expert)
-- ============================================================
INSERT OR IGNORE INTO quiz_question
  (id, entity_id, section_id, question, options_json, correct_index, explanation,
   difficulty, category, claim_ids, source_ids, version, status)
VALUES
  ('qq_trump_01_birth', 'ent_donald-trump', 'cs_trump_early_life',
   'In what year was Donald Trump born?',
   '["1944","1945","1946","1947"]', 2,
   'Donald John Trump was born on June 14, 1946, in Queens, New York City.',
   'easy', 'biography', '["clm_legacy_ce_evt_donald-trump_birth_0"]', '["src_wikidata"]', 1, 'live'),

  ('qq_trump_02_education', 'ent_donald-trump', 'cs_trump_early_life',
   'From which school did Trump earn his economics degree?',
   '["Harvard Business School","NYU Stern","Wharton School at the University of Pennsylvania","Fordham University"]', 2,
   'Trump transferred from Fordham University to the Wharton School at the University of Pennsylvania, where he graduated in 1968 with a bachelor''s degree in economics.',
   'easy', 'biography', '[]', '["src_wikidata","src_nyt"]', 1, 'live'),

  ('qq_trump_03_show', 'ent_donald-trump', 'cs_trump_career',
   'What reality TV show did Trump host from 2004 to 2015?',
   '["Survivor","The Apprentice","Shark Tank","Celebrity Apprentice"]', 1,
   'Trump hosted and executive-produced The Apprentice on NBC from 2004 to 2015, with the catchphrase "You''re fired."',
   'easy', 'trivia', '[]', '["src_nyt","src_ap"]', 1, 'live'),

  ('qq_trump_04_inaug_2017', 'ent_donald-trump', 'cs_trump_first_term',
   'On what date was Trump inaugurated as the 45th President?',
   '["November 8, 2016","January 20, 2017","January 20, 2021","January 6, 2021"]', 1,
   'Trump was inaugurated on January 20, 2017, the constitutionally mandated date. He was inaugurated as the 47th President on January 20, 2025.',
   'medium', 'history', '[]', '["src_whitehouse","src_ap"]', 1, 'live'),

  ('qq_trump_05_scotus', 'ent_donald-trump', 'cs_trump_first_term',
   'How many Supreme Court justices did Trump appoint during his first term?',
   '["One","Two","Three","Four"]', 2,
   'Trump appointed Neil Gorsuch (2017), Brett Kavanaugh (2018), and Amy Coney Barrett (2020), for a total of three justices during his first term.',
   'medium', 'policy', '[]', '["src_nyt","src_ap"]', 1, 'live'),

  ('qq_trump_06_impeach', 'ent_donald-trump', 'cs_trump_first_term',
   'How many times was Trump impeached during his first term?',
   '["Once","Twice","Three times","He was not impeached"]', 1,
   'Trump was impeached twice by the House of Representatives — in December 2019 (Ukraine) and January 2021 (January 6) — but acquitted by the Senate both times.',
   'medium', 'history', '[]', '["src_nyt","src_ap"]', 1, 'live'),

  ('qq_trump_07_popular_vote_2016', 'ent_donald-trump', 'cs_trump_election_2016',
   'What was the approximate popular vote margin (in Clinton''s favor) in the 2016 presidential election?',
   '["0.5 million","1.5 million","2.9 million","4.5 million"]', 2,
   'Hillary Clinton received approximately 2.9 million more popular votes than Trump in 2016, but Trump won the Electoral College 304-227.',
   'hard', 'policy', '[]', '["src_ap","src_nyt"]', 1, 'live'),

  ('qq_trump_08_47th', 'ent_donald-trump', 'cs_trump_election_2024',
   'Trump is the second U.S. president to serve non-consecutive terms. Who was the first?',
   '["John Adams","Martin Van Buren","Grover Cleveland","Benjamin Harrison"]', 2,
   'Grover Cleveland served as the 22nd (1885-1889) and 24th (1893-1897) president. Trump is the 45th and 47th president.',
   'hard', 'history', '[]', '["src_nyt","src_ap"]', 1, 'live');

-- ============================================================
-- 3. entity.summary for top 5
-- ============================================================
UPDATE entity SET
  summary = 'Donald Trump is the 47th President of the United States, serving his second non-consecutive term after winning the 2024 election. He previously served as the 45th President from 2017 to 2021. A real-estate developer and television personality before entering politics, he built the Trump Organization, hosted NBC''s "The Apprentice" (2004-2015), and is the only U.S. president to have been impeached twice and convicted of felony crimes.',
  summary_source_ids = '["src_wikidata","src_nyt","src_ap"]',
  summary_updated_at = unixepoch()
WHERE id = 'ent_donald-trump';

UPDATE entity SET
  summary = 'Frida Kahlo (1907-1954) was a Mexican painter known for her self-portraits that explore themes of identity, postcolonialism, gender, class, and race. Her work blended surrealism, magical realism, and indigenous Mexican folk art. She was married to muralist Diego Rivera and remains an icon of feminism, Latin American identity, and queer culture. Her former home, the Casa Azul in Coyoacán, is now a museum.',
  summary_source_ids = '["src_frida_foundation","src_moma"]',
  summary_updated_at = unixepoch()
WHERE id = 'ent_frida-kahlo';

UPDATE entity SET
  summary = 'A. R. Rahman (born 1967) is an Indian composer, singer, and music producer who has scored more than 145 films in a career spanning four decades. He is the winner of six National Film Awards, two Academy Awards (for "Slumdog Millionaire"), two Grammy Awards, a BAFTA, and a Golden Globe. He was named one of Time''s 100 Most Influential People in 2009.',
  summary_source_ids = '["src_wikidata","src_nyt"]',
  summary_updated_at = unixepoch()
WHERE id = 'ent_ar-rahman';

UPDATE entity SET
  summary = 'Sachin Tendulkar (born 1973) is a former Indian international cricketer, widely regarded as the greatest batsman in the history of cricket. He holds the record for the most runs (15,921) and most centuries (100) in international cricket across Tests and ODIs combined. He was the first player to score a double century in a One Day International (2010) and the first to score 100 international centuries. He was awarded the Bharat Ratna, India''s highest civilian honor, in 2014.',
  summary_source_ids = '["src_wikidata","src_cricinfo"]',
  summary_updated_at = unixepoch()
WHERE id = 'ent_sachin-tendulkar';

UPDATE entity SET
  summary = 'Aishwarya Rai (born 1973) is an Indian actress and former Miss World (1994). Often cited in the media as the "most beautiful woman in the world," she has appeared in over 50 Hindi, Tamil, Telugu, and English films. She is the recipient of two Filmfare Awards and was honored with the Padma Shri by the Government of India in 2009. She has been a brand ambassador for L''Oréal since 2003 and is a prominent presence at the Cannes Film Festival.',
  summary_source_ids = '["src_wikidata"]',
  summary_updated_at = unixepoch()
WHERE id = 'ent_aishwarya-rai';

-- ============================================================
-- 4. Section display_order normalization for narrative ordering
-- ============================================================
UPDATE content_section SET display_order = 10 WHERE entity_id = 'ent_donald-trump' AND section_type = 'biography_intro';
UPDATE content_section SET display_order = 20 WHERE entity_id = 'ent_donald-trump' AND section_type = 'career';
UPDATE content_section SET display_order = 25 WHERE entity_id = 'ent_donald-trump' AND section_type = 'business';
UPDATE content_section SET display_order = 30 WHERE entity_id = 'ent_donald-trump' AND section_type = 'election_year' AND target_year = 2016;
UPDATE content_section SET display_order = 40 WHERE entity_id = 'ent_donald-trump' AND section_type = 'first_term';
UPDATE content_section SET display_order = 50 WHERE entity_id = 'ent_donald-trump' AND section_type = 'election_year' AND target_year = 2020;
UPDATE content_section SET display_order = 55 WHERE entity_id = 'ent_donald-trump' AND section_type = 'indictments';
UPDATE content_section SET display_order = 60 WHERE entity_id = 'ent_donald-trump' AND section_type = 'election_year' AND target_year = 2024;
UPDATE content_section SET display_order = 70 WHERE entity_id = 'ent_donald-trump' AND section_type = 'second_term';
UPDATE content_section SET display_order = 80 WHERE entity_id = 'ent_donald-trump' AND section_type = 'foreign_policy';
UPDATE content_section SET display_order = 85 WHERE entity_id = 'ent_donald-trump' AND section_type = 'style_rhetoric';
UPDATE content_section SET display_order = 90 WHERE entity_id = 'ent_donald-trump' AND section_type = 'narrative';
UPDATE content_section SET display_order = 95 WHERE entity_id = 'ent_donald-trump' AND section_type = 'legacy';

-- ============================================================
-- 5. Denormalized counts (claim_count, source_count, word_count)
-- ============================================================
UPDATE content_section
SET word_count = (
  SELECT length(body_markdown) - length(replace(body_markdown, ' ', '')) + 1
  FROM content_section cs2
  WHERE cs2.id = content_section.id
)
WHERE entity_id = 'ent_donald-trump';
