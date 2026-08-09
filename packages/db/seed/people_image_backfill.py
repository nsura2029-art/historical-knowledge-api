#!/usr/bin/env python3
"""people_image_backfill.py — Backfill primary image for persons missing one.

Uses Wikipedia REST /page/media-list/ to get lead image, then INSERT to entity_image.
"""
import json
import os
import re
import subprocess
import sys
import time

USER_AGENT = "HistoricalKnowledgePlatform/0.1 (https://github.com/nsura2029-art/historical-knowledge-api; contact: research@hka.local)"


def fetch_json(url, retries=2):
    for attempt in range(retries + 1):
        try:
            res = subprocess.run(
                ["curl", "-s", "--max-time", "15", "-A", USER_AGENT, url],
                capture_output=True, text=True, timeout=20)
            if res.returncode == 0 and res.stdout.strip():
                return json.loads(res.stdout)
        except:
            pass
        time.sleep(1)
    return None


def get_persons_missing_image(api_dir):
    cmd = ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
           "--env", "dev",
           "--command",
           "SELECT e.slug, e.canonical_name FROM entity e WHERE e.type='person' AND e.id NOT IN (SELECT entity_id FROM entity_image WHERE is_primary=1) LIMIT 1000",
           "--json"]
    r = subprocess.run(cmd, capture_output=True, text=True, cwd=api_dir,
                       env={**os.environ, "PATH": f"{api_dir}/node_modules/.bin:" + os.environ.get("PATH", "")})
    if r.returncode != 0:
        return []
    idx = r.stdout.find("[")
    parsed = json.loads(r.stdout[idx:])
    return parsed[0].get("results", [])


def main():
    api_dir = "/workspace/historical-knowledge-api/apps/api"
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0057_images_backfill.sql"

    print("[images] loading persons missing primary image...", file=sys.stderr)
    persons = get_persons_missing_image(api_dir)
    print(f"[images] {len(persons)} persons to process", file=sys.stderr)

    out_f = open(out_path, "w")
    out_f.write(f"""-- ========================================
-- Migration 0057: Backfill primary image for persons missing one
-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}
-- Source: Wikipedia REST /page/media-list/
-- ========================================

""")
    out_f.flush()

    n_ok, n_skip, n_fail = 0, 0, 0
    for i, p in enumerate(persons):
        slug = p["slug"]
        name = p["canonical_name"]
        # Wikipedia title is name with spaces as underscores
        wiki_title = name.replace(" ", "_")
        url = f"https://en.wikipedia.org/api/rest_v1/page/media-list/{wiki_title}"
        data = fetch_json(url)
        if not data or "items" not in data:
            n_fail += 1
            continue

        # Find first lead image
        lead = None
        for item in data.get("items", []):
            if item.get("type") == "image" and item.get("leadImage"):
                lead = item
                break
        if not lead:
            # Try first image
            for item in data.get("items", []):
                if item.get("type") == "image":
                    lead = item
                    break

        if not lead:
            n_fail += 1
            print(f"[{i+1}/{len(persons)}] no image: {name}", file=sys.stderr)
            time.sleep(0.5)
            continue

        title = lead.get("title", "").replace("File:", "")
        # Construct URL: https://upload.wikimedia.org/wikipedia/commons/thumb/...
        original = lead.get("original", {}).get("source", f"https://commons.wikimedia.org/wiki/File:{title}")
        thumb = lead.get("thumbnail", {}).get("source", original)
        if not thumb:
            thumb = original

        entity_id = f"ent_{slug}"
        image_id = f"ei_{slug}_primary"
        sql = f"""INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('{image_id}', '{entity_id}', 'src_wikimedia_commons',
   '{title.replace("'", "''")[:200]}', '{original.replace("'", "''")[:500]}', NULL, '{thumb.replace("'", "''")[:500]}',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, '{name.replace("'", "''")}',
   '{name.replace("'", "''")}', 1, 10, unixepoch());
"""
        out_f.write(sql + "\n")
        out_f.flush()
        n_ok += 1
        print(f"[{i+1}/{len(persons)}] ok: {name}", file=sys.stderr)
        time.sleep(0.5)  # be polite

    out_f.close()
    print(f"\n[images] done: ok={n_ok} fail={n_fail}", file=sys.stderr)
    print(f"[images] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
