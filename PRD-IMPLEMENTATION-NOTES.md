# Historical Knowledge Platform — Implementation Notes

> Companion to `PRD.md` v1.0 (4 Aug 2026) and `AGENT-INSTRUCTIONS.md` v1.0 (4 Aug 2026)
> **The agent-instructions playbook is the source of truth for HOW we work.** This file captures: what to reuse, the 20-task sequence, MVP scope, weekly cadence, page taxonomy, repo decision, and the "no changes to existing" guard.

---

## 0. Source-of-truth hierarchy

1. **`AGENT-INSTRUCTIONS.md`** — the operating contract, task lifecycle (12 steps), task file template, repo structure, API conventions, response shapes, 20-task sequence, quality commands, PR review checklist, definition of done. **Follow this exactly.**
2. **`PRD.md`** — what the product is, the canonical data model, the 14 quality gates, the MVP acceptance criteria.
3. **This file** — decisions specific to this build (data reuse, MVP scope, weekly cadence, page taxonomy, repo choice) that extend but don't override the above.

When in doubt, the playbook wins on **how**, the PRD wins on **what**, this file wins on **when and what specifically for this product**.

---

## 1. Reuse surface (what we copy from `dateandtime-api-v2`, what stays fresh)

User directive: **reuse existing, but independent**. Copy what is required from existing schema/records; this platform has its own schema. **No changes to the existing repo.**

| Data | Source of truth | Copy strategy |
|---|---|---|
| **Cities (170K)** | `dateandtime-api-v2.cities` | One-time seed into a new `place` table; only fields this platform needs (id, name, lat/lon, country, tz). Do **not** link FK — keep our `place.id` separate. |
| **Countries (250)** | `dateandtime-api-v2.countries` | One-time seed into our `place` (for country-level records). |
| **Timezones (464)** | `dateandtime-api-v2.time_zones` | One-time seed only if we need to render "what local time" badges. Otherwise skip. |
| **Holidays (15,638 occurrences)** | `dateandtime-api-v2.holiday_occurrence` | Copy as **claims of type `religious_or_cultural_observance`**, not as authoritative truth. Calendarific stays a Tier D source here too. |
| **dr5hn `alias` table** | `dateandtime-api-v2.place_names` | One-time seed into our `alias` table (especially historical renamings: Edo→Tokyo, Bombay→Mumbai, Leningrad→St Petersburg, Constantinople→Istanbul, Peking→Beijing). |

**Code (not data) — NOT shared in MVP.** The playbook's monorepo structure has its own `packages/contracts` / `packages/db` / `packages/ingestion` — these are NOT shared with dateandtime-api-v2.

**Schema independence** — every entity in this PRD gets a fresh `id` (our UUIDs, not dr5hn's). Cross-system lookups happen via `external_identifier` (e.g., `scheme='dr5hn_city'`, `identifier=5128581`).

**Task that owns the data copy**: TASK-007 (GeoNames and place resolution) for cities/countries/tz, and TASK-006 (Wikidata seed connector) for any authority-ID cross-references. The seed script is a one-time, idempotent operation under `scripts/seed/copy-from-dateandtime.sh` — reads only, no writes to existing.

---

## 2. Task sequence — adopt the playbook's 20 tasks

**Source of truth**: `AGENT-INSTRUCTIONS.md` §8. I do NOT define my own phases. The 20 tasks ARE the plan. Here they are in dependency order with my notes on each:

| # | Task | Phase | Notes |
|---|---|---|---|
| 001 | **Platform foundation** | 0 | This is the first task to start. Worker/Hono, typed bindings, CI, health/version routes. |
| 002 | API contract and documentation | 0 | Zod schemas, OpenAPI, problem+json, pagination. |
| 003 | Source registry and licensing | 0 | No connector can run without an active source policy. Critical. |
| 004 | Core canonical schema | 1 | entity, event, person, place, organization, claim, source, claim_source, relation, alias, external_identifier. The historical-date component model lives here. |
| 005 | Raw ingestion framework | 1 | Connector interface, R2 raw snapshots, queue, job ledger, checksum, replay. |
| 006 | Wikidata seed connector | 2 | First real source. CC0. Entity-type allowlist. |
| 007 | GeoNames and place resolution | 2 | Modern place hierarchy, alternate names, coordinates, timezones. **This is where the dateandtime-api-v2 data copy slots in.** |
| 008 | Historical dates and calendars | 1 | Parser, serializer, comparison rules, API schema. **The 3 rules I called out live here.** |
| 009 | Entity resolution and deduplication | 2 | Aliases, authority IDs, duplicate confidence, manual merge review. |
| 010 | Claim provenance and conflict model | 1 | Atomic claims, claim_source, claim_conflict_group. **The "disputed = range, not pick-one" rule lives here.** |
| 011 | Taxonomy and enrichment | 3 | Categories, topics, AI suggestions as candidates. |
| 012 | Public entity APIs | 3 | event, person, place, topic, source detail endpoints. |
| 013 | Date and "On This Day" APIs | 3 | `/v1/dates/{date}`, `/v1/on-this-day/{mm-dd}`. |
| 014 | Search and user intent | 3 | Vectorize as derived, not authoritative. |
| 015 | Related links and timelines | 3 | Relationship-driven internal links. |
| 016 | Editorial and correction workflow | 4 | Moderation, RBAC, audit. |
| 017 | Generated learning content | 5 | RAG-only generation. Citation coverage gates. |
| 018 | Security, quotas and API consumers | 4 | API keys, plans, rate limits, admin auth. |
| 019 | Observability and operations | 4 | Logs, traces, dashboards, runbooks. |
| 020 | Release readiness and public developer portal | 5 | SDKs, examples, migration policy, launch checklist. |

**Key insight from the playbook**: tasks have a real dependency order. Skipping ahead is forbidden (§1 operating contract). For example, TASK-004 must land before TASK-010 (claim provenance needs the entity table to exist), and TASK-003 (source registry) is a hard gate before any connector task (TASK-006, 007) can start.

**The 12-step task lifecycle is non-negotiable** (§2). Every task must produce:
- `docs/tasks/TASK-###-short-name.md` (the spec, using §3 template)
- `docs/quality-reports/TASK-###-md` (the evidence with PASS/BLOCKED decision)

**Definition of Done** (§13) is the gate between tasks. "Code compiles" is not enough.

---

## 3. HistoricalDate schema (for OpenAPI + D1)

The playbook's TASK-008 ("Historical dates and calendars") is the canonical owner of this. My initial schema proposal still applies — proleptic Gregorian for `earliest_gregorian`/`latest_gregorian`, `original` preserved verbatim, BCE = negative year, `certainty: disputed` = range. **The 3 non-negotiable rules carry forward**:

1. `original` is **always** preserved verbatim — the editor who wrote "15 Tishrei 5785" gets that back when reading the source.
2. `earliest_gregorian` / `latest_gregorian` are **proleptic** (Julian-before-1582 still uses Julian arithmetic but rendered as Gregorian for search). We never silently convert a Julian date to Gregorian.
3. **Disputed = range, not pick-one**. A "Was Cyrus born 600 or 576 BCE?" claim gets `earliest: -0600, latest: -0576, certainty: disputed, precision: range`.

The playbook's TASK-008 edge tests are excellent and I'll borrow: **44 BCE, year zero convention, leap dates, Julian/Gregorian switch, month-only, circa, before/after, disputed range**. The BCE/astronomical-year-zero convention is in there too — important for the Julian/Gregorian switch.

### D1 storage (per `event` row)

D1 can't store nested objects natively, so we flatten:

```sql
CREATE TABLE event (
  id              TEXT PRIMARY KEY,                  -- ulid
  type            TEXT NOT NULL,                     -- 'historical_event' | 'birth' | 'death' | 'observance'
  summary         TEXT NOT NULL,
  description     TEXT,
  importance      INTEGER,                           -- 1-5, editorial weighting

  -- HistoricalDate columns (per TASK-008 schema)
  date_original          TEXT NOT NULL,
  date_search            TEXT NOT NULL,
  date_earliest          TEXT NOT NULL,               -- "1969-08-15" or "-0044-03-15"
  date_latest            TEXT,                        -- nullable
  calendar               TEXT NOT NULL,
  precision              TEXT NOT NULL,
  certainty              TEXT NOT NULL,
  time_of_day            TEXT,

  place_id         TEXT,                             -- FK to our place table (NOT dr5hn)
  FOREIGN KEY (place_id) REFERENCES place(id)
);

CREATE INDEX idx_event_date_search   ON event(date_search);
CREATE INDEX idx_event_earliest      ON event(date_earliest);
CREATE INDEX idx_event_latest        ON event(date_latest) WHERE date_latest IS NOT NULL;
CREATE INDEX idx_event_type          ON event(type);
```

BCE: `-0044-03-15` sorts correctly because SQLite's text comparison puts `-` before digits. For range queries like "events in 1969" we hit `date_earliest <= '1969' AND date_latest >= '1969'`.

---

## 4. MVP scope — what users wanted

Sources of intent (this conversation, 2026-08-04):
- "for mvp we are good with what we have" → don't over-scope
- Reference to onthisday.com and timeanddate.com/on-this-day/ → **on-this-day browsing is the anchor**
- Reuse + independent → "on this day" pulls from our data, not theirs
- Weekly update cadence → ingestion is a scheduled operation, not a one-time seed

**MVP scope (in priority order)** — mapped to playbook tasks where applicable:

1. **Today / On-this-day page** (the home anchor) — `/{today}`, `/{mm-dd}`, `/{yyyy-mm-dd}` with sections: events, births, deaths, observances/holidays → **TASK-013**
2. **Event detail pages** — `/{event-slug}-{id}` with claims + sources, related events, related people, related place → **TASK-012, TASK-010**
3. **Person detail pages** — `/{person-slug}-{id}` with timeline (life events), sources, related people → **TASK-012**
4. **Place pages (lightweight)** — `/{place-slug}-{id}` showing events that happened there (links to dateandtime-api-v2 for full city data) → **TASK-007, TASK-012**
5. **Selected anniversaries widget** — what timeanddate.com shows on the homepage: "this week in history" with editorial picks → **TASK-013**
6. **Source-backed claims** — every event detail page shows at least 1 `claim_source` link; an editor can correct → **TASK-010**
7. **Public API** — `/v1/on-this-day/{mm-dd}` + `/v1/events/{id-or-slug}` + `/v1/people/{id-or-slug}` + `/v1/dates/{yyyy-mm-dd}` → **TASK-012, TASK-013**
8. **Multilingual** — English only for MVP; schema supports it (translations table ready), UI deferred
9. **RSS / JSON feed** — `/v1/feeds/on-this-day.rss` for "today in history" (small win, big SEO/aggregation)
10. **Sitemap** — `/sitemap.xml` segmented by page type with `lastmod` for fresh content signals

**Out of scope for MVP** (parked):
- User accounts, saved collections → beyond TASK-016
- Generation (RAG summaries, audio, quizzes) → TASK-017, deferred
- Topic pages (war/science/etc.) → TASK-011, deferred
- Country-specific landing pages → `/country/{cca2}` deferred
- Non-English UI → deferred
- Full ingestion from Wikidata/Pleiades/VIAF in MVP → start with **one curated source** (Wikidata dump per TASK-006) + a small editorial backfill of "the famous 1000"

**MVP acceptance** (from PRD §16, mapped to playbook tasks):
- ≥50K verified events → covered by TASK-006 + TASK-012 + weekly cadence
- ≥50K people → covered by TASK-006 + TASK-012
- ≥10K places → covered by TASK-007
- Every claim has source provenance → **TASK-010** is the gate
- Disputed dates and conflicting claims coexist → TASK-010 (claim_conflict_group) + TASK-008 (range model)
- Pagination + caching + rate limits + consistent errors → **TASK-002** (envelope) + **TASK-018** (quotas)
- Quality report auto-blocks deploy when gates fail → **Definition of Done** (§13) enforces this

---

## 5. Weekly update cadence (push events to prod)

User's explicit ask: a weekly rhythm of shipping events to prod. Here's the operational model — adapted to the playbook's task lifecycle:

| Cadence | Activity | Owner | Task linkage |
|---|---|---|---|
| **Daily** | Wikidata delta sync (incremental) — auto-triggered via scheduled Worker | Pipeline | TASK-006 (Wikidata seed connector) |
| **Mon** | Auto: quality gates (14 from PRD §14) run on weekend ingest; failures quarantined | Pipeline | Definition of Done §13 |
| **Tue** | Editorial review: humans skim 200-500 new claims, approve/reject/merge | Editor | TASK-016 (editorial workflow) |
| **Wed** | Build: `publish` job promotes approved claims from `staging` to `entity`/`event`/`claim` | Pipeline | TASK-005 (raw ingestion framework) |
| **Wed PM** | Deploy: Worker ships new OpenAPI version + `/v1/changelog` entry | Dev | TASK-019 (observability), TASK-020 (release) |
| **Thu** | SEO pulse: regenerate sitemap, ping Google, check Search Console | Dev | Out of playbook, ops-only |
| **Fri** | Report: "This week in history content" — #events shipped, #rejected, #disputed, #sources added | Pipeline | `/v1/admin/metrics` per TASK-019 |

**Targets for the first 8 weeks** (ramp to 50K events / 50K people / 10K places by week 8):

| Week | Events target | People target | Places target | Notes |
|---|---|---|---|---|
| 1 | 200 | 50 | 20 | Manual editorial seed: moon landing, 9/11, top 100 most-searched |
| 2 | 500 | 200 | 50 | + Wikidata birth/death of top 1000 (TASK-006 partial) |
| 3 | 2,000 | 1,000 | 200 | TASK-006 first batch |
| 4 | 5,000 | 3,000 | 500 | TASK-007 (GeoNames + place resolution) |
| 5 | 10,000 | 8,000 | 1,500 | VIAF cross-ref |
| 6 | 20,000 | 20,000 | 4,000 | Backfill sweep |
| 7 | 35,000 | 35,000 | 7,000 | Topic clustering pass (TASK-011) |
| 8 | **50,000** | **50,000** | **10,000** | MVP acceptance bar met |

Each week ships: 1 content update + 1 deploy + 1 changelog post. The pipeline is idempotent — re-running a week is a no-op.

**Weekly update page** at `/changelog/{yyyy-ww}` shows what shipped, what was rejected, what was disputed, what was merged. This is the editorial transparency moat.

---

## 6. Page taxonomy + indexability gates (against the thin-SEO risk)

User reference: onthisday.com has 200K events across 4 categories × 365 days = ~1500 base daily pages, plus thousands of person/event pages. Their URL pattern: `/{category}/{month}/{day}` with `?p=N` for pagination. They've been hit by the thin-SEO problem (per PRD §17 risk).

### 6.1 Page types we'll ship (MVP)

| Type | URL pattern | Volume (MVP) | Indexable? | Gate |
|---|---|---|---|---|
| Home | `/` | 1 | ✓ | always |
| Today | `/today` | 1 (date-shifted) | ✓ | always |
| On-this-day (date) | `/on-this-day/{mm-dd}` | 366 | ✓ | always (curated) |
| On-this-day (specific) | `/on-this-day/{yyyy-mm-dd}` | 365 × ~5 yrs = 1,825 | ✓ | ≥1 event with sources |
| Event detail | `/event/{slug}-{id}` | 50,000 | ✓ | ≥1 source + ≥3 claims |
| Person detail | `/person/{slug}-{id}` | 50,000 | ✓ | ≥1 source + birth/death dates |
| Place detail | `/place/{slug}-{id}` | 10,000 | ✓ (cautious) | ≥3 events |
| Births (category × date) | `/births/{mm}/{dd}` | 372 | ✓ | ≥5 births |
| Deaths (category × date) | `/deaths/{mm}/{dd}` | 372 | ✓ | ≥5 deaths |
| Events (category × date) | `/events/{mm}/{dd}` | 372 | ✓ | ≥3 events |
| Observances (category × date) | `/observances/{mm}/{dd}` | 372 | ✓ | ≥1 observance |
| Year landing | `/year/{yyyy}` | 200 (1900-2099, sparse) | ✓ if data exists | ≥1 event |
| Decade landing | `/decade/{yyyy}s` | 30 | ✓ | ≥10 events |
| Century landing | `/century/{roman}` | 30 | ✓ | ≥50 events |
| Topic hub | `/topic/{slug}` | 30 (curated) | ✓ | ≥100 events |
| Country page | `/country/{cca2}` | 250 | ✓ (Phase 2) | ≥20 events |
| Changelog | `/changelog/{yyyy-ww}` | 52/yr | noindex | always |
| API docs | `/docs` | 1 | noindex | always |

**Total indexable pages at MVP**: ~366 + 1,825 + 50,000 + 50,000 + 10,000 + 1,488 + 1,488 + 1,488 + 1,488 + ~100 year/decade/century = **~117,000 indexable URLs** at the 50K/50K/10K bar.

Compare to onthisday.com: 226,209 pages from a single scraper, 4 categories × 12 × 31 × N pages. Our number is in the same ballpark. **The thin-page risk is real.**

### 6.2 Indexability gates (encoded in `src/lib/quality-gates.ts`)

A page is **indexable** if and only if it passes ALL of:

| Gate | Threshold (MVP) | Action on fail |
|---|---|---|
| **Content length** | ≥ 80 words on detail pages; ≥ 200 on landing pages | noindex, exclude from sitemap |
| **Source count** | ≥ 1 source per event/person page; ≥ 2 for "high-stakes" (wars, deaths, controversial) | noindex |
| **Internal links** | ≥ 3 outbound internal links to related entities | noindex |
| **Claims count** | ≥ 3 distinct claims (proves editorial depth, not stub) | noindex |
| **Duplicate check** | Not a 90%+ content match against another page | noindex + 301 |
| **External identifier** | At least 1 authority ID (Wikidata QID, VIAF, etc.) for entities | noindex |
| **Editorial approval** | Has at least 1 `editorial_revision` with `status='approved'` | noindex |
| **Date validity** | `date_original` is non-empty + `date_earliest` parses | noindex |
| **Pagination depth** | Don't index `?p=N` for N > 1 | robots.txt / canonical |
| **Calendar purity** | If `calendar != 'gregorian'`, must have `date_earliest` translation to Gregorian | noindex |

**Implementation**:
- `quality-gates.ts` exports `evaluatePageForIndex(url) -> {indexable: bool, reasons: string[]}` called by the page render layer
- Failed pages get `<meta name="robots" content="noindex, nofollow">` + excluded from sitemap
- Sitemap is generated nightly, only includes indexable pages
- Search Console monitored for "Discovered - currently not indexed" → ping back into editorial queue

### 6.3 URL pattern (final)

```
/                                                  # home, date-shifted
/on-this-day/today                                 # 302 → today's date
/on-this-day/{mm-dd}                               # Aug 04
/on-this-day/{yyyy-mm-dd}                          # Aug 04 1969
/event/{slug}-{id}                                 # moon-landing-19690720
/person/{slug}-{id}                                # neil-armstrong-19300805
/place/{slug}-{id}                                 # sea-of-tranquillity
/births/{mm}/{dd}                                  # /births/08/05
/deaths/{mm}/{dd}                                  # /deaths/08/05
/events/{mm}/{dd}                                  # /events/08/05
/observances/{mm}/{dd}                             # /observances/08/05
/year/{yyyy}                                       # /year/1969
/decade/{decade-start}s                            # /decade/1960s
/century/{roman}                                   # /century/xx
/topic/{slug}                                      # /topic/space-race
/country/{cca2}                                    # /country/us (Phase 2)
/changelog/{yyyy-ww}                               # /changelog/2026-32
/api/v1/...                                        # JSON, all noindex
/docs                                              # noindex
```

**Slug rules**: ASCII, hyphens, lowercased, no diacritics, no IDs in URL. Each entity gets a `slug` column with a unique index. On collision, append `{slug}-{id}`.

**Canonical**: every paginated/archive URL has a `rel=canonical` to the canonical date. Every `?p=N` has `noindex`.

### 6.4 SEO specifics

- **JSON-LD** on every event/person/place page (Schema.org `Event`, `Person`, `Place`)
- **BreadcrumbList** JSON-LD on every detail page
- **Open Graph + Twitter Card** with image (auto-generated from claim summary if no image)
- **Multilingual** via `<link rel="alternate" hreflang>` (Phase 1, MVP is en only)
- **Sitemap segmented** by page type: `/sitemap-events.xml`, `/sitemap-people.xml`, `/sitemap-places.xml`, `/sitemap-dates.xml` — each under 50K URL limit
- **Robots.txt**: explicitly disallow `/api/`, `/changelog/`, `?p=` patterns
- **Canonical** for paginated series, noindex for thin pages

---

## 7. Repo decision — SEPARATE repo, MONOREPO structure inside

User asked: separate repo or independent module in the same repo? **My recommendation: separate repo, `historical-knowledge-api`, structured as a pnpm monorepo per the playbook.**

The playbook mandates the monorepo layout:
```
/apps/api/src/             (the Hono Worker)
/packages/contracts/       (zod schemas, OpenAPI)
/packages/db/              (D1 migrations, queries)
/packages/ingestion/       (connectors, normalizers, resolvers, enrichers, quality)
/docs/                     (architecture, api, sources, runbooks, tasks, quality-reports, adr)
/tests/                    (unit, integration, contract, edge, fixtures)
wrangler.jsonc             (NOT wrangler.toml — playbook uses .jsonc)
```

**Why monorepo (within this repo, vs single-package)**:
- **`/packages/contracts`** lets us version-lock the zod schemas between the API, ingestion workers, and (eventually) the front-end
- **`/packages/db`** centralizes migrations so both the API Worker and the ingestion Workers use the same DDL
- **`/packages/ingestion`** is heavy (connectors, normalizers, resolvers) and would otherwise pollute the API Worker bundle
- The playbook is opinionated about this — following the playbook's structure IS the architecture

**Why separate repo from `dateandtime-api-v2`** (8 reasons, unchanged from earlier):
1. **Data isolation** — different D1, zero risk of accidental writes to dateandtime-api-v2
2. **Schema evolution** — the HistoricalDate + claim + source schemas will iterate fast
3. **Different D1 sizing** — dateandtime-api-v2 has 100-var/stmt limits baked in; this one doesn't need them on day 1
4. **Different Worker limits** — ingest workers will run heavier jobs than API reads
5. **Different release cadence** — dateandtime-api-v2 is "milestone every 1-2 weeks." This one is **weekly content updates** + ship
6. **Different SEO/brand** — different sitemap, robots.txt, schema.org markup
7. **Different audience** — "developers building history/education apps" vs "developers building time/geo apps"
8. **Risk separation** — if the new ingest pipeline goes haywire, the existing API is untouched

**Cross-repo data flow**: The data copy from dateandtime-api-v2 is a **one-time, read-only** script. It runs once (or on-demand, idempotent), populates our D1 staging tables, and is never invoked again unless we explicitly want a refresh.

---

## 8. Local prep state (waiting for PAT)

The GitHub repo `nsura2029-art/historical-knowledge-api` exists (created 2026-08-05, empty, public, default branch `main`). The user is sending a PAT to authorize pushes.

**What I'll do once the PAT arrives**:
1. Configure git remote with PAT auth (no commits until then)
2. Initialize the local monorepo structure
3. Push the initial scaffold (TASK-001 spec, AGENTS.md, README, .gitignore, package.json, pnpm-workspace.yaml, wrangler.jsonc)
4. Begin executing TASK-001 per the playbook's 12-step lifecycle

**What I'm doing right now while waiting**:
- This notes file ✓
- AGENT-INSTRUCTIONS.md copied to workspace ✓ (will go in the repo too)
- TASK-001 spec file drafted (will be in the repo at `docs/tasks/TASK-001-platform-foundation.md`)

---

## 9. Quick summary table

| Decision | Choice |
|---|---|
| Reuse from `dateandtime-api-v2`? | **Data only**, via one-time seed. Cities, countries, timezones, holidays-as-claims, historical renamings. Owned by TASK-007 + TASK-006. |
| Repo | **Separate repo**: `historical-knowledge-api` at `nsura2029-art` (exists, empty) |
| Repo structure | **pnpm monorepo** per playbook §4: `/apps/api`, `/packages/contracts`, `/packages/db`, `/packages/ingestion` |
| Plan | **20-task sequence** from playbook §8 (not my own phases) |
| First task | **TASK-001 Platform Foundation** — Worker/Hono, typed bindings, CI, health/version routes |
| Wrangler config | `wrangler.jsonc` (playbook §4) — not `wrangler.toml` |
| HistoricalDate schema | Proleptic Gregorian for `earliest_gregorian`/`latest_gregorian`; `original` preserved verbatim; `certainty: disputed` = range, not pick-one. Owned by TASK-008. |
| MVP scope | On-this-day + event/person/place detail + observances + RSS/sitemap + EN-only + 50K/50K/10K. Mapped to playbook tasks. |
| Weekly update cadence | Daily Wikidata delta → Mon quality gates → Tue editorial review → Wed publish+deploy → Thu SEO pulse → Fri report |
| Page taxonomy | ~117K indexable pages at MVP, 12 page types, all gated by 10-rule quality threshold |
| Thin-SEO mitigation | Quality gates enforce: ≥80 words, ≥1 source, ≥3 internal links, ≥3 claims, ≥1 authority ID, editorial approval, calendar purity, noindex on fail |
| Indexability | robots.txt disallows `/api/`, `/changelog/`, `?p=`; sitemap segmented by type; canonical for paginated |
| Quality command set | pnpm install/lint/typecheck/format:check + 7 test suites + openapi:generate/lint/breaking + wrangler:types/dev:smoke/deploy:preview/preview:smoke + 5 data quality commands |
| Definition of Done | Per playbook §13: task spec ✓ + code review ✓ + OpenAPI examples ✓ + sources licensed ✓ + edge tests ✓ + ops logs ✓ + quality report with PASS/BLOCKED ✓ |
| No changes to `dateandtime-api-v2` | **Confirmed.** Zero touches. Read-only data copy via TASK-007 / TASK-006. |

---

## 10. What I need from you to start

1. **PAT** — for `nsura2029-art` GitHub account. Will configure as a secret; never committed.
2. **Cloudflare account ID + API token** — same as dateandtime-api-v2 (most likely). Or new account? (Recommend: same, just a new D1 + new Worker + new R2 bucket.)
3. **Approve TASK-001 as the first task** — Worker/Hono, typed bindings, CI, health/version routes. 1-week scope.

Once those 3 are in, I push the initial scaffold and start executing TASK-001 per the 12-step lifecycle. Quality report at `docs/quality-reports/TASK-001.md` will be the artifact of the first cycle.

The whole 20-task sequence is the long-term plan. We're starting with TASK-001 today.
