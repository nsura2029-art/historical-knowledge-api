-- ========================================
-- Migration 0060: Fix media entity canonical_names and slugs
-- Use the entity id as the slug suffix for uniqueness
-- Generated: 2026-08-09
-- ========================================

UPDATE entity
SET canonical_name = (SELECT e.canonical_name || ' (photo)' FROM entity e WHERE e.id = ma.depiction_entity_id),
    slug = 'media-photo-' || entity.id
FROM media_asset ma
WHERE entity.id = ma.id
  AND ma.depiction_method = 'entity_image_backfill'
  AND entity.id LIKE 'ent_media_%';
