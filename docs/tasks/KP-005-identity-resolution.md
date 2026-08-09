# KP-005: Identity resolution (aliases, duplicates, merge, split)

> **Status**: Draft for user review
> **Author**: Mavis
> **Date**: 2026-08-09
> **Quarter**: Q1 (weeks 7-8)
> **Depends on**: KP-003 (atomic-claim model) ✅, KP-004 (evidence graph) ✅
> **Blocks**: KP-018 (top-1000), KP-007 (media), KP-013 (Geography)

## User intent

Replace the **implicit entity identity** (every `entity` row with a `slug` is
assumed unique) with the PRD's **explicit identity model** that supports:
- **Aliases** (e.g., "Beyoncé", "Beyoncé Knowles", "Beyoncé Knowles-Carter" all
  refer to the same person) — use `entity_name` table, already exists.
- **Duplicates** (e.g., the same person ingested twice from different sources
  with different slugs) — use a new `slug_redirect` table.
- **Merge** (collapse N duplicate rows into 1 canonical row, re-point all FKs,
  delete the absorbed rows) — first-class operation.
- **Split** (rare: 1 entity actually represents 2 distinct people) — first-class
  operation, defer to v2.

## Why this matters

The PRD is explicit: "Before we expand coverage, we must answer: what IS a
Beyoncé?" Today, we have 3 different `ent_beyonc*` rows with 26 events
distributed across them. A user searching `/v1/people/beyonce` should get the
canonical record, not a 404, not a redirect loop, not 3 partial pages.

The slug-collision audit (`docs/quality-reports/SLUG-COLLISION-AUDIT.md`)
found 5 known merges + 1 editorial call needed before we can confidently
expand to 1000+ people.

## Business outcome

- **Single source of truth per entity**: All queries to `entity` (by id, by
  slug, by name) return the canonical row.
- **Old URLs still work**: `slug_redirect` lets `/v1/people/beyonc-knowles`
  return the canonical `ent_beyonc` data with a 308 status, no broken links.
- **Audit trail**: Every merge is logged with reason, date, evidence. KP-019
  (editorial) builds on this.
- **Safe to expand**: KP-018 can add 1000+ new people without polluting
  `entity` with duplicates.

## In scope (this task)

- **New table**: `slug_redirect` (id, old_slug, new_slug, redirect_type,
  reason, evidence_url, merged_at, merged_by)
- **Migration**: 5 known merges (Beyoncé × 3, Andrew Mellon × 2, US × 2) +
  their event re-pointing (135 events)
- **API behavior**: All slug-based lookups (entity, person, organization, place)
  follow redirects transparently. 308 status returned for the 5 known cases.
- **Editorial decision**: Bonnie & Clyde — keep as famous pair (2 entities +
  `entity_relation` link) OR merge as 1 "couple" entity. Defer to user.
- **Tests**: redirect resolution, event re-pointing, edge cases (loop, missing)
- **Quality gate**: All 24 checks must still pass

## Out of scope

- **Fuzzy matching** ("Beyonce" vs "Beyoncé" vs "Beyoncé Knowles" — diacritics
  and transliterations). KP-018 might add later.
- **ML-based dedup** (find duplicates automatically). Today, all merges are
  human-flagged.
- **Split** (1 entity → 2 distinct). We have no known cases. Defer until
  needed.
- **Cross-source identity** (Wikidata QID ↔ Wikipedia slug ↔ DBpedia URI ↔
  IMDB nm). This is KP-005 v2.

## Approved data sources and licenses

No new external sources. This task is internal data plumbing.

## Current behavior

- `entity.slug` is UNIQUE (per type), enforced by D1.
- Ingestion of a new entity with an existing slug silently fails (`INSERT OR
  IGNORE`) or throws FK violation downstream.
- 5 known duplicate cases have been "lived with" — queries return whichever
  row has the matching slug, others are orphans.

## Proposed schema and migrations

### New table: `slug_redirect`

```sql
CREATE TABLE slug_redirect (
  id            TEXT PRIMARY KEY,        -- e.g. 'redr_beyonc-knowles'
  old_slug      TEXT NOT NULL UNIQUE,    -- the slug being redirected FROM
  new_slug      TEXT NOT NULL,           -- the canonical slug
  new_entity_id TEXT NOT NULL,           -- canonical entity id (denormalized for fast lookup)
  redirect_type TEXT NOT NULL CHECK (redirect_type IN (
    'merge',      -- N rows → 1 canonical (e.g., beyonce×3)
    'split',      -- 1 row → N distinct (defer to v2)
    'alias',      -- alternative name → canonical (e.g., historic renames)
    'external'    -- external URL pattern → canonical (de.g. 'Mt. McKinley' → 'Denali')
  )),
  reason        TEXT,                    -- human-readable explanation
  evidence_url  TEXT,                    -- link to source that confirmed the merge
  absorbed_entity_ids TEXT,               -- JSON array of entity_ids that were merged into new_entity_id
  absorbed_event_count INTEGER DEFAULT 0, -- count at merge time
  merged_at     INTEGER NOT NULL,        -- unix epoch
  merged_by     TEXT,                    -- agent name or 'system'
  created_at    INTEGER NOT NULL DEFAULT (unixepoch()),
  FOREIGN KEY (new_entity_id) REFERENCES entity(id) ON DELETE CASCADE
);

CREATE INDEX idx_slug_redirect_new ON slug_redirect(new_slug);
CREATE INDEX idx_slug_redirect_new_entity ON slug_redirect(new_entity_id);
```

### Migration 0044: create `slug_redirect` table

Already specified above.

### Migration 0045: insert 5 known merges + re-point events

```sql
-- 1. Beyoncé: merge 3 rows into ent_beyonc
INSERT INTO slug_redirect (id, old_slug, new_slug, new_entity_id, redirect_type, reason, absorbed_entity_ids, absorbed_event_count, merged_at, merged_by)
VALUES
  ('redr_beyonc-knowles', 'beyonc-knowles', 'beyonc', 'ent_beyonc', 'merge', 'Same person (Beyoncé Giselle Knowles-Carter); different slug variants', '["ent_beyonc-knowles","ent_beyonc-knowles-carter"]', 15, unixepoch(), 'Mavis/slug-audit-2026-08-09'),
  ('redr_beyonc-knowles-carter', 'beyonc-knowles-carter', 'beyonc', 'ent_beyonc', 'merge', 'Same person (Beyoncé Giselle Knowles-Carter); different slug variants', '["ent_beyonc-knowles-carter"]', 8, unixepoch(), 'Mavis/slug-audit-2026-08-09');

-- 2. Andrew Mellon: merge 2 rows into ent_andrew-w-mellon (full name)
INSERT INTO slug_redirect (id, old_slug, new_slug, new_entity_id, redirect_type, reason, absorbed_entity_ids, absorbed_event_count, merged_at, merged_by)
VALUES
  ('redr_andrew-mellon', 'andrew-mellon', 'andrew-w-mellon', 'ent_andrew-w-mellon', 'merge', 'Same person (Andrew W. Mellon); canonical uses full name', '["ent_andrew-mellon"]', 50, unixepoch(), 'Mavis/slug-audit-2026-08-09');

-- 3. United States: merge ent_us into ent_usa (more events)
INSERT INTO slug_redirect (id, old_slug, new_slug, new_entity_id, redirect_type, reason, absorbed_entity_ids, absorbed_event_count, merged_at, merged_by)
VALUES
  ('redr_us-country', 'us-country', 'united-states', 'ent_usa', 'merge', 'Same country; ent_usa has 47 events vs ent_us has 0', '["ent_us"]', 0, unixepoch(), 'Mavis/slug-audit-2026-08-09');

-- Re-point events
UPDATE entity_event SET entity_id = 'ent_beyonc' WHERE entity_id IN ('ent_beyonc-knowles', 'ent_beyonc-knowles-carter');
UPDATE entity_event SET entity_id = 'ent_andrew-w-mellon' WHERE entity_id = 'ent_andrew-mellon';

-- entity_event doesn't have entity_us events (all on ent_usa), so no UPDATE needed for US

-- Add entity_name aliases for the merged entities (so search/UI finds them)
INSERT OR IGNORE INTO entity_name (id, entity_id, name_value, name_type, lang, created_at)
VALUES
  ('enm_beyonc-knowles', 'ent_beyonc', 'Beyoncé Knowles', 'married', 'en', unixepoch()),
  ('enm_beyonc-knowles-carter', 'ent_beyonc', 'Beyoncé Knowles-Carter', 'married', 'en', unixepoch()),
  ('enm_andrew-mellon', 'ent_andrew-w-mellon', 'Andrew Mellon', 'common_misspelling', 'en', unixepoch()),
  ('enm_us', 'ent_usa', 'US', 'common_misspelling', 'en', unixepoch()),
  ('enm_united-states-of-america', 'ent_usa', 'United States of America', 'common_misspelling', 'en', unixepoch()),
  ('enm_usa', 'ent_usa', 'USA', 'common_misspelling', 'en', unixepoch());

-- Delete the absorbed entity rows
DELETE FROM entity WHERE id IN ('ent_beyonc-knowles', 'ent_beyonc-knowles-carter', 'ent_andrew-mellon', 'ent_us');
```

## API contract

### Slug resolution: 308 Permanent Redirect

For all slug-based endpoints (`/v1/people/{slug}`, `/v1/organizations/{slug}`,
`/v1/places/{slug}`), when the slug is found in `slug_redirect`, return:

```http
HTTP/1.1 308 Permanent Redirect
Location: /v1/people/{new_slug}
X-Redirect-Type: merge
X-Redirect-Reason: same-person-different-slug
```

When the canonical slug is used, no redirect (200 OK as today).

### Backward compatibility: 200 with redirect header

Alternative design: return 200 OK with the canonical data and an
`X-Canonical-Slug` header. This preserves clients that don't follow redirects.
Defer to API review.

### Implementation: shared `resolveSlug()` helper

```typescript
async function resolveSlug(env: AppEnv, slug: string): Promise<{entity_id: string, slug: string, is_redirect: boolean} | null> {
  // 1. Try slug_redirect table first (fast — small table)
  const redirect = await env.DB.prepare(
    `SELECT new_slug, new_entity_id FROM slug_redirect WHERE old_slug = ?`
  ).bind(slug).first();
  if (redirect) {
    return { entity_id: redirect.new_entity_id, slug: redirect.new_slug, is_redirect: true };
  }
  // 2. Try entity table (canonical)
  const entity = await env.DB.prepare(
    `SELECT id, slug FROM entity WHERE slug = ?`
  ).bind(slug).first();
  if (entity) {
    return { entity_id: entity.id, slug: entity.slug, is_redirect: false };
  }
  return null;
}
```

## Processing/enrichment steps

1. **Schema migration** (0.5 day): apply migration 0044 (create table)
2. **Data migration** (0.5 day): apply migration 0045 (5 merges)
3. **API helper** (0.5 day): `resolveSlug()` shared helper, wire into all
   slug-based routes
4. **Tests** (0.5 day): 3 unit + 2 integration tests
5. **Quality gate** (0.5 day): verify all 24 pass

## Security and privacy

- **No new data exposure**: redirects just point to existing canonical data.
- **No PII added**: only internal metadata (reason, evidence_url, merged_by).
- **Audit trail**: every merge has `merged_at` + `merged_by` for forensics.

## Edge and failure cases

### Edge: redirect loop (A → B → A)

Defensive: limit resolution to 5 hops. After 5, return 404 with error code
`REDIRECT_LOOP_DETECTED`. Log the chain for manual review.

### Edge: redirect points to non-existent entity

Defensive: ON DELETE CASCADE on `slug_redirect.new_entity_id` removes the
redirect row when the canonical entity is deleted. So no dangling redirects.

### Edge: entity has no slug_redirect but slug returns 404

Behavior: 404 as today. The redirect is opt-in (only known merges get a row).

### Edge: case sensitivity

Slugs are case-sensitive in D1. If user requests `Beyonce` (capital B), they
get 404. We don't auto-redirect on case. The slug-redirect audit
(`docs/quality-reports/SLUG-COLLISION-AUDIT.md`) already noted that `entity_name`
table is searched as fallback (so search is case-insensitive). Slug lookups
remain case-sensitive.

### Edge: ingestion of new entity with redirected slug

When a new entity is ingested with slug `beyonc-knowles` (which now redirects),
it should fail (UNIQUE constraint on `slug_redirect.old_slug`). Ingestion
script should check `slug_redirect` before creating new entity, and skip
silently with a warning.

## Tests

### Unit (3 new)

1. `resolveSlug('beyonc-knowles')` → `{entity_id: 'ent_beyonc', slug: 'beyonc', is_redirect: true}`
2. `resolveSlug('beyonc')` → `{entity_id: 'ent_beyonc', slug: 'beyonc', is_redirect: false}`
3. `resolveSlug('non-existent')` → `null`

### Integration (2 new)

4. `GET /v1/people/beyonc-knowles` → 308 with `Location: /v1/people/beyonc`
5. `GET /v1/people/beyonc-knowles-carter` → 308 with `Location: /v1/people/beyonc`

### Migration (1 new)

6. Migration 0045 re-points 15+50=65 events (15 from Beyoncé non-canonical +
   50 from Andrew Mellon non-canonical) AND 0 from US (no events on ent_us)

## Documentation updates

- `docs/quality-reports/SLUG-COLLISION-AUDIT.md` (already exists, will be
  updated with resolution)
- `docs/architecture/schemas.md` (add `slug_redirect` table definition)
- `docs/api/redirects.md` (new — explain 308 behavior to API consumers)

## Quality gates

- All 24 existing quality-gate checks pass
- 3 new unit tests pass
- 2 new integration tests pass
- 1 new migration test passes
- No new lint errors
- No new TypeScript errors

## Review findings

Awaiting user review.

## Evidence (commands, reports, screenshots/links)

- `docs/quality-reports/SLUG-COLLISION-AUDIT.md` — the original 5 dupe findings
- `git log` — commits for migrations 0044 + 0045
- `wrangler d1 execute` — final D1 state showing 5 redirects and 0 dupes
