-- ========================================
-- Migration 0071: Place image backfill
-- For 300 places without primary image
-- Source: Wikipedia /page/media-list/ (srcset URL)
-- Generated: 2026-08-10 01:19:48 UTC
-- ========================================

INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_new-york-city_primary', 'plc_new-york-city', 'src_wikimedia_commons',
   'View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_(cropped).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg/500px-View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg/500px-View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'New York City',
   'New York City', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_new-york-city', 'media', 'media-photo-new-york-city', 'New York City (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_new-york-city', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg/500px-View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg/500px-View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_new-york-city', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_new-york-city', 'ent_media_new-york-city', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_los-angeles_primary', 'plc_los-angeles', 'src_wikimedia_commons',
   'Hollywood_sign_(8485145044).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Hollywood_sign_%288485145044%29.jpg/500px-Hollywood_sign_%288485145044%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Hollywood_sign_%288485145044%29.jpg/500px-Hollywood_sign_%288485145044%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Los Angeles',
   'Los Angeles', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_los-angeles', 'media', 'media-photo-los-angeles', 'Los Angeles (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_los-angeles', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Hollywood_sign_%288485145044%29.jpg/500px-Hollywood_sign_%288485145044%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Hollywood_sign_%288485145044%29.jpg/500px-Hollywood_sign_%288485145044%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_los-angeles', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_los-angeles', 'ent_media_los-angeles', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_chicago_primary', 'plc_chicago', 'src_wikimedia_commons',
   'Chicago_River_ferry_b.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Chicago_River_ferry_b.jpg/500px-Chicago_River_ferry_b.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Chicago_River_ferry_b.jpg/500px-Chicago_River_ferry_b.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Chicago',
   'Chicago', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_chicago', 'media', 'media-photo-chicago', 'Chicago (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_chicago', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Chicago_River_ferry_b.jpg/500px-Chicago_River_ferry_b.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Chicago_River_ferry_b.jpg/500px-Chicago_River_ferry_b.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_chicago', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_chicago', 'ent_media_chicago', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_houston_primary', 'plc_houston', 'src_wikimedia_commons',
   'Texas_medical_center.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Texas_medical_center.jpg/500px-Texas_medical_center.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Texas_medical_center.jpg/500px-Texas_medical_center.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Houston',
   'Houston', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_houston', 'media', 'media-photo-houston', 'Houston (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_houston', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Texas_medical_center.jpg/500px-Texas_medical_center.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Texas_medical_center.jpg/500px-Texas_medical_center.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_houston', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_houston', 'ent_media_houston', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_philadelphia_primary', 'plc_philadelphia', 'src_wikimedia_commons',
   'Philadelphia_skyline_20240528_(cropped_2-1).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Philadelphia_skyline_20240528_%28cropped_2-1%29.jpg/500px-Philadelphia_skyline_20240528_%28cropped_2-1%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Philadelphia_skyline_20240528_%28cropped_2-1%29.jpg/500px-Philadelphia_skyline_20240528_%28cropped_2-1%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Philadelphia',
   'Philadelphia', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_philadelphia', 'media', 'media-photo-philadelphia', 'Philadelphia (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_philadelphia', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Philadelphia_skyline_20240528_%28cropped_2-1%29.jpg/500px-Philadelphia_skyline_20240528_%28cropped_2-1%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Philadelphia_skyline_20240528_%28cropped_2-1%29.jpg/500px-Philadelphia_skyline_20240528_%28cropped_2-1%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_philadelphia', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_philadelphia', 'ent_media_philadelphia', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_san-antonio_primary', 'plc_san-antonio', 'src_wikimedia_commons',
   'San_Antonio_Botanical_Garden_Overlook_View.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/San_Antonio_Botanical_Garden_Overlook_View.jpg/500px-San_Antonio_Botanical_Garden_Overlook_View.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/San_Antonio_Botanical_Garden_Overlook_View.jpg/500px-San_Antonio_Botanical_Garden_Overlook_View.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'San Antonio',
   'San Antonio', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_san-antonio', 'media', 'media-photo-san-antonio', 'San Antonio (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_san-antonio', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/San_Antonio_Botanical_Garden_Overlook_View.jpg/500px-San_Antonio_Botanical_Garden_Overlook_View.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/San_Antonio_Botanical_Garden_Overlook_View.jpg/500px-San_Antonio_Botanical_Garden_Overlook_View.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_san-antonio', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_san-antonio', 'ent_media_san-antonio', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_san-diego_primary', 'plc_san-diego', 'src_wikimedia_commons',
   'La_Jolla_Shores_view_(cropped).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/La_Jolla_Shores_view_%28cropped%29.jpg/500px-La_Jolla_Shores_view_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/La_Jolla_Shores_view_%28cropped%29.jpg/500px-La_Jolla_Shores_view_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'San Diego',
   'San Diego', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_san-diego', 'media', 'media-photo-san-diego', 'San Diego (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_san-diego', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/La_Jolla_Shores_view_%28cropped%29.jpg/500px-La_Jolla_Shores_view_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/La_Jolla_Shores_view_%28cropped%29.jpg/500px-La_Jolla_Shores_view_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_san-diego', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_san-diego', 'ent_media_san-diego', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_dallas_primary', 'plc_dallas', 'src_wikimedia_commons',
   'Dallas_Texas_skyline_from_Reunion_Tower_September_2025_(cropped).png',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Dallas_Texas_skyline_from_Reunion_Tower_September_2025_%28cropped%29.png/500px-Dallas_Texas_skyline_from_Reunion_Tower_September_2025_%28cropped%29.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Dallas_Texas_skyline_from_Reunion_Tower_September_2025_%28cropped%29.png/500px-Dallas_Texas_skyline_from_Reunion_Tower_September_2025_%28cropped%29.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Dallas',
   'Dallas', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_dallas', 'media', 'media-photo-dallas', 'Dallas (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_dallas', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Dallas_Texas_skyline_from_Reunion_Tower_September_2025_%28cropped%29.png/500px-Dallas_Texas_skyline_from_Reunion_Tower_September_2025_%28cropped%29.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Dallas_Texas_skyline_from_Reunion_Tower_September_2025_%28cropped%29.png/500px-Dallas_Texas_skyline_from_Reunion_Tower_September_2025_%28cropped%29.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_dallas', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_dallas', 'ent_media_dallas', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_boston_primary', 'plc_boston', 'src_wikimedia_commons',
   'ISH_WC_Boston4.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/ISH_WC_Boston4.jpg/500px-ISH_WC_Boston4.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/ISH_WC_Boston4.jpg/500px-ISH_WC_Boston4.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Boston',
   'Boston', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_boston', 'media', 'media-photo-boston', 'Boston (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_boston', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/ISH_WC_Boston4.jpg/500px-ISH_WC_Boston4.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/ISH_WC_Boston4.jpg/500px-ISH_WC_Boston4.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_boston', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_boston', 'ent_media_boston', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_seattle_primary', 'plc_seattle', 'src_wikimedia_commons',
   'Seattle_Center_as_night_falls.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Seattle_Center_as_night_falls.jpg/500px-Seattle_Center_as_night_falls.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Seattle_Center_as_night_falls.jpg/500px-Seattle_Center_as_night_falls.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Seattle',
   'Seattle', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_seattle', 'media', 'media-photo-seattle', 'Seattle (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_seattle', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Seattle_Center_as_night_falls.jpg/500px-Seattle_Center_as_night_falls.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Seattle_Center_as_night_falls.jpg/500px-Seattle_Center_as_night_falls.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_seattle', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_seattle', 'ent_media_seattle', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_washington-dc_primary', 'plc_washington-dc', 'src_wikimedia_commons',
   '12-07-13-washington-by-RalfR-08.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/12-07-13-washington-by-RalfR-08.jpg/500px-12-07-13-washington-by-RalfR-08.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/12-07-13-washington-by-RalfR-08.jpg/500px-12-07-13-washington-by-RalfR-08.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Washington, D.C.',
   'Washington, D.C.', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_washington-dc', 'media', 'media-photo-washington-dc', 'Washington, D.C. (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_washington-dc', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/12-07-13-washington-by-RalfR-08.jpg/500px-12-07-13-washington-by-RalfR-08.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/12-07-13-washington-by-RalfR-08.jpg/500px-12-07-13-washington-by-RalfR-08.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_washington-dc', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_washington-dc', 'ent_media_washington-dc', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_atlanta_primary', 'plc_atlanta', 'src_wikimedia_commons',
   'A2ATL20250614-0721_(cropped).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/A2ATL20250614-0721_%28cropped%29.jpg/500px-A2ATL20250614-0721_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/A2ATL20250614-0721_%28cropped%29.jpg/500px-A2ATL20250614-0721_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Atlanta',
   'Atlanta', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_atlanta', 'media', 'media-photo-atlanta', 'Atlanta (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_atlanta', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/A2ATL20250614-0721_%28cropped%29.jpg/500px-A2ATL20250614-0721_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/A2ATL20250614-0721_%28cropped%29.jpg/500px-A2ATL20250614-0721_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_atlanta', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_atlanta', 'ent_media_atlanta', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_miami_primary', 'plc_miami', 'src_wikimedia_commons',
   'Villa_Vizcaya_20110228.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Villa_Vizcaya_20110228.jpg/500px-Villa_Vizcaya_20110228.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Villa_Vizcaya_20110228.jpg/500px-Villa_Vizcaya_20110228.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Miami',
   'Miami', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_miami', 'media', 'media-photo-miami', 'Miami (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_miami', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Villa_Vizcaya_20110228.jpg/500px-Villa_Vizcaya_20110228.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Villa_Vizcaya_20110228.jpg/500px-Villa_Vizcaya_20110228.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_miami', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_miami', 'ent_media_miami', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_detroit_primary', 'plc_detroit', 'src_wikimedia_commons',
   'Detroit_Skyline_from_Windsor_2026-07-28_1026.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Detroit_Skyline_from_Windsor_2026-07-28_1026.jpg/500px-Detroit_Skyline_from_Windsor_2026-07-28_1026.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Detroit_Skyline_from_Windsor_2026-07-28_1026.jpg/500px-Detroit_Skyline_from_Windsor_2026-07-28_1026.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Detroit',
   'Detroit', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_detroit', 'media', 'media-photo-detroit', 'Detroit (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_detroit', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Detroit_Skyline_from_Windsor_2026-07-28_1026.jpg/500px-Detroit_Skyline_from_Windsor_2026-07-28_1026.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Detroit_Skyline_from_Windsor_2026-07-28_1026.jpg/500px-Detroit_Skyline_from_Windsor_2026-07-28_1026.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_detroit', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_detroit', 'ent_media_detroit', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_san-francisco_primary', 'plc_san-francisco', 'src_wikimedia_commons',
   'Zeppelin-ride-020100925-195_(5029394846).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Zeppelin-ride-020100925-195_%285029394846%29.jpg/500px-Zeppelin-ride-020100925-195_%285029394846%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Zeppelin-ride-020100925-195_%285029394846%29.jpg/500px-Zeppelin-ride-020100925-195_%285029394846%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'San Francisco',
   'San Francisco', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_san-francisco', 'media', 'media-photo-san-francisco', 'San Francisco (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_san-francisco', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Zeppelin-ride-020100925-195_%285029394846%29.jpg/500px-Zeppelin-ride-020100925-195_%285029394846%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Zeppelin-ride-020100925-195_%285029394846%29.jpg/500px-Zeppelin-ride-020100925-195_%285029394846%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_san-francisco', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_san-francisco', 'ent_media_san-francisco', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_denver_primary', 'plc_denver', 'src_wikimedia_commons',
   'Denver,_Colorado_skyline_(cropped).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Denver%2C_Colorado_skyline_%28cropped%29.jpg/500px-Denver%2C_Colorado_skyline_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Denver%2C_Colorado_skyline_%28cropped%29.jpg/500px-Denver%2C_Colorado_skyline_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Denver',
   'Denver', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_denver', 'media', 'media-photo-denver', 'Denver (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_denver', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Denver%2C_Colorado_skyline_%28cropped%29.jpg/500px-Denver%2C_Colorado_skyline_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Denver%2C_Colorado_skyline_%28cropped%29.jpg/500px-Denver%2C_Colorado_skyline_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_denver', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_denver', 'ent_media_denver', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_las-vegas_primary', 'plc_las-vegas', 'src_wikimedia_commons',
   'Las_Vegas_from_above_(40064746644).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Las_Vegas_from_above_%2840064746644%29.jpg/500px-Las_Vegas_from_above_%2840064746644%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Las_Vegas_from_above_%2840064746644%29.jpg/500px-Las_Vegas_from_above_%2840064746644%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Las Vegas',
   'Las Vegas', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_las-vegas', 'media', 'media-photo-las-vegas', 'Las Vegas (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_las-vegas', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Las_Vegas_from_above_%2840064746644%29.jpg/500px-Las_Vegas_from_above_%2840064746644%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Las_Vegas_from_above_%2840064746644%29.jpg/500px-Las_Vegas_from_above_%2840064746644%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_las-vegas', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_las-vegas', 'ent_media_las-vegas', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_nashville_primary', 'plc_nashville', 'src_wikimedia_commons',
   'Nashville,_TN_skyline.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Nashville%2C_TN_skyline.jpg/500px-Nashville%2C_TN_skyline.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Nashville%2C_TN_skyline.jpg/500px-Nashville%2C_TN_skyline.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Nashville',
   'Nashville', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_nashville', 'media', 'media-photo-nashville', 'Nashville (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_nashville', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Nashville%2C_TN_skyline.jpg/500px-Nashville%2C_TN_skyline.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Nashville%2C_TN_skyline.jpg/500px-Nashville%2C_TN_skyline.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_nashville', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_nashville', 'ent_media_nashville', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_new-orleans_primary', 'plc_new-orleans', 'src_wikimedia_commons',
   'New_Orleans_from_the_Air_September_2019_-_Central_Business_District_Skyline_(cropped).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/New_Orleans_from_the_Air_September_2019_-_Central_Business_District_Skyline_%28cropped%29.jpg/500px-New_Orleans_from_the_Air_September_2019_-_Central_Business_District_Skyline_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/New_Orleans_from_the_Air_September_2019_-_Central_Business_District_Skyline_%28cropped%29.jpg/500px-New_Orleans_from_the_Air_September_2019_-_Central_Business_District_Skyline_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'New Orleans',
   'New Orleans', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_new-orleans', 'media', 'media-photo-new-orleans', 'New Orleans (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_new-orleans', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/New_Orleans_from_the_Air_September_2019_-_Central_Business_District_Skyline_%28cropped%29.jpg/500px-New_Orleans_from_the_Air_September_2019_-_Central_Business_District_Skyline_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/New_Orleans_from_the_Air_September_2019_-_Central_Business_District_Skyline_%28cropped%29.jpg/500px-New_Orleans_from_the_Air_September_2019_-_Central_Business_District_Skyline_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_new-orleans', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_new-orleans', 'ent_media_new-orleans', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_cleveland_primary', 'plc_cleveland', 'src_wikimedia_commons',
   'Cleveland_skyline_from_Lakewood_Park,_January_2026.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cleveland_skyline_from_Lakewood_Park%2C_January_2026.jpg/500px-Cleveland_skyline_from_Lakewood_Park%2C_January_2026.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cleveland_skyline_from_Lakewood_Park%2C_January_2026.jpg/500px-Cleveland_skyline_from_Lakewood_Park%2C_January_2026.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Cleveland',
   'Cleveland', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_cleveland', 'media', 'media-photo-cleveland', 'Cleveland (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_cleveland', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cleveland_skyline_from_Lakewood_Park%2C_January_2026.jpg/500px-Cleveland_skyline_from_Lakewood_Park%2C_January_2026.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cleveland_skyline_from_Lakewood_Park%2C_January_2026.jpg/500px-Cleveland_skyline_from_Lakewood_Park%2C_January_2026.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_cleveland', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_cleveland', 'ent_media_cleveland', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_pittsburgh_primary', 'plc_pittsburgh', 'src_wikimedia_commons',
   'Ascending_the_Duquesne_Incline.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Ascending_the_Duquesne_Incline.jpg/500px-Ascending_the_Duquesne_Incline.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Ascending_the_Duquesne_Incline.jpg/500px-Ascending_the_Duquesne_Incline.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Pittsburgh',
   'Pittsburgh', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_pittsburgh', 'media', 'media-photo-pittsburgh', 'Pittsburgh (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_pittsburgh', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Ascending_the_Duquesne_Incline.jpg/500px-Ascending_the_Duquesne_Incline.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Ascending_the_Duquesne_Incline.jpg/500px-Ascending_the_Duquesne_Incline.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_pittsburgh', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_pittsburgh', 'ent_media_pittsburgh', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_cincinnati_primary', 'plc_cincinnati', 'src_wikimedia_commons',
   'Downtown_Cincinnati_viewed_from_Devou_Park_(cropped).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Downtown_Cincinnati_viewed_from_Devou_Park_%28cropped%29.jpg/500px-Downtown_Cincinnati_viewed_from_Devou_Park_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Downtown_Cincinnati_viewed_from_Devou_Park_%28cropped%29.jpg/500px-Downtown_Cincinnati_viewed_from_Devou_Park_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Cincinnati',
   'Cincinnati', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_cincinnati', 'media', 'media-photo-cincinnati', 'Cincinnati (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_cincinnati', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Downtown_Cincinnati_viewed_from_Devou_Park_%28cropped%29.jpg/500px-Downtown_Cincinnati_viewed_from_Devou_Park_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Downtown_Cincinnati_viewed_from_Devou_Park_%28cropped%29.jpg/500px-Downtown_Cincinnati_viewed_from_Devou_Park_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_cincinnati', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_cincinnati', 'ent_media_cincinnati', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_minneapolis_primary', 'plc_minneapolis', 'src_wikimedia_commons',
   'Minneapolis_Skyline_looking_south.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Minneapolis_Skyline_looking_south.jpg/500px-Minneapolis_Skyline_looking_south.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Minneapolis_Skyline_looking_south.jpg/500px-Minneapolis_Skyline_looking_south.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Minneapolis',
   'Minneapolis', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_minneapolis', 'media', 'media-photo-minneapolis', 'Minneapolis (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_minneapolis', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Minneapolis_Skyline_looking_south.jpg/500px-Minneapolis_Skyline_looking_south.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Minneapolis_Skyline_looking_south.jpg/500px-Minneapolis_Skyline_looking_south.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_minneapolis', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_minneapolis', 'ent_media_minneapolis', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_kansas-city_primary', 'plc_kansas-city', 'src_wikimedia_commons',
   'Downtown_-_panoramio_(15).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Kansas_City_-_Downtown_-_panoramio_%2815%29.jpg/500px-Kansas_City_-_Downtown_-_panoramio_%2815%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Kansas_City_-_Downtown_-_panoramio_%2815%29.jpg/500px-Kansas_City_-_Downtown_-_panoramio_%2815%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Kansas City',
   'Kansas City', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_kansas-city', 'media', 'media-photo-kansas-city', 'Kansas City (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_kansas-city', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Kansas_City_-_Downtown_-_panoramio_%2815%29.jpg/500px-Kansas_City_-_Downtown_-_panoramio_%2815%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Kansas_City_-_Downtown_-_panoramio_%2815%29.jpg/500px-Kansas_City_-_Downtown_-_panoramio_%2815%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_kansas-city', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_kansas-city', 'ent_media_kansas-city', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_indianapolis_primary', 'plc_indianapolis', 'src_wikimedia_commons',
   'Indianapolis-1872529_1920_(cropped).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Indianapolis-1872529_1920_%28cropped%29.jpg/500px-Indianapolis-1872529_1920_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Indianapolis-1872529_1920_%28cropped%29.jpg/500px-Indianapolis-1872529_1920_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Indianapolis',
   'Indianapolis', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_indianapolis', 'media', 'media-photo-indianapolis', 'Indianapolis (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_indianapolis', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Indianapolis-1872529_1920_%28cropped%29.jpg/500px-Indianapolis-1872529_1920_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Indianapolis-1872529_1920_%28cropped%29.jpg/500px-Indianapolis-1872529_1920_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_indianapolis', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_indianapolis', 'ent_media_indianapolis', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_raleigh_primary', 'plc_raleigh', 'src_wikimedia_commons',
   'Raleigh_Skyline.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Raleigh_Skyline.jpg/500px-Raleigh_Skyline.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Raleigh_Skyline.jpg/500px-Raleigh_Skyline.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Raleigh',
   'Raleigh', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_raleigh', 'media', 'media-photo-raleigh', 'Raleigh (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_raleigh', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Raleigh_Skyline.jpg/500px-Raleigh_Skyline.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Raleigh_Skyline.jpg/500px-Raleigh_Skyline.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_raleigh', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_raleigh', 'ent_media_raleigh', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_milwaukee_primary', 'plc_milwaukee', 'src_wikimedia_commons',
   'Milwaukee_Skyline_w_New_NW_Mutual_Building_2025_by_Isaac_Rowlett.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Milwaukee_Skyline_w_New_NW_Mutual_Building_2025_by_Isaac_Rowlett.jpg/500px-Milwaukee_Skyline_w_New_NW_Mutual_Building_2025_by_Isaac_Rowlett.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Milwaukee_Skyline_w_New_NW_Mutual_Building_2025_by_Isaac_Rowlett.jpg/500px-Milwaukee_Skyline_w_New_NW_Mutual_Building_2025_by_Isaac_Rowlett.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Milwaukee',
   'Milwaukee', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_milwaukee', 'media', 'media-photo-milwaukee', 'Milwaukee (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_milwaukee', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Milwaukee_Skyline_w_New_NW_Mutual_Building_2025_by_Isaac_Rowlett.jpg/500px-Milwaukee_Skyline_w_New_NW_Mutual_Building_2025_by_Isaac_Rowlett.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Milwaukee_Skyline_w_New_NW_Mutual_Building_2025_by_Isaac_Rowlett.jpg/500px-Milwaukee_Skyline_w_New_NW_Mutual_Building_2025_by_Isaac_Rowlett.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_milwaukee', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_milwaukee', 'ent_media_milwaukee', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_salt-lake-city_primary', 'plc_salt-lake-city', 'src_wikimedia_commons',
   'SLC_Skyline_2024.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/SLC_Skyline_2024.jpg/500px-SLC_Skyline_2024.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/SLC_Skyline_2024.jpg/500px-SLC_Skyline_2024.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Salt Lake City',
   'Salt Lake City', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_salt-lake-city', 'media', 'media-photo-salt-lake-city', 'Salt Lake City (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_salt-lake-city', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/SLC_Skyline_2024.jpg/500px-SLC_Skyline_2024.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/SLC_Skyline_2024.jpg/500px-SLC_Skyline_2024.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_salt-lake-city', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_salt-lake-city', 'ent_media_salt-lake-city', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_birmingham_primary', 'plc_birmingham', 'src_wikimedia_commons',
   'Birmingham_Skyline_from_the_West.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Birmingham_Skyline_from_the_West.jpg/500px-Birmingham_Skyline_from_the_West.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Birmingham_Skyline_from_the_West.jpg/500px-Birmingham_Skyline_from_the_West.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Birmingham',
   'Birmingham', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_birmingham', 'media', 'media-photo-birmingham', 'Birmingham (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_birmingham', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Birmingham_Skyline_from_the_West.jpg/500px-Birmingham_Skyline_from_the_West.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Birmingham_Skyline_from_the_West.jpg/500px-Birmingham_Skyline_from_the_West.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_birmingham', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_birmingham', 'ent_media_birmingham', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_baton-rouge_primary', 'plc_baton-rouge', 'src_wikimedia_commons',
   'Downtown_Baton_Rouge,_Louisiana_from_Tiger_Stadium_(LSU).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Downtown_Baton_Rouge%2C_Louisiana_from_Tiger_Stadium_%28LSU%29.jpg/500px-Downtown_Baton_Rouge%2C_Louisiana_from_Tiger_Stadium_%28LSU%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Downtown_Baton_Rouge%2C_Louisiana_from_Tiger_Stadium_%28LSU%29.jpg/500px-Downtown_Baton_Rouge%2C_Louisiana_from_Tiger_Stadium_%28LSU%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Baton Rouge',
   'Baton Rouge', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_baton-rouge', 'media', 'media-photo-baton-rouge', 'Baton Rouge (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_baton-rouge', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Downtown_Baton_Rouge%2C_Louisiana_from_Tiger_Stadium_%28LSU%29.jpg/500px-Downtown_Baton_Rouge%2C_Louisiana_from_Tiger_Stadium_%28LSU%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Downtown_Baton_Rouge%2C_Louisiana_from_Tiger_Stadium_%28LSU%29.jpg/500px-Downtown_Baton_Rouge%2C_Louisiana_from_Tiger_Stadium_%28LSU%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_baton-rouge', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_baton-rouge', 'ent_media_baton-rouge', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_anchorage_primary', 'plc_anchorage', 'src_wikimedia_commons',
   'USS_Anchorage_in_Anchorage,_Alaska.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/USS_Anchorage_in_Anchorage%2C_Alaska.jpg/500px-USS_Anchorage_in_Anchorage%2C_Alaska.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/USS_Anchorage_in_Anchorage%2C_Alaska.jpg/500px-USS_Anchorage_in_Anchorage%2C_Alaska.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Anchorage',
   'Anchorage', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_anchorage', 'media', 'media-photo-anchorage', 'Anchorage (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_anchorage', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/USS_Anchorage_in_Anchorage%2C_Alaska.jpg/500px-USS_Anchorage_in_Anchorage%2C_Alaska.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/USS_Anchorage_in_Anchorage%2C_Alaska.jpg/500px-USS_Anchorage_in_Anchorage%2C_Alaska.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_anchorage', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_anchorage', 'ent_media_anchorage', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_honolulu_primary', 'plc_honolulu', 'src_wikimedia_commons',
   '2022_Views_from_Diamond_Head_02.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/2022_Views_from_Diamond_Head_02.jpg/500px-2022_Views_from_Diamond_Head_02.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/2022_Views_from_Diamond_Head_02.jpg/500px-2022_Views_from_Diamond_Head_02.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Honolulu',
   'Honolulu', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_honolulu', 'media', 'media-photo-honolulu', 'Honolulu (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_honolulu', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/2022_Views_from_Diamond_Head_02.jpg/500px-2022_Views_from_Diamond_Head_02.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/2022_Views_from_Diamond_Head_02.jpg/500px-2022_Views_from_Diamond_Head_02.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_honolulu', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_honolulu', 'ent_media_honolulu', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_tucson_primary', 'plc_tucson', 'src_wikimedia_commons',
   'View_of_Tucson_from_Sentinel_Peak_2.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/View_of_Tucson_from_Sentinel_Peak_2.jpg/500px-View_of_Tucson_from_Sentinel_Peak_2.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/View_of_Tucson_from_Sentinel_Peak_2.jpg/500px-View_of_Tucson_from_Sentinel_Peak_2.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Tucson',
   'Tucson', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_tucson', 'media', 'media-photo-tucson', 'Tucson (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_tucson', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/View_of_Tucson_from_Sentinel_Peak_2.jpg/500px-View_of_Tucson_from_Sentinel_Peak_2.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/View_of_Tucson_from_Sentinel_Peak_2.jpg/500px-View_of_Tucson_from_Sentinel_Peak_2.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_tucson', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_tucson', 'ent_media_tucson', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_albuquerque_primary', 'plc_albuquerque', 'src_wikimedia_commons',
   'Albuquerque,_New_Mexico_skyline.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Albuquerque%2C_New_Mexico_skyline.jpg/500px-Albuquerque%2C_New_Mexico_skyline.jpg', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Albuquerque%2C_New_Mexico_skyline.jpg/500px-Albuquerque%2C_New_Mexico_skyline.jpg',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Albuquerque',
   'Albuquerque', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_albuquerque', 'media', 'media-photo-albuquerque', 'Albuquerque (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_albuquerque', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Albuquerque%2C_New_Mexico_skyline.jpg/500px-Albuquerque%2C_New_Mexico_skyline.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Albuquerque%2C_New_Mexico_skyline.jpg/500px-Albuquerque%2C_New_Mexico_skyline.jpg',
   'plc_albuquerque', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_albuquerque', 'ent_media_albuquerque', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_omaha_primary', 'plc_omaha', 'src_wikimedia_commons',
   'City_of_Omaha,_Nebraska_Skyline_on_the_Missouri_River_(30899969517).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/City_of_Omaha%2C_Nebraska_Skyline_on_the_Missouri_River_%2830899969517%29.jpg/500px-City_of_Omaha%2C_Nebraska_Skyline_on_the_Missouri_River_%2830899969517%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/City_of_Omaha%2C_Nebraska_Skyline_on_the_Missouri_River_%2830899969517%29.jpg/500px-City_of_Omaha%2C_Nebraska_Skyline_on_the_Missouri_River_%2830899969517%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Omaha',
   'Omaha', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_omaha', 'media', 'media-photo-omaha', 'Omaha (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_omaha', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/City_of_Omaha%2C_Nebraska_Skyline_on_the_Missouri_River_%2830899969517%29.jpg/500px-City_of_Omaha%2C_Nebraska_Skyline_on_the_Missouri_River_%2830899969517%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/City_of_Omaha%2C_Nebraska_Skyline_on_the_Missouri_River_%2830899969517%29.jpg/500px-City_of_Omaha%2C_Nebraska_Skyline_on_the_Missouri_River_%2830899969517%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_omaha', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_omaha', 'ent_media_omaha', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_tulsa_primary', 'plc_tulsa', 'src_wikimedia_commons',
   'Tulsa_skyline_aerial,_April_2023.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Tulsa_skyline_aerial%2C_April_2023.jpg/500px-Tulsa_skyline_aerial%2C_April_2023.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Tulsa_skyline_aerial%2C_April_2023.jpg/500px-Tulsa_skyline_aerial%2C_April_2023.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Tulsa',
   'Tulsa', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_tulsa', 'media', 'media-photo-tulsa', 'Tulsa (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_tulsa', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Tulsa_skyline_aerial%2C_April_2023.jpg/500px-Tulsa_skyline_aerial%2C_April_2023.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Tulsa_skyline_aerial%2C_April_2023.jpg/500px-Tulsa_skyline_aerial%2C_April_2023.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_tulsa', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_tulsa', 'ent_media_tulsa', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_st-louis_primary', 'plc_st-louis', 'src_wikimedia_commons',
   'Runner_Fountain_and_Old_Courthouse_and_Arch_(5618845531).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Runner_Fountain_and_Old_Courthouse_and_Arch_%285618845531%29.jpg/500px-Runner_Fountain_and_Old_Courthouse_and_Arch_%285618845531%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Runner_Fountain_and_Old_Courthouse_and_Arch_%285618845531%29.jpg/500px-Runner_Fountain_and_Old_Courthouse_and_Arch_%285618845531%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'St. Louis',
   'St. Louis', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_st-louis', 'media', 'media-photo-st-louis', 'St. Louis (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_st-louis', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Runner_Fountain_and_Old_Courthouse_and_Arch_%285618845531%29.jpg/500px-Runner_Fountain_and_Old_Courthouse_and_Arch_%285618845531%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Runner_Fountain_and_Old_Courthouse_and_Arch_%285618845531%29.jpg/500px-Runner_Fountain_and_Old_Courthouse_and_Arch_%285618845531%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_st-louis', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_st-louis', 'ent_media_st-louis', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_baltimore_primary', 'plc_baltimore', 'src_wikimedia_commons',
   'Fell''s_Point_Aerial_2022.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Fell%27s_Point_Aerial_2022.jpg/500px-Fell%27s_Point_Aerial_2022.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Fell%27s_Point_Aerial_2022.jpg/500px-Fell%27s_Point_Aerial_2022.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Baltimore',
   'Baltimore', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_baltimore', 'media', 'media-photo-baltimore', 'Baltimore (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_baltimore', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Fell%27s_Point_Aerial_2022.jpg/500px-Fell%27s_Point_Aerial_2022.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Fell%27s_Point_Aerial_2022.jpg/500px-Fell%27s_Point_Aerial_2022.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_baltimore', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_baltimore', 'ent_media_baltimore', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_hartford_primary', 'plc_hartford', 'src_wikimedia_commons',
   'Hartford,_CT_skyline_(cropped).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Hartford%2C_CT_skyline_%28cropped%29.jpg/500px-Hartford%2C_CT_skyline_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Hartford%2C_CT_skyline_%28cropped%29.jpg/500px-Hartford%2C_CT_skyline_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Hartford',
   'Hartford', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_hartford', 'media', 'media-photo-hartford', 'Hartford (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_hartford', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Hartford%2C_CT_skyline_%28cropped%29.jpg/500px-Hartford%2C_CT_skyline_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Hartford%2C_CT_skyline_%28cropped%29.jpg/500px-Hartford%2C_CT_skyline_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_hartford', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_hartford', 'ent_media_hartford', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_statue-of-liberty_primary', 'plc_statue-of-liberty', 'src_wikimedia_commons',
   'Front_view_of_Statue_of_Liberty_(cropped).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Front_view_of_Statue_of_Liberty_%28cropped%29.jpg/500px-Front_view_of_Statue_of_Liberty_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Front_view_of_Statue_of_Liberty_%28cropped%29.jpg/500px-Front_view_of_Statue_of_Liberty_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Statue of Liberty',
   'Statue of Liberty', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_statue-of-liberty', 'media', 'media-photo-statue-of-liberty', 'Statue of Liberty (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_statue-of-liberty', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Front_view_of_Statue_of_Liberty_%28cropped%29.jpg/500px-Front_view_of_Statue_of_Liberty_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Front_view_of_Statue_of_Liberty_%28cropped%29.jpg/500px-Front_view_of_Statue_of_Liberty_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_statue-of-liberty', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_statue-of-liberty', 'ent_media_statue-of-liberty', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_mount-rushmore_primary', 'plc_mount-rushmore', 'src_wikimedia_commons',
   'Mount_Rushmore_detail_view_(100MP).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Mount_Rushmore_detail_view_%28100MP%29.jpg/500px-Mount_Rushmore_detail_view_%28100MP%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Mount_Rushmore_detail_view_%28100MP%29.jpg/500px-Mount_Rushmore_detail_view_%28100MP%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Mount Rushmore',
   'Mount Rushmore', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_mount-rushmore', 'media', 'media-photo-mount-rushmore', 'Mount Rushmore (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_mount-rushmore', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Mount_Rushmore_detail_view_%28100MP%29.jpg/500px-Mount_Rushmore_detail_view_%28100MP%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Mount_Rushmore_detail_view_%28100MP%29.jpg/500px-Mount_Rushmore_detail_view_%28100MP%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_mount-rushmore', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_mount-rushmore', 'ent_media_mount-rushmore', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_golden-gate-bridge_primary', 'plc_golden-gate-bridge', 'src_wikimedia_commons',
   'Golden_Gate_Bridge_as_seen_from_Battery_East.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Golden_Gate_Bridge_as_seen_from_Battery_East.jpg/500px-Golden_Gate_Bridge_as_seen_from_Battery_East.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Golden_Gate_Bridge_as_seen_from_Battery_East.jpg/500px-Golden_Gate_Bridge_as_seen_from_Battery_East.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Golden Gate Bridge',
   'Golden Gate Bridge', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_golden-gate-bridge', 'media', 'media-photo-golden-gate-bridge', 'Golden Gate Bridge (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_golden-gate-bridge', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Golden_Gate_Bridge_as_seen_from_Battery_East.jpg/500px-Golden_Gate_Bridge_as_seen_from_Battery_East.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Golden_Gate_Bridge_as_seen_from_Battery_East.jpg/500px-Golden_Gate_Bridge_as_seen_from_Battery_East.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_golden-gate-bridge', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_golden-gate-bridge', 'ent_media_golden-gate-bridge', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_white-house_primary', 'plc_white-house', 'src_wikimedia_commons',
   'White_House_north_and_south_sides.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/White_House_north_and_south_sides.jpg/500px-White_House_north_and_south_sides.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/White_House_north_and_south_sides.jpg/500px-White_House_north_and_south_sides.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'White House',
   'White House', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_white-house', 'media', 'media-photo-white-house', 'White House (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_white-house', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/White_House_north_and_south_sides.jpg/500px-White_House_north_and_south_sides.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/White_House_north_and_south_sides.jpg/500px-White_House_north_and_south_sides.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_white-house', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_white-house', 'ent_media_white-house', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_united-states-capitol_primary', 'plc_united-states-capitol', 'src_wikimedia_commons',
   'Capitol_Building_Full_View.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Capitol_Building_Full_View.jpg/500px-Capitol_Building_Full_View.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Capitol_Building_Full_View.jpg/500px-Capitol_Building_Full_View.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'United States Capitol',
   'United States Capitol', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_united-states-capitol', 'media', 'media-photo-united-states-capitol', 'United States Capitol (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_united-states-capitol', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Capitol_Building_Full_View.jpg/500px-Capitol_Building_Full_View.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Capitol_Building_Full_View.jpg/500px-Capitol_Building_Full_View.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_united-states-capitol', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_united-states-capitol', 'ent_media_united-states-capitol', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_lincoln-memorial_primary', 'plc_lincoln-memorial', 'src_wikimedia_commons',
   'Lincoln_Memorial_east_side.JPG',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Lincoln_Memorial_east_side.JPG/500px-Lincoln_Memorial_east_side.JPG?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Lincoln_Memorial_east_side.JPG/500px-Lincoln_Memorial_east_side.JPG?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Lincoln Memorial',
   'Lincoln Memorial', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_lincoln-memorial', 'media', 'media-photo-lincoln-memorial', 'Lincoln Memorial (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_lincoln-memorial', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Lincoln_Memorial_east_side.JPG/500px-Lincoln_Memorial_east_side.JPG?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Lincoln_Memorial_east_side.JPG/500px-Lincoln_Memorial_east_side.JPG?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_lincoln-memorial', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_lincoln-memorial', 'ent_media_lincoln-memorial', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_washington-monument_primary', 'plc_washington-monument', 'src_wikimedia_commons',
   'Washington_Monument_2022.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Washington_Monument_2022.jpg/500px-Washington_Monument_2022.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Washington_Monument_2022.jpg/500px-Washington_Monument_2022.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Washington Monument',
   'Washington Monument', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_washington-monument', 'media', 'media-photo-washington-monument', 'Washington Monument (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_washington-monument', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Washington_Monument_2022.jpg/500px-Washington_Monument_2022.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Washington_Monument_2022.jpg/500px-Washington_Monument_2022.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_washington-monument', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_washington-monument', 'ent_media_washington-monument', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_empire-state-building_primary', 'plc_empire-state-building', 'src_wikimedia_commons',
   'Empire_State_Building_(aerial_view).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Empire_State_Building_%28aerial_view%29.jpg/500px-Empire_State_Building_%28aerial_view%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Empire_State_Building_%28aerial_view%29.jpg/500px-Empire_State_Building_%28aerial_view%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Empire State Building',
   'Empire State Building', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_empire-state-building', 'media', 'media-photo-empire-state-building', 'Empire State Building (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_empire-state-building', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Empire_State_Building_%28aerial_view%29.jpg/500px-Empire_State_Building_%28aerial_view%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Empire_State_Building_%28aerial_view%29.jpg/500px-Empire_State_Building_%28aerial_view%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_empire-state-building', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_empire-state-building', 'ent_media_empire-state-building', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_hollywood-sign_primary', 'plc_hollywood-sign', 'src_wikimedia_commons',
   'Hollywood_sign_(8485145044).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Hollywood_sign_%288485145044%29.jpg/500px-Hollywood_sign_%288485145044%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Hollywood_sign_%288485145044%29.jpg/500px-Hollywood_sign_%288485145044%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Hollywood Sign',
   'Hollywood Sign', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_hollywood-sign', 'media', 'media-photo-hollywood-sign', 'Hollywood Sign (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_hollywood-sign', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Hollywood_sign_%288485145044%29.jpg/500px-Hollywood_sign_%288485145044%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Hollywood_sign_%288485145044%29.jpg/500px-Hollywood_sign_%288485145044%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_hollywood-sign', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_hollywood-sign', 'ent_media_hollywood-sign', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_golden-gate-park_primary', 'plc_golden-gate-park', 'src_wikimedia_commons',
   'California-06241_-_In_front_of_museum_(20449897948).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/California-06241_-_In_front_of_museum_%2820449897948%29.jpg/500px-California-06241_-_In_front_of_museum_%2820449897948%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/California-06241_-_In_front_of_museum_%2820449897948%29.jpg/500px-California-06241_-_In_front_of_museum_%2820449897948%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Golden Gate Park',
   'Golden Gate Park', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_golden-gate-park', 'media', 'media-photo-golden-gate-park', 'Golden Gate Park (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_golden-gate-park', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/California-06241_-_In_front_of_museum_%2820449897948%29.jpg/500px-California-06241_-_In_front_of_museum_%2820449897948%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/California-06241_-_In_front_of_museum_%2820449897948%29.jpg/500px-California-06241_-_In_front_of_museum_%2820449897948%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_golden-gate-park', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_golden-gate-park', 'ent_media_golden-gate-park', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_alcatraz-island_primary', 'plc_alcatraz-island', 'src_wikimedia_commons',
   'Alcatraz_2021.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Alcatraz_2021.jpg/500px-Alcatraz_2021.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Alcatraz_2021.jpg/500px-Alcatraz_2021.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Alcatraz Island',
   'Alcatraz Island', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_alcatraz-island', 'media', 'media-photo-alcatraz-island', 'Alcatraz Island (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_alcatraz-island', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Alcatraz_2021.jpg/500px-Alcatraz_2021.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Alcatraz_2021.jpg/500px-Alcatraz_2021.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_alcatraz-island', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_alcatraz-island', 'ent_media_alcatraz-island', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_grand-canyon_primary', 'plc_grand-canyon', 'src_wikimedia_commons',
   'Canyon_River_Tree_(165872763).jpeg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Canyon_River_Tree_%28165872763%29.jpeg/500px-Canyon_River_Tree_%28165872763%29.jpeg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Canyon_River_Tree_%28165872763%29.jpeg/500px-Canyon_River_Tree_%28165872763%29.jpeg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Grand Canyon',
   'Grand Canyon', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_grand-canyon', 'media', 'media-photo-grand-canyon', 'Grand Canyon (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_grand-canyon', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Canyon_River_Tree_%28165872763%29.jpeg/500px-Canyon_River_Tree_%28165872763%29.jpeg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Canyon_River_Tree_%28165872763%29.jpeg/500px-Canyon_River_Tree_%28165872763%29.jpeg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_grand-canyon', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_grand-canyon', 'ent_media_grand-canyon', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_yosemite-national-park_primary', 'plc_yosemite-national-park', 'src_wikimedia_commons',
   'Half_Dome_with_Eastern_Yosemite_Valley_(50MP).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Half_Dome_with_Eastern_Yosemite_Valley_%2850MP%29.jpg/500px-Half_Dome_with_Eastern_Yosemite_Valley_%2850MP%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Half_Dome_with_Eastern_Yosemite_Valley_%2850MP%29.jpg/500px-Half_Dome_with_Eastern_Yosemite_Valley_%2850MP%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Yosemite National Park',
   'Yosemite National Park', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_yosemite-national-park', 'media', 'media-photo-yosemite-national-park', 'Yosemite National Park (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_yosemite-national-park', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Half_Dome_with_Eastern_Yosemite_Valley_%2850MP%29.jpg/500px-Half_Dome_with_Eastern_Yosemite_Valley_%2850MP%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Half_Dome_with_Eastern_Yosemite_Valley_%2850MP%29.jpg/500px-Half_Dome_with_Eastern_Yosemite_Valley_%2850MP%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_yosemite-national-park', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_yosemite-national-park', 'ent_media_yosemite-national-park', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_mount-rushmore-national-memorial_primary', 'plc_mount-rushmore-national-memorial', 'src_wikimedia_commons',
   'Mount_Rushmore_detail_view_(100MP).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Mount_Rushmore_detail_view_%28100MP%29.jpg/500px-Mount_Rushmore_detail_view_%28100MP%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Mount_Rushmore_detail_view_%28100MP%29.jpg/500px-Mount_Rushmore_detail_view_%28100MP%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Mount Rushmore National Memorial',
   'Mount Rushmore National Memorial', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_mount-rushmore-national-memorial', 'media', 'media-photo-mount-rushmore-national-memorial', 'Mount Rushmore National Memorial (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_mount-rushmore-national-memorial', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Mount_Rushmore_detail_view_%28100MP%29.jpg/500px-Mount_Rushmore_detail_view_%28100MP%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Mount_Rushmore_detail_view_%28100MP%29.jpg/500px-Mount_Rushmore_detail_view_%28100MP%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_mount-rushmore-national-memorial', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_mount-rushmore-national-memorial', 'ent_media_mount-rushmore-national-memorial', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_independence-hall_primary', 'plc_independence-hall', 'src_wikimedia_commons',
   'Independence_Hall.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Independence_Hall.jpg/500px-Independence_Hall.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Independence_Hall.jpg/500px-Independence_Hall.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Independence Hall',
   'Independence Hall', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_independence-hall', 'media', 'media-photo-independence-hall', 'Independence Hall (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_independence-hall', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Independence_Hall.jpg/500px-Independence_Hall.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Independence_Hall.jpg/500px-Independence_Hall.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_independence-hall', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_independence-hall', 'ent_media_independence-hall', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_liberty-bell_primary', 'plc_liberty-bell', 'src_wikimedia_commons',
   'Liberty_Bell_2017a.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Liberty_Bell_2017a.jpg/500px-Liberty_Bell_2017a.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Liberty_Bell_2017a.jpg/500px-Liberty_Bell_2017a.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Liberty Bell',
   'Liberty Bell', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_liberty-bell', 'media', 'media-photo-liberty-bell', 'Liberty Bell (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_liberty-bell', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Liberty_Bell_2017a.jpg/500px-Liberty_Bell_2017a.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Liberty_Bell_2017a.jpg/500px-Liberty_Bell_2017a.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_liberty-bell', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_liberty-bell', 'ent_media_liberty-bell', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_alamo_primary', 'plc_alamo', 'src_wikimedia_commons',
   '1854_Alamo.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/1854_Alamo.jpg/500px-1854_Alamo.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/1854_Alamo.jpg/500px-1854_Alamo.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Alamo',
   'Alamo', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_alamo', 'media', 'media-photo-alamo', 'Alamo (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_alamo', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/1854_Alamo.jpg/500px-1854_Alamo.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/1854_Alamo.jpg/500px-1854_Alamo.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_alamo', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_alamo', 'ent_media_alamo', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_pearl-harbor_primary', 'plc_pearl-harbor', 'src_wikimedia_commons',
   'Ford_Island_aerial_photo_RIMPAC_1986.JPEG',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Ford_Island_aerial_photo_RIMPAC_1986.JPEG/500px-Ford_Island_aerial_photo_RIMPAC_1986.JPEG?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Ford_Island_aerial_photo_RIMPAC_1986.JPEG/500px-Ford_Island_aerial_photo_RIMPAC_1986.JPEG?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Pearl Harbor',
   'Pearl Harbor', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_pearl-harbor', 'media', 'media-photo-pearl-harbor', 'Pearl Harbor (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_pearl-harbor', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Ford_Island_aerial_photo_RIMPAC_1986.JPEG/500px-Ford_Island_aerial_photo_RIMPAC_1986.JPEG?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Ford_Island_aerial_photo_RIMPAC_1986.JPEG/500px-Ford_Island_aerial_photo_RIMPAC_1986.JPEG?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_pearl-harbor', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_pearl-harbor', 'ent_media_pearl-harbor', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_graceland_primary', 'plc_graceland', 'src_wikimedia_commons',
   'USA_Tour_2019_P095_Graceland.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/USA_Tour_2019_P095_Graceland.jpg/500px-USA_Tour_2019_P095_Graceland.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/USA_Tour_2019_P095_Graceland.jpg/500px-USA_Tour_2019_P095_Graceland.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Graceland',
   'Graceland', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_graceland', 'media', 'media-photo-graceland', 'Graceland (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_graceland', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/USA_Tour_2019_P095_Graceland.jpg/500px-USA_Tour_2019_P095_Graceland.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/USA_Tour_2019_P095_Graceland.jpg/500px-USA_Tour_2019_P095_Graceland.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_graceland', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_graceland', 'ent_media_graceland', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_mount-vernon_primary', 'plc_mount-vernon', 'src_wikimedia_commons',
   'West_Face_of_Mansion,_Mount_Vernon,_Near_Alexandria,_Virginia_(2731038734).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/West_Face_of_Mansion%2C_Mount_Vernon%2C_Near_Alexandria%2C_Virginia_%282731038734%29.jpg/500px-West_Face_of_Mansion%2C_Mount_Vernon%2C_Near_Alexandria%2C_Virginia_%282731038734%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/West_Face_of_Mansion%2C_Mount_Vernon%2C_Near_Alexandria%2C_Virginia_%282731038734%29.jpg/500px-West_Face_of_Mansion%2C_Mount_Vernon%2C_Near_Alexandria%2C_Virginia_%282731038734%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Mount Vernon',
   'Mount Vernon', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_mount-vernon', 'media', 'media-photo-mount-vernon', 'Mount Vernon (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_mount-vernon', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/West_Face_of_Mansion%2C_Mount_Vernon%2C_Near_Alexandria%2C_Virginia_%282731038734%29.jpg/500px-West_Face_of_Mansion%2C_Mount_Vernon%2C_Near_Alexandria%2C_Virginia_%282731038734%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/West_Face_of_Mansion%2C_Mount_Vernon%2C_Near_Alexandria%2C_Virginia_%282731038734%29.jpg/500px-West_Face_of_Mansion%2C_Mount_Vernon%2C_Near_Alexandria%2C_Virginia_%282731038734%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_mount-vernon', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_mount-vernon', 'ent_media_mount-vernon', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_independence-national-historical-park_primary', 'plc_independence-national-historical-park', 'src_wikimedia_commons',
   'Liberty_Bell,_2016.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Liberty_Bell%2C_2016.jpg/500px-Liberty_Bell%2C_2016.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Liberty_Bell%2C_2016.jpg/500px-Liberty_Bell%2C_2016.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Independence National Historical Park',
   'Independence National Historical Park', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_independence-national-historical-park', 'media', 'media-photo-independence-national-historical-park', 'Independence National Historical Park (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_independence-national-historical-park', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Liberty_Bell%2C_2016.jpg/500px-Liberty_Bell%2C_2016.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Liberty_Bell%2C_2016.jpg/500px-Liberty_Bell%2C_2016.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_independence-national-historical-park', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_independence-national-historical-park', 'ent_media_independence-national-historical-park', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_fenway-park_primary', 'plc_fenway-park', 'src_wikimedia_commons',
   '131023-F-PR861-033_Hanscom_participates_in_World_Series_pregame_events.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/131023-F-PR861-033_Hanscom_participates_in_World_Series_pregame_events.jpg/500px-131023-F-PR861-033_Hanscom_participates_in_World_Series_pregame_events.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/131023-F-PR861-033_Hanscom_participates_in_World_Series_pregame_events.jpg/500px-131023-F-PR861-033_Hanscom_participates_in_World_Series_pregame_events.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Fenway Park',
   'Fenway Park', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_fenway-park', 'media', 'media-photo-fenway-park', 'Fenway Park (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_fenway-park', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/131023-F-PR861-033_Hanscom_participates_in_World_Series_pregame_events.jpg/500px-131023-F-PR861-033_Hanscom_participates_in_World_Series_pregame_events.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/131023-F-PR861-033_Hanscom_participates_in_World_Series_pregame_events.jpg/500px-131023-F-PR861-033_Hanscom_participates_in_World_Series_pregame_events.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_fenway-park', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_fenway-park', 'ent_media_fenway-park', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_madison-square-garden_primary', 'plc_madison-square-garden', 'src_wikimedia_commons',
   'Madison_Square_Garden_(MSG)_-_Full_(48124330357).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Madison_Square_Garden_%28MSG%29_-_Full_%2848124330357%29.jpg/500px-Madison_Square_Garden_%28MSG%29_-_Full_%2848124330357%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Madison_Square_Garden_%28MSG%29_-_Full_%2848124330357%29.jpg/500px-Madison_Square_Garden_%28MSG%29_-_Full_%2848124330357%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Madison Square Garden',
   'Madison Square Garden', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_madison-square-garden', 'media', 'media-photo-madison-square-garden', 'Madison Square Garden (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_madison-square-garden', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Madison_Square_Garden_%28MSG%29_-_Full_%2848124330357%29.jpg/500px-Madison_Square_Garden_%28MSG%29_-_Full_%2848124330357%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Madison_Square_Garden_%28MSG%29_-_Full_%2848124330357%29.jpg/500px-Madison_Square_Garden_%28MSG%29_-_Full_%2848124330357%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_madison-square-garden', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_madison-square-garden', 'ent_media_madison-square-garden', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_times-square_primary', 'plc_times-square', 'src_wikimedia_commons',
   'New_york_times_square-terabass.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/New_york_times_square-terabass.jpg/500px-New_york_times_square-terabass.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/New_york_times_square-terabass.jpg/500px-New_york_times_square-terabass.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Times Square',
   'Times Square', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_times-square', 'media', 'media-photo-times-square', 'Times Square (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_times-square', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/New_york_times_square-terabass.jpg/500px-New_york_times_square-terabass.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/New_york_times_square-terabass.jpg/500px-New_york_times_square-terabass.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_times-square', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_times-square', 'ent_media_times-square', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_brooklyn-bridge_primary', 'plc_brooklyn-bridge', 'src_wikimedia_commons',
   'Brooklyn_Bridge_and_the_Lower_Manhattan_skyline_from_Pebble_Beach,_New_York.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Brooklyn_Bridge_and_the_Lower_Manhattan_skyline_from_Pebble_Beach%2C_New_York.jpg/500px-Brooklyn_Bridge_and_the_Lower_Manhattan_skyline_from_Pebble_Beach%2C_New_York.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Brooklyn_Bridge_and_the_Lower_Manhattan_skyline_from_Pebble_Beach%2C_New_York.jpg/500px-Brooklyn_Bridge_and_the_Lower_Manhattan_skyline_from_Pebble_Beach%2C_New_York.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Brooklyn Bridge',
   'Brooklyn Bridge', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_brooklyn-bridge', 'media', 'media-photo-brooklyn-bridge', 'Brooklyn Bridge (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_brooklyn-bridge', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Brooklyn_Bridge_and_the_Lower_Manhattan_skyline_from_Pebble_Beach%2C_New_York.jpg/500px-Brooklyn_Bridge_and_the_Lower_Manhattan_skyline_from_Pebble_Beach%2C_New_York.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Brooklyn_Bridge_and_the_Lower_Manhattan_skyline_from_Pebble_Beach%2C_New_York.jpg/500px-Brooklyn_Bridge_and_the_Lower_Manhattan_skyline_from_Pebble_Beach%2C_New_York.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_brooklyn-bridge', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_brooklyn-bridge', 'ent_media_brooklyn-bridge', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_wall-street_primary', 'plc_wall-street', 'src_wikimedia_commons',
   'Wall_Street_(55314253740).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Wall_Street_%2855314253740%29.jpg/500px-Wall_Street_%2855314253740%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Wall_Street_%2855314253740%29.jpg/500px-Wall_Street_%2855314253740%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Wall Street',
   'Wall Street', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_wall-street', 'media', 'media-photo-wall-street', 'Wall Street (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_wall-street', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Wall_Street_%2855314253740%29.jpg/500px-Wall_Street_%2855314253740%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Wall_Street_%2855314253740%29.jpg/500px-Wall_Street_%2855314253740%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_wall-street', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_wall-street', 'ent_media_wall-street', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_pentagon_primary', 'plc_pentagon', 'src_wikimedia_commons',
   '5-gon_cyclic_01.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/5-gon_cyclic_01.svg/250px-5-gon_cyclic_01.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/5-gon_cyclic_01.svg/250px-5-gon_cyclic_01.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Pentagon',
   'Pentagon', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_pentagon', 'media', 'media-photo-pentagon', 'Pentagon (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_pentagon', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/5-gon_cyclic_01.svg/250px-5-gon_cyclic_01.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/5-gon_cyclic_01.svg/250px-5-gon_cyclic_01.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_pentagon', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_pentagon', 'ent_media_pentagon', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_hoover-dam_primary', 'plc_hoover-dam', 'src_wikimedia_commons',
   '2017_Aerial_view_Hoover_Dam_4774.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/2017_Aerial_view_Hoover_Dam_4774.jpg/500px-2017_Aerial_view_Hoover_Dam_4774.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/2017_Aerial_view_Hoover_Dam_4774.jpg/500px-2017_Aerial_view_Hoover_Dam_4774.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Hoover Dam',
   'Hoover Dam', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_hoover-dam', 'media', 'media-photo-hoover-dam', 'Hoover Dam (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_hoover-dam', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/2017_Aerial_view_Hoover_Dam_4774.jpg/500px-2017_Aerial_view_Hoover_Dam_4774.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/2017_Aerial_view_Hoover_Dam_4774.jpg/500px-2017_Aerial_view_Hoover_Dam_4774.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_hoover-dam', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_hoover-dam', 'ent_media_hoover-dam', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_kennedy-space-center_primary', 'plc_kennedy-space-center', 'src_wikimedia_commons',
   'NASA_logo_(2023_colors).svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/NASA_logo_%282023_colors%29.svg/120px-NASA_logo_%282023_colors%29.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/NASA_logo_%282023_colors%29.svg/120px-NASA_logo_%282023_colors%29.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Kennedy Space Center',
   'Kennedy Space Center', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_kennedy-space-center', 'media', 'media-photo-kennedy-space-center', 'Kennedy Space Center (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_kennedy-space-center', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/NASA_logo_%282023_colors%29.svg/120px-NASA_logo_%282023_colors%29.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/NASA_logo_%282023_colors%29.svg/120px-NASA_logo_%282023_colors%29.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_kennedy-space-center', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_kennedy-space-center', 'ent_media_kennedy-space-center', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_johnson-space-center_primary', 'plc_johnson-space-center', 'src_wikimedia_commons',
   'NASA_logo_(2023_colors).svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/NASA_logo_%282023_colors%29.svg/120px-NASA_logo_%282023_colors%29.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/NASA_logo_%282023_colors%29.svg/120px-NASA_logo_%282023_colors%29.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Johnson Space Center',
   'Johnson Space Center', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_johnson-space-center', 'media', 'media-photo-johnson-space-center', 'Johnson Space Center (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_johnson-space-center', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/NASA_logo_%282023_colors%29.svg/120px-NASA_logo_%282023_colors%29.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/NASA_logo_%282023_colors%29.svg/120px-NASA_logo_%282023_colors%29.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_johnson-space-center', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_johnson-space-center', 'ent_media_johnson-space-center', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_smithsonian-institution_primary', 'plc_smithsonian-institution', 'src_wikimedia_commons',
   'Smithsonian_Building_Sunlight.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Smithsonian_Building_Sunlight.jpg/500px-Smithsonian_Building_Sunlight.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Smithsonian_Building_Sunlight.jpg/500px-Smithsonian_Building_Sunlight.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Smithsonian Institution',
   'Smithsonian Institution', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_smithsonian-institution', 'media', 'media-photo-smithsonian-institution', 'Smithsonian Institution (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_smithsonian-institution', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Smithsonian_Building_Sunlight.jpg/500px-Smithsonian_Building_Sunlight.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Smithsonian_Building_Sunlight.jpg/500px-Smithsonian_Building_Sunlight.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_smithsonian-institution', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_smithsonian-institution', 'ent_media_smithsonian-institution', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_getty-center_primary', 'plc_getty-center', 'src_wikimedia_commons',
   'Aerial_Getty_Museum.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Aerial_Getty_Museum.jpg/500px-Aerial_Getty_Museum.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Aerial_Getty_Museum.jpg/500px-Aerial_Getty_Museum.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Getty Center',
   'Getty Center', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_getty-center', 'media', 'media-photo-getty-center', 'Getty Center (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_getty-center', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Aerial_Getty_Museum.jpg/500px-Aerial_Getty_Museum.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Aerial_Getty_Museum.jpg/500px-Aerial_Getty_Museum.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_getty-center', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_getty-center', 'ent_media_getty-center', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_metropolitan-museum-of-art_primary', 'plc_metropolitan-museum-of-art', 'src_wikimedia_commons',
   'The_Metropolitan_Museum_of_Art_Logo.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/The_Metropolitan_Museum_of_Art_Logo.svg/500px-The_Metropolitan_Museum_of_Art_Logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/The_Metropolitan_Museum_of_Art_Logo.svg/500px-The_Metropolitan_Museum_of_Art_Logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Metropolitan Museum of Art',
   'Metropolitan Museum of Art', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_metropolitan-museum-of-art', 'media', 'media-photo-metropolitan-museum-of-art', 'Metropolitan Museum of Art (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_metropolitan-museum-of-art', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/The_Metropolitan_Museum_of_Art_Logo.svg/500px-The_Metropolitan_Museum_of_Art_Logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/The_Metropolitan_Museum_of_Art_Logo.svg/500px-The_Metropolitan_Museum_of_Art_Logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_metropolitan-museum-of-art', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_metropolitan-museum-of-art', 'ent_media_metropolitan-museum-of-art', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_rock-and-roll-hall-of-fame_primary', 'plc_rock-and-roll-hall-of-fame', 'src_wikimedia_commons',
   'Rock_and_Roll_Hall_of_Fame_-_Joy_of_Museums_1.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Rock_and_Roll_Hall_of_Fame_-_Joy_of_Museums_1.jpg/500px-Rock_and_Roll_Hall_of_Fame_-_Joy_of_Museums_1.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Rock_and_Roll_Hall_of_Fame_-_Joy_of_Museums_1.jpg/500px-Rock_and_Roll_Hall_of_Fame_-_Joy_of_Museums_1.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Rock and Roll Hall of Fame',
   'Rock and Roll Hall of Fame', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_rock-and-roll-hall-of-fame', 'media', 'media-photo-rock-and-roll-hall-of-fame', 'Rock and Roll Hall of Fame (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_rock-and-roll-hall-of-fame', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Rock_and_Roll_Hall_of_Fame_-_Joy_of_Museums_1.jpg/500px-Rock_and_Roll_Hall_of_Fame_-_Joy_of_Museums_1.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Rock_and_Roll_Hall_of_Fame_-_Joy_of_Museums_1.jpg/500px-Rock_and_Roll_Hall_of_Fame_-_Joy_of_Museums_1.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_rock-and-roll-hall-of-fame', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_rock-and-roll-hall-of-fame', 'ent_media_rock-and-roll-hall-of-fame', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_pro-football-hall-of-fame_primary', 'plc_pro-football-hall-of-fame', 'src_wikimedia_commons',
   'Pro_Football_Hall_of_Fame_logo.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Pro_Football_Hall_of_Fame_logo.svg/250px-Pro_Football_Hall_of_Fame_logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Pro_Football_Hall_of_Fame_logo.svg/250px-Pro_Football_Hall_of_Fame_logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Pro Football Hall of Fame',
   'Pro Football Hall of Fame', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_pro-football-hall-of-fame', 'media', 'media-photo-pro-football-hall-of-fame', 'Pro Football Hall of Fame (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_pro-football-hall-of-fame', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Pro_Football_Hall_of_Fame_logo.svg/250px-Pro_Football_Hall_of_Fame_logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Pro_Football_Hall_of_Fame_logo.svg/250px-Pro_Football_Hall_of_Fame_logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_pro-football-hall-of-fame', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_pro-football-hall-of-fame', 'ent_media_pro-football-hall-of-fame', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_baseball-hall-of-fame_primary', 'plc_baseball-hall-of-fame', 'src_wikimedia_commons',
   'National_Baseball_Hall_of_Fame_and_Museum_logo.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/1/11/National_Baseball_Hall_of_Fame_and_Museum_logo.svg/250px-National_Baseball_Hall_of_Fame_and_Museum_logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/1/11/National_Baseball_Hall_of_Fame_and_Museum_logo.svg/250px-National_Baseball_Hall_of_Fame_and_Museum_logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Baseball Hall of Fame',
   'Baseball Hall of Fame', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_baseball-hall-of-fame', 'media', 'media-photo-baseball-hall-of-fame', 'Baseball Hall of Fame (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_baseball-hall-of-fame', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/1/11/National_Baseball_Hall_of_Fame_and_Museum_logo.svg/250px-National_Baseball_Hall_of_Fame_and_Museum_logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/1/11/National_Baseball_Hall_of_Fame_and_Museum_logo.svg/250px-National_Baseball_Hall_of_Fame_and_Museum_logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_baseball-hall-of-fame', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_baseball-hall-of-fame', 'ent_media_baseball-hall-of-fame', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_harvard-university_primary', 'plc_harvard-university', 'src_wikimedia_commons',
   'Harvard_University_coat_of_arms.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Harvard_University_coat_of_arms.svg/250px-Harvard_University_coat_of_arms.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Harvard_University_coat_of_arms.svg/250px-Harvard_University_coat_of_arms.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Harvard University',
   'Harvard University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_harvard-university', 'media', 'media-photo-harvard-university', 'Harvard University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_harvard-university', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Harvard_University_coat_of_arms.svg/250px-Harvard_University_coat_of_arms.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Harvard_University_coat_of_arms.svg/250px-Harvard_University_coat_of_arms.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_harvard-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_harvard-university', 'ent_media_harvard-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_yale-university_primary', 'plc_yale-university', 'src_wikimedia_commons',
   'Yale_University_Shield_1.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Yale_University_Shield_1.svg/250px-Yale_University_Shield_1.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Yale_University_Shield_1.svg/250px-Yale_University_Shield_1.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Yale University',
   'Yale University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_yale-university', 'media', 'media-photo-yale-university', 'Yale University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_yale-university', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Yale_University_Shield_1.svg/250px-Yale_University_Shield_1.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Yale_University_Shield_1.svg/250px-Yale_University_Shield_1.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_yale-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_yale-university', 'ent_media_yale-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_columbia-university_primary', 'plc_columbia-university', 'src_wikimedia_commons',
   'Coat_of_Arms_of_Columbia_University.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Coat_of_Arms_of_Columbia_University.svg/250px-Coat_of_Arms_of_Columbia_University.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Coat_of_Arms_of_Columbia_University.svg/250px-Coat_of_Arms_of_Columbia_University.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Columbia University',
   'Columbia University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_columbia-university', 'media', 'media-photo-columbia-university', 'Columbia University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_columbia-university', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Coat_of_Arms_of_Columbia_University.svg/250px-Coat_of_Arms_of_Columbia_University.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Coat_of_Arms_of_Columbia_University.svg/250px-Coat_of_Arms_of_Columbia_University.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_columbia-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_columbia-university', 'ent_media_columbia-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_university-of-pennsylvania_primary', 'plc_university-of-pennsylvania', 'src_wikimedia_commons',
   'UPenn_shield_with_banner.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/UPenn_shield_with_banner.svg/250px-UPenn_shield_with_banner.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/UPenn_shield_with_banner.svg/250px-UPenn_shield_with_banner.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'University of Pennsylvania',
   'University of Pennsylvania', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_university-of-pennsylvania', 'media', 'media-photo-university-of-pennsylvania', 'University of Pennsylvania (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_university-of-pennsylvania', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/UPenn_shield_with_banner.svg/250px-UPenn_shield_with_banner.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/UPenn_shield_with_banner.svg/250px-UPenn_shield_with_banner.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_university-of-pennsylvania', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_university-of-pennsylvania', 'ent_media_university-of-pennsylvania', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_brown-university_primary', 'plc_brown-university', 'src_wikimedia_commons',
   'Shield_of_Brown_University.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/5/50/Shield_of_Brown_University.svg/250px-Shield_of_Brown_University.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/5/50/Shield_of_Brown_University.svg/250px-Shield_of_Brown_University.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Brown University',
   'Brown University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_brown-university', 'media', 'media-photo-brown-university', 'Brown University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_brown-university', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/5/50/Shield_of_Brown_University.svg/250px-Shield_of_Brown_University.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/5/50/Shield_of_Brown_University.svg/250px-Shield_of_Brown_University.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_brown-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_brown-university', 'ent_media_brown-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_dartmouth-college_primary', 'plc_dartmouth-college', 'src_wikimedia_commons',
   'Dartmouth_College_shield.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/e/e4/Dartmouth_College_shield.svg/250px-Dartmouth_College_shield.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e4/Dartmouth_College_shield.svg/250px-Dartmouth_College_shield.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Dartmouth College',
   'Dartmouth College', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_dartmouth-college', 'media', 'media-photo-dartmouth-college', 'Dartmouth College (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_dartmouth-college', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e4/Dartmouth_College_shield.svg/250px-Dartmouth_College_shield.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e4/Dartmouth_College_shield.svg/250px-Dartmouth_College_shield.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_dartmouth-college', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_dartmouth-college', 'ent_media_dartmouth-college', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_cornell-university_primary', 'plc_cornell-university', 'src_wikimedia_commons',
   'Cornell_University_seal.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Cornell_University_seal.svg/250px-Cornell_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Cornell_University_seal.svg/250px-Cornell_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Cornell University',
   'Cornell University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_cornell-university', 'media', 'media-photo-cornell-university', 'Cornell University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_cornell-university', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Cornell_University_seal.svg/250px-Cornell_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Cornell_University_seal.svg/250px-Cornell_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_cornell-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_cornell-university', 'ent_media_cornell-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_stanford-university_primary', 'plc_stanford-university', 'src_wikimedia_commons',
   'Seal_of_Leland_Stanford_Junior_University.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Seal_of_Leland_Stanford_Junior_University.svg/500px-Seal_of_Leland_Stanford_Junior_University.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Seal_of_Leland_Stanford_Junior_University.svg/500px-Seal_of_Leland_Stanford_Junior_University.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Stanford University',
   'Stanford University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_stanford-university', 'media', 'media-photo-stanford-university', 'Stanford University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_stanford-university', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Seal_of_Leland_Stanford_Junior_University.svg/500px-Seal_of_Leland_Stanford_Junior_University.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Seal_of_Leland_Stanford_Junior_University.svg/500px-Seal_of_Leland_Stanford_Junior_University.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_stanford-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_stanford-university', 'ent_media_stanford-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_university-of-chicago_primary', 'plc_university-of-chicago', 'src_wikimedia_commons',
   'University_of_Chicago_shield.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/7/79/University_of_Chicago_shield.svg/250px-University_of_Chicago_shield.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/7/79/University_of_Chicago_shield.svg/250px-University_of_Chicago_shield.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'University of Chicago',
   'University of Chicago', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_university-of-chicago', 'media', 'media-photo-university-of-chicago', 'University of Chicago (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_university-of-chicago', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/7/79/University_of_Chicago_shield.svg/250px-University_of_Chicago_shield.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/7/79/University_of_Chicago_shield.svg/250px-University_of_Chicago_shield.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_university-of-chicago', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_university-of-chicago', 'ent_media_university-of-chicago', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_johns-hopkins-university_primary', 'plc_johns-hopkins-university', 'src_wikimedia_commons',
   'Johns_Hopkins_University''s_Academic_Seal.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/0/09/Johns_Hopkins_University%27s_Academic_Seal.svg/250px-Johns_Hopkins_University%27s_Academic_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/0/09/Johns_Hopkins_University%27s_Academic_Seal.svg/250px-Johns_Hopkins_University%27s_Academic_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Johns Hopkins University',
   'Johns Hopkins University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_johns-hopkins-university', 'media', 'media-photo-johns-hopkins-university', 'Johns Hopkins University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_johns-hopkins-university', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/0/09/Johns_Hopkins_University%27s_Academic_Seal.svg/250px-Johns_Hopkins_University%27s_Academic_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/0/09/Johns_Hopkins_University%27s_Academic_Seal.svg/250px-Johns_Hopkins_University%27s_Academic_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_johns-hopkins-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_johns-hopkins-university', 'ent_media_johns-hopkins-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_northwestern-university_primary', 'plc_northwestern-university', 'src_wikimedia_commons',
   'Northwestern_University_seal.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Northwestern_University_seal.svg/250px-Northwestern_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Northwestern_University_seal.svg/250px-Northwestern_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Northwestern University',
   'Northwestern University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_northwestern-university', 'media', 'media-photo-northwestern-university', 'Northwestern University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_northwestern-university', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Northwestern_University_seal.svg/250px-Northwestern_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Northwestern_University_seal.svg/250px-Northwestern_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_northwestern-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_northwestern-university', 'ent_media_northwestern-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_duke-university_primary', 'plc_duke-university', 'src_wikimedia_commons',
   'Duke_University_logo.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Duke_University_logo.svg/500px-Duke_University_logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Duke_University_logo.svg/500px-Duke_University_logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Duke University',
   'Duke University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_duke-university', 'media', 'media-photo-duke-university', 'Duke University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_duke-university', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Duke_University_logo.svg/500px-Duke_University_logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Duke_University_logo.svg/500px-Duke_University_logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_duke-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_duke-university', 'ent_media_duke-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_vanderbilt-university_primary', 'plc_vanderbilt-university', 'src_wikimedia_commons',
   'Vanderbilt_University_seal.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/2/29/Vanderbilt_University_seal.svg/250px-Vanderbilt_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/2/29/Vanderbilt_University_seal.svg/250px-Vanderbilt_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Vanderbilt University',
   'Vanderbilt University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_vanderbilt-university', 'media', 'media-photo-vanderbilt-university', 'Vanderbilt University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_vanderbilt-university', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/2/29/Vanderbilt_University_seal.svg/250px-Vanderbilt_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/2/29/Vanderbilt_University_seal.svg/250px-Vanderbilt_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_vanderbilt-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_vanderbilt-university', 'ent_media_vanderbilt-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_rice-university_primary', 'plc_rice-university', 'src_wikimedia_commons',
   'Rice_University_seal.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/c/c7/Rice_University_seal.svg/250px-Rice_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c7/Rice_University_seal.svg/250px-Rice_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Rice University',
   'Rice University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_rice-university', 'media', 'media-photo-rice-university', 'Rice University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_rice-university', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c7/Rice_University_seal.svg/250px-Rice_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c7/Rice_University_seal.svg/250px-Rice_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_rice-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_rice-university', 'ent_media_rice-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_emory-university_primary', 'plc_emory-university', 'src_wikimedia_commons',
   'Emory_University_Seal.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/6/63/Emory_University_Seal.svg/250px-Emory_University_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/6/63/Emory_University_Seal.svg/250px-Emory_University_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Emory University',
   'Emory University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_emory-university', 'media', 'media-photo-emory-university', 'Emory University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_emory-university', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/6/63/Emory_University_Seal.svg/250px-Emory_University_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/6/63/Emory_University_Seal.svg/250px-Emory_University_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_emory-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_emory-university', 'ent_media_emory-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_georgetown-university_primary', 'plc_georgetown-university', 'src_wikimedia_commons',
   'Georgetown_University_Seal.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Georgetown_University_seal.svg/250px-Georgetown_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Georgetown_University_seal.svg/250px-Georgetown_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Georgetown University',
   'Georgetown University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_georgetown-university', 'media', 'media-photo-georgetown-university', 'Georgetown University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_georgetown-university', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Georgetown_University_seal.svg/250px-Georgetown_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Georgetown_University_seal.svg/250px-Georgetown_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_georgetown-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_georgetown-university', 'ent_media_georgetown-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_university-of-virginia_primary', 'plc_university-of-virginia', 'src_wikimedia_commons',
   'University_of_Virginia_seal.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/University_of_Virginia_seal.svg/250px-University_of_Virginia_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/University_of_Virginia_seal.svg/250px-University_of_Virginia_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'University of Virginia',
   'University of Virginia', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_university-of-virginia', 'media', 'media-photo-university-of-virginia', 'University of Virginia (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_university-of-virginia', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/University_of_Virginia_seal.svg/250px-University_of_Virginia_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/University_of_Virginia_seal.svg/250px-University_of_Virginia_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_university-of-virginia', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_university-of-virginia', 'ent_media_university-of-virginia', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_university-of-california-berkeley_primary', 'plc_university-of-california-berkeley', 'src_wikimedia_commons',
   'Seal_of_University_of_California,_Berkeley.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Seal_of_University_of_California%2C_Berkeley.svg/500px-Seal_of_University_of_California%2C_Berkeley.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Seal_of_University_of_California%2C_Berkeley.svg/500px-Seal_of_University_of_California%2C_Berkeley.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'University of California, Berkeley',
   'University of California, Berkeley', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_university-of-california-berkeley', 'media', 'media-photo-university-of-california-berkeley', 'University of California, Berkeley (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_university-of-california-berkeley', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Seal_of_University_of_California%2C_Berkeley.svg/500px-Seal_of_University_of_California%2C_Berkeley.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Seal_of_University_of_California%2C_Berkeley.svg/500px-Seal_of_University_of_California%2C_Berkeley.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_university-of-california-berkeley', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_university-of-california-berkeley', 'ent_media_university-of-california-berkeley', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_ucla_primary', 'plc_ucla', 'src_wikimedia_commons',
   'The_University_of_California_UCLA.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/The_University_of_California_UCLA.svg/250px-The_University_of_California_UCLA.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/The_University_of_California_UCLA.svg/250px-The_University_of_California_UCLA.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'UCLA',
   'UCLA', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_ucla', 'media', 'media-photo-ucla', 'UCLA (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_ucla', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/The_University_of_California_UCLA.svg/250px-The_University_of_California_UCLA.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/The_University_of_California_UCLA.svg/250px-The_University_of_California_UCLA.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_ucla', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_ucla', 'ent_media_ucla', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_university-of-texas-at-austin_primary', 'plc_university-of-texas-at-austin', 'src_wikimedia_commons',
   'University_of_Texas_at_Austin_seal.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/e/e1/University_of_Texas_at_Austin_seal.svg/250px-University_of_Texas_at_Austin_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e1/University_of_Texas_at_Austin_seal.svg/250px-University_of_Texas_at_Austin_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'University of Texas at Austin',
   'University of Texas at Austin', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_university-of-texas-at-austin', 'media', 'media-photo-university-of-texas-at-austin', 'University of Texas at Austin (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_university-of-texas-at-austin', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e1/University_of_Texas_at_Austin_seal.svg/250px-University_of_Texas_at_Austin_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e1/University_of_Texas_at_Austin_seal.svg/250px-University_of_Texas_at_Austin_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_university-of-texas-at-austin', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_university-of-texas-at-austin', 'ent_media_university-of-texas-at-austin', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_university-of-wisconsin-madison_primary', 'plc_university-of-wisconsin-madison', 'src_wikimedia_commons',
   'University_of_Wisconsin_seal.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Seal_of_the_University_of_Wisconsin.svg/500px-Seal_of_the_University_of_Wisconsin.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Seal_of_the_University_of_Wisconsin.svg/500px-Seal_of_the_University_of_Wisconsin.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'University of Wisconsin-Madison',
   'University of Wisconsin-Madison', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_university-of-wisconsin-madison', 'media', 'media-photo-university-of-wisconsin-madison', 'University of Wisconsin-Madison (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_university-of-wisconsin-madison', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Seal_of_the_University_of_Wisconsin.svg/500px-Seal_of_the_University_of_Wisconsin.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Seal_of_the_University_of_Wisconsin.svg/500px-Seal_of_the_University_of_Wisconsin.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_university-of-wisconsin-madison', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_university-of-wisconsin-madison', 'ent_media_university-of-wisconsin-madison', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_ohio-state-university_primary', 'plc_ohio-state-university', 'src_wikimedia_commons',
   'Ohio_State_University_seal.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/e/e1/Ohio_State_University_seal.svg/250px-Ohio_State_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e1/Ohio_State_University_seal.svg/250px-Ohio_State_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Ohio State University',
   'Ohio State University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_ohio-state-university', 'media', 'media-photo-ohio-state-university', 'Ohio State University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_ohio-state-university', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e1/Ohio_State_University_seal.svg/250px-Ohio_State_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e1/Ohio_State_University_seal.svg/250px-Ohio_State_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_ohio-state-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_ohio-state-university', 'ent_media_ohio-state-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_university-of-florida_primary', 'plc_university-of-florida', 'src_wikimedia_commons',
   'University_of_Florida_seal.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/6/6d/University_of_Florida_seal.svg/250px-University_of_Florida_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/6/6d/University_of_Florida_seal.svg/250px-University_of_Florida_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'University of Florida',
   'University of Florida', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_university-of-florida', 'media', 'media-photo-university-of-florida', 'University of Florida (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_university-of-florida', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/6/6d/University_of_Florida_seal.svg/250px-University_of_Florida_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/6/6d/University_of_Florida_seal.svg/250px-University_of_Florida_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_university-of-florida', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_university-of-florida', 'ent_media_university-of-florida', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_university-of-miami_primary', 'plc_university-of-miami', 'src_wikimedia_commons',
   'University_of_Miami_logo.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/University_of_Miami_logo.svg/250px-University_of_Miami_logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/University_of_Miami_logo.svg/250px-University_of_Miami_logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'University of Miami',
   'University of Miami', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_university-of-miami', 'media', 'media-photo-university-of-miami', 'University of Miami (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_university-of-miami', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/University_of_Miami_logo.svg/250px-University_of_Miami_logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/University_of_Miami_logo.svg/250px-University_of_Miami_logo.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_university-of-miami', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_university-of-miami', 'ent_media_university-of-miami', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_georgia-tech_primary', 'plc_georgia-tech', 'src_wikimedia_commons',
   'Georgia_Tech_seal.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Georgia_Tech_seal.svg/500px-Georgia_Tech_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Georgia_Tech_seal.svg/500px-Georgia_Tech_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Georgia Tech',
   'Georgia Tech', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_georgia-tech', 'media', 'media-photo-georgia-tech', 'Georgia Tech (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_georgia-tech', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Georgia_Tech_seal.svg/500px-Georgia_Tech_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Georgia_Tech_seal.svg/500px-Georgia_Tech_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_georgia-tech', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_georgia-tech', 'ent_media_georgia-tech', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_carnegie-mellon-university_primary', 'plc_carnegie-mellon-university', 'src_wikimedia_commons',
   'Carnegie_Mellon_University_seal.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/b/bb/Carnegie_Mellon_University_seal.svg/250px-Carnegie_Mellon_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/b/bb/Carnegie_Mellon_University_seal.svg/250px-Carnegie_Mellon_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Carnegie Mellon University',
   'Carnegie Mellon University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_carnegie-mellon-university', 'media', 'media-photo-carnegie-mellon-university', 'Carnegie Mellon University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_carnegie-mellon-university', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/b/bb/Carnegie_Mellon_University_seal.svg/250px-Carnegie_Mellon_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/b/bb/Carnegie_Mellon_University_seal.svg/250px-Carnegie_Mellon_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_carnegie-mellon-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_carnegie-mellon-university', 'ent_media_carnegie-mellon-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_university-of-southern-california_primary', 'plc_university-of-southern-california', 'src_wikimedia_commons',
   'University_of_Southern_California_(USC)_seal.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/University_of_Southern_California_%28USC%29_seal.svg/250px-University_of_Southern_California_%28USC%29_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/University_of_Southern_California_%28USC%29_seal.svg/250px-University_of_Southern_California_%28USC%29_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'University of Southern California',
   'University of Southern California', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_university-of-southern-california', 'media', 'media-photo-university-of-southern-california', 'University of Southern California (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_university-of-southern-california', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/University_of_Southern_California_%28USC%29_seal.svg/250px-University_of_Southern_California_%28USC%29_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/University_of_Southern_California_%28USC%29_seal.svg/250px-University_of_Southern_California_%28USC%29_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_university-of-southern-california', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_university-of-southern-california', 'ent_media_university-of-southern-california', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_new-york-university_primary', 'plc_new-york-university', 'src_wikimedia_commons',
   'New_York_University_Seal.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/New_York_University_Seal.svg/250px-New_York_University_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/New_York_University_Seal.svg/250px-New_York_University_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'New York University',
   'New York University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_new-york-university', 'media', 'media-photo-new-york-university', 'New York University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_new-york-university', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/New_York_University_Seal.svg/250px-New_York_University_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/New_York_University_Seal.svg/250px-New_York_University_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_new-york-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_new-york-university', 'ent_media_new-york-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_boston-university_primary', 'plc_boston-university', 'src_wikimedia_commons',
   'Boston_University_seal.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Boston_University_seal.svg/500px-Boston_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Boston_University_seal.svg/500px-Boston_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Boston University',
   'Boston University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_boston-university', 'media', 'media-photo-boston-university', 'Boston University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_boston-university', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Boston_University_seal.svg/500px-Boston_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Boston_University_seal.svg/500px-Boston_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_boston-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_boston-university', 'ent_media_boston-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_boston-college_primary', 'plc_boston-college', 'src_wikimedia_commons',
   'Boston_College_Logotype.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Boston_College_Logotype.svg/250px-Boston_College_Logotype.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Boston_College_Logotype.svg/250px-Boston_College_Logotype.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Boston College',
   'Boston College', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_boston-college', 'media', 'media-photo-boston-college', 'Boston College (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_boston-college', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Boston_College_Logotype.svg/250px-Boston_College_Logotype.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Boston_College_Logotype.svg/250px-Boston_College_Logotype.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_boston-college', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_boston-college', 'ent_media_boston-college', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_howard-university_primary', 'plc_howard-university', 'src_wikimedia_commons',
   'Howard_University_seal.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/a/a3/Howard_University_seal.svg/250px-Howard_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a3/Howard_University_seal.svg/250px-Howard_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Howard University',
   'Howard University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_howard-university', 'media', 'media-photo-howard-university', 'Howard University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_howard-university', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a3/Howard_University_seal.svg/250px-Howard_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a3/Howard_University_seal.svg/250px-Howard_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_howard-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_howard-university', 'ent_media_howard-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_spelman-college_primary', 'plc_spelman-college', 'src_wikimedia_commons',
   'Spelman_College_seal.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/6/66/Spelman_College_seal.svg/250px-Spelman_College_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/6/66/Spelman_College_seal.svg/250px-Spelman_College_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Spelman College',
   'Spelman College', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_spelman-college', 'media', 'media-photo-spelman-college', 'Spelman College (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_spelman-college', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/6/66/Spelman_College_seal.svg/250px-Spelman_College_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/6/66/Spelman_College_seal.svg/250px-Spelman_College_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_spelman-college', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_spelman-college', 'ent_media_spelman-college', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_morehouse-college_primary', 'plc_morehouse-college', 'src_wikimedia_commons',
   'Morehouse_college_seal.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/8/86/Morehouse_college_seal.svg/250px-Morehouse_college_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/8/86/Morehouse_college_seal.svg/250px-Morehouse_college_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Morehouse College',
   'Morehouse College', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_morehouse-college', 'media', 'media-photo-morehouse-college', 'Morehouse College (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_morehouse-college', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/8/86/Morehouse_college_seal.svg/250px-Morehouse_college_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/8/86/Morehouse_college_seal.svg/250px-Morehouse_college_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_morehouse-college', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_morehouse-college', 'ent_media_morehouse-college', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_tuskegee-university_primary', 'plc_tuskegee-university', 'src_wikimedia_commons',
   'Tuskegee_University_seal.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/a/a7/Tuskegee_University_seal.svg/250px-Tuskegee_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a7/Tuskegee_University_seal.svg/250px-Tuskegee_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Tuskegee University',
   'Tuskegee University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_tuskegee-university', 'media', 'media-photo-tuskegee-university', 'Tuskegee University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_tuskegee-university', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a7/Tuskegee_University_seal.svg/250px-Tuskegee_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a7/Tuskegee_University_seal.svg/250px-Tuskegee_University_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_tuskegee-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_tuskegee-university', 'ent_media_tuskegee-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_hampton-university_primary', 'plc_hampton-university', 'src_wikimedia_commons',
   'Hampton_University_Seal.png',
   'https://upload.wikimedia.org/wikipedia/en/d/d3/Hampton_University_Seal.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail_unscaled', NULL, 'https://upload.wikimedia.org/wikipedia/en/d/d3/Hampton_University_Seal.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail_unscaled',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Hampton University',
   'Hampton University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_hampton-university', 'media', 'media-photo-hampton-university', 'Hampton University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_hampton-university', 'image', 'https://upload.wikimedia.org/wikipedia/en/d/d3/Hampton_University_Seal.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail_unscaled', 'https://upload.wikimedia.org/wikipedia/en/d/d3/Hampton_University_Seal.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail_unscaled',
   'plc_hampton-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_hampton-university', 'ent_media_hampton-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_fisk-university_primary', 'plc_fisk-university', 'src_wikimedia_commons',
   'JubileeHallFiskU.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/JubileeHallFiskU.jpg/500px-JubileeHallFiskU.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/JubileeHallFiskU.jpg/500px-JubileeHallFiskU.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Fisk University',
   'Fisk University', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_fisk-university', 'media', 'media-photo-fisk-university', 'Fisk University (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_fisk-university', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/JubileeHallFiskU.jpg/500px-JubileeHallFiskU.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/JubileeHallFiskU.jpg/500px-JubileeHallFiskU.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_fisk-university', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_fisk-university', 'ent_media_fisk-university', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_howard-university-law-school_primary', 'plc_howard-university-law-school', 'src_wikimedia_commons',
   'Howard_School_of_Law_(55264815306).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Howard_School_of_Law_%2855264815306%29.jpg/500px-Howard_School_of_Law_%2855264815306%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Howard_School_of_Law_%2855264815306%29.jpg/500px-Howard_School_of_Law_%2855264815306%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Howard University Law School',
   'Howard University Law School', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_howard-university-law-school', 'media', 'media-photo-howard-university-law-school', 'Howard University Law School (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_howard-university-law-school', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Howard_School_of_Law_%2855264815306%29.jpg/500px-Howard_School_of_Law_%2855264815306%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Howard_School_of_Law_%2855264815306%29.jpg/500px-Howard_School_of_Law_%2855264815306%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_howard-university-law-school', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_howard-university-law-school', 'ent_media_howard-university-law-school', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_united-states-naval-academy_primary', 'plc_united-states-naval-academy', 'src_wikimedia_commons',
   'Logo_of_the_United_States_Naval_Academy.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Logo_of_the_United_States_Naval_Academy.svg/250px-Logo_of_the_United_States_Naval_Academy.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Logo_of_the_United_States_Naval_Academy.svg/250px-Logo_of_the_United_States_Naval_Academy.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'United States Naval Academy',
   'United States Naval Academy', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_united-states-naval-academy', 'media', 'media-photo-united-states-naval-academy', 'United States Naval Academy (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_united-states-naval-academy', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Logo_of_the_United_States_Naval_Academy.svg/250px-Logo_of_the_United_States_Naval_Academy.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Logo_of_the_United_States_Naval_Academy.svg/250px-Logo_of_the_United_States_Naval_Academy.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_united-states-naval-academy', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_united-states-naval-academy', 'ent_media_united-states-naval-academy', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_united-states-air-force-academy_primary', 'plc_united-states-air-force-academy', 'src_wikimedia_commons',
   'US-AirForceAcademy-Shield.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/US-AirForceAcademy-Shield.svg/500px-US-AirForceAcademy-Shield.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/US-AirForceAcademy-Shield.svg/500px-US-AirForceAcademy-Shield.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'United States Air Force Academy',
   'United States Air Force Academy', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_united-states-air-force-academy', 'media', 'media-photo-united-states-air-force-academy', 'United States Air Force Academy (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_united-states-air-force-academy', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/US-AirForceAcademy-Shield.svg/500px-US-AirForceAcademy-Shield.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/US-AirForceAcademy-Shield.svg/500px-US-AirForceAcademy-Shield.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_united-states-air-force-academy', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_united-states-air-force-academy', 'ent_media_united-states-air-force-academy', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_united-states-coast-guard-academy_primary', 'plc_united-states-coast-guard-academy', 'src_wikimedia_commons',
   'United_States_Coast_Guard_Academy_seal.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/United_States_Coast_Guard_Academy_seal.svg/250px-United_States_Coast_Guard_Academy_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/United_States_Coast_Guard_Academy_seal.svg/250px-United_States_Coast_Guard_Academy_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'United States Coast Guard Academy',
   'United States Coast Guard Academy', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_united-states-coast-guard-academy', 'media', 'media-photo-united-states-coast-guard-academy', 'United States Coast Guard Academy (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_united-states-coast-guard-academy', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/United_States_Coast_Guard_Academy_seal.svg/250px-United_States_Coast_Guard_Academy_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/United_States_Coast_Guard_Academy_seal.svg/250px-United_States_Coast_Guard_Academy_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_united-states-coast-guard-academy', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_united-states-coast-guard-academy', 'ent_media_united-states-coast-guard-academy', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_us-merchant-marine-academy_primary', 'plc_us-merchant-marine-academy', 'src_wikimedia_commons',
   'United_States_Merchant_Marine_Academy_seal.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/United_States_Merchant_Marine_Academy_seal.svg/500px-United_States_Merchant_Marine_Academy_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/United_States_Merchant_Marine_Academy_seal.svg/500px-United_States_Merchant_Marine_Academy_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'US Merchant Marine Academy',
   'US Merchant Marine Academy', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_us-merchant-marine-academy', 'media', 'media-photo-us-merchant-marine-academy', 'US Merchant Marine Academy (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_us-merchant-marine-academy', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/United_States_Merchant_Marine_Academy_seal.svg/500px-United_States_Merchant_Marine_Academy_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/United_States_Merchant_Marine_Academy_seal.svg/500px-United_States_Merchant_Marine_Academy_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_us-merchant-marine-academy', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_us-merchant-marine-academy', 'ent_media_us-merchant-marine-academy', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_williams-college_primary', 'plc_williams-college', 'src_wikimedia_commons',
   'Williams_College_Seal.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/1/19/Williams_College_Seal.svg/250px-Williams_College_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/1/19/Williams_College_Seal.svg/250px-Williams_College_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Williams College',
   'Williams College', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_williams-college', 'media', 'media-photo-williams-college', 'Williams College (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_williams-college', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/1/19/Williams_College_Seal.svg/250px-Williams_College_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/1/19/Williams_College_Seal.svg/250px-Williams_College_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_williams-college', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_williams-college', 'ent_media_williams-college', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_amherst-college_primary', 'plc_amherst-college', 'src_wikimedia_commons',
   'Amherst_College_Seal.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/6/65/Amherst_College_Seal.svg/250px-Amherst_College_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/6/65/Amherst_College_Seal.svg/250px-Amherst_College_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Amherst College',
   'Amherst College', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_amherst-college', 'media', 'media-photo-amherst-college', 'Amherst College (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_amherst-college', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/6/65/Amherst_College_Seal.svg/250px-Amherst_College_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/6/65/Amherst_College_Seal.svg/250px-Amherst_College_Seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_amherst-college', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_amherst-college', 'ent_media_amherst-college', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_wellesley-college_primary', 'plc_wellesley-college', 'src_wikimedia_commons',
   'Formal_Seal_of_Wellesley_College,_Wellesley,_MA,_USA.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/6/6b/Formal_Seal_of_Wellesley_College%2C_Wellesley%2C_MA%2C_USA.svg/250px-Formal_Seal_of_Wellesley_College%2C_Wellesley%2C_MA%2C_USA.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/6/6b/Formal_Seal_of_Wellesley_College%2C_Wellesley%2C_MA%2C_USA.svg/250px-Formal_Seal_of_Wellesley_College%2C_Wellesley%2C_MA%2C_USA.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Wellesley College',
   'Wellesley College', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_wellesley-college', 'media', 'media-photo-wellesley-college', 'Wellesley College (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_wellesley-college', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/6/6b/Formal_Seal_of_Wellesley_College%2C_Wellesley%2C_MA%2C_USA.svg/250px-Formal_Seal_of_Wellesley_College%2C_Wellesley%2C_MA%2C_USA.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/6/6b/Formal_Seal_of_Wellesley_College%2C_Wellesley%2C_MA%2C_USA.svg/250px-Formal_Seal_of_Wellesley_College%2C_Wellesley%2C_MA%2C_USA.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_wellesley-college', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_wellesley-college', 'ent_media_wellesley-college', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_smith-college_primary', 'plc_smith-college', 'src_wikimedia_commons',
   'Smith_College_seal.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/1/1d/Smith_College_seal.svg/250px-Smith_College_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/1/1d/Smith_College_seal.svg/250px-Smith_College_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Smith College',
   'Smith College', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_smith-college', 'media', 'media-photo-smith-college', 'Smith College (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_smith-college', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/1/1d/Smith_College_seal.svg/250px-Smith_College_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/1/1d/Smith_College_seal.svg/250px-Smith_College_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_smith-college', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_smith-college', 'ent_media_smith-college', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_mount-holyoke-college_primary', 'plc_mount-holyoke-college', 'src_wikimedia_commons',
   'Mount_Holyoke_College_seal.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/1/1b/Mount_Holyoke_College_seal.svg/250px-Mount_Holyoke_College_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/1/1b/Mount_Holyoke_College_seal.svg/250px-Mount_Holyoke_College_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Mount Holyoke College',
   'Mount Holyoke College', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_mount-holyoke-college', 'media', 'media-photo-mount-holyoke-college', 'Mount Holyoke College (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_mount-holyoke-college', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/1/1b/Mount_Holyoke_College_seal.svg/250px-Mount_Holyoke_College_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/1/1b/Mount_Holyoke_College_seal.svg/250px-Mount_Holyoke_College_seal.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'plc_mount-holyoke-college', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_mount-holyoke-college', 'ent_media_mount-holyoke-college', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_in-country_primary', 'ent_in', 'src_wikimedia_commons',
   'Flag_of_India.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/500px-Flag_of_India.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/500px-Flag_of_India.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'India',
   'India', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_in-country', 'media', 'media-photo-in-country', 'India (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_in-country', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/500px-Flag_of_India.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/500px-Flag_of_India.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_in', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_in-country', 'ent_media_in-country', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_mx-country_primary', 'ent_mx', 'src_wikimedia_commons',
   'Flag_of_Mexico.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/500px-Flag_of_Mexico.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/500px-Flag_of_Mexico.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Mexico',
   'Mexico', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_mx-country', 'media', 'media-photo-mx-country', 'Mexico (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_mx-country', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/500px-Flag_of_Mexico.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/500px-Flag_of_Mexico.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_mx', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_mx-country', 'ent_media_mx-country', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_il-country_primary', 'ent_il', 'src_wikimedia_commons',
   'Flag_of_Israel.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Flag_of_Israel.svg/500px-Flag_of_Israel.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Flag_of_Israel.svg/500px-Flag_of_Israel.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Israel',
   'Israel', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_il-country', 'media', 'media-photo-il-country', 'Israel (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_il-country', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Flag_of_Israel.svg/500px-Flag_of_Israel.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Flag_of_Israel.svg/500px-Flag_of_Israel.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_il', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_il-country', 'ent_media_il-country', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_gb-country_primary', 'ent_gb', 'src_wikimedia_commons',
   'Flag_of_the_United_Kingdom_(1-2).svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Flag_of_the_United_Kingdom_%281-2%29.svg/500px-Flag_of_the_United_Kingdom_%281-2%29.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Flag_of_the_United_Kingdom_%281-2%29.svg/500px-Flag_of_the_United_Kingdom_%281-2%29.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'United Kingdom',
   'United Kingdom', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_gb-country', 'media', 'media-photo-gb-country', 'United Kingdom (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_gb-country', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Flag_of_the_United_Kingdom_%281-2%29.svg/500px-Flag_of_the_United_Kingdom_%281-2%29.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Flag_of_the_United_Kingdom_%281-2%29.svg/500px-Flag_of_the_United_Kingdom_%281-2%29.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_gb', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_gb-country', 'ent_media_gb-country', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_sg-country_primary', 'ent_sg', 'src_wikimedia_commons',
   'Flag_of_Singapore.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Singapore',
   'Singapore', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_sg-country', 'media', 'media-photo-sg-country', 'Singapore (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_sg-country', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_sg', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_sg-country', 'ent_media_sg-country', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_sa-country_primary', 'ent_sa', 'src_wikimedia_commons',
   'Flag_of_Saudi_Arabia.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/500px-Flag_of_Saudi_Arabia.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/500px-Flag_of_Saudi_Arabia.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Saudi Arabia',
   'Saudi Arabia', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_sa-country', 'media', 'media-photo-sa-country', 'Saudi Arabia (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_sa-country', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/500px-Flag_of_Saudi_Arabia.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/500px-Flag_of_Saudi_Arabia.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_sa', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_sa-country', 'ent_media_sa-country', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_tr-country_primary', 'ent_tr', 'src_wikimedia_commons',
   'Flag_of_Turkey.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/500px-Flag_of_Turkey.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/500px-Flag_of_Turkey.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Turkey',
   'Turkey', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_tr-country', 'media', 'media-photo-tr-country', 'Turkey (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_tr-country', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/500px-Flag_of_Turkey.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/500px-Flag_of_Turkey.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_tr', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_tr-country', 'ent_media_tr-country', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_fr-country_primary', 'ent_fr', 'src_wikimedia_commons',
   'Flag_of_France.svg',
   'https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Flag_of_France.svg/500px-Flag_of_France.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Flag_of_France.svg/500px-Flag_of_France.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'France',
   'France', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_fr-country', 'media', 'media-photo-fr-country', 'France (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_fr-country', 'image', 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Flag_of_France.svg/500px-Flag_of_France.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Flag_of_France.svg/500px-Flag_of_France.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_fr', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_fr-country', 'ent_media_fr-country', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_carlos-slim-birth_primary', 'ent_carlos-slim-birth', 'src_wikimedia_commons',
   'Sobrevuelos_CDMX_HJ2A4913_(25514321687)_(cropped).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg/500px-Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg/500px-Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Mexico City, Mexico',
   'Mexico City, Mexico', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_carlos-slim-birth', 'media', 'media-photo-carlos-slim-birth', 'Mexico City, Mexico (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_carlos-slim-birth', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg/500px-Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg/500px-Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_carlos-slim-birth', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_carlos-slim-birth', 'ent_media_carlos-slim-birth', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_golda-meir-death_primary', 'ent_golda-meir-death', 'src_wikimedia_commons',
   'Temple_Mount_(Aerial_view,_2007)_07.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Temple_Mount_%28Aerial_view%2C_2007%29_07.jpg/500px-Temple_Mount_%28Aerial_view%2C_2007%29_07.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Temple_Mount_%28Aerial_view%2C_2007%29_07.jpg/500px-Temple_Mount_%28Aerial_view%2C_2007%29_07.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Jerusalem, Israel',
   'Jerusalem, Israel', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_golda-meir-death', 'media', 'media-photo-golda-meir-death', 'Jerusalem, Israel (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_golda-meir-death', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Temple_Mount_%28Aerial_view%2C_2007%29_07.jpg/500px-Temple_Mount_%28Aerial_view%2C_2007%29_07.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Temple_Mount_%28Aerial_view%2C_2007%29_07.jpg/500px-Temple_Mount_%28Aerial_view%2C_2007%29_07.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_golda-meir-death', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_golda-meir-death', 'ent_media_golda-meir-death', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_guillermo-del-toro-birth_primary', 'ent_guillermo-del-toro-birth', 'src_wikimedia_commons',
   'Panorámica_Guadalajara_desde_edificio_Bansi_hacia_norte_(cropped).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Panor%C3%A1mica_Guadalajara_desde_edificio_Bansi_hacia_norte_%28cropped%29.jpg/500px-Panor%C3%A1mica_Guadalajara_desde_edificio_Bansi_hacia_norte_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Panor%C3%A1mica_Guadalajara_desde_edificio_Bansi_hacia_norte_%28cropped%29.jpg/500px-Panor%C3%A1mica_Guadalajara_desde_edificio_Bansi_hacia_norte_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Guadalajara, Jalisco, Mexico',
   'Guadalajara, Jalisco, Mexico', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_guillermo-del-toro-birth', 'media', 'media-photo-guillermo-del-toro-birth', 'Guadalajara, Jalisco, Mexico (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_guillermo-del-toro-birth', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Panor%C3%A1mica_Guadalajara_desde_edificio_Bansi_hacia_norte_%28cropped%29.jpg/500px-Panor%C3%A1mica_Guadalajara_desde_edificio_Bansi_hacia_norte_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Panor%C3%A1mica_Guadalajara_desde_edificio_Bansi_hacia_norte_%28cropped%29.jpg/500px-Panor%C3%A1mica_Guadalajara_desde_edificio_Bansi_hacia_norte_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_guillermo-del-toro-birth', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_guillermo-del-toro-birth', 'ent_media_guillermo-del-toro-birth', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_halimah-yacob-birth_primary', 'ent_halimah-yacob-birth', 'src_wikimedia_commons',
   'Flag_of_Singapore.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Singapore',
   'Singapore', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_halimah-yacob-birth', 'media', 'media-photo-halimah-yacob-birth', 'Singapore (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_halimah-yacob-birth', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_halimah-yacob-birth', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_halimah-yacob-birth', 'ent_media_halimah-yacob-birth', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_jj-lin-birth_primary', 'ent_jj-lin-birth', 'src_wikimedia_commons',
   'Flag_of_Singapore.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Singapore',
   'Singapore', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_jj-lin-birth', 'media', 'media-photo-jj-lin-birth', 'Singapore (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_jj-lin-birth', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_jj-lin-birth', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_jj-lin-birth', 'ent_media_jj-lin-birth', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_joseph-schooling-birth_primary', 'ent_joseph-schooling-birth', 'src_wikimedia_commons',
   'Flag_of_Singapore.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Singapore',
   'Singapore', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_joseph-schooling-birth', 'media', 'media-photo-joseph-schooling-birth', 'Singapore (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_joseph-schooling-birth', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_joseph-schooling-birth', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_joseph-schooling-birth', 'ent_media_joseph-schooling-birth', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_lee-hsien-loong-birth_primary', 'ent_lee-hsien-loong-birth', 'src_wikimedia_commons',
   'Flag_of_Singapore.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Singapore',
   'Singapore', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_lee-hsien-loong-birth', 'media', 'media-photo-lee-hsien-loong-birth', 'Singapore (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_lee-hsien-loong-birth', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_lee-hsien-loong-birth', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_lee-hsien-loong-birth', 'ent_media_lee-hsien-loong-birth', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_lee-kuan-yew-birth_primary', 'ent_lee-kuan-yew-birth', 'src_wikimedia_commons',
   'Flag_of_Singapore.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Singapore',
   'Singapore', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_lee-kuan-yew-birth', 'media', 'media-photo-lee-kuan-yew-birth', 'Singapore (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_lee-kuan-yew-birth', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_lee-kuan-yew-birth', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_lee-kuan-yew-birth', 'ent_media_lee-kuan-yew-birth', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_lee-kuan-yew-death_primary', 'ent_lee-kuan-yew-death', 'src_wikimedia_commons',
   'Flag_of_Singapore.svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Singapore',
   'Singapore', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_lee-kuan-yew-death', 'media', 'media-photo-lee-kuan-yew-death', 'Singapore (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_lee-kuan-yew-death', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/500px-Flag_of_Singapore.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_lee-kuan-yew-death', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_lee-kuan-yew-death', 'ent_media_lee-kuan-yew-death', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_mahatma-gandhi-death_primary', 'ent_mahatma-gandhi-death', 'src_wikimedia_commons',
   'Forecourt,_Rashtrapati_Bhavan_-_1.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Forecourt%2C_Rashtrapati_Bhavan_-_1.jpg/500px-Forecourt%2C_Rashtrapati_Bhavan_-_1.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Forecourt%2C_Rashtrapati_Bhavan_-_1.jpg/500px-Forecourt%2C_Rashtrapati_Bhavan_-_1.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'New Delhi, India',
   'New Delhi, India', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_mahatma-gandhi-death', 'media', 'media-photo-mahatma-gandhi-death', 'New Delhi, India (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_mahatma-gandhi-death', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Forecourt%2C_Rashtrapati_Bhavan_-_1.jpg/500px-Forecourt%2C_Rashtrapati_Bhavan_-_1.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Forecourt%2C_Rashtrapati_Bhavan_-_1.jpg/500px-Forecourt%2C_Rashtrapati_Bhavan_-_1.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_mahatma-gandhi-death', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_mahatma-gandhi-death', 'ent_media_mahatma-gandhi-death', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_mohammed-bin-salman-birth_primary', 'ent_mohammed-bin-salman-birth', 'src_wikimedia_commons',
   'Riyadh_Skyline.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Riyadh_Skyline.jpg/500px-Riyadh_Skyline.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Riyadh_Skyline.jpg/500px-Riyadh_Skyline.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Riyadh, Saudi Arabia',
   'Riyadh, Saudi Arabia', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_mohammed-bin-salman-birth', 'media', 'media-photo-mohammed-bin-salman-birth', 'Riyadh, Saudi Arabia (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_mohammed-bin-salman-birth', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Riyadh_Skyline.jpg/500px-Riyadh_Skyline.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Riyadh_Skyline.jpg/500px-Riyadh_Skyline.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_mohammed-bin-salman-birth', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_mohammed-bin-salman-birth', 'ent_media_mohammed-bin-salman-birth', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_octavio-paz-birth_primary', 'ent_octavio-paz-birth', 'src_wikimedia_commons',
   'Sobrevuelos_CDMX_HJ2A4913_(25514321687)_(cropped).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg/500px-Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg/500px-Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Mexico City, Mexico',
   'Mexico City, Mexico', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_octavio-paz-birth', 'media', 'media-photo-octavio-paz-birth', 'Mexico City, Mexico (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_octavio-paz-birth', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg/500px-Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg/500px-Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_octavio-paz-birth', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_octavio-paz-birth', 'ent_media_octavio-paz-birth', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_octavio-paz-death_primary', 'ent_octavio-paz-death', 'src_wikimedia_commons',
   'Sobrevuelos_CDMX_HJ2A4913_(25514321687)_(cropped).jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg/500px-Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg/500px-Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'Mexico City, Mexico',
   'Mexico City, Mexico', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_octavio-paz-death', 'media', 'media-photo-octavio-paz-death', 'Mexico City, Mexico (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_octavio-paz-death', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg/500px-Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg/500px-Sobrevuelos_CDMX_HJ2A4913_%2825514321687%29_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_octavio-paz-death', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_octavio-paz-death', 'ent_media_octavio-paz-death', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_united-states_primary', 'ent_usa', 'src_wikimedia_commons',
   'Flag_of_the_United_States_(DDD-F-416E_specifications).svg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Flag_of_the_United_States_%28DDD-F-416E_specifications%29.svg/500px-Flag_of_the_United_States_%28DDD-F-416E_specifications%29.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Flag_of_the_United_States_%28DDD-F-416E_specifications%29.svg/500px-Flag_of_the_United_States_%28DDD-F-416E_specifications%29.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, 'United States',
   'United States', 1, 10, unixepoch());
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('ent_media_united-states', 'media', 'media-photo-united-states', 'United States (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('ent_media_united-states', 'image', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Flag_of_the_United_States_%28DDD-F-416E_specifications%29.svg/500px-Flag_of_the_United_States_%28DDD-F-416E_specifications%29.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Flag_of_the_United_States_%28DDD-F-416E_specifications%29.svg/500px-Flag_of_the_United_States_%28DDD-F-416E_specifications%29.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
   'ent_usa', 0.9, 'place_wiki_image', 'approved', unixepoch());
INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_ent_media_united-states', 'ent_media_united-states', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
