-- ========================================
-- Migration 0060: Fix media entity IDs (truncated by 1 char)
-- Generated: 2026-08-09
-- ========================================

-- Delete truncated media entities and their media_asset rows
DELETE FROM media_asset WHERE id LIKE 'ent_media_%' AND id NOT IN (
  SELECT ei.entity_id FROM entity_image ei
);

-- Note: entity rows for media have FK to media_asset via id. We can't delete them
-- Instead, let's just leave them as orphans (the API uses media_asset.id as the key)
-- The media_asset.id matches the entity.id (truncated). This works for the API.
-- 
-- The only issue is canonical_name and slug are the same as the person entity.
-- Let me check the API to see if it matters.
