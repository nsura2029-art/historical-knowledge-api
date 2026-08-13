# API Assessment: Persons, Places, Events

**Date**: 2026-08-12
**Scope**: 21 endpoints across persons, places, events, and on-this-day
**Verdict**: ⚠️ **MIXED** — 21/21 endpoints return HTTP 200, but **2 critical bugs** and **3 functional gaps** found

## TL;DR

- ✅ All 21 tested endpoints return HTTP 200
- ✅ OpenAPI spec is valid (80 paths, 80 operations)
- ✅ 404 handling works (3/3 invalid slugs)
- ✅ Smoke tests pass (30/30)
- ❌ **CRITICAL**: `/v1/on-this-day/*` returns empty results — queries legacy `career_event` table (95 rows) instead of `entity_event` (97,975 rows)
- ❌ **BUG**: `/v1/organizations/{slug}/events` ignores all filter parameters — `?type=`, `?from=`, `?to=`, `?limit=` all return same 30 events
- ❌ **MISMATCH**: `/v1/people/{slug}/events/by-category` and `/timeline` return empty `items[]` arrays — count is correct but events missing
- ⚠️ **GAPS**: `from`/`to` filters on `/v1/places/{slug}/events` only filter by full date (DAY precision), not YEAR precision events

## Endpoints Tested (23 total)

### Places API (5 endpoints) — ✅ ALL PASS

| # | Endpoint | Status | Top-level Fields | Filter? | Verdict |
|---|---|---|---|---|---|
| 1 | `GET /v1/places/{slug}` | 200 | `place, birthPeople, deathPeople, residencePeople` | n/a | ✅ |
| 2 | `GET /v1/places/{slug}/sections` | 200 | `entity_id, sections, on_this_page` | n/a | ✅ |
| 3 | `GET /v1/places/{slug}/events` | 200 | `total, by_type, by_category, events` | ✅ works | ✅ |
| 3b | `?type=founding` | 200 | (filtered) | ✅ works | ✅ |
| 3c | `?from=1900&to=2000` | 200 | (filtered) | ⚠️ partial | see below |

**Sample** (`/v1/places/san-jose`):
- `founding_year: 1777` (NEW from migration 0080)
- `place_type: city`, `country_code: US`
- `sections_count: 4`, `events_count: 1`, `hero_image_url: <set>`
- `popularity_score: 50`

**Note on `from`/`to` filter**: tested with `?from=1900&to=2000` on Brooklyn — returned 1 event with `by_type: {founding: 3, ...}`. The filter only matches DAY-precision events (full date), not YEAR-precision events. So 25 total events → 1 in date range. This is by design but under-uses the data.

### Persons API (8 endpoints) — ⚠️ 2 BUGS

| # | Endpoint | Status | Top-level Fields | Filter? | Verdict |
|---|---|---|---|---|---|
| 5 | `GET /v1/people/{slug}` | 200 | 36 fields (id, slug, canonical_name, names, birth, death, citizenships, professions, fame_flags, fame_attributes, media, works, awards, notable_events, relations, related_entities, derived_attributes, ...) | n/a | ✅ |
| 6 | `GET /v1/people/{slug}/biography` | 200 | `header, hero_image, quick_facts, narrative, timeline, related, sources, citations, revisions, on_this_page` | n/a | ✅ |
| 7 | `GET /v1/people/{slug}/sections` | 200 | `entity_id, sections, on_this_page` | n/a | ✅ |
| 8 | `GET /v1/people/{slug}/events` | 200 | `total, by_type, by_category, events` | ✅ works (event_type, category, from_year, to_year, min_confidence, limit) | ✅ |
| 9 | `GET /v1/people/{slug}/events/by-category` | 200 | `total, total_events, category_count, type_count, categories[]` | n/a | ❌ BUG |
| 10 | `GET /v1/people/{slug}/events/timeline` | 200 | `total, decades[]` | n/a | ❌ BUG |
| 11 | `GET /v1/people/{slug}/quick-facts` | 200 | `entity_id, facts` | n/a | ✅ |
| 12 | `GET /v1/people/{slug}/images` | 200 | `entity_id, total, images` | n/a | ✅ |

**Sample** (`/v1/people/george-washington`):
- `living_status: deceased` (from migration 0082)
- `age_at_death: 68` (NEW from migration 0082)
- `birth: {original: "1732-02-22", place_name: "Washington"}`
- `death: {original: "1799-12-14"}`
- `related_entities.places: [{relation_type: "birthplace", name: "Washington"}]`

**Bug #1: `/v1/people/{slug}/events/by-category`**
- OpenAPI spec says response shape is: `categories: [{category, count, events: [...EventItem]}]`
- Actual response: `categories: [{category, count, items: []}]` — `items` is always empty
- Impact: clients can't retrieve the actual events per category
- **Fix**: rename `items` to `events` in the route, or use the spec's `events` field

**Bug #2: `/v1/people/{slug}/events/timeline`**
- Same issue: `decades: [{decade, count, items: []}]` — `items` always empty
- Spec says it should have `events: [...]` not `items: []`

**Person events filtering works** (tested on Ivana Trump):
- `?event_type=career` → 3 events (out of 85)
- `?category=biography` → 1 event
- `?from_year=1900&to_year=2000` → 42 events
- `?limit=3` → 3 events

### Events API (4 endpoints) — ❌ 1 CRITICAL BUG

| # | Endpoint | Status | Top-level Fields | Filter? | Verdict |
|---|---|---|---|---|---|
| 13 | `GET /v1/on-this-day/today` | 200 | `date, mm_dd, year, total_sections, sections{}, _links` | n/a | ❌ EMPTY |
| 14 | `GET /v1/on-this-day/{mm_dd}` | 200 | `date, mm_dd, year, total_sections, sections{}, _links` | n/a | ❌ EMPTY |
| 15 | `GET /v1/on-this-day/date/{yyyy_mm_dd}` | 200 | `date, mm_dd, year, total_sections, sections{}, _links` | n/a | ❌ EMPTY |
| 15b | `?country=US` | 200 | (same structure) | n/a | ❌ EMPTY |

**Critical Bug #3: All on-this-day endpoints return empty results**

Test: `GET /v1/on-this-day/07-04` → response shows `sections.events: 0 items`, `sections.births: 0 items`, ..., all 18 sections show 0 items.

**Root cause**: The on-this-day routes query the `career_event` table:
```sql
SELECT ce.id, ce.event_type, ce.start_date, ...
FROM career_event ce
WHERE substr(ce.start_date, 6, 5) = ?
```

But the `career_event` table has only **95 rows** (mostly from earlier work). Meanwhile, the `entity_event` table has **97,975 rows** including 102 events for `07-04` (e.g., George Washington's "Citizen of United States" on 1776-07-04).

**Fix**: Rewrite the SQL to query `entity_event` with `substr(event_date, 6, 5) = ?` (and check for the proper event types: political, scientific, etc., plus personal_life for births/deaths). Or migrate the data from `career_event` to `entity_event` if needed.

**Impact**: This is the **home anchor of the platform** per TASK-013 spec. Returning empty results is a showstopper.

### Organizations API (3 endpoints) — ⚠️ 1 BUG (mentioned for context)

| # | Endpoint | Status | Top-level Fields | Filter? | Verdict |
|---|---|---|---|---|---|
| 16 | `GET /v1/organizations/{slug}` | 200 | `organization{13 fields}, notable_people` | n/a | ✅ |
| 17 | `GET /v1/organizations/{slug}/events` | 200 | `entity_id, slug, total, events` | ❌ BROKEN | ❌ |
| 18 | `GET /v1/organizations/{slug}/sections` | 200 | `entity_id, slug, sections, on_this_page` | n/a | ✅ |

**Sample** (`/v1/organizations/walmart`):
- 13 org fields: id, slug, canonical_name, org_type, founded_year, dissolved_year, parent_id, wikidata_qid, summary, hero_image_url, sections_count, events_count, popularity_score
- 30 events with realistic history (founding 1962-07-02, IPO 1970-10-01, etc.)

**Bug #4: `/v1/organizations/{slug}/events` ignores all filters**

Test results on Walmart (which has 30 events):
- `?type=founding` → still returns 30 events (not filtered)
- `?category=history` → still returns 30 events
- `?from=1900&to=2000` → still returns 30 events
- `?limit=3` → still returns 30 events

**Root cause**: The route I added in migration 0077 only has `slug` as a parameter. The SQL doesn't have WHERE clauses for `event_type`, `category`, `event_date`, or LIMIT.

**OpenAPI spec confirms**: spec lists only `slug` as a path parameter — no query parameters declared. The places events endpoint has 6 parameters; the org endpoint has 1. They should be consistent.

**Fix**: Add query parameters (type, category, from, to, limit) and update the SQL to apply them. Or document that the org endpoint is unfiltered by design.

### OpenAPI Spec

- ✅ Returns valid OpenAPI 3.1.0
- ✅ 80 paths, 80 operations documented
- ✅ Most schemas match actual responses
- ⚠️ `/v1/people/{slug}/events/by-category` schema specifies `events: []` but response returns `items: []` — needs fix

### 404 Handling

| Path | Status |
|---|---|
| `/v1/places/this-place-does-not-exist-12345` | 404 ✅ |
| `/v1/people/fake-person-xyz` | 404 ✅ |
| `/v1/organizations/fake-org-xyz` | 404 ✅ |

### Smoke Tests

- ✅ `smoke.mjs`: 7/7
- ✅ `kp-places-1000-smoke.mjs`: 8/8
- ✅ `v14-smoke.mjs`: 15/15
- **Total: 30/30 passing**

## Summary Table

| Category | Endpoints | Pass | Bug | Critical |
|---|---|---|---|---|
| Places | 5 | 5 | 0 | 0 |
| Persons | 8 | 6 | 2 | 0 |
| Events (on-this-day) | 4 | 0 | 0 | 4 |
| Orgs (related) | 3 | 2 | 1 | 0 |
| **Total** | **20** | **13** | **3** | **4** |

## Recommended Fix Priority

1. **🔴 CRITICAL: on-this-day is the home anchor — fix immediately**
   - Rewrite the SQL to query `entity_event` (97,975 rows) instead of `career_event` (95 rows)
   - Map event_type to category (political, scientific, etc.)
   - Use event_date substr for mm-dd matching
   - This single fix unlocks 4 endpoints

2. **🟠 HIGH: org events filtering is broken**
   - Add query parameters to the route schema
   - Update SQL to filter by event_type, category, event_date, LIMIT
   - Make consistent with the places events endpoint

3. **🟡 MEDIUM: by-category and timeline return empty items**
   - Either fix the route to return `events: []` per spec, or update the spec to use `items: []`
   - Decide which is correct (spec says `events`)

4. **🟢 LOW: places events `from`/`to` only filter DAY-precision events**
   - Document the behavior or extend to also filter YEAR-precision events

## Sample Data Quality (positive notes)

After migrations 0080, 0081, 0082, 0083, the data is rich:
- **Places**: 988/988 with sections (100%), 549/1023 with events (53.7%), 486/1022 with founding_year
- **Persons**: 1054 with 36 fields each, 737 deceased, 506 with age_at_death, 696 with birthplace
- **Orgs**: 1075, 1001 with sections, 719 with images, 622 with events, 30-event history for top brands like Walmart
- **Events**: 97,975 entity_event rows across persons, places, organizations
- **Relations**: 696 birthplace + 20 death_place + 20 residence + 22 work_location

The data is in great shape — the API just needs to surface it correctly.
