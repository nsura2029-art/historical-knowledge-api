# KP-003: Universal ontology and D1 schema (atomic-claim model)

> **Status**: Draft for user review
> **Author**: Mavis (Mavis)
> **Date**: 2026-08-06
> **Quarter**: Q1 (weeks 3-5)
> **Depends on**: KP-001 (product intents) ✅, KP-002 (source registry) ✅
> **Blocks**: KP-004, KP-005, KP-010, KP-019

## User intent

Replace the **implicit claim model** (every fact lives in `career_event` or
`otd_event` with a `source_id`) with the PRD's **explicit atomic-claim model**
(`claim` + `claim_source` + `source_record`).

The atomic-claim model is the **moat** of the Britannica-style platform.
Every fact is a typed claim with sources, certainty, precision, validity, and
review status. The platform CANNOT ship without it (per PRD §"Required").

## Why this matters

The PRD is explicit (line 313-341): "A narrative paragraph must not be the
only representation of truth." Today, our `career_event.description` is a
free-text paragraph with a single `source_id`. If the description is wrong,
we have no way to point to the specific claim that's wrong. If a source
contradicts another, we have no way to model the conflict. If a claim is
uncertain, we have no way to express that.

The atomic-claim model fixes all of this. It's the difference between a
**blog with citations** and a **knowledge graph**.

## Business outcome

- **Multi-source support**: A single fact can have 1-5 sources, with confidence
  scores. Britannica-style "Source A says X, Source B says Y, we prefer X
  because..." becomes possible.
- **AI "Ask" with citations**: KP-016 (grounded AI) requires the claim model
  to cite per-paragraph.
- **Quality gates**: KP-020 (auto-block on bad data) requires claim-level
  metrics, not just row-level.
- **Editorial corrections**: KP-019 (correction workflow) requires the
  claim model to track which specific claim is being corrected.

## In scope / Out of scope

### In scope (this task)

- **New tables**: `claim`, `claim_source`, `source_record`, `claim_conflict_group`,
  `editorial_revision`, `content_section`.
- **Migration**: Backfill `claim` rows from existing `career_event` and
  `otd_event` data. Dual-write during migration.
- **API impact**: New endpoints `GET /v1/claims/{id}`, `GET /v1/entities/{id}/claims`,
  `GET /v1/entities/{id}/sources`, `GET /v1/entities/{id}/conflicts`.
- **Schema validation**: Every claim MUST have a subject_entity_id, predicate,
  value (entity or literal), and at least one source. Enforce via CHECK.

### Out of scope

- **content_section** table is created but the body_markdown is not yet
  stored. KP-016 (top questions) populates this.
- **editorial_revision workflow** table is created but the queue UI is in
  KP-019.
- **claim_conflict_group** is created but conflict display is a separate task.

## Approved data sources and licenses

| Source | Use | License |
|---|---|---|
| Wikidata | seed identity, external IDs | CC0 |
| VIAF | authority IDs | ODC-PDDL |
| Library of Congress | authority IDs | public domain |
| Calendrify (existing) | holiday data | CC-BY 4.0 |
| Existing source_registry (108 sources) | news, scholarly, gov | various |

## Current behavior (today)

```sql
-- Every fact lives in career_event with a single source_id
SELECT id, person_id, event_type, description, source_id, source_url
FROM career_event
WHERE person_id = 'ent_frida-kahlo';
```

Limitations:
- 1 source per event (no multi-source)
- No confidence/certainty
- No validity period (when does this claim stop being true?)
- No conflict modeling
- description is free-text with no claim linkage

## Proposed schema (this migration)

```sql
-- 1. claim: atomic fact
CREATE TABLE IF NOT EXISTS claim (
  id TEXT PRIMARY KEY,                     -- clm_<uuid>
  subject_entity_id TEXT NOT NULL REFERENCES entity(id),
  predicate TEXT NOT NULL,                -- 'born_in', 'held_office', 'spouse', 'death_cause'
  object_entity_id TEXT REFERENCES entity(id),  -- for entity-valued claims
  literal_value TEXT,                     -- for literal-valued claims (numbers, dates, strings)
  literal_type TEXT,                      -- 'date', 'string', 'number', 'boolean'
  valid_from TEXT,                        -- YYYY-MM-DD
  valid_to TEXT,                          -- YYYY-MM-DD or null (still valid)
  date_precision TEXT NOT NULL DEFAULT 'day'
    CHECK (date_precision IN ('day','month','year','decade','century','approximate','before','after','range','unknown')),
  certainty TEXT NOT NULL DEFAULT 'confirmed'
    CHECK (certainty IN ('confirmed','disputed','approximate','legendary','unknown')),
  confidence REAL NOT NULL DEFAULT 0.5,   -- 0.0 to 1.0
  preferred INTEGER NOT NULL DEFAULT 1,    -- 1 if this is the preferred claim in a conflict group
  sensitivity_level TEXT NOT NULL DEFAULT 'normal'
    CHECK (sensitivity_level IN ('normal','sensitive','restricted')),
  conflict_group_id TEXT REFERENCES claim_conflict_group(id),
  editorial_status TEXT NOT NULL DEFAULT 'pending'
    CHECK (editorial_status IN ('pending','approved','rejected','disputed')),
  created_at INTEGER NOT NULL DEFAULT (unixepoch()),
  updated_at INTEGER NOT NULL DEFAULT (unixepoch()),
  CHECK (object_entity_id IS NOT NULL OR literal_value IS NOT NULL)
);

CREATE INDEX IF NOT EXISTS idx_claim_subject ON claim(subject_entity_id);
CREATE INDEX IF NOT EXISTS idx_claim_predicate ON claim(predicate);
CREATE INDEX IF NOT EXISTS idx_claim_object ON claim(object_entity_id);
CREATE INDEX IF NOT EXISTS idx_claim_status ON claim(editorial_status);
CREATE INDEX IF NOT EXISTS idx_claim_conflict ON claim(conflict_group_id);

-- 2. source_record: individual record from a source (one source = many records)
CREATE TABLE IF NOT EXISTS source_record (
  id TEXT PRIMARY KEY,                     -- sr_rec_<uuid>
  source_registry_id TEXT NOT NULL REFERENCES source_registry(id),
  external_record_id TEXT,                -- e.g. Wikidata QID, VIAF cluster ID
  source_url TEXT NOT NULL,               -- the specific article/record URL
  title TEXT,                             -- article/record title
  author TEXT,                            -- author(s) string
  publisher TEXT,
  publication_date TEXT,                  -- YYYY-MM-DD
  revision_date TEXT,                     -- YYYY-MM-DD
  accessed_at INTEGER NOT NULL DEFAULT (unixepoch()),
  source_type TEXT NOT NULL,              -- 'web', 'api', 'database', 'book', 'archive', 'newspaper'
  license_code TEXT,                      -- SPDX identifier
  rights_statement TEXT,
  locator TEXT,                           -- page, section, paragraph
  r2_object_key TEXT,                     -- if we cached the raw payload
  content_hash TEXT,                      -- sha256 of raw payload (if cached)
  connector_version TEXT NOT NULL,        -- 'wikidata-v1.2.3'
  created_at INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX IF NOT EXISTS idx_source_record_registry ON source_record(source_registry_id);
CREATE INDEX IF NOT EXISTS idx_source_record_external ON source_record(external_record_id);

-- 3. claim_source: which sources support/contradict which claims
CREATE TABLE IF NOT EXISTS claim_source (
  claim_id TEXT NOT NULL REFERENCES claim(id),
  source_record_id TEXT NOT NULL REFERENCES source_record(id),
  support_type TEXT NOT NULL DEFAULT 'supports'
    CHECK (support_type IN ('supports','contradicts','mentions','context')),
  evidence_note TEXT,                     -- "page 23, paragraph 2"
  PRIMARY KEY (claim_id, source_record_id, support_type)
);

CREATE INDEX IF NOT EXISTS idx_claim_source_claim ON claim_source(claim_id);
CREATE INDEX IF NOT EXISTS idx_claim_source_record ON claim_source(source_record_id);

-- 4. claim_conflict_group: when multiple claims disagree
CREATE TABLE IF NOT EXISTS claim_conflict_group (
  id TEXT PRIMARY KEY,                     -- clm_grp_<uuid>
  subject_entity_id TEXT NOT NULL REFERENCES entity(id),
  predicate TEXT NOT NULL,
  description TEXT,                        -- human description of the conflict
  resolution_status TEXT NOT NULL DEFAULT 'unresolved'
    CHECK (resolution_status IN ('unresolved','resolved','unresolvable')),
  resolution_note TEXT,                   -- editor's note
  resolved_at INTEGER,
  created_at INTEGER NOT NULL DEFAULT (unixepoch())
);

-- 5. editorial_revision: change history for any editable field
CREATE TABLE IF NOT EXISTS editorial_revision (
  id TEXT PRIMARY KEY,                     -- ed_rev_<uuid>
  target_entity_id TEXT NOT NULL REFERENCES entity(id),
  target_claim_id TEXT REFERENCES claim(id),
  field_name TEXT NOT NULL,                -- 'description', 'birth_date', etc.
  old_value TEXT,
  new_value TEXT NOT NULL,
  revision_type TEXT NOT NULL              -- 'initial','correction','enhancement','merge'
    CHECK (revision_type IN ('initial','correction','enhancement','merge')),
  contributor_id TEXT,                     -- user/agent/system
  contributor_role TEXT,                   -- 'editor', 'curator', 'system', 'llm'
  source_id TEXT REFERENCES source_registry(id),
  review_status TEXT NOT NULL DEFAULT 'pending'
    CHECK (review_status IN ('pending','approved','rejected','auto_approved')),
  reviewed_by TEXT,
  reviewed_at INTEGER,
  notes TEXT,
  created_at INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX IF NOT EXISTS idx_editorial_revision_target ON editorial_revision(target_entity_id);
CREATE INDEX IF NOT EXISTS idx_editorial_revision_claim ON editorial_revision(target_claim_id);
CREATE INDEX IF NOT EXISTS idx_editorial_revision_status ON editorial_revision(review_status);

-- 6. content_section: narrative paragraphs claim-linked
CREATE TABLE IF NOT EXISTS content_section (
  id TEXT PRIMARY KEY,                     -- cs_<uuid>
  entity_id TEXT NOT NULL REFERENCES entity(id),
  section_type TEXT NOT NULL,              -- 'biography_intro', 'early_life', 'career', etc.
  heading TEXT,                           -- "Early Life"
  body_markdown TEXT NOT NULL,
  claim_ids TEXT,                         -- JSON array of claim IDs
  source_ids TEXT,                        -- JSON array of source_registry IDs
  reading_level TEXT NOT NULL DEFAULT 'general'
    CHECK (reading_level IN ('child','general','advanced','expert')),
  language TEXT NOT NULL DEFAULT 'en',
  author_type TEXT NOT NULL DEFAULT 'human'
    CHECK (author_type IN ('human','assisted','generated')),
  generator_version TEXT,                  -- if generated
  editorial_status TEXT NOT NULL DEFAULT 'pending',
  version INTEGER NOT NULL DEFAULT 1,
  created_at INTEGER NOT NULL DEFAULT (unixepoch()),
  updated_at INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX IF NOT EXISTS idx_content_section_entity ON content_section(entity_id);
CREATE INDEX IF NOT EXISTS idx_content_section_status ON content_section(editorial_status);

-- 7. ingestion_run enhancement
ALTER TABLE ingestion_run ADD COLUMN claim_count INTEGER DEFAULT 0;
ALTER TABLE ingestion_run ADD COLUMN conflict_count INTEGER DEFAULT 0;
```

## Migration plan: backfill from existing data

```sql
-- Step 1: For each career_event, create a claim
INSERT INTO claim (id, subject_entity_id, predicate, object_entity_id,
                   literal_value, literal_type, valid_from, valid_to,
                   date_precision, certainty, confidence, editorial_status)
SELECT
  'clm_legacy_' || ce.id,
  ce.person_id,
  CASE ce.event_type
    WHEN 'birth' THEN 'born_on'
    WHEN 'death' THEN 'died_on'
    WHEN 'marriage' THEN 'married_to'
    WHEN 'divorce' THEN 'divorced_from'
    WHEN 'education' THEN 'educated_at'
    WHEN 'work_start' THEN 'work_started_at'
    WHEN 'work_end' THEN 'work_ended_at'
    WHEN 'award_received' THEN 'received_award'
    WHEN 'role_assumed' THEN 'assumed_role'
    WHEN 'custom' THEN 'custom_event'
    WHEN 'cultural_impact' THEN 'cultural_impact'
  END,
  ce.organization_id,
  ce.description,
  'string',
  ce.start_date,
  ce.end_date,
  'day',
  'confirmed',
  0.8,  -- assumed confidence for legacy
  'approved'  -- legacy approved
FROM career_event ce;

-- Step 2: For each otd_event, create a claim
INSERT INTO claim (id, subject_entity_id, predicate, literal_value, literal_type, valid_from, ...)
SELECT
  'clm_otd_' || oe.id,
  oe.id,  -- otd_event IS itself an entity in our model
  'occurred_on',
  oe.title,
  'string',
  oe.start_date,
  ...
FROM otd_event oe;

-- Step 3: For each claim, create a claim_source from the source_id
INSERT INTO claim_source (claim_id, source_record_id, support_type, evidence_note)
SELECT
  cl.id,
  'sr_rec_legacy_' || cl.id,  -- synthetic source_record for now
  'supports',
  ce.source_locator
FROM claim cl
JOIN career_event ce ON ce.id = substr(cl.id, 11)  -- strip 'clm_legacy_'
WHERE cl.id LIKE 'clm_legacy_%';

-- Step 4: For each claim, create a source_record
INSERT INTO source_record (id, source_registry_id, source_url, source_type, connector_version, locator)
SELECT
  'sr_rec_legacy_' || cl.id,
  cl.source_id,
  cl.source_url,
  'web',
  'legacy-v1',
  cl.source_locator
FROM claim cl
WHERE cl.id LIKE 'clm_legacy_%';
```

The migration runs in a single D1 transaction. If it fails, we rollback to
the previous state. After migration, we have **~150 claim rows** from
existing data, all approved, all with a synthetic legacy source_record.

## API contract

```
GET /v1/claims/{id}
  → Claim detail with all sources, conflicts, revisions

GET /v1/entities/{id-or-slug}/claims
  Query: ?predicate=&from=&to=&certainty=
  → All claims about this entity, grouped by predicate

GET /v1/entities/{id-or-slug}/sources
  → All sources supporting claims about this entity
  (different from /references which is per-claim)

GET /v1/entities/{id-or-slug}/conflicts
  → All claim conflicts for this entity

GET /v1/claim-conflicts
  Query: ?subject=&predicate=&resolution=
  → All open conflict groups

POST /v1/admin/claims/{id}/approve
POST /v1/admin/claims/{id}/reject
POST /v1/admin/claims/{id}/mark-disputed
```

## Security and privacy

- **Open read API** for public claims (consistent with rest of /v1/*)
- **Admin write API** requires Cloudflare Access (set up in KP-021)
- **Sensitive claims** (sensitivity_level = 'sensitive' or 'restricted') may
  be filtered out of public responses (e.g. health conditions of living
  people, addresses of public figures).
- **Per-claim audit log** via `editorial_revision` — every change is
  recorded.

## Edge and failure cases

- **Empty claims array** for a newly-created entity — return 200 with empty
  array, not 404.
- **Claim with no sources** — should be impossible (CHECK constraint
  requires at least one claim_source). If it happens, treat as quality issue
  and block publish.
- **Conflicting claims** — display the preferred claim + alternatives with
  sources. Don't pretend there's no conflict.
- **BCE dates** — `valid_from` can be negative. `date_precision = 'approximate'`
  if exact date is unknown.
- **Disputed certainty** — display "disputed" badge; don't hide the claim.
- **Legacy data without claim linkage** — first migration creates claim rows
  but with low confidence (0.5). Editorial review can raise confidence as
  sources are added.

## Tests

- **v7-smoke**: 25+ tests
  - Migration backfills expected number of claim rows
  - claim + claim_source referential integrity
  - Confidence/certainty CHECK constraints enforced
  - Conflict group membership
  - Editorial revision trail
  - Migration is idempotent (can re-run safely)
  - Rollback path works (DROP TABLE statements documented)
  - No regression in existing endpoints

## Documentation updates

- `packages/db/AGENTS.md` — add claim/source_record tables
- `packages/db/migrations/AGENTS.md` — add 0012 entry
- `apps/api/src/routes/v1/AGENTS.md` — add /claims endpoints
- `docs/architecture/0003-claim-model.md` — ADR explaining why we have
  a separate claim table

## Quality gates

- [ ] All 24+ CHECK constraints enforced
- [ ] Migration is idempotent
- [ ] No regression in v2-v6 smoke (197 tests still pass)
- [ ] New v7 smoke (25+ tests) all pass
- [ ] Every existing career_event has a corresponding claim row
- [ ] Every existing career_event.source_id has a corresponding source_record
- [ ] claim + claim_source are FK-consistent
- [ ] No orphan rows after migration

## Review findings

(Filled at PASS time.)

## Evidence

- Migration applied to dev
- Claim row count: ≥150
- Source_record row count: ≥150
- claim_source row count: ≥150
- v7 smoke: 25+ tests pass
- All previous smoke (197 tests) still pass

## Decision: PASS / BLOCKED

(Filled at PASS time.)

## Next task

After KP-003 PASS:
- **KP-004**: Evidence graph (claim_source + source_record + citation)
- **KP-005**: Identity resolution (merge/split history)
- **KP-019**: Editorial console v0

## Open questions

1. **content_section claim_ids** — store as JSON array? Or normalize to
   `content_section_claim` join table? Recommend: JSON for now, normalize
   in Q3 if we have performance issues.
2. **Confidence calculation** — should we recompute confidence when a new
   source is added? Recommend: yes, but as a deferred task (not in KP-003).
3. **Legacy claim deletion** — when we replace a career_event with a claim,
   do we keep the legacy row for backward compat? Recommend: yes, dual-write
   for 6 months, then drop.
