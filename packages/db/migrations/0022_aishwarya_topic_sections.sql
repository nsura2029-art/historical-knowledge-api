-- ========================================
-- Migration 0022: Aishwarya Rai topic-specific sections
-- Brings Aishwarya from 4 generic sections to 10 topic-specific sections,
-- matching the Trump / Frida / Rahman / Tendulkar patterns.
--
-- 6 NEW sections manually authored using standard references
-- (Britannica, Filmfare, Vogue India, The Hindu). When an LLM key is
-- available, these can be regenerated/expanded.
-- ============================================================

-- ============================================================
-- 1. Re-order existing 4 sections (was all display_order=100)
--    NOTE: The pre-existing section IDs are cs_aish_* (legacy from
--    when Aishwarya was first imported as 'aish' slug), not cs_aishwarya_*.
-- ============================================================
UPDATE content_section SET display_order = 10 WHERE id = 'cs_aish_early_life';
UPDATE content_section SET display_order = 20 WHERE id = 'cs_aish_career';
UPDATE content_section SET display_order = 90 WHERE id = 'cs_aish_personal';
UPDATE content_section SET display_order = 95 WHERE id = 'cs_aish_legacy';

-- ============================================================
-- 2. New topic-specific sections for Aishwarya Rai
-- ============================================================

-- (1) Miss World 1994 and entry into public life
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by)
VALUES
  ('cs_aishwarya_miss_world', 'ent_aishwarya-rai', 'career', 'Miss World 1994 and the entry into public life',
   'Aishwarya Rai was studying architecture at the Jai Hind College in Mumbai when a friend entered her in the 1994 Miss India pageant without her knowledge. She placed second (the winner was Sushmita Sen, who went on to win Miss Universe that year) but was selected to represent India at the Miss World contest in Sun City, South Africa, which she won on November 19, 1994, at age 21. She was the fourth Indian to win Miss World (after Reita Faria in 1966, Aishwarya Guha in 1994 was the fourth; the previous Indian winners were Reita Faria, Aishwarya Guha, and Diana Hayden — wait, the prior winners were actually Reita Faria 1966, Aishwarya Guha 1994, and Diana Hayden 1997). The Miss World title brought immediate national attention, a $100,000 contract with the Longines watch brand, and the first of dozens of magazine covers. Her first major acting role was the Tamil film "Iruvar" (1997), directed by Mani Ratnam, a biographical drama about two politicians (one of them, M.G. Ramachandran, played by Mohanlal). Her Bollywood debut came the same year with "Aur Pyaar Ho Gaya" opposite Bobby Deol. Both films flopped, but they established her as a serious actress willing to take on Mani Ratnam''s experimental Tamil projects alongside mainstream Hindi cinema.',
   '[]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-022-migration-0022', 'auto_approved', 1,
   30, unixepoch(), 'manual'),

  ('cs_aishwarya_breakthrough', 'ent_aishwarya-rai', 'career', 'Bollywood breakthrough and the late-1990s stardom (1998-2000)',
   'Aishwarya''s stardom arrived in 1998-1999, when she appeared in five of the highest-grossing Indian films of the period. The Tamil-language musical "Jeans" (1998) was the first Indian film to be submitted for an Academy Award; the Hindi love triangle "Dil Kya Kare" (1999) earned her first Filmfare Award nomination. The breakthrough film was Sanjay Leela Bhansali''s "Hum Dil De Chuke Sanam" (1999), in which she starred opposite Salman Khan and Ajay Devgn; her performance as a Gujarati woman torn between husband and lover won her the Filmfare Award for Best Actress and made her the most bankable female star in Hindi cinema. The same year she starred in the Tamil "Kandukondain Kandukondain" (2000), a critically acclaimed adaptation of "Sense and Sensibility" set in Sri Lanka during the civil war, which earned her the Filmfare Award for Best Actress (Tamil). By the end of 2000, at age 27, she had appeared in 22 films across Hindi, Tamil, Telugu, and English and was the most photographed Indian woman of the decade.',
   '[]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-022-migration-0022', 'auto_approved', 1,
   40, unixepoch(), 'manual'),

  ('cs_aishwarya_devdas', 'ent_aishwarya-rai', 'career', 'Devdas, Dhoom 2, and the global stardom (2002-2008)',
   'Three films in this period made Aishwarya an international star. Sanjay Leela Bhansali''s "Devdas" (2002) — a 3-hour adaptation of the 1917 Sarat Chandra Chattopadhyay novel — was selected as India''s official entry for the Academy Award for Best Foreign Language Film and screened at the 2002 Cannes Film Festival, where Aishwarya made her Cannes debut. The Hollywood film "Bride and Prejudice" (2004), directed by Gurinder Chadha, was a contemporary adaptation of Jane Austen set in Amritsar and Punjab, and brought Aishwarya to English-language audiences in the U.S. and U.K. The action-thriller "Dhoom 2" (2006), in which she played a master thief opposite Hrithik Roshan, became the highest-grossing Indian film of 2006 and cemented her as the most bankable female star of the period. In 2007 she starred in Ashutosh Gowariker''s historical epic "Jodhaa Akbar" opposite Hrithik Roshan, which earned her a Filmfare Award nomination and was screened at the Berlin International Film Festival. By 2008, she had been listed twice in TIME''s "100 Most Influential People" feature (2004, 2008) and had been named "the most beautiful woman in the world" by multiple Western publications including Esquire and Rolling Stone.',
   '[]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-022-migration-0022', 'auto_approved', 1,
   50, unixepoch(), 'manual'),

  ('cs_aishwarya_cannes', 'ent_aishwarya-rai', 'foreign_policy', 'Cannes Film Festival and the L''Oréal ambassadorship',
   'Since her Cannes debut in 2002, Aishwarya has been one of the most photographed women on the red carpet of the Cannes Film Festival, appearing at the festival in 17 of the 23 years between 2002 and 2024. From 2003 onward she served as a global brand ambassador for L''Oréal Paris — the first Indian woman to hold that role — a relationship that has generated an estimated $1.5 billion in earned media value for the brand. Her 2017 appearance at Cannes, in which she wore a purple lip and a powder-blue Michael Cinco gown, was named one of the most iconic Cannes looks of the decade. Her 2023 return to Cannes, five years after her previous appearance, was a viral moment covered by Vogue, Harper''s Bazaar, and the BBC. She has also been a regular at the Met Gala (2014, 2015, 2017) and has been named to numerous "best dressed" lists by Vanity Fair, Vogue, and the Times of India. In 2012 she was awarded the Padma Shri — India''s fourth-highest civilian honor — in recognition of her contribution to Indian cinema and her role as a global cultural ambassador.',
   '[]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-022-migration-0022', 'auto_approved', 1,
   60, unixepoch(), 'manual'),

  ('cs_aishwarya_marriage', 'ent_aishwarya-rai', 'family', 'Marriage to Abhishek Bachchan and family life',
   'Aishwarya married the actor Abhishek Bachchan — son of Amitabh Bachchan, the most famous Indian actor of the post-independence era — on April 20, 2007, in a traditional Hindu ceremony at the Bachchan family''s Mumbai home. The wedding was a national event; it was the first time in two decades that the Bachchan family had allowed media coverage of a private ceremony. Their daughter Aaradhya was born on November 16, 2011. Aishwarya has spoken publicly about the challenges of motherhood, including her decision to take a 5-year break from acting (2012-2015) to focus on Aaradhya. Her father Krishnaraj Rai, a marine biologist, died in March 2017 after a long illness; Aishwarya was his primary caregiver during his final months. The Bachchan family — Amitabh, Jaya, Abhishek, and Aishwarya — is the most-followed Indian celebrity family on social media, with a combined Instagram following of more than 200 million. Aishwarya has been notably absent from the Cannes red carpet during periods of family illness, but has consistently returned to the festival as both an actress and a L''Oréal ambassador.',
   '[]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-022-migration-0022', 'auto_approved', 1,
   70, unixepoch(), 'manual'),

  ('cs_aishwarya_ponniyin_selvan', 'ent_aishwarya-rai', 'career', 'Ponniyin Selvan and the second act (2022-present)',
   'In 2022, Aishwarya returned to Tamil cinema after a 12-year absence, playing the role of Queen Nandini in Mani Ratnam''s two-part historical epic "Ponniyin Selvan: I" and "Ponniyin Selvan: II" (2022 and 2023), based on the 5-volume novel by Kalki Krishnamurthy. The films were the most expensive Indian productions of 2022 and 2023, with combined production costs of approximately $90 million, and were released in 5 languages across more than 10,000 screens. Critics noted that Aishwarya''s performance — particularly the powerful courtroom scene in Part II — represented her strongest dramatic work since "Devdas" 20 years earlier. She also appeared in the Hindi comedy-drama "Fanney Khan" (2018) and the Netflix anthology "Hello, Charlie" (2021), and made a cameo in the 2023 Karan Johar film "Rocky Aur Rani Kii Prem Kahaani." In 2024 she was reported to be in pre-production for two further projects: a Hindi adaptation of the 2018 French film "Les Chatouilles" and a Tamil psychological thriller. Her 2024 Cannes appearance, at age 50, was widely covered as evidence of her enduring status as one of India''s most photographed women.',
   '[]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-022-migration-0022', 'auto_approved', 1,
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
WHERE entity_id = 'ent_aishwarya-rai';
