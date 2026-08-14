# API Bug Fixes — 2026-08-14

## Original Assessment (2026-08-12)

The assessment report at `api-assessment-persons-places-events.md` identified 4 bugs:

1. **CRITICAL**: `/v1/on-this-day/*` returns empty results
2. **HIGH**: `/v1/organizations/{slug}/events` ignores filter parameters
3. **MEDIUM**: `/v1/people/{slug}/events/by-category` and `/timeline` return empty `items` arrays
4. **LOW**: `/v1/places/{slug}/events` from/to only filter DAY-precision events

## Post-Fix Assessment (2026-08-14)

After deploying fixes:

### 1. CRITICAL: On-this-day — ✅ FIXED
- **Before**: All sections returned 0 items
- **After**: 30-49 items per query
  - `/v1/on-this-day/today`: 34 items
  - `/v1/on-this-day/07-04`: 37 items (events + births + deaths)
  - `/v1/on-this-day/date/1776-07-04`: 49 items
  - `/v1/on-this-day/12-25?country=US`: 30 items
- **Root cause fix**: Rewrote `fillSections` in `apps/api/src/routes/v1/on-this-day.ts` to query `entity_event` (97,975 rows) instead of `otd_event` (6 rows) and `career_event` (95 rows).
- **Category mapping**: Added `EVENT_TYPE_TO_CATEGORY` mapper that routes our event_types (founding, political, etc.) to on-this-day's category buckets (political, cultural, etc.)
- **Schema fix**: Removed reference to non-existent `editorial_status` column

### 2. HIGH: Org events filtering — ✅ FIXED
- **Before**: All filters ignored, always returned 30 events
- **After**: Filters work correctly
  - `?type=founding`: total=4 (filtered)
  - `?category=history`: total=0 (no history category for Walmart)
  - `?from=1970-01-01&to=1970-12-31`: total=1 (1970 IPO)
  - `?limit=5`: total=30, returned=5 (paginated)
- **Root cause fix**: Added `type`, `category`, `from`, `to`, `limit` query parameters to the `organizationEventsRoute` schema, and added WHERE clauses to the SQL
- **Consistency**: Now matches the places events endpoint pattern

### 3. MEDIUM: by-category/timeline empty items — ❌ PHANTOM BUG (no fix needed)
- **Investigation**: The actual API returns `events: [...]` (matching the OpenAPI spec), not `items: []`
- **Original assessment was wrong**: My Python test code looked for `items` field, but the API and spec both use `events`
- **Verified working**: by-category returns 7 categories with 1-34 events each, timeline returns 8 decades with 2-29 events each

### 4. LOW: Places events from/to YEAR-precision — ✅ FIXED
- **Before**: `?from=1900&to=2000` on NYC returned total=1 (only 1 DAY-precision event)
- **After**: total=6 (includes YEAR-precision events in the year range)
- **Root cause fix**:
  - SQLite's `strftime('%Y', '1800')` returns -4708 (Julian date interpretation)
  - Fixed by normalizing year-only inputs: `?from=1900` → `'1900-01-01'` for date comparison
  - Added `event_year` column comparison for YEAR-precision events
  - SQL now: `(event_date >= ? OR (event_date IS NULL AND event_year >= ?))`

## Summary

| Bug | Status | Notes |
|---|---|---|
| On-this-day empty | ✅ FIXED | 0 → 30-49 items per query |
| Org events filter | ✅ FIXED | All 5 filter params work |
| by-category/timeline items | ❌ PHANTOM | API was correct, my test was wrong |
| Places from/to YEAR-precision | ✅ FIXED | 1 → 6 events for NYC 1900-2000 |

## Files Changed

- `apps/api/src/routes/v1/on-this-day.ts` — rewrote `fillSections` to query `entity_event`
- `apps/api/src/routes/v1/entities.ts` — added query parameters and WHERE clauses to `organizationEventsRoute`
- `apps/api/src/routes/v1/places.ts` — added OR clause for YEAR-precision events + date normalization

## Smoke Tests

All 30 smoke tests still passing:
- smoke 7/7
- kp-places-1000 8/8
- v14 15/15
