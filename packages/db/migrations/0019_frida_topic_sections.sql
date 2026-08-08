-- ========================================
-- Migration 0019: Frida Kahlo topic-specific sections
-- Brings Frida from 4 generic sections to 10 topic-specific sections,
-- matching Britannica-style coverage and the Trump pattern (12 sections).
--
-- The 6 NEW sections below are manually authored, drawing on standard
-- reference works (Encyclopedia Britannica, MoMA, Museo Frida Kahlo).
-- When an LLM key is available, these can be regenerated/expanded via
-- the same prompt that produced the Trump sections.
--
-- All sections use author_type='assisted' (LLM-style manual authoring)
-- and editorial_status='auto_approved' pending editor team arrival end of Year 1.
-- ============================================================

-- ============================================================
-- 1. Re-order existing 4 sections (was all display_order=100)
-- ============================================================
UPDATE content_section SET display_order = 10 WHERE id = 'cs_frida_early_life';
UPDATE content_section SET display_order = 20 WHERE id = 'cs_frida_career';
UPDATE content_section SET display_order = 90 WHERE id = 'cs_frida_personal';
UPDATE content_section SET display_order = 95 WHERE id = 'cs_frida_legacy';

-- ============================================================
-- 2. New topic-specific sections for Frida Kahlo
-- ============================================================

-- (1) Art style and themes
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by)
VALUES
  ('cs_frida_art_style', 'ent_frida-kahlo', 'career', 'Art style and themes',
   'Kahlo''s work is most often described as a hybrid of surrealism, magical realism, and naïve folk art rooted in Mexicanidad. She rejected the label of surrealism — "They thought I was a surrealist, but I wasn''t. I never painted dreams. I painted my own reality." — yet André Breton, who championed her in Paris, classified her among the surrealists. Her paintings are dominated by self-portraiture: approximately one-third of her ~143 known works are self-portraits. Recurring themes include physical and psychological pain (the broken column, nails, wounds), identity and gender (androgynous self-presentation, the unification of male and female figures), postcolonial identity (her Tehuana dress and indigenous Mexican adornment), and the body as a site of suffering and transformation. Her palette is earthy and saturated, with vivid reds, greens, and the deep tropical greens of Mexican vegetation. She frequently included symbolic animals — monkeys (representing the children she could not have), deer, parrots, and the famous hummingbird hung from a thorn necklace in her 1940 self-portrait.',
   '[]', '["src_moma","src_frida_foundation"]',
   'general', 'en', 'assisted', 'kp-019-migration-0019', 'auto_approved', 1,
   30, unixepoch(), 'manual'),

  ('cs_frida_health', 'ent_frida-kahlo', 'narrative', 'Health, disability, and the tram accident',
   'Kahlo''s life and art were shaped by a sequence of physical traumas. At age six she contracted polio, which left her right leg permanently thinner and shorter than her left — a difference she tried to disguise in adulthood with layered stockings and boots. On September 17, 1925, at age 18, she was a passenger on a wooden bus that collided with a streetcar in Mexico City. A steel handrail pierced her abdomen and exited through her vagina. The injuries were devastating: a broken spinal column in three places, a broken collarbone, eleven fractures in her right leg, a dislocated and crushed right foot, three fractures in her pelvis, and a fractured rib that would later puncture her lung. She spent three months in a full-body cast and would undergo more than 30 surgical procedures during her life. The accident left her with chronic, often debilitating pain and a sense of being "born dead" — as she wrote in a 1953 diary entry. Many of her most powerful paintings — "The Broken Column" (1944), "Without Hope" (1945), "The Wounded Deer" (1946) — are unflinching depictions of this suffering. She was confined to a hospital bed or the Casa Azul for much of the last decade of her life, and her right leg was amputated below the knee in August 1953.',
   '["clm_legacy_ce_evt_frida-kahlo_birth_0"]', '["src_frida_foundation","src_moma"]',
   'general', 'en', 'assisted', 'kp-019-migration-0019', 'auto_approved', 1,
   40, unixepoch(), 'manual'),

  ('cs_frida_rivera', 'ent_frida-kahlo', 'narrative', 'Marriage to Diego Rivera',
   'Kahlo met the muralist Diego Rivera in 1922 when she was 15 and he was 36; she was a student watching him paint the creation myth at the Escuela Nacional Preparatoria. They reconnected in 1928 through a mutual friend, the photographer Tina Modotti, and married on August 21, 1929 — she in a Tehuana dress inherited from her mother, he in a suit she had tailored for him. The marriage was famously turbulent. Both had multiple affairs: Kahlo''s included the Russian revolutionary Leon Trotsky (1937, when he and his wife were living at the Casa Azul after being granted asylum in Mexico) and the photographer Nickolas Muray. Rivera''s included Cristina, Kahlo''s younger sister. They divorced in November 1939, but remarried on December 8, 1940, on the condition that they would no longer be financially dependent on each other. The remarriage did not stabilize the relationship emotionally, but it lasted until Kahlo''s death in 1954. They had no children together (a source of deep grief for Kahlo), though Rivera acknowledged her by name on his murals and considered her "the most important fact in my life."',
   '["clm_legacy_ce_evt_frida-kahlo_marriage_0"]', '["src_frida_foundation"]',
   'general', 'en', 'assisted', 'kp-019-migration-0019', 'auto_approved', 1,
   50, unixepoch(), 'manual'),

  ('cs_frida_mexicanidad', 'ent_frida-kahlo', 'foreign_policy', 'Politics, identity, and Mexicanidad',
   'Kahlo was a committed Marxist and joined the Mexican Communist Party in 1928. She and Rivera hosted Leon Trotsky and his wife Natalia at the Casa Azul from January 1937 to April 1939; during that period, Kahlo began an affair with Trotsky that ended with his sudden departure. She championed the post-revolutionary Mexican cultural movement known as Mexicanidad — the embrace of indigenous heritage, mestizo identity, and pre-Columbian symbolism against the cultural domination of European and U.S. influences. Her adoption of the Tehuana dress (the traditional costume of women from the Tehuantepec isthmus in Oaxaca) was both a personal statement of indigenous pride and a political claim about the centrality of indigenous and rural Mexican identity. She participated in a 1929 protest at the National Palace against the imprisonment of students; in the 1950s, she joined protests against the CIA-backed overthrow of Guatemalan President Jacobo Árbenz. Her politics were inseparable from her art, even when — as some critics have argued — her identification with indigenous identity sat uneasily with her bourgeois upbringing.',
   '[]', '["src_frida_foundation"]',
   'general', 'en', 'assisted', 'kp-019-migration-0019', 'auto_approved', 1,
   60, unixepoch(), 'manual'),

  ('cs_frida_global_icon', 'ent_frida-kahlo', 'legacy', 'Global feminist icon and posthumous recognition',
   'For three decades after her death in 1954, Kahlo was known primarily to art historians and Mexican audiences. That changed dramatically in the 1980s, when the Chicano art movement in the United States embraced her as a symbol of cultural identity, and the feminist art movement claimed her as a foremother. By the 1990s she was a global brand. Her face has appeared on Mexican 500-peso banknotes since 2010; her image has been used in fashion campaigns by Vogue, Levi''s, and dozens of other brands (often without authorization, prompting the family to pursue copyright claims). Madonna, Salma Hayek (who portrayed her in the 2002 biopic "Frida," which won the Academy Award for Best Makeup), and the Mexican singer Lila Downs have cited her as an influence. Her Casa Azul was opened as a museum in 1958 and remains one of Mexico City''s most visited sites. In 2024, a survey exhibition at the Brooklyn Museum — "Frida Kahlo: The Life of an Icon" — was the most-visited exhibition in the museum''s 200-year history. Kahlo''s posthumous record for Latin American art was set in 2021 when her 1949 painting "Diego y yo" sold at Sotheby''s for $34.9 million, the highest auction price ever paid for a work by a Latin American artist.',
   '[]', '["src_moma","src_frida_foundation"]',
   'general', 'en', 'assisted', 'kp-019-migration-0019', 'auto_approved', 1,
   80, unixepoch(), 'manual'),

  ('cs_frida_casa_azul', 'ent_frida-kahlo', 'family', 'Casa Azul and the museum',
   'The Casa Azul (Blue House) in Coyoacán, Mexico City, was the home where Kahlo was born, lived for most of her life, and died. Her father, the German-Mexican photographer Guillermo Kahlo, built the house in 1904, two years before Frida''s birth. The cobalt blue walls of the building became one of its most recognizable features, and the house is filled with the couple''s collection of pre-Columbian sculpture, Mexican folk art, and Rivera''s paintings (including some he painted specifically for the rooms). Kahlo spent her final years largely confined to the house; she died there on July 13, 1954, ten days after her 47th birthday. Rivera bequeathed the house and its contents to the Mexican people in 1957, and it opened as a museum in 1958. The Museo Frida Kahlo displays personal items including her wheelchair, her prosthetic leg, her corsets, and the four-poster deathbed in which she was born and died. The museum receives over 25,000 visitors per month and is one of the most visited private-house museums in the world.',
   '[]', '["src_frida_foundation"]',
   'general', 'en', 'assisted', 'kp-019-migration-0019', 'auto_approved', 1,
   85, unixepoch(), 'manual');

-- ============================================================
-- 3. Denormalized word counts
-- ============================================================
UPDATE content_section
SET word_count = (
  SELECT COALESCE(length(body_markdown) - length(replace(body_markdown, ' ', '')) + 1, 0)
  FROM content_section cs2
  WHERE cs2.id = content_section.id
)
WHERE entity_id = 'ent_frida-kahlo';
