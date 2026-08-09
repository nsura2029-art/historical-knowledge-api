-- ========================================
-- Migration: Place bulk ingest
-- For 50 US places (cities + states)
-- Generated: 2026-08-09 16:00:53 UTC
-- Source: Wikipedia REST API + GeoNames
-- ========================================

-- 1. Alabama (state, AL, pop=Alabama)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_alabama', 'place', 'alabama', 'Alabama', 'published', 'en', 25,
   'Alabama is a state in the Southeastern and Deep Southern regions of the United States. It borders Tennessee to the north, Georgia to the east, Florida and the Gulf of Mexico to the south, and Mississippi to the west. Alabama is the 30th largest by area, and the 24th-most populous of the 50 U.S. states.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_alabama', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_alabama_in_country', 'plc_alabama', 'ent_usa', 'located_in', 0.95, 'clm_wiki_alabama_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_alabama_overview', 'plc_alabama', 'overview', 'Overview',
   'Alabama is a state in the Southeastern and Deep Southern regions of the United States. It borders Tennessee to the north, Georgia to the east, Florida and the Gulf of Mexico to the south, and Mississippi to the west. Alabama is the 30th largest by area, and the 24th-most populous of the 50 U.S. states.', '["clm_wiki_alabama_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_alabama_history', 'plc_alabama', 'history', 'History',
   'Etymology [ edit ] The name of the Alabama River and state is derived from the Alabama people , a Muskogean-speaking tribe whose members lived just below the confluence of the Coosa and Tallapoosa rivers on the upper reaches of the river. &#91; 1 &#93; In the Alabama language , the word for a person of Alabama lineage is Albaamo (or variously Albaama or Albàamo in different dialects; the plural form is Albaamaha ). &#91; 2 &#93; The word''s spelling varies significantly among historical sources. &#91; 3 &#93; The first usage appears in three accounts of the Hernando de Soto expedition of 1540: Garcilaso de la Vega used Alibamo , while the Knight of Elvas and Rodrigo Ranjel wrote Alibamu and Limamu , respectively, in transliterations of the term. &#91; 3 &#93; As early as 1702, the French called the tribe the Alibamon , with French maps identifying the river as Rivière des Alibamons . &#91; 1 &#93; Other spellings of the name have included Alibamu , Alabamo , Albama , Alebamon , Alibama , Alibamou , Alabamu , and Allibamou . &#91; 3 &#93; &#91; 4 &#93; &#91; 5 &#93; The use of state names derived from Native American languages is common in the U.S. An estimated 26 states have names of Native American origin. &#91; 6 &#93; Sources disagree on the word''s meaning. Some scholars suggest the word comes from the Choctaw alba (meaning ''plants'' or ''weeds'') and amo (meaning ''to cut'', ''to trim'', or ''to gather''). &#91; 3 &#93; &#91; 7 &#93; &#91; 8 &#93; The meaning may have been ''clearers of the thicket'' &#91; 7 &#93; or ''herb gatherers'', &#91; 8 &#93; &#91; 9 &#93; referring to clearing land for cultivation &#91; 4 &#93; or collecting medicinal plants. &#91; 9 &#93; The state has numerous place names of Native American origin . &#91; 10 &#93; &#91; 11 &#93; An 1842 article in the Jacksonville Republican proposed it meant ''Here We Rest''. &#91; 3 &#93; This notion was popularized in the 1850s through the writings of Alexander Beaufort Meek . &#91; 3 &#93; Experts in the Muskogean languages have not found any evidence to support such a translation. &#91; 1 &#93; &#91; 3 &#93; ^ a b c .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id', '["clm_wiki_alabama_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_alabama_geography', 'plc_alabama', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Alabama Pre-European settlement [ edit ] The Moundville Archaeological Site in Hale County. It was occupied by Native Americans of the Mississippian culture from 1000 to 1450 CE. Indigenous peoples of varying cultures lived in the area for thousands of years before the advent of European colonization. Trade with the northeastern tribes by the Ohio River began during the Burial Mound Period (1000 &#160; BC&#160;&#8211;&#32;700 &#160; AD) and continued until European contact . &#91; 1 &#93; The agrarian Mississippian culture covered most of the state from 1000 to 1600 AD, with one of its major polities centered around what is now the Moundville Archaeological Site in Moundville, Alabama . &#91; 2 &#93; &#91; 3 &#93; This is the second-largest complex of the classic Middle Mississippian era, after Cahokia in present-day Illinois , which was the earliest center of the culture. Analysis of artifacts from archaeological excavations at Moundville were the basis of scholars'' formulating the characteristics of the Southeastern Ceremonial Complex (SECC). &#91; 4 &#93; Contrary to popular belief, the SECC appears to have no direct links to Mesoamerican culture but developed independently. The Ceremonial Complex represents a major component of the religion of the Mississippian peoples; it is one of the primary means by which their religion is understood. &#91; 5 &#93; Among the historical tribes of Native American people living in present-day Alabama at the time of European contact were the Cherokee , an Iroquoian language people; and the Muskogean-speaking Alabama ( Alibamu ), Chickasaw , Choc', '["clm_wiki_alabama_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_alabama_demographics', 'plc_alabama', 'demographics', 'Demographics',
   'Pre-European settlement [ edit ] The Moundville Archaeological Site in Hale County. It was occupied by Native Americans of the Mississippian culture from 1000 to 1450 CE. Indigenous peoples of varying cultures lived in the area for thousands of years before the advent of European colonization. Trade with the northeastern tribes by the Ohio River began during the Burial Mound Period (1000 &#160; BC&#160;&#8211;&#32;700 &#160; AD) and continued until European contact . &#91; 1 &#93; The agrarian Mississippian culture covered most of the state from 1000 to 1600 AD, with one of its major polities centered around what is now the Moundville Archaeological Site in Moundville, Alabama . &#91; 2 &#93; &#91; 3 &#93; This is the second-largest complex of the classic Middle Mississippian era, after Cahokia in present-day Illinois , which was the earliest center of the culture. Analysis of artifacts from archaeological excavations at Moundville were the basis of scholars'' formulating the characteristics of the Southeastern Ceremonial Complex (SECC). &#91; 4 &#93; Contrary to popular belief, the SECC appears to have no direct links to Mesoamerican culture but developed independently. The Ceremonial Complex represents a major component of the religion of the Mississippian peoples; it is one of the primary means by which their religion is understood. &#91; 5 &#93; Among the historical tribes of Native American people living in present-day Alabama at the time of European contact were the Cherokee , an Iroquoian language people; and the Muskogean-speaking Alabama ( Alibamu ), Chickasaw , Choctaw , Creek, and Koasati . &#91; 6 &#93; While part of the same large language family, the Muskogee tribes developed distinct cultures and languages. ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{ba', '["clm_wiki_alabama_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_alabama_primary', 'plc_alabama', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Alabama.svg/960px-Flag_of_Alabama.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Alabama.svg/330px-Flag_of_Alabama.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Alabama',
   'Alabama', 1, 10, unixepoch());

-- 2. Alaska (state, AK, pop=Alaska)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_alaska', 'place', 'alaska', 'Alaska', 'published', 'en', 25,
   'Alaska is a U.S. state located in the northwestern regions of North America. Part of the Western United States region, it is one of the two non-contiguous U.S. states, alongside Hawaii. Alaska is considered to be the northernmost, westernmost, and, longitudinally, the easternmost state in the United States. It is a semi-exclave of the U.S., bordering the Canadian territory of Yukon and the province of British Columbia to the east. It shares a western maritime border in the Bering Strait with Russia''s Chukotka Autonomous Okrug, and is closer to another continent (Asia) than any other U.S. state. The Chukchi and Beaufort Seas of the Arctic Ocean lie to the north, and the Pacific Ocean to the south.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_alaska', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_alaska_in_country', 'plc_alaska', 'ent_usa', 'located_in', 0.95, 'clm_wiki_alaska_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_alaska_overview', 'plc_alaska', 'overview', 'Overview',
   'Alaska is a U.S. state located in the northwestern regions of North America. Part of the Western United States region, it is one of the two non-contiguous U.S. states, alongside Hawaii. Alaska is considered to be the northernmost, westernmost, and, longitudinally, the easternmost state in the United States. It is a semi-exclave of the U.S., bordering the Canadian territory of Yukon and the province of British Columbia to the east. It shares a western maritime border in the Bering Strait with Russia''s Chukotka Autonomous Okrug, and is closer to another continent (Asia) than any other U.S. state. The Chukchi and Beaufort Seas of the Arctic Ocean lie to the north, and the Pacific Ocean to the south.', '["clm_wiki_alaska_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_alaska_history', 'plc_alaska', 'history', 'History',
   'Etymology [ edit ] The name Alaska ( Russian : Аля́ска , romanized :&#160; Aljáska ) was introduced during the Russian colonial period when it was used to refer to the Alaska Peninsula . It was derived from an Aleut-language idiom, alaxsxaq , meaning ''the mainland'' or, more literally, ''the object towards which the action of the sea is directed''. &#91; 1 &#93; &#91; 2 &#93; &#91; 3 &#93; @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-region-symbols-left{float:left;clear:left;margin:0.5em 1em 0.5em 0}.mw-parser-output .ib-region-symbols-none{float:none;clear:none;margin:0.5em 1em 0.5em 0}.mw-parser-output .ib-region-symbols-center{float:none;clear:none;margin:0.5em auto}.mw-parser-output .ib-region-symbols .infobox-title{font-size:120%}.mw-parser-output .ib-region-symbols .infobox-subheader{font-weight:bold;background-color:#cddeff}.mw-parser-output .ib-region-symbols-island{font-weight:bold;background-color:#cef2e0} State symbols&#32;of&#32;Alaska List of state symbols Flag&#32;of&#32;Alaska Seal&#32;of&#32;Alaska Motto North to the future Song Alaska''s Flag Living insignia Bird willow ptarmigan Dog breed Alaskan Malamute Fish King salmon Insect Four-spot skimmer dragonfly Mammal Land: M', '["clm_wiki_alaska_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_alaska_geography', 'plc_alaska', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main articles: Prehistory of Alaska and History of Alaska Pre-colonization [ edit ] Main article: Alaska Natives Numerous Indigenous peoples occupied Alaska for thousands of years before the arrival of European peoples to the area. Linguistic and DNA studies done here have provided evidence for the settlement of North America by way of the Bering land bridge . &#91; 1 &#93; &#91; 2 &#93; At the Upward Sun River site in the Tanana Valley in Alaska, remains of a six-week-old infant were found. The baby''s DNA showed that she belonged to a population that was genetically separate from other Native groups present elsewhere in the New World at the end of the Pleistocene . Ben Potter, the University of Alaska Fairbanks archaeologist who unearthed the remains at the Upward Sun River site in 2013, named this new group Ancient Beringian . &#91; 3 &#93; The Tlingit people developed a society with a matrilineal kinship system of property inheritance and descent in what is present Southeast Alaska, along with parts of British Columbia and the Yukon . Also in the Southeast were the Haida , now well known for their unique arts. The Tsimshian people came to Alaska from British Columbia in 1887, when President Grover Cleveland , and later the U.S. Congress, granted them permission to settle on Annette Island and found the town of Metlakatla, Alaska . All three of these peoples, as well as other Indigenous peoples of the Pacific Northwest Coast , experienced smallpox outbreaks from the late 18th through the mid-19th century, with the most devastating epidemics occurring in the 1830s and 1860s, resulting in high fatalities an', '["clm_wiki_alaska_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_alaska_demographics', 'plc_alaska', 'demographics', 'Demographics',
   'Pre-colonization [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Alaska Natives Numerous Indigenous peoples occupied Alaska for thousands of years before the arrival of European peoples to the area. Linguistic and DNA studies done here have provided evidence for the settlement of North America by way of the Bering land bridge . &#91; 1 &#93; &#91; 2 &#93; At the Upward Sun River site in the Tanana Valley in Alaska, remains of a six-week-old infant were found. The baby''s DNA showed that she belonged to a population that was genetically separate from other Native groups present elsewhere in the New World at the end of the Pleistocene . Ben Potter, the University of Alaska Fairbanks archaeologist who unearthed the remains at the Upward Sun River site in 2013, named this new group Ancient Beringian . &#91; 3 &#93; The Tlingit people developed a society with a matrilineal kinship system of property inheritance and descent in what is present Southeast Alaska, along with parts of British Columbia and the Yukon . Also in the Southeast were the Haida , now well known for their unique arts. The Tsimshian people came to Alaska from British Columbia in 1887, when President Grover Cleveland , and later the U.S. Congress, granted them permission to settle on Annette Island and found the town of Metlakatla, Alaska . All three of these peoples, as well as other Indigenous peoples of the Pacific Northwest Coast , experienced smallpox outbreaks from the late 18th through the mid-19th century, with the most devastating epidemics occurring in the 1830s and 1860s, resulting in high fatalities and social disruption. &#91; 4 &#93; ^ .mw-parser-output cite.citation{font-s', '["clm_wiki_alaska_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_alaska_primary', 'plc_alaska', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Flag_of_Alaska.svg/1920px-Flag_of_Alaska.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Flag_of_Alaska.svg/330px-Flag_of_Alaska.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Alaska',
   'Alaska', 1, 10, unixepoch());

-- 3. Arizona (state, AZ, pop=Arizona)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_arizona', 'place', 'arizona', 'Arizona', 'published', 'en', 25,
   'Arizona is a landlocked state in the Southwestern United States, sharing the Four Corners region with Colorado, New Mexico, and Utah. It also borders Nevada to the northwest and California to the west, and shares an international border with the Mexican states of Sonora and Baja California to the south and southwest. Its capital and largest city is Phoenix, which is the most populous state capital and fifth-most populous city in the United States. Arizona is divided into 15 counties.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_arizona', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_arizona_in_country', 'plc_arizona', 'ent_usa', 'located_in', 0.95, 'clm_wiki_arizona_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_arizona_overview', 'plc_arizona', 'overview', 'Overview',
   'Arizona is a landlocked state in the Southwestern United States, sharing the Four Corners region with Colorado, New Mexico, and Utah. It also borders Nevada to the northwest and California to the west, and shares an international border with the Mexican states of Sonora and Baja California to the south and southwest. Its capital and largest city is Phoenix, which is the most populous state capital and fifth-most populous city in the United States. Arizona is divided into 15 counties.', '["clm_wiki_arizona_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_arizona_history', 'plc_arizona', 'history', 'History',
   'Etymology [ edit ] The state''s name appears to originate from an earlier Spanish name, Arizonac , derived from the O''odham name alĭ ṣonak , meaning '' small spring '' . Initially this term was applied by Spanish colonists only to an area near the silver mining camp of Planchas de Plata, Sonora . &#91; 1 &#93; &#91; 2 &#93; &#91; 3 &#93; &#91; 4 &#93; To the European settlers, the O''odham pronunciation sounded like Arissona . &#91; 5 &#93; The area is still known as alĭ ṣonak in the O''odham language. &#91; 6 &#93; Another possible origin is the Basque phrase haritz ona '' the good oak '' , as there were numerous Basque shepherds in the area. &#91; 7 &#93; &#91; 8 &#93; &#91; 9 &#93; A native-born Mexican of Basque ancestry established the ranchería ( small rural settlement ) of Arizona between 1734 and 1736 in the current Mexican state of Sonora . It became notable after a significant discovery of silver there around 1737. &#91; 10 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-ws-icon a{background-size:contain;padding:0 1em 0 0}.mw-parser-output .cs1-code{color:inherit;background:inherit;border:none;padding:inherit}.mw-parser-output .cs1-hidden-error{display:none;color:var(--color-error,#bf3c2c)}.mw-parser-out', '["clm_wiki_arizona_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_arizona_geography', 'plc_arizona', 'geography', 'Geography',
   '20th century to present [ edit ] During the Mexican Revolution from 1910 to 1920, several battles were fought in the Mexican towns just across the border from Arizona settlements. Throughout the revolution, many Arizonans enlisted in one of the several armies fighting in Mexico. Only two significant engagements took place on U.S. soil between U.S. and Mexican forces: Pancho Villa ''s 1916 Columbus Raid in New Mexico and the Battle of Ambos Nogales in 1918 in Arizona. After Mexican federal troops fired on U.S. soldiers, the American garrison launched an assault into Nogales, Mexico . The Mexicans eventually surrendered after both sides sustained heavy casualties. A few months earlier, just west of Nogales, an Indian War battle had occurred, considered the last engagement in the American Indian Wars , which lasted from 1775 to 1918. U.S. soldiers stationed on the border confronted Yaqui Indians who were using Arizona as a base to raid the nearby Mexican settlements, as part of their wars against Mexico. &#91; citation needed &#93; Arizona became a U.S. state on February 14, 1912, coinciding with Valentine''s Day . Arizona was the 48th state admitted to the U.S. and the last of the contiguous states to be admitted. &#91; 1 &#93; Eleanor Roosevelt at the Gila River relocation center, April 23, 1943 Cotton farming and copper mining, two of Arizona''s most important statewide industries, suffered heavily during the Great Depression . &#91; 2 &#93; During the 1920s and 1930s, tourism began to expand into a major economic pillar, developing into the prominent industry that characterizes the state today. Dude ranches, such as the K L Bar and Remuda in Wickenburg, along with the Flying V and Tanque Verde in Tucson, gave tourists the chance to take part in the flavor and activities of the "Old West". Several upscale hotels and resorts opened during this period, some of which are still top tourist draws. They include the Arizona Biltmore Hotel in central Phoenix (opened 1929) and ', '["clm_wiki_arizona_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_arizona_demographics', 'plc_arizona', 'demographics', 'Demographics',
   '20th century to present [ edit ] During the Mexican Revolution from 1910 to 1920, several battles were fought in the Mexican towns just across the border from Arizona settlements. Throughout the revolution, many Arizonans enlisted in one of the several armies fighting in Mexico. Only two significant engagements took place on U.S. soil between U.S. and Mexican forces: Pancho Villa ''s 1916 Columbus Raid in New Mexico and the Battle of Ambos Nogales in 1918 in Arizona. After Mexican federal troops fired on U.S. soldiers, the American garrison launched an assault into Nogales, Mexico . The Mexicans eventually surrendered after both sides sustained heavy casualties. A few months earlier, just west of Nogales, an Indian War battle had occurred, considered the last engagement in the American Indian Wars , which lasted from 1775 to 1918. U.S. soldiers stationed on the border confronted Yaqui Indians who were using Arizona as a base to raid the nearby Mexican settlements, as part of their wars against Mexico. &#91; citation needed &#93; Arizona became a U.S. state on February 14, 1912, coinciding with Valentine''s Day . Arizona was the 48th state admitted to the U.S. and the last of the contiguous states to be admitted. &#91; 1 &#93; Eleanor Roosevelt at the Gila River relocation center, April 23, 1943 Cotton farming and copper mining, two of Arizona''s most important statewide industries, suffered heavily during the Great Depression . &#91; 2 &#93; During the 1920s and 1930s, tourism began to expand into a major economic pillar, developing into the prominent industry that characterizes the state today. Dude ranches, such as the K L Bar and Remuda in Wickenburg, along with the Flying V and Tanque Verde in Tucson, gave tourists the chance to take part in the flavor and activities of the "Old West". Several upscale hotels and resorts opened during this period, some of which are still top tourist draws. They include the Arizona Biltmore Hotel in central Phoenix (opened 1929) and ', '["clm_wiki_arizona_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_arizona_primary', 'plc_arizona', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Flag_of_Arizona.svg/960px-Flag_of_Arizona.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Flag_of_Arizona.svg/330px-Flag_of_Arizona.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Arizona',
   'Arizona', 1, 10, unixepoch());

-- 4. Arkansas (state, AR, pop=Arkansas)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_arkansas', 'place', 'arkansas', 'Arkansas', 'published', 'en', 25,
   'Arkansas is a landlocked state in the West South Central region of the Southern United States. It borders Missouri to the north, Tennessee and Mississippi to the east, Louisiana to the south, Texas to the southwest, and Oklahoma to the west. Its name derives from the Osage language, and refers to their relatives, the Quapaw people. The state''s diverse geography ranges from the mountainous regions of the Ozark and Ouachita Mountains, which make up the U.S. Interior Highlands, to the densely forested land in the south known as the Arkansas Timberlands, to the eastern lowlands along the Mississippi River and the Arkansas Delta.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_arkansas', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_arkansas_in_country', 'plc_arkansas', 'ent_usa', 'located_in', 0.95, 'clm_wiki_arkansas_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_arkansas_overview', 'plc_arkansas', 'overview', 'Overview',
   'Arkansas is a landlocked state in the West South Central region of the Southern United States. It borders Missouri to the north, Tennessee and Mississippi to the east, Louisiana to the south, Texas to the southwest, and Oklahoma to the west. Its name derives from the Osage language, and refers to their relatives, the Quapaw people. The state''s diverse geography ranges from the mountainous regions of the Ozark and Ouachita Mountains, which make up the U.S. Interior Highlands, to the densely forested land in the south known as the Arkansas Timberlands, to the eastern lowlands along the Mississippi River and the Arkansas Delta.', '["clm_wiki_arkansas_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_arkansas_history', 'plc_arkansas', 'history', 'History',
   'Etymology [ edit ] The name Arkansas initially applied to the Arkansas River . It derives from a French term, Arcansas , their plural term for their transliteration of akansa , an Algonquian term for the Quapaw people, &#91; 1 &#93; which is believed to translate to "south wind people". &#91; 2 &#93; &#91; 3 &#93; These were a Dhegiha Siouan -speaking people who settled in Arkansas around the 13th century. Kansa is likely also the root term for Kansas , which was named after the related Kaw people . &#91; 1 &#93; The name has been pronounced and spelled in various ways. &#91; a &#93; In 1881, the state legislature defined the official pronunciation of Arkansas as having the final "s" be silent (as it would be in French). A dispute had arisen between the state''s two senators over the pronunciation issue. One favored / ˈ ɑːr k ən s ɔː / ( AR -kən-saw ), the other / ɑːr ˈ k æ n z ə s / ( ar- KAN -zəs ). &#91; a &#93; However, even the legislative resolution itself is at odds with the common General American pronunciation of the state''s name, / ˈ ɑːr k ən s ɔː / , since the second "a" is reduced and unstressed as a schwa , while the first and last "a" are either pronounced as [ɑ] ( open back unrounded vowel ) and [ɔ] ( open-mid back rounded vowel ) or both the same as [ɑ], with the cot-caught merger; on the other hand, in the Italian language , the "Italian sound" of the vowel "a" is transcribed as an open central unrounded vowel ([ä]). In 2007, the state legislature passed a non-binding resolution declaring that the possessive form of the state''s name is Arkansas''s , which the state government has increasingly followed. &#91; 5 &#93; &#91; 6 &#93; ^ a b .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//uplo', '["clm_wiki_arkansas_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_arkansas_geography', 'plc_arkansas', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .ambox{border:1px solid #a2a9b1;border-left:10px solid #36c;background-color:#fbfbfb;box-sizing:border-box}.mw-parser-output .ambox+.mw-empty-elt+.ambox,.mw-parser-output .ambox+.mw-empty-elt+.mw-empty-elt+.ambox,.mw-parser-output .ambox+.mw-empty-elt+.mw-empty-elt+.mw-empty-elt+.ambox{margin-top:-1px}html body.mediawiki .mw-parser-output .ambox.mbox-small-left{margin:4px 1em 4px 0;overflow:hidden;width:238px;border-collapse:collapse;font-size:88%;line-height:1.25em}.mw-parser-output .ambox-speedy{border-left:10px solid #b32424;background-color:#fee7e6}.mw-parser-output .ambox-delete{border-left:10px solid #b32424}.mw-parser-output .ambox-content{border-left:10px solid #f28500}.mw-parser-output .ambox-style{border-left:10px solid #fc3}.mw-parser-output .ambox-move{border-left:10px solid #9932cc}.mw-parser-output .ambox-protection{border-left:10px solid #a2a9b1}.mw-parser-output .ambox .mbox-text{border:none;padding:0.25em 0.5em;width:100%}.mw-parser-output .ambox .mbox-image{border:none;padding:2px 0 2px 0.5em;text-align:center}.mw-parser-output .ambox .mbox-imageright{border:none;padding:2px 0.5em 2px 0;text-align:center}.mw-parser-output .ambox .mbox-empty-cell{border:none;padding:0;width:1px}.mw-parser-output .ambox .mbox-image-div{width:52px}@media(min-width:720px){.mw-parser-output .ambox{margin:0 10%}}@media print{body.ns-0 .mw-parser-output .ambox{display:none!important}} This section needs more citations . Please help improve this section by adding citations to reliable sources . Unsourced material may be challenged and removed . ( January 2022 ) ( Learn how and when to remove this message ) .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!i', '["clm_wiki_arkansas_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_arkansas_demographics', 'plc_arkansas', 'demographics', 'Demographics',
   'Early history [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main articles: New France , Louisiana (New France) , French and Indian War , Treaty of Paris (1763) , New Spain , Louisiana (New Spain) , and Treaty of Aranjuez (1801) Platform mounds were constructed frequently during the Woodland and Mississippian periods . Before European settlement of North America, Arkansas was inhabited by indigenous peoples for thousands of years. The Caddo , Osage , and Quapaw peoples encountered European explorers. The first of these Europeans was Spanish explorer Hernando de Soto in 1541, who crossed the Mississippi and marched across central Arkansas and the Ozark Mountains. After finding nothing he considered of value and encountering native resistance the entire way, he and his men returned to the Mississippi River, where de Soto fell ill. From his deathbed, he ordered his men to massacre all the men of the nearby village of Anilco, whom he feared had been plotting with a powerful polity down the Mississippi River, Quigualtam . His men obeyed and did not stop with the men, but were said to have massacred women and children as well. He died the following day in what is believed to be the vicinity of modern-day McArthur, Arkansas , in May 1542. His body was weighted down with sand, and he was consigned to a watery grave in the Mississippi River under cover of darkness by his men. De Soto had attempted to deceive the native population into thinking he was an immortal deity, sun of the sun, in order to forestall attack by outraged Native Americans on his by then weakened and bedraggled army. In order to keep the ruse up, his men informed the locals that de Soto had ascended i', '["clm_wiki_arkansas_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_arkansas_primary', 'plc_arkansas', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Flag_of_Arkansas.svg/500px-Flag_of_Arkansas.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Flag_of_Arkansas.svg/330px-Flag_of_Arkansas.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Arkansas',
   'Arkansas', 1, 10, unixepoch());

-- 5. California (state, CA, pop=California)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_california', 'place', 'california', 'California', 'published', 'en', 25,
   'California is a U.S. state in the Western United States that lies on the Pacific Coast. It borders Oregon to the north, and Nevada and Arizona to the east; it also shares an international border with the Mexican state of Baja California to the south. With over 39 million residents across an area of 163,696 square miles (423,970 km2), it is the largest U.S. state by population and third-largest by area.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_california', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_california_in_country', 'plc_california', 'ent_usa', 'located_in', 0.95, 'clm_wiki_california_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_california_overview', 'plc_california', 'overview', 'Overview',
   'California is a U.S. state in the Western United States that lies on the Pacific Coast. It borders Oregon to the north, and Nevada and Arizona to the east; it also shares an international border with the Mexican state of Baja California to the south. With over 39 million residents across an area of 163,696 square miles (423,970 km2), it is the largest U.S. state by population and third-largest by area.', '["clm_wiki_california_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_california_history', 'plc_california', 'history', 'History',
   'Etymology [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main articles: Etymology of California and Island of California The name is most likely derived from the mythical island of California in the fictional story of Queen Calafia , as recorded in a 1510 work The Adventures of Esplandián by Garci Rodríguez de Montalvo . &#91; 1 &#93; Queen Calafia''s kingdom was said to be a remote land rich in gold and pearls, inhabited by beautiful dark-skinned women who wore gold armor and lived like Amazons , and bred griffins for war. &#91; 1 &#93; &#91; 2 &#93; &#91; 3 &#93; A 2017 state legislative document stated, "Numerous theories exist as to the origin and meaning of the word ''California '' ", and that all anyone knows is the name was added to a map by 1541 "presumably by a Spanish navigator". &#91; 4 &#93; &#91; 5 &#93; The Spaniards gave the name Las Californias to the peninsula of Baja California (in modern-day Mexico). As Spanish explorers and settlers moved north and inland, the region known as "California", or "Las Californias", grew in both area and population. Eventually it included lands north of the peninsula, Alta California , part of which became the present-day U.S. state of California. &#91; 6 &#93; Abbreviations of the state''s name include CA (U.S. Postal Service and ANSI), Cal, Calif, CF (U.S. Coast Guard) , and US-CA (ISO) . ^ a b .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wi', '["clm_wiki_california_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_california_geography', 'plc_california', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Further information: History of California before 1900 A map of Indigenous Californian tribes and languages at the time of European contact. Indigenous tribes [ edit ] Main article: Indigenous peoples of California California was one of the most culturally and linguistically diverse areas in pre-Columbian North America . &#91; 1 &#93; Historians generally agree that there were at least 300,000 people living in California prior to European colonization. &#91; 2 &#93; The Indigenous peoples of California included more than 70 distinct ethnic groups , inhabiting environments ranging from mountains and deserts to islands and redwood forests. &#91; 3 &#93; Living in these diverse geographic areas, the indigenous peoples developed complex forms of ecosystem management, including forest gardening to ensure the regular availability of important food sources and medicinal plants . &#91; 4 &#93; &#91; 5 &#93; This was a form of sustainable agriculture . &#91; 6 &#93; To mitigate destructive large wildfires from ravaging the natural environment, indigenous peoples developed a practice of controlled burning . &#91; 7 &#93; This practice was recognized for its benefits by the California government in 2022. &#91; 8 &#93; These groups were also diverse in their political organization, with bands, tribes, villages, and, on the resource-rich coasts, large chiefdoms , such as the Chumash , Pomo and Salinan . Trade, intermarriage, craft specialists, and military alliances fostered social and economic relationships between many groups. Although nations would sometimes war, most armed conflicts were between groups of men for ve', '["clm_wiki_california_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_california_demographics', 'plc_california', 'demographics', 'Demographics',
   'Indigenous tribes [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Indigenous peoples of California California was one of the most culturally and linguistically diverse areas in pre-Columbian North America . &#91; 1 &#93; Historians generally agree that there were at least 300,000 people living in California prior to European colonization. &#91; 2 &#93; The Indigenous peoples of California included more than 70 distinct ethnic groups , inhabiting environments ranging from mountains and deserts to islands and redwood forests. &#91; 3 &#93; Living in these diverse geographic areas, the indigenous peoples developed complex forms of ecosystem management, including forest gardening to ensure the regular availability of important food sources and medicinal plants . &#91; 4 &#93; &#91; 5 &#93; This was a form of sustainable agriculture . &#91; 6 &#93; To mitigate destructive large wildfires from ravaging the natural environment, indigenous peoples developed a practice of controlled burning . &#91; 7 &#93; This practice was recognized for its benefits by the California government in 2022. &#91; 8 &#93; These groups were also diverse in their political organization, with bands, tribes, villages, and, on the resource-rich coasts, large chiefdoms , such as the Chumash , Pomo and Salinan . Trade, intermarriage, craft specialists, and military alliances fostered social and economic relationships between many groups. Although nations would sometimes war, most armed conflicts were between groups of men for vengeance . Acquiring territory was not usually the purpose of these small-scale battles. &#91; 9 &#93; Men and women generally had different roles in society. ', '["clm_wiki_california_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_california_primary', 'plc_california', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Flag_of_California.svg/960px-Flag_of_California.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Flag_of_California.svg/330px-Flag_of_California.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'California',
   'California', 1, 10, unixepoch());

-- 6. Colorado (state, CO, pop=Colorado)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_colorado', 'place', 'colorado', 'Colorado', 'published', 'en', 25,
   'Colorado is a landlocked state in the Mountain West subregion of the Western United States. It is one of the Mountain states, and part of the Southwestern United States, sharing the Four Corners region with Arizona, New Mexico, and Utah. It is also bordered by Wyoming to the north, Nebraska to the northeast, Kansas to the east, and Oklahoma to the southeast. Colorado is noted for its landscape of mountains, forests, high plains, mesas, canyons, plateaus, rivers, and desert lands. It encompasses most of the Southern Rocky Mountains, as well as the northeastern portion of the Colorado Plateau and the western edge of the Great Plains. Colorado is the eighth-largest U.S. state by area and the 20th by population. The United States Census Bureau estimated the population of Colorado to be 5,957,493 as of July 1, 2024, a 3.2% increase from the 2020 United States census.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_colorado', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_colorado_in_country', 'plc_colorado', 'ent_usa', 'located_in', 0.95, 'clm_wiki_colorado_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_colorado_overview', 'plc_colorado', 'overview', 'Overview',
   'Colorado is a landlocked state in the Mountain West subregion of the Western United States. It is one of the Mountain states, and part of the Southwestern United States, sharing the Four Corners region with Arizona, New Mexico, and Utah. It is also bordered by Wyoming to the north, Nebraska to the northeast, Kansas to the east, and Oklahoma to the southeast. Colorado is noted for its landscape of mountains, forests, high plains, mesas, canyons, plateaus, rivers, and desert lands. It encompasses most of the Southern Rocky Mountains, as well as the northeastern portion of the Colorado Plateau and the western edge of the Great Plains. Colorado is the eighth-largest U.S. state by area and the 20th by population. The United States Census Bureau estimated the population of Colorado to be 5,957,493 as of July 1, 2024, a 3.2% increase from the 2020 United States census.', '["clm_wiki_colorado_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_colorado_history', 'plc_colorado', 'history', 'History',
   'U.S. state .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} This article is about the U.S. state. For the river, see Colorado River . For the physiographic region, see Colorado Plateau . For other uses, see Colorado (disambiguation) . .mw-parser-output .ambox{border:1px solid #a2a9b1;border-left:10px solid #36c;background-color:#fbfbfb;box-sizing:border-box}.mw-parser-output .ambox+.mw-empty-elt+.ambox,.mw-parser-output .ambox+.mw-empty-elt+.mw-empty-elt+.ambox,.mw-parser-output .ambox+.mw-empty-elt+.mw-empty-elt+.mw-empty-elt+.ambox{margin-top:-1px}html body.mediawiki .mw-parser-output .ambox.mbox-small-left{margin:4px 1em 4px 0;overflow:hidden;width:238px;border-collapse:collapse;font-size:88%;line-height:1.25em}.mw-parser-output .ambox-speedy{border-left:10px solid #b32424;background-color:#fee7e6}.mw-parser-output .ambox-delete{border-left:10px solid #b32424}.mw-parser-output .ambox-content{border-left:10px solid #f28500}.mw-parser-output .ambox-style{border-left:10px solid #fc3}.mw-parser-output .ambox-move{border-left:10px solid #9932cc}.mw-parser-output .ambox-protection{border-left:10px solid #a2a9b1}.mw-parser-output .ambox .mbox-text{border:none;padding:0.25em 0.5em;width:100%}.mw-parser-output .ambox .mbox-image{border:none;padding:2px 0 2px 0.5em;text-align:center}.mw-parser-output .ambox .mbox-imageright{border:none;padding:2px 0.5em 2px 0;text-align:center}.mw-parser-output .ambox .mbox-empty-cell{border:none;padding:0;width:1px}.mw-parser-output .ambox .mbox-image-div{width:52px}@media(min-width:720px){.mw-parser-output .ambox{margin:0 10%}}@media print{body.ns-0 .mw-parser-output .ambox{display:none!important}} This article needs more citations . Please help improve this article by adding citations to reliable sources . Unsourced material may be challenged and removed . Find sources: &#160; "Colorado" &#160;–&#160; news &#160; · newspapers &#160; · books &#160; · scholar &#160; · JSTOR ( February 2026 ) ( Learn how and when to remove this message ) State in the United States @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;wid', '["clm_wiki_colorado_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_colorado_geography', 'plc_colorado', 'geography', 'Geography',
   'Colorado Territory [ edit ] .mw-parser-output .excerpt-hat .mw-editsection-like{font-style:normal} .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} These paragraphs are an excerpt from Colorado Territory . [ edit ] The Territory of Colorado was an organized incorporated territory of the United States that existed from February 28, 1861, &#91; 1 &#93; until August 1, 1876, when it was admitted to the Union as the 38th State of Colorado. &#91; 2 &#93; The territory was created during the onset of the American Civil War in the wake of the Pike''s Peak Gold Rush , which brought the first large concentration of settlers from the east to the region. The war stifled growth, but following the war mining grew more industrialized and fueled the economy. The construction of railroads further improved the economy. The boundaries of the newly designated Colorado Territory were very similar to those of the modern State of Colorado. The territories of New Mexico , Utah , Kansas , and Nebraska before the creation of the Territory of Colorado Civil war [ edit ] Main article: Colorado Territory in the American Civil War In 1861 following the beginning of the American Civil War , there were several small disputes and skirmishes between confederate supporters and union supporters. In August, Governor Gilpin organized the 1st Colorado Infantry . John P. Slough led the group to New Mexico Territory in February–March 1862. There they fought in the battles of Apache Canyon , Glorieta Pass and Peralta . Slough resigned in April 1862 and was replaced by Major John M. Chivington . &#91; 3 &#93; John Chivington, commander of the 3rd Colorado Cavalry at the Sand Creek Massacre. With resources tied up ', '["clm_wiki_colorado_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_colorado_demographics', 'plc_colorado', 'demographics', 'Demographics',
   'Civil war [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Colorado Territory in the American Civil War In 1861 following the beginning of the American Civil War , there were several small disputes and skirmishes between confederate supporters and union supporters. In August, Governor Gilpin organized the 1st Colorado Infantry . John P. Slough led the group to New Mexico Territory in February–March 1862. There they fought in the battles of Apache Canyon , Glorieta Pass and Peralta . Slough resigned in April 1862 and was replaced by Major John M. Chivington . &#91; 1 &#93; John Chivington, commander of the 3rd Colorado Cavalry at the Sand Creek Massacre. With resources tied up in the war there was little left over for mines, farms, and infrastructure, and Denver stagnated. &#91; 2 &#93; &#91; 3 &#93; On March 26, 1862 John Evans was appointed by Abraham Lincoln as the second governor of the territory. &#91; 4 &#93; He prompted investment in Denver rail projects, &#91; 4 &#93; &#91; 5 &#93; &#58;&#8202;85&#8202; and founded the University of Denver in 1864. &#91; 6 &#93; &#58;&#8202;22&#8202; John Evans with daughter Josephine, c. 1859 Anti-native sentiment grew during the Civil War years. Exterminationist ideology, led in Colorado by Evans and Chivington, advocated for the total eradication of all native people in the territory. &#91; 7 &#93; The Colorado War worsened relations with natives until 1864 when Chivington ordered the Sand Creek Massacre and Evans was forced to resign the following spring. &#91; 8 &#93; &#58;&#8202;85&#8202; In 1867, the Union Pacific Railroad laid its tracks west to Weir, now Julesburg , in the northeast corner of the Ter', '["clm_wiki_colorado_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_colorado_primary', 'plc_colorado', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Flag_of_Colorado.svg/1920px-Flag_of_Colorado.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Flag_of_Colorado.svg/330px-Flag_of_Colorado.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Colorado',
   'Colorado', 1, 10, unixepoch());

-- 7. Connecticut (state, CT, pop=Connecticut)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_connecticut', 'place', 'connecticut', 'Connecticut', 'published', 'en', 25,
   'Connecticut is a state in the New England region of the Northeastern United States. It borders Rhode Island to the east, Massachusetts to the north, New York to the west, and Long Island Sound to the south. Its capital is Hartford, and its most populous city is Bridgeport. Connecticut lies between the major hubs of New York City and Boston along the Northeast Corridor, where the New York metropolitan area, which includes four of Connecticut''s seven largest cities, extends into the southwestern part of the state. Connecticut is the third-smallest state by area after Rhode Island and Delaware, and the 29th-most populous with more than 3.6 million residents as of 2024, ranking it fourth among the most densely populated U.S. states.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_connecticut', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_connecticut_in_country', 'plc_connecticut', 'ent_usa', 'located_in', 0.95, 'clm_wiki_connecticut_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_connecticut_overview', 'plc_connecticut', 'overview', 'Overview',
   'Connecticut is a state in the New England region of the Northeastern United States. It borders Rhode Island to the east, Massachusetts to the north, New York to the west, and Long Island Sound to the south. Its capital is Hartford, and its most populous city is Bridgeport. Connecticut lies between the major hubs of New York City and Boston along the Northeast Corridor, where the New York metropolitan area, which includes four of Connecticut''s seven largest cities, extends into the southwestern part of the state. Connecticut is the third-smallest state by area after Rhode Island and Delaware, and the 29th-most populous with more than 3.6 million residents as of 2024, ranking it fourth among the most densely populated U.S. states.', '["clm_wiki_connecticut_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_connecticut_history', 'plc_connecticut', 'history', 'History',
   'U.S. state .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} This article is about the U.S. state. For other uses, see Connecticut (disambiguation) . "Conn." redirects here. For other uses, see Conn (disambiguation) . State in the United States @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-settlement{border-collapse:collapse;line-height:1.2em}@media(min-width:640px){.mw-parser-output .ib-settlement{width:23em}}.mw-parser-output .ib-settlement td,.mw-parser-output .ib-settlement th{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.4em 0.6em}.mw-parser-output .ib-settlement .mergedtoprow .infobox-full-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-header,.mw-parser-output .ib-settlement .mergedtoprow .infobox-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-label,.mw-parser-output .ib-settlement .mergedtoprow .infobox-below{border-top:1px solid #a2a9b1;padding:0.4em 0', '["clm_wiki_connecticut_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_connecticut_geography', 'plc_connecticut', 'geography', 'Geography',
   'First people [ edit ] The name of this state, Connecticut , is derived from the Mohegan-Pequot word that has been translated as "long tidal river" and "upon the long river", &#91; 1 &#93; both referring to the Connecticut River . Evidence of human presence in the Connecticut region dates to as far back as 10,000 years ago. Stone tools were used for hunting, fishing, and woodworking. &#91; 2 &#93; &#91; 3 &#93; Semi-nomadic in lifestyle, these peoples moved seasonally to take advantage of various resources in the area. &#91; 4 &#93; &#91; 5 &#93; They shared languages based on Algonquian . &#91; 6 &#93; The Connecticut region was inhabited by many Native American tribes that can be grouped into the Nipmuc , the Sequin or "River Indians" (which included the Tunxis , Schaghticoke , Podunk , Wangunk , Hammonasset , and Quinnipiac ), the Mattabesec or "Wappinger Confederacy" and the Pequot-Mohegan . &#91; 7 &#93; Some of these groups still reside in Connecticut, including the Mohegans , the Pequots , and the Paugusetts . &#91; 8 &#93; In the seventeenth century, more than 8,000 Pequots lived in the Western part of Connecticut into Rhode Island, while 1,500 to 2,500 Mohegans resided West of the Thames River. &#91; 9 &#93; &#91; 10 &#93; The Mohegans lived on traditions like hunting, shell fishing, gathering and maize agriculture. &#91; 11 &#93; &#91; 12 &#93; This system was passed down through intergenerational knowledge and traditions. &#91; 13 &#93; Cultural continuity was maintained through oral traditions, which functioned as both historical record and ecological knowledge system. This preserved relationships between people, land, and nonhuman life, while also preserving and acknowledging the past. &#91; 12 &#93; &#91; 14 &#93; An important relationship the Mohegans preserved was one also similar to the Lenape Nation, and that was the Three Sisters Mound. This consisted of corn, beans, and squash, and it nourished the Mohegan tribe throughout the whole year. The Mohe', '["clm_wiki_connecticut_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_connecticut_demographics', 'plc_connecticut', 'demographics', 'Demographics',
   'Colonial period [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main articles: New Netherland , Saybrook Colony , Connecticut Colony , New Haven Colony , New England Confederation , and Dominion of New England Dutchman Adriaen Block was the first European explorer in Connecticut. &#91; 1 &#93; He explored the region in 1614. Dutch fur traders then sailed up the Connecticut River , calling it Versche Rivier ("Fresh River") and building a fort at Dutch Point in Hartford, which they named "House of Hope" ( Dutch : Huis van Hoop ). &#91; 2 &#93; On April 26, 1935, the U.S. Post Office issued a postage stamp commemorating the 300th anniversary of the settlement of the Connecticut colony. The Connecticut Colony originally consisted of several smaller settlements in Windsor, Wethersfield, Saybrook, Hartford, and New Haven. The first English settlers came in 1633 and settled at Windsor, then at Wethersfield the following year. &#91; 3 &#93; John Winthrop the Younger of Massachusetts received a commission to create Saybrook Colony at the mouth of the Connecticut River in 1635. &#91; 4 &#93; A large group of Puritans arrived in 1636 from Massachusetts Bay Colony , led by Thomas Hooker , who established the Connecticut Colony at Hartford. &#91; 5 &#93; The Fundamental Orders of Connecticut were adopted in January 1639, and have been described as the first constitutional document in America. &#91; 6 &#93; The Quinnipiack Colony &#91; 7 &#93; was established by John Davenport , Theophilus Eaton , and others at New Haven in March 1638. The New Haven Colony had its own constitution called "The Fundamental Agreement of the New Haven Colony", signed on June 4, 1639. &#91; 8 &#93', '["clm_wiki_connecticut_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_connecticut_primary', 'plc_connecticut', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Flag_of_Connecticut.svg/330px-Flag_of_Connecticut.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Flag_of_Connecticut.svg/330px-Flag_of_Connecticut.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Connecticut',
   'Connecticut', 1, 10, unixepoch());

-- 8. Delaware (state, DE, pop=Delaware)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_delaware', 'place', 'delaware', 'Delaware', 'published', 'en', 25,
   'Delaware is a state in the Mid-Atlantic and South Atlantic regions of the United States. It borders Maryland to its south and west, Pennsylvania to its north, New Jersey to its northeast, and the Atlantic Ocean to its east. The state''s name derives from the adjacent Delaware Bay, which in turn was named after Thomas West, 3rd Baron De La Warr, an English nobleman and the Colony of Virginia''s first colonial-era governor.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_delaware', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_delaware_in_country', 'plc_delaware', 'ent_usa', 'located_in', 0.95, 'clm_wiki_delaware_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_delaware_overview', 'plc_delaware', 'overview', 'Overview',
   'Delaware is a state in the Mid-Atlantic and South Atlantic regions of the United States. It borders Maryland to its south and west, Pennsylvania to its north, New Jersey to its northeast, and the Atlantic Ocean to its east. The state''s name derives from the adjacent Delaware Bay, which in turn was named after Thomas West, 3rd Baron De La Warr, an English nobleman and the Colony of Virginia''s first colonial-era governor.', '["clm_wiki_delaware_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_delaware_history', 'plc_delaware', 'history', 'History',
   'Etymology [ edit ] Delaware was named after its location on the Delaware Bay, which in turn derived its name from Thomas West, 3rd Baron De La Warr (1577–1618), the first governor of the Colony of Virginia . The Delaware people, a name used by Europeans for Lenape people Indigenous to the Delaware Valley, also derive their name from the same source. The name de La Warr was derived from Sussex and is of Anglo -French origin. &#91; 1 &#93; &#91; 2 &#93; It came probably from a Norman lieu-dit La Guerre . This toponymic likely derived from Latin ager , the Breton gwern or from the Late Latin varectum ( fallow ). The toponyms Gara, Gare, Gaire, (the sound [ä] often mutated in [æ] ) also appear in historical texts cited by Lucien Musset , where the word ga(i)ra means gore . It could also be linked with a patronymic from the Old Norse verr . ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-ws-icon a{background-size:contain;padding:0 1em 0 0}.mw-parser-output .cs1-code{color:inherit;background:inherit;border:none;padding:inherit}.mw-parser-output .cs1-hidden-error{display:none;color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-visible-error{color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-maint{display:none;c', '["clm_wiki_delaware_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_delaware_geography', 'plc_delaware', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Delaware .mw-parser-output .ambox{border:1px solid #a2a9b1;border-left:10px solid #36c;background-color:#fbfbfb;box-sizing:border-box}.mw-parser-output .ambox+.mw-empty-elt+.ambox,.mw-parser-output .ambox+.mw-empty-elt+.mw-empty-elt+.ambox,.mw-parser-output .ambox+.mw-empty-elt+.mw-empty-elt+.mw-empty-elt+.ambox{margin-top:-1px}html body.mediawiki .mw-parser-output .ambox.mbox-small-left{margin:4px 1em 4px 0;overflow:hidden;width:238px;border-collapse:collapse;font-size:88%;line-height:1.25em}.mw-parser-output .ambox-speedy{border-left:10px solid #b32424;background-color:#fee7e6}.mw-parser-output .ambox-delete{border-left:10px solid #b32424}.mw-parser-output .ambox-content{border-left:10px solid #f28500}.mw-parser-output .ambox-style{border-left:10px solid #fc3}.mw-parser-output .ambox-move{border-left:10px solid #9932cc}.mw-parser-output .ambox-protection{border-left:10px solid #a2a9b1}.mw-parser-output .ambox .mbox-text{border:none;padding:0.25em 0.5em;width:100%}.mw-parser-output .ambox .mbox-image{border:none;padding:2px 0 2px 0.5em;text-align:center}.mw-parser-output .ambox .mbox-imageright{border:none;padding:2px 0.5em 2px 0;text-align:center}.mw-parser-output .ambox .mbox-empty-cell{border:none;padding:0;width:1px}.mw-parser-output .ambox .mbox-image-div{width:52px}@media(min-width:720px){.mw-parser-output .ambox{margin:0 10%}}@media print{body.ns-0 .mw-parser-output .ambox{display:none!important}} This section needs more citations . Please help improve this section by adding citations to reliable sources . Unsourced material may be challenged and removed . ( December 2018 ) ', '["clm_wiki_delaware_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_delaware_demographics', 'plc_delaware', 'demographics', 'Demographics',
   'Native Americans [ edit ] Before Delaware was settled by European colonists, the present-day state was home to the Eastern Algonquian tribes known as the Unami Lenape , or Delaware, who lived mostly along the coast, and the Nanticoke who occupied much of the southern Delmarva Peninsula . John Smith also showed two Iroquoian tribes, the Kuskarawock and Tockwogh , living north of the Nanticoke—they may have held small portions of land in the western part of the state before migrating across the Chesapeake Bay. &#91; 1 &#93; The Kuskarawocks were most likely the Tuscarora . &#91; citation needed &#93; The Unami Lenape in the Delaware Valley were closely related to Munsee Lenape tribes along the Hudson River . They had a settled hunting and agricultural society, and they rapidly became middlemen in an increasingly frantic fur trade with their ancient enemy, the Minqua or Susquehannock . With the loss of their lands on the Delaware River and the destruction of the Minqua by the Iroquois of the Five Nations in the 1670s, the remnants of the Lenape who wished to remain identified as such left the region and moved over the Allegheny Mountains by the mid-18th century. &#91; citation needed &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-', '["clm_wiki_delaware_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_delaware_primary', 'plc_delaware', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Flag_of_Delaware.svg/960px-Flag_of_Delaware.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Flag_of_Delaware.svg/330px-Flag_of_Delaware.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Delaware',
   'Delaware', 1, 10, unixepoch());

-- 9. Florida (state, FL, pop=Florida)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_florida', 'place', 'florida', 'Florida', 'published', 'en', 25,
   'Florida is a state in the Southeastern and South Atlantic
regions of the United States. It borders the Gulf of Mexico to the west, Alabama to the northwest, Georgia to the north, the Atlantic Ocean to the east, the Straits of Florida to the south, and The Bahamas to the southeast. About two-thirds of Florida occupies a peninsula between the Gulf of Mexico and the Atlantic Ocean. It has the longest coastline in the contiguous United States, spanning approximately 1,350 miles (2,170 km), not including its many barrier islands. It is the only state that borders both the Gulf of Mexico and the Atlantic Ocean. With a population of over 23 million, it is the third-most populous state in the United States and ranks seventh in population density as of 2020. Florida spans 65,758 square miles (170,310 km2), ranking 22nd in area among the states. The Miami metropolitan area, anchored by the cities of Miami, Fort Lauderdale, and West Palm Beach, is the state''s largest metropolitan area, with a population of 6.138 million; the most populous city is Jacksonville. Florida''s other major population centers include Tampa Bay, Orlando, Cape Coral, and the state capital of Tallahassee.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_florida', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_florida_in_country', 'plc_florida', 'ent_usa', 'located_in', 0.95, 'clm_wiki_florida_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_florida_overview', 'plc_florida', 'overview', 'Overview',
   'Florida is a state in the Southeastern and South Atlantic
regions of the United States. It borders the Gulf of Mexico to the west, Alabama to the northwest, Georgia to the north, the Atlantic Ocean to the east, the Straits of Florida to the south, and The Bahamas to the southeast. About two-thirds of Florida occupies a peninsula between the Gulf of Mexico and the Atlantic Ocean. It has the longest coastline in the contiguous United States, spanning approximately 1,350 miles (2,170 km), not including its many barrier islands. It is the only state that borders both the Gulf of Mexico and the Atlantic Ocean. With a population of over 23 million, it is the third-most populous state in the United States and ranks seventh in population density as of 2020. Florida spans 65,758 square miles (170,310 km2), ranking 22nd in area among the states. The Miami metropolitan area, anchored by the cities of Miami, Fort Lauderdale, and West Palm Beach, is the state''s largest metropolitan area, with a population of 6.138 million; the most populous city is Jacksonville. Florida''s other major population centers include Tampa Bay, Orlando, Cape Coral, and the state capital of Tallahassee.', '["clm_wiki_florida_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_florida_history', 'plc_florida', 'history', 'History',
   'U.S. state .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} "Fla" redirects here. For other uses, see FLA and Florida (disambiguation) . State in the United States @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-settlement{border-collapse:collapse;line-height:1.2em}@media(min-width:640px){.mw-parser-output .ib-settlement{width:23em}}.mw-parser-output .ib-settlement td,.mw-parser-output .ib-settlement th{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.4em 0.6em}.mw-parser-output .ib-settlement .mergedtoprow .infobox-full-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-header,.mw-parser-output .ib-settlement .mergedtoprow .infobox-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-label,.mw-parser-output .ib-settlement .mergedtoprow .infobox-below{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.2em 0.6em}.mw-parser-output .ib-settlement .mergedrow .infobox-full-data,', '["clm_wiki_florida_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_florida_geography', 'plc_florida', 'geography', 'Geography',
   'European arrival [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main articles: New Spain , Spanish Florida , French and Indian War , Treaty of Paris (1763) , West Florida , East Florida , Indian Reserve (1763) , American Revolutionary War , Gulf Coast campaign , Treaty of Paris (1783) , and Spanish West Florida A map of Florida, likely based on the expeditions of Hernando de Soto (1539–1543) The design of Castillo de San Marcos reflects the colors and shapes of the Cross of Burgundy and the subsequent Flag of Florida . East Florida and West Florida during the British period of 1763 to 1783 Florida was the first region of what is now the contiguous United States to be visited and settled by Europeans. The first recorded European explorers to reach Florida were Spaniards led by Juan Ponce de León , who sighted the peninsula on April 2, 1513, and came ashore the next day to seek information and take possession of this new land. &#91; 1 &#93; &#91; 2 &#93; Differing theories state he named the region La Florida in recognition of the region''s abundant flora or La Pascua Florida a Spanish name for the Easter season in which it was thought they first landed &#91; 3 &#93; The story that he was searching for the Fountain of Youth is apocryphal and appeared only long after his death. &#91; 4 &#93; In May 1539, Hernando de Soto skirted the coast of Florida, searching for a deep harbor to land. He described a thick wall of red mangroves spread mile after mile, some reaching as high as 70 feet (21&#160;m), with intertwined and elevated roots making landing difficult. &#91; 5 &#93; Europeans introduced Christianity , cattle, horses, sheep, the Spanish language , and more to ', '["clm_wiki_florida_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_florida_demographics', 'plc_florida', 'demographics', 'Demographics',
   'Statehood and Indian removal [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} See also: Republic of East Florida , Seminole Wars , Adams–Onís Treaty , Florida Territory , Admission to the Union , and List of U.S. states by date of admission to the Union A portrait of a Cracker cowboy by Frederic Remington (1861–1909) Americans of English and Scots Irish descent began moving into northern Florida from the backwoods of Georgia and South Carolina . Despite Spanish territorial restrictions, authorities lacked the resources to effectively police the region, allowing settlers from the United States to continually immigrate into Florida unchecked. These migrants intermingled with remaining British loyalists, ultimately forming the population known as Florida Crackers . &#91; 1 &#93; The American settlers established a permanent foothold in the area. The British settlers who had remained also resented Spanish governance, leading to a rebellion in 1810 and the establishment for ninety days of the so-called Free and Independent Republic of West Florida on September 23. &#91; 2 &#93; After meetings beginning in June, rebels overcame the garrison at Baton Rouge in present-day Louisiana and unfurled the flag of the new republic: a single white star on a blue field. This flag would later become known as the " Bonnie Blue Flag ". In 1810, parts of West Florida were annexed by the proclamation of President James Madison , who claimed the region as part of the Louisiana Purchase . These parts were incorporated into the newly formed Territory of Orleans . The U.S. annexed the Mobile District of West Florida to the Mississippi Territory in 1812. Spain continued to dispute the area,', '["clm_wiki_florida_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_florida_primary', 'plc_florida', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Flag_of_Florida.svg/3840px-Flag_of_Florida.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Flag_of_Florida.svg/330px-Flag_of_Florida.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Florida',
   'Florida', 1, 10, unixepoch());

-- 10. Georgia (state, GA, pop=Georgia)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_georgia', 'place', 'georgia', 'Georgia', 'published', 'en', 25,
   'Georgia most commonly refers to:Georgia (country), a country in the South Caucasus
Georgia, a state in the United States', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_georgia', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_georgia_in_country', 'plc_georgia', 'ent_usa', 'located_in', 0.95, 'clm_wiki_georgia_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_georgia_overview', 'plc_georgia', 'overview', 'Overview',
   'Georgia most commonly refers to:Georgia (country), a country in the South Caucasus
Georgia, a state in the United States', '["clm_wiki_georgia_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_georgia_history', 'plc_georgia', 'history', 'History',
   'People and fictional characters [ edit ] Georgia (name) , a list of people and fictional characters with the female given name Georgia (musician) (born 1990), English singer, songwriter, and drummer Georgia Barnes', '["clm_wiki_georgia_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_georgia_geography', 'plc_georgia', 'geography', 'Geography',
   'Places [ edit ] Historical polities in Caucasus [ edit ] Kingdom of Georgia , a medieval kingdom Kingdom of Eastern Georgia , a late medieval kingdom Kingdom of Western Georgia , a late medieval kingdom Georgia Governorate , a subdivision of the Russian Empire Georgia within the Russian Empire Democratic Republic of Georgia , a country established after the collapse of the Russian Empire and later conquered by Soviet Russia Georgian Soviet Socialist Republic , a republic within the Soviet Union Republic of Georgia , a republic in the Soviet Union which, after the collapse of the USSR (1991), was an independent country Historical polities in North America [ edit ] Province of Georgia , one of the thirteen American colonies in what became the United States Canada [ edit ] Georgia Street , in Vancouver, British Columbia, Canada Strait of Georgia , British Columbia, Canada United Kingdom [ edit ] Georgia, Cornwall , England, UK South Georgia and the South Sandwich Islands United States [ edit ] Georgia, Indiana Georgia, New Jersey Georgia, Vermont Georgia Avenue , Washington, DC Other places [ edit ] 359 Georgia , an asteroid', '["clm_wiki_georgia_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_georgia_demographics', 'plc_georgia', 'demographics', 'Demographics',
   'Historical polities in Caucasus [ edit ] Kingdom of Georgia , a medieval kingdom Kingdom of Eastern Georgia , a late medieval kingdom Kingdom of Western Georgia , a late medieval kingdom Georgia Governorate , a subdivision of the Russian Empire Georgia within the Russian Empire Democratic Republic of Georgia , a country established after the collapse of the Russian Empire and later conquered by Soviet Russia Georgian Soviet Socialist Republic , a republic within the Soviet Union Republic of Georgia , a republic in the Soviet Union which, after the collapse of the USSR (1991), was an independent country', '["clm_wiki_georgia_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 11. Hawaii (state, HI, pop=Hawaii)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_hawaii', 'place', 'hawaii', 'Hawaii', 'published', 'en', 25,
   'Hawaii is an island state of the United States, in the Pacific Ocean about 2,000 miles (3,200 km) southwest of the U.S. mainland. One of the two non-contiguous U.S. states, it is the only state not on the North American mainland, the only state that is an archipelago, the only state south of the Tropic of Cancer, one of only two states, along with Florida, with regions that have a tropical climate, and one of the two U.S. states, along with Texas, that were internationally recognized sovereign countries before becoming U.S. states.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_hawaii', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_hawaii_in_country', 'plc_hawaii', 'ent_usa', 'located_in', 0.95, 'clm_wiki_hawaii_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_hawaii_overview', 'plc_hawaii', 'overview', 'Overview',
   'Hawaii is an island state of the United States, in the Pacific Ocean about 2,000 miles (3,200 km) southwest of the U.S. mainland. One of the two non-contiguous U.S. states, it is the only state not on the North American mainland, the only state that is an archipelago, the only state south of the Tropic of Cancer, one of only two states, along with Florida, with regions that have a tropical climate, and one of the two U.S. states, along with Texas, that were internationally recognized sovereign countries before becoming U.S. states.', '["clm_wiki_hawaii_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_hawaii_history', 'plc_hawaii', 'history', 'History',
   'Etymology [ edit ] The State of Hawaii derives its name from the name of its largest island, Hawaiʻi . A common explanation of the name of Hawaiʻi is that it was named for Hawaiʻiloa , a figure from Hawaiian oral tradition. He is said to have discovered the islands when they were first settled. &#91; 1 &#93; &#91; 2 &#93; The Hawaiian language word Hawaiʻi is very similar to Proto-Polynesian *Sawaiki , with the reconstructed meaning ''homeland''. &#91; a &#93; Cognates of Hawaiʻi are found in other Polynesian languages, including Māori ( Hawaiki ), Rarotongan ( ʻAvaiki ) and Samoan ( Savaiʻi ). According to linguists Pukui and Elbert, &#91; 4 &#93; "elsewhere in Polynesia, Hawaiʻi or a cognate is the name of the underworld or of the ancestral home, but in Hawaii, the name has no meaning". &#91; 5 &#93; Spelling of state name [ edit ] In 1978, Hawaiian was added to the Constitution of the State of Hawaii as an official state language alongside English. &#91; 6 &#93; The title of the state constitution is The Constitution of the State of Hawaii . Article&#160;XV, Section&#160;1 of the Constitution uses The State of Hawaii . &#91; 7 &#93; Diacritics were not used because the document, drafted in 1949, &#91; 8 &#93; predates the use of the ʻokina &#x27e8;ʻ&#x27e9; and the kahakō in modern Hawaiian orthography. The exact spelling of the state''s name in the Hawaiian language is Hawaiʻi . &#91; b &#93; In the Hawaii Admission Act that granted Hawaiian statehood, the federal government used Hawaii as the state name, but most official Hawaiian state government publications, departments, and office titles use Hawaiʻi , including the Governor of Hawaiʻi , &#91; 9 &#93; the Hawaiʻi State Legislature , &#91; 10 &#93; the Hawaiʻi State Judiciary , &#91; 11 &#93; the University of Hawaiʻi , &#91; 12 &#93; the Hawaiʻi State Seal , &#91; 13 &#93; the Flag of Hawaiʻi , &#91; 14 &#93; and the Hawaiʻi Board on Geographic Names. &#91; 15 &#93; The Hawaiʻi Tourism Authority''s official policy is to "recognize the importance of using these markings to preserve the indigenous language and culture of Hawaiʻi and use them in all forms of communications." &#91; 16 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.s', '["clm_wiki_hawaii_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_hawaii_geography', 'plc_hawaii', 'geography', 'Geography',
   'Spelling of state name [ edit ] In 1978, Hawaiian was added to the Constitution of the State of Hawaii as an official state language alongside English. &#91; 1 &#93; The title of the state constitution is The Constitution of the State of Hawaii . Article&#160;XV, Section&#160;1 of the Constitution uses The State of Hawaii . &#91; 2 &#93; Diacritics were not used because the document, drafted in 1949, &#91; 3 &#93; predates the use of the ʻokina &#x27e8;ʻ&#x27e9; and the kahakō in modern Hawaiian orthography. The exact spelling of the state''s name in the Hawaiian language is Hawaiʻi . &#91; a &#93; In the Hawaii Admission Act that granted Hawaiian statehood, the federal government used Hawaii as the state name, but most official Hawaiian state government publications, departments, and office titles use Hawaiʻi , including the Governor of Hawaiʻi , &#91; 4 &#93; the Hawaiʻi State Legislature , &#91; 5 &#93; the Hawaiʻi State Judiciary , &#91; 6 &#93; the University of Hawaiʻi , &#91; 7 &#93; the Hawaiʻi State Seal , &#91; 8 &#93; the Flag of Hawaiʻi , &#91; 9 &#93; and the Hawaiʻi Board on Geographic Names. &#91; 10 &#93; The Hawaiʻi Tourism Authority''s official policy is to "recognize the importance of using these markings to preserve the indigenous language and culture of Hawaiʻi and use them in all forms of communications." &#91; 11 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-', '["clm_wiki_hawaii_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_hawaii_demographics', 'plc_hawaii', 'demographics', 'Demographics',
   'Geography and environment [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Hawaiian Islands See also: List of islands of Hawaii .mw-parser-output .defaultleft,.mw-parser-output .col1left td:nth-child(1),.mw-parser-output .col2left td:nth-child(2),.mw-parser-output .col3left td:nth-child(3),.mw-parser-output .col4left td:nth-child(4),.mw-parser-output .col5left td:nth-child(5),.mw-parser-output .col6left td:nth-child(6),.mw-parser-output .col7left td:nth-child(7),.mw-parser-output .col8left td:nth-child(8),.mw-parser-output .col9left td:nth-child(9),.mw-parser-output .col10left td:nth-child(10),.mw-parser-output .col11left td:nth-child(11),.mw-parser-output .col12left td:nth-child(12),.mw-parser-output .col13left td:nth-child(13),.mw-parser-output .col14left td:nth-child(14),.mw-parser-output .col15left td:nth-child(15),.mw-parser-output .col16left td:nth-child(16),.mw-parser-output .col17left td:nth-child(17),.mw-parser-output .col18left td:nth-child(18),.mw-parser-output .col19left td:nth-child(19),.mw-parser-output .col20left td:nth-child(20),.mw-parser-output .col21left td:nth-child(21),.mw-parser-output .col22left td:nth-child(22),.mw-parser-output .col23left td:nth-child(23),.mw-parser-output .col24left td:nth-child(24),.mw-parser-output .col25left td:nth-child(25),.mw-parser-output .col26left td:nth-child(26),.mw-parser-output .col27left td:nth-child(27),.mw-parser-output .col28left td:nth-child(28),.mw-parser-output .col29left td:nth-child(29),.mw-parser-output .col-1left td:nth-last-child(1),.mw-parser-output .col-2left td:nth-last-child(2),.mw-parser-output .col-3left td:nth-last-child(3),.mw-parser-output .col-4left td:nth-last-child(4),.m', '["clm_wiki_hawaii_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_hawaii_primary', 'plc_hawaii', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Flag_of_Hawaii.svg/1280px-Flag_of_Hawaii.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Flag_of_Hawaii.svg/330px-Flag_of_Hawaii.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Hawaii',
   'Hawaii', 1, 10, unixepoch());

-- 12. Idaho (state, ID, pop=Idaho)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_idaho', 'place', 'idaho', 'Idaho', 'published', 'en', 25,
   'Idaho is a landlocked state in the Pacific Northwest and Mountain West subregions of the Western United States. It borders Montana and Wyoming to the east, Nevada and Utah to the south, and Washington and Oregon to the west; the state shares a small portion of the Canada–United States border to the north with the Canadian province of British Columbia. Idaho''s state capital and largest city is Boise. With an area of 83,569 square miles (216,440 km2), Idaho is the 14th-largest state by land area. The state has a population of approximately two million people; it ranks as the 13th-least populous and the seventh-least densely populated of the 50 U.S. states.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_idaho', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_idaho_in_country', 'plc_idaho', 'ent_usa', 'located_in', 0.95, 'clm_wiki_idaho_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_idaho_overview', 'plc_idaho', 'overview', 'Overview',
   'Idaho is a landlocked state in the Pacific Northwest and Mountain West subregions of the Western United States. It borders Montana and Wyoming to the east, Nevada and Utah to the south, and Washington and Oregon to the west; the state shares a small portion of the Canada–United States border to the north with the Canadian province of British Columbia. Idaho''s state capital and largest city is Boise. With an area of 83,569 square miles (216,440 km2), Idaho is the 14th-largest state by land area. The state has a population of approximately two million people; it ranks as the 13th-least populous and the seventh-least densely populated of the 50 U.S. states.', '["clm_wiki_idaho_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_idaho_history', 'plc_idaho', 'history', 'History',
   'Etymology [ edit ] In the early 1860s, when the U.S. Congress was considering organizing a new territory around Pikes Peak in the Rocky Mountains , the name "Idaho" was popular among the Congressional committee, as they believed it to be derived from a Shoshone &#91; citation needed &#93; term meaning "gem of the mountains." &#91; 1 &#93; Realizing in January 1861 the name was quite possibly a fabrication and not Native American at all, &#91; 2 &#93; the U.S. Congress ultimately decided to name the area Colorado Territory when it was created. But, by the time this decision was made in February 1861, the town of Idaho Springs, Colorado had already been named after their early frontrunner for a name, Idaho. In 1863, the Territory of Idaho was formed, though "Montana" was nearly its name. &#91; 3 &#93; More than a decade after the name Idaho was first discussed for the eventual Colorado Territory, George M. Willing , a politician, claimed that he had been inspired by a little girl named Ida and that he coined the name in Washington at the time of the Congressional committee when he had been posing as an elected delegate to Congress. &#91; 3 &#93; The same year Congress created Colorado Territory, a county called Idaho County was created in eastern Washington Territory . The county was named after a steamship named Idaho , which was launched on the Columbia River in 1860. It is unclear whether the steamship was named before or after the legitimacy of the Native American origins of "Idaho" came into question. Regardless, part of Washington Territory, including Idaho County, was used to create Idaho Territory in 1863. &#91; 2 &#93; Idaho Territory would later change its boundaries to the area that became the U.S. state. &#91; 4 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0', '["clm_wiki_idaho_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_idaho_geography', 'plc_idaho', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Idaho Humans may have been present in the Idaho area as long as 14,500 years ago. Excavations at Wilson Butte Cave near Twin Falls in 1959 revealed evidence of human activity, including arrowheads, that rank among the oldest dated artifacts in North America. American Indian peoples predominant in the area included the Nez Percé in the north and the Northern and Western Shoshone in the south. &#91; 1 &#93; A Late Upper Paleolithic site was identified at Cooper''s Ferry in western Idaho near the town of Cottonwood by archaeologists in 2019. Based on evidence found at the site, first people lived in this area 15,300 to 16,600 years ago, predating the Beringia land bridge by about a thousand years. The discoverers emphasized that they possess similarities with tools and artifacts discovered in Japan that date from 16,000 to 13,000 years ago. &#91; 1 &#93; &#91; 2 &#93; The discovery also showed that the first people might not have come to North America by land, as previously theorized. On the contrary, they probably came through the water, using a Pacific coastal route. &#91; 3 &#93; .mw-parser-output .templatequote{overflow:hidden;margin:1em 0;padding:0 32px}.mw-parser-output .templatequotecite{line-height:1.5em;text-align:left;margin-top:0}@media(min-width:500px){.mw-parser-output .templatequotecite{padding-left:1.6em}} The most parsimonious explanation we think is that people came down the Pacific Coast, and as they encountered the mouth of the Columbia River, they essentially found an off-ramp from this coastal migration and also found their first viable interior route to the areas t', '["clm_wiki_idaho_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_idaho_demographics', 'plc_idaho', 'demographics', 'Demographics',
   'Geography [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Geography of Idaho .mw-parser-output .ambox{border:1px solid #a2a9b1;border-left:10px solid #36c;background-color:#fbfbfb;box-sizing:border-box}.mw-parser-output .ambox+.mw-empty-elt+.ambox,.mw-parser-output .ambox+.mw-empty-elt+.mw-empty-elt+.ambox,.mw-parser-output .ambox+.mw-empty-elt+.mw-empty-elt+.mw-empty-elt+.ambox{margin-top:-1px}html body.mediawiki .mw-parser-output .ambox.mbox-small-left{margin:4px 1em 4px 0;overflow:hidden;width:238px;border-collapse:collapse;font-size:88%;line-height:1.25em}.mw-parser-output .ambox-speedy{border-left:10px solid #b32424;background-color:#fee7e6}.mw-parser-output .ambox-delete{border-left:10px solid #b32424}.mw-parser-output .ambox-content{border-left:10px solid #f28500}.mw-parser-output .ambox-style{border-left:10px solid #fc3}.mw-parser-output .ambox-move{border-left:10px solid #9932cc}.mw-parser-output .ambox-protection{border-left:10px solid #a2a9b1}.mw-parser-output .ambox .mbox-text{border:none;padding:0.25em 0.5em;width:100%}.mw-parser-output .ambox .mbox-image{border:none;padding:2px 0 2px 0.5em;text-align:center}.mw-parser-output .ambox .mbox-imageright{border:none;padding:2px 0.5em 2px 0;text-align:center}.mw-parser-output .ambox .mbox-empty-cell{border:none;padding:0;width:1px}.mw-parser-output .ambox .mbox-image-div{width:52px}@media(min-width:720px){.mw-parser-output .ambox{margin:0 10%}}@media print{body.ns-0 .mw-parser-output .ambox{display:none!important}} This section needs more citations . Please help improve this section by adding citations to reliable sources . Unsourced material may be challenged and removed . ( April 2022 ) ( ', '["clm_wiki_idaho_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_idaho_primary', 'plc_idaho', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Flag_of_Idaho.svg/3840px-Flag_of_Idaho.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Flag_of_Idaho.svg/330px-Flag_of_Idaho.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Idaho',
   'Idaho', 1, 10, unixepoch());

-- 13. Illinois (state, IL, pop=Illinois)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_illinois', 'place', 'illinois', 'Illinois', 'published', 'en', 25,
   'Illinois is a state in the Midwestern United States. It borders on Lake Michigan to its northeast, the Mississippi River to its west, and the Wabash and Ohio rivers to its south. Of the fifty U.S. states, Illinois has the fifth-largest gross domestic product (GDP), the sixth-largest population, and the 25th-most land area. Its capital city is Springfield in the center of the state, and the state''s largest city is Chicago, located in northeastern Illinois.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_illinois', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_illinois_in_country', 'plc_illinois', 'ent_usa', 'located_in', 0.95, 'clm_wiki_illinois_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_illinois_overview', 'plc_illinois', 'overview', 'Overview',
   'Illinois is a state in the Midwestern United States. It borders on Lake Michigan to its northeast, the Mississippi River to its west, and the Wabash and Ohio rivers to its south. Of the fifty U.S. states, Illinois has the fifth-largest gross domestic product (GDP), the sixth-largest population, and the 25th-most land area. Its capital city is Springfield in the center of the state, and the state''s largest city is Chicago, located in northeastern Illinois.', '["clm_wiki_illinois_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_illinois_history', 'plc_illinois', 'history', 'History',
   'Etymology [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} See also: Illinois Confederation and List of counties in Illinois "Illinois" is the modern spelling for the early French Catholic missionaries and explorers'' name for the Illinois Native Americans , a name that was spelled in many different ways in the early records. &#91; 1 &#93; American scholars previously thought the name Illinois meant ''man'' or ''men'' in the Miami-Illinois language , with the original iliniwek transformed via French into Illinois. &#91; 2 &#93; &#91; 3 &#93; This etymology is not supported by the Illinois language, &#91; 4 &#93; as the word for "man" is ireniwa , and plural of "man" is ireniwaki . The name Illiniwek has also been said to mean ''tribe of superior men'', &#91; 4 &#93; which is a false etymology . The name Illinois derives from the Miami-Illinois verb irenwe·wa ''he speaks the regular way''. This was taken into the Ojibwe language , perhaps in the Ottawa dialect , and modified into ilinwe· (pluralized as ilinwe·k ). The French borrowed these forms, spelling the /we/ ending as -ois , a transliteration of that sound in the French of that time. The current spelling form, Illinois , began to appear in the early 1670s, when French colonists had settled in the western area. The Illinois''s name for themselves, as attested in all three of the French missionary-period dictionaries of Illinois, was Inoka , of unknown meaning and unrelated to the other terms. &#91; 5 &#93; &#91; 4 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/', '["clm_wiki_illinois_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_illinois_geography', 'plc_illinois', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Illinois Pre-European [ edit ] Mississippian copper plate found at the Saddle Site in Union County, Illinois American Indians of successive cultures lived along the waterways of the Illinois area for thousands of years before the arrival of Europeans. The Koster Site has been excavated and demonstrates 7,000 years of continuous habitation. Cahokia , the largest regional chiefdom and urban center of the pre-Columbian Mississippian culture , was located near present-day Collinsville, Illinois . They built an urban complex of more than 100 platform and burial mounds , a 50-acre (20&#160;ha) plaza larger than 35 football fields, &#91; 1 &#93; and a woodhenge of sacred cedar, all in a planned design expressing the culture''s cosmology. Monks Mound , the center of the site, is the largest Pre-Columbian structure north of the Valley of Mexico . It is 100&#160;ft (30&#160;m) high, 951&#160;ft (290&#160;m) long, 836&#160;ft (255&#160;m) wide, and covers 13.8 acres (5.6&#160;ha). &#91; 2 &#93; It contains about 814,000&#160;cu&#160;yd (622,000&#160;m 3 ) of earth. &#91; 3 &#93; It was topped by a structure thought to have measured about 105&#160;ft (32&#160;m) in length and 48&#160;ft (15&#160;m) in width, covered an area 5,000&#160;sq&#160;ft (460&#160;m 2 ), and been as much as 50&#160;ft (15&#160;m) high, making its peak 150&#160;ft (46&#160;m) above the level of the plaza. The finely crafted ornaments and tools recovered by archaeologists at Cahokia include elaborate ceramics, finely sculptured stonework, carefully embossed and engraved copper and mica sheets, and one funeral blanket for a', '["clm_wiki_illinois_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_illinois_demographics', 'plc_illinois', 'demographics', 'Demographics',
   'Pre-European [ edit ] Mississippian copper plate found at the Saddle Site in Union County, Illinois American Indians of successive cultures lived along the waterways of the Illinois area for thousands of years before the arrival of Europeans. The Koster Site has been excavated and demonstrates 7,000 years of continuous habitation. Cahokia , the largest regional chiefdom and urban center of the pre-Columbian Mississippian culture , was located near present-day Collinsville, Illinois . They built an urban complex of more than 100 platform and burial mounds , a 50-acre (20&#160;ha) plaza larger than 35 football fields, &#91; 1 &#93; and a woodhenge of sacred cedar, all in a planned design expressing the culture''s cosmology. Monks Mound , the center of the site, is the largest Pre-Columbian structure north of the Valley of Mexico . It is 100&#160;ft (30&#160;m) high, 951&#160;ft (290&#160;m) long, 836&#160;ft (255&#160;m) wide, and covers 13.8 acres (5.6&#160;ha). &#91; 2 &#93; It contains about 814,000&#160;cu&#160;yd (622,000&#160;m 3 ) of earth. &#91; 3 &#93; It was topped by a structure thought to have measured about 105&#160;ft (32&#160;m) in length and 48&#160;ft (15&#160;m) in width, covered an area 5,000&#160;sq&#160;ft (460&#160;m 2 ), and been as much as 50&#160;ft (15&#160;m) high, making its peak 150&#160;ft (46&#160;m) above the level of the plaza. The finely crafted ornaments and tools recovered by archaeologists at Cahokia include elaborate ceramics, finely sculptured stonework, carefully embossed and engraved copper and mica sheets, and one funeral blanket for an important chief fashioned from 20,000 shell beads. These artifacts indicate that Cahokia was truly an urban center, with clustered housing, markets, and specialists in toolmaking, hide dressing, potting, jewelry making, shell engraving, weaving and salt making. &#91; 4 &#93; The civilization vanished in the 15th century for unknown reasons, but historians and archeologists have speculated that t', '["clm_wiki_illinois_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_illinois_primary', 'plc_illinois', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Flag_of_Illinois.svg/500px-Flag_of_Illinois.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Flag_of_Illinois.svg/330px-Flag_of_Illinois.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Illinois',
   'Illinois', 1, 10, unixepoch());

-- 14. Indiana (state, IN, pop=Indiana)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_indiana', 'place', 'indiana', 'Indiana', 'published', 'en', 25,
   'Indiana is a state in the Midwestern region of the United States. It borders Lake Michigan to the northwest, Michigan to the north and northeast, Ohio to the east, the Ohio River and Kentucky to the south and southeast, and the Wabash River and Illinois to the west. Nicknamed "the Hoosier State", Indiana is the 38th-largest by area and the 17th-most populous of the 50 states. The state''s capital and largest city is Indianapolis. Indiana was admitted to the Union as the 19th state on December 11, 1816.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_indiana', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_indiana_in_country', 'plc_indiana', 'ent_usa', 'located_in', 0.95, 'clm_wiki_indiana_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_indiana_overview', 'plc_indiana', 'overview', 'Overview',
   'Indiana is a state in the Midwestern region of the United States. It borders Lake Michigan to the northwest, Michigan to the north and northeast, Ohio to the east, the Ohio River and Kentucky to the south and southeast, and the Wabash River and Illinois to the west. Nicknamed "the Hoosier State", Indiana is the 38th-largest by area and the 17th-most populous of the 50 states. The state''s capital and largest city is Indianapolis. Indiana was admitted to the Union as the 19th state on December 11, 1816.', '["clm_wiki_indiana_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_indiana_history', 'plc_indiana', 'history', 'History',
   'Hoosier [ edit ] A native or resident of Indiana is known as a Hoosier . &#91; 1 &#93; The etymology of this word is disputed, but the leading theory, advanced by the Indiana Historical Bureau and the Indiana Historical Society, has its origin in Virginia, Kentucky, the Carolinas, and Tennessee (the Upland South ) as a term for a backwoodsman, a rough countryman, or a country bumpkin. &#91; 2 &#93; &#91; 3 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-ws-icon a{background-size:contain;padding:0 1em 0 0}.mw-parser-output .cs1-code{color:inherit;background:inherit;border:none;padding:inherit}.mw-parser-output .cs1-hidden-error{display:none;color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-visible-error{color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-maint{display:none;color:#085;margin-left:0.3em}.mw-parser-output .cs1-kern-left{padding-left:0.2em}.mw-parser-output .cs1-kern-right{padding-right:0.2em}.mw-parser-output .citation .mw-selflink{font-weight:inherit}@media screen{.mw-parser-output .cs1-format{font-size:95%}html.skin-theme-clientpref-night .mw-parser-output .cs1-maint{color:#18911f}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .cs1-mai', '["clm_wiki_indiana_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_indiana_geography', 'plc_indiana', 'geography', 'Geography',
   'Hoosier [ edit ] A native or resident of Indiana is known as a Hoosier . &#91; 1 &#93; The etymology of this word is disputed, but the leading theory, advanced by the Indiana Historical Bureau and the Indiana Historical Society, has its origin in Virginia, Kentucky, the Carolinas, and Tennessee (the Upland South ) as a term for a backwoodsman, a rough countryman, or a country bumpkin. &#91; 2 &#93; &#91; 3 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-ws-icon a{background-size:contain;padding:0 1em 0 0}.mw-parser-output .cs1-code{color:inherit;background:inherit;border:none;padding:inherit}.mw-parser-output .cs1-hidden-error{display:none;color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-visible-error{color:va', '["clm_wiki_indiana_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_indiana_demographics', 'plc_indiana', 'demographics', 'Demographics',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Indiana See also: Outline of Indiana §&#160;History Indigenous inhabitants [ edit ] Angel Mounds State Historic Site was one of the northernmost Mississippian culture settlements, occupied from 1100 to 1450. The first inhabitants in what is now Indiana were the Paleo-Indians , who arrived about 8000 BC after the melting of the glaciers at the end of the Ice Age . Divided into small groups, the Paleo-Indians were nomads who hunted large game such as mastodons . They created stone tools made out of chert by chipping, knapping and flaking . &#91; 1 &#93; The Archaic period between 5000 and 4000 BC saw the development of new ground-stone tools the building of earthwork mounds and middens , suggesting that settlements were becoming more permanent. &#91; 1 &#93; The Woodland period began around 1500 BC marked by ceramics and pottery and the extended cultivation of plants eventually including crops such as corn and squash , and the development of long-term trade, notably by the Hopewell people . &#91; 1 &#93; The Mississippian culture emerged, lasting from 1000 AD until the 15th century, shortly before the arrival of Europeans. During this stage, people created large urban settlements designed according to their cosmology , with large mounds and plazas defining ceremonial and public spaces. The concentrated settlements depended on the agricultural surpluses. One such complex was the Angel Mounds . They had large public areas such as plazas and platform mounds, where leaders lived or conducted rituals. Mississippian civilization collapsed in Indiana during the mid-15th century for reasons t', '["clm_wiki_indiana_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_indiana_primary', 'plc_indiana', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Flag_of_Indiana.svg/960px-Flag_of_Indiana.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Flag_of_Indiana.svg/330px-Flag_of_Indiana.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Indiana',
   'Indiana', 1, 10, unixepoch());

-- 15. Iowa (state, IA, pop=Iowa)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_iowa', 'place', 'iowa', 'Iowa', 'published', 'en', 25,
   'Iowa is a landlocked state in the upper Midwestern region of the United States. It borders the Mississippi River to the east and the Missouri River and Big Sioux River to the west; Wisconsin to the northeast, Illinois to the east and southeast, Missouri to the south, Nebraska to the west, South Dakota to the northwest, and Minnesota to the north. Iowa is the 26th largest in total area and the 31st most populous of the 50 U.S. states, with a population of 3.19 million. The state''s capital, most populous city, and largest metropolitan area fully located within the state is Des Moines.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_iowa', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_iowa_in_country', 'plc_iowa', 'ent_usa', 'located_in', 0.95, 'clm_wiki_iowa_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_iowa_overview', 'plc_iowa', 'overview', 'Overview',
   'Iowa is a landlocked state in the upper Midwestern region of the United States. It borders the Mississippi River to the east and the Missouri River and Big Sioux River to the west; Wisconsin to the northeast, Illinois to the east and southeast, Missouri to the south, Nebraska to the west, South Dakota to the northwest, and Minnesota to the north. Iowa is the 26th largest in total area and the 31st most populous of the 50 U.S. states, with a population of 3.19 million. The state''s capital, most populous city, and largest metropolitan area fully located within the state is Des Moines.', '["clm_wiki_iowa_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_iowa_history', 'plc_iowa', 'history', 'History',
   'Etymology [ edit ] Like many other states , Iowa takes its name from its predecessor, Iowa Territory , whose name in turn is derived from the Iowa River , and ultimately from the ethnonym of the indigenous Ioway people . The Ioway are a Chiwere -speaking Siouan Nation , who were once part of the Ho-Chunk Confederation that inhabited the area now corresponding to several Midwest states. The Ioway were one of the many Native American nations whose territory comprised the future state of Iowa before the time of European colonization. &#91; 1 &#93; Meanwhile, the state nickname , being called the "Hawkeye State" comes from James Fennimore Cooper''s second book in his Leatherstocking Tales pentalogy , The Last of the Mohicans: A Narrative of 1757 (published in 1826). Several influential people in Iowa at the time promoted the nickname, including Judge David Rorer and Newspaper editor James G. Edwards, who renamed his newspaper to The Hawk-Eye and Iowa Patriot and eventually to just the Hawk-Eye . The name received official recognition by Iowa Territory Governor Robert Lucas in 1838, when he and several members of his cabinet agreed upon its appropriateness. &#91; 2 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-', '["clm_wiki_iowa_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_iowa_geography', 'plc_iowa', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Iowa See also: Native American tribes in Iowa Prehistory [ edit ] Main articles: Iowa archaeology and American Indians of Iowa Excavation of the 3,800-year-old Edgewater Park Site When Indigenous peoples of the Americas first arrived in what is now Iowa more than 13,000 years ago, they were hunters and gatherers living in a Pleistocene glacial landscape. By the time European explorers and traders visited Iowa, Native Americans were largely settled farmers with complex economic, social, and political systems. This transformation happened gradually. During the Archaic period (10,500 to 2,800 years ago), Native Americans adapted to local environments and ecosystems, slowly becoming more sedentary as populations increased. &#91; 1 &#93; More than 3,000 years ago, during the Late Archaic period , Native Americans in Iowa began utilizing domesticated plants. The subsequent Woodland period saw an increased reliance on agriculture and social complexity, with increased use of mounds, ceramics, and specialized subsistence. During the Late Prehistoric period (beginning about AD 900) increased use of maize and social changes led to social flourishing and nucleated settlements. &#91; 1 &#93; The arrival of European trade goods and diseases in the Protohistoric period led to dramatic population shifts and economic and social upheaval, with the arrival of new tribes and early European explorers and traders. There were numerous native American tribes living in Iowa at the time of early European exploration. Tribes which were probably descendants of the prehistoric Oneota include the Dakota , Ho-Chu', '["clm_wiki_iowa_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_iowa_demographics', 'plc_iowa', 'demographics', 'Demographics',
   'Prehistory [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main articles: Iowa archaeology and American Indians of Iowa Excavation of the 3,800-year-old Edgewater Park Site When Indigenous peoples of the Americas first arrived in what is now Iowa more than 13,000 years ago, they were hunters and gatherers living in a Pleistocene glacial landscape. By the time European explorers and traders visited Iowa, Native Americans were largely settled farmers with complex economic, social, and political systems. This transformation happened gradually. During the Archaic period (10,500 to 2,800 years ago), Native Americans adapted to local environments and ecosystems, slowly becoming more sedentary as populations increased. &#91; 1 &#93; More than 3,000 years ago, during the Late Archaic period , Native Americans in Iowa began utilizing domesticated plants. The subsequent Woodland period saw an increased reliance on agriculture and social complexity, with increased use of mounds, ceramics, and specialized subsistence. During the Late Prehistoric period (beginning about AD 900) increased use of maize and social changes led to social flourishing and nucleated settlements. &#91; 1 &#93; The arrival of European trade goods and diseases in the Protohistoric period led to dramatic population shifts and economic and social upheaval, with the arrival of new tribes and early European explorers and traders. There were numerous native American tribes living in Iowa at the time of early European exploration. Tribes which were probably descendants of the prehistoric Oneota include the Dakota , Ho-Chunk , Ioway , and Otoe . Tribes which arrived in Iowa in the late prehistoric or protohis', '["clm_wiki_iowa_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_iowa_primary', 'plc_iowa', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Flag_of_Iowa.svg/960px-Flag_of_Iowa.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Flag_of_Iowa.svg/330px-Flag_of_Iowa.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Iowa',
   'Iowa', 1, 10, unixepoch());

-- 16. Kansas (state, KS, pop=Kansas)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_kansas', 'place', 'kansas', 'Kansas', 'published', 'en', 25,
   'Kansas is a landlocked state in the Midwestern region of the United States. It borders Nebraska to the north, Colorado to the west, Oklahoma to the south, and Missouri to the east. Kansas is named after the Kansas River, in turn named after the Kansa people. Its capital is Topeka, and its most populous city is Wichita; however, the largest urban area is the bi-state Kansas City metropolitan area surrounding Kansas City, Missouri, which straddles the border of Kansas and Missouri.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_kansas', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_kansas_in_country', 'plc_kansas', 'ent_usa', 'located_in', 0.95, 'clm_wiki_kansas_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_kansas_overview', 'plc_kansas', 'overview', 'Overview',
   'Kansas is a landlocked state in the Midwestern region of the United States. It borders Nebraska to the north, Colorado to the west, Oklahoma to the south, and Missouri to the east. Kansas is named after the Kansas River, in turn named after the Kansa people. Its capital is Topeka, and its most populous city is Wichita; however, the largest urban area is the bi-state Kansas City metropolitan area surrounding Kansas City, Missouri, which straddles the border of Kansas and Missouri.', '["clm_wiki_kansas_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_kansas_history', 'plc_kansas', 'history', 'History',
   'Etymology [ edit ] .mw-parser-output .ambox{border:1px solid #a2a9b1;border-left:10px solid #36c;background-color:#fbfbfb;box-sizing:border-box}.mw-parser-output .ambox+.mw-empty-elt+.ambox,.mw-parser-output .ambox+.mw-empty-elt+.mw-empty-elt+.ambox,.mw-parser-output .ambox+.mw-empty-elt+.mw-empty-elt+.mw-empty-elt+.ambox{margin-top:-1px}html body.mediawiki .mw-parser-output .ambox.mbox-small-left{margin:4px 1em 4px 0;overflow:hidden;width:238px;border-collapse:collapse;font-size:88%;line-height:1.25em}.mw-parser-output .ambox-speedy{border-left:10px solid #b32424;background-color:#fee7e6}.mw-parser-output .ambox-delete{border-left:10px solid #b32424}.mw-parser-output .ambox-content{border-left:10px solid #f28500}.mw-parser-output .ambox-style{border-left:10px solid #fc3}.mw-parser-output .ambox-move{border-left:10px solid #9932cc}.mw-parser-output .ambox-protection{border-left:10px solid #a2a9b1}.mw-parser-output .ambox .mbox-text{border:none;padding:0.25em 0.5em;width:100%}.mw-parser-output .ambox .mbox-image{border:none;padding:2px 0 2px 0.5em;text-align:center}.mw-parser-output .ambox .mbox-imageright{border:none;padding:2px 0.5em 2px 0;text-align:center}.mw-parser-output .ambox .mbox-empty-cell{border:none;padding:0;width:1px}.mw-parser-output .ambox .mbox-image-div{width:52px}@media(min-width:720px){.mw-parser-output .ambox{margin:0 10%}}@media print{body.ns-0 .mw-parser-output .ambox{display:none!important}} This section appears to contradict itself . Please see the talk page for more information. ( July 2026 ) The name Kansas derives from the Algonquian term Akansa , referring to the Quapaw people. These were a Dhegiha Siouan -speaking people who settled in Arkansas around the 13th century. The stem - kansa is named after the Kaw people , also known as the Kansa , a federally recognized Native American tribe. &#91; 1 &#93; The tribe ''s name (natively kką:ze ) is often said to mean "people of the (south) wind", although this was probably not the term''s original meaning. &#91; 2 &#93; &#91; 3 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-r', '["clm_wiki_kansas_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_kansas_geography', 'plc_kansas', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Kansas .mw-parser-output .stack{box-sizing:border-box}.mw-parser-output .stack>div{margin:1px;overflow:hidden}@media all and (min-width:720px){.mw-parser-output .stack-clear-left{float:left;clear:left}.mw-parser-output .stack-clear-right{float:right;clear:right}.mw-parser-output .stack-left{float:left}.mw-parser-output .stack-right{float:right}.mw-parser-output .stack-margin-clear-left{float:left;clear:left;margin-right:1em}.mw-parser-output .stack-margin-clear-right{float:right;clear:right;margin-left:1em}.mw-parser-output .stack-margin-left{float:left;margin-right:1em}.mw-parser-output .stack-margin-right{float:right;margin-left:1em}} Samuel Seymour''s 1819 illustration of a Kansa lodge and dance is the oldest drawing known to have been done in Kansas. Before European colonization , Kansas was occupied by the Caddoan Wichita and later the Siouan Kaw people . The Indigenous people in the eastern part of the state generally lived in villages along the river valleys. Those in the western part of the state were semi-nomadic and hunted large herds of bison . &#91; citation needed &#93; The first European to set foot in present-day Kansas was the Spanish conquistador Francisco Vázquez de Coronado , who explored the area in 1541. &#91; citation needed &#93; Between 1763 and 1803, the territory of Kansas was integrated into Spanish Louisiana . During that period, Governor Luis de Unzaga ''le Conciliateur'' promoted expeditions and good relations with the Amerindians . Explorer Antoine de Marigny and others continued trading across the Kansas River , especially at its confluence with the Miss', '["clm_wiki_kansas_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_kansas_demographics', 'plc_kansas', 'demographics', 'Demographics',
   'Bleeding Kansas and the Civil War [ edit ] The first non-military settlement of Euro-Americans in Kansas Territory consisted of abolitionists from Massachusetts and other Free-Staters who founded the town of Lawrence and attempted to stop the spread of slavery from neighboring Missouri. Missouri and Arkansas continually sent settlers into Kansas Territory along its eastern border to sway votes in favor of slavery prior to Kansas statehood elections. Directly presaging the American Civil War these forces collided, entering into skirmishes and guerrilla conflicts that earned the territory the nickname Bleeding Kansas . These included John Brown ''s Pottawatomie massacre of 1856. Kansas was admitted to the Union as a free state on January 29, 1861, making it the 34th state to join the United States. By that time, the violence in Kansas had largely subsided, but during the Civil War, on August 21, 1863, William Quantrill led several hundred of his supporters on a raid into Lawrence , destroying much of the city and killing nearly 200 people. He was roundly condemned by both the conventional Confederate military and the partisan rangers commissioned by the Missouri legislature . His application to that body for a commission was flatly rejected due to his pre-war criminal record. &#91; 1 &#93; ^ Jones, Gray Ghosts and Rebel Riders Holt &amp; Co. 1956, p. 76', '["clm_wiki_kansas_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_kansas_primary', 'plc_kansas', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Flag_of_Kansas.svg/500px-Flag_of_Kansas.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Flag_of_Kansas.svg/330px-Flag_of_Kansas.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Kansas',
   'Kansas', 1, 10, unixepoch());

-- 17. Kentucky (state, KY, pop=Kentucky)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_kentucky', 'place', 'kentucky', 'Kentucky', 'published', 'en', 25,
   'Kentucky, officially the Commonwealth of Kentucky, is a landlocked state in the Southeastern region of the United States. It borders Illinois, Indiana, and Ohio to the north, West Virginia to the northeast, Virginia to the east, Tennessee to the south, and Missouri to the west. Its northern border is defined by the Ohio River. Its capital is Frankfort and its most populous city is Louisville. As of 2024, the state''s population was approximately 4.6 million.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_kentucky', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_kentucky_in_country', 'plc_kentucky', 'ent_usa', 'located_in', 0.95, 'clm_wiki_kentucky_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_kentucky_overview', 'plc_kentucky', 'overview', 'Overview',
   'Kentucky, officially the Commonwealth of Kentucky, is a landlocked state in the Southeastern region of the United States. It borders Illinois, Indiana, and Ohio to the north, West Virginia to the northeast, Virginia to the east, Tennessee to the south, and Missouri to the west. Its northern border is defined by the Ohio River. Its capital is Frankfort and its most populous city is Louisville. As of 2024, the state''s population was approximately 4.6 million.', '["clm_wiki_kentucky_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_kentucky_history', 'plc_kentucky', 'history', 'History',
   'Etymology [ edit ] Prior to 1769, Botetourt County and successor counties in the Colony of Virginia , whose geographical extent was south of the Ohio and Allegheny Rivers beyond the Appalachian Mountains , became known to European Americans as Kentucky (or Kentucke) country . It was named for the Kentucky River , a tributary of the Ohio. &#91; 1 &#93; The precise etymology of the name is uncertain. &#91; 2 &#93; One theory sees the word based on an Iroquoian name meaning "(on) the meadow" or "(on) the prairie" &#91; 3 &#93; &#91; 4 &#93; ( cf. Mohawk kenhtà:ke ; Seneca gëdá''geh ( &#91;kɛ̃taʔkɛh&#93; ), both meaning "at the field"). &#91; 5 &#93; Another theory suggests a derivation from the term Kenta Aki , which could have come from an Algonquian language , in particular from Shawnee . Folk etymology translates this as "Land of Our Fathers". The closest approximation in another Algonquian language, Ojibwe , translates as "Land of Our In-Laws", thus making a fairer English translation "The Land of Those Who Became Our Fathers". &#91; 6 &#93; In any case, the word aki means "land" in most Algonquian languages. ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-ws-icon a{background-size:contain;padding:0 1em 0 0}.mw-p', '["clm_wiki_kentucky_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_kentucky_geography', 'plc_kentucky', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Kentucky Native American settlement [ edit ] The first archaeological evidence of human occupation of Kentucky is approximately 9500 BCE, and it was Clovis culture , primitive hunter-gatherers with stone tools. Around 1800 BCE, a gradual transition began from a hunter-gatherer economy to agriculturalism. Around 900 CE, a Mississippian culture took root in western and central Kentucky and a Fort Ancient culture appeared in eastern Kentucky. While the two had many similarities, the distinctive ceremonial earthwork mounds constructed in the former''s centers were not part of the culture of the latter. Fort Ancient settlements depended largely on corn, beans, and squash, and practiced a system of agriculture that prevented ecological degradation by rotating crops, burning sections of forest to create ideal habitat for wild game, relocating villages every 10–30 years, and continually shifting the location of fields to maintain plots of land in various stages of ecological succession . &#91; 1 &#93; In about the 10th century, the Kentucky native people''s variety of corn became highly productive, supplanting the Eastern Agricultural Complex and replacing it with maize-based agriculture in the Mississippian era . As of the 16th century, what became Kentucky was home to tribes from diverse linguistic groups. The Kispoko , an Algonquian-speaking tribe, controlled much of the interior of the state. &#91; 2 &#93; French explorers in the 17th century documented numerous tribes living in Kentucky until the Beaver Wars in the 1670s; however, by the time that European colonial explorers and settlers', '["clm_wiki_kentucky_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_kentucky_demographics', 'plc_kentucky', 'demographics', 'Demographics',
   'Native American settlement [ edit ] The first archaeological evidence of human occupation of Kentucky is approximately 9500 BCE, and it was Clovis culture , primitive hunter-gatherers with stone tools. Around 1800 BCE, a gradual transition began from a hunter-gatherer economy to agriculturalism. Around 900 CE, a Mississippian culture took root in western and central Kentucky and a Fort Ancient culture appeared in eastern Kentucky. While the two had many similarities, the distinctive ceremonial earthwork mounds constructed in the former''s centers were not part of the culture of the latter. Fort Ancient settlements depended largely on corn, beans, and squash, and practiced a system of agriculture that prevented ecological degradation by rotating crops, burning sections of forest to create ideal habitat for wild game, relocating villages every 10–30 years, and continually shifting the location of fields to maintain plots of land in various stages of ecological succession . &#91; 1 &#93; In about the 10th century, the Kentucky native people''s variety of corn became highly productive, supplanting the Eastern Agricultural Complex and replacing it with maize-based agriculture in the Mississippian era . As of the 16th century, what became Kentucky was home to tribes from diverse linguistic groups. The Kispoko , an Algonquian-speaking tribe, controlled much of the interior of the state. &#91; 2 &#93; French explorers in the 17th century documented numerous tribes living in Kentucky until the Beaver Wars in the 1670s; however, by the time that European colonial explorers and settlers began entering Kentucky in greater numbers in the mid-18th century, there were no major Native American settlements in the region. &#91; 3 &#93; &#91; additional citation(s) needed &#93; The Chickasaw had territory up to the confluence of Mississippi and Ohio rivers. During a period known as the Beaver Wars (1640–1680), another Algonquian tribe called the Maumee , or Mascouten was chased out of s', '["clm_wiki_kentucky_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_kentucky_primary', 'plc_kentucky', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Flag_of_Kentucky.svg/960px-Flag_of_Kentucky.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Flag_of_Kentucky.svg/330px-Flag_of_Kentucky.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Kentucky',
   'Kentucky', 1, 10, unixepoch());

-- 18. Louisiana (state, LA, pop=Louisiana)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_louisiana', 'place', 'louisiana', 'Louisiana', 'published', 'en', 25,
   'Louisiana is a state in the Deep South and South Central regions of the United States. It is bordered by Texas to the west, Arkansas to the north, and Mississippi to the east. Of the 50 U.S. states, it ranks 31st in area and 25th in population, with roughly 4.6 million residents. Reflecting its French heritage, Louisiana is the only U.S. state with political subdivisions termed parishes, which are equivalent to counties, making it one of only two U.S. states not subdivided into counties. Baton Rouge is the state''s capital, and New Orleans, a French Louisiana region, is its most populous city with a population of about 363,000 people. Louisiana has a coastline with the Gulf of Mexico to the south; a large part of its eastern boundary is demarcated by the Mississippi River; and the mouth of the Mississippi or delta defines much of its lower topography.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_louisiana', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_louisiana_in_country', 'plc_louisiana', 'ent_usa', 'located_in', 0.95, 'clm_wiki_louisiana_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_louisiana_overview', 'plc_louisiana', 'overview', 'Overview',
   'Louisiana is a state in the Deep South and South Central regions of the United States. It is bordered by Texas to the west, Arkansas to the north, and Mississippi to the east. Of the 50 U.S. states, it ranks 31st in area and 25th in population, with roughly 4.6 million residents. Reflecting its French heritage, Louisiana is the only U.S. state with political subdivisions termed parishes, which are equivalent to counties, making it one of only two U.S. states not subdivided into counties. Baton Rouge is the state''s capital, and New Orleans, a French Louisiana region, is its most populous city with a population of about 363,000 people. Louisiana has a coastline with the Gulf of Mexico to the south; a large part of its eastern boundary is demarcated by the Mississippi River; and the mouth of the Mississippi or delta defines much of its lower topography.', '["clm_wiki_louisiana_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_louisiana_history', 'plc_louisiana', 'history', 'History',
   'Etymology [ edit ] Louisiana was named after Louis XIV , King of France from 1643 to 1715. When René-Robert Cavelier, Sieur de La Salle claimed the territory drained by the Mississippi River for France, he named it La Louisiane . &#91; 1 &#93; The suffix –ana (or –ane) is a Latin suffix that can refer to "information relating to a particular individual, subject, or place." Thus, roughly, Louis + ana carries the idea of "related to Louis". Once part of the French colonial empire , the Louisiana Territory stretched from present-day Mobile Bay to just north of the present-day Canada–United States border , including a small part of what are now the Canadian provinces of Alberta and Saskatchewan . ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-ws-icon a{background-size:contain;padding:0 1em 0 0}.mw-parser-output .cs1-code{color:inherit;background:inherit;border:none;padding:inherit}.mw-parser-output .cs1-hidden-error{display:none;color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-visible-error{color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-maint{display:none;color:#085;margin-left:0.3em}.mw-parser-output .cs1-kern-left{padding-left:0.2em}.mw-parser-output .cs1-kern-right{padding-right:0.2em}.mw-parser-o', '["clm_wiki_louisiana_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_louisiana_geography', 'plc_louisiana', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Louisiana Pre–colonial history [ edit ] Further information: Indigenous peoples of the Southeastern Woodlands Watson Brake , the oldest mound complex in North America The area of Louisiana is the place of origin of the Mound Builders culture during the Middle Archaic period , in the 4th millennium BC . The sites of Caney and Frenchman''s Bend have been securely dated to 5600–5000 BP (about 3700–3100 BC), demonstrating that seasonal hunter-gatherers from around this time organized to build complex earthwork constructions in what is now northern Louisiana. The Watson Brake site near present-day Monroe has an eleven-mound complex; it was built about 5400 BP (3500 BC). &#91; 1 &#93; These discoveries overturned previous assumptions in archaeology that such complex mounds were built only by cultures of more settled peoples who were dependent on maize cultivation. The Hedgepeth Site in Lincoln Parish is more recent, dated to 5200–4500 BP (3300–2600 BC). &#91; 2 &#93; Poverty Point UNESCO site Nearly 2,000 years later, Poverty Point was built; it is the largest and best-known Late Archaic site in the state. The city of modern–day Epps developed near it. The Poverty Point culture may have reached its peak around 1500 BC, making it the first complex culture, and possibly the first tribal culture in North America. &#91; 3 &#93; It lasted until approximately 700 BC. The Poverty Point culture was followed by the Tchefuncte and Lake Cormorant cultures of the Tchula period , local manifestations of Early Woodland period . The Tchefuncte culture were the first people in the area of Louisiana to mak', '["clm_wiki_louisiana_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_louisiana_demographics', 'plc_louisiana', 'demographics', 'Demographics',
   'Pre–colonial history [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Further information: Indigenous peoples of the Southeastern Woodlands Watson Brake , the oldest mound complex in North America The area of Louisiana is the place of origin of the Mound Builders culture during the Middle Archaic period , in the 4th millennium BC . The sites of Caney and Frenchman''s Bend have been securely dated to 5600–5000 BP (about 3700–3100 BC), demonstrating that seasonal hunter-gatherers from around this time organized to build complex earthwork constructions in what is now northern Louisiana. The Watson Brake site near present-day Monroe has an eleven-mound complex; it was built about 5400 BP (3500 BC). &#91; 1 &#93; These discoveries overturned previous assumptions in archaeology that such complex mounds were built only by cultures of more settled peoples who were dependent on maize cultivation. The Hedgepeth Site in Lincoln Parish is more recent, dated to 5200–4500 BP (3300–2600 BC). &#91; 2 &#93; Poverty Point UNESCO site Nearly 2,000 years later, Poverty Point was built; it is the largest and best-known Late Archaic site in the state. The city of modern–day Epps developed near it. The Poverty Point culture may have reached its peak around 1500 BC, making it the first complex culture, and possibly the first tribal culture in North America. &#91; 3 &#93; It lasted until approximately 700 BC. The Poverty Point culture was followed by the Tchefuncte and Lake Cormorant cultures of the Tchula period , local manifestations of Early Woodland period . The Tchefuncte culture were the first people in the area of Louisiana to make large amounts of pottery. &#91; 4 &#93; These cult', '["clm_wiki_louisiana_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_louisiana_primary', 'plc_louisiana', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Flag_of_Louisiana.svg/3840px-Flag_of_Louisiana.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Flag_of_Louisiana.svg/330px-Flag_of_Louisiana.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Louisiana',
   'Louisiana', 1, 10, unixepoch());

-- 19. Maine (state, ME, pop=Maine)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_maine', 'place', 'maine', 'Maine', 'published', 'en', 25,
   'Maine is a state in the New England region of the United States, and the northeasternmost state in the contiguous United States. It borders New Hampshire to the west, the Gulf of Maine to the southeast, and the Canadian provinces of New Brunswick and Quebec to the northeast and northwest, and shares a maritime border with Nova Scotia. It is the only state to border only one other state. Maine is the largest state in New England by total area, almost as large as the combined area of the remaining five states. Of the 50 U.S. states, it is the 12th-smallest by area, the 9th-least populous, the 13th-least densely populated, and the most rural. As of 2024, Maine''s population stood at a Census-estimated 1,400,000, the state''s highest-ever population estimate. Maine''s capital is Augusta, while its most populous city is Portland.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_maine', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_maine_in_country', 'plc_maine', 'ent_usa', 'located_in', 0.95, 'clm_wiki_maine_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_maine_overview', 'plc_maine', 'overview', 'Overview',
   'Maine is a state in the New England region of the United States, and the northeasternmost state in the contiguous United States. It borders New Hampshire to the west, the Gulf of Maine to the southeast, and the Canadian provinces of New Brunswick and Quebec to the northeast and northwest, and shares a maritime border with Nova Scotia. It is the only state to border only one other state. Maine is the largest state in New England by total area, almost as large as the combined area of the remaining five states. Of the 50 U.S. states, it is the 12th-smallest by area, the 9th-least populous, the 13th-least densely populated, and the most rural. As of 2024, Maine''s population stood at a Census-estimated 1,400,000, the state''s highest-ever population estimate. Maine''s capital is Augusta, while its most populous city is Portland.', '["clm_wiki_maine_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_maine_history', 'plc_maine', 'history', 'History',
   'U.S. state .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} This article is about the U.S. state. For other uses, see Maine (disambiguation) . Not to be confused with Main . State in the United States @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-settlement{border-collapse:collapse;line-height:1.2em}@media(min-width:640px){.mw-parser-output .ib-settlement{width:23em}}.mw-parser-output .ib-settlement td,.mw-parser-output .ib-settlement th{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.4em 0.6em}.mw-parser-output .ib-settlement .mergedtoprow .infobox-full-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-header,.mw-parser-output .ib-settlement .mergedtoprow .infobox-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-label,.mw-parser-output .ib-settlement .mergedtoprow .infobox-below{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.2em 0.6em}.mw-parser-output .ib-sett', '["clm_wiki_maine_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_maine_geography', 'plc_maine', 'geography', 'Geography',
   'Political history [ edit ] Many notable politicians have shaped the history of Maine, including many notable senators . During the 19th century, Hannibal Hamlin , who served as Senator and briefly Governor, was the running mate of Republican, Abraham Lincoln , and served one term as vice-president from 1861 to 1865 before being replaced by Andrew Johnson of Tennessee , while Senator and Congressman, James G. Blaine , nicknamed the " Plumed Knight ", served many top positions such as Speaker of the House and Secretary of State . He was the major Republican candidate in the 1884 United States presidential election , losing narrowly to Grover Cleveland . In the 20th century, Republican, Margaret Chase Smith made history as the first woman to serve in both the House and Senate , when elected in 1948. In 1950, she delivered her famed Declaration of Conscience speech, that defended civil liberties in the wake of McCarthyism , while Democrat Edmund Muskie , who served as Governor and Senator, was the running mate of vice-president incumbent, Hubert Humphrey in 1968 United States presidential election and briefly served as Secretary of State in 1980 under Jimmy Carter .', '["clm_wiki_maine_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_maine_demographics', 'plc_maine', 'demographics', 'Demographics',
   'Political history [ edit ] Many notable politicians have shaped the history of Maine, including many notable senators . During the 19th century, Hannibal Hamlin , who served as Senator and briefly Governor, was the running mate of Republican, Abraham Lincoln , and served one term as vice-president from 1861 to 1865 before being replaced by Andrew Johnson of Tennessee , while Senator and Congressman, James G. Blaine , nicknamed the " Plumed Knight ", served many top positions such as Speaker of the House and Secretary of State . He was the major Republican candidate in the 1884 United States presidential election , losing narrowly to Grover Cleveland . In the 20th century, Republican, Margaret Chase Smith made history as the first woman to serve in both the House and Senate , when elected in 1948. In 1950, she delivered her famed Declaration of Conscience speech, that defended civil liberties in the wake of McCarthyism , while Democrat Edmund Muskie , who served as Governor and Senator, was the running mate of vice-president incumbent, Hubert Humphrey in 1968 United States presidential election and briefly served as Secretary of State in 1980 under Jimmy Carter .', '["clm_wiki_maine_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_maine_primary', 'plc_maine', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Flag_of_the_State_of_Maine.svg/1920px-Flag_of_the_State_of_Maine.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Flag_of_the_State_of_Maine.svg/330px-Flag_of_the_State_of_Maine.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Maine',
   'Maine', 1, 10, unixepoch());

-- 20. Maryland (state, MD, pop=Maryland)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_maryland', 'place', 'maryland', 'Maryland', 'published', 'en', 25,
   'Maryland is a state in the Mid-Atlantic and Southeastern regions of the United States. It borders Virginia to its south, West Virginia to its west, Pennsylvania to its north, and Delaware to its east, as well as with the Atlantic Ocean to its east, and the national capital and federal district of Washington, D.C. to the southwest. With a total area of 12,407 square miles (32,130 km2), Maryland is the ninth-smallest state by land area, and its population of 6.1 million ranks it the 19th-most populous state and the fifth-most densely populated. Maryland''s capital city is Annapolis, and the state''s most populous city is Baltimore.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_maryland', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_maryland_in_country', 'plc_maryland', 'ent_usa', 'located_in', 0.95, 'clm_wiki_maryland_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_maryland_overview', 'plc_maryland', 'overview', 'Overview',
   'Maryland is a state in the Mid-Atlantic and Southeastern regions of the United States. It borders Virginia to its south, West Virginia to its west, Pennsylvania to its north, and Delaware to its east, as well as with the Atlantic Ocean to its east, and the national capital and federal district of Washington, D.C. to the southwest. With a total area of 12,407 square miles (32,130 km2), Maryland is the ninth-smallest state by land area, and its population of 6.1 million ranks it the 19th-most populous state and the fifth-most densely populated. Maryland''s capital city is Annapolis, and the state''s most populous city is Baltimore.', '["clm_wiki_maryland_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_maryland_history', 'plc_maryland', 'history', 'History',
   'U.S. state .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} This article is about the U.S. state. For other uses, see Maryland (disambiguation) . State in the United States @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-settlement{border-collapse:collapse;line-height:1.2em}@media(min-width:640px){.mw-parser-output .ib-settlement{width:23em}}.mw-parser-output .ib-settlement td,.mw-parser-output .ib-settlement th{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.4em 0.6em}.mw-parser-output .ib-settlement .mergedtoprow .infobox-full-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-header,.mw-parser-output .ib-settlement .mergedtoprow .infobox-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-label,.mw-parser-output .ib-settlement .mergedtoprow .infobox-below{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.2em 0.6em}.mw-parser-output .ib-settlement .mergedrow .infobox-f', '["clm_wiki_maryland_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_maryland_geography', 'plc_maryland', 'geography', 'Geography',
   '17th century [ edit ] Maryland''s first colonial settlement [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Province of Maryland Present-day Maryland was originally inhabited by native tribes such as the Piscataway (including the Patuxent ), the Nanticoke (including the Tocwogh , the Ozinie and other subdivisions), the Powhatan , the Lenape , the Susquehannock , the Shawnee , the Tutelo , the Saponi , the Pocomoke and the Massawomeck . &#91; 1 &#93; &#91; self-published source? &#93; George Calvert, 1st Baron Baltimore (1579–1632), sought a charter from King Charles I for the territory between Massachusetts to the north and Virginia to the immediate south. &#91; 2 &#93; After Baltimore died in April 1632, the charter was granted to his son, Cecilius Calvert, 2nd Baron Baltimore (1605–1675), on June 20, 1632. Officially, the new "Maryland Colony" was named in honor of Henrietta Maria of France , wife of Charles I. &#91; 3 &#93; Lord Baltimore initially proposed the name "Crescentia", the land of growth or increase, but "the King proposed Terra Mariae [Mary Land], which was concluded on and inserted in the bill." &#91; 4 &#93; The original capital of Maryland was St. Mary''s City , on the north shore of the Potomac River , and the county surrounding it was the first erected and created in the province, &#91; 5 &#93; first called Augusta Carolina, after the King, and later named St. Mary''s County . &#91; 6 &#93; Lord Baltimore''s first settlers arrived in the new colony in March 1634, with his younger brother, Leonard Calvert (1606–1647), as the first provincial Governor of Maryland . They made their first permanent settlement at St. Mary''s City in what ', '["clm_wiki_maryland_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_maryland_demographics', 'plc_maryland', 'demographics', 'Demographics',
   'Maryland''s first colonial settlement [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Province of Maryland Present-day Maryland was originally inhabited by native tribes such as the Piscataway (including the Patuxent ), the Nanticoke (including the Tocwogh , the Ozinie and other subdivisions), the Powhatan , the Lenape , the Susquehannock , the Shawnee , the Tutelo , the Saponi , the Pocomoke and the Massawomeck . &#91; 1 &#93; &#91; self-published source? &#93; George Calvert, 1st Baron Baltimore (1579–1632), sought a charter from King Charles I for the territory between Massachusetts to the north and Virginia to the immediate south. &#91; 2 &#93; After Baltimore died in April 1632, the charter was granted to his son, Cecilius Calvert, 2nd Baron Baltimore (1605–1675), on June 20, 1632. Officially, the new "Maryland Colony" was named in honor of Henrietta Maria of France , wife of Charles I. &#91; 3 &#93; Lord Baltimore initially proposed the name "Crescentia", the land of growth or increase, but "the King proposed Terra Mariae [Mary Land], which was concluded on and inserted in the bill." &#91; 4 &#93; The original capital of Maryland was St. Mary''s City , on the north shore of the Potomac River , and the county surrounding it was the first erected and created in the province, &#91; 5 &#93; first called Augusta Carolina, after the King, and later named St. Mary''s County . &#91; 6 &#93; Lord Baltimore''s first settlers arrived in the new colony in March 1634, with his younger brother, Leonard Calvert (1606–1647), as the first provincial Governor of Maryland . They made their first permanent settlement at St. Mary''s City in what is now St. Mary''s Coun', '["clm_wiki_maryland_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_maryland_primary', 'plc_maryland', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Flag_of_Maryland.svg/960px-Flag_of_Maryland.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Flag_of_Maryland.svg/330px-Flag_of_Maryland.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Maryland',
   'Maryland', 1, 10, unixepoch());

-- 21. Massachusetts (state, MA, pop=Massachusetts)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_massachusetts', 'place', 'massachusetts', 'Massachusetts', 'published', 'en', 25,
   'Massachusetts, officially the Commonwealth of Massachusetts, is a state in the New England region of the Northeastern United States. It borders the Atlantic Ocean and the Gulf of Maine to its east, Connecticut and Rhode Island to its south, New Hampshire and Vermont to its north, and New York to its west. Massachusetts is the seventh-smallest state by land area. With an estimated population of over 7.1 million, it is the most populous state in New England, the 16th-most-populous in the United States, and the third-most densely populated U.S. state after New Jersey and Rhode Island.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_massachusetts', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_massachusetts_in_country', 'plc_massachusetts', 'ent_usa', 'located_in', 0.95, 'clm_wiki_massachusetts_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_massachusetts_overview', 'plc_massachusetts', 'overview', 'Overview',
   'Massachusetts, officially the Commonwealth of Massachusetts, is a state in the New England region of the Northeastern United States. It borders the Atlantic Ocean and the Gulf of Maine to its east, Connecticut and Rhode Island to its south, New Hampshire and Vermont to its north, and New York to its west. Massachusetts is the seventh-smallest state by land area. With an estimated population of over 7.1 million, it is the most populous state in New England, the 16th-most-populous in the United States, and the third-most densely populated U.S. state after New Jersey and Rhode Island.', '["clm_wiki_massachusetts_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_massachusetts_history', 'plc_massachusetts', 'history', 'History',
   'Etymology [ edit ] The Massachusetts Bay Colony was named after the Indigenous population, the Massachusett or Muhsachuweesut , whose name likely derived from the Wôpanâak word muswachasut , segmented as mus(ây) "big" + wach "mountain" + -s "diminutive" + - ut "locative". &#91; 1 &#93; This word has been translated as "near the great hill", &#91; 2 &#93; "by the blue hills", "at the little big hill", or "at the range of hills", in reference to the Blue Hills —namely, the Great Blue Hill , located on the boundary of Milton and Canton . &#91; 3 &#93; &#91; 4 &#93; Massachusett has also been represented as Moswetuset . This comes from the name of the Moswetuset Hummock (meaning "hill shaped like an arrowhead") in Quincy , where Plymouth Colony commander Myles Standish (a hired English military officer) and Squanto (a member of the Patuxet band of the Wamponoag people , who have since died off due to contagious diseases brought by colonists) met Chief Chickatawbut in 1621. &#91; 5 &#93; &#91; 6 &#93; Although the designation "Commonwealth" forms part of the state''s official name, it has no practical implications in modern times, &#91; 7 &#93; and Massachusetts has the same position and powers within the United States as other states. &#91; 8 &#93; John Adams may have chosen the word in 1779 for the second draft of what became the 1780 Massachusetts Constitution ; unlike the word "state", the word " commonwealth " had the connotation of a republic at the time. This was in contrast to the monarchy the former colonies were fighting against during the American Revolutionary War . The name "State of Massachusetts Bay" appeared in the first draft, which was ultimately rejected. It was also chosen to include the "Cape Islands" in reference to Martha''s Vineyard and Nantucket —from 1780 to 1844, they were seen as additional and separate entities confined within the Commonwealth. &#91; 9 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repe', '["clm_wiki_massachusetts_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_massachusetts_geography', 'plc_massachusetts', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main articles: History of Massachusetts and Native American tribes in Massachusetts Pre-colonization [ edit ] Massachusetts was originally inhabited by tribes of the Algonquian language family , including the Wampanoag , Narragansett , Nipmuc , Pocomtuc , Mahican , and Massachusett . &#91; 1 &#93; &#91; 2 &#93; While cultivation of crops like squash and corn were an important part of their diet, the people of these tribes hunted , fished , and searched the forest for most of their food. &#91; 1 &#93; Villagers lived in lodges called wigwams as well as longhouses . &#91; 2 &#93; Tribes were led by male or female elders known as sachems . &#91; 3 &#93; Colonial period [ edit ] Main articles: Mayflower Compact , Plymouth Colony , Massachusetts Bay Colony , New England Confederation , Dominion of New England , and Province of Massachusetts Bay The Mayflower in Plymouth Harbor by William Halsall (1882). The Pilgrims founded Plymouth in 1620. During the early 1600s, European colonists caused virgin soil epidemics such as smallpox , measles , influenza , and perhaps leptospirosis in what is now known as the northeastern region of the United States. &#91; 4 &#93; &#91; 5 &#93; Between 1617 and 1619, a disease that was most likely smallpox killed approximately 90% of the Massachusetts Bay Native Americans . &#91; 6 &#93; The first English colonists in Massachusetts Bay Colony landed with Richard Vines and spent the winter in Biddeford Pool near Cape Porpoise (after 1820 the State of Maine) in 1616. The Puritans arrived at Plymouth in 1620. This was the second permanent English colony in the part of North America tha', '["clm_wiki_massachusetts_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_massachusetts_demographics', 'plc_massachusetts', 'demographics', 'Demographics',
   'Pre-colonization [ edit ] Massachusetts was originally inhabited by tribes of the Algonquian language family , including the Wampanoag , Narragansett , Nipmuc , Pocomtuc , Mahican , and Massachusett . &#91; 1 &#93; &#91; 2 &#93; While cultivation of crops like squash and corn were an important part of their diet, the people of these tribes hunted , fished , and searched the forest for most of their food. &#91; 1 &#93; Villagers lived in lodges called wigwams as well as longhouses . &#91; 2 &#93; Tribes were led by male or female elders known as sachems . &#91; 3 &#93; ^ a b Brown &amp; Tager 2000 , pp.&#160;6–7. ^ a b .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-ws-icon a{background-size:contain;padding:0 1em 0 0}.mw-pars', '["clm_wiki_massachusetts_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_massachusetts_primary', 'plc_massachusetts', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Flag_of_Massachusetts.svg/1920px-Flag_of_Massachusetts.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Flag_of_Massachusetts.svg/330px-Flag_of_Massachusetts.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Massachusetts',
   'Massachusetts', 1, 10, unixepoch());

-- 22. Michigan (state, MI, pop=Michigan)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_michigan', 'place', 'michigan', 'Michigan', 'published', 'en', 25,
   'Michigan is a peninsular state in the Great Lakes region of the Upper Midwestern United States. It shares water and land boundaries with Minnesota to the northwest, Wisconsin to the west, Indiana and Illinois to the southwest, Ohio to the southeast, and the Canadian province of Ontario to the east, northeast and north. With a population of 10.13 million and an area of 96,716 sq mi (250,490 km2), Michigan is the tenth-largest state by population, the 11th-largest by area, and the largest by total area east of the Mississippi River. The state capital is Lansing, while its most populous city is Detroit. The Metro Detroit region in Southeast Michigan is among the nation''s most populous and largest metropolitan economies. Other important metropolitan areas include Grand Rapids, Flint, Ann Arbor, Kalamazoo, the Tri-Cities, and Muskegon.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_michigan', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_michigan_in_country', 'plc_michigan', 'ent_usa', 'located_in', 0.95, 'clm_wiki_michigan_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_michigan_overview', 'plc_michigan', 'overview', 'Overview',
   'Michigan is a peninsular state in the Great Lakes region of the Upper Midwestern United States. It shares water and land boundaries with Minnesota to the northwest, Wisconsin to the west, Indiana and Illinois to the southwest, Ohio to the southeast, and the Canadian province of Ontario to the east, northeast and north. With a population of 10.13 million and an area of 96,716 sq mi (250,490 km2), Michigan is the tenth-largest state by population, the 11th-largest by area, and the largest by total area east of the Mississippi River. The state capital is Lansing, while its most populous city is Detroit. The Metro Detroit region in Southeast Michigan is among the nation''s most populous and largest metropolitan economies. Other important metropolitan areas include Grand Rapids, Flint, Ann Arbor, Kalamazoo, the Tri-Cities, and Muskegon.', '["clm_wiki_michigan_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_michigan_history', 'plc_michigan', 'history', 'History',
   'U.S. state .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} This article is about the U.S. state. For other uses, see Michigan (disambiguation) . "The Great Lakes State" redirects here. For states around the Great Lakes region, see Great Lakes region . State in the United States @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-settlement{border-collapse:collapse;line-height:1.2em}@media(min-width:640px){.mw-parser-output .ib-settlement{width:23em}}.mw-parser-output .ib-settlement td,.mw-parser-output .ib-settlement th{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.4em 0.6em}.mw-parser-output .ib-settlement .mergedtoprow .infobox-full-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-header,.mw-parser-output .ib-settlement .mergedtoprow .infobox-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-label,.mw-parser-output .ib-settlement .mergedtoprow .infobox-below{border-t', '["clm_wiki_michigan_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_michigan_geography', 'plc_michigan', 'geography', 'Geography',
   '17th century [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main articles: New France and Canada (New France) Père Marquette and the Indians (1869), by Wilhelm Lamprecht French voyageurs and coureurs des bois explored and settled in Michigan in the 17th century. The first Europeans to reach what became Michigan were those of Étienne Brûlé ''s expedition in 1622. The first permanent European settlement was founded in 1668 on the site where Père Jacques Marquette established Sault Ste. Marie, Michigan , as a base for Catholic missions. &#91; 1 &#93; &#91; 2 &#93; Missionaries in 1671–75 founded outlying stations at Saint Ignace and Marquette . Jesuit missionaries were well received by the area''s Indian populations, with few difficulties or hostilities. In 1679, Robert Cavelier, Sieur de la Salle built Fort Miami at present-day St. Joseph . In 1691, the French established a trading post and Fort St. Joseph along the St. Joseph River at the present-day city of Niles . ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a', '["clm_wiki_michigan_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_michigan_demographics', 'plc_michigan', 'demographics', 'Demographics',
   '18th century [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main articles: French and Indian War , Treaty of Paris (1763) , Province of Quebec (1763–1791) , Indian Reserve (1763) , American Revolutionary War , Treaty of Paris (1783) , Northwest Ordinance , and Northwest Territory In 1701, French explorer and army officer Antoine de la Mothe Cadillac founded Fort Pontchartrain du Détroit or "Fort Pontchartrain on-the-Strait" on the strait, known as the Detroit River , between lakes St. Clair and Erie . &#91; 1 &#93; Cadillac had convinced Louis XIV ''s chief minister, Louis Phélypeaux, Comte de Pontchartrain , that a permanent community there would strengthen French control over the upper Great Lakes and discourage British aspirations. &#91; citation needed &#93; The hundred soldiers and workers who accompanied Cadillac built a fort enclosing one arpent (about 0.85 acres (3,400&#160;m 2 ), &#91; 2 &#93; &#91; 3 &#93; the equivalent of just under 200 feet (61&#160;m) per side) and named it Fort Pontchartrain . Cadillac''s wife, Marie Thérèse Guyon, soon moved to Detroit, becoming one of the first European women to settle in what was considered the wilderness of Michigan. The town quickly became a major fur-trading and shipping post. The Église de Saint-Anne (Catholic Church of Saint Anne) was founded the same year. &#91; citation needed &#93; While the original building does not survive, the congregation remains active. &#91; citation needed &#93; Cadillac later departed to serve as the French governor of Louisiana from 1710 to 1716. &#91; citation needed &#93; French attempts to consolidate the fur trade led to the Fox Wars , in which the Meskwaki (Fox) and their ', '["clm_wiki_michigan_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_michigan_primary', 'plc_michigan', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Flag_of_Michigan.svg/960px-Flag_of_Michigan.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Flag_of_Michigan.svg/330px-Flag_of_Michigan.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Michigan',
   'Michigan', 1, 10, unixepoch());

-- 23. Minnesota (state, MN, pop=Minnesota)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_minnesota', 'place', 'minnesota', 'Minnesota', 'published', 'en', 25,
   'Minnesota is a state in the Upper Midwestern region of the United States. It is bordered by the Canadian provinces of Manitoba and Ontario to the north and east and by the U.S. states of Wisconsin to the east, Iowa to the south, and North Dakota and South Dakota to the west. The northeast corner has a water boundary with Michigan across Lake Superior. It is the 12th-largest U.S. state in area and the 22nd-most populous, with about 5.8 million residents. Minnesota is known as the "Land of 10,000 Lakes"; it has 14,420 bodies of fresh water covering at least ten acres each. Roughly a third of the state is forested. Much of the remainder is prairie and farmland. More than 60% of Minnesotans live in the Minneapolis–Saint Paul metropolitan area, known as the "Twin Cities", which is Minnesota''s main political, economic, and cultural hub and the 16th-largest metropolitan area in the U.S. Other minor metropolitan and micropolitan statistical areas include Duluth, Mankato, Moorhead, Rochester, and St. Cloud.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_minnesota', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_minnesota_in_country', 'plc_minnesota', 'ent_usa', 'located_in', 0.95, 'clm_wiki_minnesota_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_minnesota_overview', 'plc_minnesota', 'overview', 'Overview',
   'Minnesota is a state in the Upper Midwestern region of the United States. It is bordered by the Canadian provinces of Manitoba and Ontario to the north and east and by the U.S. states of Wisconsin to the east, Iowa to the south, and North Dakota and South Dakota to the west. The northeast corner has a water boundary with Michigan across Lake Superior. It is the 12th-largest U.S. state in area and the 22nd-most populous, with about 5.8 million residents. Minnesota is known as the "Land of 10,000 Lakes"; it has 14,420 bodies of fresh water covering at least ten acres each. Roughly a third of the state is forested. Much of the remainder is prairie and farmland. More than 60% of Minnesotans live in the Minneapolis–Saint Paul metropolitan area, known as the "Twin Cities", which is Minnesota''s main political, economic, and cultural hub and the 16th-largest metropolitan area in the U.S. Other minor metropolitan and micropolitan statistical areas include Duluth, Mankato, Moorhead, Rochester, and St. Cloud.', '["clm_wiki_minnesota_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_minnesota_history', 'plc_minnesota', 'history', 'History',
   'Etymology [ edit ] The word Minnesota comes from the Dakota &#91; 1 &#93; name for the Minnesota River , which got its name from one of two words in Dakota: mní sóta , which means "clear blue water", &#91; 2 &#93; &#91; 3 &#93; or Mníssota , which means "cloudy water". &#91; 4 &#93; &#91; 5 &#93; Early explorers interpreted the Dakota name for the Minnesota River in various ways, and four spellings of the state''s name were considered before "Minnesota" was established in 1849, when the Territory of Minnesota was formed. &#91; 6 &#93; Dakota people demonstrated the name to early settlers by dropping milk into water and calling it mní sóta . &#91; 5 &#93; Many places in the state have similar Dakota names, such as Minnehaha Falls ("curling water" or waterfall), Minneiska ("white water"), Minneota ("much water"), Minnetonka ("big water"), Minnetrista ("crooked water"), and Minneapolis, a hybrid word combining Dakota mní ("water") and -polis ( Greek for "city"). &#91; 7 &#93; The state seal features the phrase Mni Sóta Makoce ("the land where the water reflects the skies"), the Dakota name for the larger region. &#91; 8 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-ws-icon a{background-size:contain;padding:0 ', '["clm_wiki_minnesota_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_minnesota_geography', 'plc_minnesota', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Minnesota A map of Minnesota Territory 1849–1858 When Europeans arrived in North America, the Dakota people lived in what is now Minnesota. The first Europeans to enter the region were French voyageurs and fur traders who arrived in the 17th century. They used the Grand Portage to access trapping and trading areas further into Minnesota. The Anishinaabe (also known as Ojibwe or Chippewa) were migrating into Minnesota, and formed an Alliance with the Dakota. European powers destabilized the region economically and politically, resulting in the alliance''s collapse and the Dakota-Ojibwe War , &#91; 1 &#93; and dislocated the Mdewakanton from its homelands along Mille Lacs Lake . Explorers such as Daniel Greysolon, Sieur du Lhut , Father Louis Hennepin , Jonathan Carver , Henry Schoolcraft , and Joseph Nicollet mapped the state. The region was part of Spanish Louisiana from 1762 to 1802. &#91; 2 &#93; &#91; 3 &#93; The portion of the state east of the Mississippi River became part of the United States at the end of the American Revolutionary War , when the Second Treaty of Paris was signed. Land west of the Mississippi was acquired with the Louisiana Purchase , though the Hudson''s Bay Company disputed the Red River Valley until the Treaty of 1818 , when the border on the 49th parallel was agreed upon. &#91; 4 &#93; In 1805, Zebulon Pike bargained with Native Americans to acquire land at the confluence of the Minnesota and Mississippi rivers to create a military reservation. The construction of Fort Snelling followed between 1819 and 1825. &#91; 5 &#93; Its soldiers built a grist mill an', '["clm_wiki_minnesota_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_minnesota_demographics', 'plc_minnesota', 'demographics', 'Demographics',
   'Statehood [ edit ] When Iowa gained statehood, western Minnesota was in an Unorganized Territory again. Minnesota Territory was formed on March 3, 1849. The first territorial legislature, held on September 2, 1849, &#91; 1 &#93; was dominated by men of New England ancestry. &#91; 2 &#93; Minnesota became the 32nd U.S. state on May 11, 1858. The founding population was so overwhelmingly of New England origins that the state was dubbed "the New England of the West". &#91; 3 &#93; &#91; 4 &#93; Mixed Dakota-Europeans who were rescued by "non-hostile" Dakota. The girl in the foreground wrapped in the striped blanket is Elise Robertson, the sister of Thomas Robertson, a mixed blood who acted as an intermediary between the Dakota and the European-Americans during the Dakota War of 1862 Treaties between the U.S. government and the eastern Dakota and Ojibwe gradually forced the natives off their lands and onto reservations . As conditions deteriorated for the eastern Dakota, tensions rose, leading to the Dakota War of 1862 . &#91; 5 &#93; The conflict was ignited when four young Dakota men, searching for food, killed a family of white settlers on August 17. That night, a faction of Little Crow ''s eastern Dakota decided to try to drive all settlers out of the Minnesota River valley. In the weeks that followed, Dakota warriors killed hundreds of settlers, causing thousands to flee the area. &#91; 6 &#93; The six-week war ended with the defeat of the eastern Dakota and 2,000 in custody, who were eventually exiled to the Crow Creek Reservation by the Great Sioux Reservation in Dakota Territory . The remaining 4,500 to 5,000 Dakota mostly fled the state into Rupert''s Land . &#91; 7 &#93; As many as 800 settlers were killed during the war. &#91; 8 &#93; Minnesota Governor Alexander Ramsey subsequently declared that "the Sioux Indians of Minnesota must be exterminated or driven forever beyond the borders of the state" &#91; 9 &#93; and placed a bounty of $25/scalp on the heads of ', '["clm_wiki_minnesota_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_minnesota_primary', 'plc_minnesota', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Flag_of_Minnesota.svg/1280px-Flag_of_Minnesota.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Flag_of_Minnesota.svg/330px-Flag_of_Minnesota.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Minnesota',
   'Minnesota', 1, 10, unixepoch());

-- 24. Mississippi (state, MS, pop=Mississippi)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_mississippi', 'place', 'mississippi', 'Mississippi', 'published', 'en', 25,
   'Mississippi is a state in the Southeastern and Deep South regions of the United States. It borders Tennessee to the north, Alabama to the east, the Gulf of Mexico to the south, Louisiana to the southwest, and Arkansas to the northwest. Mississippi''s western boundary is largely defined by the Mississippi River, or its historical course. Mississippi is the 32nd largest by area and 35th-most populous of the 50 U.S. states and has the lowest per-capita income. Jackson is both the state''s capital and largest city. Greater Jackson is the state''s most populous metropolitan area, with a population of 591,978 in 2020. Other major cities include Gulfport, Southaven, Hattiesburg, Biloxi, Olive Branch, Tupelo, Meridian, and Greenville.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_mississippi', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_mississippi_in_country', 'plc_mississippi', 'ent_usa', 'located_in', 0.95, 'clm_wiki_mississippi_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_mississippi_overview', 'plc_mississippi', 'overview', 'Overview',
   'Mississippi is a state in the Southeastern and Deep South regions of the United States. It borders Tennessee to the north, Alabama to the east, the Gulf of Mexico to the south, Louisiana to the southwest, and Arkansas to the northwest. Mississippi''s western boundary is largely defined by the Mississippi River, or its historical course. Mississippi is the 32nd largest by area and 35th-most populous of the 50 U.S. states and has the lowest per-capita income. Jackson is both the state''s capital and largest city. Greater Jackson is the state''s most populous metropolitan area, with a population of 591,978 in 2020. Other major cities include Gulfport, Southaven, Hattiesburg, Biloxi, Olive Branch, Tupelo, Meridian, and Greenville.', '["clm_wiki_mississippi_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_mississippi_history', 'plc_mississippi', 'history', 'History',
   'Etymology [ edit ] The state''s name is derived from the Mississippi River , which flows along and defines its western boundary. European-American settlers named it after the Ojibwe word ᒥᓯ-ᓰᐱ misi-ziibi (English: great river ).', '["clm_wiki_mississippi_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_mississippi_geography', 'plc_mississippi', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Mississippi .mw-parser-output .ambox{border:1px solid #a2a9b1;border-left:10px solid #36c;background-color:#fbfbfb;box-sizing:border-box}.mw-parser-output .ambox+.mw-empty-elt+.ambox,.mw-parser-output .ambox+.mw-empty-elt+.mw-empty-elt+.ambox,.mw-parser-output .ambox+.mw-empty-elt+.mw-empty-elt+.mw-empty-elt+.ambox{margin-top:-1px}html body.mediawiki .mw-parser-output .ambox.mbox-small-left{margin:4px 1em 4px 0;overflow:hidden;width:238px;border-collapse:collapse;font-size:88%;line-height:1.25em}.mw-parser-output .ambox-speedy{border-left:10px solid #b32424;background-color:#fee7e6}.mw-parser-output .ambox-delete{border-left:10px solid #b32424}.mw-parser-output .ambox-content{border-left:10px solid #f28500}.mw-parser-output .ambox-style{border-left:10px solid #fc3}.mw-parser-output .ambox-move{border-left:10px solid #9932cc}.mw-parser-output .ambox-protection{border-left:10px solid #a2a9b1}.mw-parser-output .ambox .mbox-text{border:none;padding:0.25em 0.5em;width:100%}.mw-parser-output .ambox .mbox-image{border:none;padding:2px 0 2px 0.5em;text-align:center}.mw-parser-output .ambox .mbox-imageright{border:none;padding:2px 0.5em 2px 0;text-align:center}.mw-parser-output .ambox .mbox-empty-cell{border:none;padding:0;width:1px}.mw-parser-output .ambox .mbox-image-div{width:52px}@media(min-width:720px){.mw-parser-output .ambox{margin:0 10%}}@media print{body.ns-0 .mw-parser-output .ambox{display:none!important}} This section should include only a brief summary of History of Mississippi . See Wikipedia:Summary style for information on how to properly incorporate it into this article''s ma', '["clm_wiki_mississippi_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_mississippi_demographics', 'plc_mississippi', 'demographics', 'Demographics',
   'Colonial era [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main articles: New France , Louisiana (New France) , French and Indian War , Treaty of Paris (1763) , New Spain , West Florida , Indian Reserve (1763) , American Revolutionary War , Treaty of Paris (1783) , and Spanish West Florida In April 1699, French colonists established the first European settlement at Fort Maurepas (also known as Old Biloxi), built in the vicinity of present-day Ocean Springs on the Gulf Coast. It was settled by Pierre Le Moyne d''Iberville . In 1716, the French founded Natchez on the Mississippi River (as Fort Rosalie ); it became the dominant town and trading post of the area. The French called the greater territory " New France "; the Spanish continued to claim part of the Gulf coast area (east of Mobile Bay ) of present-day southern Alabama , in addition to the entire area of present-day Florida . The British assumed control of the French territory after the French and Indian War . Pushmataha , Principal Chief of the Choctaw During the colonial era , European (chiefly French and Spanish) settlers imported enslaved Africans to work on cash crop plantations . Under French and Spanish rule, there developed a class of free people of color ( gens de couleur libres ), mostly multiracial descendants of European men and enslaved or free black women, and their mixed-race children. In the early days the French and Spanish colonists were chiefly men. Even as more European women joined the settlements, the men had interracial unions among women of African descent (and increasingly, multiracial descent), both before and after marriages to European women. Often the European men would help t', '["clm_wiki_mississippi_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_mississippi_primary', 'plc_mississippi', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Flag_of_Mississippi.svg/1280px-Flag_of_Mississippi.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Flag_of_Mississippi.svg/330px-Flag_of_Mississippi.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Mississippi',
   'Mississippi', 1, 10, unixepoch());

-- 25. Missouri (state, MO, pop=Missouri)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_missouri', 'place', 'missouri', 'Missouri', 'published', 'en', 25,
   'Missouri is a landlocked state in the Midwestern region of the United States. Ranking 21st in land area, it borders Iowa to the north, Illinois, Kentucky and Tennessee to the east, Arkansas to the south and Oklahoma, Kansas, and Nebraska to the west. With over six million residents, it is the 19th-most populous state of the country. The largest urban areas are St. Louis, Kansas City, Springfield, and Columbia. The capital is Jefferson City.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_missouri', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_missouri_in_country', 'plc_missouri', 'ent_usa', 'located_in', 0.95, 'clm_wiki_missouri_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_missouri_overview', 'plc_missouri', 'overview', 'Overview',
   'Missouri is a landlocked state in the Midwestern region of the United States. Ranking 21st in land area, it borders Iowa to the north, Illinois, Kentucky and Tennessee to the east, Arkansas to the south and Oklahoma, Kansas, and Nebraska to the west. With over six million residents, it is the 19th-most populous state of the country. The largest urban areas are St. Louis, Kansas City, Springfield, and Columbia. The capital is Jefferson City.', '["clm_wiki_missouri_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_missouri_history', 'plc_missouri', 'history', 'History',
   'Nicknames [ edit ] There is no official state nickname. &#91; 1 &#93; However, Missouri''s unofficial nickname is the "Show Me State", which appears on its license plates . This phrase has several origins. One is popularly ascribed to a speech by Congressman Willard Vandiver in 1899, who declared that "I come from a state that raises corn and cotton, cockleburs and Democrats, and frothy eloquence neither convinces nor satisfies me. I''m from Missouri, and you have got to show me." This is in keeping with the saying "I''m from Missouri ", which means "I''m skeptical of the matter and not easily convinced." &#91; 2 &#93; However, according to researchers, the phrase "show me" was already in use before the 1890s. &#91; 3 &#93; Another one states that it is a reference to Missouri miners who were taken to Leadville, Colorado , to replace striking workers. Since the new miners were unfamiliar with the mining methods, they required frequent instruction. Pit bosses began saying, "That man is from Missouri. You''ll have to show him." &#91; 1 &#93; Other nicknames for Missouri include "The Lead State", "The Bullion State", "The Ozark State", "The Mother of the West", "The Iron Mountain State", and "Pennsylvania of the West". &#91; 4 &#93; It is also known as the "Cave State" &#91; 5 &#93; &#58;&#8202;53&#8202; because there are more than 7,300 recorded caves in the state (second to Tennessee ). Perry County is the county with the most caves and the single longest cave. &#91; 6 &#93; &#91; 7 &#93; The official state motto is "Salus Populi Suprema Lex Esto", Latin for "Let the welfare of the people be the supreme law." &#91; 8 &#93; ^ a b .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/c', '["clm_wiki_missouri_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_missouri_geography', 'plc_missouri', 'geography', 'Geography',
   'Nicknames [ edit ] There is no official state nickname. &#91; 1 &#93; However, Missouri''s unofficial nickname is the "Show Me State", which appears on its license plates . This phrase has several origins. One is popularly ascribed to a speech by Congressman Willard Vandiver in 1899, who declared that "I come from a state that raises corn and cotton, cockleburs and Democrats, and frothy eloquence neither convinces nor satisfies me. I''m from Missouri, and you have got to show me." This is in keeping with the saying "I''m from Missouri ", which means "I''m skeptical of the matter and not easily convinced." &#91; 2 &#93; However, according to researchers, the phrase "show me" was already in use before the 1890s. &#91; 3 &#93; Another one states that it is a reference to Missouri miners who were taken to Leadville, Colorado , to replace striking workers. Since the new miners were unfamiliar with the mining methods, they required frequent instruction. Pit bosses began saying, "That man is from Missouri. You''ll have to show him." &#91; 1 &#93; Other nicknames for Missouri include "The Lead State", "The Bullion State", "The Ozark State", "The Mother of the West", "The Iron Mountain State", and "Pennsylvania of the West". &#91; 4 &#93; It is also known as the "Cave State" &#91; 5 &#93; &#58;&#8202;53&#8202; because there are more than 7,300 recorded caves in the state (second to Tennessee ). Perry County is the county with the most caves and the single longest cave. &#91; 6 &#93; &#91; 7 &#93; The official state motto is "Salus Populi Suprema Lex Esto", Latin for "Let the welfare of the people be the supreme law." &#91; 8 &#93; ^ a b .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-', '["clm_wiki_missouri_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_missouri_demographics', 'plc_missouri', 'demographics', 'Demographics',
   'History [ edit ] .mw-parser-output .ambox{border:1px solid #a2a9b1;border-left:10px solid #36c;background-color:#fbfbfb;box-sizing:border-box}.mw-parser-output .ambox+.mw-empty-elt+.ambox,.mw-parser-output .ambox+.mw-empty-elt+.mw-empty-elt+.ambox,.mw-parser-output .ambox+.mw-empty-elt+.mw-empty-elt+.mw-empty-elt+.ambox{margin-top:-1px}html body.mediawiki .mw-parser-output .ambox.mbox-small-left{margin:4px 1em 4px 0;overflow:hidden;width:238px;border-collapse:collapse;font-size:88%;line-height:1.25em}.mw-parser-output .ambox-speedy{border-left:10px solid #b32424;background-color:#fee7e6}.mw-parser-output .ambox-delete{border-left:10px solid #b32424}.mw-parser-output .ambox-content{border-left:10px solid #f28500}.mw-parser-output .ambox-style{border-left:10px solid #fc3}.mw-parser-output .ambox-move{border-left:10px solid #9932cc}.mw-parser-output .ambox-protection{border-left:10px solid #a2a9b1}.mw-parser-output .ambox .mbox-text{border:none;padding:0.25em 0.5em;width:100%}.mw-parser-output .ambox .mbox-image{border:none;padding:2px 0 2px 0.5em;text-align:center}.mw-parser-output .ambox .mbox-imageright{border:none;padding:2px 0.5em 2px 0;text-align:center}.mw-parser-output .ambox .mbox-empty-cell{border:none;padding:0;width:1px}.mw-parser-output .ambox .mbox-image-div{width:52px}@media(min-width:720px){.mw-parser-output .ambox{margin:0 10%}}@media print{body.ns-0 .mw-parser-output .ambox{display:none!important}} This section needs more citations . Please help improve this section by adding citations to reliable sources . Unsourced material may be challenged and removed . ( August 2017 ) ( Learn how and when to remove this message ) .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!im', '["clm_wiki_missouri_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_missouri_primary', 'plc_missouri', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Flag_of_Missouri.svg/3840px-Flag_of_Missouri.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Flag_of_Missouri.svg/330px-Flag_of_Missouri.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Missouri',
   'Missouri', 1, 10, unixepoch());

-- 26. Montana (state, MT, pop=Montana)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_montana', 'place', 'montana', 'Montana', 'published', 'en', 25,
   'Montana is a landlocked state in the Mountain West subregion of the Western United States. It is bordered by Idaho to the west, North Dakota to the east, South Dakota to the southeast, Wyoming to the south, and the Canadian provinces of Alberta, British Columbia, and Saskatchewan to the north. It is the fourth-largest state by area, but the eighth-least populous state and the third-least densely populated state. Its capital is Helena, while the most populous city is Billings. The western half of the state contains numerous mountain ranges, particularly the Rocky Mountains, while the eastern half is characterized by western prairie terrain and badlands, with smaller mountain ranges found throughout the state.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_montana', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_montana_in_country', 'plc_montana', 'ent_usa', 'located_in', 0.95, 'clm_wiki_montana_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_montana_overview', 'plc_montana', 'overview', 'Overview',
   'Montana is a landlocked state in the Mountain West subregion of the Western United States. It is bordered by Idaho to the west, North Dakota to the east, South Dakota to the southeast, Wyoming to the south, and the Canadian provinces of Alberta, British Columbia, and Saskatchewan to the north. It is the fourth-largest state by area, but the eighth-least populous state and the third-least densely populated state. Its capital is Helena, while the most populous city is Billings. The western half of the state contains numerous mountain ranges, particularly the Rocky Mountains, while the eastern half is characterized by western prairie terrain and badlands, with smaller mountain ranges found throughout the state.', '["clm_wiki_montana_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_montana_history', 'plc_montana', 'history', 'History',
   'Etymology [ edit ] The name "Montana" comes from the Spanish word montaña , which in turn comes from the Latin word montanea , meaning "mountain" or more broadly "mountainous country". &#91; 1 &#93; &#91; 2 &#93; Montaña del Norte ("Northern Mountain") was the name given by early Spanish explorers to the entire mountainous region of the west. &#91; 2 &#93; The name "Montana" was added in 1863 to a bill by the United States House Committee on Territories (chaired at the time by James Ashley of Ohio ) for the territory that would become Idaho Territory . &#91; 3 &#93; The name was changed by representatives Henry Wilson (Massachusetts) and Benjamin F. Harding (Oregon), who complained that "Montana" had "no meaning". &#91; 3 &#93; Alternative names included Jefferson. &#91; 4 &#93; When Ashley presented a bill to establish a temporary government in 1864 for a new territory to be carved out of Idaho, he again chose Montana Territory . &#91; 5 &#93; This time, representative Samuel Cox , also of Ohio, objected to the name. &#91; 5 &#93; Cox complained that the name was a misnomer given that most of the territory was not mountainous, and thought a Native American name would be more appropriate than a Spanish one. &#91; 5 &#93; Other names, such as Shoshone , were suggested, but the Committee on Territories decided that they had discretion to choose the name, so the original name of Montana was adopted. &#91; 5 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock', '["clm_wiki_montana_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_montana_geography', 'plc_montana', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Montana Early Indian treaty territories in Montana Assiniboine family, Montana, 1890–91 For thousands of years, various indigenous peoples have inhabited the land that is now Montana. Historic tribes encountered by Europeans and settlers from the United States included the Crow in the south-central area, the Cheyenne and Lakota in the southeast, the Blackfeet , Assiniboine , and Gros Ventres in the central and north-central area, and the Kootenai and Salish the (Séliš or "Flathead") in the west. The (Ql̓ispé or Pend d''Oreilles ) and Kalispel tribes lived near Flathead Lake and the western mountains, respectively. A part of southeastern Montana was used as a corridor between the Crows and the related Hidatsas in North Dakota. &#91; 1 &#93; As part of the Missouri River watershed, all of the land in Montana east of the Continental Divide was part of the Louisiana Purchase in 1803, except for a tiny portion in the northeast that is part of the Hudson Bay drainage . Subsequent to and particularly in the decades following the Lewis and Clark Expedition , European, Canadian and American traders operated a fur trade , trading with indigenous peoples in both western and eastern portions of the area. Though the increased interaction between fur traders and indigenous peoples frequently proved to be a profitable partnership, conflicts broke out when indigenous interests were threatened, such as the conflict between American trappers and the Blackfeet . Indigenous peoples in the region were also decimated by diseases introduced by fur traders to which they had no immunity. &#91; 2 &#93; &#91; ', '["clm_wiki_montana_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_montana_demographics', 'plc_montana', 'demographics', 'Demographics',
   'Montana Territory [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main articles: Organic act §&#160;List of organic acts , and Montana Territory Montana Territory in 1865 &#91; 1 &#93; Before the creation of Montana Territory (1864–1889), areas within present-day Montana were part of the Oregon Territory (1848–1859), Washington Territory (1853–1863), Idaho Territory (1863–1864), and Dakota Territory (1861–1864). Montana Territory became a territory of the United States on May &#160; 26, 1864. The first territorial capital was located at Bannack . Sidney Edgerton served as the first territorial governor. The capital moved to Virginia City in 1865 and to Helena in 1875. In 1870, the non-Indian population of the Montana Territory was 20,595. &#91; 2 &#93; The Montana Historical Society , founded on February &#160; 2, 1865, in Virginia City , is the oldest such institution west of the Mississippi (excluding Louisiana). &#91; 3 &#93; In 1869 and 1870 respectively, the Cook–Folsom–Peterson and the Washburn–Langford–Doane Expeditions were launched from Helena into the Upper Yellowstone region. The extraordinary discoveries and reports from these expeditions led to the creation of Yellowstone National Park in 1872. ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-regi', '["clm_wiki_montana_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_montana_primary', 'plc_montana', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Flag_of_Montana.svg/960px-Flag_of_Montana.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Flag_of_Montana.svg/330px-Flag_of_Montana.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Montana',
   'Montana', 1, 10, unixepoch());

-- 27. Nebraska (state, NE, pop=Nebraska)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_nebraska', 'place', 'nebraska', 'Nebraska', 'published', 'en', 25,
   'Nebraska is a triple-landlocked state in the Midwestern region of the United States. It borders South Dakota to the north; Wyoming to the west; Colorado to the southwest; Kansas to the south; and Missouri to the southeast and Iowa to the east, both across the Missouri River. Nebraska is the 16th-largest state by land area, with just over 77,347 square miles (200,330 km2). As of the 2020 census, the population was 1,961,504, and was estimated to be 2,018,006 in 2025, it is the 38th-most populous state and the eighth-least densely populated. Nebraska''s capital is Lincoln, and its most populous city is Omaha, which is on the Missouri River.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_nebraska', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_nebraska_in_country', 'plc_nebraska', 'ent_usa', 'located_in', 0.95, 'clm_wiki_nebraska_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_nebraska_overview', 'plc_nebraska', 'overview', 'Overview',
   'Nebraska is a triple-landlocked state in the Midwestern region of the United States. It borders South Dakota to the north; Wyoming to the west; Colorado to the southwest; Kansas to the south; and Missouri to the southeast and Iowa to the east, both across the Missouri River. Nebraska is the 16th-largest state by land area, with just over 77,347 square miles (200,330 km2). As of the 2020 census, the population was 1,961,504, and was estimated to be 2,018,006 in 2025, it is the 38th-most populous state and the eighth-least densely populated. Nebraska''s capital is Lincoln, and its most populous city is Omaha, which is on the Missouri River.', '["clm_wiki_nebraska_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_nebraska_history', 'plc_nebraska', 'history', 'History',
   'Etymology [ edit ] Nebraska''s name is the result of anglicization of the archaic Otoe Ñí Brásge (contemporary Otoe: Ñíbrahge , pronounced &#91;ɲĩbɾasꜜkɛ&#93; ), or the Omaha Ní Btháska ( Omaha–Ponca pronunciation: &#91;nĩbɫᶞasꜜka&#93; ), meaning ''flat water'', after the Platte River which flows through the state. &#91; 1 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-ws-icon a{background-size:contain;padding:0 1em 0 0}.mw-parser-output .cs1-code{color:inherit;background:inherit;border:none;padding:inherit}.mw-parser-output .cs1-hidden-error{display:none;color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-visible-error{color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-maint{display:none;color:#085;margin-left:0.3em}.mw-parser-output .cs1-kern-left{padding-left:0.2em}.mw-parser-output .cs1-kern-right{padding-right:0.2em}.mw-parser-output .citation .mw-selflink{font-weight:inherit}@media screen{.mw-parser-output .cs1-format{font-size:95%}html.skin-theme-clientpref-night .mw-parser-output .cs1-maint{color:#18911f}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .cs1-maint{color:#18911f}} Koontz, John. "Etymology" . Siouan Languages . Archived from the orig', '["clm_wiki_nebraska_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_nebraska_geography', 'plc_nebraska', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Nebraska Nebraska in 1718, Guillaume de L''Isle map, with the approximate area of the future state highlighted Early history [ edit ] Indigenous peoples lived in the region of present-day Nebraska for thousands of years before European colonization . The historic tribes in the state included the Omaha , Missouria , Ponca , Pawnee , Otoe , and various branches of the Lakota ( Sioux ), some of which migrated from eastern areas into the region. When European exploration, trade, and settlement began, both Spain and France sought to control the region. In the 1690s, Spain established trade connections with the Apache , whose territory then included western Nebraska. By 1703, France had developed a regular trade with native peoples along the Missouri River in Nebraska, and by 1719 had signed treaties with several of these peoples. After war broke out between the two countries, Spain dispatched an armed expedition to Nebraska under Lieutenant General Pedro de Villasur in 1720. The party was attacked and destroyed near present-day Columbus by a large force of Pawnee and Otoe, both allied with the French. The massacre ended Spanish exploration of the area for the remainder of the 18th century. &#91; 1 &#93; &#91; 2 &#93; &#91; 3 &#93; &#91; 4 &#93; In 1762, during the Seven Years'' War , France ceded the Louisiana Territory to Spain. This left Britain and Spain competing for dominance along the Mississippi River ; by 1773, the British were trading with the native peoples of Nebraska. Spain dispatched two trading expeditions up the Missouri River in 1794 and 1795; the second, under James Mackay', '["clm_wiki_nebraska_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_nebraska_demographics', 'plc_nebraska', 'demographics', 'Demographics',
   'Early history [ edit ] Indigenous peoples lived in the region of present-day Nebraska for thousands of years before European colonization . The historic tribes in the state included the Omaha , Missouria , Ponca , Pawnee , Otoe , and various branches of the Lakota ( Sioux ), some of which migrated from eastern areas into the region. When European exploration, trade, and settlement began, both Spain and France sought to control the region. In the 1690s, Spain established trade connections with the Apache , whose territory then included western Nebraska. By 1703, France had developed a regular trade with native peoples along the Missouri River in Nebraska, and by 1719 had signed treaties with several of these peoples. After war broke out between the two countries, Spain dispatched an armed expedition to Nebraska under Lieutenant General Pedro de Villasur in 1720. The party was attacked and destroyed near present-day Columbus by a large force of Pawnee and Otoe, both allied with the French. The massacre ended Spanish exploration of the area for the remainder of the 18th century. &#91; 1 &#93; &#91; 2 &#93; &#91; 3 &#93; &#91; 4 &#93; In 1762, during the Seven Years'' War , France ceded the Louisiana Territory to Spain. This left Britain and Spain competing for dominance along the Mississippi River ; by 1773, the British were trading with the native peoples of Nebraska. Spain dispatched two trading expeditions up the Missouri River in 1794 and 1795; the second, under James Mackay, established the first European settlement in Nebraska near the mouth of the Platte River. Later that year, Mackay''s party built a trading post, dubbed Fort Carlos IV (Fort Charles), near present-day Homer . &#91; 1 &#93; &#91; 5 &#93; &#91; 6 &#93; ^ a b .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a', '["clm_wiki_nebraska_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_nebraska_primary', 'plc_nebraska', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Flag_of_Nebraska.svg/960px-Flag_of_Nebraska.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Flag_of_Nebraska.svg/330px-Flag_of_Nebraska.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Nebraska',
   'Nebraska', 1, 10, unixepoch());

-- 28. Nevada (state, NV, pop=Nevada)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_nevada', 'place', 'nevada', 'Nevada', 'published', 'en', 25,
   'Nevada is a landlocked state in the Western United States. It is also sometimes placed in the Mountain West and Southwestern United States. It borders Idaho to the northeast, Oregon to the northwest, California to the west, Arizona to the southeast, and Utah to the east. Nevada is the seventh-most extensive and the 31st-most populous U.S. state. Nearly three-quarters of Nevada''s population live in Clark County, which contains the Las Vegas–Paradise metropolitan area. Nevada''s capital is Carson City. Las Vegas is the largest city in the state.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_nevada', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_nevada_in_country', 'plc_nevada', 'ent_usa', 'located_in', 0.95, 'clm_wiki_nevada_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_nevada_overview', 'plc_nevada', 'overview', 'Overview',
   'Nevada is a landlocked state in the Western United States. It is also sometimes placed in the Mountain West and Southwestern United States. It borders Idaho to the northeast, Oregon to the northwest, California to the west, Arizona to the southeast, and Utah to the east. Nevada is the seventh-most extensive and the 31st-most populous U.S. state. Nearly three-quarters of Nevada''s population live in Clark County, which contains the Las Vegas–Paradise metropolitan area. Nevada''s capital is Carson City. Las Vegas is the largest city in the state.', '["clm_wiki_nevada_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_nevada_history', 'plc_nevada', 'history', 'History',
   'Standard pronunciation [ edit ] Nevadans pronounce the second syllable with the "a" of "apple" ( / n ə ˈ v æ d ə / ). Despite this, some people from outside of the state pronounce it with the "a" of "palm" ( / n ə ˈ v ɑː d ə / ). &#91; 1 &#93; Although the quality , but not the length , of the latter pronunciation is closer to the Spanish pronunciation (Spanish /a/ is open central [ä] , &#91; 2 &#93; whereas American English /ɑː/ varies from back [ɑː] to central [äː] ), &#91; 3 &#93; it is not the pronunciation used by Nevadans. State Assemblyman Harry Mortenson proposed a bill to recognize the alternative pronunciation of Nevada, &#91; 4 &#93; though the bill was not supported by most legislators and never received a vote. The Nevadan pronunciation is the one used by the state legislature. At one time, the state''s official tourism organization, TravelNevada, stylized the name of the state as "Nevăda", with a breve over the a indicating the locally preferred pronunciation, &#91; 5 &#93; which was also available as a license plate design until 2007. &#91; 6 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-ws-icon a{background-size:contain;padding:0 1em 0 0}.mw-parser-output .cs1-code{color:inherit;background:', '["clm_wiki_nevada_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_nevada_geography', 'plc_nevada', 'geography', 'Geography',
   'Standard pronunciation [ edit ] Nevadans pronounce the second syllable with the "a" of "apple" ( / n ə ˈ v æ d ə / ). Despite this, some people from outside of the state pronounce it with the "a" of "palm" ( / n ə ˈ v ɑː d ə / ). &#91; 1 &#93; Although the quality , but not the length , of the latter pronunciation is closer to the Spanish pronunciation (Spanish /a/ is open central [ä] , &#91; 2 &#93; whereas American English /ɑː/ varies from back [ɑː] to central [äː] ), &#91; 3 &#93; it is not the pronunciation used by Nevadans. State Assemblyman Harry Mortenson proposed a bill to recognize the alternative pronunciation of Nevada, &#91; 4 &#93; though the bill was not supported by most legislators and never received a vote. The Nevadan pronunciation is the one used by the state legislature. At one time, the state''s official tourism organization, TravelNevada, stylized the name of the state as "Nevăda", with a breve over the a indicating the locally preferred pronunciation, &#91; 5 &#93; which was also available as a license plate design until 2007. &#91; 6 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}bod', '["clm_wiki_nevada_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_nevada_demographics', 'plc_nevada', 'demographics', 'Demographics',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Nevada Further information: History of Las Vegas Indigenous history [ edit ] Before the arrival of Europeans, the earliest inhabitants were Indigenous tribes including the Goshute , Southern Paiute , Mohave , and Wašišiw ( Washoe people ). &#91; 1 &#93; &#91; 2 &#93; Before 1861 [ edit ] Main articles: The Californias §&#160;History , and Alta California Further information: Treaty of Córdoba , Declaration of Independence of the Mexican Empire , First Mexican Empire , Provisional Government of Mexico , First Mexican Republic , Centralist Republic of Mexico , Siete Leyes , and Definitive treaty of peace and friendship between Mexico and Spain Mexico in 1824. Alta California included today''s Nevada. Francisco Garcés was the first European in the area. &#91; 3 &#93; Nevada was annexed as a part of the Spanish Empire in the northwestern territory of New Spain . Administratively, the area of Nevada was part of the Commandancy General of the Provincias Internas in the Viceroyalty of New Spain. Nevada became a part of Alta California (Upper California) province in 1804 when the Californias were split. With the Mexican War of Independence won in 1821, the province of Alta California became a territory (state) of Mexico, with a small population. Jedediah Smith entered the Las Vegas Valley in 1827, Peter Skene Ogden traveled the Humboldt River in 1828, and in 1829 a merchant from Nuevo México named Antonio Armijo streamlined travel along the Old Spanish Trail . Chronicling Armijo''s route his scout Raphael Rivera was the first to name Las Vegas, in an 1830 report to governor José Antonio Chave', '["clm_wiki_nevada_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_nevada_primary', 'plc_nevada', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Flag_of_Nevada.svg/960px-Flag_of_Nevada.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Flag_of_Nevada.svg/330px-Flag_of_Nevada.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Nevada',
   'Nevada', 1, 10, unixepoch());

-- 29. New Hampshire (state, NH, pop=New Hampshire)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_new-hampshire', 'place', 'new-hampshire', 'New Hampshire', 'published', 'en', 25,
   'New Hampshire is a state in the New England region of the Northeastern United States. It borders Massachusetts to the south, Vermont to the west, Maine and the Gulf of Maine to the east, and the Canadian province of Quebec to the north. Of the 50 U.S. states, New Hampshire is the seventh-smallest by land area and the tenth-least populous, with a population of 1,377,529 residents as of the 2020 census. Concord is the state capital and Manchester is the most populous city. New Hampshire''s motto, "Live Free or Die", reflects its role in the American Revolutionary War; its nickname, "The Granite State", refers to its extensive granite formations and quarries. It is well known for holding the first primary in the U.S. presidential election cycle, and its resulting influence on American electoral politics.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_new-hampshire', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_new-hampshire_in_country', 'plc_new-hampshire', 'ent_usa', 'located_in', 0.95, 'clm_wiki_new-hampshire_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-hampshire_overview', 'plc_new-hampshire', 'overview', 'Overview',
   'New Hampshire is a state in the New England region of the Northeastern United States. It borders Massachusetts to the south, Vermont to the west, Maine and the Gulf of Maine to the east, and the Canadian province of Quebec to the north. Of the 50 U.S. states, New Hampshire is the seventh-smallest by land area and the tenth-least populous, with a population of 1,377,529 residents as of the 2020 census. Concord is the state capital and Manchester is the most populous city. New Hampshire''s motto, "Live Free or Die", reflects its role in the American Revolutionary War; its nickname, "The Granite State", refers to its extensive granite formations and quarries. It is well known for holding the first primary in the U.S. presidential election cycle, and its resulting influence on American electoral politics.', '["clm_wiki_new-hampshire_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-hampshire_history', 'plc_new-hampshire', 'history', 'History',
   'U.S. state .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} This article is about the U.S. state. For other uses, see New Hampshire (disambiguation) . State in the United States @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-settlement{border-collapse:collapse;line-height:1.2em}@media(min-width:640px){.mw-parser-output .ib-settlement{width:23em}}.mw-parser-output .ib-settlement td,.mw-parser-output .ib-settlement th{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.4em 0.6em}.mw-parser-output .ib-settlement .mergedtoprow .infobox-full-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-header,.mw-parser-output .ib-settlement .mergedtoprow .infobox-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-label,.mw-parser-output .ib-settlement .mergedtoprow .infobox-below{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.2em 0.6em}.mw-parser-output .ib-settlement .mergedrow .info', '["clm_wiki_new-hampshire_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-hampshire_geography', 'plc_new-hampshire', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of New Hampshire The historical coat of arms of New Hampshire, from 1876 Various Algonquian -speaking Abenaki tribes, largely divided between the Androscoggin , Cowasuck and Pennacook nations, inhabited the area before European colonization. &#91; 1 &#93; Despite the similar language, they had a very different culture and religion from other Algonquian peoples. Indigenous people lived near Keene, New Hampshire 12,000 years ago, according to 2009 archaeological digs, &#91; 2 &#93; and the Abenaki were present in New Hampshire in pre-colonial times. &#91; 3 &#93; English and French explorers visited New Hampshire in 1600–1605, and David Thompson settled at Odiorne''s Point in present-day Rye in 1623. The first permanent European settlement was at Hilton''s Point (present-day Dover ). By 1631, the Upper Plantation comprised modern-day Dover, Durham and Stratham ; in 1679, it became the " Royal Province ". Southern New Hampshire was on the front lines during King William''s War during which both Dover and Durham were burned in 1689 and 1692, respectively. Father Rale''s War was fought between the colonists and the Wabanaki Confederacy throughout New Hampshire. The Strawbery Banke Museum in Portsmouth includes 37 restored buildings dating from the 17th through 19th centuries. New Hampshire was one of the Thirteen Colonies that rebelled against British rule during the American Revolution . During the American Revolution, New Hampshire was economically divided. The Seacoast region revolved around sawmills, shipyards, merchants'' warehouses, and established village and town centers, where wealthy m', '["clm_wiki_new-hampshire_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-hampshire_demographics', 'plc_new-hampshire', 'demographics', 'Demographics',
   'Flora and fauna [ edit ] The Old Man of the Mountain , a rock formation that became a symbol of New Hampshire. It fell in 2003, but is still used on state license plates , route markers, and the State Quarter . .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} See also: List of birds of New Hampshire Black bears , white-tailed deer , and moose can be found all over New Hampshire. There are also less-common animals such as the marten and the Canadian lynx . &#91; 1 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .', '["clm_wiki_new-hampshire_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-hampshire_overview', 'plc_new-hampshire', 'overview', 'History',
   'New Hampshire is a state in the New England region of the Northeastern United States. It borders Massachusetts to the south, Vermont to the west, Maine and the Gulf of Maine to the east, and the Canadian province of Quebec to the north. Of the 50 U.S. states, New Hampshire is the seventh-smallest by land area and the tenth-least populous, with a population of 1,377,529 residents as of the 2020 census. Concord is the state capital and Manchester is the most populous city. New Hampshire''s motto, "Live Free or Die", reflects its role in the American Revolutionary War; its nickname, "The Granite State", refers to its extensive granite formations and quarries. It is well known for holding the first primary in the U.S. presidential election cycle, and its resulting influence on American electoral politics.', '["clm_wiki_new-hampshire_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-hampshire_overview', 'plc_new-hampshire', 'overview', 'Geography',
   'New Hampshire is a state in the New England region of the Northeastern United States. It borders Massachusetts to the south, Vermont to the west, Maine and the Gulf of Maine to the east, and the Canadian province of Quebec to the north. Of the 50 U.S. states, New Hampshire is the seventh-smallest by land area and the tenth-least populous, with a population of 1,377,529 residents as of the 2020 census. Concord is the state capital and Manchester is the most populous city. New Hampshire''s motto, "Live Free or Die", reflects its role in the American Revolutionary War; its nickname, "The Granite State", refers to its extensive granite formations and quarries. It is well known for holding the first primary in the U.S. presidential election cycle, and its resulting influence on American electoral politics.', '["clm_wiki_new-hampshire_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-hampshire_overview', 'plc_new-hampshire', 'overview', 'Demographics',
   'New Hampshire is a state in the New England region of the Northeastern United States. It borders Massachusetts to the south, Vermont to the west, Maine and the Gulf of Maine to the east, and the Canadian province of Quebec to the north. Of the 50 U.S. states, New Hampshire is the seventh-smallest by land area and the tenth-least populous, with a population of 1,377,529 residents as of the 2020 census. Concord is the state capital and Manchester is the most populous city. New Hampshire''s motto, "Live Free or Die", reflects its role in the American Revolutionary War; its nickname, "The Granite State", refers to its extensive granite formations and quarries. It is well known for holding the first primary in the U.S. presidential election cycle, and its resulting influence on American electoral politics.', '["clm_wiki_new-hampshire_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_new-hampshire_primary', 'plc_new-hampshire', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Flag_of_New_Hampshire.svg/960px-Flag_of_New_Hampshire.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Flag_of_New_Hampshire.svg/330px-Flag_of_New_Hampshire.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'New Hampshire',
   'New Hampshire', 1, 10, unixepoch());

-- 30. New Jersey (state, NJ, pop=New Jersey)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_new-jersey', 'place', 'new-jersey', 'New Jersey', 'published', 'en', 25,
   'New Jersey is a state located in both the Mid-Atlantic and Northeastern regions of the United States. Located at the geographic hub of the heavily urbanized Northeast megalopolis, it is bordered to the northwest, north, and northeast by New York State; on its east, southeast, and south by the Atlantic Ocean; on its west by the Delaware River and Pennsylvania; and on its southwest by Delaware Bay and Delaware. At 7,354 square miles (19,050 km2), New Jersey is the fifth-smallest U.S. state by land area. According to a 2025 U.S. Census Bureau estimate, it is the 11th-most populous state, with over 9.5 million residents, its highest estimated count ever. The state capital is Trenton, and the state''s most populous city is Newark. New Jersey is the most densely populated U.S. state, and is the only U.S. state in which every county is deemed urban by the U.S. Census Bureau.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_new-jersey', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_new-jersey_in_country', 'plc_new-jersey', 'ent_usa', 'located_in', 0.95, 'clm_wiki_new-jersey_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-jersey_overview', 'plc_new-jersey', 'overview', 'Overview',
   'New Jersey is a state located in both the Mid-Atlantic and Northeastern regions of the United States. Located at the geographic hub of the heavily urbanized Northeast megalopolis, it is bordered to the northwest, north, and northeast by New York State; on its east, southeast, and south by the Atlantic Ocean; on its west by the Delaware River and Pennsylvania; and on its southwest by Delaware Bay and Delaware. At 7,354 square miles (19,050 km2), New Jersey is the fifth-smallest U.S. state by land area. According to a 2025 U.S. Census Bureau estimate, it is the 11th-most populous state, with over 9.5 million residents, its highest estimated count ever. The state capital is Trenton, and the state''s most populous city is Newark. New Jersey is the most densely populated U.S. state, and is the only U.S. state in which every county is deemed urban by the U.S. Census Bureau.', '["clm_wiki_new-jersey_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-jersey_history', 'plc_new-jersey', 'history', 'History',
   'U.S. state .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} This article is about the U.S. state. For other uses, see New Jersey (disambiguation) . "NJ" redirects here. For other uses, see NJ (disambiguation) . State in the United States @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-settlement{border-collapse:collapse;line-height:1.2em}@media(min-width:640px){.mw-parser-output .ib-settlement{width:23em}}.mw-parser-output .ib-settlement td,.mw-parser-output .ib-settlement th{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.4em 0.6em}.mw-parser-output .ib-settlement .mergedtoprow .infobox-full-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-header,.mw-parser-output .ib-settlement .mergedtoprow .infobox-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-label,.mw-parser-output .ib-settlement .mergedtoprow .infobox-below{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0', '["clm_wiki_new-jersey_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-jersey_geography', 'plc_new-jersey', 'geography', 'Geography',
   'Prehistoric era [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} See also: Paleontology in New Jersey The pressure of collision between North America and Africa gave rise to the Appalachian Mountains . Around 18,000 years ago, the Ice Age resulted in glaciers that reached New Jersey. As glaciers retreated, they left behind Lake Passaic along with rivers, meadows , swamps, and gorges . &#91; 1 &#93; Since the 6th millennium BC , Native American people have inhabited New Jersey, beginning with the Lenape tribe . Scheyichbi is the Lenape name for the land that represents present-day New Jersey. &#91; 2 &#93; The Lenape were several autonomous groups that practiced maize agriculture in order to supplement their hunting and gathering in the region surrounding the Delaware River , the lower Hudson River , and western Long Island Sound . The Lenape were divided into matrilineal clans that were based upon common female ancestors. Clans were organized into three distinct phratries identified by their animal sign: Turtle , Turkey , and Wolf . They first encountered the Dutch in the early 17th century, and their primary relationship with the Dutch and later European settlers was through fur trade . ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background', '["clm_wiki_new-jersey_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-jersey_demographics', 'plc_new-jersey', 'demographics', 'Demographics',
   'Colonial era [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main articles: Colonial history of New Jersey , New Netherland , New Sweden , Province of New Jersey , East Jersey , West Jersey , and Dominion of New England A map of New Netherland and New Sweden in present-day New Jersey during the colonial era The Dutch were the first Europeans to lay claim to geographic territory in present-day New Jersey. The Dutch colony of New Netherland consisted of parts of the modern Mid-Atlantic states. Although the European principle of land ownership was not recognized by the Lenape , Dutch West India Company policy required its colonists to purchase land that they settled. The first to do so was Michiel Pauw , who established a patroonship called Pavonia in 1630 along North River , that eventually became Bergen , the first permanent settlement, local civil government, and municipality in the state. Peter Minuit ''s purchase of lands along the Delaware River established the colony of New Sweden , that lasted until the Dutch conquered it in 1655. The entire region became a territory of England on June 24, 1664, after an English fleet under command of Colonel Richard Nicolls sailed into what is now New York Harbor and took control of Fort Amsterdam , annexing the entire province. During the English Civil War , the Channel Island of Jersey remained loyal to the British Crown and gave sanctuary to the King . In the Royal Square in St Helier , Charles II of England was proclaimed King in 1649, following the execution of his father, Charles I . North American lands were divided by Charles II , who gave his brother, the Duke of York (later King James II ), the region between New ', '["clm_wiki_new-jersey_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-jersey_overview', 'plc_new-jersey', 'overview', 'History',
   'New Jersey is a state located in both the Mid-Atlantic and Northeastern regions of the United States. Located at the geographic hub of the heavily urbanized Northeast megalopolis, it is bordered to the northwest, north, and northeast by New York State; on its east, southeast, and south by the Atlantic Ocean; on its west by the Delaware River and Pennsylvania; and on its southwest by Delaware Bay and Delaware. At 7,354 square miles (19,050 km2), New Jersey is the fifth-smallest U.S. state by land area. According to a 2025 U.S. Census Bureau estimate, it is the 11th-most populous state, with over 9.5 million residents, its highest estimated count ever. The state capital is Trenton, and the state''s most populous city is Newark. New Jersey is the most densely populated U.S. state, and is the only U.S. state in which every county is deemed urban by the U.S. Census Bureau.', '["clm_wiki_new-jersey_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-jersey_overview', 'plc_new-jersey', 'overview', 'Geography',
   'New Jersey is a state located in both the Mid-Atlantic and Northeastern regions of the United States. Located at the geographic hub of the heavily urbanized Northeast megalopolis, it is bordered to the northwest, north, and northeast by New York State; on its east, southeast, and south by the Atlantic Ocean; on its west by the Delaware River and Pennsylvania; and on its southwest by Delaware Bay and Delaware. At 7,354 square miles (19,050 km2), New Jersey is the fifth-smallest U.S. state by land area. According to a 2025 U.S. Census Bureau estimate, it is the 11th-most populous state, with over 9.5 million residents, its highest estimated count ever. The state capital is Trenton, and the state''s most populous city is Newark. New Jersey is the most densely populated U.S. state, and is the only U.S. state in which every county is deemed urban by the U.S. Census Bureau.', '["clm_wiki_new-jersey_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-jersey_overview', 'plc_new-jersey', 'overview', 'Demographics',
   'New Jersey is a state located in both the Mid-Atlantic and Northeastern regions of the United States. Located at the geographic hub of the heavily urbanized Northeast megalopolis, it is bordered to the northwest, north, and northeast by New York State; on its east, southeast, and south by the Atlantic Ocean; on its west by the Delaware River and Pennsylvania; and on its southwest by Delaware Bay and Delaware. At 7,354 square miles (19,050 km2), New Jersey is the fifth-smallest U.S. state by land area. According to a 2025 U.S. Census Bureau estimate, it is the 11th-most populous state, with over 9.5 million residents, its highest estimated count ever. The state capital is Trenton, and the state''s most populous city is Newark. New Jersey is the most densely populated U.S. state, and is the only U.S. state in which every county is deemed urban by the U.S. Census Bureau.', '["clm_wiki_new-jersey_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_new-jersey_primary', 'plc_new-jersey', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Flag_of_New_Jersey.svg/960px-Flag_of_New_Jersey.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Flag_of_New_Jersey.svg/330px-Flag_of_New_Jersey.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'New Jersey',
   'New Jersey', 1, 10, unixepoch());

-- 31. New Mexico (state, NM, pop=New Mexico)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_new-mexico', 'place', 'new-mexico', 'New Mexico', 'published', 'en', 25,
   'New Mexico, or Nuevo México in Spanish, is a landlocked state in the Southwestern region of the United States. It is one of the Mountain States of the southern Rocky Mountains, sharing the Four Corners region with Utah, Colorado, and Arizona. It also borders the state of Texas to the east and southeast, Oklahoma to the northeast, and shares an international border with the Mexican states of Chihuahua and Sonora to the south. New Mexico''s largest city is Albuquerque, and its state capital is Santa Fe, the oldest state capital in the U.S.—founded in 1610 as the government seat of Nuevo México in New Spain—and the highest in elevation, at 7,000 feet (2,134 m).', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_new-mexico', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_new-mexico_in_country', 'plc_new-mexico', 'ent_usa', 'located_in', 0.95, 'clm_wiki_new-mexico_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-mexico_overview', 'plc_new-mexico', 'overview', 'Overview',
   'New Mexico, or Nuevo México in Spanish, is a landlocked state in the Southwestern region of the United States. It is one of the Mountain States of the southern Rocky Mountains, sharing the Four Corners region with Utah, Colorado, and Arizona. It also borders the state of Texas to the east and southeast, Oklahoma to the northeast, and shares an international border with the Mexican states of Chihuahua and Sonora to the south. New Mexico''s largest city is Albuquerque, and its state capital is Santa Fe, the oldest state capital in the U.S.—founded in 1610 as the government seat of Nuevo México in New Spain—and the highest in elevation, at 7,000 feet (2,134 m).', '["clm_wiki_new-mexico_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-mexico_history', 'plc_new-mexico', 'history', 'History',
   'Etymology [ edit ] New Mexico received its name long before the present-day country of Mexico won independence from Spain and adopted that name in 1821. The name "Mexico" derives from Nahuatl and originally referred to the heartland of the Mexica , the rulers of the Aztec Empire , in the Valley of Mexico . &#91; 1 &#93; &#91; 2 &#93; After conquering the Aztecs in the early 16th century, the Spanish began exploring what is now the Southwestern United States, calling it Nuevo México . In 1581, the Chamuscado and Rodríguez Expedition named the region north of the Rio Grande San Felipe del Nuevo México . &#91; 3 &#93; The Spaniards had hoped to find wealthy indigenous cultures similar to the Mexica; the indigenous cultures of New Mexico proved to be unrelated to the Mexica and lacking in riches, but the name persisted. &#91; 4 &#93; &#91; 5 &#93; Before statehood in 1912, the name "New Mexico" loosely applied to various configurations of territories in the same general area, which evolved throughout the Spanish, Mexican, and U.S. periods , but typically encompassed most of present-day New Mexico along with sections of neighboring states. &#91; 6 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-ws-icon a{backgro', '["clm_wiki_new-mexico_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-mexico_geography', 'plc_new-mexico', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of New Mexico For a chronological guide, see Timeline of New Mexico history . See also: Territorial evolution of New Mexico Ancestral Pueblo territory shown in pink over New Mexico Prehistory [ edit ] The first known inhabitants of New Mexico were members of the Clovis culture of Paleo-Indians . &#91; 1 &#93; &#58;&#8202;19&#8202; Footprints discovered in 2017 suggest that humans may have been present in the region as long ago as 21,000–23,000 BC. &#91; 2 &#93; Later inhabitants include the Mogollon , Ancestral Pueblo cultures, which are characterized by sophisticated pottery work and urban development; &#91; 3 &#93; &#58;&#8202;52&#8202; pueblos or their remnants, like those at Acoma , Taos , and Chaco Culture National Historical Park , indicate the scale of Ancestral Puebloan dwellings within the area. These cultures and the Ute form part of the broader Oasisamerica region of pre-Contact North America. &#91; 4 &#93; Navajos may be descendants of the lost Naha tribe, a Slavey tribe from the Nahanni region west of Great Slave Lake. &#91; 5 &#93; The vast trade networks of the Ancestral Puebloans led to legends throughout Mesoamerica and the Aztec Empire ( Mexico ) of an unseen northern empire that rivaled their own, which they called Yancuic Mexico , literally translated as "a new Mexico". &#91; citation needed &#93; First Spanish colonial period [ edit ] Main articles: Seven Golden Cities of Cibola and Santa Fe de Nuevo México See also: Spanish peace treaties with the Comanche Aztec legends of a prosperous empire to their north became the primary basis for the mythical Seven Cities of', '["clm_wiki_new-mexico_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-mexico_demographics', 'plc_new-mexico', 'demographics', 'Demographics',
   'Prehistory [ edit ] The first known inhabitants of New Mexico were members of the Clovis culture of Paleo-Indians . &#91; 1 &#93; &#58;&#8202;19&#8202; Footprints discovered in 2017 suggest that humans may have been present in the region as long ago as 21,000–23,000 BC. &#91; 2 &#93; Later inhabitants include the Mogollon , Ancestral Pueblo cultures, which are characterized by sophisticated pottery work and urban development; &#91; 3 &#93; &#58;&#8202;52&#8202; pueblos or their remnants, like those at Acoma , Taos , and Chaco Culture National Historical Park , indicate the scale of Ancestral Puebloan dwellings within the area. These cultures and the Ute form part of the broader Oasisamerica region of pre-Contact North America. &#91; 4 &#93; Navajos may be descendants of the lost Naha tribe, a Slavey tribe from the Nahanni region west of Great Slave Lake. &#91; 5 &#93; The vast trade networks of the Ancestral Puebloans led to legends throughout Mesoamerica and the Aztec Empire ( Mexico ) of an unseen northern empire that rivaled their own, which they called Yancuic Mexico , literally translated as "a new Mexico". &#91; citation needed &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wi', '["clm_wiki_new-mexico_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-mexico_overview', 'plc_new-mexico', 'overview', 'History',
   'New Mexico, or Nuevo México in Spanish, is a landlocked state in the Southwestern region of the United States. It is one of the Mountain States of the southern Rocky Mountains, sharing the Four Corners region with Utah, Colorado, and Arizona. It also borders the state of Texas to the east and southeast, Oklahoma to the northeast, and shares an international border with the Mexican states of Chihuahua and Sonora to the south. New Mexico''s largest city is Albuquerque, and its state capital is Santa Fe, the oldest state capital in the U.S.—founded in 1610 as the government seat of Nuevo México in New Spain—and the highest in elevation, at 7,000 feet (2,134 m).', '["clm_wiki_new-mexico_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-mexico_overview', 'plc_new-mexico', 'overview', 'Geography',
   'New Mexico, or Nuevo México in Spanish, is a landlocked state in the Southwestern region of the United States. It is one of the Mountain States of the southern Rocky Mountains, sharing the Four Corners region with Utah, Colorado, and Arizona. It also borders the state of Texas to the east and southeast, Oklahoma to the northeast, and shares an international border with the Mexican states of Chihuahua and Sonora to the south. New Mexico''s largest city is Albuquerque, and its state capital is Santa Fe, the oldest state capital in the U.S.—founded in 1610 as the government seat of Nuevo México in New Spain—and the highest in elevation, at 7,000 feet (2,134 m).', '["clm_wiki_new-mexico_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-mexico_overview', 'plc_new-mexico', 'overview', 'Demographics',
   'New Mexico, or Nuevo México in Spanish, is a landlocked state in the Southwestern region of the United States. It is one of the Mountain States of the southern Rocky Mountains, sharing the Four Corners region with Utah, Colorado, and Arizona. It also borders the state of Texas to the east and southeast, Oklahoma to the northeast, and shares an international border with the Mexican states of Chihuahua and Sonora to the south. New Mexico''s largest city is Albuquerque, and its state capital is Santa Fe, the oldest state capital in the U.S.—founded in 1610 as the government seat of Nuevo México in New Spain—and the highest in elevation, at 7,000 feet (2,134 m).', '["clm_wiki_new-mexico_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_new-mexico_primary', 'plc_new-mexico', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Flag_of_New_Mexico.svg/1920px-Flag_of_New_Mexico.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Flag_of_New_Mexico.svg/330px-Flag_of_New_Mexico.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'New Mexico',
   'New Mexico', 1, 10, unixepoch());

-- 32. New York (state, NY, pop=New York)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_new-york', 'place', 'new-york', 'New York', 'published', 'en', 25,
   'New York most commonly refers to:New York City, the most populous city in the United States, located in the state of New York
New York (state), a state in the northeastern United States', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_new-york', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_new-york_in_country', 'plc_new-york', 'ent_usa', 'located_in', 0.95, 'clm_wiki_new-york_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-york_overview', 'plc_new-york', 'overview', 'Overview',
   'New York most commonly refers to:New York City, the most populous city in the United States, located in the state of New York
New York (state), a state in the northeastern United States', '["clm_wiki_new-york_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-york_history', 'plc_new-york', 'history', 'History',
   'Places [ edit ] United Kingdom [ edit ] New York, Lincolnshire New York, North Yorkshire New York, Tyne and Wear United States [ edit ] New York state [ edit ] New York metropolitan area , the region encompassing New York City and its suburbs New York County , covering the same area as the New York City borough of Manhattan New York, the US Postal Service address for Manhattan New York University , a private research university in New York City Province of New York , the British colony preceding the state of New York Other states [ edit ] New York, Florida , an unincorporated community in Santa Rosa County New York, Iowa , a former town in Wayne County New York, Kentucky , an unincorporated community in Ballard County New York, Missouri , a ghost town in Scott County New York, Texas , an unincorporated community in Henderson County New York Mountain , a mountain in Colorado New York Mountains , a mountain range in California Ukraine [ edit ] New York, Ukraine , a settlement in Donetsk Oblast', '["clm_wiki_new-york_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-york_geography', 'plc_new-york', 'geography', 'Geography',
   'United Kingdom [ edit ] New York, Lincolnshire New York, North Yorkshire New York, Tyne and Wear', '["clm_wiki_new-york_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-york_demographics', 'plc_new-york', 'demographics', 'Demographics',
   'United States [ edit ] New York state [ edit ] New York metropolitan area , the region encompassing New York City and its suburbs New York County , covering the same area as the New York City borough of Manhattan New York, the US Postal Service address for Manhattan New York University , a private research university in New York City Province of New York , the British colony preceding the state of New York Other states [ edit ] New York, Florida , an unincorporated community in Santa Rosa County New York, Iowa , a former town in Wayne County New York, Kentucky , an unincorporated community in Ballard County New York, Missouri , a ghost town in Scott County New York, Texas , an unincorporated community in Henderson County New York Mountain , a mountain in Colorado New York Mountains , a mountain range in California', '["clm_wiki_new-york_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-york_overview', 'plc_new-york', 'overview', 'History',
   'New York most commonly refers to:New York City, the most populous city in the United States, located in the state of New York
New York (state), a state in the northeastern United States', '["clm_wiki_new-york_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-york_overview', 'plc_new-york', 'overview', 'Geography',
   'New York most commonly refers to:New York City, the most populous city in the United States, located in the state of New York
New York (state), a state in the northeastern United States', '["clm_wiki_new-york_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_new-york_overview', 'plc_new-york', 'overview', 'Demographics',
   'New York most commonly refers to:New York City, the most populous city in the United States, located in the state of New York
New York (state), a state in the northeastern United States', '["clm_wiki_new-york_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 33. North Carolina (state, NC, pop=North Carolina)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_north-carolina', 'place', 'north-carolina', 'North Carolina', 'published', 'en', 25,
   'North Carolina is a state in the Southeastern and South Atlantic regions of the United States. It is bordered by Virginia to the north, the Atlantic Ocean to the east, South Carolina to the south, Georgia to the southwest, and Tennessee to the west. The state is the 28th-largest and ninth-most populous of the United States. Along with South Carolina, it makes up the Carolinas region of the East Coast. At the 2020 census, the state had a population of 10,439,388. Raleigh is the state''s capital and Charlotte is its most populous and one of the fastest growing cities in the United States. The Charlotte metropolitan area, with an estimated population of 2,883,370 in 2024, is the most populous metropolitan area in North Carolina, the 21st-most populous in the United States, and the largest banking center in the nation after New York City. The Research Triangle, with an estimated population of 2,368,947 in 2023, is the second-most populous combined metropolitan area in the state, 31st-most populous in the United States, and is home to the largest research park in the United States, Research Triangle Park.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_north-carolina', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_north-carolina_in_country', 'plc_north-carolina', 'ent_usa', 'located_in', 0.95, 'clm_wiki_north-carolina_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_north-carolina_overview', 'plc_north-carolina', 'overview', 'Overview',
   'North Carolina is a state in the Southeastern and South Atlantic regions of the United States. It is bordered by Virginia to the north, the Atlantic Ocean to the east, South Carolina to the south, Georgia to the southwest, and Tennessee to the west. The state is the 28th-largest and ninth-most populous of the United States. Along with South Carolina, it makes up the Carolinas region of the East Coast. At the 2020 census, the state had a population of 10,439,388. Raleigh is the state''s capital and Charlotte is its most populous and one of the fastest growing cities in the United States. The Charlotte metropolitan area, with an estimated population of 2,883,370 in 2024, is the most populous metropolitan area in North Carolina, the 21st-most populous in the United States, and the largest banking center in the nation after New York City. The Research Triangle, with an estimated population of 2,368,947 in 2023, is the second-most populous combined metropolitan area in the state, 31st-most populous in the United States, and is home to the largest research park in the United States, Research Triangle Park.', '["clm_wiki_north-carolina_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_north-carolina_history', 'plc_north-carolina', 'history', 'History',
   'U.S. state .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} This article is about the U.S. state. For the former British colony, see Province of North Carolina . For other uses, see North Carolina (disambiguation) . "The Old North State" redirects here. For the song, see The Old North State (song) . State in the United States @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-settlement{border-collapse:collapse;line-height:1.2em}@media(min-width:640px){.mw-parser-output .ib-settlement{width:23em}}.mw-parser-output .ib-settlement td,.mw-parser-output .ib-settlement th{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.4em 0.6em}.mw-parser-output .ib-settlement .mergedtoprow .infobox-full-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-header,.mw-parser-output .ib-settlement .mergedtoprow .infobox-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-label,.mw-parser-output .ib-', '["clm_wiki_north-carolina_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_north-carolina_geography', 'plc_north-carolina', 'geography', 'Geography',
   'Native Americans, lost colony, and permanent settlement [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} See also: Native Americans in the United States , Joara , Roanoke Island , and Fort Raleigh National Historic Site Ceremony of Secotan warriors in North Carolina. Watercolor painted by English colonist John White in 1585. North Carolina was inhabited for at least 10,000 years by succeeding prehistoric Indigenous cultures. The Hardaway Site saw major periods of occupation dating to 10,000 years BCE. Before 200 AD, people were building earthwork platform mounds for ceremonial and religious purposes. Succeeding peoples, including those of the South Appalachian Mississippian culture , established by 1000 AD in the Piedmont and mountain region, continued to build this style of mounds. In contrast to some of the larger centers of the classic Mississippian culture in the area that became known as the western Carolinas, northeastern Georgia, and southeastern Tennessee, most of the larger towns had only one central platform mound. Smaller settlements had none, but were close to more prominent towns. This area became known as the homelands of the historic Cherokee people, who are believed to have migrated over time from the Great Lakes area. In the 500–700 years preceding European contact, the Mississippian culture built elaborate cities and maintained far-flung regional trading networks. Its largest city was Cahokia , which had numerous mounds for different purposes, a highly stratified society, and was located in present-day southwestern Illinois near the Mississippi River. Starting in 1540, the Native polities of the Mississippian culture fell apart and reformed as n', '["clm_wiki_north-carolina_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_north-carolina_demographics', 'plc_north-carolina', 'demographics', 'Demographics',
   'Anglo-European settlement [ edit ] Sir Walter Raleigh , namesake of the state capital of North Carolina, Raleigh In 1584, Elizabeth I granted a charter to Sir Walter Raleigh , for whom the state capital is named, for land in present-day North Carolina (then part of the territory of Virginia ). &#91; 1 &#93; It was the second American territory that the English attempted to colonize. Raleigh established two colonies on the coast in the late 1580s, but both failed. The colony established in 1587 saw 118 colonists ''disappear'' when John White was unable to return from a supply run during battles with the Spanish Armada . The fate of the " Lost Colony " of Roanoke Island remains one of the most widely debated mysteries of American history. Two native Chieftains, Manteo and Wanchese , of which the former helped the colonists and the latter was distrustful, had involvement in the colony and even accompanied Raleigh to England on a previous voyage in 1585. Manteo was also the first Indigenous North American to be baptized by English settlers. Upon White''s return in 1590, neither native nor Englishman were to be found. Popular theory holds that the colonists either traveled away with or assimilated into local native culture. &#91; 2 &#93; Virginia Dare , the first English person to be born in North America, was born on Roanoke Island on August 18, 1587; the surrounding Dare County is named for her. As early as 1650, settlers from the Virginia colony had moved into the Albemarle Sound region. By 1663, King Charles&#160;II of England granted a charter to start a new colony on the North American continent; this would generally establish North Carolina''s borders. He named it Carolina in honor of his father, Charles &#160; I . &#91; 3 &#93; By 1665, a second charter was issued to attempt to resolve territorial questions. This charter rewarded the Lords Proprietors , eight Englishmen to whom King Charles II granted joint ownership of a tract of land in the state. All of these men ', '["clm_wiki_north-carolina_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_north-carolina_overview', 'plc_north-carolina', 'overview', 'History',
   'North Carolina is a state in the Southeastern and South Atlantic regions of the United States. It is bordered by Virginia to the north, the Atlantic Ocean to the east, South Carolina to the south, Georgia to the southwest, and Tennessee to the west. The state is the 28th-largest and ninth-most populous of the United States. Along with South Carolina, it makes up the Carolinas region of the East Coast. At the 2020 census, the state had a population of 10,439,388. Raleigh is the state''s capital and Charlotte is its most populous and one of the fastest growing cities in the United States. The Charlotte metropolitan area, with an estimated population of 2,883,370 in 2024, is the most populous metropolitan area in North Carolina, the 21st-most populous in the United States, and the largest banking center in the nation after New York City. The Research Triangle, with an estimated population of 2,368,947 in 2023, is the second-most populous combined metropolitan area in the state, 31st-most populous in the United States, and is home to the largest research park in the United States, Research Triangle Park.', '["clm_wiki_north-carolina_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_north-carolina_overview', 'plc_north-carolina', 'overview', 'Geography',
   'North Carolina is a state in the Southeastern and South Atlantic regions of the United States. It is bordered by Virginia to the north, the Atlantic Ocean to the east, South Carolina to the south, Georgia to the southwest, and Tennessee to the west. The state is the 28th-largest and ninth-most populous of the United States. Along with South Carolina, it makes up the Carolinas region of the East Coast. At the 2020 census, the state had a population of 10,439,388. Raleigh is the state''s capital and Charlotte is its most populous and one of the fastest growing cities in the United States. The Charlotte metropolitan area, with an estimated population of 2,883,370 in 2024, is the most populous metropolitan area in North Carolina, the 21st-most populous in the United States, and the largest banking center in the nation after New York City. The Research Triangle, with an estimated population of 2,368,947 in 2023, is the second-most populous combined metropolitan area in the state, 31st-most populous in the United States, and is home to the largest research park in the United States, Research Triangle Park.', '["clm_wiki_north-carolina_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_north-carolina_overview', 'plc_north-carolina', 'overview', 'Demographics',
   'North Carolina is a state in the Southeastern and South Atlantic regions of the United States. It is bordered by Virginia to the north, the Atlantic Ocean to the east, South Carolina to the south, Georgia to the southwest, and Tennessee to the west. The state is the 28th-largest and ninth-most populous of the United States. Along with South Carolina, it makes up the Carolinas region of the East Coast. At the 2020 census, the state had a population of 10,439,388. Raleigh is the state''s capital and Charlotte is its most populous and one of the fastest growing cities in the United States. The Charlotte metropolitan area, with an estimated population of 2,883,370 in 2024, is the most populous metropolitan area in North Carolina, the 21st-most populous in the United States, and the largest banking center in the nation after New York City. The Research Triangle, with an estimated population of 2,368,947 in 2023, is the second-most populous combined metropolitan area in the state, 31st-most populous in the United States, and is home to the largest research park in the United States, Research Triangle Park.', '["clm_wiki_north-carolina_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_north-carolina_primary', 'plc_north-carolina', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Flag_of_North_Carolina.svg/960px-Flag_of_North_Carolina.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Flag_of_North_Carolina.svg/330px-Flag_of_North_Carolina.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'North Carolina',
   'North Carolina', 1, 10, unixepoch());

-- 34. North Dakota (state, ND, pop=North Dakota)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_north-dakota', 'place', 'north-dakota', 'North Dakota', 'published', 'en', 25,
   'North Dakota is a landlocked U.S. state in the Upper Midwest, named after the indigenous Dakota and Sioux peoples. It is bordered by the Canadian provinces of Saskatchewan and Manitoba to the north and by the U.S. states of Minnesota to the east, South Dakota to the south, and Montana to the west. North Dakota is part of the Great Plains region, characterized by broad prairies, steppe, temperate savanna, badlands, and farmland. North Dakota is the 19th-largest state by area, but with a population of just under 800,000, the fourth-least populous and fourth-least densely populated. The state capital is Bismarck and the most populous city is Fargo, which accounts for nearly a fifth of the state''s population; both cities are among the fastest-growing in the U.S., although half of North Dakotans live in rural areas.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_north-dakota', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_north-dakota_in_country', 'plc_north-dakota', 'ent_usa', 'located_in', 0.95, 'clm_wiki_north-dakota_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_north-dakota_overview', 'plc_north-dakota', 'overview', 'Overview',
   'North Dakota is a landlocked U.S. state in the Upper Midwest, named after the indigenous Dakota and Sioux peoples. It is bordered by the Canadian provinces of Saskatchewan and Manitoba to the north and by the U.S. states of Minnesota to the east, South Dakota to the south, and Montana to the west. North Dakota is part of the Great Plains region, characterized by broad prairies, steppe, temperate savanna, badlands, and farmland. North Dakota is the 19th-largest state by area, but with a population of just under 800,000, the fourth-least populous and fourth-least densely populated. The state capital is Bismarck and the most populous city is Fargo, which accounts for nearly a fifth of the state''s population; both cities are among the fastest-growing in the U.S., although half of North Dakotans live in rural areas.', '["clm_wiki_north-dakota_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_north-dakota_history', 'plc_north-dakota', 'history', 'History',
   'U.S. state .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} This article is about the U.S. state. For other uses, see North Dakota (disambiguation) . State in the United States @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-settlement{border-collapse:collapse;line-height:1.2em}@media(min-width:640px){.mw-parser-output .ib-settlement{width:23em}}.mw-parser-output .ib-settlement td,.mw-parser-output .ib-settlement th{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.4em 0.6em}.mw-parser-output .ib-settlement .mergedtoprow .infobox-full-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-header,.mw-parser-output .ib-settlement .mergedtoprow .infobox-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-label,.mw-parser-output .ib-settlement .mergedtoprow .infobox-below{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.2em 0.6em}.mw-parser-output .ib-settlement .mergedrow .infob', '["clm_wiki_north-dakota_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_north-dakota_geography', 'plc_north-dakota', 'geography', 'Geography',
   'Pre-colonial history [ edit ] Native American people lived in what is now North Dakota for thousands of years before the arrival of Europeans. The known tribes included the Mandan people (from around the 11th century), &#91; 1 &#93; while the first Hidatsa group arrived a few hundred years later. &#91; 2 &#93; They both assembled in villages on tributaries of the Missouri River in what would become west-central North Dakota. Crow Indians traveled the plains from the west to visit and trade with the related Hidatsas &#91; 1 &#93; after the split between them, probably in the 17th century. &#91; 3 &#93; Later came divisions of the Sioux : the Lakota , the Santee and the Yanktonai . The Assiniboine and the Plains Cree undertook southward journeys to the village Indians, either for trade or for war. &#91; 1 &#93; &#91; 4 &#93; The Shoshone Indians in present-day Wyoming and Montana may have carried out attacks on Indian enemies as far east as the Missouri. &#91; 5 &#93; A group of Cheyennes lived in a village of earth lodges at the lower Sheyenne River ( Biesterfeldt Site ) for decades in the 18th century. Due to attacks by Crees, Assiniboines and Chippewas armed with firearms &#91; clarification needed &#93; , they left the area around 1780 and crossed Missouri some time after. &#91; 6 &#93; A band of the few Sotaio Indians lived east of Missouri River and met the uprooted Cheyennes before the end of the century. They soon followed the Cheyennes across Missouri and lived among them south of Cannonball River . &#91; 7 &#93; Eventually, the Cheyenne and the Sutaio became one tribe and turned into mounted buffalo hunters with ranges mainly outside North Dakota. Before the middle of the 19th century, the Arikara entered the future state from the south and joined the Mandan and Hidatsa. &#91; 8 &#93; With time, a number of Indians entered into treaties with the United States. Many of the treaties defined the territory of a specific tribe. ^ a b c Wood, W. Raymond and Thomas', '["clm_wiki_north-dakota_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_north-dakota_demographics', 'plc_north-dakota', 'demographics', 'Demographics',
   'European exploration and colonization [ edit ] The first European to reach the area was the French-Canadian trader Pierre Gaultier, sieur de La Vérendrye , who led an exploration and trading party to the Mandan villages in 1738 guided by Assiniboine Indians. &#91; 1 &#93; From 1762 to 1800, the region formed part of Spanish Louisiana , part of New Spain, administered from Mexico City. &#91; 2 &#93; Fort Union Trading Post National Historic Site On October 1, 1800, the Third Treaty of San Ildefonso was signed, and the territory of Spanish Louisiana was transferred to France as part of French Louisiana , which was later sold to the United States in the Louisiana Purchase . The northeastern portion of the state, corresponding to the Red River Valley and the drainage basin to the Hudson Bay was, at the time, part of Rupert''s Land , a British North American territory. It remained under control of the Hudson''s Bay Company until the Anglo-American Convention of 1818 , which set the border between it and the United States to the 49th parallel . ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(', '["clm_wiki_north-dakota_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_north-dakota_overview', 'plc_north-dakota', 'overview', 'History',
   'North Dakota is a landlocked U.S. state in the Upper Midwest, named after the indigenous Dakota and Sioux peoples. It is bordered by the Canadian provinces of Saskatchewan and Manitoba to the north and by the U.S. states of Minnesota to the east, South Dakota to the south, and Montana to the west. North Dakota is part of the Great Plains region, characterized by broad prairies, steppe, temperate savanna, badlands, and farmland. North Dakota is the 19th-largest state by area, but with a population of just under 800,000, the fourth-least populous and fourth-least densely populated. The state capital is Bismarck and the most populous city is Fargo, which accounts for nearly a fifth of the state''s population; both cities are among the fastest-growing in the U.S., although half of North Dakotans live in rural areas.', '["clm_wiki_north-dakota_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_north-dakota_overview', 'plc_north-dakota', 'overview', 'Geography',
   'North Dakota is a landlocked U.S. state in the Upper Midwest, named after the indigenous Dakota and Sioux peoples. It is bordered by the Canadian provinces of Saskatchewan and Manitoba to the north and by the U.S. states of Minnesota to the east, South Dakota to the south, and Montana to the west. North Dakota is part of the Great Plains region, characterized by broad prairies, steppe, temperate savanna, badlands, and farmland. North Dakota is the 19th-largest state by area, but with a population of just under 800,000, the fourth-least populous and fourth-least densely populated. The state capital is Bismarck and the most populous city is Fargo, which accounts for nearly a fifth of the state''s population; both cities are among the fastest-growing in the U.S., although half of North Dakotans live in rural areas.', '["clm_wiki_north-dakota_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_north-dakota_overview', 'plc_north-dakota', 'overview', 'Demographics',
   'North Dakota is a landlocked U.S. state in the Upper Midwest, named after the indigenous Dakota and Sioux peoples. It is bordered by the Canadian provinces of Saskatchewan and Manitoba to the north and by the U.S. states of Minnesota to the east, South Dakota to the south, and Montana to the west. North Dakota is part of the Great Plains region, characterized by broad prairies, steppe, temperate savanna, badlands, and farmland. North Dakota is the 19th-largest state by area, but with a population of just under 800,000, the fourth-least populous and fourth-least densely populated. The state capital is Bismarck and the most populous city is Fargo, which accounts for nearly a fifth of the state''s population; both cities are among the fastest-growing in the U.S., although half of North Dakotans live in rural areas.', '["clm_wiki_north-dakota_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_north-dakota_primary', 'plc_north-dakota', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Flag_of_North_Dakota.svg/1280px-Flag_of_North_Dakota.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Flag_of_North_Dakota.svg/330px-Flag_of_North_Dakota.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'North Dakota',
   'North Dakota', 1, 10, unixepoch());

-- 35. Ohio (state, OH, pop=Ohio)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_ohio', 'place', 'ohio', 'Ohio', 'published', 'en', 25,
   'Ohio is a state in the Midwestern region of the United States. It borders the Canadian province of Ontario to the north, Pennsylvania to the east, West Virginia to the southeast, Kentucky to the southwest, Indiana to the west, and Michigan to the northwest. Ohio is the 34th-largest state by area, at 44,825 sq mi (116,100 km2), and the seventh-most populous state, with a population of nearly 11.9 million. Its capital and most populous city is Columbus, with other major metropolitan cities including Cleveland, Cincinnati, Dayton, Akron, and Toledo.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_ohio', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_ohio_in_country', 'plc_ohio', 'ent_usa', 'located_in', 0.95, 'clm_wiki_ohio_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_ohio_overview', 'plc_ohio', 'overview', 'Overview',
   'Ohio is a state in the Midwestern region of the United States. It borders the Canadian province of Ontario to the north, Pennsylvania to the east, West Virginia to the southeast, Kentucky to the southwest, Indiana to the west, and Michigan to the northwest. Ohio is the 34th-largest state by area, at 44,825 sq mi (116,100 km2), and the seventh-most populous state, with a population of nearly 11.9 million. Its capital and most populous city is Columbus, with other major metropolitan cities including Cleveland, Cincinnati, Dayton, Akron, and Toledo.', '["clm_wiki_ohio_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_ohio_history', 'plc_ohio', 'history', 'History',
   'U.S. state .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} This article is about the U.S. state. For other uses, see Ohio (disambiguation) . State in the United States @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-settlement{border-collapse:collapse;line-height:1.2em}@media(min-width:640px){.mw-parser-output .ib-settlement{width:23em}}.mw-parser-output .ib-settlement td,.mw-parser-output .ib-settlement th{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.4em 0.6em}.mw-parser-output .ib-settlement .mergedtoprow .infobox-full-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-header,.mw-parser-output .ib-settlement .mergedtoprow .infobox-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-label,.mw-parser-output .ib-settlement .mergedtoprow .infobox-below{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.2em 0.6em}.mw-parser-output .ib-settlement .mergedrow .infobox-full-', '["clm_wiki_ohio_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_ohio_geography', 'plc_ohio', 'geography', 'Geography',
   'Indigenous settlement [ edit ] Artist''s conception of the Fort Ancient culture SunWatch Indian Village in present-day Dayton, Ohio Archeological evidence of spear points of both the Folsom and Clovis types indicate that the Ohio Valley was inhabited by nomadic people as early as 13,000&#160;BC. &#91; 1 &#93; These early nomads disappeared from Ohio by 1,000&#160;BC. &#91; 1 &#93; Between 1,000 and 800&#160;BC, the sedentary Adena culture emerged. The Adena established "semi-permanent" villages because they domesticated plants, including sunflowers, and "grew squash and possibly corn"; with hunting and gathering, this cultivation supported more settled, complex villages. &#91; 2 &#93; The most notable remnant of the Adena culture is the Great Serpent Mound , located in Adams County, Ohio . &#91; 2 &#93; Around 100&#160;BC, the Adena evolved into the Hopewell tradition , who were also mound builders. Their complex, large and technologically sophisticated earthworks can be found in modern-day Marietta , Newark , and Circleville . &#91; 3 &#93; They were also a prolific trading society, their trading network spanning a third of the continent. &#91; 4 &#93; The Hopewell disappeared from the Ohio Valley about 600&#160;AD. The Mississippian culture rose as the Hopewell culture declined. Many Siouan-speaking peoples from the plains and east coast claim them as ancestors and say they lived throughout the Ohio region until approximately the 13th century. &#91; 5 &#93; There were three other cultures contemporaneous with the Mississippians: the Fort Ancient people, the Whittlesey culture &#91; 5 &#93; and the Monongahela Culture . &#91; 6 &#93; All three disappeared in the 17th century. Their origins are unknown. The Shawnees may have absorbed the Fort Ancient people. &#91; 5 &#93; It is also possible that the Monongahela held no land in Ohio during the Colonial Era. The Mississippian culture was close to and traded extensively with the Fort Ancient people. Iroquois conquests ', '["clm_wiki_ohio_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_ohio_demographics', 'plc_ohio', 'demographics', 'Demographics',
   'Colonial and Revolutionary eras [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} See also: Ohio Country and Western theater of the American Revolutionary War During the 18th century, the French set up a system of trading posts to control the fur trade in the region, which was known as the Ohio Country . Beginning in 1754, France and Britain fought the French and Indian War , with various Native American tribes on each side. As a result of the Treaty of Paris , the French ceded control of Ohio and the remainder of the Old Northwest to Britain in 1763. &#91; 1 &#93; During the 1760s and 70s, Britain thinly exercised sovereignty over the Ohio Country by stationing small garrisons in the region. &#91; a &#93; Just beyond Ohio Country was the Miami people capital of Kekionga , which became the center of British trade and influence in Ohio Country and throughout the future Northwest Territory. By the Royal Proclamation of 1763 , lands west of Appalachia were closed to settlement by Anglo-American colonists. &#91; 2 &#93; The Treaty of Fort Stanwix in 1768 explicitly reserved lands north and west of the Ohio as Native lands. &#91; 3 &#93; A new set of British policies towards the region''s tribes led to the outbreak of Pontiac''s War in 1763. &#91; 4 &#93; Ohio tribes participated in the war until an armed expedition in Ohio led by Brigadier General Henry Bouquet brought about a truce. Another colonial military expedition into the Ohio Country in 1774 brought Lord Dunmore''s War , kicked off by the Yellow Creek massacre in Ohio, to a conclusion. In 1774, Britain passed the Quebec Act , which formally annexed Ohio and other western lands to the Province of Quebec in order t', '["clm_wiki_ohio_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_ohio_primary', 'plc_ohio', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Flag_of_Ohio.svg/960px-Flag_of_Ohio.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Flag_of_Ohio.svg/330px-Flag_of_Ohio.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Ohio',
   'Ohio', 1, 10, unixepoch());

-- 36. Oklahoma (state, OK, pop=Oklahoma)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_oklahoma', 'place', 'oklahoma', 'Oklahoma', 'published', 'en', 25,
   'Oklahoma, is a landlocked state in the South Central, Southern, and Southwestern regions of the United States. It borders Texas to the southwest, Kansas to the north, Missouri to the northeast, Arkansas to the southeast, New Mexico to the west, and Colorado to the northwest. Partially in the western extreme of the Upland South, it is the 20th-most extensive and the 28th-most populous of the 50 United States. Its residents are known as Oklahomans, and its capital and largest city is Oklahoma City.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_oklahoma', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_oklahoma_in_country', 'plc_oklahoma', 'ent_usa', 'located_in', 0.95, 'clm_wiki_oklahoma_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_oklahoma_overview', 'plc_oklahoma', 'overview', 'Overview',
   'Oklahoma, is a landlocked state in the South Central, Southern, and Southwestern regions of the United States. It borders Texas to the southwest, Kansas to the north, Missouri to the northeast, Arkansas to the southeast, New Mexico to the west, and Colorado to the northwest. Partially in the western extreme of the Upland South, it is the 20th-most extensive and the 28th-most populous of the 50 United States. Its residents are known as Oklahomans, and its capital and largest city is Oklahoma City.', '["clm_wiki_oklahoma_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_oklahoma_history', 'plc_oklahoma', 'history', 'History',
   'Etymology [ edit ] The name Oklahoma comes from the Choctaw language phrase okla , ''people'', and humma , translated as ''red''. &#91; 1 &#93; &#91; 2 &#93; Choctaw Nation Chief Allen Wright suggested the name in 1865 during treaty negotiations with the federal US government on the use of Indian Territory . He envisioned an all exclusive American Indian state controlled by the United States bureau of Indian Affairs . A painting of the 1865 Council now hangs in the Oklahoma Senate. &#91; 3 &#93; Oklahoma later became the de facto name for Oklahoma Territory , and it was officially approved in 1890, two years after that area was opened to American settlers . &#91; 4 &#93; &#91; 5 &#93; &#91; 6 &#93; ^ Cite error: The named reference cno was invoked but never defined (see the help page ). ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-ws-icon a{background-size:contain;padding:0 1em 0 0}.mw-parser-output .cs1-code{color:inherit;background:inherit;border:none;padding:inherit}.mw-parser-output .cs1-hidden-error{display:none;color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-visible-error{color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-maint{display:none;color:#085;margin-left:0.3em}.mw-parser-output .cs1-ker', '["clm_wiki_oklahoma_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_oklahoma_geography', 'plc_oklahoma', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Oklahoma Pre-Columbian [ edit ] Indigenous peoples were present in what is now Oklahoma by the last ice age . &#91; 1 &#93; Ancestors of the Wichita and Affiliated Tribes (including Teyas and Escanjaques and Tawakoni ), Tonkawa , &#91; 2 &#93; and Caddo (including Kichai ) lived in what is now Oklahoma. Southern Plains villagers lived in the central and west of the state, with a subgroup, the Panhandle culture people, living in the panhandle region. Caddoan Mississippian culture peoples lived in the eastern part of the state. Spiro Mounds , in what is now Spiro, Oklahoma , was a major Mississippian mound complex that flourished between AD 850 and 1450. &#91; 3 &#93; &#91; 4 &#93; Plains Apache people settled in the Southern Plains and in Oklahoma between 1300 and 1500. &#91; 5 &#93; European exploration and colonization [ edit ] The expedition of Spaniard Francisco Vázquez de Coronado traveled through the area in 1541, &#91; 6 &#93; but French explorers claimed the area in the early 18th century. &#91; 7 &#93; By the 18th century, Comanche and Kiowa entered the region from the west and Quapaw and Osage peoples moved into what is now eastern Oklahoma. French colonists claimed the region until 1803, when all the French territory west of the Mississippi River was acquired by the United States in the Louisiana Purchase . &#91; 6 &#93; The territory was a part of the Arkansas Territory from 1819 until 1828. &#91; 8 &#93; 19th century [ edit ] During the 19th century, the U.S. federal government forcibly removed tens of thousands of American Indians from their ancestral homelands from acr', '["clm_wiki_oklahoma_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_oklahoma_demographics', 'plc_oklahoma', 'demographics', 'Demographics',
   'Pre-Columbian [ edit ] Indigenous peoples were present in what is now Oklahoma by the last ice age . &#91; 1 &#93; Ancestors of the Wichita and Affiliated Tribes (including Teyas and Escanjaques and Tawakoni ), Tonkawa , &#91; 2 &#93; and Caddo (including Kichai ) lived in what is now Oklahoma. Southern Plains villagers lived in the central and west of the state, with a subgroup, the Panhandle culture people, living in the panhandle region. Caddoan Mississippian culture peoples lived in the eastern part of the state. Spiro Mounds , in what is now Spiro, Oklahoma , was a major Mississippian mound complex that flourished between AD 850 and 1450. &#91; 3 &#93; &#91; 4 &#93; Plains Apache people settled in the Southern Plains and in Oklahoma between 1300 and 1500. &#91; 5 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-pars', '["clm_wiki_oklahoma_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_oklahoma_primary', 'plc_oklahoma', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Flag_of_Oklahoma.svg/960px-Flag_of_Oklahoma.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Flag_of_Oklahoma.svg/330px-Flag_of_Oklahoma.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Oklahoma',
   'Oklahoma', 1, 10, unixepoch());

-- 37. Oregon (state, OR, pop=Oregon)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_oregon', 'place', 'oregon', 'Oregon', 'published', 'en', 25,
   'Oregon is a state in the Pacific Northwest region of the United States. It is a part of the Western United States, with the Columbia River delineating much of Oregon''s northern boundary with Washington, while the Snake River delineates much of its eastern boundary with Idaho. The 42° north parallel delineates the southern boundary with California and Nevada. The western boundary is formed by the Pacific Ocean.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_oregon', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_oregon_in_country', 'plc_oregon', 'ent_usa', 'located_in', 0.95, 'clm_wiki_oregon_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_oregon_overview', 'plc_oregon', 'overview', 'Overview',
   'Oregon is a state in the Pacific Northwest region of the United States. It is a part of the Western United States, with the Columbia River delineating much of Oregon''s northern boundary with Washington, while the Snake River delineates much of its eastern boundary with Idaho. The 42° north parallel delineates the southern boundary with California and Nevada. The western boundary is formed by the Pacific Ocean.', '["clm_wiki_oregon_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_oregon_history', 'plc_oregon', 'history', 'History',
   'Etymology [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Etymology of Oregon An Oregon border welcome sign at Denio, Nevada The origin of the state''s name is uncertain. The earliest geographical designation "orejón" (meaning "one with big ears") comes from the Spanish historical chronicle Relación de la Alta y Baja California (1598), &#91; 1 &#93; written by Rodrigo Montezuma of New Spain ; here it refers to the region of the Columbia River as it was encountered by the first Spanish scouts. The " j " in the Spanish phrase " El Orejón " was eventually corrupted into a "g" under this theory of the name''s origin. &#91; 2 &#93; Another possible source is the Spanish word orégano , referring to the plant with that name that grows in the southern part of the region, &#91; citation needed &#93; or that the area around the Columbia River was named after a stream in Spain called "Arroyo del Oregón", located in the province of Ciudad Real . &#91; citation needed &#93; Another early use of the name, spelled Ouragon , was by Major Robert Rogers in a 1765 petition to the Kingdom of Great Britain . The term referred to the then-mythical River of the West (the Columbia River). By 1778, the spelling had shifted to Oregon . &#91; 3 &#93; Rogers wrote: ... &#160; from the Great Lakes towards the Head of the Mississippi, and from thence to the River called by the Indians Ouragon &#160; ... &#91; 4 &#93; One suggestion is that this name comes from the French word ouragan ("windstorm" or "hurricane"), which was applied to the River of the West based on Native American tales of powerful Chinook winds on the lower Columbia River, or perhaps from first-hand French experience with the Chinook winds of the Great Plains . At the time, the River of the West was thought to rise in western Minnesota and flow west through the Great Plains. &#91; 5 &#93; Another suggestion comes from Joaquin Miller , who wrote in Sunset magazine in 1904: The name, Oregon, is rounded down phonetically, from Ouve água —Oragua, Or-a-gon, Oregon—given probably by the same Portuguese navigator that named the Farallones after his first officer, and it literally, in a large way, means cascade', '["clm_wiki_oregon_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_oregon_geography', 'plc_oregon', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Oregon Earliest inhabitants [ edit ] See also: Native American peoples of Oregon and Kennewick Man Paul Shoaway of the Umatilla tribe, 1899 While there is considerable evidence that Paleo-Indians inhabited the region, the oldest evidence of habitation in Oregon was found at Fort Rock Cave and the Paisley Caves in Lake County . Archaeologist Luther Cressman dated material from Fort Rock to 13,200 years ago, &#91; 1 &#93; and there is evidence supporting inhabitants in the region at least 15,000 years ago. &#91; 2 &#93; By 8000 BC, there were settlements throughout the state, with populations concentrated along the lower Columbia River, in the western valleys, and around coastal estuaries. During the prehistoric period , the Willamette Valley region was flooded after the collapse of glacial dams from Lake Missoula , located in what is now Montana . These massive floods occurred during the last glacial period and filled the valley with 300 to 400 feet (91 to 122&#160;m) of water. &#91; 3 &#93; By the 16th century, Oregon was home to many Native American groups, including the Chinook , Coquille (Ko-Kwell), Bannock , Kalapuya , Klamath , Klickitat , Molala , Nez Perce , Shasta , Takelma , Umatilla , and Umpqua . &#91; 4 &#93; &#91; 5 &#93; &#91; 6 &#93; &#91; 7 &#93; European and pioneer settlement [ edit ] Main articles: Oregon Country , Oregon pioneer history , Columbia District , Provisional Government of Oregon , Organic act §&#160;List of organic acts , and Spanish expeditions to the Pacific Northwest The first Europeans to visit Oregon were Spanish explorers led by Juan Rodríguez C', '["clm_wiki_oregon_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_oregon_demographics', 'plc_oregon', 'demographics', 'Demographics',
   'Earliest inhabitants [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} See also: Native American peoples of Oregon and Kennewick Man Paul Shoaway of the Umatilla tribe, 1899 While there is considerable evidence that Paleo-Indians inhabited the region, the oldest evidence of habitation in Oregon was found at Fort Rock Cave and the Paisley Caves in Lake County . Archaeologist Luther Cressman dated material from Fort Rock to 13,200 years ago, &#91; 1 &#93; and there is evidence supporting inhabitants in the region at least 15,000 years ago. &#91; 2 &#93; By 8000 BC, there were settlements throughout the state, with populations concentrated along the lower Columbia River, in the western valleys, and around coastal estuaries. During the prehistoric period , the Willamette Valley region was flooded after the collapse of glacial dams from Lake Missoula , located in what is now Montana . These massive floods occurred during the last glacial period and filled the valley with 300 to 400 feet (91 to 122&#160;m) of water. &#91; 3 &#93; By the 16th century, Oregon was home to many Native American groups, including the Chinook , Coquille (Ko-Kwell), Bannock , Kalapuya , Klamath , Klickitat , Molala , Nez Perce , Shasta , Takelma , Umatilla , and Umpqua . &#91; 4 &#93; &#91; 5 &#93; &#91; 6 &#93; &#91; 7 &#93; ^ Robbins 2005 . ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}', '["clm_wiki_oregon_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_oregon_primary', 'plc_oregon', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Flag_of_Oregon.svg/960px-Flag_of_Oregon.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Flag_of_Oregon.svg/330px-Flag_of_Oregon.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Oregon',
   'Oregon', 1, 10, unixepoch());

-- 38. Pennsylvania (state, PA, pop=Pennsylvania)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_pennsylvania', 'place', 'pennsylvania', 'Pennsylvania', 'published', 'en', 25,
   'Pennsylvania, officially the Commonwealth of Pennsylvania, is a state located in the Mid-Atlantic, Northeastern, Appalachian, and Great Lakes regions of the United States. The state borders Delaware to its southeast, Maryland to its south, forming the Mason-Dixon Line, West Virginia to its southwest, Ohio to its west, the Canadian province of Ontario to its northwest via Lake Erie, New York to its north, and the Delaware River and New Jersey to its east. Pennsylvania''s most populous city is Philadelphia, and the state capital is Harrisburg. Pennsylvania is the fifth-most populous U.S. state, home to over 13 million residents as of the 2020 United States census. Pennsylvania has the ninth-highest by population density, and is the 33rd-largest by land area. The largest metropolitan statistical area is the Philadelphia metropolitan area, centered on Philadelphia, the sixth-most populous U.S. city. Pennsylvania''s second-largest metropolitan area, Greater Pittsburgh, is centered in and around Pittsburgh, the commonwealth''s second-largest city.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_pennsylvania', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_pennsylvania_in_country', 'plc_pennsylvania', 'ent_usa', 'located_in', 0.95, 'clm_wiki_pennsylvania_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_pennsylvania_overview', 'plc_pennsylvania', 'overview', 'Overview',
   'Pennsylvania, officially the Commonwealth of Pennsylvania, is a state located in the Mid-Atlantic, Northeastern, Appalachian, and Great Lakes regions of the United States. The state borders Delaware to its southeast, Maryland to its south, forming the Mason-Dixon Line, West Virginia to its southwest, Ohio to its west, the Canadian province of Ontario to its northwest via Lake Erie, New York to its north, and the Delaware River and New Jersey to its east. Pennsylvania''s most populous city is Philadelphia, and the state capital is Harrisburg. Pennsylvania is the fifth-most populous U.S. state, home to over 13 million residents as of the 2020 United States census. Pennsylvania has the ninth-highest by population density, and is the 33rd-largest by land area. The largest metropolitan statistical area is the Philadelphia metropolitan area, centered on Philadelphia, the sixth-most populous U.S. city. Pennsylvania''s second-largest metropolitan area, Greater Pittsburgh, is centered in and around Pittsburgh, the commonwealth''s second-largest city.', '["clm_wiki_pennsylvania_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_pennsylvania_history', 'plc_pennsylvania', 'history', 'History',
   'U.S. state .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} "Penn." redirects here. For other uses, see Penn (disambiguation) and Pennsylvania (disambiguation) . State in the United States @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-settlement{border-collapse:collapse;line-height:1.2em}@media(min-width:640px){.mw-parser-output .ib-settlement{width:23em}}.mw-parser-output .ib-settlement td,.mw-parser-output .ib-settlement th{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.4em 0.6em}.mw-parser-output .ib-settlement .mergedtoprow .infobox-full-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-header,.mw-parser-output .ib-settlement .mergedtoprow .infobox-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-label,.mw-parser-output .ib-settlement .mergedtoprow .infobox-below{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.2em 0.6em}.mw-parser-output .ib-settlement .merg', '["clm_wiki_pennsylvania_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_pennsylvania_geography', 'plc_pennsylvania', 'geography', 'Geography',
   'Indigenous settlement [ edit ] Pennsylvania''s history of human habitation extends thousands of years before the foundation of the colonial Province of Pennsylvania in 1681. Archaeologists believe the first settlement of the Americas occurred at least 15,000 years ago, during the Last Glacial Period , though it is unclear when humans first inhabited present-day Pennsylvania. Between 10,000 and 16,000 years ago, Native Americans crossed the two continents, arriving in North America . &#91; 1 &#93; Meadowcroft Rockshelter in Jefferson Township includes the earliest known signs of human activity in Pennsylvania and perhaps all of North America, &#91; 2 &#93; including the remains of a civilization that existed over 10,000 years ago and possibly pre-dated the Clovis culture . &#91; 3 &#93; &#91; 2 &#93; By 1000 AD, in contrast to their nomadic hunter-gatherer ancestors , the native population of Pennsylvania had developed agricultural techniques and a mixed food economy. &#91; 4 &#93; By the time European colonization of the Americas began, at least two major Native American tribes inhabited Pennsylvania. &#91; 3 &#93; The first, the Lenape , spoke an Algonquian language and inhabited the eastern region of the state, then known as Lenapehoking . It included most of present-day New Jersey and the Lehigh Valley and Delaware Valley regions in eastern and southeastern Pennsylvania. The Lenape''s territory ended somewhere between the Delaware River in the east and the Susquehanna River in central Pennsylvania. The second tribe, the Susquehannock , spoke an Iroquoian language and were based in Eastern Pennsylvania along the Susquehanna River. &#91; 5 &#93; European disease and constant warfare with several neighboring tribes and groups of Europeans weakened these two tribes, and they were grossly outpaced financially as the Hurons and Iroquois blocked them from proceeding west into Ohio during the Beaver Wars . As they lost numbers and land, the Hurons abandoned much of their w', '["clm_wiki_pennsylvania_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_pennsylvania_demographics', 'plc_pennsylvania', 'demographics', 'Demographics',
   '17th century [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Province of Pennsylvania William Penn , a Quaker and son of a prominent admiral , founded the colonial Province of Pennsylvania in 1681. In the 17th century, the Dutch and the English claimed both sides of the Delaware River as part of their colonial lands in America. &#91; 1 &#93; &#91; 2 &#93; &#91; 3 &#93; The Dutch were the first to take possession. &#91; 3 &#93; By June 3, 1631, the Dutch began settling the Delmarva Peninsula by establishing the Zwaanendael Colony on the site of present-day Lewes, Delaware . &#91; 4 &#93; In 1638, Sweden established the New Sweden Colony in the region of Fort Christina on the site of present-day Wilmington, Delaware . New Sweden claimed and, for the most part, controlled the lower Delaware River region, including parts of present-day Delaware, New Jersey, and Pennsylvania, but settled few colonists there. &#91; 5 &#93; &#91; 6 &#93; On March 12, 1664, King Charles II of England gave James, Duke of York a grant that incorporated all lands included in the original Virginia Company of Plymouth Grant and other lands. This grant was in conflict with the Dutch claim for New Netherland , which included parts of today''s Pennsylvania. &#91; 7 &#93; On June 24, 1664, the Duke of York sold the portion of his large grant that included present-day New Jersey to John Berkeley and George Carteret for a proprietary colony. The land was not yet in British possession, but the sale boxed in the portion of New Netherland on the West side of the Delaware River. The British conquest of New Netherland began on August 29, 1664, when New Amsterdam was coerced to surrender wh', '["clm_wiki_pennsylvania_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_pennsylvania_primary', 'plc_pennsylvania', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Flag_of_Pennsylvania.svg/960px-Flag_of_Pennsylvania.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Flag_of_Pennsylvania.svg/330px-Flag_of_Pennsylvania.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Pennsylvania',
   'Pennsylvania', 1, 10, unixepoch());

-- 39. Rhode Island (state, RI, pop=Rhode Island)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_rhode-island', 'place', 'rhode-island', 'Rhode Island', 'published', 'en', 25,
   'Rhode Island is a state in the New England region of the Northeastern United States. It borders Connecticut to its west; Massachusetts to its north and east; and the Atlantic Ocean to its south via Rhode Island Sound and Block Island Sound; and shares a small maritime border with New York, east of Long Island. Rhode Island is the smallest U.S. state by area and the seventh-least populous, with slightly more than 1.11 million residents as of 2025. The state''s population, however, has continually recorded growth in every decennial census since 1790, and it is the second-most densely populated state after New Jersey. The state takes its name from the eponymous island, though most of its land area is on the mainland. Providence is its capital and most populous city.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_rhode-island', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_rhode-island_in_country', 'plc_rhode-island', 'ent_usa', 'located_in', 0.95, 'clm_wiki_rhode-island_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rhode-island_overview', 'plc_rhode-island', 'overview', 'Overview',
   'Rhode Island is a state in the New England region of the Northeastern United States. It borders Connecticut to its west; Massachusetts to its north and east; and the Atlantic Ocean to its south via Rhode Island Sound and Block Island Sound; and shares a small maritime border with New York, east of Long Island. Rhode Island is the smallest U.S. state by area and the seventh-least populous, with slightly more than 1.11 million residents as of 2025. The state''s population, however, has continually recorded growth in every decennial census since 1790, and it is the second-most densely populated state after New Jersey. The state takes its name from the eponymous island, though most of its land area is on the mainland. Providence is its capital and most populous city.', '["clm_wiki_rhode-island_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rhode-island_history', 'plc_rhode-island', 'history', 'History',
   'Name [ edit ] Origins [ edit ] Despite its name, most of Rhode Island is on the U.S. mainland. Its official name was State of Rhode Island and Providence Plantations from its beginning in 1636 until 2020, and it is referred to in that manner in the United States Constitution . &#91; 1 &#93; This name was derived from the merger of Colonial settlements around Narragansett Bay , and outside the jurisdiction of Plymouth colony. The settlements of Rhode Island ( Newport and Portsmouth ) were on Rhode Island, also known as Aquidneck Island . &#91; a &#93; &#91; 2 &#93; Providence Plantations referred to settlements on the mainland of Providence and Warwick . &#91; 3 &#93; It is unclear how the island came to be named Rhode Island , but two historical events may have been influential: Explorer Giovanni da Verrazzano noted the presence of an island near the mouth of Narragansett Bay in 1524 which he likened to the island of Rhodes off the coast of Greece. &#91; 4 &#93; Subsequent European explorers were unable to precisely identify the island Verrazzano described, but the colonists who settled the area assumed that it was this island. &#91; b &#93; Adriaen Block passed by the island during his expeditions in the 1610s, and described it in a 1625 account of his travels as "an island of reddish appearance", which was " een rodlich Eylande " in 17th-century Dutch, meaning a red or reddish island, supposedly evolving into the designation Rhode Island. &#91; 5 &#93; &#91; 6 &#93; Historians have theorized that this "reddish appearance" resulted from either red autumn foliage or red clay on portions of the shore. &#91; 7 &#93; The earliest documented use of the name "Rhode Island" for Aquidneck was in 1637 by Roger Williams . The name was officially applied to the island in 1644 with these words: "Aquethneck shall be henceforth called the Isle of Rodes or Rhode-Island." The name "Isle of Rodes" is used in a legal document as late as 1646. &#91; 8 &#93; &#91; 9 &#93; Dutch maps as early as 1659 call the island "Red Island" ( Roodt Eylandt ). &#91; 10 &#93; 2020 change [ edit ] The first English settlement in Rhode Island was the town of Providence, which the Narragansett granted to Roger Williams in 1636. &#91; 11 &#93; At that time, Williams obtained no permission from the English crown, as he believed the English had no legitimate claim on Narragansett and Wampanoag territory. &#91; 12 &#93; &#91; verification needed &#93; Williams traveled to London in 1643, during t', '["clm_wiki_rhode-island_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rhode-island_geography', 'plc_rhode-island', 'geography', 'Geography',
   'Origins [ edit ] Despite its name, most of Rhode Island is on the U.S. mainland. Its official name was State of Rhode Island and Providence Plantations from its beginning in 1636 until 2020, and it is referred to in that manner in the United States Constitution . &#91; 1 &#93; This name was derived from the merger of Colonial settlements around Narragansett Bay , and outside the jurisdiction of Plymouth colony. The settlements of Rhode Island ( Newport and Portsmouth ) were on Rhode Island, also known as Aquidneck Island . &#91; a &#93; &#91; 2 &#93; Providence Plantations referred to settlements on the mainland of Providence and Warwick . &#91; 3 &#93; It is unclear how the island came to be named Rhode Island , but two historical events may have been influential: Explorer Giovanni da Verrazzano noted the presence of an island near the mouth of Narragansett Bay in 1524 which he likened to the island of Rhodes off the coast of Greece. &#91; 4 &#93; Subsequent European explorers were unable to precisely identify the island Verrazzano described, but the colonists who settled the area assumed that it was this island. &#91; b &#93; Adriaen Block passed by the island during his expeditions in the 1610s, and described it in a 1625 account of his travels as "an island of reddish appearance", which was " een rodlich Eylande " in 17th-century Dutch, meaning a red or reddish island, supposedly evolving into the designation Rhode Island. &#91; 5 &#93; &#91; 6 &#93; Historians have theorized that this "reddish appearance" resulted from either red autumn foliage or red clay on portions of the shore. &#91; 7 &#93; The earliest documented use of the name "Rhode Island" for Aquidneck was in 1637 by Roger Williams . The name was officially applied to the island in 1644 with these words: "Aquethneck shall be henceforth called the Isle of Rodes or Rhode-Island." The name "Isle of Rodes" is used in a legal document as late as 1646. &#91; 8 &#93; &#91; 9 &#93; Dutch maps as early as 165', '["clm_wiki_rhode-island_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rhode-island_demographics', 'plc_rhode-island', 'demographics', 'Demographics',
   '2020 change [ edit ] The first English settlement in Rhode Island was the town of Providence, which the Narragansett granted to Roger Williams in 1636. &#91; 1 &#93; At that time, Williams obtained no permission from the English crown, as he believed the English had no legitimate claim on Narragansett and Wampanoag territory. &#91; 2 &#93; &#91; verification needed &#93; Williams traveled to London in 1643, during the English Civil War, to obtain legal recognition of the new settlements. A patent was granted to "the incorporation of Providence Plantations in Narragansett Bay in New England" by the Parliamentary committee on Foreign Plantations . &#91; 3 &#93; After the English Civil war, a Royal Charter was granted in 1663, giving the colony an official name of the "Governor and Company of the English Colony of Rhode Island and Providence Plantations, in New England, in America." &#91; 4 &#93; Following the American Revolution , in 1790 the new state incorporated as the "State of Rhode Island and Providence Plantations". However, as matter of convenience, the state came to be commonly known as simply "Rhode Island". The word plantation in the state''s name became a contested issue during the 20th century and the increased awareness of slavery and its role in early Rhode Island history. The General Assembly voted in 2009 to hold a referendum in November 2010 on removing "and Providence Plantations" from the official name. &#91; 5 &#93; Advocates for excising plantation argued that the word symbolized a legacy of disenfranchisement for many Rhode Islanders, as well as the proliferation of slavery in the colonies and in the post-colonial United States. Advocates for retaining the name argued that plantation was simply an archaic synonym for colony and bore no relation to slavery. Voters overwhelmingly (78% to 22%) chose to retain the entire original name. &#91; 6 &#93; In June 2020, state senator Harold Metts introduced a resolution for another ballot referendum on the ', '["clm_wiki_rhode-island_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rhode-island_overview', 'plc_rhode-island', 'overview', 'History',
   'Rhode Island is a state in the New England region of the Northeastern United States. It borders Connecticut to its west; Massachusetts to its north and east; and the Atlantic Ocean to its south via Rhode Island Sound and Block Island Sound; and shares a small maritime border with New York, east of Long Island. Rhode Island is the smallest U.S. state by area and the seventh-least populous, with slightly more than 1.11 million residents as of 2025. The state''s population, however, has continually recorded growth in every decennial census since 1790, and it is the second-most densely populated state after New Jersey. The state takes its name from the eponymous island, though most of its land area is on the mainland. Providence is its capital and most populous city.', '["clm_wiki_rhode-island_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rhode-island_overview', 'plc_rhode-island', 'overview', 'Geography',
   'Rhode Island is a state in the New England region of the Northeastern United States. It borders Connecticut to its west; Massachusetts to its north and east; and the Atlantic Ocean to its south via Rhode Island Sound and Block Island Sound; and shares a small maritime border with New York, east of Long Island. Rhode Island is the smallest U.S. state by area and the seventh-least populous, with slightly more than 1.11 million residents as of 2025. The state''s population, however, has continually recorded growth in every decennial census since 1790, and it is the second-most densely populated state after New Jersey. The state takes its name from the eponymous island, though most of its land area is on the mainland. Providence is its capital and most populous city.', '["clm_wiki_rhode-island_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_rhode-island_overview', 'plc_rhode-island', 'overview', 'Demographics',
   'Rhode Island is a state in the New England region of the Northeastern United States. It borders Connecticut to its west; Massachusetts to its north and east; and the Atlantic Ocean to its south via Rhode Island Sound and Block Island Sound; and shares a small maritime border with New York, east of Long Island. Rhode Island is the smallest U.S. state by area and the seventh-least populous, with slightly more than 1.11 million residents as of 2025. The state''s population, however, has continually recorded growth in every decennial census since 1790, and it is the second-most densely populated state after New Jersey. The state takes its name from the eponymous island, though most of its land area is on the mainland. Providence is its capital and most populous city.', '["clm_wiki_rhode-island_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_rhode-island_primary', 'plc_rhode-island', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Rhode_Island.svg/960px-Flag_of_Rhode_Island.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Rhode_Island.svg/330px-Flag_of_Rhode_Island.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Rhode Island',
   'Rhode Island', 1, 10, unixepoch());

-- 40. South Carolina (state, SC, pop=South Carolina)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_south-carolina', 'place', 'south-carolina', 'South Carolina', 'published', 'en', 25,
   'South Carolina is a state in the Southeastern, South Atlantic and Deep South regions of the United States. It borders North Carolina to the north and northeast, the Atlantic Ocean to the southeast, and Georgia to the west and south across the Savannah River. Along with North Carolina, it makes up the Carolinas region of the East Coast. South Carolina is the 11th-smallest and 23rd-most populous U.S. state, with a population of 5.12 million at the 2020 census. South Carolina is composed of 46 counties. Its capital is Columbia, while its most populous city is Charleston. Other urban areas include the Upstate, the state''s largest metropolitan area which includes Greenville and Spartanburg, as well as Myrtle Beach.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_south-carolina', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_south-carolina_in_country', 'plc_south-carolina', 'ent_usa', 'located_in', 0.95, 'clm_wiki_south-carolina_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_south-carolina_overview', 'plc_south-carolina', 'overview', 'Overview',
   'South Carolina is a state in the Southeastern, South Atlantic and Deep South regions of the United States. It borders North Carolina to the north and northeast, the Atlantic Ocean to the southeast, and Georgia to the west and south across the Savannah River. Along with North Carolina, it makes up the Carolinas region of the East Coast. South Carolina is the 11th-smallest and 23rd-most populous U.S. state, with a population of 5.12 million at the 2020 census. South Carolina is composed of 46 counties. Its capital is Columbia, while its most populous city is Charleston. Other urban areas include the Upstate, the state''s largest metropolitan area which includes Greenville and Spartanburg, as well as Myrtle Beach.', '["clm_wiki_south-carolina_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_south-carolina_history', 'plc_south-carolina', 'history', 'History',
   'U.S. state .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} This article is about the U.S. state. For other uses, see South Carolina (disambiguation) . State in the United States @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-settlement{border-collapse:collapse;line-height:1.2em}@media(min-width:640px){.mw-parser-output .ib-settlement{width:23em}}.mw-parser-output .ib-settlement td,.mw-parser-output .ib-settlement th{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.4em 0.6em}.mw-parser-output .ib-settlement .mergedtoprow .infobox-full-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-header,.mw-parser-output .ib-settlement .mergedtoprow .infobox-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-label,.mw-parser-output .ib-settlement .mergedtoprow .infobox-below{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.2em 0.6em}.mw-parser-output .ib-settlement .mergedrow .inf', '["clm_wiki_south-carolina_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_south-carolina_geography', 'plc_south-carolina', 'geography', 'Geography',
   'Precolonial period [ edit ] Top left, the shores of Florida and the future Carolina explored in 1500 and showed in 1502 on the Cantino planisphere There is evidence of human activities in the area dating to about 50,000 years ago. &#91; 1 &#93; At the time Europeans arrived, marking the end Pre-Columbian era around 1500, there were many separate Native American polities including the powerful Cofitachequi populated by a variety of nations including the largest the Cherokee and the Catawba , with a total population being up to 20,000 around 1600. &#91; 2 &#93; Up the rivers of the eastern coastal plain lived about a dozen tribes of Siouan background. Along the Savannah River were the Apalachee , Yuchi , and the Yamasee . Further west were the Cherokee, and along the Catawba River , the Catawba. These tribes were village-dwellers, relying on agriculture as their primary food source. &#91; 2 &#93; The Cherokee lived in wattle and daub houses made with wood and clay, roofed with wood or thatched grass. &#91; 3 &#93; About a dozen or more separate small tribes summered on the coast harvesting oysters and fish, and cultivating corn, peas and beans. Travelling inland as much as 50 miles (80&#160;km) mostly by canoe, they wintered on the coastal plain, hunting deer and gathering nuts and fruit. The names of these tribes survive in place names like Edisto Island , Kiawah Island , and the Ashepoo River . &#91; 2 &#93; ^ University Of South Carolina. "New Evidence Puts Man In North America 50,000 Years Ago." ScienceDaily. ScienceDaily, November 18, 2004. ^ a b c .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-ou', '["clm_wiki_south-carolina_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_south-carolina_demographics', 'plc_south-carolina', 'demographics', 'Demographics',
   'Exploration [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main articles: Spanish Florida and French Florida Map of French Florida , which included modern-day South Carolina The Spanish were the first Europeans in the area. From June 24 to July 14, 1521, they explored the land around Winyah Bay . On October 8, 1526, they founded San Miguel de Gualdape , near present-day Georgetown, South Carolina . It was the first European settlement in what is now the contiguous United States . Established with five hundred settlers, it was abandoned eight months later by one hundred and fifty survivors. In 1540, Hernando de Soto explored the region and the main town of Cofitachequi , where he captured the queen of the Maskoki (Muscogee) and the Chelaque (Cherokee) who had welcomed him. In 1562 French Huguenots established a settlement at what is now the Charlesfort-Santa Elena archaeological site on Parris Island . Many of these settlers preferred a natural life far from civilization and the atrocities of the Wars of Religion . The garrison lacked supplies, however, and the soldiers (as in the France Antarctique ) soon ran away. The French returned two years later but settled in present-day Florida rather than South Carolina. &#91; 1 &#93; ^ Cite error: The named reference leifermann was invoked but never defined (see the help page ).', '["clm_wiki_south-carolina_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_south-carolina_overview', 'plc_south-carolina', 'overview', 'History',
   'South Carolina is a state in the Southeastern, South Atlantic and Deep South regions of the United States. It borders North Carolina to the north and northeast, the Atlantic Ocean to the southeast, and Georgia to the west and south across the Savannah River. Along with North Carolina, it makes up the Carolinas region of the East Coast. South Carolina is the 11th-smallest and 23rd-most populous U.S. state, with a population of 5.12 million at the 2020 census. South Carolina is composed of 46 counties. Its capital is Columbia, while its most populous city is Charleston. Other urban areas include the Upstate, the state''s largest metropolitan area which includes Greenville and Spartanburg, as well as Myrtle Beach.', '["clm_wiki_south-carolina_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_south-carolina_overview', 'plc_south-carolina', 'overview', 'Geography',
   'South Carolina is a state in the Southeastern, South Atlantic and Deep South regions of the United States. It borders North Carolina to the north and northeast, the Atlantic Ocean to the southeast, and Georgia to the west and south across the Savannah River. Along with North Carolina, it makes up the Carolinas region of the East Coast. South Carolina is the 11th-smallest and 23rd-most populous U.S. state, with a population of 5.12 million at the 2020 census. South Carolina is composed of 46 counties. Its capital is Columbia, while its most populous city is Charleston. Other urban areas include the Upstate, the state''s largest metropolitan area which includes Greenville and Spartanburg, as well as Myrtle Beach.', '["clm_wiki_south-carolina_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_south-carolina_overview', 'plc_south-carolina', 'overview', 'Demographics',
   'South Carolina is a state in the Southeastern, South Atlantic and Deep South regions of the United States. It borders North Carolina to the north and northeast, the Atlantic Ocean to the southeast, and Georgia to the west and south across the Savannah River. Along with North Carolina, it makes up the Carolinas region of the East Coast. South Carolina is the 11th-smallest and 23rd-most populous U.S. state, with a population of 5.12 million at the 2020 census. South Carolina is composed of 46 counties. Its capital is Columbia, while its most populous city is Charleston. Other urban areas include the Upstate, the state''s largest metropolitan area which includes Greenville and Spartanburg, as well as Myrtle Beach.', '["clm_wiki_south-carolina_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_south-carolina_primary', 'plc_south-carolina', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Flag_of_South_Carolina.svg/960px-Flag_of_South_Carolina.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Flag_of_South_Carolina.svg/330px-Flag_of_South_Carolina.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'South Carolina',
   'South Carolina', 1, 10, unixepoch());

-- 41. South Dakota (state, SD, pop=South Dakota)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_south-dakota', 'place', 'south-dakota', 'South Dakota', 'published', 'en', 25,
   'South Dakota is a landlocked state in the North Central region of the United States. It is also part of the Great Plains. South Dakota is named after the Dakota Sioux tribe, which comprises a large portion of the population and has historically dominated the territory. South Dakota is the 17th-largest by area, the fifth-least populous, and the fifth-least densely populated of the 50 United States. Pierre is the state capital, and Sioux Falls, with a population of about 213,900, is the most populous city. The Missouri River bisects the state into two geographically and socially distinct halves colloquially known as "East River" and "West River". South Dakota is bordered by North Dakota to the north, Minnesota to the east, Iowa to the southeast, Nebraska to the south, Wyoming to the west, and Montana to the northwest.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_south-dakota', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_south-dakota_in_country', 'plc_south-dakota', 'ent_usa', 'located_in', 0.95, 'clm_wiki_south-dakota_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_south-dakota_overview', 'plc_south-dakota', 'overview', 'Overview',
   'South Dakota is a landlocked state in the North Central region of the United States. It is also part of the Great Plains. South Dakota is named after the Dakota Sioux tribe, which comprises a large portion of the population and has historically dominated the territory. South Dakota is the 17th-largest by area, the fifth-least populous, and the fifth-least densely populated of the 50 United States. Pierre is the state capital, and Sioux Falls, with a population of about 213,900, is the most populous city. The Missouri River bisects the state into two geographically and socially distinct halves colloquially known as "East River" and "West River". South Dakota is bordered by North Dakota to the north, Minnesota to the east, Iowa to the southeast, Nebraska to the south, Wyoming to the west, and Montana to the northwest.', '["clm_wiki_south-dakota_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_south-dakota_history', 'plc_south-dakota', 'history', 'History',
   'U.S. state .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} This article is about the U.S. state. For other uses, see South Dakota (disambiguation) . State in the United States @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-settlement{border-collapse:collapse;line-height:1.2em}@media(min-width:640px){.mw-parser-output .ib-settlement{width:23em}}.mw-parser-output .ib-settlement td,.mw-parser-output .ib-settlement th{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.4em 0.6em}.mw-parser-output .ib-settlement .mergedtoprow .infobox-full-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-header,.mw-parser-output .ib-settlement .mergedtoprow .infobox-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-label,.mw-parser-output .ib-settlement .mergedtoprow .infobox-below{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.2em 0.6em}.mw-parser-output .ib-settlement .mergedrow .infob', '["clm_wiki_south-dakota_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_south-dakota_geography', 'plc_south-dakota', 'geography', 'Geography',
   'Early history [ edit ] Humans have lived in what is today South Dakota for several thousand years. The first inhabitants were Paleoindian hunter-gatherers, and disappeared from the area around 5000 BC. &#91; 1 &#93; Between 500&#160;AD and 800&#160;AD, a semi-nomadic people known as the Mound Builders lived in central and eastern South Dakota. In the 14th century, the Crow Creek Massacre occurred, in which several hundred men, women, and children were killed near the Missouri River . &#91; 2 &#93; By 1500, the Arikara (or Ree) had settled in much of the Missouri River valley. &#91; 3 &#93; European contact with the area began in 1743, when the LaVérendrye brothers explored the region. The LaVérendrye group buried a plate near the site of modern-day Pierre , claiming the region for France as part of greater Louisiana . &#91; 4 &#93; In 1762 the entire region became part of the Spanish Louisiana until 1802. &#91; 5 &#93; &#91; 6 &#93; By the early 19th century, the Sioux had largely replaced the Arikara as the dominant group in the area. &#91; 7 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-t', '["clm_wiki_south-dakota_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_south-dakota_demographics', 'plc_south-dakota', 'demographics', 'Demographics',
   'American settlement and statehood [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Dakota Territory In 1803, the United States purchased the Louisiana Territory , an area that included most of South Dakota, from Napoleon Bonaparte , and President Thomas Jefferson organized the Lewis and Clark Expedition to explore the region. &#91; 1 &#93; In 1817, an American fur trading post was set up at present-day Fort Pierre , after which began continuous American settlement of the area. &#91; 2 &#93; In 1855, the U.S. Army bought Fort Pierre , but abandoned it in 1857 in favor of Fort Randall to the south. &#91; 2 &#93; Americans and Europeans were by that time rapidly settling in the area, and in 1858 the Yankton Sioux signed the 1858 Treaty , which ceded most of present-day eastern South Dakota to the United States. &#91; 3 &#93; Deadwood , like many other Black Hills towns, was founded after the discovery of gold. Land speculators founded two of eastern South Dakota''s largest present-day cities: Sioux Falls in 1856 and Yankton in 1859. &#91; 4 &#93; In 1861, the United States government established Dakota Territory in 1861 (this initially included North Dakota , South Dakota, and parts of Montana and Wyoming ). &#91; 5 &#93; Settlement of the area—mostly by people from the eastern United States as well as western and northern Europe —increased rapidly after the passage of the Homestead Acts , &#91; 6 &#93; and especially after the completion of an eastern railway link to Yankton in 1873, &#91; 7 &#93; in a period known as the Dakota Boom . &#91; 8 &#93; In 1874, gold was discovered in the Black Hills during a military expedition led by George A. Custer &#9', '["clm_wiki_south-dakota_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_south-dakota_overview', 'plc_south-dakota', 'overview', 'History',
   'South Dakota is a landlocked state in the North Central region of the United States. It is also part of the Great Plains. South Dakota is named after the Dakota Sioux tribe, which comprises a large portion of the population and has historically dominated the territory. South Dakota is the 17th-largest by area, the fifth-least populous, and the fifth-least densely populated of the 50 United States. Pierre is the state capital, and Sioux Falls, with a population of about 213,900, is the most populous city. The Missouri River bisects the state into two geographically and socially distinct halves colloquially known as "East River" and "West River". South Dakota is bordered by North Dakota to the north, Minnesota to the east, Iowa to the southeast, Nebraska to the south, Wyoming to the west, and Montana to the northwest.', '["clm_wiki_south-dakota_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_south-dakota_overview', 'plc_south-dakota', 'overview', 'Geography',
   'South Dakota is a landlocked state in the North Central region of the United States. It is also part of the Great Plains. South Dakota is named after the Dakota Sioux tribe, which comprises a large portion of the population and has historically dominated the territory. South Dakota is the 17th-largest by area, the fifth-least populous, and the fifth-least densely populated of the 50 United States. Pierre is the state capital, and Sioux Falls, with a population of about 213,900, is the most populous city. The Missouri River bisects the state into two geographically and socially distinct halves colloquially known as "East River" and "West River". South Dakota is bordered by North Dakota to the north, Minnesota to the east, Iowa to the southeast, Nebraska to the south, Wyoming to the west, and Montana to the northwest.', '["clm_wiki_south-dakota_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_south-dakota_overview', 'plc_south-dakota', 'overview', 'Demographics',
   'South Dakota is a landlocked state in the North Central region of the United States. It is also part of the Great Plains. South Dakota is named after the Dakota Sioux tribe, which comprises a large portion of the population and has historically dominated the territory. South Dakota is the 17th-largest by area, the fifth-least populous, and the fifth-least densely populated of the 50 United States. Pierre is the state capital, and Sioux Falls, with a population of about 213,900, is the most populous city. The Missouri River bisects the state into two geographically and socially distinct halves colloquially known as "East River" and "West River". South Dakota is bordered by North Dakota to the north, Minnesota to the east, Iowa to the southeast, Nebraska to the south, Wyoming to the west, and Montana to the northwest.', '["clm_wiki_south-dakota_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_south-dakota_primary', 'plc_south-dakota', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_South_Dakota.svg/960px-Flag_of_South_Dakota.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_South_Dakota.svg/330px-Flag_of_South_Dakota.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'South Dakota',
   'South Dakota', 1, 10, unixepoch());

-- 42. Tennessee (state, TN, pop=Tennessee)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_tennessee', 'place', 'tennessee', 'Tennessee', 'published', 'en', 25,
   'Tennessee, officially the State of Tennessee, is a landlocked state in the Southeastern region of the United States. It borders Kentucky to the north, Virginia to the northeast, North Carolina to the east, Georgia, Alabama, and Mississippi to the south, Arkansas to the southwest, and Missouri to the northwest. Tennessee is the 36th-largest by area and the 15th-most populous of the 50 states. According to the United States Census Bureau, the state''s estimated population as of 2024 is 7.22 million.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_tennessee', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_tennessee_in_country', 'plc_tennessee', 'ent_usa', 'located_in', 0.95, 'clm_wiki_tennessee_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_tennessee_overview', 'plc_tennessee', 'overview', 'Overview',
   'Tennessee, officially the State of Tennessee, is a landlocked state in the Southeastern region of the United States. It borders Kentucky to the north, Virginia to the northeast, North Carolina to the east, Georgia, Alabama, and Mississippi to the south, Arkansas to the southwest, and Missouri to the northwest. Tennessee is the 36th-largest by area and the 15th-most populous of the 50 states. According to the United States Census Bureau, the state''s estimated population as of 2024 is 7.22 million.', '["clm_wiki_tennessee_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_tennessee_history', 'plc_tennessee', 'history', 'History',
   'Etymology [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Name of Tennessee Detail of Tanasi (spelled "Tennessee") on Henry Timberlake ''s Draught of the Cherokee Country Tennessee derives its name most directly from the Cherokee town of Tanasi (or "Tanase", in syllabary : ᏔᎾᏏ) in present-day Monroe County, Tennessee , on the Tanasi River, now known as the Little Tennessee River . In 1567, Spanish explorer Captain Juan Pardo and his party encountered a Native American village named "Tanasqui" in the area while traveling inland from modern-day South Carolina ; however, it is unknown if this was the same settlement as Tanasi. &#91; a &#93; The town appeared on British maps as early as 1725. Recent research suggests that the Cherokees adapted the name from the Yuchi word Tana-tsee-dgee , meaning "brother-waters-place" or "where-the-waters-meet". &#91; 2 &#93; &#91; 3 &#93; &#91; 4 &#93; The modern spelling, Tennessee , is attributed to Governor James Glen of South Carolina, who used this spelling in his official correspondence during the 1750s. In 1788, North Carolina created " Tennessee County ", and in 1796, a constitutional convention , organizing the new state from the Southwest Territory , adopted "Tennessee" as the state''s name. &#91; 5 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-', '["clm_wiki_tennessee_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_tennessee_geography', 'plc_tennessee', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Tennessee Pre-European era [ edit ] The first inhabitants of Tennessee were Paleo-Indians who arrived about 12,000 years ago at the end of the Last Glacial Period . Archaeological excavations indicate that the lower Tennessee Valley was heavily populated by Ice Age hunter-gatherers , and Middle Tennessee is believed to have been rich with game animals such as mastodons . &#91; 1 &#93; The names of the cultural groups who inhabited the area before European contact are unknown, but archaeologists have named several distinct cultural phases, including the Archaic (8000–1000 BC), Woodland (1000 BC–1000 AD), and Mississippian (1000–1600 AD) periods. &#91; 2 &#93; The Archaic peoples first domesticated dogs, and plants such as squash , corn , gourds , and sunflowers were first grown in Tennessee during the Woodland period. &#91; 3 &#93; Later generations of Woodland peoples constructed the first mounds. Rapid civilizational development occurred during the Mississippian period, when Indigenous peoples developed organized chiefdoms and constructed numerous ceremonial structures throughout the state. &#91; 4 &#93; Spanish conquistadors who explored the region in the 16th century encountered some of the Mississippian peoples, including the Muscogee Creek , Yuchi , and Shawnee . &#91; 5 &#93; &#91; 6 &#93; By the early 18th century, most Natives in Tennessee had disappeared, most likely wiped out by diseases introduced by the Spaniards. &#91; 5 &#93; The Cherokee began migrating into what is now eastern Tennessee from what is now Virginia in the latter 17th century, possibly to escape expandin', '["clm_wiki_tennessee_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_tennessee_demographics', 'plc_tennessee', 'demographics', 'Demographics',
   'Pre-European era [ edit ] The first inhabitants of Tennessee were Paleo-Indians who arrived about 12,000 years ago at the end of the Last Glacial Period . Archaeological excavations indicate that the lower Tennessee Valley was heavily populated by Ice Age hunter-gatherers , and Middle Tennessee is believed to have been rich with game animals such as mastodons . &#91; 1 &#93; The names of the cultural groups who inhabited the area before European contact are unknown, but archaeologists have named several distinct cultural phases, including the Archaic (8000–1000 BC), Woodland (1000 BC–1000 AD), and Mississippian (1000–1600 AD) periods. &#91; 2 &#93; The Archaic peoples first domesticated dogs, and plants such as squash , corn , gourds , and sunflowers were first grown in Tennessee during the Woodland period. &#91; 3 &#93; Later generations of Woodland peoples constructed the first mounds. Rapid civilizational development occurred during the Mississippian period, when Indigenous peoples developed organized chiefdoms and constructed numerous ceremonial structures throughout the state. &#91; 4 &#93; Spanish conquistadors who explored the region in the 16th century encountered some of the Mississippian peoples, including the Muscogee Creek , Yuchi , and Shawnee . &#91; 5 &#93; &#91; 6 &#93; By the early 18th century, most Natives in Tennessee had disappeared, most likely wiped out by diseases introduced by the Spaniards. &#91; 5 &#93; The Cherokee began migrating into what is now eastern Tennessee from what is now Virginia in the latter 17th century, possibly to escape expanding European settlement and diseases in the north. &#91; 7 &#93; They forced the Creek, Yuchi, and Shawnee out of the state in the early 18th century. &#91; 7 &#93; &#91; 8 &#93; The Chickasaw remained confined to West Tennessee, and the middle part of the state contained few Native Americans, although both the Cherokee and the Shawnee claimed the region as their hunting ground. &#91; 9 &#93; Cheroke', '["clm_wiki_tennessee_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_tennessee_primary', 'plc_tennessee', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Flag_of_Tennessee.svg/1280px-Flag_of_Tennessee.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Flag_of_Tennessee.svg/330px-Flag_of_Tennessee.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Tennessee',
   'Tennessee', 1, 10, unixepoch());

-- 43. Texas (state, TX, pop=Texas)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_texas', 'place', 'texas', 'Texas', 'published', 'en', 25,
   'Texas is the most populous state in the Southern United States. It borders the American states of Louisiana to the east, Arkansas to the northeast, Oklahoma to the north, and New Mexico to the west. To the south and southwest, it has an international border with the Mexican states of Chihuahua, Coahuila, Nuevo León, and Tamaulipas, along a natural boundary formed by the Rio Grande. Texas has a coastline on the Gulf of Mexico to the southeast. Covering 268,596 square miles (695,660 km2) and with an estimated population of over 31.7 million residents in 2025, it is the second-largest U.S. state both by area and by population. Texas is nicknamed the "Lone Star State" for the single star on its flag, symbolic of its former status as an independent country, the Republic of Texas.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_texas', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_texas_in_country', 'plc_texas', 'ent_usa', 'located_in', 0.95, 'clm_wiki_texas_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_texas_overview', 'plc_texas', 'overview', 'Overview',
   'Texas is the most populous state in the Southern United States. It borders the American states of Louisiana to the east, Arkansas to the northeast, Oklahoma to the north, and New Mexico to the west. To the south and southwest, it has an international border with the Mexican states of Chihuahua, Coahuila, Nuevo León, and Tamaulipas, along a natural boundary formed by the Rio Grande. Texas has a coastline on the Gulf of Mexico to the southeast. Covering 268,596 square miles (695,660 km2) and with an estimated population of over 31.7 million residents in 2025, it is the second-largest U.S. state both by area and by population. Texas is nicknamed the "Lone Star State" for the single star on its flag, symbolic of its former status as an independent country, the Republic of Texas.', '["clm_wiki_texas_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_texas_history', 'plc_texas', 'history', 'History',
   'Etymology [ edit ] The name Texas , based on the Caddo word táy:shaʼ ( /tə́jːʃaʔ/ ) ''friend'', was applied, in the spelling Tejas or Texas , &#91; 1 &#93; &#91; 2 &#93; &#91; 3 &#93; &#91; 4 &#93; by the Spanish to the Caddo themselves, specifically the Hasinai Confederacy. &#91; 5 &#93; During Spanish colonial rule , in the 18th century, the area was known as Nuevas Filipinas ('' New Philippines '') and Nuevo Reino de Filipinas (''New Kingdom of the Philippines''), &#91; 6 &#93; or as provincia de los Tejas (''province of the Tejas ''), &#91; 7 &#93; later also provincia de Texas (or de Tejas ), (''province of Texas''). &#91; 8 &#93; &#91; 6 &#93; It was incorporated as provincia de Texas into the Mexican Empire in 1821, and declared a republic in 1836. The Royal Spanish Academy recognizes both spellings, Tejas and Texas , as Spanish-language forms of the name. &#91; 9 &#93; The English pronunciation with /ks/ is unetymological, contrary to the historical value of the letter x ( / ʃ / ) in Spanish orthography . Alternative etymologies of the name advanced in the late 19th century connected the name Texas with the Spanish word teja , meaning ''roof tile'', the plural tejas being used to designate Indigenous Pueblo settlements. &#91; 10 &#93; A 1760s map by Jacques-Nicolas Bellin shows a village named Teijas on the Trinity River , close to the site of modern Crockett . &#91; 10 &#93; ^ José Arlegui, Chronica de la provincia de N.S.P.S. Francisco de Zacatecas Front Cover (1737), p. 53 . ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:', '["clm_wiki_texas_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_texas_geography', 'plc_texas', 'geography', 'Geography',
   'History [ edit ] Precontact era [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Texas Further information: Pre-Columbian Mexico and Native American tribes in Texas Early Native American tribal territories Texas lies between two major cultural spheres of Pre-Columbian North America : the Southwestern and the Plains areas. Archaeologists have found that three major Indigenous cultures lived in this territory, and reached their developmental peak before the first European contact. These were: the Ancestral Puebloans from the upper Rio Grande region, centered west of Texas; the Mississippian culture , also known as Mound Builders , which extended along the Mississippi River Valley east of Texas; and the civilizations of Mesoamerica , which were centered south of Texas. Influence of Teotihuacan in northern Mexico peaked around AD 500 and declined between the 8th and 10th centuries. &#91; 1 &#93; When Europeans first arrived in the Texas region, the languages present in the state were Caddoan , Atakapan , Athabaskan , Coahuiltecan , and Uto-Aztecan , in addition to several language isolates such as Tonkawa . Uto-Aztecan Puebloan and Jumano peoples lived near the Rio Grande in the western portion of the state, and the Athabaskan-speaking Apache tribes lived throughout the interior. The agricultural, mound-building Caddo controlled much of the northeastern part of the state, along the Red , Sabine , and Neches River basins. &#91; 2 &#93; &#91; 3 &#93; Atakapan peoples such as the Akokisa and Bidai lived along the northeastern Gulf Coast; the Karankawa lived along the central coast. &#91; 4 &#93; At least one tribe of Coahuiltecans , the Aranama ', '["clm_wiki_texas_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_texas_demographics', 'plc_texas', 'demographics', 'Demographics',
   'Precontact era [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Texas Further information: Pre-Columbian Mexico and Native American tribes in Texas Early Native American tribal territories Texas lies between two major cultural spheres of Pre-Columbian North America : the Southwestern and the Plains areas. Archaeologists have found that three major Indigenous cultures lived in this territory, and reached their developmental peak before the first European contact. These were: the Ancestral Puebloans from the upper Rio Grande region, centered west of Texas; the Mississippian culture , also known as Mound Builders , which extended along the Mississippi River Valley east of Texas; and the civilizations of Mesoamerica , which were centered south of Texas. Influence of Teotihuacan in northern Mexico peaked around AD 500 and declined between the 8th and 10th centuries. &#91; 1 &#93; When Europeans first arrived in the Texas region, the languages present in the state were Caddoan , Atakapan , Athabaskan , Coahuiltecan , and Uto-Aztecan , in addition to several language isolates such as Tonkawa . Uto-Aztecan Puebloan and Jumano peoples lived near the Rio Grande in the western portion of the state, and the Athabaskan-speaking Apache tribes lived throughout the interior. The agricultural, mound-building Caddo controlled much of the northeastern part of the state, along the Red , Sabine , and Neches River basins. &#91; 2 &#93; &#91; 3 &#93; Atakapan peoples such as the Akokisa and Bidai lived along the northeastern Gulf Coast; the Karankawa lived along the central coast. &#91; 4 &#93; At least one tribe of Coahuiltecans , the Aranama , lived in southe', '["clm_wiki_texas_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_texas_primary', 'plc_texas', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Flag_of_Texas.svg/960px-Flag_of_Texas.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Flag_of_Texas.svg/330px-Flag_of_Texas.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Texas',
   'Texas', 1, 10, unixepoch());

-- 44. Utah (state, UT, pop=Utah)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_utah', 'place', 'utah', 'Utah', 'published', 'en', 25,
   'Utah is a landlocked state in the Mountain West subregion of the Western United States. It is one of the Four Corners states, sharing a border with Arizona, Colorado, and New Mexico. It also borders Wyoming to the northeast, Idaho to the north, and Nevada to the west. In comparison to all the U.S. states and territories, Utah, with a population of just over three million, is the 13th-largest by area, the 30th-most populous, and the 11th-least densely populated. Urban development is mostly concentrated in two regions: the Wasatch Front in the north-central part of the state, which includes the state capital, Salt Lake City, and is home to roughly two-thirds of the population; and Washington County in the southwest, which has approximately 180,000 residents. Most of the western half of Utah lies in the Great Basin.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_utah', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_utah_in_country', 'plc_utah', 'ent_usa', 'located_in', 0.95, 'clm_wiki_utah_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_utah_overview', 'plc_utah', 'overview', 'Overview',
   'Utah is a landlocked state in the Mountain West subregion of the Western United States. It is one of the Four Corners states, sharing a border with Arizona, Colorado, and New Mexico. It also borders Wyoming to the northeast, Idaho to the north, and Nevada to the west. In comparison to all the U.S. states and territories, Utah, with a population of just over three million, is the 13th-largest by area, the 30th-most populous, and the 11th-least densely populated. Urban development is mostly concentrated in two regions: the Wasatch Front in the north-central part of the state, which includes the state capital, Salt Lake City, and is home to roughly two-thirds of the population; and Washington County in the southwest, which has approximately 180,000 residents. Most of the western half of Utah lies in the Great Basin.', '["clm_wiki_utah_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_utah_history', 'plc_utah', 'history', 'History',
   'Etymology [ edit ] Utah , now usually shortened to Ute , is the English name of an Indian tribe native to the region. It represents a borrowing of the Spanish Yuta , recorded from the 17th century onwards. The ultimate source of the name is uncertain; it lacks a counterpart in the Ute language (the Utes'' name for themselves being Núuchi-u ) and was thus presumably taken from the language of a neighboring people. &#91; 1 &#93; It is commonly said to mean "people of the mountains". &#91; 2 &#93; &#91; 3 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-ws-icon a{background-size:contain;padding:0 1em 0 0}.mw-parser-output .cs1-code{color:inherit;background:inherit;border:none;padding:inherit}.mw-parser-output .cs1-hidden-error{display:none;color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-visible-error{color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-maint{display:none;color:#085;margin-left:0.3em}.mw-parser-output .cs1-kern-left{padding-left:0.2em}.mw-parser-output .cs1-kern-right{padding-right:0.2em}.mw-parser-output .citation .mw-selflink{font-weight:inherit}@media screen{.mw-parser-output .cs1-format{font-size:95%}html.skin-theme-clientpref-night .mw-parser-output .cs1-maint{color:#18911f}}@medi', '["clm_wiki_utah_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_utah_geography', 'plc_utah', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Utah Pre-Columbian [ edit ] See also: Native Americans in Utah Map showing Utah in 1838 when it was part of Mexico, Britannica 7th edition Thousands of years before the arrival of Europeans, the Ancestral Puebloans and the Fremont people lived in what is now known as Utah, some of which spoke languages of the Uto-Aztecan group. Ancestral Pueblo peoples built their homes through excavations in mountains, and the Fremont people built houses of straw before disappearing from the region around the 15th century. Another group of Native Americans, the Navajo , settled in the region around the 18th century. In the mid-18th century, other Uto-Aztecan tribes, including the Goshute , the Paiute , the Shoshone , and the Ute people, also settled in the region. These five groups were present when the first European explorers arrived. &#91; 1 &#93; &#91; 2 &#93; Spanish exploration (1540) [ edit ] Main articles: New Spain , The Californias §&#160;History , First Mexican Empire , Provisional Government of Mexico , First Mexican Republic , and Centralist Republic of Mexico The southern Utah region was explored by the Spanish in 1540, led by Francisco Vázquez de Coronado while looking for the legendary Cíbola . A group led by two Catholic priests—sometimes called the Domínguez–Escalante expedition —left Santa Fe in 1776, hoping to find a route to the coast of California. The expedition traveled as far north as Utah Lake and encountered the native residents. The Spanish made further explorations in the region but were not interested in colonizing the area because of its desert nature. In 1821, the ye', '["clm_wiki_utah_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_utah_demographics', 'plc_utah', 'demographics', 'Demographics',
   'Pre-Columbian [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} See also: Native Americans in Utah Map showing Utah in 1838 when it was part of Mexico, Britannica 7th edition Thousands of years before the arrival of Europeans, the Ancestral Puebloans and the Fremont people lived in what is now known as Utah, some of which spoke languages of the Uto-Aztecan group. Ancestral Pueblo peoples built their homes through excavations in mountains, and the Fremont people built houses of straw before disappearing from the region around the 15th century. Another group of Native Americans, the Navajo , settled in the region around the 18th century. In the mid-18th century, other Uto-Aztecan tribes, including the Goshute , the Paiute , the Shoshone , and the Ute people, also settled in the region. These five groups were present when the first European explorers arrived. &#91; 1 &#93; &#91; 2 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-i', '["clm_wiki_utah_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_utah_primary', 'plc_utah', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Flag_of_Utah.svg/960px-Flag_of_Utah.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Flag_of_Utah.svg/330px-Flag_of_Utah.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Utah',
   'Utah', 1, 10, unixepoch());

-- 45. Vermont (state, VT, pop=Vermont)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_vermont', 'place', 'vermont', 'Vermont', 'published', 'en', 25,
   'Vermont is a landlocked state in the New England region of the Northeastern United States. It borders Massachusetts to the south, New Hampshire to the east, New York to the west, and the Canadian province of Quebec to the north. According to the most recent U.S. census estimates, the state has an estimated population of 644,663, making it the second-least populated of all U.S. states. It is the nation''s sixth-smallest state by total area. The state''s capital, Montpelier, is the least populous U.S. state capital. No other U.S. state has a most populous city with fewer residents than Vermont''s most populous city, Burlington.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_vermont', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_vermont_in_country', 'plc_vermont', 'ent_usa', 'located_in', 0.95, 'clm_wiki_vermont_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_vermont_overview', 'plc_vermont', 'overview', 'Overview',
   'Vermont is a landlocked state in the New England region of the Northeastern United States. It borders Massachusetts to the south, New Hampshire to the east, New York to the west, and the Canadian province of Quebec to the north. According to the most recent U.S. census estimates, the state has an estimated population of 644,663, making it the second-least populated of all U.S. states. It is the nation''s sixth-smallest state by total area. The state''s capital, Montpelier, is the least populous U.S. state capital. No other U.S. state has a most populous city with fewer residents than Vermont''s most populous city, Burlington.', '["clm_wiki_vermont_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_vermont_history', 'plc_vermont', 'history', 'History',
   'Toponymy [ edit ] The 17th-century French explorer Samuel de Champlain is sometimes credited with coining the name Vermont , but it did not in fact appear until 1777, when, at the suggestion of Thomas Young , it was adopted as the name of the Vermont Republic (replacing New Connecticut , the name the republic had borne for the first six months of its existence). &#91; 1 &#93; It represents a French translation of Green Mountain(s) , the name of the mountain range that bisects the state. The latter name first appeared in 1772 in the context of the Green Mountain Boys . &#91; 2 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-ws-icon a{background-size:contain;padding:0 1em 0 0}.mw-parser-output .cs1-code{color:inherit;background:inherit;border:none;padding:inherit}.mw-parser-output .cs1-hidden-error{display:none;color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-visible-error{color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-maint{display:none;color:#085;margin-left:0.3em}.mw-parser-output .cs1-kern-left{padding-left:0.2em}.mw-parser-output .cs1-kern-right{padding-right:0.2em}.mw-parser-output .citation .mw-selflink{font-weight:inherit}@media screen{.mw-parser-output .cs1-format{font-size:95%}html.s', '["clm_wiki_vermont_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_vermont_geography', 'plc_vermont', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Vermont Pre-colonial [ edit ] Watercolor of Abenaki couple, 1700s The first humans to inhabit what is now Vermont arrived about 11,000 years ago, as the glaciers of the last ice age receded. &#91; 1 &#93; Small groups of hunter-gatherers followed herds of caribou , elk , and mastodon through the grasslands of the Champlain Valley . At that time much of the region was mixed tundra . The oldest human artifacts are 11,000 year old projectile points found along the eastern shore of the saltwater Champlain Sea . &#91; 2 &#93; This time is known as the Paleo-Indian period. By about 8,000 years ago, the Champlain Sea had become the freshwater Lake Champlain and the climate was more temperate , bringing increased diversity of flora and fauna. &#91; 2 &#93; This was the beginning of the Archaic period . By about 4,300 years ago, the forests were as they are today. &#91; 1 &#93; Large mammals underwent extinction or migrated north, and the human population became reliant on smaller game and plants. &#91; 1 &#93; People developed fishing equipment and stone cookware, and practiced woodworking and food storage. &#91; 2 &#93; They had time for travel, leisure, and performed elaborate ceremonies. &#91; 2 &#93; Most of the state''s territory was occupied by the Abenaki , south-western parts were inhabited by the Mohicans and south-eastern borderlands by the Pocumtuc and the Pennacook . &#91; 3 &#93; &#91; 4 &#93; &#91; self-published source? &#93; Over 3,000 years ago, the Woodland period began. &#91; 5 &#93; Food was increasingly sourced from domesticated plants, including maize , beans , and squa', '["clm_wiki_vermont_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_vermont_demographics', 'plc_vermont', 'demographics', 'Demographics',
   'Pre-colonial [ edit ] Watercolor of Abenaki couple, 1700s The first humans to inhabit what is now Vermont arrived about 11,000 years ago, as the glaciers of the last ice age receded. &#91; 1 &#93; Small groups of hunter-gatherers followed herds of caribou , elk , and mastodon through the grasslands of the Champlain Valley . At that time much of the region was mixed tundra . The oldest human artifacts are 11,000 year old projectile points found along the eastern shore of the saltwater Champlain Sea . &#91; 2 &#93; This time is known as the Paleo-Indian period. By about 8,000 years ago, the Champlain Sea had become the freshwater Lake Champlain and the climate was more temperate , bringing increased diversity of flora and fauna. &#91; 2 &#93; This was the beginning of the Archaic period . By about 4,300 years ago, the forests were as they are today. &#91; 1 &#93; Large mammals underwent extinction or migrated north, and the human population became reliant on smaller game and plants. &#91; 1 &#93; People developed fishing equipment and stone cookware, and practiced woodworking and food storage. &#91; 2 &#93; They had time for travel, leisure, and performed elaborate ceremonies. &#91; 2 &#93; Most of the state''s territory was occupied by the Abenaki , south-western parts were inhabited by the Mohicans and south-eastern borderlands by the Pocumtuc and the Pennacook . &#91; 3 &#93; &#91; 4 &#93; &#91; self-published source? &#93; Over 3,000 years ago, the Woodland period began. &#91; 5 &#93; Food was increasingly sourced from domesticated plants, including maize , beans , and squash . Agriculture meant a change from dispersed hunter-gatherering towards the establishment of larger settlements. &#91; 1 &#93; Pottery was made from local clay , and tools were made from chert found along the Winooski River . Canoes were used for fishing and travel. &#91; 2 &#93; The arrival of European explorers in the 1600s marked the end of the Woodland period and the beginning of the Abenak', '["clm_wiki_vermont_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_vermont_primary', 'plc_vermont', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Flag_of_Vermont.svg/960px-Flag_of_Vermont.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Flag_of_Vermont.svg/330px-Flag_of_Vermont.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Vermont',
   'Vermont', 1, 10, unixepoch());

-- 46. Virginia (state, VA, pop=Virginia)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_virginia', 'place', 'virginia', 'Virginia', 'published', 'en', 25,
   'Virginia, officially the Commonwealth of Virginia, is a state in the Southeastern and Mid-Atlantic regions of the United States between the Atlantic Coast and the Appalachian Mountains. It borders Kentucky to the west, Tennessee to the south-west, North Carolina to the south, West Virginia to the north-west, and Maryland to the north. The state''s capital is Richmond and its most populous city is Virginia Beach. With a population of 8.8 million, it is the 12th-most populous and 15th-most densely populated state. More than one-third of Virginia''s population lives in Northern Virginia, which includes the most populous jurisdiction in the state, Fairfax County.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_virginia', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_virginia_in_country', 'plc_virginia', 'ent_usa', 'located_in', 0.95, 'clm_wiki_virginia_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_virginia_overview', 'plc_virginia', 'overview', 'Overview',
   'Virginia, officially the Commonwealth of Virginia, is a state in the Southeastern and Mid-Atlantic regions of the United States between the Atlantic Coast and the Appalachian Mountains. It borders Kentucky to the west, Tennessee to the south-west, North Carolina to the south, West Virginia to the north-west, and Maryland to the north. The state''s capital is Richmond and its most populous city is Virginia Beach. With a population of 8.8 million, it is the 12th-most populous and 15th-most densely populated state. More than one-third of Virginia''s population lives in Northern Virginia, which includes the most populous jurisdiction in the state, Fairfax County.', '["clm_wiki_virginia_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_virginia_history', 'plc_virginia', 'history', 'History',
   'U.S. state .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} This article is about the U.S. state. For other uses, see Virginia (disambiguation) . "The Old Dominion" redirects here. For other uses, see Old Dominion . State in the United States @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-settlement{border-collapse:collapse;line-height:1.2em}@media(min-width:640px){.mw-parser-output .ib-settlement{width:23em}}.mw-parser-output .ib-settlement td,.mw-parser-output .ib-settlement th{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.4em 0.6em}.mw-parser-output .ib-settlement .mergedtoprow .infobox-full-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-header,.mw-parser-output .ib-settlement .mergedtoprow .infobox-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-label,.mw-parser-output .ib-settlement .mergedtoprow .infobox-below{border-top:1px solid #a2a9b1;padding:0.4em 0.', '["clm_wiki_virginia_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_virginia_geography', 'plc_virginia', 'geography', 'Geography',
   'Earliest inhabitants [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Native American tribes in Virginia .mw-parser-output .stack{box-sizing:border-box}.mw-parser-output .stack>div{margin:1px;overflow:hidden}@media all and (min-width:720px){.mw-parser-output .stack-clear-left{float:left;clear:left}.mw-parser-output .stack-clear-right{float:right;clear:right}.mw-parser-output .stack-left{float:left}.mw-parser-output .stack-right{float:right}.mw-parser-output .stack-margin-clear-left{float:left;clear:left;margin-right:1em}.mw-parser-output .stack-margin-clear-right{float:right;clear:right;margin-left:1em}.mw-parser-output .stack-margin-left{float:left;margin-right:1em}.mw-parser-output .stack-margin-right{float:right;margin-left:1em}} The story of Pocahontas was simplified and romanticized by later artists and authors, including Smith himself, and promoted by her descendants, some of whom married into elite colonial families . &#91; 1 &#93; Nomadic hunters are estimated to have arrived in Virginia around 17,000 years ago. Evidence from Daugherty''s Cave shows it was regularly used as a rock shelter by 9,800 years ago. &#91; 2 &#93; During the late Woodland period (500–1000 AD), tribes coalesced, and farming, first of corn and squash, began, with beans and tobacco arriving from the southwest and Mexico by the end of the period. Palisaded towns began to be built around 1200. The native population in the current boundaries of Virginia reached around 50,000 in the 1500s. &#91; 3 &#93; Large groups in the area at that time included the Algonquian in the Tidewater region , which they referred to as Tsenacommacah , the Iroquoian -speaking Nottoway and Meherri', '["clm_wiki_virginia_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_virginia_demographics', 'plc_virginia', 'demographics', 'Demographics',
   'Colony [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Colony of Virginia Several European expeditions, including a group of Spanish Jesuits , explored the Chesapeake Bay during the 16th century. &#91; 1 &#93; To help counter Spain''s colonies in the Caribbean , Queen Elizabeth I of England supported Walter Raleigh ''s 1584 expedition to the Atlantic coast of North America . &#91; 2 &#93; &#91; 3 &#93; The name "Virginia" was used by Captain Arthur Barlowe in the expedition''s report, and may have been suggested by Raleigh or Elizabeth (perhaps noting her status as the "Virgin Queen" or that they viewed the land as being untouched) or related to an Algonquin phrase, Wingandacoa or Windgancon , or leader''s name, Wingina , as heard by the expedition. &#91; 4 &#93; &#91; 5 &#93; The name initially applied to the entire coastal region from South Carolina in the south to Maine in the north, along with the island of Bermuda . &#91; 6 &#93; Raleigh''s colony failed, but the potential financial and strategic gains still captivated many English policymakers. In 1606, King James I issued a charter for a new colony to the Virginia Company of London . The group financed an expedition under Christopher Newport that established a settlement named Jamestown in 1607. &#91; 7 &#93; Though more settlers soon joined, many were ill-prepared for the dangers of the new settlement. As the colony''s president, John Smith secured food for the colonists from nearby tribes, but after he left in 1609, this trade stopped and a series of ambush-style killings between colonists and natives under Chief Powhatan and his brother began, resulting in mass starvation in the colony that win', '["clm_wiki_virginia_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_virginia_primary', 'plc_virginia', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Flag_of_Virginia.svg/960px-Flag_of_Virginia.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Flag_of_Virginia.svg/330px-Flag_of_Virginia.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Virginia',
   'Virginia', 1, 10, unixepoch());

-- 47. Washington (state, WA, pop=Washington)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_washington', 'place', 'washington', 'Washington', 'published', 'en', 25,
   'Washington most commonly refers to:George Washington (1732–1799), the first president of the United States
Washington (state), a state in the Pacific Northwest of the United States
Washington, D.C., the capital of the United States
A metonym for the federal government of the United States
Washington metropolitan area, the metropolitan area centered on Washington, D.C.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_washington', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_washington_in_country', 'plc_washington', 'ent_usa', 'located_in', 0.95, 'clm_wiki_washington_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_washington_overview', 'plc_washington', 'overview', 'Overview',
   'Washington most commonly refers to:George Washington (1732–1799), the first president of the United States
Washington (state), a state in the Pacific Northwest of the United States
Washington, D.C., the capital of the United States
A metonym for the federal government of the United States
Washington metropolitan area, the metropolitan area centered on Washington, D.C.', '["clm_wiki_washington_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_washington_history', 'plc_washington', 'history', 'History',
   'Places [ edit ] England [ edit ] Washington Old Hall , ancestral home of the family of George Washington Washington, Tyne and Wear , a town in the City of Sunderland metropolitan borough Washington, West Sussex , a village and civil parish Greenland [ edit ] Cape Washington, Greenland Washington Land Philippines [ edit ] New Washington, Aklan , a municipality Washington, a barangay in Catarman, Northern Samar Washington, a barangay in Escalante, Negros Occidental Washington, a barangay in San Jacinto, Masbate Washington, a barangay in Surigao City United States [ edit ] Fort Washington (disambiguation) Lake Washington (disambiguation) Mount Washington (disambiguation) Port Washington (disambiguation) Washington Avenue (disambiguation) Washington Bridge (disambiguation) Washington Boulevard (disambiguation) Washington County (disambiguation) Washington district (disambiguation) Washington Island (disambiguation) Washington Park (disambiguation) Washington Square (disambiguation) Washington Street (disambiguation) Washington Township (disambiguation) Washington Valley (disambiguation) Washington, Wisconsin (disambiguation) Cities and communities [ edit ] Washington, Alabama Washington, Arkansas Washington, California , in Nevada County Washington Colony, California, settlement located near what is now Easton, California . Washington, Yolo County, California Washington, Connecticut Washington, Georgia Washington, Illinois Washington, Indiana Washington, Iowa Washington, Kansas Washington, Kentucky Washington, Louisiana Washington, Maine Washington, Massachusetts Washington, Michigan , an unincorporated community in Washington Township Washington, Mississippi Washington, Missouri Washington, Nebraska Washington, New Hampshire Washington, New Jersey Washington, New York Washington, North Carolina Washington Court House, Ohio Washington, Oklahoma Washington, Pennsylvania Washington, Rhode Island Washington-on-the-Brazos, Texas Washington, Utah Washington, Vermont Washington, Virginia Washington, West Virginia Elsewhere [ edit ] Washington Escarpment , Antarctica Washington, Ontario , Canada George Washington, Cuba (also known as Washington) Washington Island (French Polynesia) Washington, Guyana, a community in Mahaica-Berbice , Guyana Washington Island (Kiribati)', '["clm_wiki_washington_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_washington_geography', 'plc_washington', 'geography', 'Geography',
   'England [ edit ] Washington Old Hall , ancestral home of the family of George Washington Washington, Tyne and Wear , a town in the City of Sunderland metropolitan borough Washington, West Sussex , a village and civil parish', '["clm_wiki_washington_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_washington_demographics', 'plc_washington', 'demographics', 'Demographics',
   'Greenland [ edit ] Cape Washington, Greenland Washington Land', '["clm_wiki_washington_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());


-- 48. West Virginia (state, WV, pop=West Virginia)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_west-virginia', 'place', 'west-virginia', 'West Virginia', 'published', 'en', 25,
   'West Virginia is a mountainous, landlocked state in the Southern and Mid-Atlantic regions of the United States. It is bordered by Pennsylvania and Maryland to the northeast, Virginia to the southeast, Kentucky to the southwest, and Ohio to the northwest. West Virginia is the 10th-smallest state by area and ranks as the 12th-least populous state, with 1,778,373 residents. The capital and most populous city is Charleston, with 49,055 residents.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_west-virginia', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_west-virginia_in_country', 'plc_west-virginia', 'ent_usa', 'located_in', 0.95, 'clm_wiki_west-virginia_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_west-virginia_overview', 'plc_west-virginia', 'overview', 'Overview',
   'West Virginia is a mountainous, landlocked state in the Southern and Mid-Atlantic regions of the United States. It is bordered by Pennsylvania and Maryland to the northeast, Virginia to the southeast, Kentucky to the southwest, and Ohio to the northwest. West Virginia is the 10th-smallest state by area and ranks as the 12th-least populous state, with 1,778,373 residents. The capital and most populous city is Charleston, with 49,055 residents.', '["clm_wiki_west-virginia_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_west-virginia_history', 'plc_west-virginia', 'history', 'History',
   'U.S. state .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} "WV" and "Mountain State" redirect here. For other uses, see Western Virginia , Mountain States , WV (disambiguation) , and West Virginia (disambiguation) . State in the United States @media(min-width:640px){.mw-parser-output .infobox{margin-left:1em;float:right;clear:right;width:22em}}.mw-parser-output .infobox-subbox{padding:0;border:none;margin:-3px;width:auto;min-width:100%;font-size:100%;clear:none;float:none;background-color:transparent;color:inherit}.mw-parser-output .infobox-3cols-child{margin:-3px}.mw-parser-output .infobox .navbar{font-size:100%}.mw-parser-output .infobox-hiddenrow,body.skin--responsive.skin--responsive .mw-parser-output .infobox .infobox-hiddenrow{display:none}@media screen{html.skin-theme-clientpref-night .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media screen and (prefers-color-scheme:dark){html.skin-theme-clientpref-os .mw-parser-output .infobox-full-data:not(.notheme)>div:not(.notheme)[style]{background:#1f1f23!important;color:#f8f9fa}}@media(min-width:640px){body.skin--responsive .mw-parser-output .infobox-table{display:table!important}body.skin--responsive .mw-parser-output .infobox-table>caption{display:table-caption!important}body.skin--responsive .mw-parser-output .infobox-table>tbody{display:table-row-group}body.skin--responsive .mw-parser-output .infobox-table th,body.skin--responsive .mw-parser-output .infobox-table td{padding-left:inherit;padding-right:inherit}} .mw-parser-output .ib-settlement{border-collapse:collapse;line-height:1.2em}@media(min-width:640px){.mw-parser-output .ib-settlement{width:23em}}.mw-parser-output .ib-settlement td,.mw-parser-output .ib-settlement th{border-top:1px solid #a2a9b1;padding:0.4em 0.6em 0.4em 0.6em}.mw-parser-output .ib-settlement .mergedtoprow .infobox-full-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-header,.mw-parser-output .ib-settlement .mergedtoprow .infobox-data,.mw-parser-output .ib-settlement .mergedtoprow .infobox-label,.mw-parser-output .ib-settlement .mergedtoprow .infobox-below{border-top:1px solid #a2a9b1;padding:0.4em 0', '["clm_wiki_west-virginia_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_west-virginia_geography', 'plc_west-virginia', 'geography', 'Geography',
   'Prehistory [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Further information: Prehistory of West Virginia and Protohistory of West Virginia A 2010 analysis of a local stalagmite revealed that Native Americans were burning forests to clear land as early as 100 &#160; BCE. &#91; 1 &#93; Some regional late-prehistoric Eastern Woodland tribes were more involved in hunting and fishing, practicing the Eastern Agricultural Complex gardening method which used fire to clear out underbrush from certain wooded areas. Another group progressed to the more time-consuming, advanced companion crop fields method of gardening. Also continuing from the ancient Indigenous people of the state, they cultivated tobacco through to early historic times. It was used in numerous social and religious rituals. " Maize (corn) did not make a substantial contribution to the diet until after 1150 BP ", to quote Mills (OSU 2003). &#91; full citation needed &#93; Eventually, tribal villages began depending on corn to feed their turkey flocks, as Kanawha Fort Ancients practiced bird husbandry . The local Natives made cornbread and a flat rye bread called "bannock" as they emerged from the protohistoric era. A horizon extending from a little before the early 18th century is sometimes called the acculturating Fireside Cabin culture . Trading posts were established by European traders along the Potomac and James rivers . Tribes that inhabited West Virginia as of 1600 were the Siouan Monongahela Culture to the north, the Fort Ancient culture along the Ohio River from the Monongahela to Kentucky and extending an unknown distance inland, &#91; 2 &#93; and the Eastern Siouan Tutelo and Moneton tribes i', '["clm_wiki_west-virginia_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_west-virginia_demographics', 'plc_west-virginia', 'demographics', 'Demographics',
   'European exploration and settlement [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main articles: Colony of Virginia , French and Indian War , Treaty of Paris (1763) , Indian Reserve (1763) , American Revolutionary War , Lee Resolution , United States Declaration of Independence , and Treaty of Paris (1783) Thomas Lee , the first manager of the Ohio Company of Virginia In 1671, General Abraham Wood , at the direction of Royal Governor William Berkeley of the Virginia Colony , sent a party from Fort Henry led by Thomas Batts and Robert Fallam to survey this territory. They were the first Europeans recorded as reaching Kanawha Falls . Some sources state that Governor Alexander Spotswood ''s 1716 Knights of the Golden Horseshoe Expedition (for which the state''s Golden Horseshoe Competition for 8th graders is named) had penetrated as far as Pendleton County , but modern historians interpret the original accounts of the excursion as suggesting that none of the expedition''s horsemen ventured much farther west of the Blue Ridge Mountains than Harrisonburg, Virginia . John Van Metre, a Native trader, penetrated into the northern portion in 1725. The same year, German settlers from Pennsylvania founded New Mecklenburg, the present Shepherdstown , on the Potomac River , and others followed. &#91; 1 &#93; King Charles II of England , in 1661, granted to a company of gentlemen the land between the Potomac and Rappahannock rivers, known as the Northern Neck . Thomas Fairfax, 6th Lord Fairfax of Cameron ultimately took possession of this grant, and in 1746 a stone was erected at the source of the North Branch Potomac River to mark his grant''s western limit. George Washington ', '["clm_wiki_west-virginia_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_west-virginia_overview', 'plc_west-virginia', 'overview', 'History',
   'West Virginia is a mountainous, landlocked state in the Southern and Mid-Atlantic regions of the United States. It is bordered by Pennsylvania and Maryland to the northeast, Virginia to the southeast, Kentucky to the southwest, and Ohio to the northwest. West Virginia is the 10th-smallest state by area and ranks as the 12th-least populous state, with 1,778,373 residents. The capital and most populous city is Charleston, with 49,055 residents.', '["clm_wiki_west-virginia_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_west-virginia_overview', 'plc_west-virginia', 'overview', 'Geography',
   'West Virginia is a mountainous, landlocked state in the Southern and Mid-Atlantic regions of the United States. It is bordered by Pennsylvania and Maryland to the northeast, Virginia to the southeast, Kentucky to the southwest, and Ohio to the northwest. West Virginia is the 10th-smallest state by area and ranks as the 12th-least populous state, with 1,778,373 residents. The capital and most populous city is Charleston, with 49,055 residents.', '["clm_wiki_west-virginia_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_west-virginia_overview', 'plc_west-virginia', 'overview', 'Demographics',
   'West Virginia is a mountainous, landlocked state in the Southern and Mid-Atlantic regions of the United States. It is bordered by Pennsylvania and Maryland to the northeast, Virginia to the southeast, Kentucky to the southwest, and Ohio to the northwest. West Virginia is the 10th-smallest state by area and ranks as the 12th-least populous state, with 1,778,373 residents. The capital and most populous city is Charleston, with 49,055 residents.', '["clm_wiki_west-virginia_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_west-virginia_primary', 'plc_west-virginia', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Flag_of_West_Virginia.svg/960px-Flag_of_West_Virginia.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Flag_of_West_Virginia.svg/330px-Flag_of_West_Virginia.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'West Virginia',
   'West Virginia', 1, 10, unixepoch());

-- 49. Wisconsin (state, WI, pop=Wisconsin)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_wisconsin', 'place', 'wisconsin', 'Wisconsin', 'published', 'en', 25,
   'Wisconsin is a state in the Upper Midwest and Great Lakes regions of the United States. It borders Minnesota to the west, Iowa to the southwest, Illinois to the south, Lake Michigan to the east, Michigan to the northeast, and Lake Superior to the north. With a population of about 6 million, and an area of about 65,500 square miles (170,000 km2), Wisconsin is the 21st-largest state by population and the 23rd-largest by area. Wisconsin has 72 counties. The state''s most populous city is Milwaukee. Its capital and second-most populous city is Madison. Other urban areas include Green Bay and the Fox Cities.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_wisconsin', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_wisconsin_in_country', 'plc_wisconsin', 'ent_usa', 'located_in', 0.95, 'clm_wiki_wisconsin_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_wisconsin_overview', 'plc_wisconsin', 'overview', 'Overview',
   'Wisconsin is a state in the Upper Midwest and Great Lakes regions of the United States. It borders Minnesota to the west, Iowa to the southwest, Illinois to the south, Lake Michigan to the east, Michigan to the northeast, and Lake Superior to the north. With a population of about 6 million, and an area of about 65,500 square miles (170,000 km2), Wisconsin is the 21st-largest state by population and the 23rd-largest by area. Wisconsin has 72 counties. The state''s most populous city is Milwaukee. Its capital and second-most populous city is Madison. Other urban areas include Green Bay and the Fox Cities.', '["clm_wiki_wisconsin_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_wisconsin_history', 'plc_wisconsin', 'history', 'History',
   'Etymology [ edit ] The word Wisconsin originates from the name given to the Wisconsin River by one of the Algonquian -speaking Native American groups living in the region at the time of European colonization . &#91; 1 &#93; The French explorer Jacques Marquette was the first European to reach the Wisconsin River, arriving in 1673 and calling the river Meskousing (likely ᒣᔅᑯᐤᓯᣙ meskowsin ) in his journal. &#91; 2 &#93; Subsequent French writers changed the spelling from Meskousing to Ouisconsin , and over time this became the name for both the Wisconsin River and the surrounding lands. English speakers anglicized the spelling from Ouisconsin to Wisconsin when they began to arrive in large numbers during the early 19th century. The legislature of Wisconsin Territory made the current spelling official in 1845. &#91; 3 &#93; The Algonquian word for Wisconsin and its original meaning have both grown obscure. While interpretations vary, most implicate the river and the red sandstone that lines its banks. One leading theory holds that the name originated from the Miami word Meskonsing , meaning '' it lies red '' , a reference to the setting of the Wisconsin River as it flows through the reddish sandstone of the Wisconsin Dells . &#91; 4 &#93; Other theories include claims that the name originated from one of a variety of Ojibwe words meaning '' red stone place '' , '' where the waters gather '' , or '' great rock '' . &#91; 5 &#93; More recently, University of Wisconsin-Green Bay lecturer and Menominee elder Napos Turney suggested the origin of the name may be the Menominee word Wēskōhsaeh , meaning "good place". &#91; 6 &#93; &#91; 7 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipe', '["clm_wiki_wisconsin_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_wisconsin_geography', 'plc_wisconsin', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Wisconsin Early history [ edit ] Aztalan State Park marks the site of an ancient Mississippian culture settlement that flourished during the 10th to 13th centuries. Wisconsin has been home to a wide variety of cultures over the past 14,000 years. The first people arrived around 10,000 BCE during the Wisconsin Glaciation . These early inhabitants, called Paleo-Indians , hunted now-extinct ice age animals such as the Boaz mastodon , a prehistoric mastodon skeleton unearthed along with spear points in southwest Wisconsin. &#91; 1 &#93; After the ice age ended around 8000 BCE, people in the subsequent Archaic period lived by hunting, fishing, and gathering food from wild plants. Agricultural societies emerged gradually over the Woodland period between 1000 BCE to 1000 CE. Toward the end of this period, Wisconsin was the heartland of the " Effigy Mound culture", which built thousands of animal-shaped mounds across the landscape. &#91; 2 &#93; Later, between 1000 and 1500 CE, the Mississippian and Oneota cultures built substantial settlements including the fortified village at Aztalan in southeast Wisconsin. &#91; 3 &#93; The Oneota may be the ancestors of the modern Iowa and Ho-Chunk nations who shared the Wisconsin region with the Menominee at the time of European contact. &#91; 4 &#93; Other Native American groups living in Wisconsin when Europeans first settled included the Ojibwe , Sauk , Meskwaki , Kickapoo , and Potawatomi , who migrated to Wisconsin from the east between 1500 and 1700. &#91; 5 &#93; European settlements [ edit ] Main articles: New France , Canada (New France) , Fr', '["clm_wiki_wisconsin_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_wisconsin_demographics', 'plc_wisconsin', 'demographics', 'Demographics',
   'Early history [ edit ] Aztalan State Park marks the site of an ancient Mississippian culture settlement that flourished during the 10th to 13th centuries. Wisconsin has been home to a wide variety of cultures over the past 14,000 years. The first people arrived around 10,000 BCE during the Wisconsin Glaciation . These early inhabitants, called Paleo-Indians , hunted now-extinct ice age animals such as the Boaz mastodon , a prehistoric mastodon skeleton unearthed along with spear points in southwest Wisconsin. &#91; 1 &#93; After the ice age ended around 8000 BCE, people in the subsequent Archaic period lived by hunting, fishing, and gathering food from wild plants. Agricultural societies emerged gradually over the Woodland period between 1000 BCE to 1000 CE. Toward the end of this period, Wisconsin was the heartland of the " Effigy Mound culture", which built thousands of animal-shaped mounds across the landscape. &#91; 2 &#93; Later, between 1000 and 1500 CE, the Mississippian and Oneota cultures built substantial settlements including the fortified village at Aztalan in southeast Wisconsin. &#91; 3 &#93; The Oneota may be the ancestors of the modern Iowa and Ho-Chunk nations who shared the Wisconsin region with the Menominee at the time of European contact. &#91; 4 &#93; Other Native American groups living in Wisconsin when Europeans first settled included the Ojibwe , Sauk , Meskwaki , Kickapoo , and Potawatomi , who migrated to Wisconsin from the east between 1500 and 1700. &#91; 5 &#93; ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{backgroun', '["clm_wiki_wisconsin_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_wisconsin_primary', 'plc_wisconsin', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Flag_of_Wisconsin.svg/330px-Flag_of_Wisconsin.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Flag_of_Wisconsin.svg/330px-Flag_of_Wisconsin.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Wisconsin',
   'Wisconsin', 1, 10, unixepoch());

-- 50. Wyoming (state, WY, pop=Wyoming)
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('plc_wyoming', 'place', 'wyoming', 'Wyoming', 'published', 'en', 25,
   'Wyoming is a landlocked state in the Mountain West subregion of the Western United States. It borders Montana to the north and northwest, South Dakota and Nebraska to the east, Idaho to the west, Utah to the southwest, and Colorado to the south. With an estimated population of 587,618 as of 2024, Wyoming is the least populous state despite being the tenth-largest by area, and it has the second-lowest population density. The state capital and most populous city is Cheyenne.', unixepoch(), unixepoch());

INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('plc_wyoming', 'state', NULL, NULL, 'US', NULL, NULL, NULL, NULL);

INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_wyoming_in_country', 'plc_wyoming', 'ent_usa', 'located_in', 0.95, 'clm_wiki_wyoming_in_usa', NULL, NULL);

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_wyoming_overview', 'plc_wyoming', 'overview', 'Overview',
   'Wyoming is a landlocked state in the Mountain West subregion of the Western United States. It borders Montana to the north and northwest, South Dakota and Nebraska to the east, Idaho to the west, Utah to the southwest, and Colorado to the south. With an estimated population of 587,618 as of 2024, Wyoming is the least populous state despite being the tenth-largest by area, and it has the second-lowest population density. The state capital and most populous city is Cheyenne.', '["clm_wiki_wyoming_overview"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   10, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_wyoming_history', 'plc_wyoming', 'history', 'History',
   'Etymology [ edit ] The region had acquired the name Wyoming by 1865 when Representative James Mitchell Ashley of Ohio introduced a bill to Congress to provide a "temporary government for the territory of Wyoming ". The territory was named after the Wyoming Valley in Pennsylvania . Thomas Campbell wrote his 1809 poem " Gertrude of Wyoming ", inspired by the Battle of Wyoming in the American Revolutionary War . The name ultimately derives from the Lenape Munsee word xwé:wamənk (''at the big river flat''). &#91; 1 &#93; &#91; 2 &#93; ^ Bright, William (2004). Native American Place Names of the United States . Norman: University of Oklahoma Press, pg. 576 ^ .mw-parser-output cite.citation{font-style:inherit;word-wrap:break-word}.mw-parser-output .citation q{quotes:"\"""\"""''""''"}.mw-parser-output .citation:target{background-color:rgba(0,127,255,0.133)}.mw-parser-output .id-lock-free.id-lock-free a{background:url("//upload.wikimedia.org/wikipedia/commons/6/65/Lock-green.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-limited.id-lock-limited a,.mw-parser-output .id-lock-registration.id-lock-registration a{background:url("//upload.wikimedia.org/wikipedia/commons/d/d6/Lock-gray-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .id-lock-subscription.id-lock-subscription a{background:url("//upload.wikimedia.org/wikipedia/commons/a/aa/Lock-red-alt-2.svg")right 0.1em center/9px no-repeat}.mw-parser-output .cs1-ws-icon a{background:url("//upload.wikimedia.org/wikipedia/commons/4/4c/Wikisource-logo.svg")right 0.1em center/12px no-repeat}body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-free a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-limited a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-registration a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .id-lock-subscription a,body:not(.skin-timeless):not(.skin-minerva) .mw-parser-output .cs1-ws-icon a{background-size:contain;padding:0 1em 0 0}.mw-parser-output .cs1-code{color:inherit;background:inherit;border:none;padding:inherit}.mw-parser-output .cs1-hidden-error{display:none;color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-visible-error{color:var(--color-error,#bf3c2c)}.mw-parser-output .cs1-maint{display:none;color:#085;margin-left:0.3em}.mw-parser-output .cs1-kern-left{padding-left:0.2em}.mw-parser-output .cs1-kern-right{padding-right:0.2em}.mw-parser-output .citation .mw-selflink{font-weight:inh', '["clm_wiki_wyoming_history"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   20, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_wyoming_geography', 'plc_wyoming', 'geography', 'Geography',
   'History [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: History of Wyoming The first Fort Laramie as it looked before 1840 (painting from memory by Alfred Jacob Miller) Several Native American groups originally inhabited the region today known as Wyoming. The Crow , Arapaho , Lakota , and Shoshone were but a few of the original inhabitants European explorers encountered when they first visited the region. What is now southwestern Wyoming was claimed by the Spanish Empire , which extended through the Southwest and Mexico. With Mexican independence in 1821, it was considered part of Alta California . U.S. expansion brought settlers who fought for control. Mexico ceded these territories after its defeat in 1848 in the Mexican–American War . From the late 18th century, French-Canadian trappers from Québec and Montréal regularly entered the area for trade with the tribes. French toponyms such as Téton and La Ramie are marks of that history. &#91; 1 &#93; American John Colter first recorded a description in English of the region in 1807. He was a member of the Lewis and Clark Expedition , which was guided by French Canadian Toussaint Charbonneau and his young Shoshone wife, Sacagawea . At the time, Colter''s reports of the Yellowstone area were considered fictional. &#91; 2 &#93; On a return from Astoria , Robert Stuart and a party of five men discovered South Pass in 1812. &#91; 1 &#93; The Oregon Trail later followed that route as emigrants moved to the west coast. In 1850, mountain man Jim Bridger first documented what is now known as Bridger Pass . &#91; 3 &#93; Bridger also explored Yellowstone, and filed reports on the region that, like Colter''s, we', '["clm_wiki_wyoming_geography"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   30, 1, 1, unixepoch());

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('cs_wyoming_demographics', 'plc_wyoming', 'demographics', 'Demographics',
   'Geography [ edit ] .mw-parser-output .hatnote{font-style:italic}.mw-parser-output div.hatnote{padding-left:1.6em;margin-bottom:0.5em}.mw-parser-output .hatnote i{font-style:normal}.mw-parser-output .hatnote+span.mw-empty-elt+.hatnote,.mw-parser-output .hatnote+link+.hatnote{margin-top:-0.5em}@media print{body.ns-0 .mw-parser-output .hatnote{display:none!important}} Main article: Geography of Wyoming Climate [ edit ] Further information: Climate change in Wyoming Köppen climate types of Wyoming, using 1991–2020 climate normals Autumn in the Bighorn Mountains Wyoming''s climate is generally semi-arid and continental ( Köppen climate classification BSk ) and is drier and windier in comparison to most of the United States with greater temperature extremes. &#91; 1 &#93; &#91; 2 &#93; Much of this is due to the topography of the state. Summers in Wyoming are warm with July high temperatures averaging between 80 and 90&#160;°F (27 and 32&#160;°C) in most of the state. With increasing elevation, however, this average drops rapidly with locations above 9,000 feet (2,700&#160;m) averaging around 70&#160;°F (21&#160;°C). Summer nights throughout the state are characterized by a rapid cooldown with even the hottest locations averaging in the 50–60&#160;°F (10–16&#160;°C) range at night. In most of the state, most of the precipitation tends to fall in the late spring and early summer. Winters are cold but are variable with periods of sometimes extreme cold interspersed between generally mild periods, with Chinook winds providing unusually warm temperatures in some locations. Wyoming is a dry state with much of the land receiving less than 10 inches (250&#160;mm) of rainfall per year. Precipitation depends on elevation with lower areas in the Big Horn Basin averaging 5–8 inches (130–200&#160;mm), making the area nearly a true desert . The lower areas in the North and on the eastern plains typically average around 10–12 inches (250–300&#160;mm), making the climate there semi-arid ', '["clm_wiki_wyoming_demographics"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   40, 1, 1, unixepoch());

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_wyoming_primary', 'plc_wyoming', 'src_wikimedia_commons',
   NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Wyoming.svg/1280px-Flag_of_Wyoming.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Wyoming.svg/330px-Flag_of_Wyoming.svg.png?utm_source=en.wikipedia.org&utm_campaign=api&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Wyoming',
   'Wyoming', 1, 10, unixepoch());

