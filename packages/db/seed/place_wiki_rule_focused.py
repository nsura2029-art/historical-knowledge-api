#!/usr/bin/env python3
"""place_wiki_rule_focused.py — Run Wikipedia rule extraction for ONLY places.

Filtered to top N places by popularity that have <5 existing events.
"""
import json
import os
import re
import subprocess
import sys
import time
import urllib.parse
import urllib.request
import urllib.error

USER_AGENT = "HKA-Research/1.1 (https://historical-knowledge-api.com; research@historical-knowledge-api.com) python-urllib/3"
API_DIR = "/workspace/historical-knowledge-api/apps/api"


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


def get_article_text(title):
    params = {"action": "query", "prop": "extracts", "explaintext": "1", "format": "json", "redirects": "1"}
    url = f"https://en.wikipedia.org/w/api.php?{urllib.parse.urlencode(params)}&titles={urllib.parse.quote(title)}"
    try:
        req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
        with urllib.request.urlopen(req, timeout=15) as r:
            data = json.loads(r.read().decode("utf-8"))
        pages = data.get("query", {}).get("pages", {})
        for p in pages.values():
            return p.get("extract", "")
    except:
        return ""
    return ""


def get_wikipedia_title(slug):
    """Use Wikipedia API to find the correct title for a slug."""
    url = f"https://en.wikipedia.org/w/api.php?action=query&prop=info&redirects=1&format=json&titles={urllib.parse.quote(slug.replace('-', '_'))}"
    try:
        req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
        with urllib.request.urlopen(req, timeout=15) as r:
            data = json.loads(r.read().decode("utf-8"))
        pages = data.get("query", {}).get("pages", {})
        for p in pages.values():
            return p.get("title", slug.replace('-', ' '))
    except:
        return slug.replace('-', ' ')


# Date extraction regex patterns (same as wikipedia_events_rule.py)
DATE_REGEXES = [
    # "January 15, 1900" or "Jan 15, 1900" (full date)
    (re.compile(r'\b(?:January|February|March|April|May|June|July|August|September|October|November|December|Jan|Feb|Mar|Apr|Jun|Jul|Aug|Sep|Sept|Oct|Nov|Dec)\.?\s+\d{1,2},?\s+\d{4}\b'), 'DAY'),
    # "1900" alone (year)
    (re.compile(r'\b(?:18|19|20)\d{2}\b'), 'YEAR'),
]

# Event type patterns (simple version for places)
EVENT_TYPE_PATTERNS = {
    'founding': re.compile(r'\b(founded|established|incorporated|chartered)\b', re.IGNORECASE),
    'dissolution': re.compile(r'\b(dissolved|abolished|disbanded|merged into)\b', re.IGNORECASE),
    'historical': re.compile(r'\b(war|battle|treaty|constitution|revolution|independence)\b', re.IGNORECASE),
    'political': re.compile(r'\b(election|congress|president|governor|legislature)\b', re.IGNORECASE),
    'public_appearance': re.compile(r'\b(visit|tour|speech|conference|summit|hosted)\b', re.IGNORECASE),
}


def extract_date_events(text, max_events=30):
    """Extract date-anchored sentences from text."""
    if not text:
        return []

    # Split into sentences
    sentences = re.split(r'(?<=[.!?])\s+', text)
    events = []
    seen = set()

    for sent in sentences:
        sent = sent.strip()
        if len(sent) < 30 or len(sent) > 500:
            continue

        # Try full date first
        date_match = None
        date_precision = None
        for pattern, precision in DATE_REGEXES:
            m = pattern.search(sent)
            if m:
                date_match = m.group(0)
                date_precision = precision
                break

        if not date_match:
            continue

        # Determine event type
        event_type = 'public_appearance'
        for et, pattern in EVENT_TYPE_PATTERNS.items():
            if pattern.search(sent):
                event_type = et
                break

        # Dedupe
        key = (date_match, event_type, sent[:50])
        if key in seen:
            continue
        seen.add(key)

        # Normalize date
        try:
            from datetime import datetime
            if date_precision == 'DAY':
                date_str = re.sub(r'(\d+)(st|nd|rd|th)', r'\1', date_match)
                for fmt in ['%B %d, %Y', '%b %d, %Y']:
                    try:
                        d = datetime.strptime(date_str, fmt)
                        date_norm = d.strftime('%Y-%m-%d')
                        break
                    except:
                        date_norm = None
                if not date_norm:
                    continue
            else:  # YEAR
                year_match = re.search(r'\d{4}', date_match)
                if not year_match:
                    continue
                date_norm = f"{year_match.group(0)}-01-01"
        except:
            continue

        events.append({
            'event_date': date_norm,
            'date_precision': date_precision,
            'event_type': event_type,
            'category': 'history',
            'title': sent[:200],
            'body': sent,
        })
        if len(events) >= max_events:
            break

    return events


def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0069_place_wiki_focused.sql"
    limit = int(sys.argv[2]) if len(sys.argv) > 2 else 500

    print(f"[place-wiki] loading places with <5 events...", file=sys.stderr)
    places = d1_query(f"""
        SELECT e.id, e.slug, e.canonical_name, e.popularity_score,
               (SELECT COUNT(*) FROM entity_event WHERE entity_id = e.id) AS event_count
        FROM entity e
        WHERE e.type='place' AND e.id NOT LIKE 'plc_media%'
        AND (SELECT COUNT(*) FROM entity_event WHERE entity_id = e.id) < 5
        ORDER BY e.popularity_score DESC NULLS LAST
        LIMIT {limit}
    """)
    print(f"[place-wiki] {len(places)} places to process", file=sys.stderr)

    out_f = open(out_path, "w")
    out_f.write(f"""-- ========================================
-- Migration 0069: Wikipedia rule events for {len(places)} places
-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}
-- Filtered to places with <5 existing events
-- ========================================

""")
    out_f.flush()

    total_events = 0
    n_with = 0
    precision_counts = {"DAY": 0, "MONTH": 0, "YEAR": 0}

    for i, p in enumerate(places):
        slug = p["slug"]
        name = p["canonical_name"]
        eid = p["id"]

        title = get_wikipedia_title(slug)
        text = get_article_text(title)
        if not text:
            text = get_article_text(slug.replace("-", "_").replace(" ", "_"))
        if not text:
            continue

        events = extract_date_events(text)
        if not events:
            continue

        n_with += 1
        for j, ev in enumerate(events):
            precision_counts[ev['date_precision']] = precision_counts.get(ev['date_precision'], 0) + 1
            sql = f"""INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wiki_{slug}_{ev['event_date'][:4]}_{j}', '{eid}', '{ev['event_date']}',
   {int(ev['event_date'][:4])}, '{ev['event_type']}', '{ev['category']}',
   '{ev['title'].replace("'", "''")}', '{ev['body'].replace("'", "''")[:500]}',
   'src_en_wikipedia', 'https://en.wikipedia.org/wiki/{slug}', 0.7, {j*10},
   'en', unixepoch(), unixepoch(), unixepoch(), '{ev['date_precision']}');
"""
            out_f.write(sql)
        total_events += len(events)
        out_f.flush()

        if (i + 1) % 25 == 0:
            print(f"[place-wiki] {i+1}/{len(places)} processed, {total_events} events, {n_with} with events", file=sys.stderr)

    out_f.close()
    print(f"\n[place-wiki] done: total_events={total_events} subjects_with_events={n_with}", file=sys.stderr)
    print(f"[place-wiki] precision: {precision_counts}", file=sys.stderr)
    print(f"[place-wiki] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
