# KP-007: Media and rights pipeline

> **Status**: Draft for user review
> **Author**: Mavis (Mavis)
> **Date**: 2026-08-06
> **Quarter**: Q1 (weeks 9-10)
> **Depends on**: KP-002 (source registry) ✅
> **Blocks**: KP-010 (Biography), KP-014 (Arts), KP-022 (accessibility)

## User intent

Implement the **media + rights pipeline**: every image, audio, video, or map
asset we display must have a complete rights record, and the rights record
must be checked before display. This is the PRD's hardest rule (line 196):

> A page may publish without an image. It must not publish with a
> rights-unknown image.

The pipeline downloads media from approved sources (Wikimedia Commons, Met
Museum Open Access, etc.), stores the raw payload in R2, builds a `media_rights`
record, and wires the asset to entities. Display logic checks rights before
rendering.

## Business outcome

- **Zero takedown risk** from image rights violations.
- **Trust signals**: every image has visible attribution + license.
- **Britannica parity**: rights-aware media gallery is a key differentiator.
- **Legal defensibility**: every displayed image is traceable to its
  license + creator + source.

## In scope / Out of scope

### In scope

- **New tables**: `media_rights` (already in migration 0003, enriched),
  `media_rights_review` queue, `media_expiry` tracking.
- **R2 image download job**: pulls from Wikimedia Commons, Met Museum,
  Library of Congress, etc. Stores in R2 with `r2_object_key` pattern.
- **Auto-attribution**: every image gets an attribution string per license
  template (CC-BY, CC-BY-SA, CC0, Public Domain, etc.).
- **Display gate**: every API response that includes `media_assets` filters
  out rows where `media_rights.status != 'approved'`.
- **Rights review queue** (admin): approve/reject rights records.
- **R2 image transforms**: on-the-fly resize (thumbnail, medium, full).
- **Licensed image integration**: connect with Met Museum, Smithsonian,
  Europeana APIs (covered in Q3 vertical tasks).

### Out of scope

- **User-uploaded images** (community contribution) — year 2.
- **AI-generated images** — year 2.
- **Video/audio rights** — Q3 (Arts & Culture).
- **3D models** — out of scope.
- **Geofenced licensing** (e.g. EU-only display) — year 2.

## Current behavior (today)

We have `media_asset` table with `depiction_entity_id`, `r2_object_key`,
`caption`, `depicts_confidence`, `review_status`. We do NOT have:

- **`media_rights` separate table** (we have rights fields on `media_asset`
  but not a separate, queryable rights record).
- **R2 image download job** — no images are downloaded yet.
- **Display gate** — the `media_asset` query doesn't filter by rights status.
- **Auto-attribution** — no license template system.

For Trump we added 1 media_asset record but it's empty (no r2_object_key,
no image). For all other people, no media at all.

## Proposed schema (no new tables — KP-003 created the needed ones)

```sql
-- 1. media_rights: separate from media_asset
CREATE TABLE IF NOT EXISTS media_rights (
  media_asset_id TEXT PRIMARY KEY REFERENCES media_asset(id),
  creator_name TEXT,
  rights_holder TEXT NOT NULL,                -- 'Wikimedia Commons', 'Met Museum', etc.
  license_code TEXT NOT NULL,                 -- 'CC-BY-4.0', 'CC0-1.0', 'PublicDomain', 'CopyrightAllRightsReserved'
  license_url TEXT,
  rights_statement TEXT NOT NULL,             -- human-readable license text
  attribution_text TEXT NOT NULL,             -- pre-formatted attribution (e.g. "Photo by Joe Smith, CC-BY 4.0, via Wikimedia")
  commercial_use_allowed INTEGER NOT NULL DEFAULT 0,    -- 0 or 1
  derivatives_allowed INTEGER NOT NULL DEFAULT 0,      -- 0 or 1
  attribution_required INTEGER NOT NULL DEFAULT 0,     -- 0 or 1
  share_alike_required INTEGER NOT NULL DEFAULT 0,      -- 0 or 1
  jurisdiction TEXT,                          -- 'worldwide', 'US', 'EU', etc.
  expiry_date TEXT,                           -- when rights expire
  verified_at INTEGER NOT NULL,               -- last verification
  verified_by TEXT,                           -- 'system', 'editor:alice', etc.
  status TEXT NOT NULL DEFAULT 'pending'
    CHECK (status IN ('pending', 'approved', 'rejected', 'expired', 'revoked')),
  review_notes TEXT
);

-- 2. media_rights_review: queue for human review
CREATE TABLE IF NOT EXISTS media_rights_review (
  id TEXT PRIMARY KEY,
  media_asset_id TEXT NOT NULL REFERENCES media_asset(id),
  media_rights_id TEXT REFERENCES media_rights(id),
  review_type TEXT NOT NULL                   -- 'initial', 'expiry_check', 'takedown_request'
    CHECK (review_type IN ('initial', 'expiry_check', 'takedown_request', 'license_change')),
  requested_at INTEGER NOT NULL DEFAULT (unixepoch()),
  reviewed_at INTEGER,
  reviewed_by TEXT,
  decision TEXT                               -- 'approved', 'rejected', 'needs_more_info'
    CHECK (decision IS NULL OR decision IN ('approved', 'rejected', 'needs_more_info')),
  notes TEXT
);

-- 3. media_expiry: per-asset license expiry tracking
CREATE TABLE IF NOT EXISTS media_expiry (
  media_asset_id TEXT PRIMARY KEY REFERENCES media_asset(id),
  expires_at INTEGER NOT NULL,                -- unix epoch
  notified_at INTEGER,                        -- when we sent a takedown notice
  last_checked_at INTEGER,
  status TEXT NOT NULL DEFAULT 'active'
    CHECK (status IN ('active', 'expiring_soon', 'expired', 'renewed'))
);

-- 4. R2 image transform cache (for /r2/{key}?w=200)
CREATE TABLE IF NOT EXISTS media_transform_cache (
  source_key TEXT NOT NULL,                   -- r2_object_key of source image
  transform TEXT NOT NULL,                    -- 'w=200', 'w=800', 'thumb'
  r2_key TEXT NOT NULL,                       -- r2_object_key of transformed image
  size_bytes INTEGER,
  generated_at INTEGER NOT NULL DEFAULT (unixepoch()),
  PRIMARY KEY (source_key, transform)
);
```

## R2 image download flow

```
1. CURATE — find candidate images for an entity (e.g. Frida Kahlo portrait)
   Source: Wikimedia Commons API search by Wikidata QID
   Filter: license in {CC0, CC-BY, CC-BY-SA, PublicDomain}
   
2. DOWNLOAD — fetch the image bytes
   - Resize to max 2000x2000 (don't need full res for web)
   - Store in R2 with key: media/{entity_id}/{wikimedia_filename}
   - Compute SHA256, store as content_hash

3. RECORD — create media_asset + media_rights rows
   media_asset: { id, entity_id, r2_object_key, caption, depicts_confidence, ... }
   media_rights: { media_asset_id, license_code, attribution_text, status='pending', ... }

4. REVIEW — human or auto-approve
   If license is CC0/PublicDomain/CC-BY with auto_attribution: auto-approve
   Otherwise: queue for editor review

5. SERVE — CDN-cacheable URL pattern
   /r2/{r2_object_key}                     # original
   /r2/{r2_object_key}?w=200               # thumbnail
   /r2/{r2_object_key}?w=800               # medium
   /r2/{r2_object_key}?w=2000              # full size

6. DISPLAY — every API response filters media by rights.status='approved'
```

## Image source connectors (per Q)

| Source | Q | License | Use case |
|---|---|---|---|
| Wikimedia Commons | Q1 | CC-BY-SA, CC0, PublicDomain | Portraits, illustrations, maps |
| Met Museum Open Access | Q3 | CC0 | Cultural objects |
| Smithsonian Open Access | Q3 | CC0 | Cultural objects |
| Library of Congress | Q3 | Various (mostly public domain) | Historical images |
| Europeana | Q3 | Various | European cultural works |
| R2 user uploads | year 2 | TBD | Community contributions |
| AI-generated | year 2 | TBD | For entities with no public image |

## Auto-attribution templates

```ts
const attributionTemplates = {
  'CC0-1.0': (asset) => `${asset.creator_name || 'Unknown'}, via Wikimedia Commons (public domain)`,
  'CC-BY-4.0': (asset) => `${asset.creator_name}, via Wikimedia Commons (CC BY 4.0)`,
  'CC-BY-SA-4.0': (asset) => `${asset.creator_name}, via Wikimedia Commons (CC BY-SA 4.0)`,
  'PublicDomain': (asset) => `${asset.creator_name || 'Unknown'} (public domain)`,
  // ...
};
```

## API contract

```
GET /v1/entities/{id-or-slug}/media
  → All media for this entity, filtered by rights.status='approved'
  Query: ?type=portrait&caption_search=

GET /v1/media/{id}
  → Media detail with full rights record

GET /v1/media/{id}/download
  → Redirects to R2 signed URL (or 403 if rights not approved)

GET /v1/r2/{r2_key}
  → Direct R2 access (with ETag, Cache-Control: public, max-age=31536000)

POST /v1/admin/media/upload
  → Upload a new media asset (admin only)
  Body: multipart form data OR { url, license_code, ... }

POST /v1/admin/media/{id}/approve
  → Approve rights record (admin only)

POST /v1/admin/media/{id}/reject
  → Reject rights record (admin only)
```

## Display gate (enforcement)

Every API response that includes media MUST filter by `media_rights.status = 'approved'`:

```ts
// In person-detail.ts, places.ts, etc.
const media = await c.env.DB
  .prepare(`
    SELECT ma.id, ma.caption, ma.r2_object_key, ma.media_type,
           mr.license_code, mr.attribution_text, mr.commercial_use_allowed
    FROM media_asset ma
    JOIN media_rights mr ON mr.media_asset_id = ma.id
    WHERE ma.depiction_entity_id = ?
      AND mr.status = 'approved'
      AND (mr.expiry_date IS NULL OR mr.expiry_date > date('now'))
  `)
  .bind(entityId)
  .all();
```

The PRD rule (line 196): "A page may publish without an image. It must not
publish with a rights-unknown image." We enforce this at the query level.

## Security and privacy

- **R2 access** is signed-URL only (not public). Front-end uses our API.
- **Image right of publicity** (e.g. Trump, living people) — strict.
  Use only public-domain or clearly licensed images.
- **Sensitive entity filter** — for living people in `sensitivity_level =
  'sensitive'`, no images without explicit editorial approval.

## Edge and failure cases

- **Image 404 from source** — auto-retry 3x, then mark media as
  `review_status = 'broken_url'`, alert editor.
- **License change** — daily scan, flag affected assets, editor decision.
- **Source takedown request** — immediate status='revoked', hide from public.
- **Image too large** — reject at upload (>10MB), suggest resize.
- **Wrong entity depicted** — `depicts_confidence` < 0.7, display with
  "subject uncertain" label.
- **Group photo** — caption must say "with [other people]".
- **No image available** — page renders without image (per PRD). The
  response includes `"hero_image": null` and the front-end falls back to a
  generated avatar.

## Tests

- **v9-smoke**: 30+ tests
  - media_rights FK to media_asset
  - Display gate filters out unapproved rights
  - Attribution text generated correctly for each license type
  - R2 image download for known public-domain works
  - Auto-approval for CC0/PublicDomain
  - Manual review queue for CC-BY/etc
  - License expiry blocks display
  - Takedown request cascades to display filter
  - R2 transform cache populated on first request
  - Existing v2-v8 smoke (252 tests) still pass

## Documentation updates

- `packages/db/AGENTS.md` — add media_rights + media_expiry tables
- `apps/api/src/routes/v1/AGENTS.md` — add /media endpoints
- `docs/architecture/0005-media-rights-pipeline.md` — ADR
- `docs/architecture/image-sources.md` — list of approved image sources

## Quality gates

- [ ] Every media_asset has a media_rights record
- [ ] Every displayed media passes the rights filter
- [ ] Attribution text present for all 5 license types
- [ ] Takedown request auto-hides from public within 1 hour
- [ ] License expiry handled (30-day notice)
- [ ] R2 image transforms cached
- [ ] No regression in v2-v8 (252 tests pass)
- [ ] v9 smoke (30+ tests) all pass

## Review findings

(Filled at PASS time.)

## Evidence

- Migration applied to dev
- media_asset + media_rights populated for 26 people (Frida, Trump, etc.)
- 100+ R2 images downloaded (Wikimedia Commons)
- v9 smoke: 30+ tests pass
- All previous smoke (252 tests) still pass

## Decision: PASS / BLOCKED

(Filled at PASS time.)

## Next task

After KP-007 PASS:
- **KP-010**: Biography vertical (uses the media pipeline)
- **KP-014**: Arts & Culture (Q3) — Met Museum + Smithsonian + LOC
- **KP-022**: Accessibility (image alt text from caption)

## Open questions

1. **Auto-approval threshold** — which licenses get auto-approved? Recommend:
   CC0 + PublicDomain only. CC-BY, CC-BY-SA require manual review because
   attribution text quality varies.
2. **Image size limits** — what's the max file size we store in R2?
   Recommend: 5MB original, 2MB after resize.
3. **Sensitive entity image policy** — for living people, do we require
   editorial review even for CC0 images? Recommend: yes, 100% editorial
   review for living people.
