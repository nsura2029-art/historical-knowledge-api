# KP-010: Biographies vertical (end-to-end person page)

> **Status**: Active — 2026-08-06
> **Author**: Mavis (Mavis)
> **Quarter**: Q2 (week 1)
> **Depends on**: KP-003 (claim model) ✅, KP-004 (evidence) ✅, KP-007 (media) ✅
> **Blocks**: KP-016 (grounded AI), KP-019 (editorial console)

## User intent

Ship the **first end-to-end vertical** that ties together everything we've
built: a person page that loads the hero image, quick-facts, narrative
sections, timeline, related people, sources, and citations — all in one
coherent Britannica-style page.

This is the **demo artifact** for the 10-min avg-visit target. It must be
a real, navigable page (not just an API endpoint) that proves the foundation
works.

## Business outcome

- **One URL that demonstrates the whole platform**: e.g. `/person/donald-trump`
- **Proves engagement hooks work**: hero image, timeline, related, citations
- **Surfaces gaps in the foundation** so we fix them before Q3 content
- **Template for the next 5 verticals** (Science, Nature, Geography, Arts, Games)

## In scope / Out of scope

### In scope
- **`GET /v1/people/{slug}/biography`** — single endpoint, all biography data
  - Hero image (approved media only — KP-007 display gate)
  - Quick facts (claims with predicate IN ('born_on', 'died_on', 'spouse', 'nationality', 'known_for'))
  - Narrative sections (from `content_section` table — KP-003 foundation)
  - Timeline (from `career_event` table, already exists)
  - Related people (existing endpoint, linked)
  - Citations (KP-004)
  - Sources (KP-004)
  - Editorial revisions summary (count by review_status)
- **`GET /v1/people/{slug}/sections`** — narrative section list (drilldown)
- **`GET /v1/sections/{id}`** — single section with body_markdown
- **Sticky "On this page" navigation** — server-rendered list of section headings
- **`quick_facts` predicate whitelist** — which predicates surface in the box
- **Backfill narrative sections** for top 5 entities (Donald Trump, Frida Kahlo, A.R. Rahman, Sachin Tendulkar, Aishwarya Rai)

### Out of scope
- **Frontend** — we'll just provide the API. Frontend rendering is a separate
  task (likely KP-019 or a new front-end project).
- **Inline citations rendering** — KP-016 owns grounded AI.
- **Image gallery page** — single hero image only.
- **Comments / community features** — year 2.
- **Save to collection** — engagement feature, separate task.

## Current behavior (today)

We have a fragmented API:
- `GET /v1/people/{slug}` — basic entity
- `GET /v1/people/{slug}/timeline` — events
- `GET /v1/people/{slug}/related` — related people
- `GET /v1/people/{slug}/references` — sources
- `GET /v1/entities/{id}/claims` — atomic claims (KP-003)
- `GET /v1/entities/{id}/media` — media with display gate (KP-007)
- `GET /v1/entities/{id}/sources` — sources drilldown (KP-004)
- `GET /v1/entities/{id}/revisions` — audit trail (KP-004)

A client building a person page today needs 7+ API calls. This task:
1. **Aggregates** into ONE `/biography` endpoint
2. **Adds narrative sections** (new content type)
3. **Defines the "quick facts" predicate whitelist**

## Proposed schema (no new tables — KP-003 created `content_section`)

`content_section` already exists from migration 0012:
```sql
content_section (
  id, entity_id, section_type, heading, body_markdown,
  claim_ids, source_ids, reading_level, language, author_type,
  generator_version, editorial_status, version, timestamps
)
```

We'll add a new section_type value `'narrative'` (already in CHECK constraint)
and backfill 4 narrative sections per top-5 entity.

## API contract

```
GET /v1/people/{slug}/biography
  → Aggregated response (one call, ~50KB JSON)
  → Sections:
    - header: canonical_name, slug, short_description, popularity_score
    - hero_image: { url, thumbnail_url, alt_text, attribution, license_code }
    - quick_facts: [{ label, value, claim_id, confidence }]
    - narrative: [ { heading, section_id, body_markdown, reading_level } ]
    - timeline: [ existing /timeline shape ]
    - related: [ existing /related shape ]
    - sources: { count, list (existing /sources shape) }
    - citations: { bibtex, ris, csljson download URLs }
    - revisions: { pending, approved, rejected, auto_approved counts }
    - on_this_page: [ narrative section headings for sticky nav ]

GET /v1/people/{slug}/sections
  → Just the narrative sections list (lightweight, for nav)

GET /v1/sections/{id}
  → Single section with body_markdown

GET /v1/people/{slug}/quick-facts
  → Just the quick facts (lightweight, for sidebars)
```

## Quick facts predicate whitelist

Per the platform spec, the quick facts box shows the most-asked-about facts:
```ts
const QUICK_FACT_PREDICATES = [
  { predicate: 'born_on',         label: 'Born',     format: 'date' },
  { predicate: 'died_on',         label: 'Died',     format: 'date' },
  { predicate: 'nationality',     label: 'Nationality', format: 'string' },
  { predicate: 'spouse',          label: 'Spouse',   format: 'string' },
  { predicate: 'known_for',       label: 'Known for', format: 'string' },
  { predicate: 'occupation',      label: 'Occupation', format: 'string' },
  { predicate: 'educated_at',     label: 'Education', format: 'string' },
  { predicate: 'cause_of_death',  label: 'Cause of death', format: 'string', only_if_deceased: true },
];
```

## Narrative section template (for LLM-assisted generation)

```markdown
# Early Life
[2-3 paragraphs about birth, childhood, family, education]

# Career
[3-5 paragraphs about professional milestones, key achievements]

# Personal Life
[1-2 paragraphs about relationships, family]

# Legacy
[1-2 paragraphs about impact, awards, historical significance]
```

Each section:
- `reading_level`: 'general' for MVP, 'child' / 'advanced' for later
- `author_type`: 'human' for editor-written, 'assisted' for human+LLM
- `editorial_status`: 'auto_approved' for LLM-generated with high confidence

## Quality gates

- [ ] `/v1/people/{slug}/biography` returns within 200ms (one DB roundtrip per section)
- [ ] Hero image always present for entities with approved media
- [ ] Quick facts shows 4-8 facts per entity
- [ ] At least 2 narrative sections per top-5 entity
- [ ] All sections have `editorial_status != 'rejected'`
- [ ] Citations download URLs work (BibTeX/RIS/CSL JSON from KP-004)
- [ ] Display gate enforced (no rights-unknown images)
- [ ] No regression in v2-v9 smokes (310+ tests)
- [ ] v10 smoke (35+ tests) all pass

## Tests

- **v10-smoke**: 35+ tests
  - Biography aggregation (hero, facts, narrative, timeline, related)
  - Quick facts filter (only whitelisted predicates)
  - Sections list + single section
  - On-this-page navigation
  - Citations download URLs work
  - Display gate enforcement
  - 404 for missing entity
  - 404 for entity without biography data (vs soft response)

## Documentation updates

- `docs/architecture/0006-biography-vertical.md` — ADR
- `apps/api/src/routes/v1/AGENTS.md` — add /biography endpoint
- `docs/api/biography-endpoint.md` — user-facing API doc
- `docs/tasks/KP-010-llm-narrative-generation.md` — sub-spec for LLM generation

## Review findings

(Filled at PASS time.)

## Evidence

- 5 entities with biography data (Trump, Frida, Rahman, Tendulkar, Aishwarya)
- 20+ narrative sections (4 per entity)
- v10 smoke: 35+ tests pass
- All previous smoke (310+ tests) still pass

## Decision: PASS / BLOCKED

(Filled at PASS time.)

## Next task

After KP-010 PASS:
- **KP-011**: Science & Tech vertical (reuse biography pattern, different entity types)
- **KP-014**: Arts & Culture vertical (parallel, uses media pipeline heavily)
- **KP-016**: Grounded AI top questions (uses biography + claim model)
