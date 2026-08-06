# docs/architecture/AGENTS.md — architecture docs

> **Owner**: architecture documents. Read before adding or editing any architecture doc.

## What lives here

- **ADRs** (Architecture Decision Records) — significant decisions, their context, and their consequences.
- **Audits** — cross-cutting reviews (e.g. "DB edge case audit", "API surface audit").
- **Diagrams** — system context, data flow, deployment topology.

## File naming

- **ADRs**: `NNNN-short-name.md` (4-digit number, sequential). Example: `0001-use-hono-on-cloudflare-workers.md`.
- **Audits**: `TOPIC-AUDIT.md` or `TOPIC-AUDIT-{date}.md`. Example: `DB-EDGE-CASE-AUDIT.md`.
- **Diagrams**: `TOPIC-DIAGRAM.md` (or inline in an ADR).

## ADR template

```markdown
# ADR-NNNN: Title

## Status

Proposed | Accepted | Deprecated | Superseded by ADR-XXXX

## Context

<what's the situation? what's the question?>

## Decision

<what did we decide?>

## Consequences

<what becomes easier? what becomes harder? what do we give up?>

## Alternatives considered

<what else did we look at? why didn't we pick it?>
```

## Audit template

```markdown
# TOPIC Audit

> **Date**: 2026-08-05
> **Author**: <agent or human>
> **Scope**: <what's in scope, what's out>

## Findings

- **Finding 1**: <description, evidence, severity>
- **Finding 2**: ...
- ...

## Recommendations

1. <action 1, priority, owner>
2. ...

## References

<links to code, docs, PRs>
```

## Standing gotchas

- **ADRs are immutable once Accepted.** If a decision changes, write a new ADR that supersedes the old one. Don't edit the old one in place.
- **Cite code paths** with `path/to/file.ts:line` so the reader can verify.
- **Date every doc.** Decisions are tied to a moment in time. Old decisions may be revisited.

## When stuck

- Want to know why a decision was made — find the ADR.
- Want to know what the system looks like topologically — see the architecture diagrams.
- Want to know the cross-cutting constraints — see the audits.
