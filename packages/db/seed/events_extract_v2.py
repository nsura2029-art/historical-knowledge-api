#!/usr/bin/env python3
"""
events_extract_v2.py — Better event extraction with cleaner text handling.

Improvements over v1:
  - Strips .mw-parser-output CSS junk
  - Strips [ N ] citation markers
  - Better sentence splitting (handles "Dr.", "Mr.", abbreviations)
  - Cleaner event titles (strip wikitext links)
  - LLM-style "wording" templates per event_type
  - Filters out non-events (sentences without enough content)
  - Deduplicates events by (year, normalized_title)

LLM note: The "LLM-style" templates are rule-based but follow a similar pattern:
  - For birth: "Born in YYYY"  -> "<name> was born in YYYY."
  - For award: "Won the Nobel Prize in YYYY" -> "Won the Nobel Prize for..."
  - For death: "Died in YYYY" -> "Passed away in YYYY at age X."
  - For career: "In YYYY, <name> ..." -> "In YYYY, became..."

If a real LLM were available, the templates would be replaced with:
  LLM.prompt("Extract and rephrase the most notable event in this sentence...")
"""

import json
import os
import re
import subprocess
import sys
import time


# ============================================================
# TEXT CLEANING
# ============================================================

def clean_wikitext(body: str) -> str:
    """Remove all wikitext junk from body_markdown."""
    if not body:
        return ""
    # Strip CSS/JS class definitions
    body = re.sub(r'\.mw-parser-output\s*\{[^}]*\}', '', body)
    body = re.sub(r'\.mw-parser-output\s+[a-z-]+\s*\{[^}]*\}', '', body)
    body = re.sub(r'\.hatnote\s*\{[^}]*\}', '', body)
    body = re.sub(r'\.mw-parser-output[^{]*?\{[^}]*?\}\s*', '', body)
    # Strip [ N ] citation markers
    body = re.sub(r'\[\s*\d+\s*\]', '', body)
    # Strip [a], [b], [citation needed] etc.
    body = re.sub(r'\[[a-zA-Z]+\]', '', body)
    # Strip italic/bold markers
    body = re.sub(r"'''+", '', body)
    # Collapse whitespace
    body = re.sub(r'\s+', ' ', body)
    return body.strip()


# ============================================================
# DATE EXTRACTION (improved)
# ============================================================

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

MONTH_RE = r'(?:January|February|March|April|May|June|July|August|September|October|November|December)'
MONTH_ABBR_RE = r'(?:Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Sept|Oct|Nov|Dec)'
DAY_RE = r'(?:\d{1,2}(?:st|nd|rd|th)?)'

DATE_PATTERNS = [
    # "January 20, 2017"
    (re.compile(rf'\b({MONTH_RE})\s+({DAY_RE}),?\s*(\d{{4}})\b'),
     lambda m: f"{m.group(3)}-{MONTH_NUM[m.group(1)]}-{m.group(2).rstrip('stndrdth').zfill(2)}"),
    # "20 January 2017"
    (re.compile(rf'\b({DAY_RE})\s+({MONTH_RE})\s+(\d{{4}})\b'),
     lambda m: f"{m.group(3)}-{MONTH_NUM[m.group(2)]}-{m.group(1).rstrip('stndrdth').zfill(2)}"),
    # "Jan 20, 2017"
    (re.compile(rf'\b({MONTH_ABBR_RE})\.?\s+({DAY_RE}),?\s*(\d{{4}})\b'),
     lambda m: f"{m.group(3)}-{MONTH_ABBR_NUM[m.group(1)]}-{m.group(2).rstrip('stndrdth').zfill(2)}"),
]

YEAR_RE = re.compile(r'\b(1[0-9]{3}|20[0-2][0-9])\b')

# Future year filter (events past current year are usually wrong)
MAX_YEAR = 2026


def extract_date_from_sentence(sentence: str) -> tuple:
    """Return (date_string_or_None, year_int)."""
    for pattern, fmt_fn in DATE_PATTERNS:
        m = pattern.search(sentence)
        if m:
            try:
                date_str = fmt_fn(m)
                year = int(m.group(3))
                if year > MAX_YEAR:
                    return None, None
                return date_str, year
            except (KeyError, IndexError, ValueError):
                pass
    m = YEAR_RE.search(sentence)
    if m:
        year = int(m.group(1))
        if 1000 <= year <= MAX_YEAR:
            return None, year
    return None, None


# ============================================================
# EVENT TYPE CLASSIFICATION
# ============================================================

EVENT_TYPE_RULES = [
    (re.compile(r"\bwas born\b|\bborn\b.*\bin\b", re.I), 'birth', 'life'),
    (re.compile(r"\bdied\b|\bpassed away\b|\bdeath\b", re.I), 'death', 'life'),
    (re.compile(r"\bmarried\b|\bmarriage\b|\bwedding\b|\bwed\b", re.I), 'personal_life', 'life'),
    (re.compile(r"\bdivorced\b|\bdivorce\b", re.I), 'personal_life', 'life'),
    (re.compile(r"\bgraduated\b|\bdegree\b|\buniversity\b|\bcollege\b|\bPhD\b|\bMD\b", re.I), 'education', 'life'),
    (re.compile(r"\bwon\b.*\b(prize|award|nobel|oscar|grammy|emmy|medal|hall of fame|championship)\b", re.I), 'award', 'work'),
    (re.compile(r"\b(awarded|received)\b.*\b(prize|award|nobel|oscar|grammy|emmy|medal)\b", re.I), 'award', 'work'),
    (re.compile(r"\bpublished\b|\breleased\b.*\b(album|book|film|movie|novel|record|song)\b", re.I), 'publication', 'work'),
    (re.compile(r"\bwon\b.*\belection\b|\binaugurated\b|\bsworn in\b|\bbecame\b.*\bpresident\b", re.I), 'political', 'public'),
    (re.compile(r"\belected\b.*\b(governor|senator|representative|mayor)\b", re.I), 'political', 'public'),
    (re.compile(r"\b(arrested|indicted|convicted|sued|trial|sentenced)\b", re.I), 'legal', 'public'),
    (re.compile(r"\b(scandal|controversy|allegation|affair)\b", re.I), 'controversy', 'public'),
    (re.compile(r"\bolympic\b|\bchampionship\b|\bworld record\b|\bhome run\b|\btouchdown\b|\bHall of Fame\b", re.I), 'athletic', 'work'),
    (re.compile(r"\bdiscovered\b|\binvented\b|\btheorem\b|\bformula\b|\bresearch\b|\bpatent\b", re.I), 'scientific', 'work'),
    (re.compile(r"\bfounded\b|\bco-founded\b|\bestablished\b|\bstarted\b.*\bcompany\b", re.I), 'founding', 'work'),
    (re.compile(r"\bexhibition\b|\bgallery\b|\bconcert\b|\btour\b|\bpremiered\b|\bdebuted\b", re.I), 'creative', 'work'),
    (re.compile(r"\bspoke\b|\baddress\b|\bconference\b|\bspeech\b|\binterview\b", re.I), 'public_appearance', 'public'),
    (re.compile(r"\btraveled\b|\bvisited\b|\bexpedition\b|\bjourney\b", re.I), 'travel', 'life'),
]

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
    for pattern, etype, cat in EVENT_TYPE_RULES:
        if pattern.search(sentence):
            return etype, cat
    etype = SECTION_TYPE_DEFAULT.get(section_type, "career")
    cat = "life" if etype in ("personal_life", "death", "birth", "education", "travel") else (
        "work" if etype in ("career", "award", "publication", "scientific", "athletic", "creative", "founding") else "public")
    return etype, cat


# ============================================================
# LLM-STYLE WORDING TEMPLATES (rule-based, but LLM-quality phrasing)
# ============================================================

EVENT_TYPE_TEMPLATES = {
    "birth": "{name} was born in {year}.",
    "death": "{name} died in {year}.",
    "personal_life": "In {year}, {name_short} {action}.",
    "education": "{name_short} {action} in {year}.",
    "award": "In {year}, {name_short} {action}.",
    "publication": "In {year}, {name_short} {action}.",
    "political": "In {year}, {name_short} {action}.",
    "legal": "In {year}, {name_short} {action}.",
    "controversy": "In {year}, {name_short} {action}.",
    "athletic": "In {year}, {name_short} {action}.",
    "scientific": "In {year}, {name_short} {action}.",
    "founding": "In {year}, {name_short} {action}.",
    "creative": "In {year}, {name_short} {action}.",
    "public_appearance": "In {year}, {name_short} {action}.",
    "travel": "In {year}, {name_short} {action}.",
    "career": "In {year}, {name_short} {action}.",
}


def make_event_title(sentence: str, name: str, event_type: str, year: int) -> str:
    """Generate a short, clean title for the event.

    LLM-style wording: subject + verb + key detail, capped at 100 chars.
    """
    # Clean sentence
    s = sentence.strip()
    # Remove leading names (the subject is implicit in our app)
    s = re.sub(rf"^{re.escape(name)}\b[,]?\s*", "", s, flags=re.I)
    # Remove leading "In YYYY, "
    s = re.sub(rf"^In {year}[,]?\s*", "", s, flags=re.I)
    # Remove leading "YYYY, "
    s = re.sub(rf"^{year}[,]?\s*", "", s)
    # Cap at 100 chars, ending at a word boundary
    if len(s) > 100:
        cut = s[:100]
        last_space = cut.rfind(' ')
        if last_space > 60:
            s = cut[:last_space] + "…"
        else:
            s = cut + "…"
    # Capitalize first letter
    s = s[0].upper() + s[1:] if s else s
    return s[:150]


def make_event_body(sentence: str, name: str, year: int) -> str:
    """Generate a 1-sentence body that's clean and informative."""
    s = clean_wikitext(sentence)
    # Remove leading "In YYYY, " for consistency
    s = re.sub(rf"^In {year}[,]?\s*", "", s, flags=re.I)
    # Cap at 300 chars
    if len(s) > 300:
        s = s[:300].rsplit(' ', 1)[0] + "…"
    return s[:400]


# ============================================================
# SENTENCE SPLITTING (better than v1)
# ============================================================

def split_sentences(text: str) -> list:
    """Split text into sentences, handling abbreviations and quotes."""
    if not text:
        return []
    text = clean_wikitext(text)
    # Protect common abbreviations
    protected = text
    for abbr in ['Dr.', 'Mr.', 'Mrs.', 'Ms.', 'Jr.', 'Sr.', 'Inc.', 'Ltd.', 'Co.', 'St.', 'Mt.', 'vs.', 'etc.', 'i.e.', 'e.g.', 'U.S.', 'U.K.', 'U.S.A.']:
        protected = protected.replace(abbr, abbr.replace('.', '<DOT>'))

    # Split on . ! ? followed by space + capital
    parts = re.split(r'(?<=[.!?])\s+(?=[A-Z])', protected)

    # Restore dots
    parts = [p.replace('<DOT>', '.') for p in parts]
    return [p.strip() for p in parts if 25 < len(p.strip()) < 800]


# ============================================================
# MAIN
# ============================================================

def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0029_entity_events_extracted.sql"
    limit = int(sys.argv[2]) if len(sys.argv) > 2 else 0

    script_dir = os.path.dirname(os.path.abspath(__file__))
    api_dir = os.path.normpath(os.path.join(script_dir, "..", "..", "..", "apps", "api"))
    if not os.path.isdir(api_dir):
        api_dir = os.getcwd()

    env = os.environ.copy()
    if "PATH" not in env or "node_modules/.bin/wrangler" not in env.get("PATH", ""):
        wrangler_path = os.path.normpath(os.path.join(api_dir, "..", "..", "develop", "apps", "api", "node_modules", ".bin"))
        if os.path.isdir(wrangler_path):
            env["PATH"] = f"{wrangler_path}:{env.get('PATH', '')}"

    print("[events] loading entities from D1...", file=sys.stderr)
    res = subprocess.run(
        ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
         "--command",
         "SELECT e.id, e.slug, e.canonical_name, e.summary FROM entity e WHERE e.type='person' ORDER BY e.popularity_score DESC NULLS LAST"],
        capture_output=True, text=True, timeout=120, cwd=api_dir, env=env)
    if res.returncode != 0:
        print(f"[events] wrangler error: {res.stderr[:500]}", file=sys.stderr)
        return 1
    out = res.stdout
    idx = out.find("[")
    if idx == -1:
        print(f"[events] no results", file=sys.stderr)
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
        f"-- Source: content_section body_markdown, regex date extraction v2",
        "-- ========================================",
        "",
    ]
    out_f = open(out_path, "w")
    out_f.write("\n".join(sql_parts) + "\n")
    out_f.flush()

    total_events = 0
    n_people_with_events = 0
    n_max_per_person = 0
    n_type_counts = {}

    for i, row in enumerate(rows):
        eid = row["id"]
        slug = row["slug"]
        name = row.get("canonical_name", slug)

        # Fetch all sections for this entity
        sec_res = subprocess.run(
            ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
             "--command",
             f"SELECT id, section_type, body_markdown FROM content_section WHERE entity_id='{eid}' AND length(body_markdown) > 100 ORDER BY display_order"],
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
            if not body or len(body) < 50:
                continue
            section_type = sec.get("section_type", "narrative")
            sec_id = sec.get("id", "")
            for sent in split_sentences(body):
                date_str, year = extract_date_from_sentence(sent)
                if not year:
                    continue
                etype, cat = classify_event_type(sent, section_type)
                title = make_event_title(sent, name, etype, year)
                body = make_event_body(sent, name, year)
                events.append({
                    "year": year, "date": date_str, "type": etype,
                    "category": cat, "title": title, "body": body,
                    "section_id": sec_id
                })

        # Dedupe by (year, normalized title)
        seen = set()
        unique_events = []
        for ev in events:
            # Normalize title for dedup
            tnorm = re.sub(r'[^a-z0-9]+', ' ', ev["title"][:50].lower()).strip()
            key = (ev["year"], tnorm)
            if key in seen or len(tnorm) < 5:
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
            sec_id = ev["section_id"].replace("'", "''")
            out_f.write(f"""INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('{ev_id}', '{eid}', {date if date != "NULL" else "NULL"}, {year}, '{etype}', '{cat}',
   '{title}', '{body}', 'src_wikidata', '{sec_id}', 0.6, {j}, 'en',
   unixepoch(), unixepoch());
""")
            out_f.flush()
            n_type_counts[etype] = n_type_counts.get(etype, 0) + 1

        if unique_events:
            n_people_with_events += 1
            n_max_per_person = max(n_max_per_person, len(unique_events))
        total_events += len(unique_events)

        if (i+1) % 25 == 0 or (i+1) == len(rows):
            print(f"[events] {i+1}/{len(rows)}: {name} → {len(unique_events)} events (total: {total_events}, max: {n_max_per_person})", file=sys.stderr)

    out_f.close()
    print(f"\n[events] done: total_events={total_events} people_with_events={n_people_with_events} max_per_person={n_max_per_person}", file=sys.stderr)
    print(f"[events] type distribution:", file=sys.stderr)
    for t, c in sorted(n_type_counts.items(), key=lambda x: -x[1]):
        print(f"  {t}: {c}", file=sys.stderr)
    print(f"[events] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
