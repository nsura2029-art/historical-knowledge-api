-- Migration 0043a: Add GDELT to source_registry
INSERT OR IGNORE INTO source_registry
  (id, source_name, source_type, base_url, license_name, license_url,
   commercial_use_status, attribution_required, redistribution_allowed,
   automated_access_status, source_quality_tier, status)
VALUES
  ('src_gdelt', 'GDELT 2.0', 'news_aggregator',
   'https://www.gdeltproject.org',
   'Free for non-commercial use (per GDELT ToS)', 'https://www.gdeltproject.org/about.html#termsofuse',
   'restricted', 1, 0, 'open', 'C', 'APPROVED_BULK');
