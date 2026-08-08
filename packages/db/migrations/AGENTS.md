# packages/db/migrations/AGENTS.md — migration log

> **Source of truth for what each migration does.** When the schema is in question, look here. When you add a migration, add an entry here.

## Naming convention

`00NN_short_name.sql` where `NN` is the next 4-digit sequence number. We're at **0032**. Zero-pad. The number reflects the ORDER OF APPLICATION, not the date. For multi-statement migrations (e.g. 0031a, 0031b), append a letter.

## Current migrations (32 total, all applied to dev D1)

| # | File | Purpose | Status |
|---|---|---|---|
| 0001 | (initial scaffold) | D1 created, empty schema | ✅ applied |
| 0002 | `0002_people_schema.sql` | 24+ canonical tables (entity, person, claim, source_registry, source_record, claim_source, relation, alias, external_identifier, etc.) | ✅ applied |
| 0003 | `0003_enrichment.sql` | cause_of_death, industry, era_slug, slug_redirect table, 6 operational tables (data_sources, import_history, data_quality_checks, etc.) | ✅ applied |
| 0004 | `0004_source_urls_and_events.sql` | Real Wikidata/Britannica/Foundation URLs (replaced placeholders). 13 notable events for Frida, 11 for Rahman. Created `/v1/people/{slug}/timeline`. | ✅ applied |
| 0005 | `0005_event_sources.sql` | Day-precision birth/death in HistoricalDate. `source_id`/`source_locator`/`source_url` columns on `career_event`. Backfilled all 47 events. | ✅ applied |
| 0006 | `0006_breton_cultural_impact_npr.sql` | André Breton entity (Q79008), `champion_of` relation to Frida. 5 cultural_impact events for Frida. Added NPR (tier D) and USPS (tier A) sources. | ✅ applied |
| 0007 | `0007_news_sources_trump_references.sql` | 35+ news sources. `article_registry` + `article_claim_link` tables. Full Donald Trump enrichment. | ✅ applied |
| 0008 | `0008_slug_redirects_and_lookup.sql` | 4 pre-seeded slug_redirect entries + route update for redirects on 404. | ✅ applied |
| 0009 | `0009_trump_deep_dive_events.sql` | 29 new Trump events (8 business 1971-2007, 21 political 2016-2025). Brings Trump 14 → 43 events, 9 → 12 sources, 14 → 42 articles. | ✅ applied |
| 0010 | `0010_otd_event_and_calendrify_countries.sql` | On-this-day event table + Calendrify country mapping. | ✅ applied |
| 0011 | `0011_seed_otd_events_for_smoke.sql` | 6 seed events for OTD smoke tests. | ✅ applied |
| 0012 | `0012_claim_model_atomic_evidence.sql` | **KP-003**: atomic-claim model. `claim`, `claim_source`, `source_record`, `claim_conflict_group`, `editorial_revision`. | ✅ applied |
| 0013 | `0013_data_source_health_and_citations.sql` | **KP-004**: `data_source_health`, citation export, editorial revisions, 7 source endpoints. | ✅ applied |
| 0014 | `0014_media_rights_review_and_expiry.sql` | **KP-007**: `media_rights_review`, `media_expiry`, `media_transform_cache`, 7 media endpoints. | ✅ applied |
| 0015 | `0015_narrative_sections_for_top_entities.sql` | **KP-010**: content_section table with biography narrative for top entities. | ✅ applied |
| 0016 | `0016_section_expansion_news_quiz_images.sql` | Section type expansion + news + quiz + image storage. | ✅ applied |
| 0016b | `0016b_widen_content_section_check.sql` | Widen content_section CHECK constraint to 29 section_type values. | ✅ applied |
| 0017 | `0017_trump_full_sections_quizzes_summaries.sql` | Trump full biography sections, quizzes, summaries. | ✅ applied |
| 0018 | `0018_wikimedia_gallery_top5.sql` | Wikimedia Commons gallery for top 5 entities. | ✅ applied |
| 0019 | `0019_frida_topic_sections.sql` | Frida topic-specific content sections. | ✅ applied |
| 0020 | `0020_rahman_topic_sections.sql` | A.R. Rahman topic-specific sections. | ✅ applied |
| 0021 | `0021_tendulkar_topic_sections.sql` | Tendulkar topic-specific sections. | ✅ applied |
| 0022 | `0022_aishwarya_topic_sections.sql` | Aishwarya Rai topic-specific sections. | ✅ applied |
| 0023 | `0023_news_gdelt_backfill.sql` | News backfill via GDELT GKG. | ✅ applied |
| 0024 | `0024_image_url_fixes.sql` | Fix 8 broken Wikimedia URLs, delete 14 aspirational ones. | ✅ applied |
| 0025 | `0025_people_us_500.sql` (+ `_patched.sql`) | **KP-018**: 459 top-500 famous Americans ingested. | ✅ applied |
| 0026 | `0026_entity_tags.sql` | `tag` + `entity_tag` tables. 31 profession/dimension tags, 666 links. | ✅ applied |
| 0027 | `0027_people_sections_images_repass.sql` (+ `_fixed.sql`) | Re-pass top-500 via Wikipedia REST API for 3 sections + image per person. | ✅ applied |
| 0028 | `0028_entity_event.sql` | `entity_event` table — date-anchored events per person. | ✅ applied |
| 0029 | `0029_entity_events_extracted.sql` | **KP-029 base**: 4133 Wikipedia-body events for 455 people. | ✅ applied |
| 0030 | `0030_wikidata_events_extracted.sql` | **KP-029 Wikidata**: 20 Trump events from structured claims (rate-limited, full run deferred). | ✅ applied |
| 0031 | `0031_dbpedia_events_extracted.sql` | **KP-029 DBpedia**: 1887 events for 397/494 people via SPARQL. | ✅ applied |
| 0031a | `0031a_add_dbpedia_source.sql` | Add `src_dbpedia` to source_registry (Tier B, APPROVED_BULK). | ✅ applied |
| 0032 | `0032_fix_wiki_source_id.sql` | Re-label 4133 events from `src_wikidata` → `src_en_wikipedia` (data was actually from Wikipedia body). | ✅ applied |


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

### Multi-source event migration pattern (NEW 2026-08-08, KP-029)

For each new event data source:
1. Add `source_registry` row first (separate migration, e.g. `0031a_add_dbpedia_source.sql`)
2. Then bulk-insert events with `source_id = 'src_<source>'`
3. Event `id` format: `ev_<source>_<slug>_<property>_<year>_<index>` for idempotency
4. Use `INSERT OR IGNORE` so re-runs are safe
5. Apply via `wrangler d1 execute --file=` (D1 HTTP API is 10x faster for big files)

## Standing gotchas (specific to migrations)

- **Don't drop columns.** D1 supports `ALTER TABLE DROP COLUMN` but it's irreversible. If you need to, write a defensive migration that copies to a new table first.
- **`ON CONFLICT(qid)` requires `qid` to be UNIQUE.** If it isn't, use `INSERT OR REPLACE`.
- **Don't trust `INSERT OR IGNORE` for partial backfill** — it silently swallows unique-constraint violations. Always count rows after.
- **FK violations on insert** — pre-seed the parent row first, in a separate statement if needed.
- **D1 SQL limit** — 100 vars per prepared statement, 100KB SQL text. For 11-col inserts, BATCH_SIZE=9. For 15-col, BATCH_SIZE=4-6. HTTP API `/query` is per-statement, not file-based.
- **Multi-statement file gotchas** — embedded CSS with `;` and `'` chars can break naive `;`-based statement splitting. Use a state-tracking parser that respects string escapes. Quote-escape: `''` in SQL is one literal `'`, and Python regex match groups must include the literal `'` char between body and `, word_count = `.

## How to write a new migration

1. Pick the next number (0033 next, or use 0032b/0032c if appending to 0032).
2. Filename: `0033_short_name.sql`.
3. Header comment block:
   ```sql
   -- ========================================
   -- Migration 0033: <short description>
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
