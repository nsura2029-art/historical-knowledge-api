#!/usr/bin/env python3
"""
events_extract.py — Extract date-anchored events from each person's content_sections.

For each entity of type 'person':
  1. Read all content_section rows (body_markdown + section_type)
  2. Split body into sentences
  3. Find sentences containing a year (1000-2030)
  4. Extract the event: title = first 6-10 words, body = the sentence
  5. Categorize by section_type + keywords (LLM, but rule-based)
  6. Try to extract a precise date (YYYY-MM-DD) if the sentence contains
     a month name

Output: migration 0029_entity_events_extracted.sql

Categories (event_type):
  personal_life, career, award, publication, public_appearance,
  legal, political, athletic, scientific, creative,
  travel, education, death, birth, founding, controversy
"""

import json
import os
import re
import subprocess
import sys
import time

# ============================================================
# Date extraction
# ============================================================

MONTH_RE = r'(?:January|February|March|April|May|June|July|August|September|October|November|December)'
MONTH_ABBR_RE = r'(?:Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Sept|Oct|Nov|Dec)'
DAY_RE = r'(?:\d{1,2}(?:st|nd|rd|th)?)'

# Pattern: "Month Day, Year" or "Day Month Year" or "Year"
DATE_PATTERNS = [
    # "January 20, 2017" → 2017-01-20
    (re.compile(rf'\b({MONTH_RE})\s+({DAY_RE}),?\s*(\d{{4}})\b'),
     lambda m: f"{m.group(3)}-{MONTH_NUM[m.group(1)]}-{m.group(2).rstrip('stndrdth').zfill(2)}"),
    # "20 January 2017"
    (re.compile(rf'\b({DAY_RE})\s+({MONTH_RE})\s+(\d{{4}})\b'),
     lambda m: f"{m.group(3)}-{MONTH_NUM[m.group(2)]}-{m.group(1).rstrip('stndrdth').zfill(2)}"),
    # "Jan 20, 2017" / "Jan. 20, 2017"
    (re.compile(rf'\b({MONTH_ABBR_RE})\.?\s+({DAY_RE}),?\s*(\d{{4}})\b'),
     lambda m: f"{m.group(3)}-{MONTH_ABBR_NUM[m.group(1)]}-{m.group(2).rstrip('stndrdth').zfill(2)}"),
]

MONTH_NUM = {
    "January": "01", "February": "02", "March": "03", "April": "04",
    "May": "05", "June": "06", "July": "07", "August": "08",
    "September": "09", "October": "10", "November": "11", "December": "12"
}
MONTH_ABBR_NUM = {
    "Jan": "01", "Feb": "02", "Mar": "03", "Apr": "04", "May": "05",
    "Jun": "06", "Jul": "07", "Aug": "08", "Sep": "09", "Sept": "09",
    "Oct": "10", "Nov": "11", "Dec": "12"
}

YEAR_RE = re.compile(r'\b(1[0-9]{3}|20[0-2][0-9])\b')

# ============================================================
# Event type classification
# ============================================================

EVENT_TYPE_RULES = [
    # (keyword pattern, event_type, category)
    (re.compile(r'\b(born|birth|née|was born)\b', re.I), 'birth', 'life'),
    (re.compile(r'\b(died|death|passed away|dies)\b', re.I), 'death', 'life'),
    (re.compile(r'\b(married|marriage|wedding|wed)\b', re.I), 'personal_life', 'life'),
    (re.compile(r'\b(divorced|divorce)\b', re.I), 'personal_life', 'life'),
    (re.compile(r'\b(child|son|daughter|children)\b.*\b(of|to)\b', re.I), 'personal_life', 'life'),
    (re.compile(r'\b(awarded|won|prize|nobel|oscar|grammy|emmy|medal|hall of fame)\b', re.I), 'award', 'work'),
    (re.compile(r'\b(published|book|album|movie|film|novel|record|song|painting|novel)\b', re.I), 'publication', 'work'),
    (re.compile(r'\b(graduated|degree|university|college|PhD|MD|JD|MBA)\b', re.I), 'education', 'life'),
    (re.compile(r'\b(elected|won.*election|became.*president|inaugurated|sworn in)\b', re.I), 'political', 'public'),
    (re.compile(r'\b(arrested|indicted|convicted|sued|lawsuit|trial|sentenced)\b', re.I), 'legal', 'public'),
    (re.compile(r'\b(scandal|controversy|allegation|affair)\b', re.I), 'controversy', 'public'),
    (re.compile(r'\b(olympic|medal|championship|record|game|season|home run|touchdown)\b', re.I), 'athletic', 'work'),
    (re.compile(r'\b(discovered|invention|invented|theorem|formula|research|study)\b', re.I), 'scientific', 'work'),
    (re.compile(r'\b(launched|founded|co-founded|established|startup|company)\b', re.I), 'founding', 'work'),
    (re.compile(r'\b(released|premiered|debut|exhibition|gallery|concert|tour)\b', re.I), 'creative', 'work'),
    (re.compile(r'\b(spoke|address|conference|speech|interview|appearance|appeared)\b', re.I), 'public_appearance', 'public'),
    (re.compile(r'\b(traveled|visited|tour|trip|expedition|journey)\b', re.I), 'travel', 'life'),
]

# ============================================================
# Section type to default event_type mapping
# ============================================================

SECTION_TYPE_DEFAULT = {
    "early_life": "personal_life",
    "career": "career",
    "narrative": "personal_life",
    "legacy": "career",
    "biography_intro": "personal_life",
    "election_year": "political",
    "first_term": "political",
    "second_term": "political",
    "policy_area": "political",
    "foreign_policy": "political",
    "economic_policy": "political",
    "indictments": "legal",
    "scandals": "controversy",
    "style_rhetoric": "public_appearance",
    "media": "public_appearance",
    "business": "founding",
    "family": "personal_life",
}


def classify_event_type(sentence: str, section_type: str) -> tuple:
    """Return (event_type, category) based on sentence content + section type."""
    for pattern, etype, cat in EVENT_TYPE_RULES:
        if pattern.search(sentence):
            return etype, cat
    # Fall back to section_type default
    etype = SECTION_TYPE_DEFAULT.get(section_type, "career")
    cat = "life" if etype in ("personal_life", "death", "birth", "education", "travel") else (
        "work" if etype in ("career", "award", "publication", "scientific", "athletic", "creative", "founding") else (
        "public"))
    return etype, cat


def extract_date_from_sentence(sentence: str) -> tuple:
    """Return (date_string_or_None, year_int) from a sentence."""
    for pattern, fmt_fn in DATE_PATTERNS:
        m = pattern.search(sentence)
        if m:
            try:
                return fmt_fn(m), int(m.group(3))
            except (KeyError, IndexError, ValueError):
                pass
    # Try year-only
    m = YEAR_RE.search(sentence)
    if m:
        year = int(m.group(1))
        if 1000 <= year <= 2030:
            return None, year
    return None, None


def make_event_title(sentence: str) -> str:
    """Extract a short title from a sentence (first 6-10 words, cleaned up)."""
    # Take first 80 chars, cut at last complete word
    title = sentence.strip()
    if not title:
        return "Event"
    # Cap at 100 chars
    if len(title) > 100:
        # Cut at last word boundary before 100
        cut = title[:100]
        last_space = cut.rfind(' ')
        if last_space > 50:
            title = cut[:last_space] + "…"
        else:
            title = cut + "…"
    # Remove trailing punctuation
    title = title.rstrip('.,;:')
    return title[:200]


def split_sentences(text: str) -> list:
    """Split text into sentences (simple regex, good enough for Wikipedia)."""
    # First clean up: remove citations
    text = re.sub(r'\[\d+\]', '', text)
    text = re.sub(r'\[[a-z]\]', '', text)
    # Split on . ! ? followed by space + capital
    parts = re.split(r'(?<=[.!?])\s+(?=[A-Z])', text)
    return [p.strip() for p in parts if len(p.strip()) > 20]


# ============================================================
# Main
# ============================================================

def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0029_entity_events_extracted.sql"
    limit = int(sys.argv[2]) if len(sys.argv) > 2 else 0  # 0 = all

    # Find the apps/api directory relative to this script
    script_dir = os.path.dirname(os.path.abspath(__file__))
    api_dir = os.path.normpath(os.path.join(script_dir, "..", "..", "..", "apps", "api"))
    if not os.path.isdir(api_dir):
        api_dir = os.getcwd()  # fallback to CWD

    # Add wrangler to PATH via node_modules
    env = os.environ.copy()
    if "PATH" not in env or "node_modules/.bin/wrangler" not in env["PATH"]:
        wrangler_path = os.path.normpath(os.path.join(api_dir, "..", "..", "develop", "apps", "api", "node_modules", ".bin"))
        if os.path.isdir(wrangler_path):
            env["PATH"] = f"{wrangler_path}:{env.get('PATH', '')}"

    print("[events] loading entities from D1...", file=sys.stderr)
    res = subprocess.run(
        ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
         "--command",
         "SELECT e.id, e.slug, e.canonical_name FROM entity e WHERE e.type='person' ORDER BY e.popularity_score DESC NULLS LAST"],
        capture_output=True, text=True, timeout=120, cwd=api_dir, env=env)
    if res.returncode != 0:
        print(f"[events] wrangler error: {res.stderr[:500]}", file=sys.stderr)
        return 1
    out = res.stdout
    idx = out.find("[")
    if idx == -1:
        print(f"[events] no results in wrangler output", file=sys.stderr)
        return 1
    parsed = json.loads(out[idx:])
    rows = parsed[0].get("results", [])
    print(f"[events] found {len(rows)} people", file=sys.stderr)
    if limit:
        rows = rows[:limit]
        print(f"[events] limiting to first {limit}", file=sys.stderr)

    sql_parts = [
        "-- ========================================",
        f"-- Migration 0029: entity_event rows for {len(rows)} people",
        f"-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}",
        f"-- Source: content_section body_markdown, regex date extraction",
        "-- ========================================",
        "",
    ]

    out_f = open(out_path, "w")
    out_f.write("\n".join(sql_parts) + "\n")
    out_f.flush()

    total_events = 0
    n_people_with_events = 0
    n_max_per_person = 0

    for i, row in enumerate(rows):
        eid = row["id"]
        slug = row["slug"]
        name = row.get("canonical_name", slug)

        # Fetch all sections for this entity
        sec_res = subprocess.run(
            ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
             "--command",
             f"SELECT id, section_type, body_markdown FROM content_section WHERE entity_id='{eid}' ORDER BY display_order"],
            capture_output=True, text=True, timeout=60, cwd=api_dir, env=env)
        if sec_res.returncode != 0:
            continue
        sec_out = sec_res.stdout
        sec_idx = sec_out.find("[")
        if sec_idx == -1:
            continue
        sec_parsed = json.loads(sec_out[sec_idx:])
        sections = sec_parsed[0].get("results", [])

        events = []
        for sec in sections:
            body = sec.get("body_markdown", "")
            if not body or len(body) < 30:
                continue
            section_type = sec.get("section_type", "narrative")
            sec_id = sec.get("id", "")
            for sent in split_sentences(body):
                date_str, year = extract_date_from_sentence(sent)
                if not year:
                    continue
                etype, cat = classify_event_type(sent, section_type)
                title = make_event_title(sent)
                events.append({
                    "year": year, "date": date_str, "type": etype,
                    "category": cat, "title": title, "body": sent[:500],
                    "section_id": sec_id
                })

        # Dedupe by (year, title) — keep first occurrence
        seen = set()
        unique_events = []
        for ev in events:
            key = (ev["year"], ev["title"][:50].lower())
            if key in seen:
                continue
            seen.add(key)
            unique_events.append(ev)

        # Sort by year ASC
        unique_events.sort(key=lambda e: (e["year"], e["title"]))

        # Write SQL
        for j, ev in enumerate(unique_events):
            ev_id = f"ev_{slug}_{ev['year']}_{j:03d}"
            title = ev["title"].replace("'", "''")[:200]
            body = ev["body"].replace("'", "''")[:500]
            date = ev["date"] or "NULL"
            year = ev["year"]
            etype = ev["type"]
            cat = ev["category"]
            sec_id = ev["section_id"]
            out_f.write(f"""INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('{ev_id}', '{eid}', {date if date != "NULL" else "NULL"}, {year}, '{etype}', '{cat}',
   '{title}', '{body}', 'src_wikidata', '{sec_id}', 0.6, {j}, 'en',
   unixepoch(), unixepoch());
""")
            out_f.flush()

        if unique_events:
            n_people_with_events += 1
            n_max_per_person = max(n_max_per_person, len(unique_events))
        total_events += len(unique_events)

        if (i+1) % 25 == 0 or (i+1) == len(rows):
            print(f"[events] {i+1}/{len(rows)}: {name} → {len(unique_events)} events (total: {total_events}, max: {n_max_per_person})", file=sys.stderr)

    out_f.close()
    print(f"\n[events] done: total_events={total_events} people_with_events={n_people_with_events} max_per_person={n_max_per_person}", file=sys.stderr)
    print(f"[events] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
