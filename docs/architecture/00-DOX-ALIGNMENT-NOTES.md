# DOX Alignment Notes — 2026-08-06

> **Purpose**: Map the 20-task AGENT-INSTRUCTIONS.md sequence to the 24-task
> KP-### sequence in the Britannica-inspired PRD playbook, and identify which
> docs need updating.

## Two sequences, one set of work

We have:
1. **20-task sequence** in `AGENT-INSTRUCTIONS.md` (the operating contract,
   our existing playbook)
2. **24-task KP sequence** in `britannica_inspired_agent_execution_playbook.md`
   (the new PRD, just received from user)

The 20-task sequence is a **subset of the 24-task sequence** with different
numbering. The new KP-### tasks are the source of truth going forward.

## Mapping

| AGENT-INSTRUCTIONS.md | KP equivalent | Notes |
|---|---|---|
| TASK-001 Platform foundation | KP-001 + KP-002 | KP-001 = intents, KP-002 = source registry |
| TASK-002 API contract and docs | KP-017 (partial) | KP-017 = public + admin APIs |
| TASK-003 Source registry | KP-002 | ✅ Already done (108 sources) |
| TASK-004 Core canonical schema | KP-003 | Atomic-claim model is in KP-003 |
| TASK-005 Raw ingestion framework | KP-018 (partial) | KP-018 = Queues + Workflows |
| TASK-006 Wikidata seed connector | KP-010 (partial) | Biography vertical pulls Wikidata |
| TASK-007 GeoNames + place resolution | KP-013 (partial) | Geography vertical |
| TASK-008 Historical dates + calendars | KP-006 | Temporal + geographic foundation |
| TASK-009 Entity resolution + dedup | KP-005 | Identity resolution |
| TASK-010 Claim provenance + conflict | KP-003 + KP-004 | Split across two KP tasks |
| TASK-011 Taxonomy + enrichment | (no direct match) | Taxonomy is part of KP-010..KP-015 |
| TASK-012 Public entity APIs | KP-017 | ✅ Already done (28+ endpoints) |
| TASK-013 Date + "On This Day" APIs | (custom, not in KP) | Our addition, fine to keep |
| TASK-014 Search + user intent | KP-009 | Universal search |
| TASK-015 Related links + timelines | KP-008 (partial) | Internal links, breadcrumbs |
| TASK-016 Editorial + correction workflow | KP-019 | Editorial console |
| TASK-017 Generated learning content | (no direct match) | Q3 work, KP-014 + KP-015 |
| TASK-018 Security + quotas | KP-021 | Security + privacy |
| TASK-019 Observability | KP-023 | Observability |
| TASK-020 Release readiness | KP-024 | Pilot release + audit |

**New KP tasks not in our 20-task list**:
- KP-007 (media + rights pipeline)
- KP-011 (Science & Tech vertical)
- KP-012 (Animals & Nature vertical)
- KP-014 (Arts & Culture vertical)
- KP-015 (Games & Quizzes vertical)
- KP-016 (Top questions + grounded AI)
- KP-020 (Quality scoring + publication gates)
- KP-022 (Accessibility + localization + SEO)

## What to update in the DOX tree

1. **`AGENT-INSTRUCTIONS.md`** — add a section "§9. PRD alignment" that
   references the new KP-### sequence. Don't replace the 20-task list;
   the 20-task list is fine for what we've been doing. The new 24 KP
   tasks are the **roadmap forward**.

2. **`docs/tasks/AGENTS.md`** — add a KP-### status table alongside the
   existing TASK-### status.

3. **`apps/api/src/routes/v1/AGENTS.md`** — add expected new endpoints
   for claim/source/media/quiz/compare.

4. **`packages/db/AGENTS.md`** — add the new tables from KP-003/KP-004/KP-007.

5. **`packages/db/migrations/AGENTS.md`** — add migration 0012+ entries.

6. **New file: `docs/architecture/0003-claim-model.md`** — ADR for atomic-claim
   design.

7. **New file: `docs/architecture/0004-evidence-graph.md`** — ADR for
   source_record + claim_source.

8. **New file: `docs/architecture/0005-media-rights-pipeline.md`** — ADR for
   media + rights design.

9. **New file: `docs/strategy/10-min-visit.md`** — playbook for the 10-min
   avg visit goal.

10. **Update `PRD-IMPLEMENTATION-NOTES.md`** — replace the 4-phase plan
    with the new 4-quarter roadmap.

## When to do these updates

The DOX updates above are part of **Q1's first deliverable** (the
atomic-claim foundation). I'll batch them as a single feature branch:

- `feature/kp-001-pause-and-update-dox` — captures all the DOX alignment
  before we start the heavy work of KP-003.

After LGTM, the work shifts to KP-003 itself (the actual atomic-claim
migration). That goes in its own feature branch and is the long task.

## The 10-min visit playbook (new doc)

`docs/strategy/10-min-visit.md` should answer:
- What's our current avg visit estimate? (we have no analytics, so this is
  theoretical — maybe 60-120s based on the API we have)
- What features drive 10 min? (listed in PRD-MVP-ROADMAP.md)
- How do we measure? (need analytics; out of scope for KP-001)
- What's the per-feature engagement delta? (educated guesses from
  Britannica/Wikipedia behavior data)
- What's the build order? (most impactful first, then diminishing returns)
- What are the failure modes? (users skip quizzes, hate popups, etc.)

This doc is more product-strategy than engineering. It belongs in the
strategy/ subdirectory of docs/.

## Why both sequences?

The 20-task sequence was our internal contract for the famous-people work.
The 24-task KP sequence is the **PRD's contract** for the Britannica-style
platform. We keep both because:
- The 20-task list is what the team has been working from
- The 24-task list is the new source of truth
- They overlap heavily (the mapping above shows ~80% overlap)
- The 20-task list has 4 custom additions (TASK-013 on-this-day, TASK-014
  search, TASK-017 learning, etc.) that don't map cleanly to KP

Going forward, every new feature work should reference BOTH:
- The relevant TASK-### from AGENT-INSTRUCTIONS.md (for the team context)
- The relevant KP-### from the PRD playbook (for the platform context)

## DOX status check

```
✅ DOX tree: 14 AGENTS.md files in place
✅ AGENT-INSTRUCTIONS.md: 20-task sequence documented
✅ docs/tasks/AGENTS.md: TASK-### status table
⚠️  AGENT-INSTRUCTIONS.md §9 (PRD alignment): TO BE ADDED
⚠️  KP-### status table: TO BE ADDED to docs/tasks/AGENTS.md
⚠️  Expected new endpoints: TO BE ADDED to apps/api/src/routes/v1/AGENTS.md
⚠️  Expected new tables: TO BE ADDED to packages/db/AGENTS.md
❌  Migration 0012+ entries: TO BE ADDED to packages/db/migrations/AGENTS.md
❌  ADR 0003-claim-model: TO BE WRITTEN
❌  ADR 0004-evidence-graph: TO BE WRITTEN
❌  ADR 0005-media-rights-pipeline: TO BE WRITTEN
❌  10-min visit playbook: TO BE WRITTEN
⚠️  PRD-IMPLEMENTATION-NOTES.md: TO BE UPDATED
```

The DOX alignment is the **first deliverable** of Option C. Once the docs
are updated and the user LGTMs, we can start KP-003 (the actual atomic-claim
migration) with full context.
