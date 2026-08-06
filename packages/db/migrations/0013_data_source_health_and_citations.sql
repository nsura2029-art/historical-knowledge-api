-- ========================================
-- Migration 0013: data_source_health + citation backfill (KP-004)
-- Per the Britannica-inspired PRD, every source needs a health dashboard
-- (last fetch, success rate, license status) and citations must be
-- exportable in 3 formats (BibTeX, RIS, CSL JSON).
-- ========================================

-- ============================================================
-- 1. data_source_health: per-source metrics (NEW)
-- ============================================================
CREATE TABLE IF NOT EXISTS data_source_health (
  source_registry_id TEXT PRIMARY KEY REFERENCES source_registry(id),
  records_total INTEGER NOT NULL DEFAULT 0,
  records_published INTEGER NOT NULL DEFAULT 0,
  records_pending_review INTEGER NOT NULL DEFAULT 0,
  records_rejected INTEGER NOT NULL DEFAULT 0,
  last_fetch_at INTEGER,
  last_success_at INTEGER,
  last_failure_at INTEGER,
  success_rate_30d REAL,
  average_freshness_days REAL,
  license_status TEXT NOT NULL DEFAULT 'active'
    CHECK (license_status IN ('active','expired','unknown','blocked')),
  last_license_check_at INTEGER,
  notes TEXT,
  updated_at INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX IF NOT EXISTS idx_data_source_health_status ON data_source_health(license_status);
CREATE INDEX IF NOT EXISTS idx_data_source_health_last_fetch ON data_source_health(last_fetch_at);

-- ============================================================
-- 2. Populate data_source_health for every source_registry row
--    (one health row per source; metrics derived from source_record)
-- ============================================================
INSERT OR IGNORE INTO data_source_health
  (source_registry_id, records_total, records_published, records_pending_review, records_rejected,
   last_fetch_at, last_success_at, success_rate_30d, average_freshness_days, license_status,
   last_license_check_at, updated_at)
SELECT
  reg.id,
  COALESCE(sr_count.total, 0) AS records_total,
  COALESCE(sr_count.success, 0) AS records_published,
  COALESCE(sr_count.pending, 0) AS records_pending_review,
  0 AS records_rejected,
  sr_count.last_fetched AS last_fetch_at,
  sr_count.last_success AS last_success_at,
  CASE
    WHEN sr_count.total > 0 THEN CAST(sr_count.success AS REAL) / sr_count.total
    ELSE NULL
  END AS success_rate_30d,
  CASE
    WHEN sr_count.last_fetched IS NOT NULL
    THEN (strftime('%s', '2026-08-06') - sr_count.last_fetched) / 86400.0
    ELSE NULL
  END AS average_freshness_days,
  CASE
    WHEN reg.status IN ('APPROVED_API','APPROVED_BULK','LINK_ONLY') THEN 'active'
    WHEN reg.status IN ('LICENSE_REQUIRED','BLOCKED_OR_RESTRICTED','PROHIBITED') THEN 'blocked'
    ELSE 'unknown'
  END AS license_status,
  strftime('%s', '2026-08-06') AS last_license_check_at,
  strftime('%s', '2026-08-06') AS updated_at
FROM source_registry reg
LEFT JOIN (
  SELECT
    source_id,
    COUNT(*) AS total,
    SUM(CASE WHEN fetch_status = 'success' THEN 1 ELSE 0 END) AS success,
    SUM(CASE WHEN fetch_status = 'pending' THEN 1 ELSE 0 END) AS pending,
    MAX(fetched_at) AS last_fetched,
    MAX(CASE WHEN fetch_status = 'success' THEN fetched_at ELSE NULL END) AS last_success
  FROM source_record
  GROUP BY source_id
) sr_count ON sr_count.source_id = reg.id
WHERE NOT EXISTS (SELECT 1 FROM data_source_health WHERE source_registry_id = reg.id);

-- ============================================================
-- 3. ingestion_run record for the backfill
-- ============================================================
INSERT OR REPLACE INTO ingestion_run
  (id, source_id, connector_version, started_at, completed_at, status, records_fetched, records_imported, records_skipped, records_failed, idempotency_key, triggered_by)
VALUES
  ('run_0013_source_health', 'src_wikipedia', 'kp-004-source-health-v1',
   strftime('%s', '2026-08-06'), strftime('%s', '2026-08-06'), 'succeeded',
   (SELECT COUNT(*) FROM source_registry),
   (SELECT COUNT(*) FROM data_source_health),
   0, 0, 'kp-004-source-health-v1', 'manual');
