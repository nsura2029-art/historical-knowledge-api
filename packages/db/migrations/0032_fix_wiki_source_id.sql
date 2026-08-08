-- Migration 0032: Fix mislabeled Wikipedia events
-- The events_extract_v2.py used 'src_wikidata' as source_id, but the data is from
-- English Wikipedia body text extraction (via LLM-style templates), not from
-- Wikidata structured claims. Re-label as 'src_en_wikipedia' to be accurate.

UPDATE entity_event
SET source_id = 'src_en_wikipedia'
WHERE source_id = 'src_wikidata'
  AND confidence = 0.6
  AND source_section IS NOT NULL;
