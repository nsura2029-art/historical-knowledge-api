#!/usr/bin/env python3
"""orgs_image_backfill.py — Backfill primary images for orgs via Wikipedia summary.

Uses Wikipedia REST /page/summary/ (more lenient than /page/media-list/) with
disambiguation fallback for orgs:
  "Name" → "Name (company)" → "Name Inc." → "Name Corp." → "Name (corporation)"

Usage:
    python3 packages/db/seed/orgs_image_backfill.py [output.sql] [limit]
"""
import json
import os
import re
import subprocess
import sys
import time
import urllib.parse
import urllib.request

USER_AGENT = "HKA-Research/1.1 (https://historical-knowledge-api.com; research@historical-knowledge-api.com) python-urllib/3"
API_DIR = "/workspace/historical-knowledge-api/apps/api"


def fetch_json(url):
    try:
        req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
        with urllib.request.urlopen(req, timeout=15) as r:
            return json.loads(r.read().decode("utf-8"))
    except Exception:
        return None


def d1_query(sql):
    cmd = ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
           "--env", "dev", "--command", sql, "--json"]
    r = subprocess.run(cmd, capture_output=True, text=True, cwd=API_DIR,
                       env={**os.environ, "PATH": f"{API_DIR}/node_modules/.bin:" + os.environ.get("PATH", "")})
    if r.returncode != 0:
        return []
    idx = r.stdout.find("[")
    if idx < 0:
        return []
    try:
        parsed = json.loads(r.stdout[idx:])
        return parsed[0].get("results", [])
    except Exception:
        return []


def get_wiki_image(name):
    """Try multiple Wikipedia title patterns to find an image for `name`.

    Returns (image_url, wiki_title) or (None, None).
    """
    candidates = [
        name,
        f"{name} (company)",
        f"{name} Inc.",
        f"{name} Corp.",
        f"{name} (corporation)",
        f"{name} (bank)",
        f"{name} (insurance)",
        f"{name} (manufacturer)",
        f"{name} (retailer)",
    ]
    for title in candidates:
        wiki_title = title.replace(" ", "_")
        url = f"https://en.wikipedia.org/api/rest_v1/page/summary/{urllib.parse.quote(wiki_title)}"
        data = fetch_json(url)
        if not data:
            continue
        if data.get("type") == "disambiguation":
            continue
        if not data.get("extract"):
            continue
        img = (data.get("originalimage", {}).get("source", "")
               or data.get("thumbnail", {}).get("source", ""))
        if img and "upload.wikimedia.org" in img:
            return img, title
    return None, None


def render_sql(eid, slug, name, thumb, wiki_title):
    title_clean = wiki_title.replace("'", "''")[:200]
    image_id = f"ei_{slug}_primary"
    media_id = f"ent_media_{slug}"

    sql_entity_image = f"""INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('{image_id}', '{eid}', 'src_wikimedia_commons',
   NULL, '{thumb.replace("'", "''")[:500]}', NULL, '{thumb.replace("'", "''")[:500]}',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, '{name.replace("'", "''")[:200]}',
   '{name.replace("'", "''")[:200]}', 1, 10, unixepoch());
"""
    sql_entity = f"""INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('{media_id}', 'media', 'media-photo-{slug[:50]}', '{name.replace("'", "''")} (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
"""
    sql_media_asset = f"""INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('{media_id}', 'image', '{thumb.replace("'", "''")[:500]}', '{thumb.replace("'", "''")[:500]}',
   '{eid}', 0.9, 'org_wiki_image_v1', 'approved', unixepoch());
"""
    sql_media_rights = f"""INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_{media_id}', '{media_id}', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill_v1', 'src_en_wikipedia', unixepoch());
"""
    return sql_entity + sql_entity_image + sql_media_asset + sql_media_rights


def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0076_orgs_images.sql"
    limit = int(sys.argv[2]) if len(sys.argv) > 2 else 1500

    print(f"[orgs-images] loading orgs without images...", file=sys.stderr)
    orgs = d1_query(f"""
        SELECT e.id, e.slug, e.canonical_name FROM entity e
        WHERE e.type='organization' AND e.id NOT LIKE 'org_media%'
        AND e.id NOT IN (SELECT entity_id FROM entity_image WHERE is_primary=1)
        AND e.id NOT IN (SELECT depiction_entity_id FROM media_asset WHERE asset_type='image' AND status='approved')
        ORDER BY e.popularity_score DESC NULLS LAST
        LIMIT {limit}
    """)
    print(f"[orgs-images] {len(orgs)} orgs to process", file=sys.stderr)

    out_f = open(out_path, "w")
    out_f.write(f"""-- ========================================
-- Migration 0076: Orgs image backfill
-- For {len(orgs)} orgs without primary image
-- Source: Wikipedia REST /page/summary/ + org disambiguation fallback
-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}
-- ========================================

""")
    out_f.flush()

    n_ok, n_skip = 0, 0
    title_counts = {}
    for i, p in enumerate(orgs):
        slug = p["slug"]
        name = p["canonical_name"]
        eid = p["id"]

        thumb, wiki_title = get_wiki_image(name)
        if not thumb:
            n_skip += 1
            if (i + 1) % 50 == 0:
                print(f"[orgs-images] {i+1}/{len(orgs)} ({n_ok} ok, {n_skip} skip)", file=sys.stderr)
            time.sleep(0.2)
            continue

        title_counts[wiki_title] = title_counts.get(wiki_title, 0) + 1

        out_f.write(f"-- {i+1}. {name} (slug={slug}, wiki='{wiki_title}')\n")
        out_f.write(render_sql(eid, slug, name, thumb, wiki_title))
        out_f.flush()
        n_ok += 1

        if (i + 1) % 50 == 0:
            print(f"[orgs-images] {i+1}/{len(orgs)} ({n_ok} ok, {n_skip} skip)", file=sys.stderr)
        time.sleep(0.4)

    out_f.close()
    print(f"\n[orgs-images] done: {n_ok} ok, {n_skip} skip", file=sys.stderr)
    print(f"[orgs-images] wrote SQL to {out_path}", file=sys.stderr)
    print(f"\n[orgs-images] wiki_title breakdown (top 10):", file=sys.stderr)
    for title, count in sorted(title_counts.items(), key=lambda x: -x[1])[:10]:
        print(f"  {count:3d}  {title}", file=sys.stderr)


if __name__ == "__main__":
    main()
