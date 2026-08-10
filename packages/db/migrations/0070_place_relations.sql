-- ========================================
-- Migration 0066: Person-place relations
-- Generated: 2026-08-10 01:15:06 UTC
-- For each person with a birth event mentioning a place, create a birthplace relation
-- ========================================

INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_donald-trump_new-york-city_birth', 'ent_donald-trump', 'plc_new-york-city', 'birthplace', 'clm_wiki_donald-trump_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_donald-trump_university-of-pennsylvania_birth', 'ent_donald-trump', 'plc_university-of-pennsylvania', 'birthplace', 'clm_wiki_donald-trump_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_frida-kahlo_mexico_birth', 'ent_frida-kahlo', 'plc_mexico', 'birthplace', 'clm_wiki_frida-kahlo_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_anna-julia-cooper_ohio_birth', 'ent_anna-julia-cooper', 'plc_ohio', 'birthplace', 'clm_wiki_anna-julia-cooper_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_booker-t-washington_washington_birth', 'ent_booker-t-washington', 'plc_washington', 'birthplace', 'clm_wiki_booker-t-washington_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_chris-stapleton_vanderbilt-university_birth', 'ent_chris-stapleton', 'plc_vanderbilt-university', 'birthplace', 'clm_wiki_chris-stapleton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_colin-powell_new-york-city_birth', 'ent_colin-powell', 'plc_new-york-city', 'birthplace', 'clm_wiki_colin-powell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_creflo-dollar_georgia_birth', 'ent_creflo-dollar', 'plc_georgia', 'birthplace', 'clm_wiki_creflo-dollar_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_david-petraeus_howell_birth', 'ent_david-petraeus', 'plc_howell', 'birthplace', 'clm_wiki_david-petraeus_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dean-rusk_georgia_birth', 'ent_dean-rusk', 'plc_georgia', 'birthplace', 'clm_wiki_dean-rusk_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_earl-warren_virginia_birth', 'ent_earl-warren', 'plc_virginia', 'birthplace', 'clm_wiki_earl-warren_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_elizabeth-taylor_los-angeles_birth', 'ent_elizabeth-taylor', 'plc_los-angeles', 'birthplace', 'clm_wiki_elizabeth-taylor_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eric-church_boone_birth', 'ent_eric-church', 'plc_boone', 'birthplace', 'clm_wiki_eric-church_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eric-church_tennessee_birth', 'ent_eric-church', 'plc_tennessee', 'birthplace', 'clm_wiki_eric-church_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_franklin-d-roosevelt_franklin_birth', 'ent_franklin-d-roosevelt', 'plc_franklin', 'birthplace', 'clm_wiki_franklin-d-roosevelt_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_george-s-patton_west-point_birth', 'ent_george-s-patton', 'plc_west-point', 'birthplace', 'clm_wiki_george-s-patton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_haym-salomon_new-york-city_birth', 'ent_haym-salomon', 'plc_new-york-city', 'birthplace', 'clm_wiki_haym-salomon_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_henry-a-wallace_iowa_birth', 'ent_henry-a-wallace', 'plc_iowa', 'birthplace', 'clm_wiki_henry-a-wallace_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_henry-david-thoreau_massachusetts_birth', 'ent_henry-david-thoreau', 'plc_massachusetts', 'birthplace', 'clm_wiki_henry-david-thoreau_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_j-cole_north-carolina_birth', 'ent_j-cole', 'plc_north-carolina', 'birthplace', 'clm_wiki_j-cole_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_j-robert-oppenheimer_harvard-university_birth', 'ent_j-robert-oppenheimer', 'plc_harvard-university', 'birthplace', 'clm_wiki_j-robert-oppenheimer_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jackie-kennedy_washington_birth', 'ent_jackie-kennedy', 'plc_washington', 'birthplace', 'clm_wiki_jackie-kennedy_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jackson-browne_jackson_birth', 'ent_jackson-browne', 'plc_jackson', 'birthplace', 'clm_wiki_jackson-browne_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jane-pierce_new-hampshire_birth', 'ent_jane-pierce', 'plc_new-hampshire', 'birthplace', 'clm_wiki_jane-pierce_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jason-aldean_memphis_birth', 'ent_jason-aldean', 'plc_memphis', 'birthplace', 'clm_wiki_jason-aldean_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jimmy-carter_georgia_birth', 'ent_jimmy-carter', 'plc_georgia', 'birthplace', 'clm_wiki_jimmy-carter_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joe-biden_pennsylvania_birth', 'ent_joe-biden', 'plc_pennsylvania', 'birthplace', 'clm_wiki_joe-biden_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joe-dimaggio_california_birth', 'ent_joe-dimaggio', 'plc_california', 'birthplace', 'clm_wiki_joe-dimaggio_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joe-montana_san-francisco_birth', 'ent_joe-montana', 'plc_san-francisco', 'birthplace', 'clm_wiki_joe-montana_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joe-rogan_new-jersey_birth', 'ent_joe-rogan', 'plc_new-jersey', 'birthplace', 'clm_wiki_joe-rogan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joel-osteen_houston_birth', 'ent_joel-osteen', 'plc_houston', 'birthplace', 'clm_wiki_joel-osteen_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-coltrane_north-carolina_birth', 'ent_john-coltrane', 'plc_north-carolina', 'birthplace', 'clm_wiki_john-coltrane_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-f-kennedy_harvard-university_birth', 'ent_john-f-kennedy', 'plc_harvard-university', 'birthplace', 'clm_wiki_john-f-kennedy_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-marshall_marshall_birth', 'ent_john-marshall', 'plc_marshall', 'birthplace', 'clm_wiki_john-marshall_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_josephine-baker_st-louis_birth', 'ent_josephine-baker', 'plc_st-louis', 'birthplace', 'clm_wiki_josephine-baker_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_kareem-abdul-jabbar_los-angeles_birth', 'ent_kareem-abdul-jabbar', 'plc_los-angeles', 'birthplace', 'clm_wiki_kareem-abdul-jabbar_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_laura-bush_midland_birth', 'ent_laura-bush', 'plc_midland', 'birthplace', 'clm_wiki_laura-bush_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lee-krasner_new-york_birth', 'ent_lee-krasner', 'plc_new-york', 'birthplace', 'clm_wiki_lee-krasner_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lou-gehrig_new-york_birth', 'ent_lou-gehrig', 'plc_new-york', 'birthplace', 'clm_wiki_lou-gehrig_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_andrew-jackson_jackson_birth', 'ent_andrew-jackson', 'plc_jackson', 'birthplace', 'clm_wiki_andrew-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_anna-harrison_harrison_birth', 'ent_anna-harrison', 'plc_harrison', 'birthplace', 'clm_wiki_anna-harrison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_benjamin-harrison_harrison_birth', 'ent_benjamin-harrison', 'plc_harrison', 'birthplace', 'clm_wiki_benjamin-harrison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bernard-lafayette_lafayette_birth', 'ent_bernard-lafayette', 'plc_lafayette', 'birthplace', 'clm_wiki_bernard-lafayette_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bill-clinton_clinton_birth', 'ent_bill-clinton', 'plc_clinton', 'birthplace', 'clm_wiki_bill-clinton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_billy-graham_graham_birth', 'ent_billy-graham', 'plc_graham', 'birthplace', 'clm_wiki_billy-graham_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_blake-shelton_shelton_birth', 'ent_blake-shelton', 'plc_shelton', 'birthplace', 'clm_wiki_blake-shelton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_caroline-harrison_harrison_birth', 'ent_caroline-harrison', 'plc_harrison', 'birthplace', 'clm_wiki_caroline-harrison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-hamilton-houston_hamilton_birth', 'ent_charles-hamilton-houston', 'plc_hamilton', 'birthplace', 'clm_wiki_charles-hamilton-houston_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_daniel-boone_boone_birth', 'ent_daniel-boone', 'plc_boone', 'birthplace', 'clm_wiki_daniel-boone_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_denzel-washington_washington_birth', 'ent_denzel-washington', 'plc_washington', 'birthplace', 'clm_wiki_denzel-washington_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dolley-madison_madison_birth', 'ent_dolley-madison', 'plc_madison', 'birthplace', 'clm_wiki_dolley-madison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_drew-houston_houston_birth', 'ent_drew-houston', 'plc_houston', 'birthplace', 'clm_wiki_drew-houston_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_earl-warren_warren_birth', 'ent_earl-warren', 'plc_warren', 'birthplace', 'clm_wiki_earl-warren_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edith-wilson_wilson_birth', 'ent_edith-wilson', 'plc_wilson', 'birthplace', 'clm_wiki_edith-wilson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_elizabeth-bishop_elizabeth_birth', 'ent_elizabeth-bishop', 'plc_elizabeth', 'birthplace', 'clm_wiki_elizabeth-bishop_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_elizabeth-blackwell_elizabeth_birth', 'ent_elizabeth-blackwell', 'plc_elizabeth', 'birthplace', 'clm_wiki_elizabeth-blackwell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_elizabeth-cady-stanton_elizabeth_birth', 'ent_elizabeth-cady-stanton', 'plc_elizabeth', 'birthplace', 'clm_wiki_elizabeth-cady-stanton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_elizabeth-monroe_elizabeth_birth', 'ent_elizabeth-monroe', 'plc_elizabeth', 'birthplace', 'clm_wiki_elizabeth-monroe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_elizabeth-taylor_elizabeth_birth', 'ent_elizabeth-taylor', 'plc_elizabeth', 'birthplace', 'clm_wiki_elizabeth-taylor_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ella-fitzgerald_fitzgerald_birth', 'ent_ella-fitzgerald', 'plc_fitzgerald', 'birthplace', 'clm_wiki_ella-fitzgerald_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_emily-dickinson_dickinson_birth', 'ent_emily-dickinson', 'plc_dickinson', 'birthplace', 'clm_wiki_emily-dickinson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_farrah-franklin_franklin_birth', 'ent_farrah-franklin', 'plc_franklin', 'birthplace', 'clm_wiki_farrah-franklin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_frances-cleveland_cleveland_birth', 'ent_frances-cleveland', 'plc_cleveland', 'birthplace', 'clm_wiki_frances-cleveland_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_franklin-pierce_franklin_birth', 'ent_franklin-pierce', 'plc_franklin', 'birthplace', 'clm_wiki_franklin-pierce_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_frederick-douglass_frederick_birth', 'ent_frederick-douglass', 'plc_frederick', 'birthplace', 'clm_wiki_frederick-douglass_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_george-washington_washington_birth', 'ent_george-washington', 'plc_washington', 'birthplace', 'clm_wiki_george-washington_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_grover-cleveland_cleveland_birth', 'ent_grover-cleveland', 'plc_cleveland', 'birthplace', 'clm_wiki_grover-cleveland_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_harrison-schmitt_harrison_birth', 'ent_harrison-schmitt', 'plc_harrison', 'birthplace', 'clm_wiki_harrison-schmitt_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_henry-wilson_wilson_birth', 'ent_henry-wilson', 'plc_wilson', 'birthplace', 'clm_wiki_henry-wilson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_hillary-clinton_clinton_birth', 'ent_hillary-clinton', 'plc_clinton', 'birthplace', 'clm_wiki_hillary-clinton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jackson-browne_jackson_birth', 'ent_jackson-browne', 'plc_jackson', 'birthplace', 'clm_wiki_jackson-browne_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jackson-pollock_jackson_birth', 'ent_jackson-pollock', 'plc_jackson', 'birthplace', 'clm_wiki_jackson-pollock_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-madison_madison_birth', 'ent_james-madison', 'plc_madison', 'birthplace', 'clm_wiki_james-madison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-monroe_monroe_birth', 'ent_james-monroe', 'plc_monroe', 'birthplace', 'clm_wiki_james-monroe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_janet-jackson_jackson_birth', 'ent_janet-jackson', 'plc_jackson', 'birthplace', 'clm_wiki_janet-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jasper-johns_jasper_birth', 'ent_jasper-johns', 'plc_jasper', 'birthplace', 'clm_wiki_jasper-johns_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jennifer-lawrence_lawrence_birth', 'ent_jennifer-lawrence', 'plc_lawrence', 'birthplace', 'clm_wiki_jennifer-lawrence_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jesse-jackson_jackson_birth', 'ent_jesse-jackson', 'plc_jackson', 'birthplace', 'clm_wiki_jesse-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joan-mitchell_mitchell_birth', 'ent_joan-mitchell', 'plc_mitchell', 'birthplace', 'clm_wiki_joan-mitchell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joaquin-phoenix_phoenix_birth', 'ent_joaquin-phoenix', 'plc_phoenix', 'birthplace', 'clm_wiki_joaquin-phoenix_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joe-montana_montana_birth', 'ent_joe-montana', 'plc_montana', 'birthplace', 'clm_wiki_joe-montana_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-marshall_marshall_birth', 'ent_john-marshall', 'plc_marshall', 'birthplace', 'clm_wiki_john-marshall_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-tyler_tyler_birth', 'ent_john-tyler', 'plc_tyler', 'birthplace', 'clm_wiki_john-tyler_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joni-mitchell_mitchell_birth', 'ent_joni-mitchell', 'plc_mitchell', 'birthplace', 'clm_wiki_joni-mitchell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ketanji-brown-jackson_jackson_birth', 'ent_ketanji-brown-jackson', 'plc_jackson', 'birthplace', 'clm_wiki_ketanji-brown-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lawrence-eagleburger_lawrence_birth', 'ent_lawrence-eagleburger', 'plc_lawrence', 'birthplace', 'clm_wiki_lawrence-eagleburger_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lloyd-austin_austin_birth', 'ent_lloyd-austin', 'plc_austin', 'birthplace', 'clm_wiki_lloyd-austin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_donald-trump_university-of-pennsylvania_birth', 'ent_donald-trump', 'plc_university-of-pennsylvania', 'birthplace', 'clm_wiki_donald-trump_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_donald-trump_california_birth', 'ent_donald-trump', 'plc_california', 'birthplace', 'clm_wiki_donald-trump_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_carlos-slim_mexico_birth', 'ent_carlos-slim', 'plc_mexico', 'birthplace', 'clm_wiki_carlos-slim_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ivanka-trump_new-york-city_birth', 'ent_ivanka-trump', 'plc_new-york-city', 'birthplace', 'clm_wiki_ivanka-trump_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ivanka-trump_new-york-city_birth', 'ent_ivanka-trump', 'plc_new-york-city', 'birthplace', 'clm_wiki_ivanka-trump_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_golda-meir_new-york-city_birth', 'ent_golda-meir', 'plc_new-york-city', 'birthplace', 'clm_wiki_golda-meir_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lee-kuan-yew_cambridge_birth', 'ent_lee-kuan-yew', 'plc_cambridge', 'birthplace', 'clm_wiki_lee-kuan-yew_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ivana-trump_new-york-city_birth', 'ent_ivana-trump', 'plc_new-york-city', 'birthplace', 'clm_wiki_ivana-trump_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eric-trump_frederick_birth', 'ent_eric-trump', 'plc_frederick', 'birthplace', 'clm_wiki_eric-trump_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eric-trump_florida_birth', 'ent_eric-trump', 'plc_florida', 'birthplace', 'clm_wiki_eric-trump_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_fred-trump_new-york-city_birth', 'ent_fred-trump', 'plc_new-york-city', 'birthplace', 'clm_wiki_fred-trump_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_andrew-jackson_north-carolina_birth', 'ent_andrew-jackson', 'plc_north-carolina', 'birthplace', 'clm_wiki_andrew-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_andrew-jackson_jackson_birth', 'ent_andrew-jackson', 'plc_jackson', 'birthplace', 'clm_wiki_andrew-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_andrew-jackson_elizabeth_birth', 'ent_andrew-jackson', 'plc_elizabeth', 'birthplace', 'clm_wiki_andrew-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_andrew-johnson_north-carolina_birth', 'ent_andrew-johnson', 'plc_north-carolina', 'birthplace', 'clm_wiki_andrew-johnson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_andrew-johnson_north-carolina_birth', 'ent_andrew-johnson', 'plc_north-carolina', 'birthplace', 'clm_wiki_andrew-johnson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_andrew-lloyd-webber_elizabeth_birth', 'ent_andrew-lloyd-webber', 'plc_elizabeth', 'birthplace', 'clm_wiki_andrew-lloyd-webber_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_andrew-young_new-orleans_birth', 'ent_andrew-young', 'plc_new-orleans', 'birthplace', 'clm_wiki_andrew-young_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_andrew-young_howard-university_birth', 'ent_andrew-young', 'plc_howard-university', 'birthplace', 'clm_wiki_andrew-young_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_andrew-young_new-orleans_birth', 'ent_andrew-young', 'plc_new-orleans', 'birthplace', 'clm_wiki_andrew-young_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_andrew-young_michigan_birth', 'ent_andrew-young', 'plc_michigan', 'birthplace', 'clm_wiki_andrew-young_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_andy-fang_california_birth', 'ent_andy-fang', 'plc_california', 'birthplace', 'clm_wiki_andy-fang_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_andy-fang_california_birth', 'ent_andy-fang', 'plc_california', 'birthplace', 'clm_wiki_andy-fang_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_anna-harrison_morristown_birth', 'ent_anna-harrison', 'plc_morristown', 'birthplace', 'clm_wiki_anna-harrison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_anna-harrison_bend_birth', 'ent_anna-harrison', 'plc_bend', 'birthplace', 'clm_wiki_anna-harrison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_anna-wintour_london_birth', 'ent_anna-wintour', 'plc_london', 'birthplace', 'clm_wiki_anna-wintour_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_anthony-kennedy_sacramento_birth', 'ent_anthony-kennedy', 'plc_sacramento', 'birthplace', 'clm_wiki_anthony-kennedy_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_anthony-wayne_pennsylvania_birth', 'ent_anthony-wayne', 'plc_pennsylvania', 'birthplace', 'clm_wiki_anthony-wayne_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_antonin-scalia_new-jersey_birth', 'ent_antonin-scalia', 'plc_new-jersey', 'birthplace', 'clm_wiki_antonin-scalia_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_antony-blinken_victoria_birth', 'ent_antony-blinken', 'plc_victoria', 'birthplace', 'clm_wiki_antony-blinken_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_antony-blinken_new-york_birth', 'ent_antony-blinken', 'plc_new-york', 'birthplace', 'clm_wiki_antony-blinken_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_antony-blinken_new-york_birth', 'ent_antony-blinken', 'plc_new-york', 'birthplace', 'clm_wiki_antony-blinken_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_antony-blinken_columbia-university_birth', 'ent_antony-blinken', 'plc_columbia-university', 'birthplace', 'clm_wiki_antony-blinken_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_antony-blinken_new-york_birth', 'ent_antony-blinken', 'plc_new-york', 'birthplace', 'clm_wiki_antony-blinken_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ariana-grande_florida_birth', 'ent_ariana-grande', 'plc_florida', 'birthplace', 'clm_wiki_ariana-grande_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_arnold-palmer_pennsylvania_birth', 'ent_arnold-palmer', 'plc_pennsylvania', 'birthplace', 'clm_wiki_arnold-palmer_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_arnold-palmer_longview_birth', 'ent_arnold-palmer', 'plc_longview', 'birthplace', 'clm_wiki_arnold-palmer_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_art-blakey_pennsylvania_birth', 'ent_art-blakey', 'plc_pennsylvania', 'birthplace', 'clm_wiki_art-blakey_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_art-blakey_pennsylvania_birth', 'ent_art-blakey', 'plc_pennsylvania', 'birthplace', 'clm_wiki_art-blakey_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_arthur-ashe_richmond_birth', 'ent_arthur-ashe', 'plc_richmond', 'birthplace', 'clm_wiki_arthur-ashe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_arthur-penn_philadelphia_birth', 'ent_arthur-penn', 'plc_philadelphia', 'birthplace', 'clm_wiki_arthur-penn_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_audre-lorde_grenada_birth', 'ent_audre-lorde', 'plc_grenada', 'birthplace', 'clm_wiki_audre-lorde_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_audre-lorde_mississippi_birth', 'ent_audre-lorde', 'plc_mississippi', 'birthplace', 'clm_wiki_audre-lorde_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_audrey-hepburn_ruston_birth', 'ent_audrey-hepburn', 'plc_ruston', 'birthplace', 'clm_wiki_audrey-hepburn_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_babe-ruth_baltimore_birth', 'ent_babe-ruth', 'plc_baltimore', 'birthplace', 'clm_wiki_babe-ruth_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_babe-ruth_baltimore_birth', 'ent_babe-ruth', 'plc_baltimore', 'birthplace', 'clm_wiki_babe-ruth_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_babe-ruth_hot-springs_birth', 'ent_babe-ruth', 'plc_hot-springs', 'birthplace', 'clm_wiki_babe-ruth_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_barack-obama_fitzgerald_birth', 'ent_barack-obama', 'plc_fitzgerald', 'birthplace', 'clm_wiki_barack-obama_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_barack-obama_columbia-university_birth', 'ent_barack-obama', 'plc_columbia-university', 'birthplace', 'clm_wiki_barack-obama_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_barack-obama_honolulu_birth', 'ent_barack-obama', 'plc_honolulu', 'birthplace', 'clm_wiki_barack-obama_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_barack-obama_wichita_birth', 'ent_barack-obama', 'plc_wichita', 'birthplace', 'clm_wiki_barack-obama_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_barbara-bush_new-york-city_birth', 'ent_barbara-bush', 'plc_new-york-city', 'birthplace', 'clm_wiki_barbara-bush_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_barbara-bush_texas_birth', 'ent_barbara-bush', 'plc_texas', 'birthplace', 'clm_wiki_barbara-bush_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_barbara-bush_midland_birth', 'ent_barbara-bush', 'plc_midland', 'birthplace', 'clm_wiki_barbara-bush_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_barbara-walters_paris_birth', 'ent_barbara-walters', 'plc_paris', 'birthplace', 'clm_wiki_barbara-walters_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_barry-sanders_wichita_birth', 'ent_barry-sanders', 'plc_wichita', 'birthplace', 'clm_wiki_barry-sanders_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_benjamin-banneker_baltimore_birth', 'ent_benjamin-banneker', 'plc_baltimore', 'birthplace', 'clm_wiki_benjamin-banneker_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_benjamin-banneker_baltimore_birth', 'ent_benjamin-banneker', 'plc_baltimore', 'birthplace', 'clm_wiki_benjamin-banneker_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_benjamin-franklin_pennsylvania_birth', 'ent_benjamin-franklin', 'plc_pennsylvania', 'birthplace', 'clm_wiki_benjamin-franklin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_benjamin-franklin_franklin_birth', 'ent_benjamin-franklin', 'plc_franklin', 'birthplace', 'clm_wiki_benjamin-franklin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_benjamin-franklin_massachusetts_birth', 'ent_benjamin-franklin', 'plc_massachusetts', 'birthplace', 'clm_wiki_benjamin-franklin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_benjamin-franklin_philadelphia_birth', 'ent_benjamin-franklin', 'plc_philadelphia', 'birthplace', 'clm_wiki_benjamin-franklin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_benjamin-franklin_franklin_birth', 'ent_benjamin-franklin', 'plc_franklin', 'birthplace', 'clm_wiki_benjamin-franklin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_benjamin-franklin_philadelphia_birth', 'ent_benjamin-franklin', 'plc_philadelphia', 'birthplace', 'clm_wiki_benjamin-franklin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_benjamin-franklin_franklin_birth', 'ent_benjamin-franklin', 'plc_franklin', 'birthplace', 'clm_wiki_benjamin-franklin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_benjamin-harrison_bend_birth', 'ent_benjamin-harrison', 'plc_bend', 'birthplace', 'clm_wiki_benjamin-harrison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_benjamin-harrison_elizabeth_birth', 'ent_benjamin-harrison', 'plc_elizabeth', 'birthplace', 'clm_wiki_benjamin-harrison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_benny-goodman_illinois_birth', 'ent_benny-goodman', 'plc_illinois', 'birthplace', 'clm_wiki_benny-goodman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bernard-lafayette_nashville_birth', 'ent_bernard-lafayette', 'plc_nashville', 'birthplace', 'clm_wiki_bernard-lafayette_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bernice-robinson_south-carolina_birth', 'ent_bernice-robinson', 'plc_south-carolina', 'birthplace', 'clm_wiki_bernice-robinson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bess-truman_missouri_birth', 'ent_bess-truman', 'plc_missouri', 'birthplace', 'clm_wiki_bess-truman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bess-truman_elizabeth_birth', 'ent_bess-truman', 'plc_elizabeth', 'birthplace', 'clm_wiki_bess-truman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_betty-ford_elizabeth_birth', 'ent_betty-ford', 'plc_elizabeth', 'birthplace', 'clm_wiki_betty-ford_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bill-clinton_jefferson_birth', 'ent_bill-clinton', 'plc_jefferson', 'birthplace', 'clm_wiki_bill-clinton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bill-clinton_georgetown-university_birth', 'ent_bill-clinton', 'plc_georgetown-university', 'birthplace', 'clm_wiki_bill-clinton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bill-gates_washington_birth', 'ent_bill-gates', 'plc_washington', 'birthplace', 'clm_wiki_bill-gates_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bill-gates_washington_birth', 'ent_bill-gates', 'plc_washington', 'birthplace', 'clm_wiki_bill-gates_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_billie-holiday_philadelphia_birth', 'ent_billie-holiday', 'plc_philadelphia', 'birthplace', 'clm_wiki_billie-holiday_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_billie-holiday_philadelphia_birth', 'ent_billie-holiday', 'plc_philadelphia', 'birthplace', 'clm_wiki_billie-holiday_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_billy-graham_north-carolina_birth', 'ent_billy-graham', 'plc_north-carolina', 'birthplace', 'clm_wiki_billy-graham_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_billy-graham_graham_birth', 'ent_billy-graham', 'plc_graham', 'birthplace', 'clm_wiki_billy-graham_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_billy-graham_north-carolina_birth', 'ent_billy-graham', 'plc_north-carolina', 'birthplace', 'clm_wiki_billy-graham_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_billy-joel_columbia_birth', 'ent_billy-joel', 'plc_columbia', 'birthplace', 'clm_wiki_billy-joel_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_billy-joel_new-york-city_birth', 'ent_billy-joel', 'plc_new-york-city', 'birthplace', 'clm_wiki_billy-joel_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_billy-joel_the-bronx_birth', 'ent_billy-joel', 'plc_the-bronx', 'birthplace', 'clm_wiki_billy-joel_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_billy-joel_brooklyn_birth', 'ent_billy-joel', 'plc_brooklyn', 'birthplace', 'clm_wiki_billy-joel_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_billy-wilder_california_birth', 'ent_billy-wilder', 'plc_california', 'birthplace', 'clm_wiki_billy-wilder_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_billy-wilder_victoria_birth', 'ent_billy-wilder', 'plc_victoria', 'birthplace', 'clm_wiki_billy-wilder_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bing-crosby_washington_birth', 'ent_bing-crosby', 'plc_washington', 'birthplace', 'clm_wiki_bing-crosby_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bing-crosby_washington_birth', 'ent_bing-crosby', 'plc_washington', 'birthplace', 'clm_wiki_bing-crosby_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_biz-stone_massachusetts_birth', 'ent_biz-stone', 'plc_massachusetts', 'birthplace', 'clm_wiki_biz-stone_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bjarne-stroustrup_columbia_birth', 'ent_bjarne-stroustrup', 'plc_columbia', 'birthplace', 'clm_wiki_bjarne-stroustrup_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_blake-shelton_oklahoma_birth', 'ent_blake-shelton', 'plc_oklahoma', 'birthplace', 'clm_wiki_blake-shelton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_blake-shelton_nashville_birth', 'ent_blake-shelton', 'plc_nashville', 'birthplace', 'clm_wiki_blake-shelton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_blake-shelton_oklahoma_birth', 'ent_blake-shelton', 'plc_oklahoma', 'birthplace', 'clm_wiki_blake-shelton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bob-fosse_illinois_birth', 'ent_bob-fosse', 'plc_illinois', 'birthplace', 'clm_wiki_bob-fosse_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bob-gibson_nebraska_birth', 'ent_bob-gibson', 'plc_nebraska', 'birthplace', 'clm_wiki_bob-gibson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bobby-murphy_stanford-university_birth', 'ent_bobby-murphy', 'plc_stanford-university', 'birthplace', 'clm_wiki_bobby-murphy_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bobby-murphy_california_birth', 'ent_bobby-murphy', 'plc_california', 'birthplace', 'clm_wiki_bobby-murphy_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_brad-paisley_nashville_birth', 'ent_brad-paisley', 'plc_nashville', 'birthplace', 'clm_wiki_brad-paisley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_brad-paisley_west-virginia_birth', 'ent_brad-paisley', 'plc_west-virginia', 'birthplace', 'clm_wiki_brad-paisley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_brett-kavanaugh_washington_birth', 'ent_brett-kavanaugh', 'plc_washington', 'birthplace', 'clm_wiki_brett-kavanaugh_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_brian-chesky_new-york_birth', 'ent_brian-chesky', 'plc_new-york', 'birthplace', 'clm_wiki_brian-chesky_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_brian-de-palma_new-jersey_birth', 'ent_brian-de-palma', 'plc_new-jersey', 'birthplace', 'clm_wiki_brian-de-palma_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_brian-de-palma_new-jersey_birth', 'ent_brian-de-palma', 'plc_new-jersey', 'birthplace', 'clm_wiki_brian-de-palma_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bruce-springsteen_frederick_birth', 'ent_bruce-springsteen', 'plc_frederick', 'birthplace', 'clm_wiki_bruce-springsteen_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bruce-springsteen_nebraska_birth', 'ent_bruce-springsteen', 'plc_nebraska', 'birthplace', 'clm_wiki_bruce-springsteen_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bruce-springsteen_virginia_birth', 'ent_bruce-springsteen', 'plc_virginia', 'birthplace', 'clm_wiki_bruce-springsteen_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bruce-springsteen_new-jersey_birth', 'ent_bruce-springsteen', 'plc_new-jersey', 'birthplace', 'clm_wiki_bruce-springsteen_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_buster-keaton_kansas_birth', 'ent_buster-keaton', 'plc_kansas', 'birthplace', 'clm_wiki_buster-keaton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_buzz-aldrin_new-jersey_birth', 'ent_buzz-aldrin', 'plc_new-jersey', 'birthplace', 'clm_wiki_buzz-aldrin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_buzz-aldrin_new-jersey_birth', 'ent_buzz-aldrin', 'plc_new-jersey', 'birthplace', 'clm_wiki_buzz-aldrin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_calvin-coolidge_montgomery_birth', 'ent_calvin-coolidge', 'plc_montgomery', 'birthplace', 'clm_wiki_calvin-coolidge_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_calvin-coolidge_plymouth_birth', 'ent_calvin-coolidge', 'plc_plymouth', 'birthplace', 'clm_wiki_calvin-coolidge_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_cardi-b_the-bronx_birth', 'ent_cardi-b', 'plc_the-bronx', 'birthplace', 'clm_wiki_cardi-b_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_carl-lewis_new-jersey_birth', 'ent_carl-lewis', 'plc_new-jersey', 'birthplace', 'clm_wiki_carl-lewis_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_carl-lewis_birmingham_birth', 'ent_carl-lewis', 'plc_birmingham', 'birthplace', 'clm_wiki_carl-lewis_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_carly-simon_new-york-city_birth', 'ent_carly-simon', 'plc_new-york-city', 'birthplace', 'clm_wiki_carly-simon_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_carly-simon_columbia_birth', 'ent_carly-simon', 'plc_columbia', 'birthplace', 'clm_wiki_carly-simon_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_caroline-harrison_cleveland_birth', 'ent_caroline-harrison', 'plc_cleveland', 'birthplace', 'clm_wiki_caroline-harrison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_caroline-harrison_harrison_birth', 'ent_caroline-harrison', 'plc_harrison', 'birthplace', 'clm_wiki_caroline-harrison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_carrie-underwood_oklahoma_birth', 'ent_carrie-underwood', 'plc_oklahoma', 'birthplace', 'clm_wiki_carrie-underwood_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_carrie-underwood_nashville_birth', 'ent_carrie-underwood', 'plc_nashville', 'birthplace', 'clm_wiki_carrie-underwood_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_celine-dion_florida_birth', 'ent_celine-dion', 'plc_florida', 'birthplace', 'clm_wiki_celine-dion_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_chad-hurley_university-of-pennsylvania_birth', 'ent_chad-hurley', 'plc_university-of-pennsylvania', 'birthplace', 'clm_wiki_chad-hurley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_chad-hurley_university-of-pennsylvania_birth', 'ent_chad-hurley', 'plc_university-of-pennsylvania', 'birthplace', 'clm_wiki_chad-hurley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-curtis_washington_birth', 'ent_charles-curtis', 'plc_washington', 'birthplace', 'clm_wiki_charles-curtis_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-curtis_topeka_birth', 'ent_charles-curtis', 'plc_topeka', 'birthplace', 'clm_wiki_charles-curtis_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-curtis_cheyenne_birth', 'ent_charles-curtis', 'plc_cheyenne', 'birthplace', 'clm_wiki_charles-curtis_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-duke_north-carolina_birth', 'ent_charles-duke', 'plc_north-carolina', 'birthplace', 'clm_wiki_charles-duke_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-duke_south-carolina_birth', 'ent_charles-duke', 'plc_south-carolina', 'birthplace', 'clm_wiki_charles-duke_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-duke_north-carolina_birth', 'ent_charles-duke', 'plc_north-carolina', 'birthplace', 'clm_wiki_charles-duke_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-evans-hughes_new-york_birth', 'ent_charles-evans-hughes', 'plc_new-york', 'birthplace', 'clm_wiki_charles-evans-hughes_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-evans-hughes_new-jersey_birth', 'ent_charles-evans-hughes', 'plc_new-jersey', 'birthplace', 'clm_wiki_charles-evans-hughes_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-hamilton-houston_washington_birth', 'ent_charles-hamilton-houston', 'plc_washington', 'birthplace', 'clm_wiki_charles-hamilton-houston_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-hamilton-houston_amherst-college_birth', 'ent_charles-hamilton-houston', 'plc_amherst-college', 'birthplace', 'clm_wiki_charles-hamilton-houston_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-hamilton-houston_amherst-college_birth', 'ent_charles-hamilton-houston', 'plc_amherst-college', 'birthplace', 'clm_wiki_charles-hamilton-houston_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-mingus_nogales_birth', 'ent_charles-mingus', 'plc_nogales', 'birthplace', 'clm_wiki_charles-mingus_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-mingus_north-carolina_birth', 'ent_charles-mingus', 'plc_north-carolina', 'birthplace', 'clm_wiki_charles-mingus_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charlie-chaplin_spencer_birth', 'ent_charlie-chaplin', 'plc_spencer', 'birthplace', 'clm_wiki_charlie-chaplin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charlie-chaplin_los-angeles_birth', 'ent_charlie-chaplin', 'plc_los-angeles', 'birthplace', 'clm_wiki_charlie-chaplin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charlie-parker_new-york-city_birth', 'ent_charlie-parker', 'plc_new-york-city', 'birthplace', 'clm_wiki_charlie-parker_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charlie-parker_kansas-city_birth', 'ent_charlie-parker', 'plc_kansas-city', 'birthplace', 'clm_wiki_charlie-parker_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charlie-parker_reno_birth', 'ent_charlie-parker', 'plc_reno', 'birthplace', 'clm_wiki_charlie-parker_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_chet-baker_oklahoma_birth', 'ent_chet-baker', 'plc_oklahoma', 'birthplace', 'clm_wiki_chet-baker_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_chick-corea_massachusetts_birth', 'ent_chick-corea', 'plc_massachusetts', 'birthplace', 'clm_wiki_chick-corea_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_chief-joseph_washington_birth', 'ent_chief-joseph', 'plc_washington', 'birthplace', 'clm_wiki_chief-joseph_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_chris-cornell_washington_birth', 'ent_chris-cornell', 'plc_washington', 'birthplace', 'clm_wiki_chris-cornell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_chris-evert_fort-lauderdale_birth', 'ent_chris-evert', 'plc_fort-lauderdale', 'birthplace', 'clm_wiki_chris-evert_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_chris-evert_fort-lauderdale_birth', 'ent_chris-evert', 'plc_fort-lauderdale', 'birthplace', 'clm_wiki_chris-evert_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_chris-stapleton_nashville_birth', 'ent_chris-stapleton', 'plc_nashville', 'birthplace', 'clm_wiki_chris-stapleton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_chris-stapleton_vanderbilt-university_birth', 'ent_chris-stapleton', 'plc_vanderbilt-university', 'birthplace', 'clm_wiki_chris-stapleton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_chris-stapleton_lexington_birth', 'ent_chris-stapleton', 'plc_lexington', 'birthplace', 'clm_wiki_chris-stapleton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_chris-stapleton_nashville_birth', 'ent_chris-stapleton', 'plc_nashville', 'birthplace', 'clm_wiki_chris-stapleton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_christopher-nolan_westminster_birth', 'ent_christopher-nolan', 'plc_westminster', 'birthplace', 'clm_wiki_christopher-nolan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_christopher-nolan_evanston_birth', 'ent_christopher-nolan', 'plc_evanston', 'birthplace', 'clm_wiki_christopher-nolan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ciara_wilson_birth', 'ent_ciara', 'plc_wilson', 'birthplace', 'clm_wiki_ciara_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_claes-oldenburg_new-york_birth', 'ent_claes-oldenburg', 'plc_new-york', 'birthplace', 'clm_wiki_claes-oldenburg_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_claes-oldenburg_chicago_birth', 'ent_claes-oldenburg', 'plc_chicago', 'birthplace', 'clm_wiki_claes-oldenburg_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_clarence-thomas_georgia_birth', 'ent_clarence-thomas', 'plc_georgia', 'birthplace', 'clm_wiki_clarence-thomas_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_clarence-thomas_savannah_birth', 'ent_clarence-thomas', 'plc_savannah', 'birthplace', 'clm_wiki_clarence-thomas_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_cokie-roberts_new-orleans_birth', 'ent_cokie-roberts', 'plc_new-orleans', 'birthplace', 'clm_wiki_cokie-roberts_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_cole-porter_indiana_birth', 'ent_cole-porter', 'plc_indiana', 'birthplace', 'clm_wiki_cole-porter_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_cole-porter_indiana_birth', 'ent_cole-porter', 'plc_indiana', 'birthplace', 'clm_wiki_cole-porter_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_colin-powell_new-york_birth', 'ent_colin-powell', 'plc_new-york', 'birthplace', 'clm_wiki_colin-powell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_colin-powell_new-york-city_birth', 'ent_colin-powell', 'plc_new-york-city', 'birthplace', 'clm_wiki_colin-powell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_colin-powell_new-york-city_birth', 'ent_colin-powell', 'plc_new-york-city', 'birthplace', 'clm_wiki_colin-powell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_condoleezza-rice_birmingham_birth', 'ent_condoleezza-rice', 'plc_birmingham', 'birthplace', 'clm_wiki_condoleezza-rice_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_connie-chung_washington_birth', 'ent_connie-chung', 'plc_washington', 'birthplace', 'clm_wiki_connie-chung_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_constance-baker-motley_connecticut_birth', 'ent_constance-baker-motley', 'plc_connecticut', 'birthplace', 'clm_wiki_constance-baker-motley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_constance-baker-motley_connecticut_birth', 'ent_constance-baker-motley', 'plc_connecticut', 'birthplace', 'clm_wiki_constance-baker-motley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_constance-baker-motley_new-york-city_birth', 'ent_constance-baker-motley', 'plc_new-york-city', 'birthplace', 'clm_wiki_constance-baker-motley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_constance-baker-motley_connecticut_birth', 'ent_constance-baker-motley', 'plc_connecticut', 'birthplace', 'clm_wiki_constance-baker-motley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_cornelius-vanderbilt_staten-island_birth', 'ent_cornelius-vanderbilt', 'plc_staten-island', 'birthplace', 'clm_wiki_cornelius-vanderbilt_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_cornelius-vanderbilt_staten-island_birth', 'ent_cornelius-vanderbilt', 'plc_staten-island', 'birthplace', 'clm_wiki_cornelius-vanderbilt_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_count-basie_new-jersey_birth', 'ent_count-basie', 'plc_new-jersey', 'birthplace', 'clm_wiki_count-basie_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_crazy-horse_nebraska_birth', 'ent_crazy-horse', 'plc_nebraska', 'birthplace', 'clm_wiki_crazy-horse_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_creflo-dollar_georgia_birth', 'ent_creflo-dollar', 'plc_georgia', 'birthplace', 'clm_wiki_creflo-dollar_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_creighton-abrams_massachusetts_birth', 'ent_creighton-abrams', 'plc_massachusetts', 'birthplace', 'clm_wiki_creighton-abrams_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_creighton-abrams_massachusetts_birth', 'ent_creighton-abrams', 'plc_massachusetts', 'birthplace', 'clm_wiki_creighton-abrams_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dalai-lama_defiance_birth', 'ent_dalai-lama', 'plc_defiance', 'birthplace', 'clm_wiki_dalai-lama_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dan-quayle_indianapolis_birth', 'ent_dan-quayle', 'plc_indianapolis', 'birthplace', 'clm_wiki_dan-quayle_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dan-quayle_indiana_birth', 'ent_dan-quayle', 'plc_indiana', 'birthplace', 'clm_wiki_dan-quayle_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dan-quayle_indianapolis_birth', 'ent_dan-quayle', 'plc_indianapolis', 'birthplace', 'clm_wiki_dan-quayle_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_daniel-boone_pennsylvania_birth', 'ent_daniel-boone', 'plc_pennsylvania', 'birthplace', 'clm_wiki_daniel-boone_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_daniel-boone_boone_birth', 'ent_daniel-boone', 'plc_boone', 'birthplace', 'clm_wiki_daniel-boone_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_daniel-boone_boone_birth', 'ent_daniel-boone', 'plc_boone', 'birthplace', 'clm_wiki_daniel-boone_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dario-amodei_san-francisco_birth', 'ent_dario-amodei', 'plc_san-francisco', 'birthplace', 'clm_wiki_dario-amodei_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_darius-rucker_nashville_birth', 'ent_darius-rucker', 'plc_nashville', 'birthplace', 'clm_wiki_darius-rucker_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dave-brubeck_california_birth', 'ent_dave-brubeck', 'plc_california', 'birthplace', 'clm_wiki_dave-brubeck_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dave-brubeck_los-angeles_birth', 'ent_dave-brubeck', 'plc_los-angeles', 'birthplace', 'clm_wiki_dave-brubeck_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dave-brubeck_connecticut_birth', 'ent_dave-brubeck', 'plc_connecticut', 'birthplace', 'clm_wiki_dave-brubeck_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dave-brubeck_los-angeles_birth', 'ent_dave-brubeck', 'plc_los-angeles', 'birthplace', 'clm_wiki_dave-brubeck_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_david-bowie_london_birth', 'ent_david-bowie', 'plc_london', 'birthplace', 'clm_wiki_david-bowie_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_david-fincher_south-dakota_birth', 'ent_david-fincher', 'plc_south-dakota', 'birthplace', 'clm_wiki_david-fincher_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_david-fincher_fitzgerald_birth', 'ent_david-fincher', 'plc_fitzgerald', 'birthplace', 'clm_wiki_david-fincher_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_david-letterman_indianapolis_birth', 'ent_david-letterman', 'plc_indianapolis', 'birthplace', 'clm_wiki_david-letterman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_david-letterman_indianapolis_birth', 'ent_david-letterman', 'plc_indianapolis', 'birthplace', 'clm_wiki_david-letterman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_david-letterman_madison-square-garden_birth', 'ent_david-letterman', 'plc_madison-square-garden', 'birthplace', 'clm_wiki_david-letterman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_david-packard_stanford-university_birth', 'ent_david-packard', 'plc_stanford-university', 'birthplace', 'clm_wiki_david-packard_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_david-petraeus_new-york_birth', 'ent_david-petraeus', 'plc_new-york', 'birthplace', 'clm_wiki_david-petraeus_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_david-petraeus_washington_birth', 'ent_david-petraeus', 'plc_washington', 'birthplace', 'clm_wiki_david-petraeus_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_david-petraeus_pentagon_birth', 'ent_david-petraeus', 'plc_pentagon', 'birthplace', 'clm_wiki_david-petraeus_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_david-remnick_hackensack_birth', 'ent_david-remnick', 'plc_hackensack', 'birthplace', 'clm_wiki_david-remnick_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_david-remnick_new-jersey_birth', 'ent_david-remnick', 'plc_new-jersey', 'birthplace', 'clm_wiki_david-remnick_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_david-souter_massachusetts_birth', 'ent_david-souter', 'plc_massachusetts', 'birthplace', 'clm_wiki_david-souter_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_davy-crockett_north-carolina_birth', 'ent_davy-crockett', 'plc_north-carolina', 'birthplace', 'clm_wiki_davy-crockett_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dean-rusk_georgia_birth', 'ent_dean-rusk', 'plc_georgia', 'birthplace', 'clm_wiki_dean-rusk_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dean-rusk_georgia_birth', 'ent_dean-rusk', 'plc_georgia', 'birthplace', 'clm_wiki_dean-rusk_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_deion-sanders_fort-myers_birth', 'ent_deion-sanders', 'plc_fort-myers', 'birthplace', 'clm_wiki_deion-sanders_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dennis-ritchie_new-york_birth', 'ent_dennis-ritchie', 'plc_new-york', 'birthplace', 'clm_wiki_dennis-ritchie_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dennis-ritchie_new-york_birth', 'ent_dennis-ritchie', 'plc_new-york', 'birthplace', 'clm_wiki_dennis-ritchie_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dennis-ritchie_harvard-university_birth', 'ent_dennis-ritchie', 'plc_harvard-university', 'birthplace', 'clm_wiki_dennis-ritchie_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_denzel-washington_new-york-city_birth', 'ent_denzel-washington', 'plc_new-york-city', 'birthplace', 'clm_wiki_denzel-washington_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_derek-jeter_new-jersey_birth', 'ent_derek-jeter', 'plc_new-jersey', 'birthplace', 'clm_wiki_derek-jeter_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_derek-jeter_new-jersey_birth', 'ent_derek-jeter', 'plc_new-jersey', 'birthplace', 'clm_wiki_derek-jeter_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_diana-ross_michigan_birth', 'ent_diana-ross', 'plc_michigan', 'birthplace', 'clm_wiki_diana-ross_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_diana-ross_wilson_birth', 'ent_diana-ross', 'plc_wilson', 'birthplace', 'clm_wiki_diana-ross_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_diana-vreeland_new-york-city_birth', 'ent_diana-vreeland', 'plc_new-york-city', 'birthplace', 'clm_wiki_diana-vreeland_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_diana-vreeland_paris_birth', 'ent_diana-vreeland', 'plc_paris', 'birthplace', 'clm_wiki_diana-vreeland_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_diana-vreeland_new-mexico_birth', 'ent_diana-vreeland', 'plc_new-mexico', 'birthplace', 'clm_wiki_diana-vreeland_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_diane-nash_illinois_birth', 'ent_diane-nash', 'plc_illinois', 'birthplace', 'clm_wiki_diane-nash_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_diane-nash_chicago_birth', 'ent_diane-nash', 'plc_chicago', 'birthplace', 'clm_wiki_diane-nash_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_diane-sawyer_kentucky_birth', 'ent_diane-sawyer', 'plc_kentucky', 'birthplace', 'clm_wiki_diane-sawyer_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dick-cheney_elizabeth_birth', 'ent_dick-cheney', 'plc_elizabeth', 'birthplace', 'clm_wiki_dick-cheney_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dierks-bentley_phoenix_birth', 'ent_dierks-bentley', 'plc_phoenix', 'birthplace', 'clm_wiki_dierks-bentley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dierks-bentley_nashville_birth', 'ent_dierks-bentley', 'plc_nashville', 'birthplace', 'clm_wiki_dierks-bentley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dierks-bentley_phoenix_birth', 'ent_dierks-bentley', 'plc_phoenix', 'birthplace', 'clm_wiki_dierks-bentley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dizzy-gillespie_south-carolina_birth', 'ent_dizzy-gillespie', 'plc_south-carolina', 'birthplace', 'clm_wiki_dizzy-gillespie_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dizzy-gillespie_manhattan_birth', 'ent_dizzy-gillespie', 'plc_manhattan', 'birthplace', 'clm_wiki_dizzy-gillespie_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dolley-madison_north-carolina_birth', 'ent_dolley-madison', 'plc_north-carolina', 'birthplace', 'clm_wiki_dolley-madison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dolley-madison_madison_birth', 'ent_dolley-madison', 'plc_madison', 'birthplace', 'clm_wiki_dolley-madison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_don-henley_texas_birth', 'ent_don-henley', 'plc_texas', 'birthplace', 'clm_wiki_don-henley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_donna-summer_boston_birth', 'ent_donna-summer', 'plc_boston', 'birthplace', 'clm_wiki_donna-summer_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dorothy-height_columbia-university_birth', 'ent_dorothy-height', 'plc_columbia-university', 'birthplace', 'clm_wiki_dorothy-height_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dorothy-height_pennsylvania_birth', 'ent_dorothy-height', 'plc_pennsylvania', 'birthplace', 'clm_wiki_dorothy-height_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dorothy-height_washington_birth', 'ent_dorothy-height', 'plc_washington', 'birthplace', 'clm_wiki_dorothy-height_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_drew-houston_massachusetts_birth', 'ent_drew-houston', 'plc_massachusetts', 'birthplace', 'clm_wiki_drew-houston_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_drew-houston_houston_birth', 'ent_drew-houston', 'plc_houston', 'birthplace', 'clm_wiki_drew-houston_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_drew-houston_massachusetts_birth', 'ent_drew-houston', 'plc_massachusetts', 'birthplace', 'clm_wiki_drew-houston_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dua-lipa_london_birth', 'ent_dua-lipa', 'plc_london', 'birthplace', 'clm_wiki_dua-lipa_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_duke-ellington_washington_birth', 'ent_duke-ellington', 'plc_washington', 'birthplace', 'clm_wiki_duke-ellington_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_duke-ellington_washington_birth', 'ent_duke-ellington', 'plc_washington', 'birthplace', 'clm_wiki_duke-ellington_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_duke-ellington_north-carolina_birth', 'ent_duke-ellington', 'plc_north-carolina', 'birthplace', 'clm_wiki_duke-ellington_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_earl-warren_los-angeles_birth', 'ent_earl-warren', 'plc_los-angeles', 'birthplace', 'clm_wiki_earl-warren_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_earl-warren_los-angeles_birth', 'ent_earl-warren', 'plc_los-angeles', 'birthplace', 'clm_wiki_earl-warren_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_earl-warren_university-of-california-berkeley_birth', 'ent_earl-warren', 'plc_university-of-california-berkeley', 'birthplace', 'clm_wiki_earl-warren_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edgar-allan-poe_massachusetts_birth', 'ent_edgar-allan-poe', 'plc_massachusetts', 'birthplace', 'clm_wiki_edgar-allan-poe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edgar-allan-poe_massachusetts_birth', 'ent_edgar-allan-poe', 'plc_massachusetts', 'birthplace', 'clm_wiki_edgar-allan-poe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edgar-allan-poe_london_birth', 'ent_edgar-allan-poe', 'plc_london', 'birthplace', 'clm_wiki_edgar-allan-poe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edith-roosevelt_washington_birth', 'ent_edith-roosevelt', 'plc_washington', 'birthplace', 'clm_wiki_edith-roosevelt_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edith-wilson_virginia_birth', 'ent_edith-wilson', 'plc_virginia', 'birthplace', 'clm_wiki_edith-wilson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edith-wilson_norman_birth', 'ent_edith-wilson', 'plc_norman', 'birthplace', 'clm_wiki_edith-wilson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edith-wilson_virginia_birth', 'ent_edith-wilson', 'plc_virginia', 'birthplace', 'clm_wiki_edith-wilson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edith-wilson_virginia_birth', 'ent_edith-wilson', 'plc_virginia', 'birthplace', 'clm_wiki_edith-wilson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edith-wilson_new-york_birth', 'ent_edith-wilson', 'plc_new-york', 'birthplace', 'clm_wiki_edith-wilson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edward-douglass-white_thibodaux_birth', 'ent_edward-douglass-white', 'plc_thibodaux', 'birthplace', 'clm_wiki_edward-douglass-white_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edward-douglass-white_new-orleans_birth', 'ent_edward-douglass-white', 'plc_new-orleans', 'birthplace', 'clm_wiki_edward-douglass-white_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edward-douglass-white_new-orleans_birth', 'ent_edward-douglass-white', 'plc_new-orleans', 'birthplace', 'clm_wiki_edward-douglass-white_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edward-douglass-white_douglas_birth', 'ent_edward-douglass-white', 'plc_douglas', 'birthplace', 'clm_wiki_edward-douglass-white_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edward-hopper_new-york_birth', 'ent_edward-hopper', 'plc_new-york', 'birthplace', 'clm_wiki_edward-hopper_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edward-hopper_new-york-city_birth', 'ent_edward-hopper', 'plc_new-york-city', 'birthplace', 'clm_wiki_edward-hopper_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edward-teller_california_birth', 'ent_edward-teller', 'plc_california', 'birthplace', 'clm_wiki_edward-teller_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eleanor-roosevelt_new-york-city_birth', 'ent_eleanor-roosevelt', 'plc_new-york-city', 'birthplace', 'clm_wiki_eleanor-roosevelt_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eleanor-roosevelt_new-york-city_birth', 'ent_eleanor-roosevelt', 'plc_new-york-city', 'birthplace', 'clm_wiki_eleanor-roosevelt_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eleanor-roosevelt_new-york-city_birth', 'ent_eleanor-roosevelt', 'plc_new-york-city', 'birthplace', 'clm_wiki_eleanor-roosevelt_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eleanor-roosevelt_new-york_birth', 'ent_eleanor-roosevelt', 'plc_new-york', 'birthplace', 'clm_wiki_eleanor-roosevelt_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eleanor-roosevelt_franklin_birth', 'ent_eleanor-roosevelt', 'plc_franklin', 'birthplace', 'clm_wiki_eleanor-roosevelt_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_elena-kagan_manhattan_birth', 'ent_elena-kagan', 'plc_manhattan', 'birthplace', 'clm_wiki_elena-kagan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eli-whitney_massachusetts_birth', 'ent_eli-whitney', 'plc_massachusetts', 'birthplace', 'clm_wiki_eli-whitney_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eli-whitney_elizabeth_birth', 'ent_eli-whitney', 'plc_elizabeth', 'birthplace', 'clm_wiki_eli-whitney_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eli-whitney_connecticut_birth', 'ent_eli-whitney', 'plc_connecticut', 'birthplace', 'clm_wiki_eli-whitney_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_elizabeth-blackwell_elizabeth_birth', 'ent_elizabeth-blackwell', 'plc_elizabeth', 'birthplace', 'clm_wiki_elizabeth-blackwell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_elizabeth-monroe_new-york-city_birth', 'ent_elizabeth-monroe', 'plc_new-york-city', 'birthplace', 'clm_wiki_elizabeth-monroe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_elizabeth-monroe_new-york_birth', 'ent_elizabeth-monroe', 'plc_new-york', 'birthplace', 'clm_wiki_elizabeth-monroe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_elizabeth-monroe_washington_birth', 'ent_elizabeth-monroe', 'plc_washington', 'birthplace', 'clm_wiki_elizabeth-monroe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_elizabeth-monroe_elizabeth_birth', 'ent_elizabeth-monroe', 'plc_elizabeth', 'birthplace', 'clm_wiki_elizabeth-monroe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_elizabeth-taylor_los-angeles_birth', 'ent_elizabeth-taylor', 'plc_los-angeles', 'birthplace', 'clm_wiki_elizabeth-taylor_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_elizabeth-taylor_london_birth', 'ent_elizabeth-taylor', 'plc_london', 'birthplace', 'clm_wiki_elizabeth-taylor_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ella-baker_virginia_birth', 'ent_ella-baker', 'plc_virginia', 'birthplace', 'clm_wiki_ella-baker_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ella-fitzgerald_newport-news_birth', 'ent_ella-fitzgerald', 'plc_newport-news', 'birthplace', 'clm_wiki_ella-fitzgerald_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ella-fitzgerald_newport-news_birth', 'ent_ella-fitzgerald', 'plc_newport-news', 'birthplace', 'clm_wiki_ella-fitzgerald_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ellen-wilson_wilson_birth', 'ent_ellen-wilson', 'plc_wilson', 'birthplace', 'clm_wiki_ellen-wilson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_emma-stone_arizona_birth', 'ent_emma-stone', 'plc_arizona', 'birthplace', 'clm_wiki_emma-stone_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_emma-stone_golden_birth', 'ent_emma-stone', 'plc_golden', 'birthplace', 'clm_wiki_emma-stone_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_emmitt-smith_pensacola_birth', 'ent_emmitt-smith', 'plc_pensacola', 'birthplace', 'clm_wiki_emmitt-smith_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_emmitt-smith_virginia_birth', 'ent_emmitt-smith', 'plc_virginia', 'birthplace', 'clm_wiki_emmitt-smith_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_emmitt-smith_green-bay_birth', 'ent_emmitt-smith', 'plc_green-bay', 'birthplace', 'clm_wiki_emmitt-smith_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_enrico-fermi_rome_birth', 'ent_enrico-fermi', 'plc_rome', 'birthplace', 'clm_wiki_enrico-fermi_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eric-church_north-carolina_birth', 'ent_eric-church', 'plc_north-carolina', 'birthplace', 'clm_wiki_eric-church_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eric-church_nashville_birth', 'ent_eric-church', 'plc_nashville', 'birthplace', 'clm_wiki_eric-church_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eric-church_north-carolina_birth', 'ent_eric-church', 'plc_north-carolina', 'birthplace', 'clm_wiki_eric-church_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eric-clapton_louisiana_birth', 'ent_eric-clapton', 'plc_louisiana', 'birthplace', 'clm_wiki_eric-clapton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ernest-hemingway_illinois_birth', 'ent_ernest-hemingway', 'plc_illinois', 'birthplace', 'clm_wiki_ernest-hemingway_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ernest-hemingway_illinois_birth', 'ent_ernest-hemingway', 'plc_illinois', 'birthplace', 'clm_wiki_ernest-hemingway_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ernest-hemingway_arkansas_birth', 'ent_ernest-hemingway', 'plc_arkansas', 'birthplace', 'clm_wiki_ernest-hemingway_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ethan-allen_massachusetts_birth', 'ent_ethan-allen', 'plc_massachusetts', 'birthplace', 'clm_wiki_ethan-allen_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ethan-coen_princeton-university_birth', 'ent_ethan-coen', 'plc_princeton-university', 'birthplace', 'clm_wiki_ethan-coen_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ethan-coen_minnesota_birth', 'ent_ethan-coen', 'plc_minnesota', 'birthplace', 'clm_wiki_ethan-coen_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_evan-spiegel_los-angeles_birth', 'ent_evan-spiegel', 'plc_los-angeles', 'birthplace', 'clm_wiki_evan-spiegel_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_evan-spiegel_los-angeles_birth', 'ent_evan-spiegel', 'plc_los-angeles', 'birthplace', 'clm_wiki_evan-spiegel_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_faith-hill_mississippi_birth', 'ent_faith-hill', 'plc_mississippi', 'birthplace', 'clm_wiki_faith-hill_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_faith-hill_nashville_birth', 'ent_faith-hill', 'plc_nashville', 'birthplace', 'clm_wiki_faith-hill_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_faith-hill_mississippi_birth', 'ent_faith-hill', 'plc_mississippi', 'birthplace', 'clm_wiki_faith-hill_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_faith-hill_elizabeth_birth', 'ent_faith-hill', 'plc_elizabeth', 'birthplace', 'clm_wiki_faith-hill_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_fannie-lou-hamer_mississippi_birth', 'ent_fannie-lou-hamer', 'plc_mississippi', 'birthplace', 'clm_wiki_fannie-lou-hamer_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_farrah-franklin_des-moines_birth', 'ent_farrah-franklin', 'plc_des-moines', 'birthplace', 'clm_wiki_farrah-franklin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_farrah-franklin_franklin_birth', 'ent_farrah-franklin', 'plc_franklin', 'birthplace', 'clm_wiki_farrah-franklin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_florence-harding_marion_birth', 'ent_florence-harding', 'plc_marion', 'birthplace', 'clm_wiki_florence-harding_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_florence-harding_marion_birth', 'ent_florence-harding', 'plc_marion', 'birthplace', 'clm_wiki_florence-harding_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_florence-harding_marion_birth', 'ent_florence-harding', 'plc_marion', 'birthplace', 'clm_wiki_florence-harding_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_florence-harding_columbus_birth', 'ent_florence-harding', 'plc_columbus', 'birthplace', 'clm_wiki_florence-harding_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_frances-cleveland_new-york_birth', 'ent_frances-cleveland', 'plc_new-york', 'birthplace', 'clm_wiki_frances-cleveland_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_francis-ford-coppola_los-angeles_birth', 'ent_francis-ford-coppola', 'plc_los-angeles', 'birthplace', 'clm_wiki_francis-ford-coppola_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_francis-marion_south-carolina_birth', 'ent_francis-marion', 'plc_south-carolina', 'birthplace', 'clm_wiki_francis-marion_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_frank-sinatra_new-jersey_birth', 'ent_frank-sinatra', 'plc_new-jersey', 'birthplace', 'clm_wiki_frank-sinatra_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_franklin-pierce_new-hampshire_birth', 'ent_franklin-pierce', 'plc_new-hampshire', 'birthplace', 'clm_wiki_franklin-pierce_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_franklin-pierce_new-hampshire_birth', 'ent_franklin-pierce', 'plc_new-hampshire', 'birthplace', 'clm_wiki_franklin-pierce_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_franklin-pierce_new-hampshire_birth', 'ent_franklin-pierce', 'plc_new-hampshire', 'birthplace', 'clm_wiki_franklin-pierce_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_frederic-remington_new-jersey_birth', 'ent_frederic-remington', 'plc_new-jersey', 'birthplace', 'clm_wiki_frederic-remington_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_frederick-douglass_washington_birth', 'ent_frederick-douglass', 'plc_washington', 'birthplace', 'clm_wiki_frederick-douglass_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_frederick-douglass_frederick_birth', 'ent_frederick-douglass', 'plc_frederick', 'birthplace', 'clm_wiki_frederick-douglass_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_garret-hobart_new-jersey_birth', 'ent_garret-hobart', 'plc_new-jersey', 'birthplace', 'clm_wiki_garret-hobart_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_george-clooney_lexington_birth', 'ent_george-clooney', 'plc_lexington', 'birthplace', 'clm_wiki_george-clooney_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_george-eastman_new-york_birth', 'ent_george-eastman', 'plc_new-york', 'birthplace', 'clm_wiki_george-eastman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_george-eastman_washington_birth', 'ent_george-eastman', 'plc_washington', 'birthplace', 'clm_wiki_george-eastman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_george-gershwin_new-york-city_birth', 'ent_george-gershwin', 'plc_new-york-city', 'birthplace', 'clm_wiki_george-gershwin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_george-gershwin_brooklyn_birth', 'ent_george-gershwin', 'plc_brooklyn', 'birthplace', 'clm_wiki_george-gershwin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_george-gershwin_new-york-city_birth', 'ent_george-gershwin', 'plc_new-york-city', 'birthplace', 'clm_wiki_george-gershwin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_george-jones_florida_birth', 'ent_george-jones', 'plc_florida', 'birthplace', 'clm_wiki_george-jones_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_george-lucas_california_birth', 'ent_george-lucas', 'plc_california', 'birthplace', 'clm_wiki_george-lucas_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_george-pickett_richmond_birth', 'ent_george-pickett', 'plc_richmond', 'birthplace', 'clm_wiki_george-pickett_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_george-pickett_suffolk_birth', 'ent_george-pickett', 'plc_suffolk', 'birthplace', 'clm_wiki_george-pickett_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_george-pickett_richmond_birth', 'ent_george-pickett', 'plc_richmond', 'birthplace', 'clm_wiki_george-pickett_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_george-shultz_new-york-city_birth', 'ent_george-shultz', 'plc_new-york-city', 'birthplace', 'clm_wiki_george-shultz_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_george-shultz_new-york-city_birth', 'ent_george-shultz', 'plc_new-york-city', 'birthplace', 'clm_wiki_george-shultz_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_george-washington_washington_birth', 'ent_george-washington', 'plc_washington', 'birthplace', 'clm_wiki_george-washington_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_george-westinghouse_new-york_birth', 'ent_george-westinghouse', 'plc_new-york', 'birthplace', 'clm_wiki_george-westinghouse_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_george-westinghouse_new-york_birth', 'ent_george-westinghouse', 'plc_new-york', 'birthplace', 'clm_wiki_george-westinghouse_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_gerald-ford_nebraska_birth', 'ent_gerald-ford', 'plc_nebraska', 'birthplace', 'clm_wiki_gerald-ford_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_glenn-frey_michigan_birth', 'ent_glenn-frey', 'plc_michigan', 'birthplace', 'clm_wiki_glenn-frey_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_grace-coolidge_new-hampshire_birth', 'ent_grace-coolidge', 'plc_new-hampshire', 'birthplace', 'clm_wiki_grace-coolidge_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_grace-coolidge_reading_birth', 'ent_grace-coolidge', 'plc_reading', 'birthplace', 'clm_wiki_grace-coolidge_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_grace-hopper_university-of-pennsylvania_birth', 'ent_grace-hopper', 'plc_university-of-pennsylvania', 'birthplace', 'clm_wiki_grace-hopper_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_grace-kelly_philadelphia_birth', 'ent_grace-kelly', 'plc_philadelphia', 'birthplace', 'clm_wiki_grace-kelly_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_grace-kelly_philadelphia_birth', 'ent_grace-kelly', 'plc_philadelphia', 'birthplace', 'clm_wiki_grace-kelly_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_grant-wood_iowa_birth', 'ent_grant-wood', 'plc_iowa', 'birthplace', 'clm_wiki_grant-wood_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_grover-cleveland_new-jersey_birth', 'ent_grover-cleveland', 'plc_new-jersey', 'birthplace', 'clm_wiki_grover-cleveland_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_grover-cleveland_new-jersey_birth', 'ent_grover-cleveland', 'plc_new-jersey', 'birthplace', 'clm_wiki_grover-cleveland_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_hank-aaron_milwaukee_birth', 'ent_hank-aaron', 'plc_milwaukee', 'birthplace', 'clm_wiki_hank-aaron_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_hank-aaron_atlanta_birth', 'ent_hank-aaron', 'plc_atlanta', 'birthplace', 'clm_wiki_hank-aaron_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_hannibal-hamlin_massachusetts_birth', 'ent_hannibal-hamlin', 'plc_massachusetts', 'birthplace', 'clm_wiki_hannibal-hamlin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_harold-lloyd_nebraska_birth', 'ent_harold-lloyd', 'plc_nebraska', 'birthplace', 'clm_wiki_harold-lloyd_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_harper-lee_alabama_birth', 'ent_harper-lee', 'plc_alabama', 'birthplace', 'clm_wiki_harper-lee_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_harper-lee_alabama_birth', 'ent_harper-lee', 'plc_alabama', 'birthplace', 'clm_wiki_harper-lee_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_harriet-tubman_maryland_birth', 'ent_harriet-tubman', 'plc_maryland', 'birthplace', 'clm_wiki_harriet-tubman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_harriet-tubman_north-carolina_birth', 'ent_harriet-tubman', 'plc_north-carolina', 'birthplace', 'clm_wiki_harriet-tubman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_harrison-schmitt_harrison_birth', 'ent_harrison-schmitt', 'plc_harrison', 'birthplace', 'clm_wiki_harrison-schmitt_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_harrison-schmitt_new-mexico_birth', 'ent_harrison-schmitt', 'plc_new-mexico', 'birthplace', 'clm_wiki_harrison-schmitt_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_harrison-schmitt_silver-city_birth', 'ent_harrison-schmitt', 'plc_silver-city', 'birthplace', 'clm_wiki_harrison-schmitt_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_hart-crane_ohio_birth', 'ent_hart-crane', 'plc_ohio', 'birthplace', 'clm_wiki_hart-crane_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_hart-crane_brooklyn-bridge_birth', 'ent_hart-crane', 'plc_brooklyn-bridge', 'birthplace', 'clm_wiki_hart-crane_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_hart-crane_tennessee_birth', 'ent_hart-crane', 'plc_tennessee', 'birthplace', 'clm_wiki_hart-crane_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_haym-salomon_philadelphia_birth', 'ent_haym-salomon', 'plc_philadelphia', 'birthplace', 'clm_wiki_haym-salomon_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_haym-salomon_philadelphia_birth', 'ent_haym-salomon', 'plc_philadelphia', 'birthplace', 'clm_wiki_haym-salomon_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_haym-salomon_new-york-city_birth', 'ent_haym-salomon', 'plc_new-york-city', 'birthplace', 'clm_wiki_haym-salomon_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_helen-frankenthaler_new-york-city_birth', 'ent_helen-frankenthaler', 'plc_new-york-city', 'birthplace', 'clm_wiki_helen-frankenthaler_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_henry-david-thoreau_massachusetts_birth', 'ent_henry-david-thoreau', 'plc_massachusetts', 'birthplace', 'clm_wiki_henry-david-thoreau_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_henry-ford_michigan_birth', 'ent_henry-ford', 'plc_michigan', 'birthplace', 'clm_wiki_henry-ford_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_henry-kissinger_connecticut_birth', 'ent_henry-kissinger', 'plc_connecticut', 'birthplace', 'clm_wiki_henry-kissinger_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_henry-knox_massachusetts_birth', 'ent_henry-knox', 'plc_massachusetts', 'birthplace', 'clm_wiki_henry-knox_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_henry-wadsworth-longfellow_massachusetts_birth', 'ent_henry-wadsworth-longfellow', 'plc_massachusetts', 'birthplace', 'clm_wiki_henry-wadsworth-longfellow_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_henry-wadsworth-longfellow_portland_birth', 'ent_henry-wadsworth-longfellow', 'plc_portland', 'birthplace', 'clm_wiki_henry-wadsworth-longfellow_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_henry-wadsworth-longfellow_massachusetts_birth', 'ent_henry-wadsworth-longfellow', 'plc_massachusetts', 'birthplace', 'clm_wiki_henry-wadsworth-longfellow_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_henry-wadsworth-longfellow_cambridge_birth', 'ent_henry-wadsworth-longfellow', 'plc_cambridge', 'birthplace', 'clm_wiki_henry-wadsworth-longfellow_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_henry-wadsworth-longfellow_reading_birth', 'ent_henry-wadsworth-longfellow', 'plc_reading', 'birthplace', 'clm_wiki_henry-wadsworth-longfellow_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_herbert-hoover_wilson_birth', 'ent_herbert-hoover', 'plc_wilson', 'birthplace', 'clm_wiki_herbert-hoover_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_herman-melville_new-york-city_birth', 'ent_herman-melville', 'plc_new-york-city', 'birthplace', 'clm_wiki_herman-melville_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_herman-melville_new-york-city_birth', 'ent_herman-melville', 'plc_new-york-city', 'birthplace', 'clm_wiki_herman-melville_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_herman-melville_new-york-city_birth', 'ent_herman-melville', 'plc_new-york-city', 'birthplace', 'clm_wiki_herman-melville_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_hillary-clinton_clinton_birth', 'ent_hillary-clinton', 'plc_clinton', 'birthplace', 'clm_wiki_hillary-clinton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_hillary-clinton_wellesley-college_birth', 'ent_hillary-clinton', 'plc_wellesley-college', 'birthplace', 'clm_wiki_hillary-clinton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_hillary-clinton_illinois_birth', 'ent_hillary-clinton', 'plc_illinois', 'birthplace', 'clm_wiki_hillary-clinton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_howard-schultz_brooklyn_birth', 'ent_howard-schultz', 'plc_brooklyn', 'birthplace', 'clm_wiki_howard-schultz_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_howard-stern_new-york-city_birth', 'ent_howard-stern', 'plc_new-york-city', 'birthplace', 'clm_wiki_howard-stern_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_howard-stern_new-york-city_birth', 'ent_howard-stern', 'plc_new-york-city', 'birthplace', 'clm_wiki_howard-stern_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_hubert-humphrey_south-dakota_birth', 'ent_hubert-humphrey', 'plc_south-dakota', 'birthplace', 'clm_wiki_hubert-humphrey_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_hubert-humphrey_massachusetts_birth', 'ent_hubert-humphrey', 'plc_massachusetts', 'birthplace', 'clm_wiki_hubert-humphrey_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_irving-berlin_new-york-city_birth', 'ent_irving-berlin', 'plc_new-york-city', 'birthplace', 'clm_wiki_irving-berlin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jack-kerouac_massachusetts_birth', 'ent_jack-kerouac', 'plc_massachusetts', 'birthplace', 'clm_wiki_jack-kerouac_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jack-kerouac_massachusetts_birth', 'ent_jack-kerouac', 'plc_massachusetts', 'birthplace', 'clm_wiki_jack-kerouac_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jack-nicholson_new-jersey_birth', 'ent_jack-nicholson', 'plc_new-jersey', 'birthplace', 'clm_wiki_jack-nicholson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jack-nicholson_new-jersey_birth', 'ent_jack-nicholson', 'plc_new-jersey', 'birthplace', 'clm_wiki_jack-nicholson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jack-nicklaus_arlington_birth', 'ent_jack-nicklaus', 'plc_arlington', 'birthplace', 'clm_wiki_jack-nicklaus_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jack-nicklaus_ohio_birth', 'ent_jack-nicklaus', 'plc_ohio', 'birthplace', 'clm_wiki_jack-nicklaus_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jackie-robinson_brooklyn_birth', 'ent_jackie-robinson', 'plc_brooklyn', 'birthplace', 'clm_wiki_jackie-robinson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jackie-robinson_georgia_birth', 'ent_jackie-robinson', 'plc_georgia', 'birthplace', 'clm_wiki_jackie-robinson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jackie-robinson_california_birth', 'ent_jackie-robinson', 'plc_california', 'birthplace', 'clm_wiki_jackie-robinson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jackson-browne_california_birth', 'ent_jackson-browne', 'plc_california', 'birthplace', 'clm_wiki_jackson-browne_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jackson-browne_jackson_birth', 'ent_jackson-browne', 'plc_jackson', 'birthplace', 'clm_wiki_jackson-browne_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jackson-browne_los-angeles_birth', 'ent_jackson-browne', 'plc_los-angeles', 'birthplace', 'clm_wiki_jackson-browne_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jackson-pollock_jackson_birth', 'ent_jackson-pollock', 'plc_jackson', 'birthplace', 'clm_wiki_jackson-pollock_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jackson-pollock_jackson_birth', 'ent_jackson-pollock', 'plc_jackson', 'birthplace', 'clm_wiki_jackson-pollock_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-baker_houston_birth', 'ent_james-baker', 'plc_houston', 'birthplace', 'clm_wiki_james-baker_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-baker_austin_birth', 'ent_james-baker', 'plc_austin', 'birthplace', 'clm_wiki_james-baker_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-baldwin_new-york-city_birth', 'ent_james-baldwin', 'plc_new-york-city', 'birthplace', 'clm_wiki_james-baldwin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-baldwin_los-angeles_birth', 'ent_james-baldwin', 'plc_los-angeles', 'birthplace', 'clm_wiki_james-baldwin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-baldwin_madison_birth', 'ent_james-baldwin', 'plc_madison', 'birthplace', 'clm_wiki_james-baldwin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-bevel_mississippi_birth', 'ent_james-bevel', 'plc_mississippi', 'birthplace', 'clm_wiki_james-bevel_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-buchanan_pennsylvania_birth', 'ent_james-buchanan', 'plc_pennsylvania', 'birthplace', 'clm_wiki_james-buchanan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-corden_london_birth', 'ent_james-corden', 'plc_london', 'birthplace', 'clm_wiki_james-corden_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-dean_indiana_birth', 'ent_james-dean', 'plc_indiana', 'birthplace', 'clm_wiki_james-dean_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-dean_indiana_birth', 'ent_james-dean', 'plc_indiana', 'birthplace', 'clm_wiki_james-dean_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-dean_hudson_birth', 'ent_james-dean', 'plc_hudson', 'birthplace', 'clm_wiki_james-dean_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-forten_philadelphia_birth', 'ent_james-forten', 'plc_philadelphia', 'birthplace', 'clm_wiki_james-forten_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-forten_philadelphia_birth', 'ent_james-forten', 'plc_philadelphia', 'birthplace', 'clm_wiki_james-forten_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-monroe_elizabeth_birth', 'ent_james-monroe', 'plc_elizabeth', 'birthplace', 'clm_wiki_james-monroe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-monroe_marshall_birth', 'ent_james-monroe', 'plc_marshall', 'birthplace', 'clm_wiki_james-monroe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-taylor_columbia_birth', 'ent_james-taylor', 'plc_columbia', 'birthplace', 'clm_wiki_james-taylor_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-taylor_massachusetts_birth', 'ent_james-taylor', 'plc_massachusetts', 'birthplace', 'clm_wiki_james-taylor_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-watson_elizabeth_birth', 'ent_james-watson', 'plc_elizabeth', 'birthplace', 'clm_wiki_james-watson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_james-watson_mitchell_birth', 'ent_james-watson', 'plc_mitchell', 'birthplace', 'clm_wiki_james-watson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jane-pierce_new-hampshire_birth', 'ent_jane-pierce', 'plc_new-hampshire', 'birthplace', 'clm_wiki_jane-pierce_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jane-pierce_new-hampshire_birth', 'ent_jane-pierce', 'plc_new-hampshire', 'birthplace', 'clm_wiki_jane-pierce_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jane-pierce_franklin_birth', 'ent_jane-pierce', 'plc_franklin', 'birthplace', 'clm_wiki_jane-pierce_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jann-wenner_new-york-city_birth', 'ent_jann-wenner', 'plc_new-york-city', 'birthplace', 'clm_wiki_jann-wenner_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jann-wenner_norman_birth', 'ent_jann-wenner', 'plc_norman', 'birthplace', 'clm_wiki_jann-wenner_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jason-aldean_georgia_birth', 'ent_jason-aldean', 'plc_georgia', 'birthplace', 'clm_wiki_jason-aldean_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jason-goldman_connecticut_birth', 'ent_jason-goldman', 'plc_connecticut', 'birthplace', 'clm_wiki_jason-goldman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jasper-johns_liberal_birth', 'ent_jasper-johns', 'plc_liberal', 'birthplace', 'clm_wiki_jasper-johns_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jasper-johns_augusta_birth', 'ent_jasper-johns', 'plc_augusta', 'birthplace', 'clm_wiki_jasper-johns_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jasper-johns_golden_birth', 'ent_jasper-johns', 'plc_golden', 'birthplace', 'clm_wiki_jasper-johns_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jasper-johns_south-carolina_birth', 'ent_jasper-johns', 'plc_south-carolina', 'birthplace', 'clm_wiki_jasper-johns_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jay-leno_new-york_birth', 'ent_jay-leno', 'plc_new-york', 'birthplace', 'clm_wiki_jay-leno_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jay-leno_new-york_birth', 'ent_jay-leno', 'plc_new-york', 'birthplace', 'clm_wiki_jay-leno_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jay-leno_new-york_birth', 'ent_jay-leno', 'plc_new-york', 'birthplace', 'clm_wiki_jay-leno_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jeff-bezos_albuquerque_birth', 'ent_jeff-bezos', 'plc_albuquerque', 'birthplace', 'clm_wiki_jeff-bezos_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jeff-bezos_albuquerque_birth', 'ent_jeff-bezos', 'plc_albuquerque', 'birthplace', 'clm_wiki_jeff-bezos_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jeffrey-goldberg_pennsylvania_birth', 'ent_jeffrey-goldberg', 'plc_pennsylvania', 'birthplace', 'clm_wiki_jeffrey-goldberg_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jennifer-lawrence_lawrence_birth', 'ent_jennifer-lawrence', 'plc_lawrence', 'birthplace', 'clm_wiki_jennifer-lawrence_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jennifer-lawrence_louisville_birth', 'ent_jennifer-lawrence', 'plc_louisville', 'birthplace', 'clm_wiki_jennifer-lawrence_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jesse-duplantis_louisiana_birth', 'ent_jesse-duplantis', 'plc_louisiana', 'birthplace', 'clm_wiki_jesse-duplantis_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jesse-jackson_south-carolina_birth', 'ent_jesse-jackson', 'plc_south-carolina', 'birthplace', 'clm_wiki_jesse-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jesse-owens_fitzgerald_birth', 'ent_jesse-owens', 'plc_fitzgerald', 'birthplace', 'clm_wiki_jesse-owens_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jill-biden_new-jersey_birth', 'ent_jill-biden', 'plc_new-jersey', 'birthplace', 'clm_wiki_jill-biden_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jill-biden_new-jersey_birth', 'ent_jill-biden', 'plc_new-jersey', 'birthplace', 'clm_wiki_jill-biden_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jim-bridger_richmond_birth', 'ent_jim-bridger', 'plc_richmond', 'birthplace', 'clm_wiki_jim-bridger_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jim-bridger_richmond_birth', 'ent_jim-bridger', 'plc_richmond', 'birthplace', 'clm_wiki_jim-bridger_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jim-bridger_new-york_birth', 'ent_jim-bridger', 'plc_new-york', 'birthplace', 'clm_wiki_jim-bridger_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jimmy-carter_georgia_birth', 'ent_jimmy-carter', 'plc_georgia', 'birthplace', 'clm_wiki_jimmy-carter_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jimmy-carter_liberal_birth', 'ent_jimmy-carter', 'plc_liberal', 'birthplace', 'clm_wiki_jimmy-carter_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jimmy-fallon_new-york-city_birth', 'ent_jimmy-fallon', 'plc_new-york-city', 'birthplace', 'clm_wiki_jimmy-fallon_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jimmy-fallon_new-york-city_birth', 'ent_jimmy-fallon', 'plc_new-york-city', 'birthplace', 'clm_wiki_jimmy-fallon_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jimmy-kimmel_new-york-city_birth', 'ent_jimmy-kimmel', 'plc_new-york-city', 'birthplace', 'clm_wiki_jimmy-kimmel_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jimmy-page_elizabeth_birth', 'ent_jimmy-page', 'plc_elizabeth', 'birthplace', 'clm_wiki_jimmy-page_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joan-mitchell_mitchell_birth', 'ent_joan-mitchell', 'plc_mitchell', 'birthplace', 'clm_wiki_joan-mitchell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jodie-foster_los-angeles_birth', 'ent_jodie-foster', 'plc_los-angeles', 'birthplace', 'clm_wiki_jodie-foster_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joe-biden_pennsylvania_birth', 'ent_joe-biden', 'plc_pennsylvania', 'birthplace', 'clm_wiki_joe-biden_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joe-biden_pennsylvania_birth', 'ent_joe-biden', 'plc_pennsylvania', 'birthplace', 'clm_wiki_joe-biden_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joe-gebbia_atlanta_birth', 'ent_joe-gebbia', 'plc_atlanta', 'birthplace', 'clm_wiki_joe-gebbia_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joe-gebbia_atlanta_birth', 'ent_joe-gebbia', 'plc_atlanta', 'birthplace', 'clm_wiki_joe-gebbia_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joe-montana_pennsylvania_birth', 'ent_joe-montana', 'plc_pennsylvania', 'birthplace', 'clm_wiki_joe-montana_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joe-morgan_cincinnati_birth', 'ent_joe-morgan', 'plc_cincinnati', 'birthplace', 'clm_wiki_joe-morgan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joe-rogan_new-jersey_birth', 'ent_joe-rogan', 'plc_new-jersey', 'birthplace', 'clm_wiki_joe-rogan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joel-coen_new-york-university_birth', 'ent_joel-coen', 'plc_new-york-university', 'birthplace', 'clm_wiki_joel-coen_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joel-coen_minnesota_birth', 'ent_joel-coen', 'plc_minnesota', 'birthplace', 'clm_wiki_joel-coen_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-adams_massachusetts_birth', 'ent_john-adams', 'plc_massachusetts', 'birthplace', 'clm_wiki_john-adams_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-adams_elizabeth_birth', 'ent_john-adams', 'plc_elizabeth', 'birthplace', 'clm_wiki_john-adams_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-brown_union_birth', 'ent_john-brown', 'plc_union', 'birthplace', 'clm_wiki_john-brown_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-brown_kentucky_birth', 'ent_john-brown', 'plc_kentucky', 'birthplace', 'clm_wiki_john-brown_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-brown_kentucky_birth', 'ent_john-brown', 'plc_kentucky', 'birthplace', 'clm_wiki_john-brown_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-brown_colorado_birth', 'ent_john-brown', 'plc_colorado', 'birthplace', 'clm_wiki_john-brown_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-carlos_mexico_birth', 'ent_john-carlos', 'plc_mexico', 'birthplace', 'clm_wiki_john-carlos_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-carlos_lawrence_birth', 'ent_john-carlos', 'plc_lawrence', 'birthplace', 'clm_wiki_john-carlos_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-coltrane_north-carolina_birth', 'ent_john-coltrane', 'plc_north-carolina', 'birthplace', 'clm_wiki_john-coltrane_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-coltrane_north-carolina_birth', 'ent_john-coltrane', 'plc_north-carolina', 'birthplace', 'clm_wiki_john-coltrane_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-coltrane_north-carolina_birth', 'ent_john-coltrane', 'plc_north-carolina', 'birthplace', 'clm_wiki_john-coltrane_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-deere_illinois_birth', 'ent_john-deere', 'plc_illinois', 'birthplace', 'clm_wiki_john-deere_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-jacob-astor_new-york-city_birth', 'ent_john-jacob-astor', 'plc_new-york-city', 'birthplace', 'clm_wiki_john-jacob-astor_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-jacob-astor_new-york-city_birth', 'ent_john-jacob-astor', 'plc_new-york-city', 'birthplace', 'clm_wiki_john-jacob-astor_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-jay_new-york-city_birth', 'ent_john-jay', 'plc_new-york-city', 'birthplace', 'clm_wiki_john-jay_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-jay_new-york-city_birth', 'ent_john-jay', 'plc_new-york-city', 'birthplace', 'clm_wiki_john-jay_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-kelly_white-house_birth', 'ent_john-kelly', 'plc_white-house', 'birthplace', 'clm_wiki_john-kelly_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-kelly_west-virginia_birth', 'ent_john-kelly', 'plc_west-virginia', 'birthplace', 'clm_wiki_john-kelly_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-kelly_massachusetts_birth', 'ent_john-kelly', 'plc_massachusetts', 'birthplace', 'clm_wiki_john-kelly_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-kerry_colorado_birth', 'ent_john-kerry', 'plc_colorado', 'birthplace', 'clm_wiki_john-kerry_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-kerry_colorado_birth', 'ent_john-kerry', 'plc_colorado', 'birthplace', 'clm_wiki_john-kerry_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-marshall_philadelphia_birth', 'ent_john-marshall', 'plc_philadelphia', 'birthplace', 'clm_wiki_john-marshall_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-marshall_marshall_birth', 'ent_john-marshall', 'plc_marshall', 'birthplace', 'clm_wiki_john-marshall_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-marshall_marshall_birth', 'ent_john-marshall', 'plc_marshall', 'birthplace', 'clm_wiki_john-marshall_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-nance-garner_texas_birth', 'ent_john-nance-garner', 'plc_texas', 'birthplace', 'clm_wiki_john-nance-garner_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-nance-garner_detroit_birth', 'ent_john-nance-garner', 'plc_detroit', 'birthplace', 'clm_wiki_john-nance-garner_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-oliver_birmingham_birth', 'ent_john-oliver', 'plc_birmingham', 'birthplace', 'clm_wiki_john-oliver_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-oliver_manhattan_birth', 'ent_john-oliver', 'plc_manhattan', 'birthplace', 'clm_wiki_john-oliver_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-quincy-adams_massachusetts_birth', 'ent_john-quincy-adams', 'plc_massachusetts', 'birthplace', 'clm_wiki_john-quincy-adams_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-roberts_new-york_birth', 'ent_john-roberts', 'plc_new-york', 'birthplace', 'clm_wiki_john-roberts_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-singer-sargent_massachusetts_birth', 'ent_john-singer-sargent', 'plc_massachusetts', 'birthplace', 'clm_wiki_john-singer-sargent_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-steinbeck_california_birth', 'ent_john-steinbeck', 'plc_california', 'birthplace', 'clm_wiki_john-steinbeck_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-tyler_virginia_birth', 'ent_john-tyler', 'plc_virginia', 'birthplace', 'clm_wiki_john-tyler_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-tyler_virginia_birth', 'ent_john-tyler', 'plc_virginia', 'birthplace', 'clm_wiki_john-tyler_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-wesley-powell_new-york_birth', 'ent_john-wesley-powell', 'plc_new-york', 'birthplace', 'clm_wiki_john-wesley-powell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-zorn_new-york-city_birth', 'ent_john-zorn', 'plc_new-york-city', 'birthplace', 'clm_wiki_john-zorn_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_johnny-bench_oklahoma-city_birth', 'ent_johnny-bench', 'plc_oklahoma-city', 'birthplace', 'clm_wiki_johnny-bench_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_johnny-bench_oklahoma_birth', 'ent_johnny-bench', 'plc_oklahoma', 'birthplace', 'clm_wiki_johnny-bench_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jon-stewart_new-york-city_birth', 'ent_jon-stewart', 'plc_new-york-city', 'birthplace', 'clm_wiki_jon-stewart_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jon-stewart_new-york-city_birth', 'ent_jon-stewart', 'plc_new-york-city', 'birthplace', 'clm_wiki_jon-stewart_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jon-stewart_snyder_birth', 'ent_jon-stewart', 'plc_snyder', 'birthplace', 'clm_wiki_jon-stewart_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jonas-salk_new-york-university_birth', 'ent_jonas-salk', 'plc_new-york-university', 'birthplace', 'clm_wiki_jonas-salk_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jonas-salk_new-york-city_birth', 'ent_jonas-salk', 'plc_new-york-city', 'birthplace', 'clm_wiki_jonas-salk_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_joni-mitchell_yorkville_birth', 'ent_joni-mitchell', 'plc_yorkville', 'birthplace', 'clm_wiki_joni-mitchell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_juice-wrld_illinois_birth', 'ent_juice-wrld', 'plc_illinois', 'birthplace', 'clm_wiki_juice-wrld_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_julia-grant_frederick_birth', 'ent_julia-grant', 'plc_frederick', 'birthplace', 'clm_wiki_julia-grant_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_julia-roberts_atlanta_birth', 'ent_julia-roberts', 'plc_atlanta', 'birthplace', 'clm_wiki_julia-roberts_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_justin-bieber_london_birth', 'ent_justin-bieber', 'plc_london', 'birthplace', 'clm_wiki_justin-bieber_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_kacey-musgraves_sulphur-springs_birth', 'ent_kacey-musgraves', 'plc_sulphur-springs', 'birthplace', 'clm_wiki_kacey-musgraves_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_kamala-harris_stanford-university_birth', 'ent_kamala-harris', 'plc_stanford-university', 'birthplace', 'clm_wiki_kamala-harris_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_katharine-hepburn_connecticut_birth', 'ent_katharine-hepburn', 'plc_connecticut', 'birthplace', 'clm_wiki_katharine-hepburn_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_katharine-hepburn_connecticut_birth', 'ent_katharine-hepburn', 'plc_connecticut', 'birthplace', 'clm_wiki_katharine-hepburn_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_katie-couric_arlington_birth', 'ent_katie-couric', 'plc_arlington', 'birthplace', 'clm_wiki_katie-couric_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_katie-couric_washington_birth', 'ent_katie-couric', 'plc_washington', 'birthplace', 'clm_wiki_katie-couric_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_keith-jarrett_pennsylvania_birth', 'ent_keith-jarrett', 'plc_pennsylvania', 'birthplace', 'clm_wiki_keith-jarrett_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_keith-jarrett_pennsylvania_birth', 'ent_keith-jarrett', 'plc_pennsylvania', 'birthplace', 'clm_wiki_keith-jarrett_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_keith-richards_new-york-city_birth', 'ent_keith-richards', 'plc_new-york-city', 'birthplace', 'clm_wiki_keith-richards_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_kelly-rowland_columbia_birth', 'ent_kelly-rowland', 'plc_columbia', 'birthplace', 'clm_wiki_kelly-rowland_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_kelly-rowland_atlanta_birth', 'ent_kelly-rowland', 'plc_atlanta', 'birthplace', 'clm_wiki_kelly-rowland_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ken-thompson_new-orleans_birth', 'ent_ken-thompson', 'plc_new-orleans', 'birthplace', 'clm_wiki_ken-thompson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_kendrick-lamar_california_birth', 'ent_kendrick-lamar', 'plc_california', 'birthplace', 'clm_wiki_kendrick-lamar_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_kenneth-copeland_lubbock_birth', 'ent_kenneth-copeland', 'plc_lubbock', 'birthplace', 'clm_wiki_kenneth-copeland_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_kenneth-copeland_texas_birth', 'ent_kenneth-copeland', 'plc_texas', 'birthplace', 'clm_wiki_kenneth-copeland_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ketanji-brown-jackson_washington_birth', 'ent_ketanji-brown-jackson', 'plc_washington', 'birthplace', 'clm_wiki_ketanji-brown-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ketanji-brown-jackson_jackson_birth', 'ent_ketanji-brown-jackson', 'plc_jackson', 'birthplace', 'clm_wiki_ketanji-brown-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_keyshia-cole_california_birth', 'ent_keyshia-cole', 'plc_california', 'birthplace', 'clm_wiki_keyshia-cole_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_kim-kardashian_los-angeles_birth', 'ent_kim-kardashian', 'plc_los-angeles', 'birthplace', 'clm_wiki_kim-kardashian_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_kit-carson_richmond_birth', 'ent_kit-carson', 'plc_richmond', 'birthplace', 'clm_wiki_kit-carson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_kurt-cobain_washington_birth', 'ent_kurt-cobain', 'plc_washington', 'birthplace', 'clm_wiki_kurt-cobain_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_kurt-cobain_washington_birth', 'ent_kurt-cobain', 'plc_washington', 'birthplace', 'clm_wiki_kurt-cobain_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_kurt-cobain_washington_birth', 'ent_kurt-cobain', 'plc_washington', 'birthplace', 'clm_wiki_kurt-cobain_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_kurt-cobain_alice_birth', 'ent_kurt-cobain', 'plc_alice', 'birthplace', 'clm_wiki_kurt-cobain_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lady-bird-johnson_texas_birth', 'ent_lady-bird-johnson', 'plc_texas', 'birthplace', 'clm_wiki_lady-bird-johnson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lady-bird-johnson_louisiana_birth', 'ent_lady-bird-johnson', 'plc_louisiana', 'birthplace', 'clm_wiki_lady-bird-johnson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lady-gaga_new-york-city_birth', 'ent_lady-gaga', 'plc_new-york-city', 'birthplace', 'clm_wiki_lady-gaga_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_langston-hughes_lawrence_birth', 'ent_langston-hughes', 'plc_lawrence', 'birthplace', 'clm_wiki_langston-hughes_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_larry-doby_south-carolina_birth', 'ent_larry-doby', 'plc_south-carolina', 'birthplace', 'clm_wiki_larry-doby_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_larry-doby_south-carolina_birth', 'ent_larry-doby', 'plc_south-carolina', 'birthplace', 'clm_wiki_larry-doby_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_larry-ellison_lawrence_birth', 'ent_larry-ellison', 'plc_lawrence', 'birthplace', 'clm_wiki_larry-ellison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_larry-ellison_new-york-city_birth', 'ent_larry-ellison', 'plc_new-york-city', 'birthplace', 'clm_wiki_larry-ellison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_larry-page_lawrence_birth', 'ent_larry-page', 'plc_lawrence', 'birthplace', 'clm_wiki_larry-page_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_larry-sanger_washington_birth', 'ent_larry-sanger', 'plc_washington', 'birthplace', 'clm_wiki_larry-sanger_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_larry-sanger_ohio-state-university_birth', 'ent_larry-sanger', 'plc_ohio-state-university', 'birthplace', 'clm_wiki_larry-sanger_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_laura-bush_midland_birth', 'ent_laura-bush', 'plc_midland', 'birthplace', 'clm_wiki_laura-bush_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_laura-bush_university-of-texas-at-austin_birth', 'ent_laura-bush', 'plc_university-of-texas-at-austin', 'birthplace', 'clm_wiki_laura-bush_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_laura-bush_midland_birth', 'ent_laura-bush', 'plc_midland', 'birthplace', 'clm_wiki_laura-bush_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_laura-bush_reading_birth', 'ent_laura-bush', 'plc_reading', 'birthplace', 'clm_wiki_laura-bush_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_laura-bush_dallas_birth', 'ent_laura-bush', 'plc_dallas', 'birthplace', 'clm_wiki_laura-bush_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lawrence-eagleburger_milwaukee_birth', 'ent_lawrence-eagleburger', 'plc_milwaukee', 'birthplace', 'clm_wiki_lawrence-eagleburger_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lee-krasner_new-york-city_birth', 'ent_lee-krasner', 'plc_new-york-city', 'birthplace', 'clm_wiki_lee-krasner_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lee-krasner_new-york_birth', 'ent_lee-krasner', 'plc_new-york', 'birthplace', 'clm_wiki_lee-krasner_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lee-krasner_brooklyn_birth', 'ent_lee-krasner', 'plc_brooklyn', 'birthplace', 'clm_wiki_lee-krasner_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_leonard-bernstein_new-york_birth', 'ent_leonard-bernstein', 'plc_new-york', 'birthplace', 'clm_wiki_leonard-bernstein_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_linda-ronstadt_arizona_birth', 'ent_linda-ronstadt', 'plc_arizona', 'birthplace', 'clm_wiki_linda-ronstadt_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_linus-pauling_oswego_birth', 'ent_linus-pauling', 'plc_oswego', 'birthplace', 'clm_wiki_linus-pauling_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lizzo_jefferson_birth', 'ent_lizzo', 'plc_jefferson', 'birthplace', 'clm_wiki_lizzo_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lizzo_jefferson_birth', 'ent_lizzo', 'plc_jefferson', 'birthplace', 'clm_wiki_lizzo_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lloyd-austin_austin_birth', 'ent_lloyd-austin', 'plc_austin', 'birthplace', 'clm_wiki_lloyd-austin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lloyd-austin_alabama_birth', 'ent_lloyd-austin', 'plc_alabama', 'birthplace', 'clm_wiki_lloyd-austin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lloyd-austin_austin_birth', 'ent_lloyd-austin', 'plc_austin', 'birthplace', 'clm_wiki_lloyd-austin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lloyd-austin_austin_birth', 'ent_lloyd-austin', 'plc_austin', 'birthplace', 'clm_wiki_lloyd-austin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lola-montez_brooklyn_birth', 'ent_lola-montez', 'plc_brooklyn', 'birthplace', 'clm_wiki_lola-montez_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lola-montez_elizabeth_birth', 'ent_lola-montez', 'plc_elizabeth', 'birthplace', 'clm_wiki_lola-montez_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lola-montez_elizabeth_birth', 'ent_lola-montez', 'plc_elizabeth', 'birthplace', 'clm_wiki_lola-montez_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lola-montez_elizabeth_birth', 'ent_lola-montez', 'plc_elizabeth', 'birthplace', 'clm_wiki_lola-montez_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lola-montez_elizabeth_birth', 'ent_lola-montez', 'plc_elizabeth', 'birthplace', 'clm_wiki_lola-montez_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_loretta-lynn_kentucky_birth', 'ent_loretta-lynn', 'plc_kentucky', 'birthplace', 'clm_wiki_loretta-lynn_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_loretta-lynn_kentucky_birth', 'ent_loretta-lynn', 'plc_kentucky', 'birthplace', 'clm_wiki_loretta-lynn_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_loretta-lynn_kentucky_birth', 'ent_loretta-lynn', 'plc_kentucky', 'birthplace', 'clm_wiki_loretta-lynn_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lou-brock_el-dorado_birth', 'ent_lou-brock', 'plc_el-dorado', 'birthplace', 'clm_wiki_lou-brock_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lou-gehrig_manhattan_birth', 'ent_lou-gehrig', 'plc_manhattan', 'birthplace', 'clm_wiki_lou-gehrig_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lou-gehrig_new-york-city_birth', 'ent_lou-gehrig', 'plc_new-york-city', 'birthplace', 'clm_wiki_lou-gehrig_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lou-gehrig_the-bronx_birth', 'ent_lou-gehrig', 'plc_the-bronx', 'birthplace', 'clm_wiki_lou-gehrig_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mark-zuckerberg_white-plains_birth', 'ent_mark-zuckerberg', 'plc_white-plains', 'birthplace', 'clm_wiki_mark-zuckerberg_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_michael-dell_houston_birth', 'ent_michael-dell', 'plc_houston', 'birthplace', 'clm_wiki_michael-dell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_toni-morrison_howard-university_birth', 'ent_toni-morrison', 'plc_howard-university', 'birthplace', 'clm_wiki_toni-morrison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_toni-morrison_macon_birth', 'ent_toni-morrison', 'plc_macon', 'birthplace', 'clm_wiki_toni-morrison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_christina-applegate_los-angeles_birth', 'ent_christina-applegate', 'plc_los-angeles', 'birthplace', 'clm_wiki_christina-applegate_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_christina-applegate_los-angeles_birth', 'ent_christina-applegate', 'plc_los-angeles', 'birthplace', 'clm_wiki_christina-applegate_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_reed-hastings_stanford-university_birth', 'ent_reed-hastings', 'plc_stanford-university', 'birthplace', 'clm_wiki_reed-hastings_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_reed-hastings_massachusetts_birth', 'ent_reed-hastings', 'plc_massachusetts', 'birthplace', 'clm_wiki_reed-hastings_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_adam-scott_santa-cruz_birth', 'ent_adam-scott', 'plc_santa-cruz', 'birthplace', 'clm_wiki_adam-scott_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_adam-scott_cleveland_birth', 'ent_adam-scott', 'plc_cleveland', 'birthplace', 'clm_wiki_adam-scott_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_simone-biles_columbus_birth', 'ent_simone-biles', 'plc_columbus', 'birthplace', 'clm_wiki_simone-biles_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_simone-biles_columbus_birth', 'ent_simone-biles', 'plc_columbus', 'birthplace', 'clm_wiki_simone-biles_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_snoop-dogg_california_birth', 'ent_snoop-dogg', 'plc_california', 'birthplace', 'clm_wiki_snoop-dogg_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_theodore-roosevelt_new-york-city_birth', 'ent_theodore-roosevelt', 'plc_new-york-city', 'birthplace', 'clm_wiki_theodore-roosevelt_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_theodore-roosevelt_manhattan_birth', 'ent_theodore-roosevelt', 'plc_manhattan', 'birthplace', 'clm_wiki_theodore-roosevelt_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_abigail-johnson_massachusetts_birth', 'ent_abigail-johnson', 'plc_massachusetts', 'birthplace', 'clm_wiki_abigail-johnson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_abraham-lincoln_illinois_birth', 'ent_abraham-lincoln', 'plc_illinois', 'birthplace', 'clm_wiki_abraham-lincoln_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_abraham-lincoln_lincoln_birth', 'ent_abraham-lincoln', 'plc_lincoln', 'birthplace', 'clm_wiki_abraham-lincoln_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_abraham-lincoln_lincoln_birth', 'ent_abraham-lincoln', 'plc_lincoln', 'birthplace', 'clm_wiki_abraham-lincoln_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_abraham-lincoln_white-house_birth', 'ent_abraham-lincoln', 'plc_white-house', 'birthplace', 'clm_wiki_abraham-lincoln_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_abraham-lincoln_lincoln_birth', 'ent_abraham-lincoln', 'plc_lincoln', 'birthplace', 'clm_wiki_abraham-lincoln_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alexander-graham-bell_graham_birth', 'ent_alexander-graham-bell', 'plc_graham', 'birthplace', 'clm_wiki_alexander-graham-bell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alexander-graham-bell_charlotte_birth', 'ent_alexander-graham-bell', 'plc_charlotte', 'birthplace', 'clm_wiki_alexander-graham-bell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alexander-graham-bell_victoria_birth', 'ent_alexander-graham-bell', 'plc_victoria', 'birthplace', 'clm_wiki_alexander-graham-bell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_amelia-earhart_california_birth', 'ent_amelia-earhart', 'plc_california', 'birthplace', 'clm_wiki_amelia-earhart_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_arnold-schwarzenegger_california_birth', 'ent_arnold-schwarzenegger', 'plc_california', 'birthplace', 'clm_wiki_arnold-schwarzenegger_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bob-dylan_minnesota_birth', 'ent_bob-dylan', 'plc_minnesota', 'birthplace', 'clm_wiki_bob-dylan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bruno-mars_honolulu_birth', 'ent_bruno-mars', 'plc_honolulu', 'birthplace', 'clm_wiki_bruno-mars_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-lindbergh_washington_birth', 'ent_charles-lindbergh', 'plc_washington', 'birthplace', 'clm_wiki_charles-lindbergh_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-lindbergh_new-york-city_birth', 'ent_charles-lindbergh', 'plc_new-york-city', 'birthplace', 'clm_wiki_charles-lindbergh_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edwin-hubble_missouri_birth', 'ent_edwin-hubble', 'plc_missouri', 'birthplace', 'clm_wiki_edwin-hubble_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_edwin-hubble_illinois_birth', 'ent_edwin-hubble', 'plc_illinois', 'birthplace', 'clm_wiki_edwin-hubble_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eminem_marshall_birth', 'ent_eminem', 'plc_marshall', 'birthplace', 'clm_wiki_eminem_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eminem_marshall_birth', 'ent_eminem', 'plc_marshall', 'birthplace', 'clm_wiki_eminem_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_eminem_marshall_birth', 'ent_eminem', 'plc_marshall', 'birthplace', 'clm_wiki_eminem_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_helen-keller_alabama_birth', 'ent_helen-keller', 'plc_alabama', 'birthplace', 'clm_wiki_helen-keller_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jane-addams_rockford_birth', 'ent_jane-addams', 'plc_rockford', 'birthplace', 'clm_wiki_jane-addams_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_jane-addams_pennsylvania_birth', 'ent_jane-addams', 'plc_pennsylvania', 'birthplace', 'clm_wiki_jane-addams_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_johnny-carson_elizabeth_birth', 'ent_johnny-carson', 'plc_elizabeth', 'birthplace', 'clm_wiki_johnny-carson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_leslie-groves_new-york_birth', 'ent_leslie-groves', 'plc_new-york', 'birthplace', 'clm_wiki_leslie-groves_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_leslie-groves_new-york_birth', 'ent_leslie-groves', 'plc_new-york', 'birthplace', 'clm_wiki_leslie-groves_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_leslie-groves_seattle_birth', 'ent_leslie-groves', 'plc_seattle', 'birthplace', 'clm_wiki_leslie-groves_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mark-twain_missouri_birth', 'ent_mark-twain', 'plc_missouri', 'birthplace', 'clm_wiki_mark-twain_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mark-twain_missouri_birth', 'ent_mark-twain', 'plc_missouri', 'birthplace', 'clm_wiki_mark-twain_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_martin-van-buren_van-buren_birth', 'ent_martin-van-buren', 'plc_van-buren', 'birthplace', 'clm_wiki_martin-van-buren_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mary-baker-eddy_new-hampshire_birth', 'ent_mary-baker-eddy', 'plc_new-hampshire', 'birthplace', 'clm_wiki_mary-baker-eddy_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mary-baker-eddy_new-hampshire_birth', 'ent_mary-baker-eddy', 'plc_new-hampshire', 'birthplace', 'clm_wiki_mary-baker-eddy_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_melinda-french-gates_dallas_birth', 'ent_melinda-french-gates', 'plc_dallas', 'birthplace', 'clm_wiki_melinda-french-gates_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_michael-jordan_new-york-city_birth', 'ent_michael-jordan', 'plc_new-york-city', 'birthplace', 'clm_wiki_michael-jordan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_millard-fillmore_new-york_birth', 'ent_millard-fillmore', 'plc_new-york', 'birthplace', 'clm_wiki_millard-fillmore_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_muhammad-ali_louisville_birth', 'ent_muhammad-ali', 'plc_louisville', 'birthplace', 'clm_wiki_muhammad-ali_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_neil-armstrong_washington_birth', 'ent_neil-armstrong', 'plc_washington', 'birthplace', 'clm_wiki_neil-armstrong_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_norman-borlaug_norman_birth', 'ent_norman-borlaug', 'plc_norman', 'birthplace', 'clm_wiki_norman-borlaug_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_oprah-winfrey_mississippi_birth', 'ent_oprah-winfrey', 'plc_mississippi', 'birthplace', 'clm_wiki_oprah-winfrey_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_otis-redding_redding_birth', 'ent_otis-redding', 'plc_redding', 'birthplace', 'clm_wiki_otis-redding_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_phil-knight_portland_birth', 'ent_phil-knight', 'plc_portland', 'birthplace', 'clm_wiki_phil-knight_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_phil-knight_cleveland_birth', 'ent_phil-knight', 'plc_cleveland', 'birthplace', 'clm_wiki_phil-knight_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_phil-knight_plymouth_birth', 'ent_phil-knight', 'plc_plymouth', 'birthplace', 'clm_wiki_phil-knight_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_reese-witherspoon_new-orleans_birth', 'ent_reese-witherspoon', 'plc_new-orleans', 'birthplace', 'clm_wiki_reese-witherspoon_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_richard-feynman_new-york-city_birth', 'ent_richard-feynman', 'plc_new-york-city', 'birthplace', 'clm_wiki_richard-feynman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_richard-feynman_new-york-city_birth', 'ent_richard-feynman', 'plc_new-york-city', 'birthplace', 'clm_wiki_richard-feynman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_richard-nixon_california_birth', 'ent_richard-nixon', 'plc_california', 'birthplace', 'clm_wiki_richard-nixon_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_richard-nixon_california_birth', 'ent_richard-nixon', 'plc_california', 'birthplace', 'clm_wiki_richard-nixon_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ronald-reagan_illinois_birth', 'ent_ronald-reagan', 'plc_illinois', 'birthplace', 'clm_wiki_ronald-reagan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sally-ride_california_birth', 'ent_sally-ride', 'plc_california', 'birthplace', 'clm_wiki_sally-ride_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sally-ride_california_birth', 'ent_sally-ride', 'plc_california', 'birthplace', 'clm_wiki_sally-ride_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_samuel-morse_massachusetts_birth', 'ent_samuel-morse', 'plc_massachusetts', 'birthplace', 'clm_wiki_samuel-morse_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_samuel-morse_elizabeth_birth', 'ent_samuel-morse', 'plc_elizabeth', 'birthplace', 'clm_wiki_samuel-morse_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_saul-bellow_massachusetts_birth', 'ent_saul-bellow', 'plc_massachusetts', 'birthplace', 'clm_wiki_saul-bellow_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_scarlett-johansson_new-york-city_birth', 'ent_scarlett-johansson', 'plc_new-york-city', 'birthplace', 'clm_wiki_scarlett-johansson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sergey-brin_moscow_birth', 'ent_sergey-brin', 'plc_moscow', 'birthplace', 'clm_wiki_sergey-brin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sergey-brin_eugene_birth', 'ent_sergey-brin', 'plc_eugene', 'birthplace', 'clm_wiki_sergey-brin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_shirley-temple_california_birth', 'ent_shirley-temple', 'plc_california', 'birthplace', 'clm_wiki_shirley-temple_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stan-smith_california_birth', 'ent_stan-smith', 'plc_california', 'birthplace', 'clm_wiki_stan-smith_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stan-smith_salt-lake-city_birth', 'ent_stan-smith', 'plc_salt-lake-city', 'birthplace', 'clm_wiki_stan-smith_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stan-smith_richmond_birth', 'ent_stan-smith', 'plc_richmond', 'birthplace', 'clm_wiki_stan-smith_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stanley-kubrick_new-york-city_birth', 'ent_stanley-kubrick', 'plc_new-york-city', 'birthplace', 'clm_wiki_stanley-kubrick_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stanley-kubrick_the-bronx_birth', 'ent_stanley-kubrick', 'plc_the-bronx', 'birthplace', 'clm_wiki_stanley-kubrick_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_steve-ballmer_michigan_birth', 'ent_steve-ballmer', 'plc_michigan', 'birthplace', 'clm_wiki_steve-ballmer_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_steve-jobs_san-francisco_birth', 'ent_steve-jobs', 'plc_san-francisco', 'birthplace', 'clm_wiki_steve-jobs_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_steve-jobs_san-francisco_birth', 'ent_steve-jobs', 'plc_san-francisco', 'birthplace', 'clm_wiki_steve-jobs_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_steven-spielberg_indiana_birth', 'ent_steven-spielberg', 'plc_indiana', 'birthplace', 'clm_wiki_steven-spielberg_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stevie-wonder_jackson_birth', 'ent_stevie-wonder', 'plc_jackson', 'birthplace', 'clm_wiki_stevie-wonder_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stonewall-jackson_west-virginia_birth', 'ent_stonewall-jackson', 'plc_west-virginia', 'birthplace', 'clm_wiki_stonewall-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stonewall-jackson_clarksburg_birth', 'ent_stonewall-jackson', 'plc_clarksburg', 'birthplace', 'clm_wiki_stonewall-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stonewall-jackson_washington_birth', 'ent_stonewall-jackson', 'plc_washington', 'birthplace', 'clm_wiki_stonewall-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sylvia-plath_boston-university_birth', 'ent_sylvia-plath', 'plc_boston-university', 'birthplace', 'clm_wiki_sylvia-plath_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sylvia-plath_smith-college_birth', 'ent_sylvia-plath', 'plc_smith-college', 'birthplace', 'clm_wiki_sylvia-plath_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sylvia-plath_london_birth', 'ent_sylvia-plath', 'plc_london', 'birthplace', 'clm_wiki_sylvia-plath_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_thomas-edison_ohio_birth', 'ent_thomas-edison', 'plc_ohio', 'birthplace', 'clm_wiki_thomas-edison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_thomas-edison_michigan_birth', 'ent_thomas-edison', 'plc_michigan', 'birthplace', 'clm_wiki_thomas-edison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_thomas-edison_london_birth', 'ent_thomas-edison', 'plc_london', 'birthplace', 'clm_wiki_thomas-edison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_thomas-jefferson_jefferson_birth', 'ent_thomas-jefferson', 'plc_jefferson', 'birthplace', 'clm_wiki_thomas-jefferson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_thomas-jefferson_jefferson_birth', 'ent_thomas-jefferson', 'plc_jefferson', 'birthplace', 'clm_wiki_thomas-jefferson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_thomas-jefferson_north-carolina_birth', 'ent_thomas-jefferson', 'plc_north-carolina', 'birthplace', 'clm_wiki_thomas-jefferson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_tom-brady_california_birth', 'ent_tom-brady', 'plc_california', 'birthplace', 'clm_wiki_tom-brady_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_tupac-shakur_north-carolina_birth', 'ent_tupac-shakur', 'plc_north-carolina', 'birthplace', 'clm_wiki_tupac-shakur_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_tupac-shakur_atlanta_birth', 'ent_tupac-shakur', 'plc_atlanta', 'birthplace', 'clm_wiki_tupac-shakur_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ty-cobb_washington_birth', 'ent_ty-cobb', 'plc_washington', 'birthplace', 'clm_wiki_ty-cobb_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_walt-disney_missouri_birth', 'ent_walt-disney', 'plc_missouri', 'birthplace', 'clm_wiki_walt-disney_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_walter-johnson_washington_birth', 'ent_walter-johnson', 'plc_washington', 'birthplace', 'clm_wiki_walter-johnson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_walter-johnson_california_birth', 'ent_walter-johnson', 'plc_california', 'birthplace', 'clm_wiki_walter-johnson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_walter-johnson_washington_birth', 'ent_walter-johnson', 'plc_washington', 'birthplace', 'clm_wiki_walter-johnson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_warren-buffett_warren_birth', 'ent_warren-buffett', 'plc_warren', 'birthplace', 'clm_wiki_warren-buffett_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_warren-buffett_nebraska_birth', 'ent_warren-buffett', 'plc_nebraska', 'birthplace', 'clm_wiki_warren-buffett_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_warren-buffett_nebraska_birth', 'ent_warren-buffett', 'plc_nebraska', 'birthplace', 'clm_wiki_warren-buffett_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_warren-buffett_omaha_birth', 'ent_warren-buffett', 'plc_omaha', 'birthplace', 'clm_wiki_warren-buffett_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_whitney-houston_houston_birth', 'ent_whitney-houston', 'plc_houston', 'birthplace', 'clm_wiki_whitney-houston_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_william-faulkner_mississippi_birth', 'ent_william-faulkner', 'plc_mississippi', 'birthplace', 'clm_wiki_william-faulkner_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_william-faulkner_mississippi_birth', 'ent_william-faulkner', 'plc_mississippi', 'birthplace', 'clm_wiki_william-faulkner_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_william-henry-harrison_white-house_birth', 'ent_william-henry-harrison', 'plc_white-house', 'birthplace', 'clm_wiki_william-henry-harrison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_william-howard-taft_cincinnati_birth', 'ent_william-howard-taft', 'plc_cincinnati', 'birthplace', 'clm_wiki_william-howard-taft_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_william-howard-taft_cincinnati_birth', 'ent_william-howard-taft', 'plc_cincinnati', 'birthplace', 'clm_wiki_william-howard-taft_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_willie-mays_houston_birth', 'ent_willie-mays', 'plc_houston', 'birthplace', 'clm_wiki_willie-mays_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_wilt-chamberlain_philadelphia_birth', 'ent_wilt-chamberlain', 'plc_philadelphia', 'birthplace', 'clm_wiki_wilt-chamberlain_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_wilt-chamberlain_philadelphia_birth', 'ent_wilt-chamberlain', 'plc_philadelphia', 'birthplace', 'clm_wiki_wilt-chamberlain_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_woodrow-wilson_princeton-university_birth', 'ent_woodrow-wilson', 'plc_princeton-university', 'birthplace', 'clm_wiki_woodrow-wilson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_50-cent_jackson_birth', 'ent_50-cent', 'plc_jackson', 'birthplace', 'clm_wiki_50-cent_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_50-cent_new-york-city_birth', 'ent_50-cent', 'plc_new-york-city', 'birthplace', 'clm_wiki_50-cent_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_50-cent_new-york-city_birth', 'ent_50-cent', 'plc_new-york-city', 'birthplace', 'clm_wiki_50-cent_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_aaron-burr_new-jersey_birth', 'ent_aaron-burr', 'plc_new-jersey', 'birthplace', 'clm_wiki_aaron-burr_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_aaron-burr_paris_birth', 'ent_aaron-burr', 'plc_paris', 'birthplace', 'clm_wiki_aaron-burr_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_aaron-burr_elizabeth_birth', 'ent_aaron-burr', 'plc_elizabeth', 'birthplace', 'clm_wiki_aaron-burr_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_aaron-rodgers_pittsburgh_birth', 'ent_aaron-rodgers', 'plc_pittsburgh', 'birthplace', 'clm_wiki_aaron-rodgers_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_aaron-rodgers_california_birth', 'ent_aaron-rodgers', 'plc_california', 'birthplace', 'clm_wiki_aaron-rodgers_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_aaron-rodgers_california_birth', 'ent_aaron-rodgers', 'plc_california', 'birthplace', 'clm_wiki_aaron-rodgers_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_adam-riess_harvard-university_birth', 'ent_adam-riess', 'plc_harvard-university', 'birthplace', 'clm_wiki_adam-riess_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_adam-riess_washington_birth', 'ent_adam-riess', 'plc_washington', 'birthplace', 'clm_wiki_adam-riess_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_adam-riess_johns-hopkins-university_birth', 'ent_adam-riess', 'plc_johns-hopkins-university', 'birthplace', 'clm_wiki_adam-riess_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_adena-friedman_vanderbilt-university_birth', 'ent_adena-friedman', 'plc_vanderbilt-university', 'birthplace', 'clm_wiki_adena-friedman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_adrien-brody_new-york-city_birth', 'ent_adrien-brody', 'plc_new-york-city', 'birthplace', 'clm_wiki_adrien-brody_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_adrien-brody_new-york_birth', 'ent_adrien-brody', 'plc_new-york', 'birthplace', 'clm_wiki_adrien-brody_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_adrien-brody_new-york_birth', 'ent_adrien-brody', 'plc_new-york', 'birthplace', 'clm_wiki_adrien-brody_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_al-capone_new-york-city_birth', 'ent_al-capone', 'plc_new-york-city', 'birthplace', 'clm_wiki_al-capone_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_al-capone_new-york-city_birth', 'ent_al-capone', 'plc_new-york-city', 'birthplace', 'clm_wiki_al-capone_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_al-capone_new-york-city_birth', 'ent_al-capone', 'plc_new-york-city', 'birthplace', 'clm_wiki_al-capone_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_al-gore_washington_birth', 'ent_al-gore', 'plc_washington', 'birthplace', 'clm_wiki_al-gore_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_al-gore_washington_birth', 'ent_al-gore', 'plc_washington', 'birthplace', 'clm_wiki_al-gore_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_al-pacino_new-york-city_birth', 'ent_al-pacino', 'plc_new-york-city', 'birthplace', 'clm_wiki_al-pacino_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alan-shepard_new-hampshire_birth', 'ent_alan-shepard', 'plc_new-hampshire', 'birthplace', 'clm_wiki_alan-shepard_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alexander-hamilton_hamilton_birth', 'ent_alexander-hamilton', 'plc_hamilton', 'birthplace', 'clm_wiki_alexander-hamilton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alexander-hamilton_hamilton_birth', 'ent_alexander-hamilton', 'plc_hamilton', 'birthplace', 'clm_wiki_alexander-hamilton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alice-cooper_alice_birth', 'ent_alice-cooper', 'plc_alice', 'birthplace', 'clm_wiki_alice-cooper_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alice-cooper_michigan_birth', 'ent_alice-cooper', 'plc_michigan', 'birthplace', 'clm_wiki_alice-cooper_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alice-cooper_alice_birth', 'ent_alice-cooper', 'plc_alice', 'birthplace', 'clm_wiki_alice-cooper_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alice-paul_university-of-pennsylvania_birth', 'ent_alice-paul', 'plc_university-of-pennsylvania', 'birthplace', 'clm_wiki_alice-paul_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alice-paul_new-jersey_birth', 'ent_alice-paul', 'plc_new-jersey', 'birthplace', 'clm_wiki_alice-paul_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alice-paul_new-jersey_birth', 'ent_alice-paul', 'plc_new-jersey', 'birthplace', 'clm_wiki_alice-paul_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alice-paul_new-jersey_birth', 'ent_alice-paul', 'plc_new-jersey', 'birthplace', 'clm_wiki_alice-paul_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alice-paul_wilson_birth', 'ent_alice-paul', 'plc_wilson', 'birthplace', 'clm_wiki_alice-paul_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alice-walton_alice_birth', 'ent_alice-walton', 'plc_alice', 'birthplace', 'clm_wiki_alice-walton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alice-walton_arkansas_birth', 'ent_alice-walton', 'plc_arkansas', 'birthplace', 'clm_wiki_alice-walton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alice-walton_alice_birth', 'ent_alice-walton', 'plc_alice', 'birthplace', 'clm_wiki_alice-walton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alice-walton_bentonville_birth', 'ent_alice-walton', 'plc_bentonville', 'birthplace', 'clm_wiki_alice-walton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_amy-fisher_elizabeth_birth', 'ent_amy-fisher', 'plc_elizabeth', 'birthplace', 'clm_wiki_amy-fisher_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_amy-fisher_elizabeth_birth', 'ent_amy-fisher', 'plc_elizabeth', 'birthplace', 'clm_wiki_amy-fisher_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_andrew-w-mellon_pennsylvania_birth', 'ent_andrew-w-mellon', 'plc_pennsylvania', 'birthplace', 'clm_wiki_andrew-w-mellon_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_angus-deaton_princeton-university_birth', 'ent_angus-deaton', 'plc_princeton-university', 'birthplace', 'clm_wiki_angus-deaton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_anne-bancroft_new-york-city_birth', 'ent_anne-bancroft', 'plc_new-york-city', 'birthplace', 'clm_wiki_anne-bancroft_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_anne-morrow-lindbergh_new-jersey_birth', 'ent_anne-morrow-lindbergh', 'plc_new-jersey', 'birthplace', 'clm_wiki_anne-morrow-lindbergh_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_anne-morrow-lindbergh_new-jersey_birth', 'ent_anne-morrow-lindbergh', 'plc_new-jersey', 'birthplace', 'clm_wiki_anne-morrow-lindbergh_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_annie-oakley_ohio_birth', 'ent_annie-oakley', 'plc_ohio', 'birthplace', 'clm_wiki_annie-oakley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_annie-oakley_buffalo_birth', 'ent_annie-oakley', 'plc_buffalo', 'birthplace', 'clm_wiki_annie-oakley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_annie-oakley_woodland_birth', 'ent_annie-oakley', 'plc_woodland', 'birthplace', 'clm_wiki_annie-oakley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_annie-oakley_pennsylvania_birth', 'ent_annie-oakley', 'plc_pennsylvania', 'birthplace', 'clm_wiki_annie-oakley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_annie-oakley_elizabeth_birth', 'ent_annie-oakley', 'plc_elizabeth', 'birthplace', 'clm_wiki_annie-oakley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_aretha-franklin_tennessee_birth', 'ent_aretha-franklin', 'plc_tennessee', 'birthplace', 'clm_wiki_aretha-franklin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_arthur-compton_wooster_birth', 'ent_arthur-compton', 'plc_wooster', 'birthplace', 'clm_wiki_arthur-compton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_assata-shakur_new-jersey_birth', 'ent_assata-shakur', 'plc_new-jersey', 'birthplace', 'clm_wiki_assata-shakur_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_assata-shakur_queens_birth', 'ent_assata-shakur', 'plc_queens', 'birthplace', 'clm_wiki_assata-shakur_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_axl-rose_lawrence_birth', 'ent_axl-rose', 'plc_lawrence', 'birthplace', 'clm_wiki_axl-rose_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_axl-rose_lafayette_birth', 'ent_axl-rose', 'plc_lafayette', 'birthplace', 'clm_wiki_axl-rose_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_axl-rose_los-angeles_birth', 'ent_axl-rose', 'plc_los-angeles', 'birthplace', 'clm_wiki_axl-rose_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_baby-face-nelson_illinois_birth', 'ent_baby-face-nelson', 'plc_illinois', 'birthplace', 'clm_wiki_baby-face-nelson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_baby-face-nelson_hamilton_birth', 'ent_baby-face-nelson', 'plc_hamilton', 'birthplace', 'clm_wiki_baby-face-nelson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_barbara-bach_new-york-city_birth', 'ent_barbara-bach', 'plc_new-york-city', 'birthplace', 'clm_wiki_barbara-bach_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_barbara-bach_new-york-city_birth', 'ent_barbara-bach', 'plc_new-york-city', 'birthplace', 'clm_wiki_barbara-bach_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_barbra-streisand_golden_birth', 'ent_barbra-streisand', 'plc_golden', 'birthplace', 'clm_wiki_barbra-streisand_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bari-weiss_pennsylvania_birth', 'ent_bari-weiss', 'plc_pennsylvania', 'birthplace', 'clm_wiki_bari-weiss_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bari-weiss_pennsylvania_birth', 'ent_bari-weiss', 'plc_pennsylvania', 'birthplace', 'clm_wiki_bari-weiss_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_barry-bonds_san-francisco_birth', 'ent_barry-bonds', 'plc_san-francisco', 'birthplace', 'clm_wiki_barry-bonds_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_beth-ford_columbia-university_birth', 'ent_beth-ford', 'plc_columbia-university', 'birthplace', 'clm_wiki_beth-ford_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_betsy-ross_elizabeth_birth', 'ent_betsy-ross', 'plc_elizabeth', 'birthplace', 'clm_wiki_betsy-ross_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_betsy-ross_philadelphia_birth', 'ent_betsy-ross', 'plc_philadelphia', 'birthplace', 'clm_wiki_betsy-ross_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bette-davis_massachusetts_birth', 'ent_bette-davis', 'plc_massachusetts', 'birthplace', 'clm_wiki_bette-davis_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bill-bixby_san-francisco_birth', 'ent_bill-bixby', 'plc_san-francisco', 'birthplace', 'clm_wiki_bill-bixby_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bill-bixby_san-francisco_birth', 'ent_bill-bixby', 'plc_san-francisco', 'birthplace', 'clm_wiki_bill-bixby_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bill-bixby_san-francisco_birth', 'ent_bill-bixby', 'plc_san-francisco', 'birthplace', 'clm_wiki_bill-bixby_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_blake-lively_los-angeles_birth', 'ent_blake-lively', 'plc_los-angeles', 'birthplace', 'clm_wiki_blake-lively_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bob-dole_kansas_birth', 'ent_bob-dole', 'plc_kansas', 'birthplace', 'clm_wiki_bob-dole_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bob-dole_kansas_birth', 'ent_bob-dole', 'plc_kansas', 'birthplace', 'clm_wiki_bob-dole_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bobbi-brown_illinois_birth', 'ent_bobbi-brown', 'plc_illinois', 'birthplace', 'clm_wiki_bobbi-brown_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_brigham-young_new-york_birth', 'ent_brigham-young', 'plc_new-york', 'birthplace', 'clm_wiki_brigham-young_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_brigham-young_vermont_birth', 'ent_brigham-young', 'plc_vermont', 'birthplace', 'clm_wiki_brigham-young_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bruce-lee_brandon_birth', 'ent_bruce-lee', 'plc_brandon', 'birthplace', 'clm_wiki_bruce-lee_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bruce-willis_new-jersey_birth', 'ent_bruce-willis', 'plc_new-jersey', 'birthplace', 'clm_wiki_bruce-willis_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bud-abbott_new-jersey_birth', 'ent_bud-abbott', 'plc_new-jersey', 'birthplace', 'clm_wiki_bud-abbott_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_bud-abbott_new-jersey_birth', 'ent_bud-abbott', 'plc_new-jersey', 'birthplace', 'clm_wiki_bud-abbott_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_buddy-holly_lubbock_birth', 'ent_buddy-holly', 'plc_lubbock', 'birthplace', 'clm_wiki_buddy-holly_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_buddy-holly_lawrence_birth', 'ent_buddy-holly', 'plc_lawrence', 'birthplace', 'clm_wiki_buddy-holly_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_buffalo-bill_iowa_birth', 'ent_buffalo-bill', 'plc_iowa', 'birthplace', 'clm_wiki_buffalo-bill_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_buffalo-bill_new-jersey_birth', 'ent_buffalo-bill', 'plc_new-jersey', 'birthplace', 'clm_wiki_buffalo-bill_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_camila-cabello_mexico_birth', 'ent_camila-cabello', 'plc_mexico', 'birthplace', 'clm_wiki_camila-cabello_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_carl-anderson_columbus_birth', 'ent_carl-anderson', 'plc_columbus', 'birthplace', 'clm_wiki_carl-anderson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_carl-david-anderson_new-york-city_birth', 'ent_carl-david-anderson', 'plc_new-york-city', 'birthplace', 'clm_wiki_carl-david-anderson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_carl-david-anderson_new-york-city_birth', 'ent_carl-david-anderson', 'plc_new-york-city', 'birthplace', 'clm_wiki_carl-david-anderson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_carl-david-anderson_lawrence_birth', 'ent_carl-david-anderson', 'plc_lawrence', 'birthplace', 'clm_wiki_carl-david-anderson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_carmen-electra_ohio_birth', 'ent_carmen-electra', 'plc_ohio', 'birthplace', 'clm_wiki_carmen-electra_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_carmen-electra_minneapolis_birth', 'ent_carmen-electra', 'plc_minneapolis', 'birthplace', 'clm_wiki_carmen-electra_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_cathy-moriarty_new-york-city_birth', 'ent_cathy-moriarty', 'plc_new-york-city', 'birthplace', 'clm_wiki_cathy-moriarty_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_cathy-moriarty_new-york-city_birth', 'ent_cathy-moriarty', 'plc_new-york-city', 'birthplace', 'clm_wiki_cathy-moriarty_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_cesar-chavez_california_birth', 'ent_cesar-chavez', 'plc_california', 'birthplace', 'clm_wiki_cesar-chavez_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-koch_wichita_birth', 'ent_charles-koch', 'plc_wichita', 'birthplace', 'clm_wiki_charles-koch_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-manson_eugene_birth', 'ent_charles-manson', 'plc_eugene', 'birthplace', 'clm_wiki_charles-manson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-manson_chillicothe_birth', 'ent_charles-manson', 'plc_chillicothe', 'birthplace', 'clm_wiki_charles-manson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-manson_los-angeles_birth', 'ent_charles-manson', 'plc_los-angeles', 'birthplace', 'clm_wiki_charles-manson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-manson_canyon_birth', 'ent_charles-manson', 'plc_canyon', 'birthplace', 'clm_wiki_charles-manson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charles-manson_wilson_birth', 'ent_charles-manson', 'plc_wilson', 'birthplace', 'clm_wiki_charles-manson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_charo_las-vegas_birth', 'ent_charo', 'plc_las-vegas', 'birthplace', 'clm_wiki_charo_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_chelsea-clinton_columbia-university_birth', 'ent_chelsea-clinton', 'plc_columbia-university', 'birthplace', 'clm_wiki_chelsea-clinton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_chelsea-clinton_little-rock_birth', 'ent_chelsea-clinton', 'plc_little-rock', 'birthplace', 'clm_wiki_chelsea-clinton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_cher_california_birth', 'ent_cher', 'plc_california', 'birthplace', 'clm_wiki_cher_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_chris-brown_virginia_birth', 'ent_chris-brown', 'plc_virginia', 'birthplace', 'clm_wiki_chris-brown_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_chris-brown_new-york-city_birth', 'ent_chris-brown', 'plc_new-york-city', 'birthplace', 'clm_wiki_chris-brown_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_christopher-latham-sholes_pennsylvania_birth', 'ent_christopher-latham-sholes', 'plc_pennsylvania', 'birthplace', 'clm_wiki_christopher-latham-sholes_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_christopher-walken_new-york-city_birth', 'ent_christopher-walken', 'plc_new-york-city', 'birthplace', 'clm_wiki_christopher-walken_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_christy-walton_jackson_birth', 'ent_christy-walton', 'plc_jackson', 'birthplace', 'clm_wiki_christy-walton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_chuck-berry_anderson_birth', 'ent_chuck-berry', 'plc_anderson', 'birthplace', 'clm_wiki_chuck-berry_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_clara-bow_new-york-city_birth', 'ent_clara-bow', 'plc_new-york-city', 'birthplace', 'clm_wiki_clara-bow_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_clara-bow_new-york-city_birth', 'ent_clara-bow', 'plc_new-york-city', 'birthplace', 'clm_wiki_clara-bow_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_clara-bow_new-york_birth', 'ent_clara-bow', 'plc_new-york', 'birthplace', 'clm_wiki_clara-bow_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_marla-maples_georgia_birth', 'ent_marla-maples', 'plc_georgia', 'birthplace', 'clm_wiki_marla-maples_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_marla-maples_jefferson_birth', 'ent_marla-maples', 'plc_jefferson', 'birthplace', 'clm_wiki_marla-maples_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mahatma-gandhi_london_birth', 'ent_mahatma-gandhi', 'plc_london', 'birthplace', 'clm_wiki_mahatma-gandhi_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_barron-trump_new-york-city_birth', 'ent_barron-trump', 'plc_new-york-city', 'birthplace', 'clm_wiki_barron-trump_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_barron-trump_york_birth', 'ent_barron-trump', 'plc_york', 'birthplace', 'clm_wiki_barron-trump_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_barron-trump_florida_birth', 'ent_barron-trump', 'plc_florida', 'birthplace', 'clm_wiki_barron-trump_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_diego-rivera_mexico_birth', 'ent_diego-rivera', 'plc_mexico', 'birthplace', 'clm_wiki_diego-rivera_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dred-scott_virginia_birth', 'ent_dred-scott', 'plc_virginia', 'birthplace', 'clm_wiki_dred-scott_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dred-scott_virginia_birth', 'ent_dred-scott', 'plc_virginia', 'birthplace', 'clm_wiki_dred-scott_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_dustin-hoffman_los-angeles_birth', 'ent_dustin-hoffman', 'plc_los-angeles', 'birthplace', 'clm_wiki_dustin-hoffman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-ford_portland_birth', 'ent_john-ford', 'plc_portland', 'birthplace', 'clm_wiki_john-ford_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-ford_spencer_birth', 'ent_john-ford', 'plc_spencer', 'birthplace', 'clm_wiki_john-ford_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-glenn_cambridge_birth', 'ent_john-glenn', 'plc_cambridge', 'birthplace', 'clm_wiki_john-glenn_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-hancock_massachusetts_birth', 'ent_john-hancock', 'plc_massachusetts', 'birthplace', 'clm_wiki_john-hancock_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-hancock_massachusetts_birth', 'ent_john-hancock', 'plc_massachusetts', 'birthplace', 'clm_wiki_john-hancock_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_john-huston_missouri_birth', 'ent_john-huston', 'plc_missouri', 'birthplace', 'clm_wiki_john-huston_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_amy-griffin_griffin_birth', 'ent_amy-griffin', 'plc_griffin', 'birthplace', 'clm_wiki_amy-griffin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_amy-griffin_washington_birth', 'ent_amy-griffin', 'plc_washington', 'birthplace', 'clm_wiki_amy-griffin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_anderson-cooper_new-york-city_birth', 'ent_anderson-cooper', 'plc_new-york-city', 'birthplace', 'clm_wiki_anderson-cooper_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_angela-davis_birmingham_birth', 'ent_angela-davis', 'plc_birmingham', 'birthplace', 'clm_wiki_angela-davis_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ann-lee_manchester_birth', 'ent_ann-lee', 'plc_manchester', 'birthplace', 'clm_wiki_ann-lee_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ann-lee_massachusetts_birth', 'ent_ann-lee', 'plc_massachusetts', 'birthplace', 'clm_wiki_ann-lee_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_zachary-taylor_davenport_birth', 'ent_zachary-taylor', 'plc_davenport', 'birthplace', 'clm_wiki_zachary-taylor_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_zachary-taylor_louisville_birth', 'ent_zachary-taylor', 'plc_louisville', 'birthplace', 'clm_wiki_zachary-taylor_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_schuyler-colfax_new-york-city_birth', 'ent_schuyler-colfax', 'plc_new-york-city', 'birthplace', 'clm_wiki_schuyler-colfax_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_adlai-stevenson-i_kentucky_birth', 'ent_adlai-stevenson-i', 'plc_kentucky', 'birthplace', 'clm_wiki_adlai-stevenson-i_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_adlai-stevenson-i_kentucky_birth', 'ent_adlai-stevenson-i', 'plc_kentucky', 'birthplace', 'clm_wiki_adlai-stevenson-i_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_spiro-agnew_baltimore_birth', 'ent_spiro-agnew', 'plc_baltimore', 'birthplace', 'clm_wiki_spiro-agnew_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_spiro-agnew_washington_birth', 'ent_spiro-agnew', 'plc_washington', 'birthplace', 'clm_wiki_spiro-agnew_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nelson-rockefeller_maine_birth', 'ent_nelson-rockefeller', 'plc_maine', 'birthplace', 'clm_wiki_nelson-rockefeller_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nelson-rockefeller_maine_birth', 'ent_nelson-rockefeller', 'plc_maine', 'birthplace', 'clm_wiki_nelson-rockefeller_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_walter-mondale_frederick_birth', 'ent_walter-mondale', 'plc_frederick', 'birthplace', 'clm_wiki_walter-mondale_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_walter-mondale_minnesota_birth', 'ent_walter-mondale', 'plc_minnesota', 'birthplace', 'clm_wiki_walter-mondale_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_walter-mondale_frederick_birth', 'ent_walter-mondale', 'plc_frederick', 'birthplace', 'clm_wiki_walter-mondale_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mike-pence_columbus_birth', 'ent_mike-pence', 'plc_columbus', 'birthplace', 'clm_wiki_mike-pence_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mike-pence_columbus_birth', 'ent_mike-pence', 'plc_columbus', 'birthplace', 'clm_wiki_mike-pence_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_martha-washington_virginia_birth', 'ent_martha-washington', 'plc_virginia', 'birthplace', 'clm_wiki_martha-washington_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_martha-washington_williamsburg_birth', 'ent_martha-washington', 'plc_williamsburg', 'birthplace', 'clm_wiki_martha-washington_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_abigail-adams_massachusetts_birth', 'ent_abigail-adams', 'plc_massachusetts', 'birthplace', 'clm_wiki_abigail-adams_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_martha-jefferson_charlottesville_birth', 'ent_martha-jefferson', 'plc_charlottesville', 'birthplace', 'clm_wiki_martha-jefferson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_martha-jefferson_elizabeth_birth', 'ent_martha-jefferson', 'plc_elizabeth', 'birthplace', 'clm_wiki_martha-jefferson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_martha-jefferson_jefferson_birth', 'ent_martha-jefferson', 'plc_jefferson', 'birthplace', 'clm_wiki_martha-jefferson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_louisa-adams_washington_birth', 'ent_louisa-adams', 'plc_washington', 'birthplace', 'clm_wiki_louisa-adams_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_louisa-adams_london_birth', 'ent_louisa-adams', 'plc_london', 'birthplace', 'clm_wiki_louisa-adams_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_louisa-adams_boston_birth', 'ent_louisa-adams', 'plc_boston', 'birthplace', 'clm_wiki_louisa-adams_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_rachel-jackson_tennessee_birth', 'ent_rachel-jackson', 'plc_tennessee', 'birthplace', 'clm_wiki_rachel-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_rachel-jackson_nashville_birth', 'ent_rachel-jackson', 'plc_nashville', 'birthplace', 'clm_wiki_rachel-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_margaret-taylor_maryland_birth', 'ent_margaret-taylor', 'plc_maryland', 'birthplace', 'clm_wiki_margaret-taylor_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_margaret-taylor_maryland_birth', 'ent_margaret-taylor', 'plc_maryland', 'birthplace', 'clm_wiki_margaret-taylor_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_abigail-fillmore_stillwater_birth', 'ent_abigail-fillmore', 'plc_stillwater', 'birthplace', 'clm_wiki_abigail-fillmore_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mary-todd-lincoln_lexington_birth', 'ent_mary-todd-lincoln', 'plc_lexington', 'birthplace', 'clm_wiki_mary-todd-lincoln_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mary-todd-lincoln_lexington_birth', 'ent_mary-todd-lincoln', 'plc_lexington', 'birthplace', 'clm_wiki_mary-todd-lincoln_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mary-todd-lincoln_pennsylvania_birth', 'ent_mary-todd-lincoln', 'plc_pennsylvania', 'birthplace', 'clm_wiki_mary-todd-lincoln_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mary-todd-lincoln_springfield_birth', 'ent_mary-todd-lincoln', 'plc_springfield', 'birthplace', 'clm_wiki_mary-todd-lincoln_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mary-todd-lincoln_white-house_birth', 'ent_mary-todd-lincoln', 'plc_white-house', 'birthplace', 'clm_wiki_mary-todd-lincoln_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mary-todd-lincoln_white-house_birth', 'ent_mary-todd-lincoln', 'plc_white-house', 'birthplace', 'clm_wiki_mary-todd-lincoln_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lucretia-garfield_ohio_birth', 'ent_lucretia-garfield', 'plc_ohio', 'birthplace', 'clm_wiki_lucretia-garfield_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lucretia-garfield_ohio_birth', 'ent_lucretia-garfield', 'plc_ohio', 'birthplace', 'clm_wiki_lucretia-garfield_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lucretia-garfield_washington_birth', 'ent_lucretia-garfield', 'plc_washington', 'birthplace', 'clm_wiki_lucretia-garfield_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_rose-cleveland_fayetteville_birth', 'ent_rose-cleveland', 'plc_fayetteville', 'birthplace', 'clm_wiki_rose-cleveland_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mamie-eisenhower_washington_birth', 'ent_mamie-eisenhower', 'plc_washington', 'birthplace', 'clm_wiki_mamie-eisenhower_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mamie-eisenhower_geneva_birth', 'ent_mamie-eisenhower', 'plc_geneva', 'birthplace', 'clm_wiki_mamie-eisenhower_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mamie-eisenhower_denver_birth', 'ent_mamie-eisenhower', 'plc_denver', 'birthplace', 'clm_wiki_mamie-eisenhower_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_pat-nixon_california_birth', 'ent_pat-nixon', 'plc_california', 'birthplace', 'clm_wiki_pat-nixon_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_pat-nixon_nevada_birth', 'ent_pat-nixon', 'plc_nevada', 'birthplace', 'clm_wiki_pat-nixon_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_rosalynn-carter_georgia_birth', 'ent_rosalynn-carter', 'plc_georgia', 'birthplace', 'clm_wiki_rosalynn-carter_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_rosalynn-carter_georgia_birth', 'ent_rosalynn-carter', 'plc_georgia', 'birthplace', 'clm_wiki_rosalynn-carter_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nancy-reagan_phoenix_birth', 'ent_nancy-reagan', 'plc_phoenix', 'birthplace', 'clm_wiki_nancy-reagan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_michelle-obama_illinois_birth', 'ent_michelle-obama', 'plc_illinois', 'birthplace', 'clm_wiki_michelle-obama_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_paul-revere_boston_birth', 'ent_paul-revere', 'plc_boston', 'birthplace', 'clm_wiki_paul-revere_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_thomas-paine_new-york-city_birth', 'ent_thomas-paine', 'plc_new-york-city', 'birthplace', 'clm_wiki_thomas-paine_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_thomas-paine_norfolk_birth', 'ent_thomas-paine', 'plc_norfolk', 'birthplace', 'clm_wiki_thomas-paine_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_patrick-henry_charlotte_birth', 'ent_patrick-henry', 'plc_charlotte', 'birthplace', 'clm_wiki_patrick-henry_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_patrick-henry_shelton_birth', 'ent_patrick-henry', 'plc_shelton', 'birthplace', 'clm_wiki_patrick-henry_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nathanael-greene_rhode-island_birth', 'ent_nathanael-greene', 'plc_rhode-island', 'birthplace', 'clm_wiki_nathanael-greene_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nathanael-greene_austin_birth', 'ent_nathanael-greene', 'plc_austin', 'birthplace', 'clm_wiki_nathanael-greene_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_philip-sheridan_cleveland_birth', 'ent_philip-sheridan', 'plc_cleveland', 'birthplace', 'clm_wiki_philip-sheridan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_philip-sheridan_sheridan_birth', 'ent_philip-sheridan', 'plc_sheridan', 'birthplace', 'clm_wiki_philip-sheridan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ambrose-burnside_indiana_birth', 'ent_ambrose-burnside', 'plc_indiana', 'birthplace', 'clm_wiki_ambrose-burnside_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ambrose-burnside_south-carolina_birth', 'ent_ambrose-burnside', 'plc_south-carolina', 'birthplace', 'clm_wiki_ambrose-burnside_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nathan-bedford-forrest_tennessee_birth', 'ent_nathan-bedford-forrest', 'plc_tennessee', 'birthplace', 'clm_wiki_nathan-bedford-forrest_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nathan-bedford-forrest_north-carolina_birth', 'ent_nathan-bedford-forrest', 'plc_north-carolina', 'birthplace', 'clm_wiki_nathan-bedford-forrest_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nathan-bedford-forrest_tennessee_birth', 'ent_nathan-bedford-forrest', 'plc_tennessee', 'birthplace', 'clm_wiki_nathan-bedford-forrest_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nathan-bedford-forrest_marshall_birth', 'ent_nathan-bedford-forrest', 'plc_marshall', 'birthplace', 'clm_wiki_nathan-bedford-forrest_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sojourner-truth_new-york_birth', 'ent_sojourner-truth', 'plc_new-york', 'birthplace', 'clm_wiki_sojourner-truth_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sojourner-truth_elizabeth_birth', 'ent_sojourner-truth', 'plc_elizabeth', 'birthplace', 'clm_wiki_sojourner-truth_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sojourner-truth_elizabeth_birth', 'ent_sojourner-truth', 'plc_elizabeth', 'birthplace', 'clm_wiki_sojourner-truth_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sojourner-truth_michigan_birth', 'ent_sojourner-truth', 'plc_michigan', 'birthplace', 'clm_wiki_sojourner-truth_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_william-lloyd-garrison_new-brunswick_birth', 'ent_william-lloyd-garrison', 'plc_new-brunswick', 'birthplace', 'clm_wiki_william-lloyd-garrison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_marcus-garvey_london_birth', 'ent_marcus-garvey', 'plc_london', 'birthplace', 'clm_wiki_marcus-garvey_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nikola-tesla_union_birth', 'ent_nikola-tesla', 'plc_union', 'birthplace', 'clm_wiki_nikola-tesla_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_robert-fulton_new-york-city_birth', 'ent_robert-fulton', 'plc_new-york-city', 'birthplace', 'clm_wiki_robert-fulton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_robert-fulton_pennsylvania_birth', 'ent_robert-fulton', 'plc_pennsylvania', 'birthplace', 'clm_wiki_robert-fulton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_marie-curie_helena_birth', 'ent_marie-curie', 'plc_helena', 'birthplace', 'clm_wiki_marie-curie_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_rachel-carson_pennsylvania_birth', 'ent_rachel-carson', 'plc_pennsylvania', 'birthplace', 'clm_wiki_rachel-carson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_albert-sabin_washington_birth', 'ent_albert-sabin', 'plc_washington', 'birthplace', 'clm_wiki_albert-sabin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_albert-sabin_new-york_birth', 'ent_albert-sabin', 'plc_new-york', 'birthplace', 'clm_wiki_albert-sabin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_rosalind-franklin_franklin_birth', 'ent_rosalind-franklin', 'plc_franklin', 'birthplace', 'clm_wiki_rosalind-franklin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mae-jemison_cornell-university_birth', 'ent_mae-jemison', 'plc_cornell-university', 'birthplace', 'clm_wiki_mae-jemison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_vannevar-bush_massachusetts_birth', 'ent_vannevar-bush', 'plc_massachusetts', 'birthplace', 'clm_wiki_vannevar-bush_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_vannevar-bush_massachusetts_birth', 'ent_vannevar-bush', 'plc_massachusetts', 'birthplace', 'clm_wiki_vannevar-bush_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alan-turing_hastings_birth', 'ent_alan-turing', 'plc_hastings', 'birthplace', 'clm_wiki_alan-turing_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_paul-allen_washington_birth', 'ent_paul-allen', 'plc_washington', 'birthplace', 'clm_wiki_paul-allen_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_vint-cerf_connecticut_birth', 'ent_vint-cerf', 'plc_connecticut', 'birthplace', 'clm_wiki_vint-cerf_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stephanie-kwolek_pennsylvania_birth', 'ent_stephanie-kwolek', 'plc_pennsylvania', 'birthplace', 'clm_wiki_stephanie-kwolek_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_malcolm-x_nebraska_birth', 'ent_malcolm-x', 'plc_nebraska', 'birthplace', 'clm_wiki_malcolm-x_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_malcolm-x_grenada_birth', 'ent_malcolm-x', 'plc_grenada', 'birthplace', 'clm_wiki_malcolm-x_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_rosa-parks_alabama_birth', 'ent_rosa-parks', 'plc_alabama', 'birthplace', 'clm_wiki_rosa-parks_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_medgar-evers_arlington_birth', 'ent_medgar-evers', 'plc_arlington', 'birthplace', 'clm_wiki_medgar-evers_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_whitney-young_kentucky_birth', 'ent_whitney-young', 'plc_kentucky', 'birthplace', 'clm_wiki_whitney-young_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_whitney-young_kentucky_birth', 'ent_whitney-young', 'plc_kentucky', 'birthplace', 'clm_wiki_whitney-young_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_thurgood-marshall_baltimore_birth', 'ent_thurgood-marshall', 'plc_baltimore', 'birthplace', 'clm_wiki_thurgood-marshall_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_walt-whitman_huntington_birth', 'ent_walt-whitman', 'plc_huntington', 'birthplace', 'clm_wiki_walt-whitman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nathaniel-hawthorne_massachusetts_birth', 'ent_nathaniel-hawthorne', 'plc_massachusetts', 'birthplace', 'clm_wiki_nathaniel-hawthorne_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nathaniel-hawthorne_massachusetts_birth', 'ent_nathaniel-hawthorne', 'plc_massachusetts', 'birthplace', 'clm_wiki_nathaniel-hawthorne_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nathaniel-hawthorne_salem_birth', 'ent_nathaniel-hawthorne', 'plc_salem', 'birthplace', 'clm_wiki_nathaniel-hawthorne_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_louisa-may-alcott_pennsylvania_birth', 'ent_louisa-may-alcott', 'plc_pennsylvania', 'birthplace', 'clm_wiki_louisa-may-alcott_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_louisa-may-alcott_philadelphia_birth', 'ent_louisa-may-alcott', 'plc_philadelphia', 'birthplace', 'clm_wiki_louisa-may-alcott_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ralph-waldo-emerson_washington_birth', 'ent_ralph-waldo-emerson', 'plc_washington', 'birthplace', 'clm_wiki_ralph-waldo-emerson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_robert-frost_new-hampshire_birth', 'ent_robert-frost', 'plc_new-hampshire', 'birthplace', 'clm_wiki_robert-frost_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_wallace-stevens_pennsylvania_birth', 'ent_wallace-stevens', 'plc_pennsylvania', 'birthplace', 'clm_wiki_wallace-stevens_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_wallace-stevens_new-york_birth', 'ent_wallace-stevens', 'plc_new-york', 'birthplace', 'clm_wiki_wallace-stevens_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_theodore-roethke_reading_birth', 'ent_theodore-roethke', 'plc_reading', 'birthplace', 'clm_wiki_theodore-roethke_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_theodore-roethke_saginaw_birth', 'ent_theodore-roethke', 'plc_saginaw', 'birthplace', 'clm_wiki_theodore-roethke_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_adrienne-rich_baltimore_birth', 'ent_adrienne-rich', 'plc_baltimore', 'birthplace', 'clm_wiki_adrienne-rich_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_adrienne-rich_baltimore_birth', 'ent_adrienne-rich', 'plc_baltimore', 'birthplace', 'clm_wiki_adrienne-rich_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ralph-ellison_oklahoma-city_birth', 'ent_ralph-ellison', 'plc_oklahoma-city', 'birthplace', 'clm_wiki_ralph-ellison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ralph-ellison_new-york_birth', 'ent_ralph-ellison', 'plc_new-york', 'birthplace', 'clm_wiki_ralph-ellison_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_philip-roth_new-jersey_birth', 'ent_philip-roth', 'plc_new-jersey', 'birthplace', 'clm_wiki_philip-roth_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alice-walker_alice_birth', 'ent_alice-walker', 'plc_alice', 'birthplace', 'clm_wiki_alice-walker_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alice-walker_georgia_birth', 'ent_alice-walker', 'plc_georgia', 'birthplace', 'clm_wiki_alice-walker_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_thomas-pynchon_new-york_birth', 'ent_thomas-pynchon', 'plc_new-york', 'birthplace', 'clm_wiki_thomas-pynchon_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_raymond-carver_washington_birth', 'ent_raymond-carver', 'plc_washington', 'birthplace', 'clm_wiki_raymond-carver_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_raymond-carver_franklin_birth', 'ent_raymond-carver', 'plc_franklin', 'birthplace', 'clm_wiki_raymond-carver_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_raymond-carver_oregon_birth', 'ent_raymond-carver', 'plc_oregon', 'birthplace', 'clm_wiki_raymond-carver_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_truman-capote_new-orleans_birth', 'ent_truman-capote', 'plc_new-orleans', 'birthplace', 'clm_wiki_truman-capote_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mark-rothko_new-york-city_birth', 'ent_mark-rothko', 'plc_new-york-city', 'birthplace', 'clm_wiki_mark-rothko_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mark-rothko_alice_birth', 'ent_mark-rothko', 'plc_alice', 'birthplace', 'clm_wiki_mark-rothko_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mark-rothko_portland_birth', 'ent_mark-rothko', 'plc_portland', 'birthplace', 'clm_wiki_mark-rothko_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mark-rothko_reading_birth', 'ent_mark-rothko', 'plc_reading', 'birthplace', 'clm_wiki_mark-rothko_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_norman-rockwell_new-york-city_birth', 'ent_norman-rockwell', 'plc_new-york-city', 'birthplace', 'clm_wiki_norman-rockwell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_robert-rauschenberg_new-york-city_birth', 'ent_robert-rauschenberg', 'plc_new-york-city', 'birthplace', 'clm_wiki_robert-rauschenberg_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_roy-lichtenstein_new-york-city_birth', 'ent_roy-lichtenstein', 'plc_new-york-city', 'birthplace', 'clm_wiki_roy-lichtenstein_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_roy-lichtenstein_mitchell_birth', 'ent_roy-lichtenstein', 'plc_mitchell', 'birthplace', 'clm_wiki_roy-lichtenstein_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alexander-calder_philadelphia_birth', 'ent_alexander-calder', 'plc_philadelphia', 'birthplace', 'clm_wiki_alexander-calder_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alexander-calder_philadelphia_birth', 'ent_alexander-calder', 'plc_philadelphia', 'birthplace', 'clm_wiki_alexander-calder_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alexander-calder_philadelphia_birth', 'ent_alexander-calder', 'plc_philadelphia', 'birthplace', 'clm_wiki_alexander-calder_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alexander-calder_connecticut_birth', 'ent_alexander-calder', 'plc_connecticut', 'birthplace', 'clm_wiki_alexander-calder_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_louise-nevelson_smithsonian-institution_birth', 'ent_louise-nevelson', 'plc_smithsonian-institution', 'birthplace', 'clm_wiki_louise-nevelson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_louise-nevelson_new-york-city_birth', 'ent_louise-nevelson', 'plc_new-york-city', 'birthplace', 'clm_wiki_louise-nevelson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_robert-motherwell_washington_birth', 'ent_robert-motherwell', 'plc_washington', 'birthplace', 'clm_wiki_robert-motherwell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_robert-motherwell_washington_birth', 'ent_robert-motherwell', 'plc_washington', 'birthplace', 'clm_wiki_robert-motherwell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_robert-motherwell_honolulu_birth', 'ent_robert-motherwell', 'plc_honolulu', 'birthplace', 'clm_wiki_robert-motherwell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mary-cassatt_washington_birth', 'ent_mary-cassatt', 'plc_washington', 'birthplace', 'clm_wiki_mary-cassatt_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_winslow-homer_massachusetts_birth', 'ent_winslow-homer', 'plc_massachusetts', 'birthplace', 'clm_wiki_winslow-homer_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_louis-armstrong_new-orleans_birth', 'ent_louis-armstrong', 'plc_new-orleans', 'birthplace', 'clm_wiki_louis-armstrong_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_miles-davis_paris_birth', 'ent_miles-davis', 'plc_paris', 'birthplace', 'clm_wiki_miles-davis_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_thelonious-monk_north-carolina_birth', 'ent_thelonious-monk', 'plc_north-carolina', 'birthplace', 'clm_wiki_thelonious-monk_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sarah-vaughan_new-jersey_birth', 'ent_sarah-vaughan', 'plc_new-jersey', 'birthplace', 'clm_wiki_sarah-vaughan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nat-king-cole_montgomery_birth', 'ent_nat-king-cole', 'plc_montgomery', 'birthplace', 'clm_wiki_nat-king-cole_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ornette-coleman_fort-worth_birth', 'ent_ornette-coleman', 'plc_fort-worth', 'birthplace', 'clm_wiki_ornette-coleman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ornette-coleman_fort-worth_birth', 'ent_ornette-coleman', 'plc_fort-worth', 'birthplace', 'clm_wiki_ornette-coleman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ornette-coleman_fort-worth_birth', 'ent_ornette-coleman', 'plc_fort-worth', 'birthplace', 'clm_wiki_ornette-coleman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_max-roach_north-carolina_birth', 'ent_max-roach', 'plc_north-carolina', 'birthplace', 'clm_wiki_max-roach_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_max-roach_north-carolina_birth', 'ent_max-roach', 'plc_north-carolina', 'birthplace', 'clm_wiki_max-roach_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_thad-jones_michigan_birth', 'ent_thad-jones', 'plc_michigan', 'birthplace', 'clm_wiki_thad-jones_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stan-getz_philadelphia_birth', 'ent_stan-getz', 'plc_philadelphia', 'birthplace', 'clm_wiki_stan-getz_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stan-getz_columbia_birth', 'ent_stan-getz', 'plc_columbia', 'birthplace', 'clm_wiki_stan-getz_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stan-getz_philadelphia_birth', 'ent_stan-getz', 'plc_philadelphia', 'birthplace', 'clm_wiki_stan-getz_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_wayne-shorter_new-jersey_birth', 'ent_wayne-shorter', 'plc_new-jersey', 'birthplace', 'clm_wiki_wayne-shorter_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_pat-metheny_montgomery_birth', 'ent_pat-metheny', 'plc_montgomery', 'birthplace', 'clm_wiki_pat-metheny_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_philip-glass_lincoln_birth', 'ent_philip-glass', 'plc_lincoln', 'birthplace', 'clm_wiki_philip-glass_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_philip-glass_baltimore_birth', 'ent_philip-glass', 'plc_baltimore', 'birthplace', 'clm_wiki_philip-glass_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_steve-reich_new-york-city_birth', 'ent_steve-reich', 'plc_new-york-city', 'birthplace', 'clm_wiki_steve-reich_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_aaron-copland_new-york-city_birth', 'ent_aaron-copland', 'plc_new-york-city', 'birthplace', 'clm_wiki_aaron-copland_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_aaron-copland_brooklyn_birth', 'ent_aaron-copland', 'plc_brooklyn', 'birthplace', 'clm_wiki_aaron-copland_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_samuel-barber_west-chester_birth', 'ent_samuel-barber', 'plc_west-chester', 'birthplace', 'clm_wiki_samuel-barber_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_richard-rodgers_new-york-city_birth', 'ent_richard-rodgers', 'plc_new-york-city', 'birthplace', 'clm_wiki_richard-rodgers_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_richard-rodgers_oklahoma_birth', 'ent_richard-rodgers', 'plc_oklahoma', 'birthplace', 'clm_wiki_richard-rodgers_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stephen-sondheim_new-york-city_birth', 'ent_stephen-sondheim', 'plc_new-york-city', 'birthplace', 'clm_wiki_stephen-sondheim_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stephen-sondheim_new-york-city_birth', 'ent_stephen-sondheim', 'plc_new-york-city', 'birthplace', 'clm_wiki_stephen-sondheim_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_marlon-brando_nebraska_birth', 'ent_marlon-brando', 'plc_nebraska', 'birthplace', 'clm_wiki_marlon-brando_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_marlon-brando_nebraska_birth', 'ent_marlon-brando', 'plc_nebraska', 'birthplace', 'clm_wiki_marlon-brando_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_marilyn-monroe_los-angeles_birth', 'ent_marilyn-monroe', 'plc_los-angeles', 'birthplace', 'clm_wiki_marilyn-monroe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_marilyn-monroe_monroe_birth', 'ent_marilyn-monroe', 'plc_monroe', 'birthplace', 'clm_wiki_marilyn-monroe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_marilyn-monroe_douglas_birth', 'ent_marilyn-monroe', 'plc_douglas', 'birthplace', 'clm_wiki_marilyn-monroe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_marilyn-monroe_monroe_birth', 'ent_marilyn-monroe', 'plc_monroe', 'birthplace', 'clm_wiki_marilyn-monroe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_meryl-streep_yale-university_birth', 'ent_meryl-streep', 'plc_yale-university', 'birthplace', 'clm_wiki_meryl-streep_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_meryl-streep_new-jersey_birth', 'ent_meryl-streep', 'plc_new-jersey', 'birthplace', 'clm_wiki_meryl-streep_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_robert-de-niro_new-york-city_birth', 'ent_robert-de-niro', 'plc_new-york-city', 'birthplace', 'clm_wiki_robert-de-niro_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_robert-de-niro_virginia_birth', 'ent_robert-de-niro', 'plc_virginia', 'birthplace', 'clm_wiki_robert-de-niro_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_tom-hanks_lincoln_birth', 'ent_tom-hanks', 'plc_lincoln', 'birthplace', 'clm_wiki_tom-hanks_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_tom-hanks_lincoln_birth', 'ent_tom-hanks', 'plc_lincoln', 'birthplace', 'clm_wiki_tom-hanks_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_morgan-freeman_mississippi_birth', 'ent_morgan-freeman', 'plc_mississippi', 'birthplace', 'clm_wiki_morgan-freeman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_morgan-freeman_north-carolina_birth', 'ent_morgan-freeman', 'plc_north-carolina', 'birthplace', 'clm_wiki_morgan-freeman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_matt-damon_massachusetts_birth', 'ent_matt-damon', 'plc_massachusetts', 'birthplace', 'clm_wiki_matt-damon_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_martin-scorsese_new-york-city_birth', 'ent_martin-scorsese', 'plc_new-york-city', 'birthplace', 'clm_wiki_martin-scorsese_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_orson-welles_wisconsin_birth', 'ent_orson-welles', 'plc_wisconsin', 'birthplace', 'clm_wiki_orson-welles_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_orson-welles_beatrice_birth', 'ent_orson-welles', 'plc_beatrice', 'birthplace', 'clm_wiki_orson-welles_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nicholas-ray_wisconsin_birth', 'ent_nicholas-ray', 'plc_wisconsin', 'birthplace', 'clm_wiki_nicholas-ray_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nicholas-ray_san-francisco_birth', 'ent_nicholas-ray', 'plc_san-francisco', 'birthplace', 'clm_wiki_nicholas-ray_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_oliver-stone_new-york-city_birth', 'ent_oliver-stone', 'plc_new-york-city', 'birthplace', 'clm_wiki_oliver-stone_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_oliver-stone_wall-street_birth', 'ent_oliver-stone', 'plc_wall-street', 'birthplace', 'clm_wiki_oliver-stone_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_oliver-stone_new-york-city_birth', 'ent_oliver-stone', 'plc_new-york-city', 'birthplace', 'clm_wiki_oliver-stone_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_tim-cook_alabama_birth', 'ent_tim-cook', 'plc_alabama', 'birthplace', 'clm_wiki_tim-cook_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_tim-cook_duke-university_birth', 'ent_tim-cook', 'plc_duke-university', 'birthplace', 'clm_wiki_tim-cook_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_travis-kalanick_los-angeles_birth', 'ent_travis-kalanick', 'plc_los-angeles', 'birthplace', 'clm_wiki_travis-kalanick_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stewart-butterfield_columbia_birth', 'ent_stewart-butterfield', 'plc_columbia', 'birthplace', 'clm_wiki_stewart-butterfield_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_marc-benioff_california_birth', 'ent_marc-benioff', 'plc_california', 'birthplace', 'clm_wiki_marc-benioff_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_steve-chen_san-francisco_birth', 'ent_steve-chen', 'plc_san-francisco', 'birthplace', 'clm_wiki_steve-chen_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sam-walton_oklahoma_birth', 'ent_sam-walton', 'plc_oklahoma', 'birthplace', 'clm_wiki_sam-walton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sam-walton_oklahoma_birth', 'ent_sam-walton', 'plc_oklahoma', 'birthplace', 'clm_wiki_sam-walton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sam-walton_alice_birth', 'ent_sam-walton', 'plc_alice', 'birthplace', 'clm_wiki_sam-walton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_thomas-watson_rockingham_birth', 'ent_thomas-watson', 'plc_rockingham', 'birthplace', 'clm_wiki_thomas-watson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_thomas-watson_florida_birth', 'ent_thomas-watson', 'plc_florida', 'birthplace', 'clm_wiki_thomas-watson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_thomas-watson_graham_birth', 'ent_thomas-watson', 'plc_graham', 'birthplace', 'clm_wiki_thomas-watson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_peyton-manning_marshall_birth', 'ent_peyton-manning', 'plc_marshall', 'birthplace', 'clm_wiki_peyton-manning_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_walter-payton_mississippi_birth', 'ent_walter-payton', 'plc_mississippi', 'birthplace', 'clm_wiki_walter-payton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_walter-payton_illinois_birth', 'ent_walter-payton', 'plc_illinois', 'birthplace', 'clm_wiki_walter-payton_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ted-williams_california_birth', 'ent_ted-williams', 'plc_california', 'birthplace', 'clm_wiki_ted-williams_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ted-williams_california_birth', 'ent_ted-williams', 'plc_california', 'birthplace', 'clm_wiki_ted-williams_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mike-tyson_brownsville_birth', 'ent_mike-tyson', 'plc_brownsville', 'birthplace', 'clm_wiki_mike-tyson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sugar-ray-robinson_georgia_birth', 'ent_sugar-ray-robinson', 'plc_georgia', 'birthplace', 'clm_wiki_sugar-ray-robinson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sugar-ray-robinson_georgia_birth', 'ent_sugar-ray-robinson', 'plc_georgia', 'birthplace', 'clm_wiki_sugar-ray-robinson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_tiger-woods_north-carolina_birth', 'ent_tiger-woods', 'plc_north-carolina', 'birthplace', 'clm_wiki_tiger-woods_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_tiger-woods_los-angeles_birth', 'ent_tiger-woods', 'plc_los-angeles', 'birthplace', 'clm_wiki_tiger-woods_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_michael-phelps_baltimore_birth', 'ent_michael-phelps', 'plc_baltimore', 'birthplace', 'clm_wiki_michael-phelps_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_satchel-paige_alabama_birth', 'ent_satchel-paige', 'plc_alabama', 'birthplace', 'clm_wiki_satchel-paige_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_satchel-paige_cleveland_birth', 'ent_satchel-paige', 'plc_cleveland', 'birthplace', 'clm_wiki_satchel-paige_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_satchel-paige_alabama_birth', 'ent_satchel-paige', 'plc_alabama', 'birthplace', 'clm_wiki_satchel-paige_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_rocky-marciano_massachusetts_birth', 'ent_rocky-marciano', 'plc_massachusetts', 'birthplace', 'clm_wiki_rocky-marciano_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_rocky-marciano_des-moines_birth', 'ent_rocky-marciano', 'plc_des-moines', 'birthplace', 'clm_wiki_rocky-marciano_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_phil-mickelson_california_birth', 'ent_phil-mickelson', 'plc_california', 'birthplace', 'clm_wiki_phil-mickelson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_phil-mickelson_california_birth', 'ent_phil-mickelson', 'plc_california', 'birthplace', 'clm_wiki_phil-mickelson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_wayne-gretzky_new-york_birth', 'ent_wayne-gretzky', 'plc_new-york', 'birthplace', 'clm_wiki_wayne-gretzky_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_wayne-gretzky_reading_birth', 'ent_wayne-gretzky', 'plc_reading', 'birthplace', 'clm_wiki_wayne-gretzky_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_travis-kelce_ohio_birth', 'ent_travis-kelce', 'plc_ohio', 'birthplace', 'clm_wiki_travis-kelce_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mike-trout_los-angeles_birth', 'ent_mike-trout', 'plc_los-angeles', 'birthplace', 'clm_wiki_mike-trout_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mike-trout_new-jersey_birth', 'ent_mike-trout', 'plc_new-jersey', 'birthplace', 'clm_wiki_mike-trout_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stephen-colbert_washington_birth', 'ent_stephen-colbert', 'plc_washington', 'birthplace', 'clm_wiki_stephen-colbert_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stephen-colbert_northwestern-university_birth', 'ent_stephen-colbert', 'plc_northwestern-university', 'birthplace', 'clm_wiki_stephen-colbert_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_trevor-noah_new-york_birth', 'ent_trevor-noah', 'plc_new-york', 'birthplace', 'clm_wiki_trevor-noah_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_trevor-noah_hope_birth', 'ent_trevor-noah', 'plc_hope', 'birthplace', 'clm_wiki_trevor-noah_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_seth-meyers_evanston_birth', 'ent_seth-meyers', 'plc_evanston', 'birthplace', 'clm_wiki_seth-meyers_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_seth-meyers_evanston_birth', 'ent_seth-meyers', 'plc_evanston', 'birthplace', 'clm_wiki_seth-meyers_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_rush-limbaugh_hudson_birth', 'ent_rush-limbaugh', 'plc_hudson', 'birthplace', 'clm_wiki_rush-limbaugh_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_rush-limbaugh_missouri_birth', 'ent_rush-limbaugh', 'plc_missouri', 'birthplace', 'clm_wiki_rush-limbaugh_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sean-hannity_new-york-city_birth', 'ent_sean-hannity', 'plc_new-york-city', 'birthplace', 'clm_wiki_sean-hannity_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sean-hannity_florida_birth', 'ent_sean-hannity', 'plc_florida', 'birthplace', 'clm_wiki_sean-hannity_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_rachel-maddow_california_birth', 'ent_rachel-maddow', 'plc_california', 'birthplace', 'clm_wiki_rachel-maddow_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_walter-cronkite_saint-joseph_birth', 'ent_walter-cronkite', 'plc_saint-joseph', 'birthplace', 'clm_wiki_walter-cronkite_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_marc-andreessen_iowa_birth', 'ent_marc-andreessen', 'plc_iowa', 'birthplace', 'clm_wiki_marc-andreessen_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_marc-andreessen_illinois_birth', 'ent_marc-andreessen', 'plc_illinois', 'birthplace', 'clm_wiki_marc-andreessen_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sam-altman_illinois_birth', 'ent_sam-altman', 'plc_illinois', 'birthplace', 'clm_wiki_sam-altman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sam-altman_chicago_birth', 'ent_sam-altman', 'plc_chicago', 'birthplace', 'clm_wiki_sam-altman_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_pat-robertson_lexington_birth', 'ent_pat-robertson', 'plc_lexington', 'birthplace', 'clm_wiki_pat-robertson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_rick-warren_california_birth', 'ent_rick-warren', 'plc_california', 'birthplace', 'clm_wiki_rick-warren_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_warith-deen-mohammed_michigan_birth', 'ent_warith-deen-mohammed', 'plc_michigan', 'birthplace', 'clm_wiki_warith-deen-mohammed_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_warith-deen-mohammed_wall-street_birth', 'ent_warith-deen-mohammed', 'plc_wall-street', 'birthplace', 'clm_wiki_warith-deen-mohammed_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_omar-bradley_missouri_birth', 'ent_omar-bradley', 'plc_missouri', 'birthplace', 'clm_wiki_omar-bradley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_omar-bradley_west-point_birth', 'ent_omar-bradley', 'plc_west-point', 'birthplace', 'clm_wiki_omar-bradley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_omar-bradley_louisiana_birth', 'ent_omar-bradley', 'plc_louisiana', 'birthplace', 'clm_wiki_omar-bradley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_matthew-ridgway_virginia_birth', 'ent_matthew-ridgway', 'plc_virginia', 'birthplace', 'clm_wiki_matthew-ridgway_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_matthew-ridgway_virginia_birth', 'ent_matthew-ridgway', 'plc_virginia', 'birthplace', 'clm_wiki_matthew-ridgway_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_william-westmoreland_south-carolina_birth', 'ent_william-westmoreland', 'plc_south-carolina', 'birthplace', 'clm_wiki_william-westmoreland_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_william-westmoreland_south-carolina_birth', 'ent_william-westmoreland', 'plc_south-carolina', 'birthplace', 'clm_wiki_william-westmoreland_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_william-westmoreland_massachusetts_birth', 'ent_william-westmoreland', 'plc_massachusetts', 'birthplace', 'clm_wiki_william-westmoreland_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mark-milley_massachusetts_birth', 'ent_mark-milley', 'plc_massachusetts', 'birthplace', 'clm_wiki_mark-milley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mark-milley_massachusetts_birth', 'ent_mark-milley', 'plc_massachusetts', 'birthplace', 'clm_wiki_mark-milley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mike-pompeo_california_birth', 'ent_mike-pompeo', 'plc_california', 'birthplace', 'clm_wiki_mike-pompeo_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_marco-rubio_florida_birth', 'ent_marco-rubio', 'plc_florida', 'birthplace', 'clm_wiki_marco-rubio_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_warren-christopher_north-dakota_birth', 'ent_warren-christopher', 'plc_north-dakota', 'birthplace', 'clm_wiki_warren-christopher_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_warren-christopher_california_birth', 'ent_warren-christopher', 'plc_california', 'birthplace', 'clm_wiki_warren-christopher_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_madeleine-albright_washington_birth', 'ent_madeleine-albright', 'plc_washington', 'birthplace', 'clm_wiki_madeleine-albright_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_madeleine-albright_johns-hopkins-university_birth', 'ent_madeleine-albright', 'plc_johns-hopkins-university', 'birthplace', 'clm_wiki_madeleine-albright_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_madeleine-albright_washington_birth', 'ent_madeleine-albright', 'plc_washington', 'birthplace', 'clm_wiki_madeleine-albright_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_morrison-waite_ohio_birth', 'ent_morrison-waite', 'plc_ohio', 'birthplace', 'clm_wiki_morrison-waite_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_morrison-waite_ohio_birth', 'ent_morrison-waite', 'plc_ohio', 'birthplace', 'clm_wiki_morrison-waite_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_morrison-waite_connecticut_birth', 'ent_morrison-waite', 'plc_connecticut', 'birthplace', 'clm_wiki_morrison-waite_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_morrison-waite_connecticut_birth', 'ent_morrison-waite', 'plc_connecticut', 'birthplace', 'clm_wiki_morrison-waite_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_william-rehnquist_milwaukee_birth', 'ent_william-rehnquist', 'plc_milwaukee', 'birthplace', 'clm_wiki_william-rehnquist_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_samuel-alito_new-jersey_birth', 'ent_samuel-alito', 'plc_new-jersey', 'birthplace', 'clm_wiki_samuel-alito_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_samuel-alito_new-jersey_birth', 'ent_samuel-alito', 'plc_new-jersey', 'birthplace', 'clm_wiki_samuel-alito_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sonia-sotomayor_new-york-city_birth', 'ent_sonia-sotomayor', 'plc_new-york-city', 'birthplace', 'clm_wiki_sonia-sotomayor_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_neil-gorsuch_colorado_birth', 'ent_neil-gorsuch', 'plc_colorado', 'birthplace', 'clm_wiki_neil-gorsuch_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_amy-coney-barrett_south-bend_birth', 'ent_amy-coney-barrett', 'plc_south-bend', 'birthplace', 'clm_wiki_amy-coney-barrett_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ruth-bader-ginsburg_new-york-city_birth', 'ent_ruth-bader-ginsburg', 'plc_new-york-city', 'birthplace', 'clm_wiki_ruth-bader-ginsburg_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stephen-breyer_san-francisco_birth', 'ent_stephen-breyer', 'plc_san-francisco', 'birthplace', 'clm_wiki_stephen-breyer_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_stephen-breyer_nebraska_birth', 'ent_stephen-breyer', 'plc_nebraska', 'birthplace', 'clm_wiki_stephen-breyer_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sacagawea_idaho_birth', 'ent_sacagawea', 'plc_idaho', 'birthplace', 'clm_wiki_sacagawea_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_meriwether-lewis_albemarle_birth', 'ent_meriwether-lewis', 'plc_albemarle', 'birthplace', 'clm_wiki_meriwether-lewis_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_william-clark_virginia_birth', 'ent_william-clark', 'plc_virginia', 'birthplace', 'clm_wiki_william-clark_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_zebulon-pike_new-jersey_birth', 'ent_zebulon-pike', 'plc_new-jersey', 'birthplace', 'clm_wiki_zebulon-pike_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_robert-peary_pennsylvania_birth', 'ent_robert-peary', 'plc_pennsylvania', 'birthplace', 'clm_wiki_robert-peary_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_robert-peary_pennsylvania_birth', 'ent_robert-peary', 'plc_pennsylvania', 'birthplace', 'clm_wiki_robert-peary_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_matthew-henson_maryland_birth', 'ent_matthew-henson', 'plc_maryland', 'birthplace', 'clm_wiki_matthew-henson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_matthew-henson_georgetown_birth', 'ent_matthew-henson', 'plc_georgetown', 'birthplace', 'clm_wiki_matthew-henson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_roald-amundsen_london_birth', 'ent_roald-amundsen', 'plc_london', 'birthplace', 'clm_wiki_roald-amundsen_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_robert-falcon-scott_hampton_birth', 'ent_robert-falcon-scott', 'plc_hampton', 'birthplace', 'clm_wiki_robert-falcon-scott_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_robert-falcon-scott_bainbridge_birth', 'ent_robert-falcon-scott', 'plc_bainbridge', 'birthplace', 'clm_wiki_robert-falcon-scott_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_ranulph-fiennes_elizabeth_birth', 'ent_ranulph-fiennes', 'plc_elizabeth', 'birthplace', 'clm_wiki_ranulph-fiennes_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_yuri-gagarin_moscow_birth', 'ent_yuri-gagarin', 'plc_moscow', 'birthplace', 'clm_wiki_yuri-gagarin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_yuri-gagarin_moscow_birth', 'ent_yuri-gagarin', 'plc_moscow', 'birthplace', 'clm_wiki_yuri-gagarin_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_michael-collins_dublin_birth', 'ent_michael-collins', 'plc_dublin', 'birthplace', 'clm_wiki_michael-collins_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alan-bean_fort-worth_birth', 'ent_alan-bean', 'plc_fort-worth', 'birthplace', 'clm_wiki_alan-bean_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_pete-conrad_philadelphia_birth', 'ent_pete-conrad', 'plc_philadelphia', 'birthplace', 'clm_wiki_pete-conrad_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_pete-conrad_philadelphia_birth', 'ent_pete-conrad', 'plc_philadelphia', 'birthplace', 'clm_wiki_pete-conrad_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_sitting-bull_south-dakota_birth', 'ent_sitting-bull', 'plc_south-dakota', 'birthplace', 'clm_wiki_sitting-bull_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_red-cloud_north-platte_birth', 'ent_red-cloud', 'plc_north-platte', 'birthplace', 'clm_wiki_red-cloud_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_pocahontas_jamestown_birth', 'ent_pocahontas', 'plc_jamestown', 'birthplace', 'clm_wiki_pocahontas_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_pocahontas_jamestown_birth', 'ent_pocahontas', 'plc_jamestown', 'birthplace', 'clm_wiki_pocahontas_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_massasoit_massachusetts_birth', 'ent_massasoit', 'plc_massachusetts', 'birthplace', 'clm_wiki_massasoit_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_quanah-parker_texas_birth', 'ent_quanah-parker', 'plc_texas', 'birthplace', 'clm_wiki_quanah-parker_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_quanah-parker_wichita_birth', 'ent_quanah-parker', 'plc_wichita', 'birthplace', 'clm_wiki_quanah-parker_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_quanah-parker_cheyenne_birth', 'ent_quanah-parker', 'plc_cheyenne', 'birthplace', 'clm_wiki_quanah-parker_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_victorio_mexico_birth', 'ent_victorio', 'plc_mexico', 'birthplace', 'clm_wiki_victorio_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_wovoka_carson-city_birth', 'ent_wovoka', 'plc_carson-city', 'birthplace', 'clm_wiki_wovoka_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_standing-bear_chicago_birth', 'ent_standing-bear', 'plc_chicago', 'birthplace', 'clm_wiki_standing-bear_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_phillis-wheatley_boston_birth', 'ent_phillis-wheatley', 'plc_boston', 'birthplace', 'clm_wiki_phillis-wheatley_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_paul-cuffe_massachusetts_birth', 'ent_paul-cuffe', 'plc_massachusetts', 'birthplace', 'clm_wiki_paul-cuffe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_paul-cuffe_massachusetts_birth', 'ent_paul-cuffe', 'plc_massachusetts', 'birthplace', 'clm_wiki_paul-cuffe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_paul-cuffe_massachusetts_birth', 'ent_paul-cuffe', 'plc_massachusetts', 'birthplace', 'clm_wiki_paul-cuffe_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_prince-hall_massachusetts_birth', 'ent_prince-hall', 'plc_massachusetts', 'birthplace', 'clm_wiki_prince-hall_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_robert-purvis_south-carolina_birth', 'ent_robert-purvis', 'plc_south-carolina', 'birthplace', 'clm_wiki_robert-purvis_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_robert-purvis_philadelphia_birth', 'ent_robert-purvis', 'plc_philadelphia', 'birthplace', 'clm_wiki_robert-purvis_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_william-still_pennsylvania_birth', 'ent_william-still', 'plc_pennsylvania', 'birthplace', 'clm_wiki_william-still_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_william-still_new-jersey_birth', 'ent_william-still', 'plc_new-jersey', 'birthplace', 'clm_wiki_william-still_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_william-still_burlington_birth', 'ent_william-still', 'plc_burlington', 'birthplace', 'clm_wiki_william-still_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_william-still_new-jersey_birth', 'ent_william-still', 'plc_new-jersey', 'birthplace', 'clm_wiki_william-still_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_lucretia-mott_massachusetts_birth', 'ent_lucretia-mott', 'plc_massachusetts', 'birthplace', 'clm_wiki_lucretia-mott_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mary-church-terrell_tennessee_birth', 'ent_mary-church-terrell', 'plc_tennessee', 'birthplace', 'clm_wiki_mary-church-terrell_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_wyatt-tee-walker_massachusetts_birth', 'ent_wyatt-tee-walker', 'plc_massachusetts', 'birthplace', 'clm_wiki_wyatt-tee-walker_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_tommie-smith_clarksville_birth', 'ent_tommie-smith', 'plc_clarksville', 'birthplace', 'clm_wiki_tommie-smith_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_tom-seaver_california_birth', 'ent_tom-seaver', 'plc_california', 'birthplace', 'clm_wiki_tom-seaver_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nolan-ryan_texas_birth', 'ent_nolan-ryan', 'plc_texas', 'birthplace', 'clm_wiki_nolan-ryan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nolan-ryan_victoria_birth', 'ent_nolan-ryan', 'plc_victoria', 'birthplace', 'clm_wiki_nolan-ryan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nolan-ryan_houston_birth', 'ent_nolan-ryan', 'plc_houston', 'birthplace', 'clm_wiki_nolan-ryan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_reggie-jackson_jackson_birth', 'ent_reggie-jackson', 'plc_jackson', 'birthplace', 'clm_wiki_reggie-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_reggie-jackson_pennsylvania_birth', 'ent_reggie-jackson', 'plc_pennsylvania', 'birthplace', 'clm_wiki_reggie-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mike-schmidt_philadelphia_birth', 'ent_mike-schmidt', 'plc_philadelphia', 'birthplace', 'clm_wiki_mike-schmidt_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_pete-rose_cincinnati_birth', 'ent_pete-rose', 'plc_cincinnati', 'birthplace', 'clm_wiki_pete-rose_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_pete-rose_cincinnati_birth', 'ent_pete-rose', 'plc_cincinnati', 'birthplace', 'clm_wiki_pete-rose_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_tony-xu_university-of-california-berkeley_birth', 'ent_tony-xu', 'plc_university-of-california-berkeley', 'birthplace', 'clm_wiki_tony-xu_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_tony-xu_illinois_birth', 'ent_tony-xu', 'plc_illinois', 'birthplace', 'clm_wiki_tony-xu_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_michael-jackson_jackson_birth', 'ent_michael-jackson', 'plc_jackson', 'birthplace', 'clm_wiki_michael-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_michael-jackson_jackson_birth', 'ent_michael-jackson', 'plc_jackson', 'birthplace', 'clm_wiki_michael-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_aaliyah_brooklyn_birth', 'ent_aaliyah', 'plc_brooklyn', 'birthplace', 'clm_wiki_aaliyah_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_mac-miller_pennsylvania_birth', 'ent_mac-miller', 'plc_pennsylvania', 'birthplace', 'clm_wiki_mac-miller_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_pop-smoke_new-york-city_birth', 'ent_pop-smoke', 'plc_new-york-city', 'birthplace', 'clm_wiki_pop-smoke_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_pop-smoke_new-york-city_birth', 'ent_pop-smoke', 'plc_new-york-city', 'birthplace', 'clm_wiki_pop-smoke_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_nipsey-hussle_london_birth', 'ent_nipsey-hussle', 'plc_london', 'birthplace', 'clm_wiki_nipsey-hussle_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_robert-plant_wilson_birth', 'ent_robert-plant', 'plc_wilson', 'birthplace', 'clm_wiki_robert-plant_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_pete-townshend_london_birth', 'ent_pete-townshend', 'plc_london', 'birthplace', 'clm_wiki_pete-townshend_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_roger-daltrey_new-york-city_birth', 'ent_roger-daltrey', 'plc_new-york-city', 'birthplace', 'clm_wiki_roger-daltrey_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_roger-daltrey_golden_birth', 'ent_roger-daltrey', 'plc_golden', 'birthplace', 'clm_wiki_roger-daltrey_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_marvin-gaye_rock-and-roll-hall-of-fame_birth', 'ent_marvin-gaye', 'plc_rock-and-roll-hall-of-fame', 'birthplace', 'clm_wiki_marvin-gaye_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_smokey-robinson_michigan_birth', 'ent_smokey-robinson', 'plc_michigan', 'birthplace', 'clm_wiki_smokey-robinson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_the-temptations_birmingham_birth', 'ent_the-temptations', 'plc_birmingham', 'birthplace', 'clm_wiki_the-temptations_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_the-temptations_california_birth', 'ent_the-temptations', 'plc_california', 'birthplace', 'clm_wiki_the-temptations_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_the-miracles_griffin_birth', 'ent_the-miracles', 'plc_griffin', 'birthplace', 'clm_wiki_the-miracles_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_the-miracles_griffin_birth', 'ent_the-miracles', 'plc_griffin', 'birthplace', 'clm_wiki_the-miracles_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_rihanna_los-angeles_birth', 'ent_rihanna', 'plc_los-angeles', 'birthplace', 'clm_wiki_rihanna_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_megan-thee-stallion_texas_birth', 'ent_megan-thee-stallion', 'plc_texas', 'birthplace', 'clm_wiki_megan-thee-stallion_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_megan-thee-stallion_san-antonio_birth', 'ent_megan-thee-stallion', 'plc_san-antonio', 'birthplace', 'clm_wiki_megan-thee-stallion_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_travis-scott_houston_birth', 'ent_travis-scott', 'plc_houston', 'birthplace', 'clm_wiki_travis-scott_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_miley-cyrus_columbia_birth', 'ent_miley-cyrus', 'plc_columbia', 'birthplace', 'clm_wiki_miley-cyrus_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_miley-cyrus_tennessee_birth', 'ent_miley-cyrus', 'plc_tennessee', 'birthplace', 'clm_wiki_miley-cyrus_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_madonna_new-york-city_birth', 'ent_madonna', 'plc_new-york-city', 'birthplace', 'clm_wiki_madonna_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_solange-knowles_new-york-city_birth', 'ent_solange-knowles', 'plc_new-york-city', 'birthplace', 'clm_wiki_solange-knowles_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_luke-bryan_nashville_birth', 'ent_luke-bryan', 'plc_nashville', 'birthplace', 'clm_wiki_luke-bryan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_maren-morris_arlington_birth', 'ent_maren-morris', 'plc_arlington', 'birthplace', 'clm_wiki_maren-morris_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_tyler-childers_lawrence_birth', 'ent_tyler-childers', 'plc_lawrence', 'birthplace', 'clm_wiki_tyler-childers_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_zach-bryan_oklahoma_birth', 'ent_zach-bryan', 'plc_oklahoma', 'birthplace', 'clm_wiki_zach-bryan_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_willie-nelson_texas_birth', 'ent_willie-nelson', 'plc_texas', 'birthplace', 'clm_wiki_willie-nelson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_willie-nelson_texas_birth', 'ent_willie-nelson', 'plc_texas', 'birthplace', 'clm_wiki_willie-nelson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_willie-nelson_fort-worth_birth', 'ent_willie-nelson', 'plc_fort-worth', 'birthplace', 'clm_wiki_willie-nelson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_waylon-jennings_jennings_birth', 'ent_waylon-jennings', 'plc_jennings', 'birthplace', 'clm_wiki_waylon-jennings_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_merle-haggard_california_birth', 'ent_merle-haggard', 'plc_california', 'birthplace', 'clm_wiki_merle-haggard_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_tammy-wynette_mississippi_birth', 'ent_tammy-wynette', 'plc_mississippi', 'birthplace', 'clm_wiki_tammy-wynette_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_tammy-wynette_mississippi_birth', 'ent_tammy-wynette', 'plc_mississippi', 'birthplace', 'clm_wiki_tammy-wynette_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alan-jackson_jackson_birth', 'ent_alan-jackson', 'plc_jackson', 'birthplace', 'clm_wiki_alan-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alan-jackson_nashville_birth', 'ent_alan-jackson', 'plc_nashville', 'birthplace', 'clm_wiki_alan-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_alan-jackson_jackson_birth', 'ent_alan-jackson', 'plc_jackson', 'birthplace', 'clm_wiki_alan-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_toby-keith_oklahoma_birth', 'ent_toby-keith', 'plc_oklahoma', 'birthplace', 'clm_wiki_toby-keith_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_wynonna-judd_alexandria_birth', 'ent_wynonna-judd', 'plc_alexandria', 'birthplace', 'clm_wiki_wynonna-judd_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_naomi-judd_ashland_birth', 'ent_naomi-judd', 'plc_ashland', 'birthplace', 'clm_wiki_naomi-judd_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_andrew-jackson_jackson_birth', 'ent_andrew-jackson', 'plc_jackson', 'birthplace', 'clm_wiki_andrew-jackson_birth', unixepoch());
INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('ppr_andrew-jackson_elizabeth_birth', 'ent_andrew-jackson', 'plc_elizabeth', 'birthplace', 'clm_wiki_andrew-jackson_birth', unixepoch());
