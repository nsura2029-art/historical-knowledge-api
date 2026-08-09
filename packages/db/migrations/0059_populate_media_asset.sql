-- ========================================
-- Migration 0059: Populate media_asset from entity_image
-- For each entity_image row, create:
--   1. entity row (type='media', id=ent_media_{slug})
--   2. media_asset row (id=ent_media_{slug})
-- Generated: 2026-08-09
-- ========================================

-- Step 1: Create entity rows for each image
INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, created_at, updated_at, status, language_default, popularity_score)
SELECT 
  'ent_media_' || SUBSTR(ei.id, 4, LENGTH(ei.id) - 12),  -- Strip "ei_" and "_primary" suffix
  'media',
  'media-' || SUBSTR(ei.id, 4, LENGTH(ei.id) - 12),
  SUBSTR(ei.caption, 1, 200),
  unixepoch(),
  unixepoch(),
  'published',
  'en',
  e.popularity_score
FROM entity_image ei
JOIN entity e ON e.id = ei.entity_id
WHERE ei.is_primary = 1
AND NOT EXISTS (
  SELECT 1 FROM entity en WHERE en.id = 'ent_media_' || SUBSTR(ei.id, 4, LENGTH(ei.id) - 12)
);

-- Step 2: Create media_asset rows
INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, r2_key, width, height,
   depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
SELECT 
  'ent_media_' || SUBSTR(ei.id, 4, LENGTH(ei.id) - 12),
  'image',
  ei.url_original,
  ei.url_thumb_r2,
  NULL,
  ei.width,
  ei.height,
  ei.entity_id,
  0.9,
  'entity_image_backfill',
  'approved',
  unixepoch()
FROM entity_image ei
WHERE ei.is_primary = 1;
