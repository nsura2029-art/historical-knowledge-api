#!/usr/bin/env python3
"""
orgs_events_wiki_rule.py — Rule-based event extraction from Wikipedia for orgs.

For each organization, fetch the Wikipedia article and extract
date-anchored events using regex. No LLM, $0 cost.

Strategy:
1. Fetch article sections (not full wikitext, just HTML)
2. Strip HTML tags to get clean text
3. Apply date regex to find date candidates
4. Extract the sentence containing each date
5. Output as event with the sentence as the body

Usage:
    python3 packages/db/seed/orgs_events_wiki_rule.py [output.sql] [limit]
"""
import json
import os
import re
import subprocess
import sys
import time
import urllib.parse

USER_AGENT = "HKA-Research/1.1 (https://historical-knowledge-api.com; research@historical-knowledge-api.com) python-urllib/3"

MONTHS = {
    'january': 1, 'february': 2, 'march': 3, 'april': 4, 'may': 5, 'june': 6,
    'july': 7, 'august': 8, 'september': 9, 'october': 10, 'november': 11, 'december': 12,
    'jan': 1, 'feb': 2, 'mar': 3, 'apr': 4, 'jun': 6, 'jul': 7, 'aug': 8, 'sep': 9, 'sept': 9, 'oct': 10, 'nov': 11, 'dec': 12,
}

RE_FULL_DATE_MD = re.compile(
    r'\b(January|February|March|April|May|June|July|August|September|October|November|December)'
    r'\s+(\d{1,2}),?\s+(\d{4})\b', re.IGNORECASE)
RE_FULL_DATE_DM = re.compile(
    r'\b(\d{1,2})\s+(January|February|March|April|May|June|July|August|September|October|November|December)\s+(\d{4})\b',
    re.IGNORECASE)
RE_MONTH_YEAR = re.compile(
    r'\b(January|February|March|April|May|June|July|August|September|October|November|December)\s+(\d{4})\b',
    re.IGNORECASE)
RE_YEAR = re.compile(r'\b(1[6-9]\d{2}|20\d{2})\b')


def get_article_text(title):
    """Fetch Wikipedia article as HTML via REST API, then strip tags."""
    url = f"https://en.wikipedia.org/api/rest_v1/page/html/{urllib.parse.quote(title.replace(' ', '_'))}"
    try:
        res = subprocess.run(
            ["curl", "-s", "--max-time", "20", "--connect-timeout", "5",
             "-A", USER_AGENT,
             "-w", "\n__HTTP_STATUS__%{http_code}",
             url],
            capture_output=True, text=True, timeout=25)
        if res.returncode != 0:
            return None
        out = res.stdout
        status = 0
        if "__HTTP_STATUS__" in out:
            status_str = out.rsplit("__HTTP_STATUS__", 1)[-1].strip()
            try:
                status = int(status_str)
            except ValueError:
                pass
        if status and status >= 400:
            return None
        html = out.rsplit("__HTTP_STATUS__", 1)[0]
        # Strip HTML tags
        text = re.sub(r'<style[^>]*>.*?</style>', ' ', html, flags=re.DOTALL | re.IGNORECASE)
        text = re.sub(r'<script[^>]*>.*?</script>', ' ', text, flags=re.DOTALL | re.IGNORECASE)
        text = re.sub(r'<[^>]+>', ' ', text)
        # Strip CSS noise
        text = re.sub(r'\.mw-[a-z\-]+(?:\s*[\.,][^{]*)?\s*\{[^}]*\}', ' ', text)
        text = re.sub(r'@media[^{]*\{[^{}]*(?:\{[^{}]*\}[^{}]*)*\}', ' ', text)
        text = re.sub(r'\{[^{}]*[:;][^{}]*\}', ' ', text)
        text = re.sub(r'\.[a-z][a-z\-]{2,}\b', ' ', text)
        # Decode common HTML entities
        text = text.replace('&amp;', '&').replace('&lt;', '<').replace('&gt;', '>')
        text = text.replace('&#160;', ' ').replace('&nbsp;', ' ')
        text = text.replace('&#91;', '[').replace('&#93;', ']')
        text = text.replace('&quot;', '"').replace('&#39;', "'")
        text = re.sub(r'\s+', ' ', text)
        return text.strip()
    except Exception:
        return None


def get_wiki_title(org_name, slug):
    """Try multiple Wikipedia title patterns for orgs."""
    candidates = [org_name, slug.replace("-", "_").replace(" ", "_")]
    # Add disambiguation
    candidates.append(f"{org_name} (company)")
    candidates.append(f"{org_name} Inc.")
    candidates.append(f"{org_name} Corp.")
    candidates.append(f"{org_name} (corporation)")

    for title in candidates:
        text = get_article_text(title)
        if text and len(text) > 500:
            return title, text
    return None, None


def extract_date_events(text, name, slug, max_per_slug=40):
    """Extract date-anchored events from article text."""
    # Split into sentences
    sentences = re.split(r'(?<=[.!?])\s+', text)
    seen_sentences = set()
    events = []

    for sentence in sentences:
        if len(sentence) > 500:
            continue
        # Try date patterns in order of precision
        m = RE_FULL_DATE_MD.search(sentence)
        if m:
            month_name = m.group(1).lower()
            day = int(m.group(2))
            year = int(m.group(3))
            month = MONTHS.get(month_name[:3], None)
            if month and 1500 <= year <= 2030:
                date_iso = f"{year:04d}-{month:02d}-{day:02d}"
                key = (year, sentence[:100])
                if key not in seen_sentences:
                    seen_sentences.add(key)
                    events.append((year, date_iso, 'DAY', sentence, slug))
                    continue
        m = RE_FULL_DATE_DM.search(sentence)
        if m:
            day = int(m.group(1))
            month_name = m.group(2).lower()
            year = int(m.group(3))
            month = MONTHS.get(month_name[:3], None)
            if month and 1500 <= year <= 2030:
                date_iso = f"{year:04d}-{month:02d}-{day:02d}"
                key = (year, sentence[:100])
                if key not in seen_sentences:
                    seen_sentences.add(key)
                    events.append((year, date_iso, 'DAY', sentence, slug))
                    continue
        m = RE_MONTH_YEAR.search(sentence)
        if m:
            month_name = m.group(1).lower()
            year = int(m.group(2))
            month = MONTHS.get(month_name[:3], None)
            if month and 1500 <= year <= 2030:
                date_iso = f"{year:04d}-{month:02d}"
                key = (year, sentence[:100])
                if key not in seen_sentences:
                    seen_sentences.add(key)
                    events.append((year, date_iso, 'MONTH', sentence, slug))
                    continue
        m = RE_YEAR.search(sentence)
        if m:
            year = int(m.group(1))
            if 1500 <= year <= 2030:
                if re.search(rf'\b{year}-\d{{2,4}}\b', sentence) or re.search(rf'\b\d{{2,4}}-{year}\b', sentence):
                    continue
                key = (year, sentence[:100])
                if key not in seen_sentences:
                    seen_sentences.add(key)
                    events.append((year, None, 'YEAR', sentence, slug))
        if len(events) >= max_per_slug:
            break
    return events


def detect_event_type(sentence):
    """Map sentence text to entity_event.event_type CHECK constraint value.

    Valid values: personal_life, career, award, publication, public_appearance,
    legal, political, athletic, scientific, creative, travel, education,
    death, birth, founding, controversy
    """
    text_lower = sentence.lower()
    if any(w in text_lower for w in ['founded', 'established', 'incorporated', 'incorporated as']):
        return "founding"
    if any(w in text_lower for w in ['acquired', 'acquisition', 'acquired by', 'merged with', 'merger']):
        return "corporate"  # Not in CHECK, will fallback
    if any(w in text_lower for w in ['ipo', 'public offering', 'went public', 'listed on']):
        return "public_appearance"
    if any(w in text_lower for w in ['launched', 'released', 'introduced', 'unveiled', 'announced']):
        return "publication"
    if any(w in text_lower for w in ['filed for bankruptcy', 'bankruptcy', 'liquidat']):
        return "legal"
    if any(w in text_lower for w in ['scandal', 'controversy', 'lawsuit', 'sued', 'indicted']):
        return "controversy"
    if any(w in text_lower for w in ['acquisition', 'acquired', 'merged']):
        return "legal"
    if any(w in text_lower for w in ['product', 'service', 'platform']):
        return "publication"
    if any(w in text_lower for w in ['award', 'prize', 'recognition', 'honored']):
        return "award"
    return "career"


def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0077_orgs_events_wiki.sql"
    limit = int(sys.argv[2]) if len(sys.argv) > 2 else 1500

    script_dir = os.path.dirname(os.path.abspath(__file__))
    api_dir = "/workspace/historical-knowledge-api/apps/api"

    # Load all orgs
    print(f"[orgs-events] loading orgs...", file=sys.stderr)
    all_rows = []
    chunk_size = 100
    offset = 0
    while True:
        cmd = ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
               "--env", "dev",
               "--command",
               f"SELECT e.id, e.slug, e.canonical_name FROM entity e WHERE e.type='organization' AND e.id NOT LIKE 'org_media%' ORDER BY e.popularity_score DESC NULLS LAST LIMIT {chunk_size} OFFSET {offset}",
               "--json"]
        r = subprocess.run(cmd, capture_output=True, text=True, timeout=60, cwd=api_dir,
                           env={**os.environ, "PATH": f"{api_dir}/node_modules/.bin:" + os.environ.get("PATH", "")})
        if r.returncode != 0:
            break
        try:
            idx = r.stdout.find("[")
            if idx == -1:
                break
            parsed = json.loads(r.stdout[idx:])
            rows = parsed[0].get("results", [])
            if not rows:
                break
            all_rows.extend(rows)
            if len(rows) < chunk_size:
                break
            offset += chunk_size
        except Exception:
            break
    print(f"[orgs-events] loaded {len(all_rows)} orgs", file=sys.stderr)
    if limit:
        all_rows = all_rows[:limit]

    out_f = open(out_path, "w")
    out_f.write(f"""-- ========================================
-- Migration 0077: Wikipedia rule-based events for {len(all_rows)} organizations
-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}
-- Strategy: Fetch article plain text, extract date-anchored sentences via regex
-- Date patterns: full (Month DD, YYYY), month-year, year-only
-- ========================================

""")
    out_f.flush()

    total_events = 0
    n_with_events = 0
    n_precision_counts = {"DAY": 0, "MONTH": 0, "YEAR": 0}

    # Valid event_type values per entity_event CHECK constraint
    VALID_EVENT_TYPES = {
        "personal_life", "career", "award", "publication", "public_appearance",
        "legal", "political", "athletic", "scientific", "creative",
        "travel", "education", "death", "birth", "founding", "controversy"
    }

    for i, row in enumerate(all_rows):
        slug = row["slug"]
        name = row["canonical_name"]
        eid = row["id"]

        title, text = get_wiki_title(name, slug)
        if not text:
            if (i + 1) % 25 == 0:
                print(f"[orgs-events] {i+1}/{len(all_rows)}: {name} → 0 events (no wiki)", file=sys.stderr)
            continue

        events = extract_date_events(text, name, slug, max_per_slug=30)

        for j, (year, date, precision, sentence, _) in enumerate(events):
            ev_id = f"ev_org_{slug}_{year}_{j}"
            sentence_clean = sentence[:480].replace("'", "''").replace("\n", " ").replace("\r", " ").replace("\t", " ")
            title_clean = sentence[:200].replace("'", "''").replace("\n", " ").replace("\r", " ").replace("\t", " ")
            date_sql = f"'{date}'" if date else "NULL"
            et = detect_event_type(sentence)
            # Ensure valid event_type
            if et not in VALID_EVENT_TYPES:
                et = "career"
            cat = "narrative"
            source_url = f"https://en.wikipedia.org/wiki/{title.replace(' ', '_')}".replace(chr(39), "%27")
            out_f.write(f"""INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at, created_at)
VALUES
  ('{ev_id}', '{eid}', {date_sql}, {year}, '{et}', '{cat}',
   '{title_clean}', '{sentence_clean}', 'src_en_wikipedia',
   '{source_url}', 0.7, {j}, 'en', '{precision}', unixepoch(), unixepoch(), unixepoch());
""")
            total_events += 1
            n_precision_counts[precision] = n_precision_counts.get(precision, 0) + 1

        if events:
            n_with_events += 1

        if (i + 1) % 25 == 0 or (i + 1) == len(all_rows):
            avg = total_events / max(1, n_with_events)
            print(f"[orgs-events] {i+1}/{len(all_rows)}: {name} → {len(events)} events (total: {total_events}, avg: {avg:.1f})", file=sys.stderr)
        time.sleep(0.3)

    out_f.close()
    print(f"\n[orgs-events] done: total_events={total_events} orgs_with_events={n_with_events}", file=sys.stderr)
    print(f"[orgs-events] precision: {n_precision_counts}", file=sys.stderr)
    print(f"[orgs-events] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
