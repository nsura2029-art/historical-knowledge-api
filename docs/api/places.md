# Places API (`/v1/places/*`)

> **Status**: 3 endpoints shipped 2026-08-10 (commit `64679b1` + `6da31c9`)  
> **Source of truth**: `apps/api/src/routes/v1/entities.ts` (placeRoute) + `apps/api/src/routes/v1/places.ts`

The Places API exposes the Geography vertical. There are **1023 places** in the dev D1
(871 cities + 48 states + 41 landmarks + 51 universities + 12 countries).

## `GET /v1/places/{slug}`

Returns the enriched place detail page.

**Response shape**:
```json
{
  "place": {
    "id": "plc_brooklyn",
    "type": "place",
    "slug": "brooklyn",
    "canonical_name": "Brooklyn",
    "short_description": "Brooklyn, coextensive with Kings County...",
    "summary": "Brooklyn, coextensive with Kings County...",
    "place_type": "city",
    "country_code": "US",
    "latitude": 40.6501,
    "longitude": -73.94958,
    "founding_year": null,
    "sections_count": 4,
    "events_count": 25,
    "hero_image_url": null,
    "popularity_score": 27,
    "count": 8
  },
  "birthPeople": [
    {
      "id": "ent_billy-joel",
      "slug": "billy-joel",
      "canonical_name": "Billy Joel",
      "short_description": "...",
      "living_status": "undisclosed",
      "generation_slug": null,
      "birth_year": 1949,
      "hero_image_url": "https://upload.wikimedia.org/...",
      "relation_strength": 1
    }
  ],
  "deathPeople": [...],
  "residencePeople": [...]
}
```

**Response fields**:

| Field | Type | Notes |
|---|---|---|
| `place.id` | string | `plc_<slug>` |
| `place.type` | string | always "place" |
| `place.slug` | string | URL-safe identifier |
| `place.canonical_name` | string | Display name |
| `place.short_description` | string | 500 chars from entity.summary |
| `place.summary` | string | Full summary text |
| `place.place_type` | enum | city, state, landmark, university, country |
| `place.country_code` | string | ISO 3166-1 alpha-2 (e.g. "US") |
| `place.latitude` | number | GeoNames |
| `place.longitude` | number | GeoNames |
| `place.founding_year` | number? | from place.valid_from (or null) |
| `place.sections_count` | number | count of content_section rows |
| `place.events_count` | number | count of entity_event rows |
| `place.hero_image_url` | string? | primary entity_image (or null) |
| `place.popularity_score` | number | 0-100 (from entity.popularity_score) |
| `place.count` | number | total related entities (birth + death + residence) |
| `birthPeople[]` | Person[] | People with birthplace at this place (max ~50) |
| `deathPeople[]` | Person[] | People who died at this place |
| `residencePeople[]` | Person[] | People with residence at this place |

**Errors**:
- `404`: Place not found

**Example**:
```bash
curl https://historical-knowledge-api-dev.nsura2029.workers.dev/v1/places/brooklyn
```

## `GET /v1/places/{slug}/sections`

List all content_section rows for a place. Lightweight — for nav.

**Response shape**:
```json
{
  "place_id": "plc_brooklyn",
  "place_slug": "brooklyn",
  "total": 4,
  "sections": [
    {
      "id": "sec_brooklyn_overview",
      "heading": "Overview",
      "section_type": "overview",
      "reading_level": "general",
      "editorial_status": "approved",
      "display_order": 0
    },
    {
      "id": "sec_brooklyn_history",
      "heading": "History",
      "section_type": "overview",
      "reading_level": "general",
      "editorial_status": "approved",
      "display_order": 10
    }
  ]
}
```

**Note**: All 4 sections are stored as `section_type='overview'` because the `content_section.section_type` CHECK constraint does NOT include 'history', 'geography', or 'demographics' (as of migration 0067). The semantic difference is in the `heading` field.

## `GET /v1/places/{slug}/events`

All `entity_event` rows for a place. Same shape as `/v1/people/{slug}/events`.

**Query params**:
- `type` — filter by event_type (e.g. `founding`, `major_event`)
- `category` — filter by category (e.g. `history`, `culture`)
- `from` — start date (YYYY-MM-DD)
- `to` — end date (YYYY-MM-DD)
- `limit` — max events (default 50, max 500)

**Response shape**:
```json
{
  "place_id": "plc_brooklyn",
  "place_slug": "brooklyn",
  "total": 25,
  "by_type": { "founding": 1, "major_event": 24 },
  "by_category": { "history": 18, "culture": 7 },
  "events": [
    {
      "id": "ev_brooklyn_1898_consolidation",
      "event_date": "1898-01-01",
      "event_year": 1898,
      "event_type": "founding",
      "category": "history",
      "title": "Brooklyn consolidation into New York City",
      "body": "Brooklyn, then the third-largest city in the United States...",
      "source_id": "src_en_wikipedia",
      "source_section": "History",
      "confidence": 0.85,
      "date_precision": "YEAR"
    }
  ]
}
```

## Performance

- `/v1/places/{slug}`: ~30-50ms (aggregated 3-query batch for sections/events/hero)
- `/v1/places/{slug}/sections`: ~10-15ms
- `/v1/places/{slug}/events`: ~15-25ms

## Slug redirects

The place detail endpoint supports the same `slug_redirect` resolution as people
(max 5 hops, loop detection). `new-york` → `new-york-city` works.

## See also

- `docs/tasks/KP-places-1000.md` — task spec
- `docs/quality-reports/KP-places-1000.md` — quality report
- `apps/api/src/routes/v1/entities.ts:215-340` — placeRoute implementation
- `apps/api/src/routes/v1/places.ts` — sections + events routes
- `apps/api/src/repositories/entities.ts:getPlaceBySlug` — repository
