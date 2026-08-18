# packages/ingestion/AGENTS.md — raw ingestion framework + seed scripts

> **Owner**: this directory. Read before adding any connector or seed script.

## Status (2026-08-17)

TASK-005 is partial. The framework is in place (`ingestion_run` table, the connector pattern in theory). The bulk of ingestion so far is via **seed scripts** in `packages/db/seed/` (20+ scripts) and inline migrations. These are the working patterns; the formal connector interface in `src/` is still aspirational.

## What's in the seed directory (as of 2026-08-17)

```
packages/db/seed/
├── news_gdelt.py                    # GDELT GKG news fetcher (250 lines, stdlib only)
├── news_insert.py                   # JSON → batched SQL (5 rows/INSERT)
├── image_r2_mirror.py               # Wikimedia → R2 uploader
├── image_url_audit.py               # verify Wikimedia file existence
├── people_ingest.py                 # top-500 Wikipedia bulk ingest
├── people_profession_index.py       # maps names to dimension tags
├── people_section_image_repass.py   # Wikipedia REST + mobile-html re-pass
├── events_extract.py                # v1: extract date-anchored events from section text
├── events_extract_v2.py             # v2: clean wikitext, LLM-style event titles
├── wikidata_events_extract.py       # KP-029: Wikidata structured claims
├── dbpedia_events_extract.py        # KP-029: DBpedia SPARQL date properties
├── wiki_anniversaries_fetch.py      # **NEW 2026-08-14** (KP-018-v2): Wikipedia "Selected anniversaries today" (19,654 events)
├── rss_news_fetch.py                # **NEW 2026-08-14** (KP-018-v2): 74 RSS feeds → news_event
├── enrichment/                      # **NEW 2026-08-16/17** (KP-PKG-1A/1B): People Knowledge Graph
│   ├── wikidata_famous_americans.py # SPARQL fetcher for 440 USA famous people
│   ├── pkg_usa_phase1.py            # 5-category discovery + WHO/WHAT/CONNECTED/NOW renderer
│   ├── pkg_usa_apply.py             # **NEW 2026-08-17**: per-QID SQL chunk generator (440 files, isolated failures)
│   ├── resolve_qid_labels.py        # fallback for QIDs with blank en labels
│   ├── reenrich_empty.py            # re-fetch empty entries
│   └── refill_empty.py              # refill empty entries one at a time
└── .gitignore                       # excludes __pycache__/
```

## What this package should contain (target)

```
packages/ingestion/
├── src/
│   ├── connector.ts          # Base connector interface
│   ├── wikidata.ts           # TASK-006: P31, P569, P570, P19, P20 extraction
│   ├── geonames.ts           # TASK-007: cities15000.txt → place table
│   ├── viaf.ts               # VIAF cross-reference
│   ├── pleiades.ts           # Pleiades ancient places
│   ├── dbpedia.ts            # NEW 2026-08-08: SPARQL date properties
│   ├── nager-date.ts         # Holidays (per PRD §5)
│   └── gdelt.ts              # NEW 2026-08-08: news backfill
├── AGENTS.md                 # this file
└── package.json
```

## Connector interface (planned)

```ts
interface Connector {
  id: string;                              // 'wikidata', 'geonames', 'dbpedia', ...
  source_policy_id: string;                // FK to source_policy
  run(args: RunArgs): Promise<RunResult>;  // pull, dedupe, write to staging
}

interface RunResult {
  records_fetched: number;
  records_imported: number;
  records_skipped: number;
  records_failed: number;
  ingestion_run_id: string;                // FK to ingestion_run
}
```

## Pipeline

1. Pull from upstream (Wikidata SPARQL, DBpedia SPARQL, GeoNames dump, VIAF REST, etc.)
2. Normalize to staging table (`entity_staging`, `claim_staging`, etc.)
3. Run quality gates (PRD §14 — 14 gates)
4. Editor approves (TASK-016)
5. Promote to `entity`, `claim`, etc.

## Ingestion_run record

Every run writes a row to `ingestion_run`:

```sql
INSERT INTO ingestion_run (id, source_id, connector_version, started_at, completed_at, status, records_fetched, records_imported, records_skipped, records_failed, idempotency_key, triggered_by)
VALUES (?, ?, ?, ?, ?, 'succeeded', ?, ?, ?, ?, ?, ?);
```

## KP-029 seed scripts (2026-08-08)

### `wikidata_events_extract.py` (447 lines, KP-029)

Extracts date-anchored events from Wikidata structured claims.

- **HTTP**: uses `curl` subprocess (NOT `urllib`) to avoid 403 rate limits from Wikimedia
- **Property map**: 20 properties (P166 awards, P39 positions, P26 spouse, P40 children, P69 education, P108 employer, P800 notable work, P54 sports team, P551 residence, P22/P25 parents, P3373 siblings, P1038 relatives, P607 conflict, P1343 described by, P3602 candidate, P2868 subject of, P1411 nominated, P2522 result, P3342 significant)
- **Time qualifiers**: P580 (start), P585 (point-in-time), P574 (year), P582 (end)
- **Fuzzy slug resolver**: tries 6 candidate title variants per slug (as-is, capitalize, title-case, `ar_` → `A.R._`, etc.) + Wikipedia search API fallback
- **Confidence**: 0.85 (high — structured data)
- **Output**: `packages/db/migrations/0030_wikidata_events_extracted.sql`
- **Status**: 20 Trump events applied; full 494-person run blocked by 403 rate limit

### `dbpedia_events_extract.py` (303 lines, KP-029)

Extracts date-anchored events from DBpedia SPARQL endpoint.

- **HTTP**: SPARQL via `curl --data-urlencode` POST
- **Properties**: birthDate, deathDate, spouse (with date), termStart, termEnd, activeYears
- **URI handling**: DBpedia uses `Donald_Trump` (title-case), not `donald_trump`
- **5 event types**: career (654), political (531), birth (384), death (204), personal_life (114)
- **Confidence**: 0.8
- **Output**: `packages/db/migrations/0031_dbpedia_events_extracted.sql`
- **Status**: 1887 events for 397/494 people applied

## KP-018-v2 seed scripts (2026-08-14)

### `wiki_anniversaries_fetch.py`

Scrapes Wikipedia's "Selected anniversaries today" for all 366 days (01-01 to 12-31, plus Feb 29).

- **Output**: 19,654 curated historical events with year range 74 BC → 2026
- **Applied**: 14,920 of 19,654 (76%) — remaining 4,735 blocked by D1 rate limit
- **Source ID**: `src_wiki_anniversaries`
- **Per-day files**: `wiki_anniversaries_2025-08-16.md` format, then inserted as `news_event` rows

### `rss_news_fetch.py`

74 RSS feeds across 8 categories (news, science, sports, culture, politics, business, tech, regional).

- **Backfill window**: 72h rolling
- **Output**: 932 news events initially; growing with each cron
- **Source IDs**: per-feed in `news_source` table

## KP-PKG-1A/1B seed scripts (NEW 2026-08-16/17, in `enrichment/`)

### `enrichment/wikidata_famous_americans.py`

SPARQL fetcher for the 440 USA famous people across 5 master categories.

- **5 categories**: Entertainment (111), Music (115), Creators & Influencers (53), Sports (176), Business (89)
- **Output**: `/tmp/pkg_usa/raw_data.json` (847 entries from raw → 440 unique after dedup)
- **HTTP**: Wikidata SPARQL via curl
- **Rate limit**: ~5 sec between requests

### `enrichment/pkg_usa_phase1.py`

Discovers people across 5 categories + renders the WHO/WHAT/CONNECTED/NOW layout.

- **Sub-categories**: 16 (film_actors, tv_actors, voice_actors, stage_actors, comedians, directors, producers, screenwriters, tv_hosts, reality_tv, singers, rappers, songwriters, musicians, djs, composers, music_producers, country_artists, youtubers, podcasters, instagram_models, tiktokers, football, basketball, baseball, ice_hockey, soccer, tennis, golf, boxing, mma, olympics, auto_racing, swimming, track_field, tech_founders, ceos, investors, inventors, business_authors)
- **Output**: `/tmp/pkg_usa/{5_X Category}/_index.md` and per-subcategory .md files
- **Rendering**: WHO = name + slug, WHAT = claims list, CONNECTED = family + social, NOW = latest event

### `enrichment/pkg_usa_apply.py` (NEW 2026-08-17, the workhorse)

Generates per-QID SQL files to push enrichment to D1.

- **Output**: 440 per-QID SQL files in `/tmp/pkg_usa_sql/person_{qid}.sql`
- **Stats**: 12,422 SQL statements, 3,753 claims, 774 family, 635 social, 351 images
- **Per-file size**: 2-58 statements (avg ~28)
- **3 critical fixes baked in**:
  1. `person.living_status` = 'undisclosed' (NOT 'unknown') for stub family members
  2. `entity_image` schema uses `url_original`/`wikimedia_file`/`attribution`/`license_code`/`is_primary`/`display_order` (NOT `external_url`/`license`/`status`/`retrieved_at`)
  3. Pre-loads `/tmp/person_slugs.json` to reuse existing entity IDs (94% of family slugs collide)
- **Slug detection**: case-insensitive regex matches `sr_pkg_(q\d+)` and `entity (...) VALUES ('ent_SLUG')`
- **Result**: 440/440 chunks succeed in ~12 minutes

### Helper scripts

- `enrichment/resolve_qid_labels.py` — fallback for QIDs with blank en labels (18+ famous people: Trump, Jobs, Streep, Swift, etc.)
- `enrichment/reenrich_empty.py` — re-fetch empty enrichment entries
- `enrichment/refill_empty.py` — refill empty entries one at a time

## Standing gotchas

- **Don't write to existing D1s.** The only writable D1 is `historical-knowledge-api-d1`. Reading from `timeandtimepro-full-v2` is allowed; writing is not.
- **Idempotency** — every run must be re-runnable without duplicating data. Use `INSERT OR IGNORE` (NOT `INSERT OR REPLACE` — blocked by FK from `claim_source` RESTRICT for the `claim` table).
- **BATCH_SIZE** — for bulk inserts, follow the table in `packages/db/AGENTS.md`.
- **Background processes** — if the connector is long-running, use `setsid nohup ... </dev/null >/dev/null 2>&1 &; disown` (NOT plain `nohup &` — the shell task wrapper dies with the foreground tool call). Kill old PIDs with `kill -9` before re-running.
- **No scraping of forbidden sites** — onthisday.com, timeanddate.com, history.com, britannica.com, social platforms. These are blocked by the user's standing rule.
- **Licensing** — record the source license in `source_policy` BEFORE pulling. No data without a license.
- **HTTP via curl, not urllib** — Python's `urllib.request` gets 403 Too Many Reqs from Wikipedia/Wikidata even with custom User-Agent. Use `subprocess.run(['curl', ...])` instead.
- **SPARQL query gotchas** — DBpedia URIs require title-case (first letter capitalized). `^\\d{3,4}` regex in f-strings needs `{{N,M}}` (double braces) to avoid Python format-string interpretation.
- **SPARQL response size (NEW 2026-08-17)** — Wikidata SPARQL returns 89MB+ if you have too many OPTIONAL joins. Use SAMPLE/GROUP BY to dedupe within the query. Batch 15-30 QIDs per query max.
- **PKG slug collision (NEW 2026-08-17)** — 94% of family member slugs already exist as entity slugs. ALWAYS pre-load existing slugs from D1 (`/tmp/person_slugs.json`) and reuse the existing entity ID instead of creating a new one. INSERT OR IGNORE silently fails due to `entity.slug UNIQUE`.

## When stuck

- The connector produces too many rows — add a filter (e.g. only entities with `instance_of:human` for Wikidata people).
- The connector fails on a specific record — skip + log, don't crash. Track in `records_failed`.
- Re-running produces duplicate rows — use a stable `idempotency_key` and `INSERT OR REPLACE`.
- 403 Too Many Reqs from Wikipedia/Wikidata — wait 5-10 min, or use a different IP, or use SPARQL endpoint (DBpedia) instead.

## Not yet implemented

- **Auto-trigger** via scheduled Worker (out of MVP, but the cron schedule in PRD §5 is the plan).
- **Streaming output** for very large dumps (GeoNames is ~30MB cities, manageable; Wikipedia is 90GB, NOT manageable — only Wikidata delta pulls are realistic).
- **Deduplication** — TASK-009 (entity resolution) is a separate task. Don't try to dedupe inside the connector.
- **DBpedia sub-property coverage** — current extraction is limited to date-bearing properties. Future: extend to generic DBpedia ontology properties.
- **Wikidata full run** — blocked by 403 rate limit. Re-run when cooldown clears.
