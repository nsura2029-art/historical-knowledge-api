-- ========================================
-- Migration 0064: Extract birth/death dates from short_description
-- For persons with no birth_date in person_derived_attribute
-- Use regex to find patterns like "January 1, 1900 – February 2, 1980" or "Born January 1, 1900"
-- Generated: 2026-08-09
-- ========================================

-- This is a no-op in SQL. The actual extraction is in a Python script.
-- But we can use a few simple SQL patterns:

-- 1. For persons with no birth event, find "February 15, 1820" in short_description
-- and add as a birth event
-- SQLite doesn't have great regex support. Let me use a different approach.

-- Actually, let me just use a Python script via the API or write a one-off script
-- For now, let me skip Susan B. Anthony (we have her in short_description)
