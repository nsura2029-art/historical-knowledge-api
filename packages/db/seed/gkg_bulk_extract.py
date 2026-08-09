#!/usr/bin/env python3
"""
gkg_bulk_extract.py — Extract person/place news events from GDELT GKG 2.0 raw files.

Downloads daily 15-min GKG files for the last N days and parses V1Persons
(field 12) to find articles mentioning our subjects.

Bulk download = no rate limits (unlike DOC API).
"""
import json
import os
import re
import subprocess
import sys
import time
import urllib.parse
import zipfile
import io
from datetime import datetime, timedelta, timezone

USER_AGENT = "HistoricalKnowledgePlatform/0.1 (https://github.com/nsura2029-art/historical-knowledge-api; contact: research@hka.local)"


def http_get_bytes(url, retries=2, timeout=60):
    for attempt in range(retries + 1):
        try:
            res = subprocess.run(
                ["curl", "-s", "--max-time", str(timeout), "--connect-timeout", "10",
                 "-A", USER_AGENT,
                 url],
                capture_output=True, timeout=timeout + 5)
            if res.returncode == 0 and res.stdout:
                return res.stdout
            time.sleep(2)
        except Exception:
            time.sleep(2)
    return None


def enumerate_gkg_urls(days=7, end_date=None):
    """Enumerate GKG file URLs for the last N days, every 15 min. End at yesterday midnight."""
    if end_date is None:
        # Default: end at "today 00:00 UTC" — the latest available files are usually yesterday
        end_date = datetime.now(timezone.utc).replace(hour=0, minute=0, second=0, microsecond=0)
        # Go one day back so we get yesterday's full day
        end_date = end_date - timedelta(days=1)
    urls = []
    for d in range(days + 1):  # +1 to include the end_date
        date = end_date - timedelta(days=d)
        for h in range(24):
            for m in [0, 15, 30, 45]:
                ts = date.replace(hour=h, minute=m, second=0, microsecond=0)
                url = f"http://data.gdeltproject.org/gdeltv2/{ts.strftime('%Y%m%d%H%M%S')}.gkg.csv.zip"
                urls.append((ts, url))
    # Sort by timestamp ascending
    urls.sort(key=lambda x: x[0])
    return urls


def load_subject_names():
    """Load subject slug → canonical_name + entity_id map."""
    script_dir = os.path.dirname(os.path.abspath(__file__))
    api_dir = os.path.normpath(os.path.join(script_dir, "..", "..", "..", "apps", "api"))
    if not os.path.isdir(api_dir):
        api_dir = os.getcwd()
    env = os.environ.copy()
    if "node_modules/.bin/wrangler" not in env.get("PATH", ""):
        env["PATH"] = f"{api_dir}/node_modules/.bin:{env.get('PATH', '')}"

    cmd = ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
           "--env", "dev",
           "--command",
           "SELECT e.id, e.slug, e.canonical_name, e.type FROM entity e WHERE e.type IN ('person','place') AND e.popularity_score >= 50 ORDER BY e.popularity_score DESC, e.canonical_name LIMIT 200",
           "--json"]
    r = subprocess.run(cmd, capture_output=True, text=True, timeout=60, cwd=api_dir, env=env)
    if r.returncode != 0:
        return []
    idx = r.stdout.find("[")
    parsed = json.loads(r.stdout[idx:])
    return parsed[0].get("results", [])


def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0043_gkg_bulk_events.sql"
    days = int(sys.argv[2]) if len(sys.argv) > 2 else 7
    top_n = int(sys.argv[3]) if len(sys.argv) > 3 else 200
    per_day_cap = int(sys.argv[4]) if len(sys.argv) > 4 else 5

    print(f"[gkg-bulk] loading top {top_n} subjects...", file=sys.stderr)
    subjects = load_subject_names()
    if not subjects:
        print("[gkg-bulk] no subjects loaded", file=sys.stderr)
        return 1
    print(f"[gkg-bulk] loaded {len(subjects)} subjects", file=sys.stderr)

    # Build name → id map (case-insensitive)
    name_to_id = {}
    for s in subjects:
        n = s["canonical_name"].lower()
        name_to_id[n] = s
    print(f"[gkg-bulk] {len(name_to_id)} unique names to match", file=sys.stderr)

    # Enumerate URLs
    urls = enumerate_gkg_urls(days=days)
    print(f"[gkg-bulk] will check {len(urls)} GKG files over the last {days} days", file=sys.stderr)

    # Open output file
    out_f = open(out_path, "w")
    out_f.write(f"""-- ========================================
-- Migration 0043: GKG bulk events for top {top_n} subjects
-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}
-- Time range: last {days} days, capped at {per_day_cap} events per subject per day
-- Source: GDELT 2.0 GKG raw files (no rate limit)
-- ========================================

""")
    out_f.flush()

    total_events = 0
    n_articles = 0
    # (slug, date_iso) → count, to cap per day
    per_day_counter = {}

    for i, (ts, url) in enumerate(urls):
        if i % 24 == 0:
            print(f"[gkg-bulk] {i}/{len(urls)}: checking {ts.strftime('%Y-%m-%d %H:%M')}...", file=sys.stderr)

        data = http_get_bytes(url, timeout=45)
        if not data:
            continue

        try:
            with zipfile.ZipFile(io.BytesIO(data)) as zf:
                for name in zf.namelist():
                    with zf.open(name) as f:
                        for line in f:
                            try:
                                line = line.decode("utf-8", errors="ignore").rstrip("\n")
                                cols = line.split("\t")
                                if len(cols) < 12:
                                    continue

                                # GDELT 2.0 GKG columns are variable-width.
                                # Find V1Persons heuristically: semicolon-delimited, all lowercase, no commas, no '#'.
                                v1persons = ""
                                for c in cols[5:20]:
                                    if not c or ";" not in c:
                                        continue
                                    parts = c.split(";")
                                    if all(
                                        p.strip()
                                        and p.strip() == p.strip().lower()
                                        and "," not in p
                                        and "#" not in p
                                        for p in parts
                                    ):
                                        v1persons = c
                                        break
                                if not v1persons:
                                    continue

                                # Find matching subjects
                                persons_in_article = set(p.strip().lower() for p in v1persons.split(";") if p.strip())

                                # Try to extract PAGE_TITLE (last column if formatted as <PAGE_TITLE>...</PAGE_TITLE>)
                                page_title = ""
                                for c in reversed(cols):
                                    if c.startswith("<PAGE_TITLE>") and c.endswith("</PAGE_TITLE>"):
                                        page_title = c[len("<PAGE_TITLE>"):-len("</PAGE_TITLE>")].strip()
                                        break

                                for nl, s in name_to_id.items():
                                    if nl not in persons_in_article:
                                        continue
                                    date_str = cols[1] if len(cols) > 1 else ""
                                    title_url = cols[4] if len(cols) > 4 else ""
                                    domain = cols[3] if len(cols) > 3 else ""

                                    m = re.match(r'^(\d{4})(\d{2})(\d{2})T?(\d{2})?(\d{2})?(\d{2})?', date_str)
                                    if not m:
                                        continue
                                    year = int(m.group(1))
                                    month = int(m.group(2))
                                    day = int(m.group(3))
                                    date_iso = f"{year:04d}-{month:02d}-{day:02d}"

                                    # Cap per subject per day
                                    cap_key = (s['slug'], date_iso)
                                    per_day_counter[cap_key] = per_day_counter.get(cap_key, 0) + 1
                                    if per_day_counter[cap_key] > per_day_cap:
                                        continue

                                    # Title: prefer PAGE_TITLE (real article title) when present
                                    if page_title:
                                        title = f"{page_title} ({s['canonical_name']} mentioned)"
                                    else:
                                        title = f"{s['canonical_name']} mentioned in {domain}"
                                    ev_id = f"ev_gkg_{s['slug']}_{date_str}_{n_articles}"
                                    ev_id = re.sub(r'[^A-Za-z0-9_]', '_', ev_id)[:200]

                                    title_safe = title[:200].replace("'", "''")
                                    url_safe = title_url[:500].replace("'", "''")
                                    body_safe = (page_title or title)[:500].replace("'", "''")

                                    out_f.write(f"""INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('{ev_id}', '{s['id']}', '{date_iso}', {year}, 'news', 'news',
   '{title_safe}', '{body_safe}', 'src_gdelt',
   '{url_safe}', 0.65, {n_articles}, 'en', 'DAY', unixepoch(), unixepoch());
""")
                                    total_events += 1
                            except Exception:
                                continue
                    n_articles += 1
        except Exception as e:
            print(f"[gkg-bulk] error parsing {url}: {e}", file=sys.stderr)
            continue

    out_f.close()
    print(f"\n[gkg-bulk] done: total_events={total_events}, articles_processed={n_articles}", file=sys.stderr)
    print(f"[gkg-bulk] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
