# packages/db/AGENTS.md — D1 schema and migrations

> **Owner**: this directory. Read before editing or adding any migration.

## What's in D1

Database: `historical-knowledge-api-d1`. **64 tables** across **90 migrations (0001-0090)** as of 2026-08-17. **READ-ONLY for any D1 not prefixed `historical-knowledge-api-`.** All schema changes go through migrations under `packages/db/migrations/`.

## Table inventory (high-level)

### People & biography

- `entity` — top-level polymorphic (id, slug, type, canonical_name, status, schema_version via `created_at`).
- `entity_name` — aliases (no `source_id` column; gotcha).
- `entity_external_id` — Wikidata Q-numbers, VIAF, etc.
- `entity_relation` — directed graph between entities. `valid_from`/`valid_to` are INTEGER (year*10000+month*100+day), NOT TEXT.
- `entity_relation_type` — taxonomy of relation types.
- `entity_event` — date-anchored events per person. `source_id` FK to source_registry. Used by `/v1/people/{slug}/events` family.
- `entity_image` — image rows. **Schema: `wikimedia_file`, `url_original`, `url_r2`, `url_thumb_r2`, `attribution`, `license_code`, `license_url`, `width`, `height`, `caption`, `alt_text`, `is_primary`, `display_order`**. (PKG gotcha 2026-08-17: NOT `external_url`/`license`/`status`/`retrieved_at`.)
- `entity_merge_history` — **NEW 2026-08-17** (migration 0088b): surviving_id, absorbed_id, merge_method, confidence.
- `entity_review_queue` — **NEW 2026-08-17**: candidate_a_id, candidate_b_id, match_score, proposed_action, priority, status.
- `entity_tag` — many-to-many. 666 rows.
- `person` — extends entity (birth/death date, citizenship, etc.). **`living_status` CHECK IN ('living','deceased','undisclosed')** — NEVER 'unknown' (PKG gotcha 2026-08-17: INSERT OR IGNORE silently swallows CHECK failures).
- `person_derived_attribute` — computed: `birth_date`, `death_date`, `popularity_score` (0-100 scale), `era_slug`. Schema: `attribute_type`, `attribute_value`, `rule_version`, `input_claim_ids`, `computed_at`, `valid_until`, `status`, `source_id`. (NOT `attribute_key`/`attribute_value` — gotcha 2026-08-17.)
- `person_citizenship` — `country_id` REFERENCES `place(id)`, NOT a country table.
- `person_provenance_summary` — **NEW 2026-08-17** (migration 0088b): total_claims, verified_claims, has_dob, has_pob, has_citizenship, has_image, has_social_account, has_family, has_employer_or_school, data_quality_score. Powers `/v1/pkg/people` list.

### Content & biography (KP-010)

- `content_section` — narrative sections per person. `section_type` CHECK constraint allows 29 values (after 0016b). Body stored as `body_markdown` (markdown) or `body_text` (plain).
- `quick_fact` — key-value facts.
- `biography` — aggregated biography cache (built from content_sections).

### Career & life

- `career_event` — birth, death, marriage, education, work_start, work_end, award_received, role_assumed, custom, cultural_impact. Has `source_id`, `source_locator`, `source_url` (added in migration 0005).
- `historical_date` — date with calendar awareness (Gregorian/Julian/BCE). When `calendar != 'gregorian'`, the proleptic `date_earliest` is for search/index only.

### Geography

- `place` — `id`, `name`, `slug`, `country_code` (direct, no separate country table).
- `country` — small lookup table. NOT used for person citizenship (that goes through `place`).
- `time_zone`, `geo_coordinates` — if used.

### Sources & claims (KP-003, KP-004, KP-PKG-1A)

- `source_registry` — 124 sources, tier A-E. **Column is `source_name`, NOT `name`.** This is a major gotcha. **Extended 2026-08-17** (migration 0088b) with 7 policy fields.
- `source_policy` — license, commercial_use_status, attribution requirements.
- `source_record` — individual records from a source (e.g. one Wikidata statement). Used by PKG for `sr_pkg_{qid}` rows.
- `source_section` — which content_section a source supports.
- `data_source_health` — KP-004: per-source uptime/freshness.
- `claim` — atomic fact, supports conflict groups. **Schema: `subject_entity_id`, `predicate`, `literal_value`, `value_type` IN ('entity_ref','date','string','number','boolean'), `certainty` IN ('undisputed','disputed','contested','traditional','unknown'), `status` IN ('pending','approved','rejected','published','disputed'), `sensitivity_level` IN ('public','semi_sensitive','sensitive','restricted')**. **PKG gotcha: use `INSERT OR IGNORE` not `INSERT OR REPLACE` for idempotent re-runs — REPLACE blocked by FK from `claim_source` RESTRICT.**
- `claim_source` — links claim to source_record (NOT source_registry). **`source_id` comes from `source_record.source_id`**.
- `claim_conflict_group` — when multiple claims disagree.
- `claim_predicate` — **NEW 2026-08-17** (migration 0088b): predicate, object_kind, wikidata_property, inverse_predicate, search_intent, category, is_sensitive. 23 rows seeded.
- `editorial_revision` — approval workflow (TASK-016).
- `identifier_scheme` — **NEW 2026-08-17**: scheme, display_name, base_url_pattern, source_id, is_preferred. 14 rows seeded.

### Media (KP-007)

- `media_asset` — uses `depiction_entity_id` (NOT `subject_entity_id`); `status` (NOT `rights_status`).
- `media_rights` — uses `rights_reviewer` (NOT `rights_verifier`); has `source_id`.
- `media_rights_review` — KP-007: review queue with `media_id`, `reviewer_id`, `decision`, `notes`.
- `media_expiry` — KP-007: tracks license expiry dates.
- `media_transform_cache` — KP-007: cached transformed media (sizes, formats).

### Tags (KP-018)

- `tag` — `id TEXT PK (tag_<name>)`, `label`, `category`, `description`, `display_order`. 31 rows.
- `entity_tag` — many-to-many. `id`, `entity_id`, `tag_id`, `source`, `confidence`, UNIQUE(entity_id, tag_id). 666 rows.

### PKG (KP-PKG-1A, NEW 2026-08-17)

- `person_family_relation` — **NEW 2026-08-17**: person_id, related_person_id, relation_type (parent_of/child_of/spouse_of/sibling_of/stepparent_of/stepchild_of/partner_of/relative_of), start_date, end_date, source_id, source_locator, privacy_class, confidence. **FK on person_id AND related_person_id → person(id)**, NOT entity. 774 rows.
- `social_profile` — requires `first_seen_at` AND `last_verified_at` (NOT NULL). **`platform` CHECK IN ('youtube','instagram','facebook','twitter','tiktok','linkedin','threads','mastodon','official_website','other')` — NOT 'x', NOT 'personal_website'**. 635 PKG rows + earlier rows.
- `social_metric_observation` — **NEW 2026-08-17**: social_account_id, metric, value, observed_at, collection_method, terms_class.
- `attention_event` — **NEW 2026-08-17**: event_type, person_id, session_id, country_code, referrer_class, privacy_consent.
- `external_identifier` — entity_id, scheme, identifier, url. 521 rows (Wikidata QIDs linked).

### Auxiliary

- `profession` — taxonomy. **Has NO `slug` column** — uses `id` as slug (e.g. `painter`).
- `generation` — Pew + McCrindle taxonomy.
- `star_sign`, `chinese_zodiac` — lookup tables.
- `cause_of_death`, `industry`, `era`, `fame_category` — v2 enrichment.
- `work`, `award`, `organization` — entity children. Use `id = entity.id` FK pattern.
- `social_profile` — requires `first_seen_at` AND `last_verified_at` (NOT NULL).
- `slug_redirect` — old_slug → new_slug for user-typed variations.
- `ingestion_run` — per-run stats.
- `data_sources`, `import_history`, `data_quality_checks`, `data_quality_issues`, `feedback_votes` — TASK-007 governance.

## D1 SQL limits (HARD GATES)

**Per-prepared-statement limits (D1 HTTP API)**:
- **100 variables** (NOT 999 like stock SQLite)
- **100 KB SQL text**
- HTTPError 400 with "too many SQL variables at offset N" reveals the **byte offset**, not the var count.

**BATCH_SIZE reference table** (for multi-row INSERTs):

| Cols | BATCH_SIZE | Vars | Examples |
|---|---|---|---|
| 4-5 | 20+ | 80-100 | safe |
| 6 | 16 | 96 | seasons, holiday_rules |
| 7 | 14 | 98 | holidays (name) |
| 9 | 11 | 99 | safe (under 100) |
| 10 | 9-10 | 90-100 | tight |
| 11 | 9 | 99 | climate_summaries, dst_transitions, entity_event |
| 12 | 8 | 96 | timezones |
| 14 | 7 | 98 | cities |
| 15 | 4-6 | 60-90 | cities15000 |

**Always do the math**: `BATCH_SIZE × COLS ≤ 100`. If you get "9 values for 11 columns", the error uses the placeholder count, NOT the param count.

## Standing gotchas (apply to any migration)

- **Silent FK failure** — bash `|| { ... true; }` masks partial failures. Always check final row count vs expected.
- **`ON CONFLICT(qid)` doesn't work if qid isn't UNIQUE** — use `INSERT OR REPLACE` or add the UNIQUE constraint.
- **Pre-seed missing FK targets** — if you reference `country_code` from a `cities` table, ensure all those countries exist in the `country` table first.
- **Wrangler 3 quirks**:
  - `--remote` flag REQUIRED to actually hit D1 (default is local in v3).
  - Reads `CF_API_TOKEN` not `CLOUDFLARE_API_TOKEN`.
  - `wrangler d1 execute --file=` is 10x faster than HTTP API for bulk loads.
- **Date strings** — `start_date` uses YYYY-MM-DD. For year-prefix filter, use `substr(start_date, 1, 4) = ?`. Don't use `strftime()` on the YYYY-MM-DD strings.
- **HTTP API per-statement gotcha (NEW 2026-08-08)** — For big files with embedded special chars (CSS, quotes), use direct D1 HTTP API `/d1/database/{id}/query` with 1 statement per request. wrangler's `--file` can fail silently on these.

## How to add a new migration

1. Filename: `packages/db/migrations/00NN_short_name.sql` where NN is the next 4-digit number (we're at 0090 as of 2026-08-17).
2. Header comment: explain what the migration does, why, and any gotchas.
3. Use `CREATE TABLE IF NOT EXISTS` for new tables, `CREATE INDEX IF NOT EXISTS` for indexes.
4. For ALTER TABLE: use `ALTER TABLE x ADD COLUMN y TEXT;` (D1 supports it). Don't drop columns without a separate review.
5. For data backfill: use `INSERT OR IGNORE` (NOT `INSERT OR REPLACE` — blocked by FK from `claim_source` RESTRICT for the `claim` table).
6. Test locally first: `pnpm exec wrangler d1 execute historical-knowledge-api-d1 --env dev --file=...`.
7. Then apply to dev (same command, with `--remote`).
8. Update `packages/db/migrations/AGENTS.md` with the new entry.
9. **PKG enrichments**: use per-QID file splits (one file per entity) to isolate failures. Pre-load existing slugs from `/tmp/person_slugs.json` to avoid slug-collision silent failures.

## When stuck

- "Too many SQL variables" — check BATCH_SIZE table. Reduce BATCH_SIZE.
- "9 values for 11 columns" — count placeholders, not params.
- FK violation on a perfectly normal insert — pre-seed the parent row.
- D1 returned the wrong shape for `/v1/time/sun` etc. — that's the legacy API. Use the new `/api/v1/*` paths.
- **INSERT OR IGNORE silently failed for new entity** — slug already exists. Pre-load existing slugs and reuse the existing entity ID.
- **`CHECK constraint failed: living_status IN (...)`** — use 'undisclosed' not 'unknown' for stub person rows.
- **`FOREIGN KEY constraint failed` on `person_family_relation`** — related_person_id must have a row in `person` (not just `entity`).
- **`table entity_image has no column named external_url`** — schema uses `url_original`, `wikimedia_file`, `license_code`, `is_primary`, `display_order`.
- **D1_RESET_DO** — chunk transaction rolled back. Retry with smaller batch size or split per-row.
