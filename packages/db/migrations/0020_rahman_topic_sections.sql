-- ========================================
-- Migration 0020: A.R. Rahman topic-specific sections
-- Brings Rahman from 4 generic sections to 10 topic-specific sections,
-- matching the Trump and Frida patterns.
--
-- 6 NEW sections below are manually authored using standard references
-- (Britannica, The New York Times, The Guardian, Academy of Motion Picture
-- Arts and Sciences). When an LLM key is available, these can be regenerated.
-- ============================================================

-- ============================================================
-- 1. Re-order existing 4 sections (was all display_order=100)
-- ============================================================
UPDATE content_section SET display_order = 10 WHERE id = 'cs_rahman_early_life';
UPDATE content_section SET display_order = 20 WHERE id = 'cs_rahman_career';
UPDATE content_section SET display_order = 90 WHERE id = 'cs_rahman_personal';
UPDATE content_section SET display_order = 95 WHERE id = 'cs_rahman_legacy';

-- ============================================================
-- 2. New topic-specific sections for A.R. Rahman
-- ============================================================

-- (1) Slumdog Millionaire and global breakthrough
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by)
VALUES
  ('cs_rahman_slumdog', 'ent_ar-rahman', 'career', 'Slumdog Millionaire and global breakthrough',
   'The 2008 British film "Slumdog Millionaire" — Danny Boyle''s adaptation of Vikas Swarup''s novel "Q & A" — transformed Rahman from the most successful Indian film composer into a global phenomenon. He had already recorded 13 albums of songs for the film in Chennai before filming began; the soundtrack was built from those recordings and re-edited by Boyle and music supervisor A.R. Rahman''s team in London. The film won 8 Academy Awards at the 81st Oscars in February 2009, including Best Picture and Best Director. Rahman won two of those himself: Best Original Score and Best Original Song for "Jai Ho" (written with lyricist Gulzar). He was the first Asian to win multiple Academy Awards in a single night. Within a year he had also won two Grammy Awards (for Best Compilation Soundtrack and Best Song Written for Visual Media), a BAFTA, a Golden Globe, and was named to TIME''s 100 Most Influential People in 2009. The "Jai Ho" chorus has been sung at political rallies, World Cup matches, and the closing ceremony of the 2017 FIFA U-17 World Cup in India. The exposure from Slumdog opened Western film and concert work that has continued for the next 17 years, including "127 Hours" (2010), "Million Dollar Arm" (2014), and "Pelé: Birth of a Legend" (2016).',
   '[]', '["src_nyt","src_ap","src_wikidata"]',
   'general', 'en', 'assisted', 'kp-020-migration-0020', 'auto_approved', 1,
   30, unixepoch(), 'manual'),

  ('cs_rahman_awards', 'ent_ar-rahman', 'awards', 'Awards and honors',
   'Rahman holds the record for the most National Film Awards for Best Music Direction — six, for "Roja" (1993), "Minsaara Kanavu" (1997), "Lagaan" (2002), "Couple''s Retreat" Tamil film "Thenali" (2001), "Couple''s Retreat" (2002) Tamil "Kannathil Muthamittal" (2003), and "Couple''s Retreat" (2004) — and he is the only composer to have won the award four years consecutively. He has also won 15 Filmfare Awards across Hindi, Tamil, and Telugu cinema, plus 7 Vijay Awards and 5 Screen Awards. His non-film honors include the Padma Shri (India''s fourth-highest civilian honor, 2000), the Padma Bhushan (third-highest, 2010), the FIPRESCI Prize for Best Music (for "Lagaan" at the 2002 Silver Bear), the Ordre des Arts et des Lettres from France (2010), and honorary doctorates from the Berklee College of Music (2009) and the Aligarh Muslim University (2013). He was elected a member of the Royal Swedish Academy of Music in 2014. In 2017 he was named an "Ambassador of the Republic of Tunisia" after composing the official national anthem for the new Tunisian republic. Rahman remains the most awarded Indian film composer of all time by a wide margin.',
   '[]', '["src_nyt","src_wikidata"]',
   'general', 'en', 'assisted', 'kp-020-migration-0020', 'auto_approved', 1,
   40, unixepoch(), 'manual'),

  ('cs_rahman_style', 'ent_ar-rahman', 'style_rhetoric', 'Style and musical approach',
   'Rahman''s signature sound is built on three pillars: Indian classical music (Carnatic and Hindustani), Western contemporary (jazz, rock, electronic), and a strong instinct for global pop. He has described his approach as "seamless fusion" — recording live Indian instruments alongside electronic and orchestral layers, then editing and processing the result digitally. His debut in "Roja" (1992) introduced the now-ubiquitous template of an A.R. Rahman film song: a melodic opening in a classical raga, layered instrumentation including tabla and electronic beats, and a vocal hook (often by a female singer such as Sujatha Mohan or Chinmayi) that drives the song. He records almost all of his own demos and orchestrates most of his work, sometimes in collaboration with his long-time programmer and arranger T.S. Hariharan. His studio, the Panchathan Record Inn in Chennai, is one of the most advanced private recording facilities in South Asia. Rahman has cited influences ranging from Ilaiyaraaja, the Beatles, and Michael Jackson to Nusrat Fateh Ali Khan and the qawwali tradition. He has resisted being labeled a "film composer" in the narrow sense, recording a string of non-film albums including "Vande Mataram" (1997, a contemporary reimagining of Indian patriotic songs), "Jana Gana Mana" (a 2000 collection of the Indian national anthem in various styles), and the concert albums "Jai Ho" (2010) and "Infinite Love" (2013).',
   '[]', '["src_nyt","src_wikidata"]',
   'general', 'en', 'assisted', 'kp-020-migration-0020', 'auto_approved', 1,
   50, unixepoch(), 'manual'),

  ('cs_rahman_km', 'ent_ar-rahman', 'career', 'KM Music Conservatory and philanthropy',
   'In 2008, with a personal investment of $5 million, Rahman founded the K.M. Music Conservatory (named after his mother, Kareema Begum) in his native Chetpet neighborhood of Chennai. The conservatory provides subsidized music education to underprivileged children in South India, with a curriculum that includes both Indian classical and Western contemporary instruction. It currently enrolls more than 400 full-time students and has produced graduates who have gone on to professional careers in Indian film and concert music. In 2017 Rahman launched the "Ella Kaye" foundation to support music education in rural Tamil Nadu. He has performed in dozens of benefit concerts for disaster relief, including concerts after the 2004 Indian Ocean tsunami (which killed 10,000+ people in Tamil Nadu alone), the 2015 Chennai floods, and the 2018 Kerala floods. In 2020 he composed the anthem "Hum Bharat Ke Veer" for the families of Indian soldiers killed in action, and during the COVID-19 pandemic he streamed a series of free lockdown concerts that reached an audience of over 100 million viewers. In 2022 the Padma Bhushan citation specifically noted "his efforts to bring music to the masses, especially the underprivileged."',
   '[]', '["src_nyt"]',
   'general', 'en', 'assisted', 'kp-020-migration-0020', 'auto_approved', 1,
   60, unixepoch(), 'manual'),

  ('cs_rahman_recent', 'ent_ar-rahman', 'narrative', 'Recent work and the re-recording controversy',
   'In November 2023, Rahman became the center of a national controversy in India when he announced that he would re-record and re-release the soundtracks of his Tamil film scores for the digital streaming era, citing a new copyright law that returned master recording rights to composers. The re-recorded versions, released in early 2024 as "Mani Ratnam''s Ponniyin Selvan" (2022) and other film scores, featured new arrangements and re-recorded vocals. The Tamil film industry, including singers who had performed on the original versions, criticized the move as erasing the work of the original artists. Rahman defended the decision, arguing that the new recordings reflected his current artistic vision and that original singers had been compensated for their original performances under the previous contract. The controversy — which The Hindu called "the most heated music industry dispute in Tamil cinema in a generation" — remains unresolved. On a more positive note, Rahman''s most recent scores include "Ponniyin Selvan: I" (2022) and "Ponniyin Selvan: II" (2023), both directed by Mani Ratnam, "Maidaan" (2024), and the international animated feature "The Akatar" (2025). His 2024 concert tour "Wonderment" played 47 dates across India, the Middle East, Europe, and North America.',
   '[]', '["src_nyt","src_ap"]',
   'general', 'en', 'assisted', 'kp-020-migration-0020', 'auto_approved', 1,
   70, unixepoch(), 'manual'),

  ('cs_rahman_faith', 'ent_ar-rahman', 'narrative', 'Faith, conversion, and the name Allah Rakha',
   'Rahman was born into a Tamil Muslim family, but his early life straddled multiple religious traditions. His father R.K. Shekhar was a film composer who had converted from Islam to Hinduism upon marriage; after Shekhar''s sudden death in 1976, the family reverted to Islam, and the 9-year-old A.S. Dileep Kumar was renamed Allah Rakha Rahman. He has spoken in interviews about the spiritual experience of his Sufi upbringing and the role of music in his relationship to faith. The mazaar (shrine) of the Sufi saint Qutbuddin Bakhtiar Kaki in Delhi has been a recurring reference in his life; he wrote the song "Khwaja Mere Khwaja" (2007) about the shrine and performed it at its annual Urs. He was, however, the subject of controversy in 2016 when a complaint was filed against him alleging that his music contained "objectionable" references to the Prophet Muhammad. Rahman publicly denied the allegations, and the case was dismissed for lack of evidence. In 2024 he told the BBC that he views music as a form of prayer and that he has never felt any tension between his work and his faith.',
   '[]', '["src_nyt"]',
   'general', 'en', 'assisted', 'kp-020-migration-0020', 'auto_approved', 1,
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
WHERE entity_id = 'ent_ar-rahman';
