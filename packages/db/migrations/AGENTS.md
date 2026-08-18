# packages/db/migrations/AGENTS.md — migration log

> **Source of truth for what each migration does.** When the schema is in question, look here. When you add a migration, add an entry here.
>
> **Latest (2026-08-17)**: 90 migrations applied. 64 tables in D1. PKG Phase 1A+1B shipped.

## Naming convention

`00NN_short_name.sql` where `NN` is the next 4-digit sequence number. We're at **0090** as of 2026-08-17. Zero-pad. The number reflects the ORDER OF APPLICATION, not the date. For multi-statement migrations (e.g. 0031a, 0031b), append a letter.

## Current migrations (90 total, all applied to dev D1 as of 2026-08-17)

| # | File | Purpose | Status |
|---|---|---|---|
| 0001 | (initial scaffold) | D1 created, empty schema | ✅ applied |
| 0002 | `0002_people_schema.sql` | 24+ canonical tables | ✅ applied |
| 0003 | `0003_enrichment.sql` | cause_of_death, industry, era_slug, slug_redirect, 6 operational tables | ✅ applied |
| 0004 | `0004_source_urls_and_events.sql` | Real Wikidata/Britannica URLs, 13 Frida + 11 Rahman events | ✅ applied |
| 0005 | `0005_event_sources.sql` | Day-precision birth/death, source_id/source_locator/source_url on career_event | ✅ applied |
| 0006 | `0006_breton_cultural_impact_npr.sql` | Breton entity, NPR + USPS sources | ✅ applied |
| 0007 | `0007_news_sources_trump_references.sql` | 35+ news sources, article_registry + article_claim_link, full Trump enrichment | ✅ applied |
| 0008 | `0008_slug_redirects_and_lookup.sql` | 4 pre-seeded slug_redirect entries | ✅ applied |
| 0009 | `0009_trump_deep_dive_events.sql` | 29 new Trump events | ✅ applied |
| 0010 | `0010_otd_event_and_calendrify_countries.sql` | On-this-day event table + Calendrify country mapping | ✅ applied |
| 0011 | `0011_seed_otd_events_for_smoke.sql` | 6 seed events for OTD smoke | ✅ applied |
| 0012 | `0012_claim_model_atomic_evidence.sql` | **KP-003**: atomic-claim model | ✅ applied |
| 0013 | `0013_data_source_health_and_citations.sql` | **KP-004**: data_source_health, citation export, 7 source endpoints | ✅ applied |
| 0014 | `0014_media_rights_review_and_expiry.sql` | **KP-007**: media_rights_review, media_expiry, media_transform_cache | ✅ applied |
| 0015 | `0015_narrative_sections_for_top_entities.sql` | **KP-010**: content_section with biography narrative | ✅ applied |
| 0016 | `0016_section_expansion_news_quiz_images.sql` | Section type expansion + news + quiz + image | ✅ applied |
| 0016b | `0016b_widen_content_section_check.sql` | 29 section_type values | ✅ applied |
| 0017 | `0017_trump_full_sections_quizzes_summaries.sql` | Trump full biography | ✅ applied |
| 0018 | `0018_wikimedia_gallery_top5.sql` | Wikimedia Commons gallery for top 5 | ✅ applied |
| 0019-0022 | topic sections (Frida, Rahman, Tendulkar, Aishwarya) | Per-entity topic content | ✅ applied |
| 0023 | `0023_news_gdelt_backfill.sql` | News backfill via GDELT GKG | ✅ applied |
| 0024 | `0024_image_url_fixes.sql` | Fix 8 broken Wikimedia URLs | ✅ applied |
| 0025 | `0025_people_us_500.sql` (+ _patched) | **KP-018**: 459 top-500 famous Americans | ✅ applied |
| 0026 | `0026_entity_tags.sql` | tag + entity_tag, 31 tags, 666 links | ✅ applied |
| 0027 | `0027_people_sections_images_repass.sql` | Re-pass top-500 via Wikipedia REST | ✅ applied |
| 0028 | `0028_entity_event.sql` | entity_event table — date-anchored events | ✅ applied |
| 0029 | `0029_entity_events_extracted.sql` | **KP-029 base**: 4133 Wikipedia-body events | ✅ applied |
| 0030 | `0030_wikidata_events_extracted.sql` | **KP-029 Wikidata**: 20 Trump events | ✅ applied |
| 0031 | `0031_dbpedia_events_extracted.sql` | **KP-029 DBpedia**: 1887 events for 397/494 people | ✅ applied |
| 0031a | `0031a_add_dbpedia_source.sql` | Add src_dbpedia (Tier B) | ✅ applied |
| 0032 | `0032_fix_wiki_source_id.sql` | Re-label 4133 events src_wikidata → src_en_wikipedia | ✅ applied |
| 0033-0061 | **KP-018v3 + KP-029-full + F500 orgs + backfill** | Top-1000 US persons, multi-source events, Fortune 500, sections, images | ✅ applied (29 migrations) |
| 0062-0067 | **Media rights + places-1000** | media_rights backfill, cities/states/extras for KP-013 | ✅ applied (6 migrations) |
| 0068-0070 | **Place events r1** | place wiki events + place relations | ✅ applied |
| 0071-0073 | **Place images + sections r2** | 493 places images, 158 places sections | ✅ applied |
| 0074-0077 | **KP-orgs-1000** | 594 new orgs, 1001 sections, 719 images, 17594 events | ✅ applied (4 migrations) |
| 0078-0080 | **Place events r2 + founding year** | 2 places via wiki r2, 310 places via Wikidata, 486 founding_year | ✅ applied |
| 0081-0082 | **States missing + person death/residence** | 50/50 states, 553 death events, 506 age_at_death | ✅ applied |
| 0083 | **Place sections r3** | 7 more places, 988/988 with sections (100%) | ✅ applied |
| 0084-0085 | **API bug fixes + OTD filter fixes** | 3 real bugs + 3 filter fixes (limit, country, category) | ✅ applied |
| 0086 | **rss-news (KP-018-v2)** | RSS news pipeline, 19 sources, 251 events | ✅ applied |
| 0087 | **news-sources-v2 + wiki-historical (KP-018-v2)** | 74 RSS feeds + 19,654 wiki anniversaries | ✅ applied |
| 0088 | **PKG foundation (FAILED)** | Tried to recreate existing tables — replaced by 0088b | ❌ replaced |
| 0088b | **PKG Phase 1A foundation (NEW 2026-08-16)** | 8 NEW tables (person_family_relation, social_metric_observation, entity_merge_history, entity_review_queue, attention_event, identifier_scheme, claim_predicate, person_provenance_summary). Extended source_registry (7 policy fields), person (3 PKG fields). Seeded 17 sources, 14 schemes, 23 predicates, 1051 provenance summaries. | ✅ applied |
| 0089 | **PKG Phase 1B data layer (NEW 2026-08-17)** | 440 unique famous Americans × full claim+source+family+social+image rows. Generated 12,422 SQL statements in 440 per-QID files via `pkg_usa_apply.py`. 3 critical fixes during apply: (1) `person.living_status` CHECK = `('living','deceased','undisclosed')` not 'unknown' — INSERT OR IGNORE silently swallows CHECK failures. (2) `entity_image` schema uses `url_original`, `wikimedia_file`, `attribution`, `license_code`, `is_primary`, `display_order` — NOT `external_url`/`license`/`status`/`retrieved_at`. (3) 94% of family member slugs collide with existing entities — load existing slugs from D1 (`/tmp/person_slugs.json`) and reuse the existing entity ID instead of creating a duplicate. 440/440 chunks succeeded (0 failed). Stats: 3,753 claims, 3,749 claim_source, 774 person_family_relation, 635 social_profile, 440 source_record, 351 new entity_image. Worker `8b573f0f-1360-4c71-8a73-c434b6bbf287`. | ✅ applied |
| 0090 | **PKG endpoints (NEW 2026-08-17)** | `GET /v1/pkg/person/{slug}` (WHO/WHAT/CONNECTED/NOW 4-question layout with full claim provenance) and `GET /v1/pkg/people` (discovery list sorted by data quality score, 345 people with 5+ claims). Both registered via `pkgRouter.openapi()` so they appear in /openapi.json. | ✅ applied |


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

1. Pick the next number (0091 next as of 2026-08-17, or use 0090b/0090c if appending to 0090).
2. Filename: `0091_short_name.sql`.
3. Header comment block:
   ```sql
   -- ========================================
   -- Migration 0091: <short description>
   -- <one-paragraph explanation>
   -- ========================================
   ```
4. SQL body.
5. Test locally first: `pnpm exec wrangler d1 execute historical-knowledge-api-d1 --env dev --file=...`.
6. Apply to dev: same command with `--remote`.
7. Add an entry to this file (the migration log table).
8. Commit + push + deploy to dev.
9. Hand off to user for review.

**PKG enrichment migrations (NEW 2026-08-17)**: use per-QID file splits via `pkg_usa_apply.py` to isolate failures. Pre-load existing slugs from `/tmp/person_slugs.json` to avoid slug-collision silent failures. Use `INSERT OR IGNORE` for idempotency (NOT `INSERT OR REPLACE` — blocked by FK from `claim_source` RESTRICT).

## When stuck

- "Too many SQL variables" — see `packages/db/AGENTS.md` BATCH_SIZE table.
- "9 values for 11 columns" — placeholder count vs param count confusion. Count placeholders in the SQL.
- FK violation on insert — pre-seed parent.
- Column already exists — use `IF NOT EXISTS` in the ALTER (D1 may not support this; if not, wrap in a CASE WHEN).
- **CHECK constraint failed on person.living_status** — use 'undisclosed' not 'unknown' (PKG gotcha).
- **entity_image "no column named external_url"** — schema uses `url_original`, `wikimedia_file`, `license_code`, `is_primary`, `display_order` (PKG gotcha).
- **FOREIGN KEY constraint failed on person_family_relation** — related_person_id must have a row in `person` (not just `entity`). Pre-seed person stub with `'undisclosed'`.
- **D1_RESET_DO** — chunk transaction rolled back. Retry with smaller batch size or split per-row.
- **Slugs already exist (silent INSERT OR IGNORE failure)** — pre-load `/tmp/person_slugs.json` and reuse the existing entity ID.
