# Slug Collision Audit — Pre-KP-005 (2026-08-09)

## Scope
Find real and potential slug / canonical-name collisions in `entity` table that KP-005 (identity resolution) will need to handle.

## Method
3 SQL checks against dev D1:
1. Same `canonical_name` (lowercase) → multiple `entity` rows
2. Person `canonical_name` matching org `canonical_name` (Charles Schwab pattern)
3. Place / org dupes (excluding event-place intentional design)

## Real duplicates (need KP-005 merge)

### Persons: 3 cases (6 rows → 3 unique)

| Canonical name | IDs | Slugs | Action |
|---|---|---|---|
| Beyoncé × 3 | `ent_beyonc`, `ent_beyonc-knowles`, `ent_beyonc-knowles-carter` | `beyonc`, `beyonc-knowles`, `beyonc-knowles-carter` | Merge to `ent_beyonc` (most-cited slug) |
| Andrew Mellon × 2 | `ent_andrew-mellon`, `ent_andrew-w-mellon` | `andrew-mellon`, `andrew-w-mellon` | Merge to `ent_andrew-w-mellon` (full name) |
| Bonnie and Clyde × 2 | `ent_bonnie-parker`, `ent_clyde-barrow` | `bonnie-parker`, `clyde-barrow` | **KEEP SEPARATE** — different persons, famous as a pair |

Net: 4 person rows absorbed, 687 unique persons in DB after merge.

### Places: 1 case (2 rows → 1 unique)

| Canonical name | IDs | Slugs | Action |
|---|---|---|---|
| United States × 2 | `ent_us`, `ent_usa` | `us-country`, `united-states` | Merge to `ent_us` (more events likely) |

Net: 1 place row absorbed, 177 unique places.

### Persons vs organizations: 0 exact-name collisions

The Charles Schwab case (org owns slug, person absent) is the only known one — handled by ingestion-skip pattern (the person was never created because the slug is taken). Not a collision in DB.

## Excluded (intentional design — keep as-is)

Event-places like `ent_frida-kahlo-birth` and `ent_frida-kahlo-death` are event anchors, not real place entities. They get attached to persons via `entity_relation` (place_of_birth, place_of_death). 7 of these for "Singapore", 3 for "Mexico City", 2 for "Coyoacán", etc. Total ~30 event-place rows — keep separate from the canonical country/city record.

## Net impact for KP-005

- 5 rows will be merged out (4 persons + 1 place)
- 1 pair (Bonnie & Clyde) flagged for editorial review (decide: pair or separate)
- 0 collisions between person canonical_name and org canonical_name
- 0 collisions between person canonical_name and place canonical_name

## Risks for KP-005 implementation

1. **Beyoncé** has 11 entity_event rows distributed across all 3 slugs — need event re-pointing after merge
2. **Andrew Mellon** likely has events on both records — re-point
3. **Slug redirect table** needs to map old slugs → new canonical slug
4. **External links pointing to old slugs** — none yet (no public launch), so safe to merge

## Recommendation
Proceed with KP-005 implementation. The scope is small (5 rows) and well-bounded. Pair-of-persons (Bonnie & Clyde) is the only edge case needing editorial input.
