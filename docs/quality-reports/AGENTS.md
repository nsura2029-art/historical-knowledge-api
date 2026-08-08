# docs/quality-reports/AGENTS.md — quality reports

> **Owner**: quality report files. Read before declaring a TASK-### done.

## File naming

`TASK-###.md` or `KP-###.md` where `###` is the task number. There must be ONE report per task (either PASS or BLOCKED).

## Required template

```markdown
# TASK-### Quality Report

> **Status**: PASS | BLOCKED
> **Decision**: PASS — every blocking gate passes. Ready to commit and move to TASK-###+1. | BLOCKED — <reason>
> **Date**: 2026-08-05
> **Author**: <agent or human>

## Summary

<one-paragraph summary of what shipped>

## Gates

- [x] Gate 1: ...
- [x] Gate 2: ...
- [x] Gate N: ...

## Evidence

```
<command output, smoke output, links to deployed Worker, etc.>
```

## Unresolved risks

<list any known issues that are out of scope for this task>

## What's next

<the next task in the sequence>
```

## 11 blocking review questions (per AGENT-INSTRUCTIONS.md §12)

A PR with a BLOCKED quality report is **not mergeable**. The 11 questions are:

1. Does the task match the spec? (User intent covered.)
2. Are all migrations idempotent?
3. Are all data sources approved and licensed?
4. Are all endpoints documented in OpenAPI?
5. Is every error case testable (4xx + 5xx responses)?
6. Do all smoke tests pass?
7. Is the schema migration reversible (down-migration plan)?
8. Are secrets NOT in the repo?
9. Are the new indexes justified (BATCH_SIZE math)?
10. Is observability (logs, metrics) in place?
11. Are the next-task handoff notes clear?

## Current quality reports

| Task | Status | File |
|---|---|---|
| 001 | ✅ PASS | `TASK-001.md` |
| KP-029 | ✅ PASS | `KP-029.md` (multi-source events) |

## How to write a quality report

1. Run the smoke tests, capture output.
2. Verify each gate is met.
3. If any blocker → status BLOCKED, fill "Unresolved risks".
4. If all clear → status PASS.
5. Commit the report alongside the code.
6. Deploy to dev, hand off to user for review.
7. On LGTM, merge to develop.

## When stuck

- A gate fails — fix the underlying issue, don't just re-mark the gate.
- A risk is discovered — note it in "Unresolved risks" and decide: address now or accept as a known issue for the next task.
- The user says LGTM but a gate is not met — that's a BLOCKED situation, not a PASS. The user is wrong; the report is the source of truth.
