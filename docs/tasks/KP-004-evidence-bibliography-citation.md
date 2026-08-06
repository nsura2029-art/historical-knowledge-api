# KP-004: Evidence, bibliography, citation, and revision model

> **Status**: Draft for user review
> **Author**: Mavis (Mavis)
> **Date**: 2026-08-06
> **Quarter**: Q1 (weeks 5-7)
> **Depends on**: KP-003 (claim model) ← in progress
> **Blocks**: KP-016 (grounded AI), KP-019 (editorial console)

## User intent

Wire up the **evidence graph**: every claim must be backed by at least one
source_record; every source_record must be licensed and traceable; every
revision must be audited. The platform becomes **citation-first**: any
content that surfaces to users is provably backed by an approved claim
referencing an approved source.

This is the difference between a **Wikipedia article** (with citations
inline) and a **scientific paper** (with sources, evidence types, and
uncertainty quantified).

## Business outcome

- **Citation coverage**: 100% of displayed claims have ≥1 source.
- **Revision history**: every change is auditable, no data loss.
- **AI grounded**: KP-016 can cite per-paragraph using claim IDs.
- **Editorial trust**: Britannica-style trust signals ("Last reviewed
  2026-08-06 by X, source coverage 96%").
- **Legal defensibility**: every fact has a license trail back to its source.

## In scope / Out of scope

### In scope

- **claim_source** join table (already created in KP-003, now populated).
- **source_record** with full bibliography fields (already created, now
  populated from existing source_registry).
- **editorial_revision** for change history (already created, now wired).
- **Citation export**: BibTeX, RIS, CSL JSON per entity.
- **Source health**: per-source metrics (last fetched, success rate, license
  status, last terms review).
- **Source rights page**: `GET /v1/sources/{id}` returns full source detail
  (already exists from KP-002, now enriched).

### Out of scope

- **Auto-citation extraction** (LLM extracts citations from prose) — KP-016
  does this.
- **Citation graph visualization** — Q3/Q4.
- **Citation comparison** (which sources are stronger) — Q4.
- **Multi-language citations** — year 2.

## Current behavior (today)

We have `career_event.source_id` and `otd_event.source_id` pointing directly
at `source_registry`. We have NO `source_record` (one record = one article
URL). We have NO `claim_source` join (we can't express "this source supports
this claim, this other source contradicts it").

The `/v1/people/{slug}/references` endpoint we built (migrations 0007+) does
group by source_registry, but it doesn't surface the **specific claim each
source supports** — just the source. That's not enough for Britannica-style
"why we say this" transparency.

## Proposed schema (no new tables — KP-003 created them; this task populates them)

```sql
-- Populate source_record from existing references
-- For each (entity, source_id) pair in the DB, create a source_record
INSERT INTO source_record (id, source_registry_id, source_url, source_type,
                            connector_version, locator, title, publication_date, accessed_at)
SELECT
  'sr_rec_' || cf.id,
  cf.source_id,
  cf.source_url,
  'web',
  'legacy-v1',
  cf.source_locator,
  cf.description,  -- fallback if no title
  cf.start_date,
  unixepoch()
FROM career_event cf
WHERE cf.source_id IS NOT NULL
  AND NOT EXISTS (SELECT 1 FROM source_record WHERE id = 'sr_rec_' || cf.id);

-- Same for otd_event
-- (similar INSERT)

-- For each source_record, create a claim_source pointing back to the legacy claim
INSERT INTO claim_source (claim_id, source_record_id, support_type, evidence_note)
SELECT
  cl.id,
  sr.id,
  'supports',
  cl.locator  -- from the claim itself
FROM claim cl
JOIN source_record sr ON sr.id = 'sr_rec_' || substr(cl.id, 11)
WHERE cl.id LIKE 'clm_legacy_%'
  AND NOT EXISTS (SELECT 1 FROM claim_source WHERE claim_id = cl.id AND source_record_id = sr.id);
```

## Source health dashboard

```sql
-- data_source_health: per-source metrics
CREATE TABLE IF NOT EXISTS data_source_health (
  source_registry_id TEXT PRIMARY KEY REFERENCES source_registry(id),
  records_total INTEGER NOT NULL DEFAULT 0,
  records_published INTEGER NOT NULL DEFAULT 0,
  records_pending_review INTEGER NOT NULL DEFAULT 0,
  records_rejected INTEGER NOT NULL DEFAULT 0,
  last_fetch_at INTEGER,
  last_success_at INTEGER,
  last_failure_at INTEGER,
  success_rate_30d REAL,
  average_freshness_days REAL,
  license_status TEXT NOT NULL DEFAULT 'active',
  last_license_check_at INTEGER,
  notes TEXT,
  updated_at INTEGER NOT NULL DEFAULT (unixepoch())
);
```

## API contract

```
GET /v1/sources/{id}
  → Full source detail (already exists, enriched with claim count)
  → Includes: license, terms, claims_supported, claims_contradicted,
    entities_mentioned, source_record_count, last_fetch_at

GET /v1/entities/{id-or-slug}/sources
  → All sources for this entity, grouped by source_registry
  → Each source: landing_page + per-article URLs + claims supported
  → (already exists from /references, now with claim-level drilldown)

GET /v1/claims/{id}/sources
  → All sources supporting or contradicting this specific claim

GET /v1/sources/{id}/claims
  → All claims that cite this source
  Query: ?support_type=&certainty=

POST /v1/sources/{id}/refresh
  → Trigger a re-fetch from the upstream source (admin only)
  → Returns ingestion_run_id

POST /v1/admin/editorial-revisions
  Body: { target_entity_id, target_claim_id, field_name, old_value, new_value, ... }
  → Records a change; auto-creates an editorial_revision row
  → If auto_approval eligible, marks as approved; else pending review

GET /v1/entities/{id-or-slug}/revisions
  → All editorial revisions for this entity
  Query: ?from=&to=&review_status=&contributor_id=
```

## Citation export

```ts
// Per-entity citation export in 3 formats
GET /v1/entities/{id-or-slug}/citations?format=bibtex
GET /v1/entities/{id-or-slug}/citations?format=ris
GET /v1/entities/{id-or-slug}/citations?format=csljson
```

Example BibTeX output for Frida Kahlo:
```bibtex
@misc{frida_kahlo_2024,
  title = {Frida Kahlo},
  author = {{Frida Kahlo Foundation}},
  year = {2024},
  url = {https://fridakahlo.org},
  note = {Source: tier A. Cited 47 times across 12 claims.}
}
```

## Source rights page

`GET /v1/sources/{id}` returns the full source detail with:

```json
{
  "id": "src_bbc-news",
  "name": "BBC News",
  "tier": "A",
  "license": {
    "code": "CopyrightAllRightsReserved",
    "commercial_use": "requires-license",
    "attribution_required": true,
    "terms_url": "https://www.bbc.co.uk/terms"
  },
  "claims_supported_count": 47,
  "claims_contradicted_count": 1,
  "entities_mentioned_count": 23,
  "source_records": [
    {
      "id": "sr_rec_...",
      "url": "https://www.bbc.com/news/...",
      "title": "Trump impeachment vote",
      "publication_date": "2019-12-18",
      "claims_supported": ["clm_..."]
    }
  ],
  "health": {
    "last_fetch_at": 1722902400,
    "success_rate_30d": 0.98,
    "average_freshness_days": 0.5,
    "license_status": "active",
    "last_license_check_at": 1722902400
  },
  "used_on_these_pages": [
    "/v1/people/donald-trump",
    "/v1/on-this-day/12-18"
  ]
}
```

## Security and privacy

- **All endpoints read-only** for public, write only via admin.
- **Source health is internal** — not exposed in public API.
- **Editorial revisions** require admin role.
- **Source license status** auto-flips to "expired" if past license expiry
  date. Expired sources are NOT deleted but no new claims can cite them.

## Edge and failure cases

- **No source for a claim** — block at insert time. CHECK constraint.
- **Source retracted or 404** — flag in `data_source_health`. Claims citing
  it are NOT auto-deleted, but display a "this source is no longer available"
  warning.
- **License change mid-project** — daily scan, alert, no auto-removal.
- **Citation export fails** — fall back to plain text.
- **Two sources contradict on the same claim** — `claim_conflict_group`
  (already created in KP-003) groups them; display both with sources.

## Tests

- **v8-smoke**: 30+ tests
  - claim_source FK integrity
  - Source health auto-update on new claims
  - Citation export in 3 formats
  - Source detail page returns expected fields
  - Editorial revision records the change
  - Source retraction cascades to "this source no longer available" badge
  - License expiry blocks new claims citing the source
  - Source page includes "used on these pages" list
  - Existing v2-v7 smoke (222 tests) still pass

## Documentation updates

- `packages/db/AGENTS.md` — add source_record + claim_source tables
- `apps/api/src/routes/v1/AGENTS.md` — add /sources, /citations endpoints
- `docs/architecture/0004-evidence-graph.md` — ADR explaining the
  source_record + claim_source design
- `docs/api/citations.md` — user-facing doc on citation export

## Quality gates

- [ ] Every legacy claim has ≥1 source_record
- [ ] Every claim_source row has both claim_id and source_record_id
- [ ] Citation export works in 3 formats
- [ ] Source health dashboard populates
- [ ] Editorial revision captures every change
- [ ] No regression in v2-v7 (222 tests pass)
- [ ] v8 smoke (30+ tests) all pass

## Review findings

(Filled at PASS time.)

## Evidence

- Migration applied to dev
- source_record row count: ≥150
- claim_source row count: ≥150
- data_source_health populated for top 20 sources
- v8 smoke: 30+ tests pass
- All previous smoke (222 tests) still pass

## Decision: PASS / BLOCKED

(Filled at PASS time.)

## Next task

After KP-004 PASS:
- **KP-005**: Identity resolution (aliases, duplicates, merge, split)
- **KP-007**: Media rights pipeline (parallel — independent task)
- **KP-016**: Grounded AI "Ask" (uses the claim model + evidence graph)

## Open questions

1. **What to do when a source is retracted or 404** — auto-remove the claim
   or display a warning? Recommend: warning, not removal, so the user knows
   to seek alternate sources.
2. **How to handle claims with 0 sources** during legacy migration — assign
   a placeholder source ("legacy-unverified") or skip? Recommend: placeholder
   + low confidence (0.3) so we don't lose data.
3. **Source retraction propagation** — when a paper is retracted, should all
   claims citing it be flagged? Recommend: yes, surface as "claim uses
   retracted source" warning.
