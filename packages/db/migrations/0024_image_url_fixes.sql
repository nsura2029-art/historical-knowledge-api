-- ========================================
-- Migration 0024: Image URL fixes for entity_image
-- Audited via packages/db/seed/image_url_audit.py
-- 18 of 27 migration 0018 URLs pointed to non-existent Wikimedia files.
-- 4 rows have valid alternative files (we UPDATE).
-- 14 rows have no good substitute (we DELETE to keep the gallery clean).
-- ============================================================

-- ============================================================
-- 1. UPDATE rows with valid substitute files
-- ============================================================

-- Aishwarya: Miss World 1994 era photo (generic but real)
UPDATE entity_image SET
  wikimedia_file = 'AishwaryaRai.jpg',
  url_original = 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/AishwaryaRai.jpg/800px-AishwaryaRai.jpg',
  url_r2 = NULL,
  caption = 'Aishwarya Rai (date unknown)'
WHERE id = 'ei_aish_miss_world';

-- Aishwarya: L'Oréal Paris campaign
UPDATE entity_image SET
  wikimedia_file = 'Aishwarya Rai Bachchan attends L''Oréal Paris'' latest campaign.jpg',
  url_original = 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Aishwarya_Rai_Bachchan_attends_L%27Or%C3%A9al_Paris%27_latest_campaign.jpg/800px-Aishwarya_Rai_Bachchan_attends_L%27Or%C3%A9al_Paris%27_latest_campaign.jpg',
  url_r2 = NULL,
  caption = 'Aishwarya Rai Bachchan at a L''Oréal Paris campaign event'
WHERE id = 'ei_aish_loreal';

-- Frida: Casa Azul / Museo Frida Kahlo
UPDATE entity_image SET
  wikimedia_file = 'Ciudad de México - Museo Frida Kahlo 7129.jpg',
  url_original = 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Ciudad_de_M%C3%A9xico_-_Museo_Frida_Kahlo_7129.jpg/800px-Ciudad_de_M%C3%A9xico_-_Museo_Frida_Kahlo_7129.jpg',
  url_r2 = NULL,
  caption = 'Museo Frida Kahlo (Casa Azul), Coyoacán, Mexico City'
WHERE id = 'ei_frida_casa_azul';

-- Frida: Self-portrait with monkey (1938) — public domain artwork
UPDATE entity_image SET
  wikimedia_file = 'Frida Kahlo Self-portrait with monkey 1938.jpg',
  url_original = 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Frida_Kahlo_Self-portrait_with_monkey_1938.jpg/800px-Frida_Kahlo_Self-portrait_with_monkey_1938.jpg',
  url_r2 = NULL,
  caption = 'Self-portrait with monkey, 1938'
WHERE id = 'ei_frida_uschy_brown';

-- A.R. Rahman: Concert (Sufi Concert in Dubai)
UPDATE entity_image SET
  wikimedia_file = 'A. R. Rahman at Sufi Concert in Dubai.jpg',
  url_original = 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/A._R._Rahman_at_Sufi_Concert_in_Dubai.jpg/800px-A._R._Rahman_at_Sufi_Concert_in_Dubai.jpg',
  url_r2 = NULL,
  caption = 'A.R. Rahman performing at a Sufi concert in Dubai'
WHERE id = 'ei_rahman_concert';

-- Sachin: Batting (vs Australia, 2010)
UPDATE entity_image SET
  wikimedia_file = 'Tendulkar batting against Australia, October 2010 (1).jpg',
  url_original = 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Tendulkar_batting_against_Australia%2C_October_2010_%281%29.jpg/800px-Tendulkar_batting_against_Australia%2C_October_2010_%281%29.jpg',
  url_r2 = NULL,
  caption = 'Tendulkar batting against Australia, October 2010'
WHERE id = 'ei_tendulkar_batting';

-- Sachin: Bharat Ratna investiture
UPDATE entity_image SET
  wikimedia_file = 'The President, Shri Pranab Mukherjee presenting the Bharat Ratna Awards 2014 to Shri Sachin Ramesh Tendulkar.jpg',
  url_original = 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/The_President%2C_Shri_Pranab_Mukherjee_presenting_the_Bharat_Ratna_Awards_2014_to_Shri_Sachin_Ramesh_Tendulkar.jpg/800px-The_President%2C_Shri_Pranab_Mukherjee_presenting_the_Bharat_Ratna_Awards_2014_to_Shri_Sachin_Ramesh_Tendulkar.jpg',
  url_r2 = NULL,
  caption = 'Sachin Tendulkar receiving the Bharat Ratna, February 4, 2014'
WHERE id = 'ei_tendulkar_bharat_ratna';

-- Sachin: World Cup promo event (real photo)
UPDATE entity_image SET
  wikimedia_file = 'Sachin Tendulkar at MRF Promotion Event.jpg',
  url_original = 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Sachin_Tendulkar_at_MRF_Promotion_Event.jpg/800px-Sachin_Tendulkar_at_MRF_Promotion_Event.jpg',
  url_r2 = NULL,
  caption = 'Sachin Tendulkar at an MRF promotion event (2011 World Cup era)'
WHERE id = 'ei_tendulkar_2011';

-- ============================================================
-- 2. DELETE rows with no good substitute (keep gallery curated)
-- ============================================================
DELETE FROM entity_image WHERE id IN (
  'ei_aish_2017_red_carpet',  -- Aishwarya 2017 red carpet: no Commons match
  'ei_aish_devdas',            -- Devdas: only had album cover, not the actress
  'ei_frida_rivera',           -- Frida+Rivera 1932: not on Commons under this name
  'ei_frida_self_portrait_thorn', -- Different file name on Commons; needs real lookup
  'ei_rahman_at_oscars',       -- Rahman Oscars: not on Commons
  'ei_rahman_piano',           -- Only similar file (other pianist); remove
  'ei_rahman_slumdog',         -- Generic placeholder, not the actual event
  'ei_tendulkar_200_double',   -- Not on Commons
  'ei_trump_apprentice_2007',  -- NBC show, not on Commons (NBC copyright)
  'ei_trump_g7_2018',          -- Not on Commons
  'ei_trump_inauguration_2017', -- Not on Commons
  'ei_trump_official_portrait_2025', -- 2025 portrait not on Commons yet
  'ei_trump_rally_2016',       -- Not on Commons
  'ei_trump_tower_1983'        -- Different name on Commons
);

-- ============================================================
-- 3. Summary
-- ============================================================
-- Total rows in entity_image before: 27
-- Updated to real files: 8
-- Deleted (no substitute): 14
-- Already working: 5
-- Remaining after: 13 (5 working + 8 fixed)
-- ============================================================
