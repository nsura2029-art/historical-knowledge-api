#!/usr/bin/env python3
"""fix_image_urls.py — Reconstruct proper upload.wikimedia.org URLs for entity_image rows
where url_original is the wrong commons.wikimedia.org/wiki/File: format.

Uses Wikipedia REST /page/media-list/ to get the proper srcset URL.
"""
import json
import os
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


def get_bad_image_rows(api_dir):
    cmd = ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
           "--env", "dev",
           "--command",
           """SELECT ei.id, e.slug, e.canonical_name, ei.wikimedia_file
FROM entity_image ei JOIN entity e ON e.id = ei.entity_id
WHERE ei.url_original LIKE 'https://commons.wikimedia.org/wiki/File:%' AND ei.is_primary=1""",
           "--json"]
    r = subprocess.run(cmd, capture_output=True, text=True, cwd=api_dir,
                       env={**os.environ, "PATH": f"{api_dir}/node_modules/.bin:" + os.environ.get("PATH", "")})
    if r.returncode != 0:
        print(r.stderr)
        return []
    idx = r.stdout.find("[")
    parsed = json.loads(r.stdout[idx:])
    return parsed[0].get("results", [])


def main():
    api_dir = "/workspace/historical-knowledge-api/apps/api"
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0058_image_url_fix.sql"

    print("[fix] loading bad image rows...", file=sys.stderr)
    rows = get_bad_image_rows(api_dir)
    print(f"[fix] {len(rows)} rows to fix", file=sys.stderr)

    out_f = open(out_path, "w")
    out_f.write(f"""-- ========================================
-- Migration 0058: Fix image URLs
-- Reconstructed from Wikipedia /page/media-list/ srcset
-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}
-- ========================================

""")
    out_f.flush()

    n_ok, n_skip, n_fail = 0, 0, 0
    for i, row in enumerate(rows):
        slug = row["slug"]
        name = row["canonical_name"]
        file = row["wikimedia_file"]
        wiki_title = name.replace(" ", "_")
        url = f"https://en.wikipedia.org/api/rest_v1/page/media-list/{wiki_title}"
        data = fetch_json(url)
        if not data or "items" not in data:
            n_fail += 1
            print(f"[{i+1}/{len(rows)}] no data: {name}", file=sys.stderr)
            continue

        # Find the matching file
        best = None
        for item in data.get("items", []):
            if item.get("type") != "image":
                continue
            title = item.get("title", "").replace("File:", "")
            if title == file:
                # Use srcset first entry
                srcset = item.get("srcset", [])
                if srcset:
                    best = srcset[0].get("src", "")
                    if best.startswith("//"):
                        best = "https:" + best
                    break

        if not best:
            n_skip += 1
            print(f"[{i+1}/{len(rows)}] no match: {name} (file: {file})", file=sys.stderr)
            time.sleep(0.5)
            continue

        # Use 500px URL by replacing width with a fixed size
        # Or just use the first srcset URL
        sql = f"""UPDATE entity_image SET url_original = '{best.replace("'", "''")[:500]}', url_thumb_r2 = '{best.replace("'", "''")[:500]}' WHERE id = '{row["id"]}';\n"""
        out_f.write(sql)
        n_ok += 1
        print(f"[{i+1}/{len(rows)}] ok: {name}", file=sys.stderr)
        time.sleep(0.5)

    out_f.close()
    print(f"\n[fix] done: ok={n_ok} skip={n_skip} fail={n_fail}", file=sys.stderr)
    print(f"[fix] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
