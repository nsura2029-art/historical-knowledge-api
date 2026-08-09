#!/usr/bin/env python3
"""
gdelt_events_extract.py — Extract modern news events from GDELT DOC 2.0 API.

Batch mode: queries 10 names at a time using (A OR B OR ...) syntax.
This dramatically reduces request count and stays under GDELT's rate limit.
"""
import json
import os
import re
import subprocess
import sys
import time
import urllib.parse

USER_AGENT = "HistoricalKnowledgePlatform/0.1 (https://github.com/nsura2029-art/historical-knowledge-api; contact: research@hka.local)"


def http_get_json(url, retries=2):
    for attempt in range(retries + 1):
        try:
            res = subprocess.run(
                ["curl", "-s", "--max-time", "30", "--connect-timeout", "5",
                 "-A", USER_AGENT,
                 "-w", "\n__HTTP_STATUS__%{http_code}",
                 url],
                capture_output=True, text=True, timeout=35)
            if res.returncode != 0:
                time.sleep(2)
                continue
            out = res.stdout
            status = 0
            if "__HTTP_STATUS__" in out:
                status_str = out.rsplit("__HTTP_STATUS__", 1)[-1].strip()
                try:
                    status = int(status_str)
                except ValueError:
                    status = 0
                out = out.rsplit("__HTTP_STATUS__", 1)[0]
            if status == 429 or status == 503:
                time.sleep(10)
                continue
            if status >= 400:
                return None
            if not out.strip():
                return None
            try:
                return json.loads(out)
            except json.JSONDecodeError:
                return None
        except Exception:
            time.sleep(2)
            continue
    return None


def query_gdelt_batch(names, timespan="1week", max_records=200, max_retries=3):
    """Query GDELT DOC 2.0 API for multiple names in one query using OR syntax.

    Returns dict mapping each name -> list of articles.
    """
    if not names:
        return {}

    # Build query: (name1 OR name2 OR name3) — GDELT supports up to ~30 OR terms
    quoted = " OR ".join(f'"{urllib.parse.quote_plus(n)}"' for n in names)
    query = f"({quoted})"
    url = (f"https://api.gdeltproject.org/api/v2/doc/doc"
           f"?query={urllib.parse.quote(query, safe='()')}"
           f"&mode=artlist"
           f"&maxrecords={max_records}"
           f"&timespan={timespan}"
           f"&sort=datedesc"
           f"&format=json")

    data = None
    for attempt in range(max_retries):
        data = http_get_json(url)
        if data and "articles" in data:
            break
        time.sleep(15 + attempt * 5)

    if not data or "articles" not in data:
        return {n: [] for n in names}

    # Filter articles: for each article, find which name(s) match in title or sentence
    name_lower = {n.lower(): n for n in names}
    articles_by_name = {n: [] for n in names}

    for art in data["articles"]:
        title = (art.get("title") or "").lower()
        sentence = (art.get("sentence") or "").lower()
        # Also check domain/url for places
        url = (art.get("url") or "").lower()

        for nl, n in name_lower.items():
            if nl in title or nl in sentence or nl in url:
                articles_by_name[n].append(art)
                # Don't break — an article can match multiple names

    return articles_by_name


def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0043_gdelt_events.sql"
    top_n = int(sys.argv[2]) if len(sys.argv) > 2 else 200
    timespan = sys.argv[3] if len(sys.argv) > 3 else "1week"
    batch_size = int(sys.argv[4]) if len(sys.argv) > 4 else 10
    max_per_slug = int(sys.argv[5]) if len(sys.argv) > 5 else 50

    script_dir = os.path.dirname(os.path.abspath(__file__))
    api_dir = os.path.normpath(os.path.join(script_dir, "..", "..", "..", "apps", "api"))
    if not os.path.isdir(api_dir):
        api_dir = os.getcwd()
    env = os.environ.copy()
    if "node_modules/.bin/wrangler" not in env.get("PATH", ""):
        env["PATH"] = f"{api_dir}/node_modules/.bin:{env.get('PATH', '')}"

    # Load top subjects from D1
    print(f"[gdelt] loading top {top_n} subjects (batch={batch_size}, timespan={timespan})...", file=sys.stderr)
    cmd = ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
           "--env", "dev",
           "--command",
           f"SELECT e.id, e.slug, e.canonical_name, e.type FROM entity e WHERE e.type IN ('person','place') AND e.popularity_score >= 50 ORDER BY e.popularity_score DESC, e.canonical_name LIMIT {top_n}",
           "--json"]
    r = subprocess.run(cmd, capture_output=True, text=True, timeout=60, cwd=api_dir, env=env)
    if r.returncode != 0:
        print(f"[gdelt] load error: {r.stderr[:200]}", file=sys.stderr)
        return 1
    idx = r.stdout.find("[")
    parsed = json.loads(r.stdout[idx:])
    rows = parsed[0].get("results", [])
    print(f"[gdelt] loaded {len(rows)} subjects", file=sys.stderr)

    # Build name → entity_id map
    name_to_id = {}
    name_to_slug = {}
    id_to_name = {}
    for r in rows:
        n = r["canonical_name"]
        name_to_id[n] = r["id"]
        name_to_slug[n] = r["slug"]
        id_to_name[r["id"]] = n

    # Batch names
    names = list(name_to_id.keys())
    n_batches = (len(names) + batch_size - 1) // batch_size
    print(f"[gdelt] querying {n_batches} batches ({batch_size} names each)", file=sys.stderr)

    out_f = open(out_path, "w")
    out_f.write(f"""-- ========================================
-- Migration 0043: GDELT DOC 2.0 events for top {top_n} subjects
-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}
-- Timespan: {timespan}, batch size: {batch_size}
-- Source: GDELT 2.0 DOC API (free, no auth)
-- Rate limit: 1 req / 5 sec (per GDELT ToS)
-- ========================================

""")
    out_f.flush()

    total_events = 0
    n_with_events = 0

    for batch_idx in range(n_batches):
        batch_names = names[batch_idx*batch_size : (batch_idx+1)*batch_size]

        try:
            results = query_gdelt_batch(batch_names, timespan=timespan, max_records=200)
        except Exception as e:
            print(f"[gdelt] batch {batch_idx+1} error: {e}", file=sys.stderr)
            time.sleep(30)
            continue

        batch_total = 0
        for name, articles in results.items():
            eid = name_to_id[name]
            slug = name_to_slug[name]
            seen_urls = set()
            kept = 0

            for j, art in enumerate(articles):
                if kept >= max_per_slug:
                    break
                url = art.get("url", "")
                if not url or url in seen_urls:
                    continue
                seen_urls.add(url)

                title = art.get("title", "").strip()
                if not title:
                    continue

                seendate = art.get("seendate", "")
                year = None
                date_iso = None
                precision = "YEAR"
                m = re.match(r'^(\d{4})(\d{2})(\d{2})T(\d{2})(\d{2})(\d{2})Z$', seendate)
                if m:
                    year = int(m.group(1))
                    month = int(m.group(2))
                    day = int(m.group(3))
                    date_iso = f"{year:04d}-{month:02d}-{day:02d}"
                    precision = "DAY"
                else:
                    m2 = re.match(r'^(\d{4})(\d{2})\d{2}', seendate)
                    if m2:
                        year = int(m2.group(1))
                    else:
                        continue

                language = art.get("language", "English")
                if language and language.lower() not in ("english", "en"):
                    continue

                title_safe = title[:200].replace("'", "''").replace("\n", " ").replace("\r", " ")
                body_safe = title[:480].replace("'", "''").replace("\n", " ").replace("\r", " ")
                ev_id = f"ev_gdelt_{slug}_{year}_{j}"
                url_safe = url[:500].replace("'", "''")

                date_sql = f"'{date_iso}'" if date_iso else "NULL"

                out_f.write(f"""INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('{ev_id}', '{eid}', {date_sql}, {year}, 'news', 'news',
   '{title_safe}', '{body_safe}', 'src_gdelt',
   '{url_safe}', 0.70, {j}, 'en', '{precision}', unixepoch(), unixepoch());
""")
                total_events += 1
                batch_total += 1
                kept += 1

            if kept > 0:
                n_with_events += 1

        if (batch_idx + 1) % 5 == 0 or batch_idx == n_batches - 1:
            avg = total_events / max(1, n_with_events)
            print(f"[gdelt] batch {batch_idx+1}/{n_batches}: {batch_total} events (total: {total_events}, avg: {avg:.1f}, with-events: {n_with_events})", file=sys.stderr)

        # Rate limit: 5 sec between requests + 2 sec buffer = 7 sec
        time.sleep(7)

    out_f.close()
    print(f"\n[gdelt] done: total_events={total_events} subjects_with_events={n_with_events}", file=sys.stderr)
    print(f"[gdelt] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
