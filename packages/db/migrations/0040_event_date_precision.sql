-- ========================================
-- Migration 0040: Add date_precision column to entity_event
-- Supports the v2 events pipeline (KP-EVENTS)
-- ========================================
-- date_precision: 'DAY' / 'MONTH' / 'YEAR' — how granular the date is
-- target_year already covers year-only cases; this is for the rare cases
-- where we have month+day but no full date.
-- For backfilled rows, we default to 'YEAR' (the prior data only had years).

ALTER TABLE entity_event ADD COLUMN date_precision TEXT NOT NULL DEFAULT 'YEAR'
  CHECK (date_precision IN ('DAY','MONTH','YEAR'));
