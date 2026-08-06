# packages/db/migrations/AGENTS.md — migration log

> **Source of truth for what each migration does.** When the schema is in question, look here. When you add a migration, add an entry here.

## Naming convention

`00NN_short_name.sql` where `NN` is the next 4-digit sequence number. We're at **0009**. Zero-pad. The number reflects the ORDER OF APPLICATION, not the date.

## Current migrations (9 total)

| # | File | Purpose | Status |
|---|---|---|---|
| 0001 | (initial scaffold) | D1 created, empty schema | ✅ applied |
| 0002 | `0002_people_schema.sql` | 24+ canonical tables (entity, person, claim, source_registry, source_record, claim_source, relation, alias, external_identifier, etc.) | ✅ applied |
| 0003 | `0003_enrichment.sql` | cause_of_death, industry, era_slug, slug_redirect table, 6 operational tables (data_sources, import_history, data_quality_checks, etc.) | ✅ applied |
| 0004 | `0004_source_urls_and_events.sql` | Replaced `https://example.com` placeholders with real Wikidata/Britannica/Foundation URLs. Added 13 notable events for Frida (1907-2011), 11 for Rahman (1967-2017). Created `/v1/people/{slug}/timeline` endpoint. | ✅ applied |
| 0005 | `0005_event_sources.sql` | Day-precision birth/death in HistoricalDate via `person_derived_attribute.birth_date`. Added `source_id`/`source_locator`/`source_url` columns to `career_event`. Backfilled all 47 events with sources. | ✅ applied |
| 0006 | `0006_breton_cultural_impact_npr.sql` | Created André Breton entity (Q79008), `champion_of` relation to Frida. 5 cultural_impact events for Frida (US stamp 2001, Palacio Bellas Artes 2007, Barbie 2018, Diego y yo 2021 $34.9M, El sueño 2025 $54.7M). Added NPR (tier D) and USPS (tier A) sources. | ✅ applied |
| 0007 | `0007_news_sources_trump_references.sql` | 35+ news sources. `article_registry` + `article_claim_link` tables. Full Donald Trump enrichment (entity, person, 14 events, 10 relations, 2 works, 2 social profiles, 1 media asset, 4 external IDs). | ✅ applied |
| 0008 | `0008_slug_redirects_and_lookup.sql` | 4 pre-seeded slug_redirect entries: donald-j-trump → donald-trump, magdalena-carmen-frida-kahlo-y-calderon → frida-kahlo, a.r.-rahman → ar-rahman, allahrakka-rahman → ar-rahman. Plus the route update in `apps/api/src/routes/v1/person-detail.ts` to follow redirects on 404. | ✅ applied |
| 0009 | `0009_trump_deep_dive_events.sql` | 29 new events for Trump (8 business 1971-2007, 21 political 2016-2025). Each sourced to a major news outlet. Brings Trump from 14 → 43 events, 9 → 12 sources, 14 → 42 articles. | ✅ applied |

## Patterns by migration type

### New table

```sql
CREATE TABLE IF NOT EXISTS new_table (
  id TEXT PRIMARY KEY,
  ...
  FOREIGN KEY (...) REFERENCES other_table(...)
);
CREATE INDEX IF NOT EXISTS idx_new_table_xxx ON new_table(xxx);
```

### ALTER TABLE

```sql
ALTER TABLE existing_table ADD COLUMN new_col TEXT;
```

### Data backfill

```sql
INSERT OR REPLACE INTO table (id, col1, col2, ...) VALUES
  ('row-1', 'a', 'b', ...),
  ('row-2', 'c', 'd', ...);
```

For large backfills, use `BATCH_SIZE` from the table in `packages/db/AGENTS.md`. For 15-col inserts, BATCH_SIZE=4-6. For 11-col, BATCH_SIZE=9.

### Cross-table FK

When the new row references a parent that may not exist, pre-seed the parent first. Example: cities has TWO FKs (`country_code` → `countries`, `timezone` → `timezones`). The original cities15000.txt referenced 50+ countries and 96+ timezones that didn't exist. We had to pre-seed them in a separate migration.

## Standing gotchas (specific to migrations)

- **Don't drop columns.** D1 supports `ALTER TABLE DROP COLUMN` but it's irreversible. If you need to, write a defensive migration that copies to a new table first.
- **`ON CONFLICT(qid)` requires `qid` to be UNIQUE.** If it isn't, use `INSERT OR REPLACE`.
- **Don't trust `INSERT OR IGNORE` for partial backfill** — it silently swallows unique-constraint violations. Always count rows after.
- **FK violations on insert** — pre-seed the parent row first, in a separate statement if needed.

## How to write a new migration

1. Pick the next number (0010 next).
2. Filename: `0010_short_name.sql`.
3. Header comment block:
   ```sql
   -- ========================================
   -- Migration 0010: <short description>
   -- <one-paragraph explanation>
   -- ========================================
   ```
4. SQL body.
5. Test locally first: `pnpm exec wrangler d1 execute historical-knowledge-api-d1 --env dev --file=...`.
6. Apply to dev: same command with `--remote`.
7. Add an entry to this file (the migration log table).
8. Commit + push + deploy to dev.
9. Hand off to user for review.

## When stuck

- "Too many SQL variables" — see `packages/db/AGENTS.md` BATCH_SIZE table.
- "9 values for 11 columns" — placeholder count vs param count confusion. Count placeholders in the SQL.
- FK violation on insert — pre-seed parent.
- Column already exists — use `IF NOT EXISTS` in the ALTER (D1 may not support this; if not, wrap in a CASE WHEN).
