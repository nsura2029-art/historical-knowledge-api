# packages/ingestion/AGENTS.md — raw ingestion framework

> **Owner**: this directory. Read before adding any connector or seed script.

## Status

TASK-005 is partial. The framework is in place (`ingestion_run` table, the connector pattern in theory) but the only real ingestor so far is the manual seed scripts in `apps/api/scripts/seed/` and the inline migrations.

The **next big task here** is TASK-006 (Wikidata seed connector) and TASK-007 (GeoNames + place resolution). Those will land as proper ingestion connectors.

## What this package should contain (target)

```
packages/ingestion/
├── src/
│   ├── connector.ts          # Base connector interface
│   ├── wikidata.ts           # TASK-006: P31, P569, P570, P19, P20 extraction
│   ├── geonames.ts           # TASK-007: cities15000.txt → place table
│   ├── viaf.ts               # VIAF cross-reference
│   ├── pleiades.ts           # Pleiades ancient places
│   └── nager-date.ts         # Holidays (per PRD §5)
├── AGENTS.md                 # this file
└── package.json
```

## Connector interface (planned)

```ts
interface Connector {
  id: string;                              // 'wikidata', 'geonames', ...
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

1. Pull from upstream (Wikidata SPARQL, GeoNames dump, VIAF REST, etc.)
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

## Standing gotchas

- **Don't write to existing D1s.** The only writable D1 is `historical-knowledge-api-d1`. Reading from `timeandtimepro-full-v2` is allowed; writing is not.
- **Idempotency** — every run must be re-runnable without duplicating data. Use `INSERT OR REPLACE` or staging + merge.
- **BATCH_SIZE** — for bulk inserts, follow the table in `packages/db/AGENTS.md`.
- **Background processes** — if the connector is long-running, use `setsid nohup ... </dev/null >/dev/null 2>&1 &; disown` (NOT plain `nohup &` — the shell task wrapper dies with the foreground tool call). Kill old PIDs with `kill -9` before re-running.
- **No scraping of forbidden sites** — onthisday.com, timeanddate.com, history.com, britannica.com, social platforms. These are blocked by the user's standing rule.
- **Licensing** — record the source license in `source_policy` BEFORE pulling. No data without a license.

## When stuck

- The connector produces too many rows — add a filter (e.g. only entities with `instance_of:human` for Wikidata people).
- The connector fails on a specific record — skip + log, don't crash. Track in `records_failed`.
- Re-running produces duplicate rows — use a stable `idempotency_key` and `INSERT OR REPLACE`.

## Not yet implemented

- **Auto-trigger** via scheduled Worker (out of MVP, but the cron schedule in PRD §5 is the plan).
- **Streaming output** for very large dumps (GeoNames is ~30MB cities, manageable; Wikipedia is 90GB, NOT manageable — only Wikidata delta pulls are realistic).
- **Deduplication** — TASK-009 (entity resolution) is a separate task. Don't try to dedupe inside the connector.
