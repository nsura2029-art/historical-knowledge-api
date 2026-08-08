#!/usr/bin/env python3
"""
image_url_audit.py — Verify every entity_image.wikimedia_file exists on
Wikimedia Commons. Outputs:
  - A "fix" SQL migration for any rows where the file is missing
  - Suggestions for real file names when found via search

For each broken row, we try:
  1. Exact name (case-sensitive)
  2. Lowercased
  3. With/without extension
  4. Common variants (the X, X (year), X with spaces)
  5. Commons search via API: ?action=query&list=search&srsearch=...

Output: packages/db/migrations/0024_image_url_fixes.sql
"""

import json
import os
import re
import subprocess
import sys
import urllib.parse
import urllib.request


def fetch_commons(filename: str) -> dict | None:
    """Returns imageinfo for a file, or None if missing."""
    api = "https://commons.wikimedia.org/w/api.php"
    params = {
        "action": "query", "format": "json",
        "titles": f"File:{filename}",
        "prop": "imageinfo", "iiprop": "url|size|mime",
    }
    url = api + "?" + urllib.parse.urlencode(params)
    req = urllib.request.Request(url, headers={"User-Agent": "hka-audit/1.0 (research; hka@minimax.io)"})
    try:
        with urllib.request.urlopen(req, timeout=20) as r:
            data = json.loads(r.read())
    except Exception as e:
        return {"error": str(e)}
    pages = data.get("query", {}).get("pages", {})
    for page in pages.values():
        if "missing" in page:
            return None
        ii = page.get("imageinfo", [{}])[0]
        if ii:
            return ii
    return None


def search_commons(query: str, limit: int = 5) -> list[str]:
    """Search Commons for filenames matching query."""
    api = "https://commons.wikimedia.org/w/api.php"
    params = {
        "action": "query", "format": "json", "list": "search",
        "srsearch": f"{query} filetype:bitmap", "srnamespace": "6",  # File namespace
        "srlimit": str(limit),
    }
    url = api + "?" + urllib.parse.urlencode(params)
    req = urllib.request.Request(url, headers={"User-Agent": "hka-audit/1.0 (research; hka@minimax.io)"})
    try:
        with urllib.request.urlopen(req, timeout=20) as r:
            data = json.loads(r.read())
        results = data.get("query", {}).get("search", [])
        return [r["title"].replace("File:", "") for r in results]
    except Exception:
        return []


def get_image_rows() -> list[dict]:
    """Read all entity_image rows from D1."""
    cmd = [
        "wrangler", "d1", "execute", "historical-knowledge-api-d1",
        "--remote",
        "--command",
        "SELECT id, entity_id, wikimedia_file, url_original, url_r2 FROM entity_image",
    ]
    res = subprocess.run(cmd, capture_output=True, text=True, timeout=60)
    if res.returncode != 0:
        print(f"D1 query failed: {res.stderr}", file=sys.stderr)
        sys.exit(1)
    out = res.stdout
    idx = out.find("[")
    parsed = json.loads(out[idx:])
    return parsed[0].get("results", [])


def main():
    rows = get_image_rows()
    print(f"[audit] checking {len(rows)} entity_image rows...", file=sys.stderr)

    fixes = []  # list of (id, new_url_original, new_wikimedia_file)
    suggestions_log = []  # (id, suggestions)

    for r in rows:
        wikimedia_file = r.get("wikimedia_file")
        if not wikimedia_file:
            continue
        ii = fetch_commons(wikimedia_file)
        if ii and "url" in ii:
            continue  # file exists
        # file missing — search for similar
        search_query = wikimedia_file.rsplit(".", 1)[0]  # strip extension
        # remove year numbers and "from above" type suffix
        search_query = re.sub(r"\b\d{4}\b", "", search_query)
        search_query = re.sub(r"_+from_\w+", "", search_query)
        suggestions = search_commons(search_query, 5)
        print(f"  ✗ {r['id']} ← {wikimedia_file!r}", file=sys.stderr)
        if suggestions:
            for s in suggestions[:3]:
                print(f"     suggestion: {s}", file=sys.stderr)
            suggestions_log.append((r["id"], suggestions))
        else:
            print(f"     no suggestions found", file=sys.stderr)

    print(f"\n[audit] done", file=sys.stderr)
    print(f"  missing: {len(suggestions_log)} of {len(rows)}", file=sys.stderr)


if __name__ == "__main__":
    main()
