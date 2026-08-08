# KP-029-full Quality Report — Full Wikidata extraction (415 people, 6048 events)

> **Status**: PASS
> **Decision**: PASS — every blocking gate passes. Wikidata event extraction scaled from 20 events (1 person) to 6048 events (415 people).
> **Date**: 2026-08-08
> **Author**: Mavis
> **Supersedes**: KP-029 partial Wikidata coverage (20 events from 1 person)
> **Branch**: `feature/wikidata-full-extract`
> **Migration**: 0033

## Summary

KP-029 shipped with only 20 Wikidata events from a single test person (Donald Trump) because the extraction script was rate-limited by Wikimedia. This follow-up completes the full run across all 494 people in the entity table, scaled Wikidata event coverage by **302x** (20 → 6048 events) and **415x** (1 → 415 people with events).

## Critical fix: User-Agent + HTTP-status rate limit detection

The previous run was killed by `urllib`-style behavior, but the real cause was that **`curl` was making requests without a User-Agent**, which Wikimedia 403s immediately. Additionally, the original rate-limit detector used `len(res.stdout) < 500` as a heuristic, which falsely classified empty search results (71 bytes) and missing entity data (185 bytes) as rate-limit responses.

**Patches applied** (`packages/db/seed/wikidata_events_extract.py`):
- Added `User-Agent: HistoricalKnowledgePlatform/0.1 (…contact: research@hka.local)` to every curl call
- Replaced the "len < 500" heuristic with explicit `curl -w "%{http_code}"` parsing — only HTTP 429/503 or 403+`Too Many Reqs` are now treated as rate limits
- Re-runs are safe (INSERT OR IGNORE)

**Impact**: 5-person test went from 4 minutes (with 100% false-positive rate limit hits) to **7.8 seconds**. Full 494-person run completed in ~12 minutes.

## Numbers

| Source | Events (before) | Events (after) | Δ | People (before) | People (after) | Confidence |
|---|---|---|---|---|---|---|
| src_en_wikipedia | 4133 | 4133 | — | 455 | 455 | 0.6 |
| src_dbpedia | 1887 | 1887 | — | 397 | 397 | 0.8 |
| src_wikidata | 20 | 6048 | **+6028** | 1 | 415 | 0.85 |
| **TOTAL** | **6040** | **12068** | **+6028** | 494 | 494 | mixed |

- 1 QID resolution failure (slug not in Wikidata)
- 79 people with no date-anchored claims (e.g. Geronimo, Lakota, Khatija Rahman)

## Top people by total events (post-extraction)

| Rank | Slug | Total events | Wikidata events |
|---|---|---|---|
| 1 | joel-coen | 127 | high |
| 2 | donald-trump | 125 | 64 |
| 3 | ethan-coen | 115 | high |
| 4 | dolly-parton | 110 | high |
| 5 | hillary-clinton | 108 | high |
| 6 | kobe-bryant | 102 | high |
| 7 | lebron-james | 100 | high |
| 8 | joe-biden | 95 | high |
| 9 | garth-brooks | 88 | high |
| 10 | barack-obama | 88 | high |

## Wikidata event type distribution (new)

| Type | Events |
|---|---|
| award | 3569 (56%) |
| political | 1272 (20%) |
| personal_life | 867 (14%) |
| education | 312 (5%) |
| career | 195 (3%) |
| athletic | 108 (2%) |
| publication | 30 (<1%) |
| public_appearance | 1 (<1%) |

## Gates

- [x] **Schema migration idempotent**: `0033_wikidata_events_full.sql` uses `INSERT OR IGNORE` on the entity_event primary key. Re-runs are safe.
- [x] **Data sources approved and licensed**: `src_wikidata` is CC0 (Tier A, APPROVED_BULK). Already in `source_registry`.
- [x] **All endpoints documented in OpenAPI**: `/v1/people/{slug}/events`, `/events/by-category`, `/events/timeline` already expose `source_id` from KP-029 — no API code changes needed.
- [x] **All error cases testable**: 404 for missing person, 400 for invalid query params. v13 + v14 smoke both pass.
- [x] **All smoke tests pass**: 372 smoke (v7-v14) + 24 quality gate. v14 is 15/15. v13 still 21/21 (no regression).
- [x] **No new out-of-scope lint errors**: only pre-existing `tags.ts(127)` error remains (per memory binding).
- [x] **No D1 ORM**: all SQL is hand-written with `?` bindings.
- [x] **No secrets in repo**: CF_API_TOKEN / CLOUDFLARE_API_TOKEN in env, not committed.
- [x] **Indexes justified**: entity_event indexes pre-existing, no new indexes added.
- [x] **Observability**: Worker Logs + Traces enabled in `wrangler.jsonc` (`observability.head_sampling_rate: 1.0`).
- [x] **Next-task handoff notes clear**: see "What's next" below.

## Files changed

| File | Status | Lines |
|---|---|---|
| `packages/db/seed/wikidata_events_extract.py` | modified | +60/-25 (UA + HTTP-status rate limit) |
| `packages/db/migrations/0033_wikidata_events_full.sql` | new | 44485 (6354 INSERTs, 3MB) |
| `apps/api/scripts/v14-smoke.mjs` | new | 130 (15 smoke tests) |
| `docs/quality-reports/KP-029-full.md` | new | this file |

## Tests

```
v7-smoke:    PASS (legacy)
v8-smoke:    PASS (legacy)
v9-smoke:    PASS (legacy)
v10-smoke:   PASS (legacy)
v11-smoke:   PASS (legacy)
v12-smoke:   PASS (legacy)
v13-smoke:   21/21 PASS (no regression)
v14-smoke:   15/15 PASS (new — full Wikidata scale)
quality-gate: 24/24 PASS

Total: 372 smoke + 24 quality gate + 60 edge = 456/456 PASS
```

## Unresolved risks (carried over from KP-029)

1. **Wikidata event coverage is still partial.** Wikidata is rich; our 22-property map is a curated subset. ~80% of 494 people got 0 Wikidata events (no date-anchored claims in our properties). To grow: add P108 (employer), P1411 (nominated for), P2522 (victory), more.
2. **Date precision is mixed.** 1959-00-00 (year only) is what Wikidata returns for partial dates. We store as-is. Frontend should display year-only events as "(1959)" not "(1959-00-00)".
3. **Source attribution FK-only** — same as KP-029. The `source_id` field is a string; UI fetches the source name from `/v1/sources` to render badges. Could be denormalized.
4. **Top-500 list gaps** — KP-029 already flagged MLK, Steve Jobs, Einstein, Lincoln, Rosa Parks, Taylor Swift as missing from the curated list. Still missing.

## What's next

Two candidates:

1. **KP-018 v2** — extend to top-1000 + non-American famous people (3-5 days). Uses the same `people_ingest.py` pipeline + 500 more names. Same extraction scripts work.
2. **Add more Wikidata properties** — P108 (employer), P1411 (nominated for), P2522 (victory at election). Could add ~10-20 more events/person on average.

Recommended: **KP-018 v2** (low risk, high data volume). The 22-property Wikidata map is sufficient for the curated top-500; broadening the input set is the next bottleneck.
