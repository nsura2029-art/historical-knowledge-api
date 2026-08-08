-- Migration 0031a: Add DBpedia to source_registry for FK references in entity_event
INSERT OR IGNORE INTO source_registry
  (id, source_name, source_type, base_url, license_name, license_url,
   commercial_use_status, attribution_required, redistribution_allowed,
   automated_access_status, source_quality_tier, status)
VALUES
  ('src_dbpedia', 'DBpedia', 'aggregator',
   'https://dbpedia.org',
   'CC BY-SA 4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'allowed', 1, 1, 'open', 'B', 'APPROVED_BULK');
