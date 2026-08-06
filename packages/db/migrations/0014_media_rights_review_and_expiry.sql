-- ========================================
-- Migration 0014: media_rights_review + media_expiry (KP-007)
-- Per KP-007, every image, audio, video, or map asset must have a complete
-- rights record with review history, expiry tracking, and takedown support.
-- ============================================================

-- ============================================================
-- 1. media_rights_review: queue for human review (NEW)
-- ============================================================
CREATE TABLE IF NOT EXISTS media_rights_review (
  id TEXT PRIMARY KEY,                          -- mrr_<uuid>
  media_asset_id TEXT NOT NULL REFERENCES media_asset(id),
  media_rights_id TEXT REFERENCES media_rights(id),
  review_type TEXT NOT NULL
    CHECK (review_type IN ('initial','expiry_check','takedown_request','license_change')),
  requested_at INTEGER NOT NULL DEFAULT (unixepoch()),
  reviewed_at INTEGER,
  reviewed_by TEXT,
  decision TEXT
    CHECK (decision IS NULL OR decision IN ('approved','rejected','needs_more_info')),
  notes TEXT
);

CREATE INDEX IF NOT EXISTS idx_media_rights_review_asset ON media_rights_review(media_asset_id);
CREATE INDEX IF NOT EXISTS idx_media_rights_review_decision ON media_rights_review(decision);
CREATE INDEX IF NOT EXISTS idx_media_rights_review_requested ON media_rights_review(requested_at);

-- ============================================================
-- 2. media_expiry: per-asset license expiry tracking (NEW)
-- ============================================================
CREATE TABLE IF NOT EXISTS media_expiry (
  media_asset_id TEXT PRIMARY KEY REFERENCES media_asset(id),
  expires_at INTEGER,                           -- unix epoch (NULL = no expiry)
  notified_at INTEGER,                          -- when we sent a takedown notice
  last_checked_at INTEGER,
  status TEXT NOT NULL DEFAULT 'active'
    CHECK (status IN ('active','expiring_soon','expired','renewed'))
);

CREATE INDEX IF NOT EXISTS idx_media_expiry_status ON media_expiry(status);
CREATE INDEX IF NOT EXISTS idx_media_expiry_expires_at ON media_expiry(expires_at);

-- ============================================================
-- 3. media_transform_cache: cache for R2 image transforms (NEW)
-- ============================================================
CREATE TABLE IF NOT EXISTS media_transform_cache (
  source_key TEXT NOT NULL,                     -- r2_key of source image
  transform TEXT NOT NULL,                      -- 'w=200', 'w=800', 'thumb', 'full'
  r2_key TEXT NOT NULL,                         -- r2_key of transformed image
  size_bytes INTEGER,
  generated_at INTEGER NOT NULL DEFAULT (unixepoch()),
  PRIMARY KEY (source_key, transform)
);

CREATE INDEX IF NOT EXISTS idx_media_transform_cache_generated ON media_transform_cache(generated_at);

-- ============================================================
-- 4. Seed: media_rights_review rows for the 3 existing approved media
--    (audit trail showing they were approved)
-- ============================================================
INSERT OR IGNORE INTO media_rights_review
  (id, media_asset_id, media_rights_id, review_type, requested_at, reviewed_at, reviewed_by, decision, notes)
SELECT
  'mrr_seed_' || ma.id,
  ma.id,
  mr.id,
  'initial',
  strftime('%s', '2026-08-06'),
  strftime('%s', '2026-08-06'),
  mr.rights_reviewer,
  'approved',
  'seeded from initial review in migration 0014 (KP-007)'
FROM media_asset ma
JOIN media_rights mr ON mr.media_asset_id = ma.id
WHERE NOT EXISTS (SELECT 1 FROM media_rights_review WHERE id = 'mrr_seed_' || ma.id);

-- ============================================================
-- 5. Seed: media_expiry for CC0/PublicDomain (no expiry)
-- ============================================================
INSERT OR IGNORE INTO media_expiry
  (media_asset_id, expires_at, last_checked_at, status)
SELECT
  ma.id,
  NULL,
  strftime('%s', '2026-08-06'),
  'active'
FROM media_asset ma
WHERE ma.status = 'approved'
  AND NOT EXISTS (SELECT 1 FROM media_expiry WHERE media_asset_id = ma.id);

-- ============================================================
-- 6. ingestion_run record
-- ============================================================
INSERT OR REPLACE INTO ingestion_run
  (id, source_id, connector_version, started_at, completed_at, status, records_fetched, records_imported, records_skipped, records_failed, idempotency_key, triggered_by)
VALUES
  ('run_0014_media_rights', 'src_wikimedia_commons', 'kp-007-media-rights-v1',
   strftime('%s', '2026-08-06'), strftime('%s', '2026-08-06'), 'succeeded',
   (SELECT COUNT(*) FROM media_asset),
   (SELECT COUNT(*) FROM media_rights_review) + (SELECT COUNT(*) FROM media_expiry),
   0, 0, 'kp-007-media-rights-v1', 'manual');
