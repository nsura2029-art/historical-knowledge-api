-- ========================================
-- Migration 0062: Add media_rights for backfilled images
-- All 1018 backfilled images are Wikipedia/Wikimedia Commons CC-BY-SA-4.0
-- Generated: 2026-08-09
-- ========================================

INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
SELECT 
  'mr_' || ma.id,
  ma.id,
  'Wikipedia / Wikimedia Commons contributors',
  'Wikimedia Commons',
  'CC-BY-SA-4.0',
  'https://creativecommons.org/licenses/by-sa/4.0/',
  'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
  'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)',
  1,
  1,
  1,
  1,
  0,
  unixepoch(),
  'auto_backfill_0059',
  'src_en_wikipedia',
  unixepoch()
FROM media_asset ma
WHERE ma.depiction_method = 'entity_image_backfill'
AND NOT EXISTS (
  SELECT 1 FROM media_rights WHERE media_asset_id = ma.id
);
