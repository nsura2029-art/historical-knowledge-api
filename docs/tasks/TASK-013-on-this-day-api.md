# TASK-013: Date and "On This Day" APIs

## Status: In Progress

**Author**: Mavis (Mavis)
**Date**: 2026-08-05
**Branch**: `task/TASK-013-on-this-day-spec` (spec only, no code yet)
**Scope**: Tier 1 only — 1700-now, 12 categories

## User intent

Build the public API for the on-this-day experience (the home anchor of the
website). Users want to know "what happened on this day" across history,
filterable by category, country, year range, and personal interest. This is
the highest-leverage surface in the product: it gets traffic from every
mm-dd × category combination.

**Reference UX**: onthisday.com (per user screenshots, 2026-08-05) shows a
year-sorted list of events for a given mm-dd, with curated illustrations
and a hero feature per day. We want the same UX, source-backed.

## Business outcome

- **Traffic magnet**: 365 days × 12 categories = 4,380 base indexable
  pages, plus 365 × 170 years = 62,050 year-specific pages. ~66K indexable
  URLs from on-this-day alone.
- **SEO moat**: every event has a source URL (per source_registry). We
  outrank thin-content competitors by being source-backed.
- **Personalization**: `?country=US` filter enables home-country
  experiences, which the user explicitly asked for.

## In scope / Out of scope

### In scope (Tier 1, MVP)

- **Year range**: 1700-now. Tier 2 (1500-1700) and Tier 3 (500-1500)
  are post-MVP.
- **Categories**: 12 per the librarian taxonomy (see §API contract).
- **Endpoints**: today + mm-dd + yyyy-mm-dd + per-category + country filter.
- **Sections per response**: events, births, deaths, weddings, divorces,
  holidays, plus 9 category sections.
- **Hero image**: one curated illustration per event (Wikimedia Commons).
- **Source attribution**: every event has ≥1 source from source_registry.
- **Manual seed**: 200 events + 50 people + 20 places (Phase B) to demo
  the UI.
- **LLM admin pipeline**: Phase C — separate task TASK-022.

### Out of scope

- **Tier 2/3 year ranges** (1500-now extended) — post-MVP.
- **Image auto-generation** — Wikimedia only for MVP.
- **Live event updates** (today's news) — Phase 4.
- **User accounts / saved searches** — post-MVP.
- **Translations** — English only for MVP.

## Approved data sources and licenses

| Source | License | Use |
|---|---|---|
| **Wikidata SPARQL** | CC0 | Structured P569 (birth), P570 (death), P585 (event date) |
| **Wikipedia REST API** | CC-BY-SA 4.0 | Event prose, "Deaths in YYYY" / "Years in YYYY" |
| **Wikimedia Commons API** | Mostly PD / CC-BY | Event illustrations, person portraits |
| **Nager.Date** | CC-BY | Public holidays (per existing plan) |
| **Our source_registry (107 sources)** | Various | Citing articles, attribution |

**Forbidden** (per user rule, binding): onthisday.com, timeanddate.com,
history.com, britannica.com, social platforms. Use as **reference only**,
no scraping. Reference sites are blocked by Cloudflare from sandbox IP —
use `web_search` for structure research.

## Current behavior

**None**. The on-this-day endpoints don't exist yet. We have:
- `/v1/people/{slug}/timeline` (per-person events, 28+ entities)
- `/v1/years/{year}` (people born/died + events in a single year)
- `/v1/birthdays/{mm}/{dd}` (people born on a given mm-dd)
- `/v1/people/{slug}/related` (relevance-scored)
- `/v1/people/{slug}/references` (sources grouped)

These are building blocks but the on-this-day **composite** is missing.

## Proposed schema and migrations

### New tables (migration 0010)

```sql
-- The on-this-day event (Tier 1: 1700-now, structured)
CREATE TABLE IF NOT EXISTS otd_event (
  id              TEXT PRIMARY KEY,            -- ev_otd_<uuid>
  start_date      TEXT NOT NULL,               -- YYYY-MM-DD (or YYYY-MM or YYYY)
  end_date        TEXT,                        -- for ranges
  date_precision  TEXT NOT NULL DEFAULT 'day'  -- day|month|year
                CHECK (date_precision IN ('day','month','year')),
  title           TEXT NOT NULL,               -- "Battle of Maserfield"
  description     TEXT NOT NULL,               -- 100-200 words
  category        TEXT NOT NULL,               -- 12 enum values
  place_id        TEXT REFERENCES place(id),   -- where it happened
  hero_image_url  TEXT,                        -- Wikimedia Commons URL
  hero_image_credit TEXT,                      -- attribution string
  featured        INTEGER NOT NULL DEFAULT 0,  -- 1 = hero of the day
  source_id       TEXT NOT NULL REFERENCES source_registry(id),
  source_url      TEXT,                        -- specific article URL
  source_locator  TEXT,                        -- section/anchor
  created_at      INTEGER NOT NULL DEFAULT (unixepoch()),
  updated_at      INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX IF NOT EXISTS idx_otd_event_start_date ON otd_event(start_date);
CREATE INDEX IF NOT EXISTS idx_otd_event_category ON otd_event(category);
CREATE INDEX IF NOT EXISTS idx_otd_event_featured ON otd_event(featured) WHERE featured = 1;

-- People-related otd entries (births, deaths, weddings, divorces)
-- These already exist via person.career_event with event_type=birth/death/marriage
-- We just need a query that filters by mm-dd and joins to entity
-- No new table needed.

-- Holidays (recurring, per year per country)
-- Existing: holidays table from Phase 2 (dateandtime-live work)
-- 880 rows, 15 countries × 5 years from Nager.Date
-- We can extend to more countries later.
```

### Why a new `otd_event` table (not reusing `career_event`)?

`career_event` is **per-person** (FK to person). The on-this-day event is
**per-day** (FK to date, may have 0-many related people). They're
conceptually different. Examples:

- "Battle of Maserfield 642" → otd_event (no specific person)
- "Donald Trump indicted 2023" → otd_event (related to Trump via entity_relation)
- "Donald Trump born 1946" → career_event with event_type=birth (person's own life)

We link them via `entity_relation` (otd_event → related person).

### No new tables for holidays/births/deaths

We already have:
- `holidays` (from Nager.Date, 880 rows)
- `entity` + `person` + `career_event` with event_type=birth/death/marriage
- `/v1/years/{year}` already returns people born/died + events in a year
- `/v1/birthdays/{mm}/{dd}` already returns people born on a date

The on-this-day API will **compose** these existing tables, not duplicate
them.

## API contract

### Endpoints

```
# Today view (year-agnostic, for the landing page)
GET /v1/on-this-day/today
GET /v1/on-this-day/{mm-dd}
  Query params:
    ?country={cca2}        # filter births/deaths/weddings to this country
    ?category={category}   # filter events to one category
    ?limit={n}             # per section (default 5)

# Year-list view (per "On This Day in {yyyy}" page)
GET /v1/on-this-day/{yyyy-mm-dd}
GET /v1/on-this-day/{mm-dd}?from=1700&to=1800
  Query params:
    ?country={cca2}
    ?category={category}
    ?limit={n}             # default 50
    ?offset={n}            # for pagination
```

### Response shape (today view)

```json
{
  "date": "2026-08-05",
  "mm_dd": "08-05",
  "sections": {
    "events": [
      {
        "id": "ev_otd_001",
        "year": 1858,
        "date_display": "August 5, 1858",
        "title": "First transatlantic telegraph cable completed",
        "description": "...",
        "category": "technological",
        "place": {
          "name": "Newfoundland, Canada",
          "country_code": "CA",
          "url": "/v1/places/newfoundland"
        },
        "hero_image": {
          "url": "https://upload.wikimedia.org/wikipedia/commons/...",
          "credit": "Wikimedia Commons / Public Domain"
        },
        "source": {
          "tier": "A",
          "source_name": "BBC News",
          "url": "https://www.bbc.com/..."
        },
        "related_people": [
          { "id": "ent_cyrus-field", "canonical_name": "Cyrus West Field", "url": "/v1/people/cyrus-west-field" }
        ],
        "url": "/v1/on-this-day/events/ev_otd_001"
      }
    ],
    "births": [...],       // top 5 people born on this day, 1700-now
    "deaths": [...],       // top 5 people who died on this day
    "weddings": [...],     // top 3
    "divorces": [...],     // top 2
    "holidays": [...],     // holidays observed today (any country)
    "sports": [...],       // category-filtered events, 3-5
    "music": [...],
    "film_tv": [...],
    "tech": [...],
    "science": [...],
    "politics": [...],
    "royal": [...],        // royal & aristocratic
    "disasters": [...],
    "social": [...],       // social & civil rights
    "economic": [...],
    "cultural": [...],
    "religion": [...],     // religious & intellectual
    "exploration": [...],
    "crime": [...]         // crime & justice
  },
  "_links": {
    "self": "/v1/on-this-day/08-05",
    "year_view": "/v1/on-this-day/2026-08-05",
    "year_range": "/v1/on-this-day/08-05?from=1700&to=1800"
  }
}
```

### 12 categories (enum)

```
political
scientific
technological
environmental
cultural
religion
economic
sports
exploration
social
royal
crime
```

(Births/Deaths/Weddings/Divorces/Holidays are SECTIONS, not categories.)

### Per-event response shape (when fetched directly)

```
GET /v1/on-this-day/events/{id}
GET /v1/on-this-day/events/{slug}
  → Full event detail: description, source, related people, related places,
    related events, citations
```

(URL pattern may evolve to `/v1/events/{id}` — see Out of scope.)

## Processing/enrichment steps

### Phase B: Manual seed (1 week)

Curate 200 events across 12 categories, 1700-now. Source each to a
tier A or B source from source_registry. One hero image per event from
Wikimedia Commons.

### Phase C: LLM admin pipeline (2-3 weeks, separate task TASK-022)

Admin dashboard with:
- `/queue/pending` — drafts from LLM, awaiting review
- `/queue/published` — live content
- `/generate` — LLM form (category, era, count)
- `/metrics` — coverage per category, source registry health

LLM pipeline (per (mm-dd, era, category) bucket):
1. CURATE — pull top 20 candidate events from Wikipedia/Wikidata
2. CLASSIFY — LLM assigns category
3. SUMMARIZE — LLM writes 100-200 word description in our tone
4. IMAGE — LLM finds Wikimedia Commons URL
5. SOURCE — LLM finds source URL, validates via HEAD request
6. RELATE — LLM identifies related people (QIDs) + related places
7. STAGE — write to otd_event with editorial_status='pending'
8. REVIEW — admin approves, moves to published

## Security and privacy

- **Open API** (no auth) for read endpoints. Consistent with the rest of
  /v1/*.
- **Rate limiting** (out of scope for TASK-013 — TASK-018).
- **No PII** in event data. People are public figures.
- **Image license** — every hero_image has a credit field; the response
  surfaces the attribution.

## Edge and failure cases

- **Date with no events** — return empty arrays, not 404. The page should
  always render.
- **Date with year precision only** — `date_display` says "August 5, 1858?"
  with the `?` to signal uncertainty.
- **Date range** (event spans multiple days) — `start_date` + `end_date`,
  the event appears on both days.
- **BCE dates** — out of scope for Tier 1 (1700+).
- **Multiple sources** — pick the highest tier (A first), with 1-2 backups
  in the source field.
- **Broken image URL** — fallback to no image (don't break the page).
- **Country code unknown** — return unfiltered results, log a warning.
- **LLM-generated event with invented source** — editorial review catches
  this; source_registry.id is REQUIRED, not optional.

## Tests

- **Smoke v6**: 30+ tests covering:
  - Today endpoint returns valid shape
  - mm-dd endpoint returns 365-day composite
  - yyyy-mm-dd endpoint returns year-specific list
  - Category filter works
  - Country filter works
  - 12 categories all return data (once seeded)
  - Hero image credit is present
  - Source tier is set
  - Related people/places URLs are valid
  - 1700+ boundary enforced (no events before 1700 returned)
  - Empty days return empty arrays, not 404
  - 401/403 not expected (open API)

## Documentation updates

- `apps/api/src/routes/v1/AGENTS.md` — add on-this-day endpoints
- `docs/api/on-this-day.md` — long-form doc with examples
- `PRD-IMPLEMENTATION-NOTES.md` — update MVP scope with Tier 1
- `MVP-STRATEGY-NOTES.md` — already updated
- `docs/tasks/AGENTS.md` — update 20-task status table

## Quality gates

- [ ] All 12 categories return data once seeded
- [ ] Source tier A or B for ≥80% of events
- [ ] Hero image credit present for ≥90% of events
- [ ] 365 days × 12 categories composite query completes in <500ms
- [ ] Year-list view paginates correctly
- [ ] Country filter returns people of that nationality
- [ ] Smoke v6: 30+ tests, all pass
- [ ] OpenAPI spec generated for all new endpoints
- [ ] No 500 errors on any mm-dd in 1700-2026

## Review findings

(Filled at PASS time.)

## Evidence

- On-this-day API deployed to dev (after Phase A complete)
- OpenAPI spec: https://historical-knowledge-api-dev.nsura2029.workers.dev/openapi.json
- Smoke v6: 30+ tests passing
- 200 events seeded with sources
- 50 people with mm-dd-derived birthdays/deaths

## Decision: PASS / BLOCKED

(Filled at PASS time.)

## Next task

After TASK-013 PASS:
- **TASK-022** (LLM admin pipeline + dashboard) — scales events to 16K
- **TASK-014** (Search + intent) — improve /v1/search to surface
  on-this-day queries

## Open questions

1. **Calendrify** — what is it? User said "I will tell you the details".
2. **Image storage** — keep Wikimedia URLs (no copy) or download to R2
   (faster, no dependency)? Recommendation: keep URLs, Wikimedia is
   reliable enough for MVP.
3. **Date precision** — how strict? "August 5, 1858" vs "August 1858" vs
   "1858"? Recommend: prefer day-precision, fall back to month/year with
   `?` suffix.

## Notes

- Tier 2 (1500-1700) deferred per user 2026-08-05
- 12 categories per user feedback 2026-08-05 (librarian taxonomy)
- 2 views: today + year-list
- API surface area: 5 endpoints
- Schema additions: 1 table (`otd_event`)
- Phases: A (API, 1-2w) → B (manual seed, 1w) → C (LLM, 2-3w) → D (scale, 4-6w)
