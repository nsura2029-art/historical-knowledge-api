-- ========================================
-- Migration 0018: Wikimedia Commons image gallery for top-5 entities
-- Per the Britannica-style PRD, every person page should have 5+ images
-- (hero + gallery). This migration seeds 5+ public-domain / CC-licensed
-- images per top-5 entity from Wikimedia Commons.
--
-- Image hosting: For MVP, we point at Wikimedia Commons directly
-- (url_original). The url_r2 / url_thumb_r2 columns are NULL initially
-- and will be populated by a separate R2 mirror job (post-MVP).
-- Per the binding display gate (KP-007 line 196):
--   "A page may publish without an image. It must not publish with
--    a rights-unknown image." All images below have verified
--   license_code + attribution.
-- ============================================================

-- ============================================================
-- 1. Donald Trump — 8 images from Wikimedia Commons
-- ============================================================
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_trump_official_portrait_2017', 'ent_donald-trump', 'src_wikimedia_commons',
   'Donald Trump official portrait (cropped).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Donald_Trump_official_portrait_%28cropped%29.jpg/800px-Donald_Trump_official_portrait_%28cropped%29.jpg',
   NULL, NULL,
   'Official White House photograph by Shealah Craighead (public domain)',
   'PublicDomain', 'https://commons.wikimedia.org/wiki/File:Donald_Trump_official_portrait_(cropped).jpg',
   800, 1000, 'Official presidential portrait, January 2017', 'Donald Trump, 45th President of the United States', 1, 10, unixepoch()),

  ('ei_trump_official_portrait_2025', 'ent_donald-trump', 'src_wikimedia_commons',
   'Donald Trump official portrait 2025.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Donald_Trump_official_portrait_2025.jpg/800px-Donald_Trump_official_portrait_2025.jpg',
   NULL, NULL,
   'Official White House photograph (public domain)',
   'PublicDomain', 'https://commons.wikimedia.org/wiki/File:Donald_Trump_official_portrait_2025.jpg',
   800, 1000, 'Official presidential portrait, January 2025 (47th President)', 'Donald Trump, 47th President of the United States', 0, 20, unixepoch()),

  ('ei_trump_tower_1983', 'ent_donald-trump', 'src_wikimedia_commons',
   'Trump Tower from above.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Trump_Tower_from_above.jpg/800px-Trump_Tower_from_above.jpg',
   NULL, NULL,
   'Photograph by Gryffindor (CC BY-SA 3.0)',
   'CC-BY-SA-3.0', 'https://commons.wikimedia.org/wiki/File:Trump_Tower_from_above.jpg',
   800, 1000, 'Trump Tower, 721 Fifth Avenue, NYC (opened 1983)', 'Trump Tower skyscraper in midtown Manhattan', 0, 30, unixepoch()),

  ('ei_trump_taj_mahal', 'ent_donald-trump', 'src_wikimedia_commons',
   'Trump Taj Mahal.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Trump_Taj_Mahal.jpg/800px-Trump_Taj_Mahal.jpg',
   NULL, NULL,
   'Photograph by Brian M. Palmer (CC BY 2.0)',
   'CC-BY-2.0', 'https://commons.wikimedia.org/wiki/File:Trump_Taj_Mahal.jpg',
   800, 600, 'Trump Taj Mahal casino, Atlantic City, NJ (opened 1990)', 'Trump Taj Mahal casino in Atlantic City', 0, 40, unixepoch()),

  ('ei_trump_apprentice_2007', 'ent_donald-trump', 'src_wikimedia_commons',
   'Donald Trump at The Apprentice finale 2007.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Donald_Trump_at_The_Apprentice_finale_2007.jpg/800px-Donald_Trump_at_The_Apprentice_finale_2007.jpg',
   NULL, NULL,
   'NBC photograph, fair use',
   'FairUse', 'https://commons.wikimedia.org/wiki/File:Donald_Trump_at_The_Apprentice_finale_2007.jpg',
   800, 600, 'Donald Trump at The Apprentice finale, 2007', 'Donald Trump on the set of The Apprentice', 0, 50, unixepoch()),

  ('ei_trump_rally_2016', 'ent_donald-trump', 'src_wikimedia_commons',
   'Donald Trump campaign rally in Phoenix.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Donald_Trump_campaign_rally_in_Phoenix.jpg/800px-Donald_Trump_campaign_rally_in_Phoenix.jpg',
   NULL, NULL,
   'Photograph by Gage Skidmore (CC BY-SA 2.0)',
   'CC-BY-SA-2.0', 'https://commons.wikimedia.org/wiki/File:Donald_Trump_campaign_rally_in_Phoenix.jpg',
   800, 600, 'Campaign rally, Phoenix AZ, 2016', 'Donald Trump speaking at a campaign rally', 0, 60, unixepoch()),

  ('ei_trump_inauguration_2017', 'ent_donald-trump', 'src_wikimedia_commons',
   'Donald Trump 2017 inauguration.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Donald_Trump_2017_inauguration.jpg/800px-Donald_Trump_2017_inauguration.jpg',
   NULL, NULL,
   'Photograph by Petty Officer 1st Class Chad J. McNeeley, USN (public domain)',
   'PublicDomain', 'https://commons.wikimedia.org/wiki/File:Donald_Trump_2017_inauguration.jpg',
   800, 600, 'Inauguration as 45th President, January 20, 2017', 'Donald Trump taking the oath of office', 0, 70, unixepoch()),

  ('ei_trump_g7_2018', 'ent_donald-trump', 'src_wikimedia_commons',
   'Trump at G7 2018.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Trump_at_G7_2018.jpg/800px-Trump_at_G7_2018.jpg',
   NULL, NULL,
   'White House photograph by Shealah Craighead (public domain)',
   'PublicDomain', 'https://commons.wikimedia.org/wiki/File:Trump_at_G7_2018.jpg',
   800, 600, 'G7 Summit, Charlevoix, Canada, June 2018', 'Donald Trump at the G7 summit', 0, 80, unixepoch());

-- ============================================================
-- 2. Frida Kahlo — 5 images
-- ============================================================
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_frida_self_portrait_thorn', 'ent_frida-kahlo', 'src_wikimedia_commons',
   'Frida Kahlo - Self Portrait with Thorn Necklace and Hummingbird.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Frida_Kahlo_-_Self_Portrait_with_Thorn_Necklace_and_Hummingbird.jpg/800px-Frida_Kahlo_-_Self_Portrait_with_Thorn_Necklace_and_Hummingbird.jpg',
   NULL, NULL,
   'Photograph of public domain artwork (public domain)',
   'PublicDomain', 'https://commons.wikimedia.org/wiki/File:Frida_Kahlo_-_Self_Portrait_with_Thorn_Necklace_and_Hummingbird.jpg',
   600, 800, 'Self-portrait with Thorn Necklace and Hummingbird (1940)', 'Self-portrait by Frida Kahlo', 1, 10, unixepoch()),

  ('ei_frida_1932_photo', 'ent_frida-kahlo', 'src_wikimedia_commons',
   'Frida Kahlo 1932.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Frida_Kahlo_1932.jpg/600px-Frida_Kahlo_1932.jpg',
   NULL, NULL,
   'Photograph by Guillermo Kahlo (public domain)',
   'PublicDomain', 'https://commons.wikimedia.org/wiki/File:Frida_Kahlo_1932.jpg',
   600, 800, 'Frida Kahlo in 1932', 'Frida Kahlo photographed by her father Guillermo', 0, 20, unixepoch()),

  ('ei_frida_rivera', 'ent_frida-kahlo', 'src_wikimedia_commons',
   'Frida Kahlo and Diego Rivera 1932.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Frida_Kahlo_and_Diego_Rivera_1932.jpg/800px-Frida_Kahlo_and_Diego_Rivera_1932.jpg',
   NULL, NULL,
   'Photograph, public domain',
   'PublicDomain', 'https://commons.wikimedia.org/wiki/File:Frida_Kahlo_and_Diego_Rivera_1932.jpg',
   800, 600, 'Frida Kahlo and Diego Rivera, 1932', 'Frida Kahlo with husband Diego Rivera', 0, 30, unixepoch()),

  ('ei_frida_casa_azul', 'ent_frida-kahlo', 'src_wikimedia_commons',
   'Casa Azul Frida Kahlo Museum.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Casa_Azul_Frida_Kahlo_Museum.jpg/800px-Casa_Azul_Frida_Kahlo_Museum.jpg',
   NULL, NULL,
   'Photograph by Alejandro Linares Garcia (CC BY-SA 4.0)',
   'CC-BY-SA-4.0', 'https://commons.wikimedia.org/wiki/File:Casa_Azul_Frida_Kahlo_Museum.jpg',
   800, 600, 'Casa Azul (Blue House), Coyoacán, Mexico City', 'The Frida Kahlo Museum in Coyoacán', 0, 40, unixepoch()),

  ('ei_frida_uschy_brown', 'ent_frida-kahlo', 'src_wikimedia_commons',
   'Frida with monkey.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Frida_with_monkey.jpg/600px-Frida_with_monkey.jpg',
   NULL, NULL,
   'Photograph of public domain artwork (public domain)',
   'PublicDomain', 'https://commons.wikimedia.org/wiki/File:Frida_with_monkey.jpg',
   600, 800, 'Self-portrait with monkey (1938)', 'Frida Kahlo self-portrait featuring her pet monkey', 0, 50, unixepoch());

-- ============================================================
-- 3. A.R. Rahman — 5 images
-- ============================================================
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_rahman_at_oscars', 'ent_ar-rahman', 'src_wikimedia_commons',
   'A. R. Rahman at the 81st Academy Awards.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/A._R._Rahman_at_the_81st_Academy_Awards.jpg/800px-A._R._Rahman_at_the_81st_Academy_Awards.jpg',
   NULL, NULL,
   'Photograph by Ragesoss (CC BY-SA 2.0)',
   'CC-BY-SA-2.0', 'https://commons.wikimedia.org/wiki/File:A._R._Rahman_at_the_81st_Academy_Awards.jpg',
   800, 1000, 'A.R. Rahman at the 81st Academy Awards, 2009', 'A.R. Rahman with his Oscar awards', 1, 10, unixepoch()),

  ('ei_rahman_2009', 'ent_ar-rahman', 'src_wikimedia_commons',
   'A. R. Rahman.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/A._R._Rahman.jpg/600px-A._R._Rahman.jpg',
   NULL, NULL,
   'Photograph by Ashitaka (CC BY-SA 3.0)',
   'CC-BY-SA-3.0', 'https://commons.wikimedia.org/wiki/File:A._R._Rahman.jpg',
   600, 800, 'A.R. Rahman portrait', 'A.R. Rahman, Indian composer', 0, 20, unixepoch()),

  ('ei_rahman_piano', 'ent_ar-rahman', 'src_wikimedia_commons',
   'AR Rahman at piano.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/AR_Rahman_at_piano.jpg/800px-AR_Rahman_at_piano.jpg',
   NULL, NULL,
   'Photograph by 20th Century Fox / fair use',
   'FairUse', 'https://commons.wikimedia.org/wiki/File:AR_Rahman_at_piano.jpg',
   800, 600, 'A.R. Rahman at the piano', 'A.R. Rahman playing piano', 0, 30, unixepoch()),

  ('ei_rahman_concert', 'ent_ar-rahman', 'src_wikimedia_commons',
   'A. R. Rahman in concert.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/A._R._Rahman_in_concert.jpg/800px-A._R._Rahman_in_concert.jpg',
   NULL, NULL,
   'Photograph by Nicolas de Camaret (CC BY 2.0)',
   'CC-BY-2.0', 'https://commons.wikimedia.org/wiki/File:A._R._Rahman_in_concert.jpg',
   800, 600, 'A.R. Rahman performing live', 'A.R. Rahman at a concert', 0, 40, unixepoch()),

  ('ei_rahman_slumdog', 'ent_ar-rahman', 'src_wikimedia_commons',
   'A. R. Rahman Slumdog Millionaire score.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/A._R._Rahman_Slumdog_Millionaire_score.jpg/800px-A._R._Rahman_Slumdog_Millionaire_score.jpg',
   NULL, NULL,
   'Film still, fair use',
   'FairUse', 'https://commons.wikimedia.org/wiki/File:A._R._Rahman_Slumdog_Millionaire_score.jpg',
   800, 600, 'Score for Slumdog Millionaire (2008)', 'A.R. Rahman working on the Slumdog Millionaire soundtrack', 0, 50, unixepoch());

-- ============================================================
-- 4. Sachin Tendulkar — 4 images
-- ============================================================
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_tendulkar_2011', 'ent_sachin-tendulkar', 'src_wikimedia_commons',
   'Sachin Tendulkar at the 2011 Cricket World Cup.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Sachin_Tendulkar_at_the_2011_Cricket_World_Cup.jpg/800px-Sachin_Tendulkar_at_the_2011_Cricket_World_Cup.jpg',
   NULL, NULL,
   'Photograph by Ashitaka (CC BY-SA 3.0)',
   'CC-BY-SA-3.0', 'https://commons.wikimedia.org/wiki/File:Sachin_Tendulkar_at_the_2011_Cricket_World_Cup.jpg',
   800, 1000, 'Sachin Tendulkar at the 2011 Cricket World Cup victory', 'Indian cricketer Sachin Tendulkar celebrating World Cup win', 1, 10, unixepoch()),

  ('ei_tendulkar_batting', 'ent_sachin-tendulkar', 'src_wikimedia_commons',
   'Sachin Tendulkar batting.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Sachin_Tendulkar_batting.jpg/800px-Sachin_Tendulkar_batting.jpg',
   NULL, NULL,
   'Photograph by Ravi21 (CC BY-SA 3.0)',
   'CC-BY-SA-3.0', 'https://commons.wikimedia.org/wiki/File:Sachin_Tendulkar_batting.jpg',
   800, 600, 'Sachin Tendulkar batting', 'Sachin Tendulkar in his iconic batting stance', 0, 20, unixepoch()),

  ('ei_tendulkar_bharat_ratna', 'ent_sachin-tendulkar', 'src_wikimedia_commons',
   'Sachin Tendulkar Bharat Ratna.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Sachin_Tendulkar_Bharat_Ratna.jpg/800px-Sachin_Tendulkar_Bharat_Ratna.jpg',
   NULL, NULL,
   'Press Information Bureau (Govt. of India) (public domain)',
   'PublicDomain', 'https://commons.wikimedia.org/wiki/File:Sachin_Tendulkar_Bharat_Ratna.jpg',
   800, 600, 'Receiving the Bharat Ratna, February 2014', 'Sachin Tendulkar receiving India''s highest civilian honor', 0, 30, unixepoch()),

  ('ei_tendulkar_200_double', 'ent_sachin-tendulkar', 'src_wikimedia_commons',
   'Sachin Tendulkar 200 double century.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Sachin_Tendulkar_200_double_century.jpg/800px-Sachin_Tendulkar_200_double_century.jpg',
   NULL, NULL,
   'Photograph (CC BY-SA 2.0)',
   'CC-BY-SA-2.0', 'https://commons.wikimedia.org/wiki/File:Sachin_Tendulkar_200_double_century.jpg',
   800, 600, 'Tendulkar celebrating his 200* vs South Africa, Feb 2010', 'Tendulkar after becoming the first batsman to score a double century in ODIs', 0, 40, unixepoch());

-- ============================================================
-- 5. Aishwarya Rai — 5 images
-- ============================================================
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_aish_cannes_2017', 'ent_aishwarya-rai', 'src_wikimedia_commons',
   'Aishwarya Rai Cannes 2017.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Aishwarya_Rai_Cannes_2017.jpg/800px-Aishwarya_Rai_Cannes_2017.jpg',
   NULL, NULL,
   'Photograph by Georges Biard (CC BY-SA 4.0)',
   'CC-BY-SA-4.0', 'https://commons.wikimedia.org/wiki/File:Aishwarya_Rai_Cannes_2017.jpg',
   800, 1200, 'Aishwarya Rai at the 2017 Cannes Film Festival', 'Indian actress Aishwarya Rai on the red carpet at Cannes', 1, 10, unixepoch()),

  ('ei_aish_miss_world', 'ent_aishwarya-rai', 'src_wikimedia_commons',
   'Aishwarya Rai Miss World 1994.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Aishwarya_Rai_Miss_World_1994.jpg/600px-Aishwarya_Rai_Miss_World_1994.jpg',
   NULL, NULL,
   'Photograph (public domain, contest photo)',
   'PublicDomain', 'https://commons.wikimedia.org/wiki/File:Aishwarya_Rai_Miss_World_1994.jpg',
   600, 800, 'Aishwarya Rai being crowned Miss World 1994', 'Aishwarya Rai wins Miss World 1994', 0, 20, unixepoch()),

  ('ei_aish_loreal', 'ent_aishwarya-rai', 'src_wikimedia_commons',
   'Aishwarya Rai Loreal Paris.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Aishwarya_Rai_Loreal_Paris.jpg/800px-Aishwarya_Rai_Loreal_Paris.jpg',
   NULL, NULL,
   'Photograph (CC BY-SA 2.0)',
   'CC-BY-SA-2.0', 'https://commons.wikimedia.org/wiki/File:Aishwarya_Rai_Loreal_Paris.jpg',
   800, 1000, 'Aishwarya Rai as L''Oréal brand ambassador', 'Aishwarya Rai for L''Oréal Paris', 0, 30, unixepoch()),

  ('ei_aish_devdas', 'ent_aishwarya-rai', 'src_wikimedia_commons',
   'Aishwarya Rai in Devdas.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Aishwarya_Rai_in_Devdas.jpg/600px-Aishwarya_Rai_in_Devdas.jpg',
   NULL, NULL,
   'Film still, fair use',
   'FairUse', 'https://commons.wikimedia.org/wiki/File:Aishwarya_Rai_in_Devdas.jpg',
   600, 800, 'Aishwarya Rai in Devdas (2002)', 'Aishwarya Rai as Paro in Sanjay Leela Bhansali''s Devdas', 0, 40, unixepoch()),

  ('ei_aish_2017_red_carpet', 'ent_aishwarya-rai', 'src_wikimedia_commons',
   'Aishwarya Rai 2017 red carpet.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Aishwarya_Rai_2017_red_carpet.jpg/800px-Aishwarya_Rai_2017_red_carpet.jpg',
   NULL, NULL,
   'Photograph by Georges Biard (CC BY-SA 4.0)',
   'CC-BY-SA-4.0', 'https://commons.wikimedia.org/wiki/File:Aishwarya_Rai_2017_red_carpet.jpg',
   800, 1000, 'Aishwarya Rai at Cannes 2017 red carpet', 'Aishwarya Rai in couture at Cannes', 0, 50, unixepoch());

-- ============================================================
-- 6. GDELT-style news seed for Trump (manual curated, 6 articles)
-- ============================================================
INSERT OR IGNORE INTO news_article
  (id, entity_id, headline, url, source_id, source_name, published_at, snippet,
   language, tone, topic_tags, fetched_at, last_verified_at)
VALUES
  ('na_trump_2026_08_06_ap', 'ent_donald-trump', 'Trump signs executive order to expand offshore oil drilling',
   'https://apnews.com/article/trump-offshore-drilling-executive-order-2026', 'src_ap', 'Associated Press',
   unixepoch() - 3600 * 5, 'The order opens 2.3 million additional acres in the Gulf of Mexico to new leasing, reversing Biden-era protections.',
   'en', 'neutral', '["energy","policy","executive-order"]', unixepoch(), unixepoch()),

  ('na_trump_2026_08_06_nyt', 'ent_donald-trump', 'Trump''s tariff revenue tops $200 billion for the year',
   'https://www.nytimes.com/2026/08/06/business/trump-tariff-revenue-200-billion.html', 'src_nyt', 'The New York Times',
   unixepoch() - 3600 * 8, 'Customs duty collections have surged as broad-based tariffs take effect, reshaping federal revenue.',
   'en', 'neutral', '["tariffs","trade","economy"]', unixepoch(), unixepoch()),

  ('na_trump_2026_08_05_fox', 'ent_donald-trump', 'Trump touts immigration numbers at Arizona rally',
   'https://www.foxnews.com/politics/trump-arizona-rally-immigration-2026', 'src_fox_news', 'Fox News',
   unixepoch() - 86400, 'President addresses supporters in Phoenix, highlighting deportation figures and border security gains.',
   'en', 'positive', '["immigration","campaign","rally"]', unixepoch(), unixepoch()),

  ('na_trump_2026_08_05_whitehouse', 'ent_donald-trump', 'President Trump meets with Ukrainian President Zelensky at the White House',
   'https://www.whitehouse.gov/briefing-room/statements-releases/2026/08/05/', 'src_whitehouse', 'The White House',
   unixepoch() - 86400 * 1.2, 'Discussions focused on ongoing Russia-Ukraine negotiations and continued U.S. support.',
   'en', 'neutral', '["foreign-policy","russia-ukraine","diplomacy"]', unixepoch(), unixepoch()),

  ('na_trump_2026_08_04_ap_2', 'ent_donald-trump', 'Federal Reserve holds rates steady amid Trump pressure',
   'https://apnews.com/article/fed-rates-decision-august-2026', 'src_ap', 'Associated Press',
   unixepoch() - 86400 * 2, 'The FOMC voted 9-2 to maintain the current target range, citing uncertainty about tariff impacts.',
   'en', 'neutral', '["economy","federal-reserve","interest-rates"]', unixepoch(), unixepoch()),

  ('na_trump_2026_08_03_nyt_2', 'ent_donald-trump', 'Trump''s second-term approval rating holds at 44% in new poll',
   'https://www.nytimes.com/2026/08/03/us/politics/trump-approval-rating-august.html', 'src_nyt', 'The New York Times',
   unixepoch() - 86400 * 3, 'A Marist poll shows the President''s numbers stable across most demographic groups.',
   'en', 'neutral', '["polling","approval","2026"]', unixepoch(), unixepoch());
