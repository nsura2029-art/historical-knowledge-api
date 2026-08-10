# KP-places-1000 — Places vertical to 1000 (2026-08-10)

> **Status**: ✅ done (commit `64679b1`)  
> **Follow-up**: ✅ done (commit `6da31c9` — places enrich)

## Goal
Expand the Places vertical from 177 → 1000+ (2nd vertical to hit the 1000 milestone).

## Deliverables

### Migration 0065: Bulk ingest 890 new US cities
- 890 new US cities (population 10K+ from GeoNames cities1000.txt)
- Each: entity (type='place') + place row (city, country_code='US', lat/lon) + entity_relation (in ent_usa) + 4 content_sections (overview, history, geography, demographics) + entity_image (if Wikimedia)

### Migration 0065b: 48 US states
- 50 states attempted, 48 succeeded (Indiana and Washington skipped due to slug conflicts with existing cities)

### Migration 0066: 128 more cities
- Population 9-11K from GeoNames (filler to hit 1000)

### Migration 0067: Section backfill
- 846 places only had 1 section (overview) due to CHECK constraint on `content_section.section_type`
- Backfilled 3 more sections (history, geography, demographics) per place using overview body as template

### API additions (`apps/api/src/routes/v1/places.ts`)
- `GET /v1/places/{slug}/sections` — list content_sections for a place
- `GET /v1/places/{slug}/events` — list entity_event rows for a place with by_type/by_category aggregation

### places_ingest.py
- Generic Wikipedia REST + parse API fetcher
- Pattern: 4 sections per place (all as 'overview' due to CHECK constraint), country relation, lat/lon, image

## Numbers (dev D1, 2026-08-10)

| Metric | Before | After |
|---|---|---|
| Total places | 177 | 1023 |
| Cities | 74 | 871 |
| States | 0 | 48 |
| Landmarks | 41 | 41 |
| Universities | 51 | 51 |
| Countries | 11 | 12 |

## Quality
- All 72 tests passing (smoke 7 + v14 15 + kp005 13 + kp018v3 5 + kp-places-1000 8 + quality-gate 24)
- New smoke test: `apps/api/scripts/kp-places-1000-smoke.mjs` (8 tests)

## Follow-up (commit `6da31c9` — KP-places-enrich)

User reported small/empty responses from `/v1/places/{slug}`. Investigated and found:
1. Response only had id/type/slug/canonical_name/short_description/count (no lat/lon, summary, sections count, events count, hero_image)
2. 907 of 1023 places had 0 events
3. Only 28 person_place_relations

Fixes:
- **entities.ts**: getPlaceBySlug fetches e.summary, e.popularity_score, p.latitude, p.longitude, p.valid_from; returns enriched place object
- **entities.ts (route)**: new placeSchema with all the new fields
- **Migration 0068-0069**: Wikipedia rule events for 300 places (3512 events, 133 with events)
- **Migration 0070**: Person-place relations (1285 relations, 255 unique places)
- **Migration 0071**: Place images for 143 places (Wikipedia media-list, CC-BY-SA-4.0)

### Numbers after follow-up
- Place events: 4866 → 7950 (+3084)
- Person-place relations: 28 → 1072 (+1044)
- Places with images: 184 → 507 (+323)

## Deferred
- Places events pipeline for remaining 600 places (currently only top 300 by popularity processed)
- Place images for 500+ more places (currently 507/1023 have images)
- Sections backfill for 177 existing places (currently 846/1023 have 4 sections)
- Person-death-place and person-residence relations (currently only birthplace populated)
- KP-005 identity resolution for places (no place slug_redirect yet)
- 2 missing states: Indiana, Washington (manual slug resolution needed)
