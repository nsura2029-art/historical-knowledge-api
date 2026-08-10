#!/usr/bin/env python3
"""place_image_backfill.py — Backfill primary images for places via Wikipedia media-list."""
import json
import os
import subprocess
import sys
import time
import urllib.parse
import urllib.request
import urllib.error

USER_AGENT = "HKA-Research/1.1 (https://historical-knowledge-api.com; research@historical-knowledge-api.com) python-urllib/3"
API_DIR = "/workspace/historical-knowledge-api/apps/api"


def fetch_json(url):
    try:
        req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
        with urllib.request.urlopen(req, timeout=15) as r:
            return json.loads(r.read().decode("utf-8"))
    except:
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
    except:
        return []


def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0071_place_images.sql"
    limit = int(sys.argv[2]) if len(sys.argv) > 2 else 500

    print(f"[images] loading places without images...", file=sys.stderr)
    places = d1_query(f"""
        SELECT e.id, e.slug, e.canonical_name FROM entity e
        WHERE e.type='place' AND e.id NOT LIKE 'plc_media%'
        AND e.id NOT IN (SELECT entity_id FROM entity_image WHERE is_primary=1)
        AND e.id NOT IN (SELECT depiction_entity_id FROM media_asset WHERE asset_type='image' AND status='approved')
        ORDER BY e.popularity_score DESC NULLS LAST
        LIMIT {limit}
    """)
    print(f"[images] {len(places)} places to process", file=sys.stderr)

    out_f = open(out_path, "w")
    out_f.write(f"""-- ========================================
-- Migration 0071: Place image backfill
-- For {len(places)} places without primary image
-- Source: Wikipedia /page/media-list/ (srcset URL)
-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}
-- ========================================

""")
    out_f.flush()

    n_ok, n_skip = 0, 0
    for i, p in enumerate(places):
        slug = p["slug"]
        name = p["canonical_name"]
        eid = p["id"]

        wiki_title = name.replace(" ", "_")
        url = f"https://en.wikipedia.org/api/rest_v1/page/media-list/{urllib.parse.quote(wiki_title)}"
        data = fetch_json(url)
        if not data or "items" not in data:
            n_skip += 1
            time.sleep(0.3)
            continue

        # Find first lead image
        lead = None
        for item in data.get("items", []):
            if item.get("type") == "image" and item.get("leadImage"):
                lead = item
                break
        if not lead:
            for item in data.get("items", []):
                if item.get("type") == "image":
                    lead = item
                    break

        if not lead:
            n_skip += 1
            time.sleep(0.3)
            continue

        srcset = lead.get("srcset", [])
        if not srcset:
            n_skip += 1
            time.sleep(0.3)
            continue
        thumb = srcset[0].get("src", "")
        if thumb.startswith("//"):
            thumb = "https:" + thumb

        # entity_image
        image_id = f"ei_{slug}_primary"
        sql = f"""INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('{image_id}', '{eid}', 'src_wikimedia_commons',
   '{lead.get('title', '').replace('File:', '').replace("'", "''")[:200]}',
   '{thumb.replace("'", "''")[:500]}', NULL, '{thumb.replace("'", "''")[:500]}',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, '{name.replace("'", "''")[:200]}',
   '{name.replace("'", "''")[:200]}', 1, 10, unixepoch());
"""
        out_f.write(sql)
        # media_entity row (FK requirement)
        media_id = f"ent_media_{slug}"
        # entity row for the media (id must match media_asset.id)
        sql_entity = f"""INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, created_at, updated_at)
VALUES
  ('{media_id}', 'media', 'media-photo-{slug[:50]}', '{name} (photo)', 'published', 'en', 0, unixepoch(), unixepoch());
"""
        out_f.write(sql_entity)
        # media_asset row
        sql_ma = f"""INSERT OR IGNORE INTO media_asset
  (id, asset_type, url, thumbnail_url, depiction_entity_id, depiction_confidence, depiction_method, status, created_at)
VALUES
  ('{media_id}', 'image', '{thumb.replace("'", "''")[:500]}', '{thumb.replace("'", "''")[:500]}',
   '{eid}', 0.9, 'place_wiki_image', 'approved', unixepoch());
"""
        out_f.write(sql_ma)
        # media_rights
        sql_mr = f"""INSERT OR IGNORE INTO media_rights
  (id, media_asset_id, creator_name, copyright_holder, license_code, license_url,
   rights_statement, attribution_text, commercial_use_allowed, derivatives_allowed,
   attribution_required, share_alike_required, editorial_use_only,
   rights_verified_at, rights_reviewer, source_id, created_at)
VALUES
  ('mr_{media_id}', '{media_id}', 'Wikipedia / Wikimedia Commons contributors', 'Wikimedia Commons',
   'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/',
   'Content is available under CC-BY-SA 4.0 unless otherwise noted.',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 1, 1, 1, 1, 0,
   unixepoch(), 'auto_backfill', 'src_en_wikipedia', unixepoch());
"""
        out_f.write(sql_mr)
        out_f.flush()
        n_ok += 1
        time.sleep(0.5)

        if (i + 1) % 25 == 0:
            print(f"[images] {i+1}/{len(places)} processed, {n_ok} ok, {n_skip} skip", file=sys.stderr)

    out_f.close()
    print(f"\n[images] done: {n_ok} ok, {n_skip} skip", file=sys.stderr)
    print(f"[images] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
