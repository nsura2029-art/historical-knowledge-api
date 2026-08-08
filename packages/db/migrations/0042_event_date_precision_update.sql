-- ========================================
-- Migration 0042: Set date_precision based on event_date format for legacy events
-- The 0040 migration added date_precision with default 'YEAR', but
-- existing rows may have full dates in event_date that warrant DAY precision.
-- ========================================

UPDATE entity_event SET date_precision = 'DAY' WHERE event_date LIKE '____-__-__' AND date_precision = 'YEAR';
UPDATE entity_event SET date_precision = 'MONTH' WHERE event_date LIKE '____-__' AND event_date NOT LIKE '____-__-__' AND date_precision = 'YEAR';
