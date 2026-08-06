# Connected Knowledge Platform — 6-Month MVP Roadmap

> **Author**: Mavis (Mavis)
> **Date**: 2026-08-06
> **Status**: User-approved (lgtm 2026-08-06)
> **Decision**: Option C — 6-vertical Britannica-style platform + famous-people + on-this-day as anchor

## TL;DR

Build a Britannica-style connected knowledge platform across 6 verticals
(Biographies, Science & Tech, Animals & Nature, Geography & Travel, Arts &
Culture, Games & Quizzes), reusing the famous-people + on-this-day work as
the home anchor.

**Year 1 target**: **10-minute average visit** by end of Year 1.
**Year 2 target**: 1.1M entities, 6 verticals fully fleshed out, public launch-grade.

**Timeline**:
- **Q1 (months 1-3)**: Foundation + Geography vertical + on-this-day MVP
- **Q2 (months 4-6)**: Science & Tech + Nature + Identity resolution
- **Q3 (months 7-9)**: Arts & Culture + Quizzes + Async ingestion
- **Q4 (months 10-12)**: Polish + 10-min visit features + Year-1 launch

**LLM-first**: Editorial team comes end of Year 1. Until then, LLM drafting
pipeline does the heavy lifting (TASK-022 → KP-022 equivalent). Humans review,
not draft. Quality gates (KP-020) auto-block unsafe publish.

## Strategic shift

**Before**: We were building a "famous-people + on-this-day" product. The 12
event categories I proposed, the curated famous-people hub, the timeline
endpoints — all aimed at a single-vertical product.

**After (Option C)**: We build the **6-vertical Britannica-style platform**
described in the PRD, with famous-people + on-this-day as the **Biographies
vertical + home anchor** of the broader product. The other 5 verticals grow
alongside.

**Why this shift matters**:
- Britannica-style competitors have 5+ verticals. Single-vertical = dead end.
- The PRD's atomic-claim model + source-backed evidence graph is the moat.
- The 12 event categories fit naturally as a *property* of the `Event`
  entity in a 6-vertical schema.
- The 10-min visit goal is reachable only with multi-vertical content + cross-linking.

## The 24 KP tasks, mapped to 4 quarters

The PRD lays out 24 sequential tasks (KP-001 through KP-024). The new playbook
IS the work, in dependency order. Skipping ahead is forbidden. Here's how they
map to a 6-9 month roadmap:

### Q1: Foundation (weeks 1-12) — Famous-People upgrade + Geography

| Week | KP | Task | What it produces |
|---|---|---|---|
| 1-2 | KP-001 | Confirm product intents, personas, page contracts | Aligned with PRD 6 verticals |
| 2-3 | KP-002 | Source registry + connector allowlist | ✅ Already done (108 sources, tier A-E) |
| 3-5 | **KP-003** | **Universal ontology + D1 schema** | **`claim` table, `entity_name` with claim links, full PRD schema** |
| 5-7 | **KP-004** | **Evidence/bibliography/citation/revision model** | **`claim_source` join, `source_record`, `editorial_revision`** |
| 7-8 | KP-005 | Identity resolution (aliases, duplicates, merge, split) | Merge/split history table, `entity_canonical` redirects |
| 8-9 | KP-006 | Temporal + geographic foundation | `boundary_version`, `time_zone_observation`, place hierarchy |
| 9-10 | KP-007 | Media + rights pipeline | `media_rights` table, R2 download job, attribution display |
| 10-11 | KP-008 | Slugs, internal links, breadcrumbs, related explanations | ✅ Mostly done; enrich with claim IDs |
| 11-12 | KP-019 | Editorial console v0 (review queue, approve/reject) | React admin app, queue UI, claim approval flow |

**Q1 deliverable**: Famous-people + on-this-day works on the **atomic-claim
model**, with editorial review UI for new content. 5K people, 16K on-this-day
items, 10K places.

### Q2: Science + Nature + Identity (weeks 13-24) — 2 new verticals

| Week | KP | Task | What it produces |
|---|---|---|---|
| 13-15 | KP-013 | Geography vertical (we already have place) | Place hierarchy, statistics, time zones, travel |
| 15-17 | **KP-011** | **Science & Technology vertical** | `publication`, `concept`, `technology`, `dataset`, `patent_or_standard`; Crossref + OpenAlex connectors |
| 17-19 | **KP-012** | **Animals & Nature vertical** | `taxon_concept`, `occurrence_record`, `conservation_assessment`; GBIF + Catalogue of Life connectors |
| 19-21 | KP-016 | Top questions + grounded AI "Ask" | `question` entity, LLM with claim citations, per-paragraph sources |
| 21-22 | KP-009 | Universal search + intent detection + facets upgrade | Search across 3 verticals, intent classification |
| 22-24 | KP-017 | Public + admin API polish | Rate limits, OpenAPI hardening, version docs |

**Q2 deliverable**: 3 verticals live (Biographies, Geography, Science & Tech,
Nature). 50K entities. Cross-vertical search. AI Ask with citations.

### Q3: Arts + Quizzes + Async (weeks 25-36) — All 6 verticals

| Week | KP | Task | What it produces |
|---|---|---|---|
| 25-27 | **KP-014** | **Arts & Culture vertical** | `creative_work`, `work_expression`, `edition`, `performance`, `cultural_object`; Met Museum + Smithsonian + Library of Congress connectors |
| 27-29 | **KP-015** | **Games & Quizzes vertical** | `question`, `quiz`, `attempt`, `response`, QTI 3 export, spaced repetition |
| 29-31 | KP-018 | Queues + Workflows + idempotency + DLQ | Async enrichment, durable multi-step state, dead-letter queue |
| 31-33 | KP-020 | Quality scoring + publication gates | Runtime gate enforcement, auto-block on failed publish |
| 33-34 | KP-023 | Observability + source health + cost | Logs, metrics, source uptime, per-vertical cost |
| 34-36 | KP-008/009 enrichment | All verticals' internal links + facets | Cross-vertical "see also", compare widgets |

**Q3 deliverable**: All 6 verticals live. Quizzes. Async enrichment. 100K+ entities.
Auto-quality gates.

### Q4: Polish + Launch (weeks 37-52) — Production-grade

| Week | KP | Task | What it produces |
|---|---|---|---|
| 37-39 | KP-021 | Security + privacy + abuse + sensitive-entity controls | Cloudflare Access, rate limits, abuse detection, living-person rules |
| 39-41 | KP-022 | Accessibility (WCAG 2.2 AA) + i18n + SEO | Screen reader, keyboard, RTL, structured data, sitemap segmented |
| 41-43 | KP-024 | Pilot release + independent audit | Beta with 1K users, security audit, performance audit |
| 43-46 | — | Bug fixes + UX polish from beta | Address top 50 issues, mobile-first redesign |
| 46-50 | — | **10-min visit features** (see below) | Quiz hooks, compare widgets, save/collect, email digest |
| 50-52 | KP-024 | Public launch + monitoring | Press, marketing, monitoring on |

**Q4 deliverable**: Public launch, WCAG 2.2 AA, 10-min avg visit, 100K+ entities,
6 verticals, all 24 KP tasks complete.

## 10-minute visit strategy (Year 1 target)

**Year 1 target**: 10-min avg visit by end of Q4. Plan now, build in
Q2-Q4. Q1 builds the foundation. Q2-Q4 add the engagement features.

### 10-min session anatomy (target)

```
0:00  Land on home (on-this-day) — 5 sections visible
0:30  Click on a person/place/event — 1 min on entity page
1:30  Open top question — 30s
2:00  Read 2-3 sections of the article
5:00  Take the quiz at the end — 1 min
6:00  Click "compare with" — land on comparison page
7:30  Click related entity from comparison — 1 min
8:30  Save to collection (logged-in) — 30s
9:00  Open "did you know" — 30s
9:30  Open another related entity — 1 min
10:30  Exit (avg 10 min)
```

### Features that drive the 10-min target (Q2-Q4 build order)

| # | Feature | Engagement delta | Phase | LLM helps? |
|---|---|---|---|---|
| 1 | **Related carousel** (similar entities) | +30s | ✅ Done | Yes — picks relevant |
| 2 | **Sticky "On this page" navigation** | +30s | Q2 | No |
| 3 | **Top questions accordions** | +45s | Q2 (KP-016) | **Yes — generates questions from claims** |
| 4 | **Progressive disclosure** (5-min vs deep dive) | +60s | Q2 (KP-016) | **Yes — generates both layers** |
| 5 | **Inline quiz hook at end of every article** | +60s | Q3 (KP-015) | **Yes — generates quizzes from claims** |
| 6 | **Cross-vertical "see also"** | +45s | Q3 (KP-009) | Yes |
| 7 | **Audio summary** | +30s | Q3 (KP-022) | **Yes — TTS from approved claims** |
| 8 | **"What happened nearby" map** | +60s | Q3 (KP-013) | No |
| 9 | **"Compare with" widget** | +90s | Q4 | **Yes — generates comparison** |
| 10 | **"Did you know" sidebar** | +20s | Q4 | **Yes — generates trivia** |
| 11 | **Save to collection** | +30s | Q4 (KP-019) | No |
| 12 | **Email digest (on-this-day daily)** | +20% return users | Q4 | **Yes — generates the digest** |
| 13 | **Personalized feed** | +60s | Q4 | **Yes — picks from your reading history** |
| 14 | **Discussion/comments (moderated)** | +90s | Q4 | No (humans only) |

### 10-min success metrics

- Avg session duration: **600s** (current estimate: ~120s with our test data)
- Pages per session: **4-6**
- Bounce rate: **<40%**
- Returning users: **40%+** within 30 days
- Email digest open rate: **25%+**
- Quiz completion rate: **30%+** of users who start
- Save-to-collection rate: **15%+** of users

### Mobile-first design (60%+ of traffic)

- Single-column on mobile
- Sticky bottom bar with "next section" / "quiz" / "save"
- Tap-to-expand accordions
- Pull-to-refresh on on-this-day
- 4G-friendly image sizes (R2 transform)

## Volume targets (Year 1: LLM-first)

| Vertical | Q1 | Q2 | Q3 | Q4 (Year 1 launch) | Year 2 target |
|---|---|---|---|---|---|
| Biographies (people) | 1K | 5K | 15K | 30K | 200K |
| Geography (places) | 5K | 15K | 30K | 50K | 500K |
| Science & Tech (publications, concepts) | — | 2K | 8K | 20K | 100K |
| Animals & Nature (taxa, occurrences) | — | 1K | 5K | 15K | 100K |
| Arts & Culture (works, editions) | — | — | 5K | 15K | 100K |
| On-this-day (events) | 5K | 15K | 30K | 50K | 200K |
| Holidays (Calendrify) | 16K | 16K | 16K | 16K | 16K |
| **Total entities** | **27K** | **54K** | **109K** | **196K** | **1.1M** |

LLM-first means lower volumes in Year 1 (1 human reviewer vs the 4-FTE team
in the earlier plan). Year 2 with editor team can hit 1.1M.

## Connectors (data sources)

| Source | Tier | Q | Used for |
|---|---|---|---|
| Wikidata SPARQL | A | Q1 | Identity, aliases, birth/death, family |
| GeoNames | A | Q1 | Place data, hierarchy, time zones |
| Calendrify (dateandtime.live) | B | Q1 | 190-country holidays |
| Nager.Date | B | Q1 | Holiday backup |
| VIAF / Library of Congress | A | Q1 | Authority IDs, aliases |
| Crossref | A | Q2 | Publications, DOIs, retractions |
| OpenAlex | A | Q2 | Scholarly entities, citations |
| Europe PMC | A | Q2 | Biomedical literature |
| GBIF | A | Q2 | Occurrence records, taxa |
| Catalogue of Life | A | Q2 | Taxonomic backbone |
| ITIS | A | Q2 | US/Canada taxa |
| Met Museum | A | Q3 | Cultural objects |
| Smithsonian Open Access | A | Q3 | Cultural objects |
| Library of Congress | A | Q3 | Works, editions |
| Europeana | A | Q3 | European cultural works |
| MusicBrainz | A | Q3 | Music identities |
| 35+ news outlets (BBC, NYT, AP, etc.) | D | Q1 | Current events, biographies |
| Britannica (link-only, never ingest) | — | All | UX reference, outbound links only |

## Quality gates (per PRD §5)

Universal thresholds (must hold for every entity):
- `identity_confidence >= 0.95` for automatic resolution
- `critical_fact_source_coverage = 1.00`
- `weighted_provenance_score >= 0.90`
- `unsupported_generated_material_claims = 0`
- `unresolved_duplicate_count = 0`
- `rights_readiness = 1.00` for displayed media
- `broken_primary_internal_links = 0`
- `expired_high_impact_current_claims = 0`
- `critical_security_failures = 0`
- `critical_accessibility_failures = 0`
- `OpenAPI_contract_failures = 0`

Auto-block publish on any failure.

## Risks and mitigations

| Risk | Severity | Mitigation |
|---|---|---|
| Atomic-claim migration breaks existing API | High | Dual-write during migration; old fields nullable, new fields filled gradually |
| Editorial team is the bottleneck | High | LLM drafting pipeline (TASK-022) — humans review, not draft |
| Source license changes mid-project | Medium | Source registry status flag, daily checks, no scraping fallback |
| Wikidata SPARQL rate limits | Medium | Batch queries, cache, mirror locally |
| Image rights takedowns | Medium | Mandatory rights record; revert in <24h |
| Scope creep into 7th vertical | High | Hard gate: ship 6 verticals, then consider expansion |
| 10-min visit target missed | Medium | A/B test features; rebuild failing ones; don't ship until validated |
| Cloudflare cost overrun | Low | Per-entity cost dashboard; budget alert at $500/mo |
| Multilingual translation is hard | High | Defer to year 2; ship English-only MVP |

## What changes from the famous-people product plan

| Old (Option A) | New (Option C) |
|---|---|
| 12 narrow event categories | 12 categories → `Event` entity with `category` enum |
| career_event with source_id | `claim` + `claim_source` + `source_record` (atomic-claim model) |
| Media asset only | `media_asset` + `media_rights` (separate rights table) |
| 50K people / 50K events | 200K people / 200K events / 6 verticals / 1.1M total entities |
| 1 month to launch | 6-9 months to MVP, 12-15 months to launch-grade |
| Famous-people hub = the product | Famous-people = Biographies vertical + home anchor |
| No editorial UI | Editorial admin console (React) |
| No async ingestion | Queues + Workflows + 12 connectors |
| English only | English only for MVP, i18n scaffolded for year 2 |

## Effort estimate

| Quarter | Workload | Agent count |
|---|---|---|
| Q1 (weeks 1-12) | Foundation, claim model, Geography, on-this-day MVP | 1 agent + 1 editorial contractor |
| Q2 (weeks 13-24) | Science, Nature, Top Questions, search upgrade | 1 agent + 1 editor + 1 data engineer |
| Q3 (weeks 25-36) | Arts, Quizzes, async ingestion, quality gates | 1 agent + 1 editor + 1 data engineer |
| Q4 (weeks 37-52) | Polish, accessibility, security, 10-min features, launch | 1 agent + 1 editor + 1 designer + 0.5 SRE |

**Total**: 1 lead agent + 1 editor + 1 data engineer + 0.5 designer + 0.5 SRE
= 4 FTE for 12 months, or 2 FTE for 18 months.

## Next actions (this week)

1. **Spec KP-003** (atomic-claim model) — the most critical foundation task.
2. **Spec KP-004** (evidence graph) — depends on KP-003.
3. **Spec KP-007** (media rights pipeline) — independent, can run parallel.
4. **Update AGENT-INSTRUCTIONS.md** to align task sequence (20 → 24 KP).
5. **Update DOX** (AGENTS.md files) to reflect the new roadmap.

User: review this roadmap. If LGTM, I'll commit the spec docs through the
git workflow (feature branch → deploy → your verification → LGTM → merge).
