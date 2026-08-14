#!/usr/bin/env python3
"""
wiki_anniversaries_fetch.py — Scrape Wikipedia "Selected anniversaries today" for all 366 days.

Wikipedia maintains a curated list of historical events for every day of the year, 
organized by year. This is the gold standard for "on this day" data.

For each MM-DD:
  GET https://en.wikipedia.org/wiki/Month_Day
  Parse the Events section (subdivided Pre-1600, 1601-1900, 1901-present)
  Each event: "* YYYY – text..."
  
Outputs to JSON with all events keyed by mm-dd.

Usage:
  python3 wiki_anniversaries_fetch.py --months 1  # January only
  python3 wiki_anniversaries_fetch.py              # all 12 months
  python3 wiki_anniversaries_fetch.py --days 01-15 08-14  # specific dates
"""
import argparse
import json
import re
import time
import urllib.request
from datetime import datetime

DAYS_IN_MONTH = {1:31, 2:29, 3:31, 4:30, 5:31, 6:30, 7:31, 8:31, 9:30, 10:31, 11:30, 12:31}

MONTH_NAMES = ['', 'January', 'February', 'March', 'April', 'May', 'June', 
               'July', 'August', 'September', 'October', 'November', 'December']

UA = "HistoricalKnowledgeAPI/1.0 (contact: api@hka.example.com)"

def fetch_wikitext(month_name, day):
    """Fetch Wikipedia wikitext for a specific month-day page."""
    # Pages are titled "August 14" without leading zero
    url = f"https://en.wikipedia.org/w/api.php?action=parse&page={month_name}_{day}&format=json&prop=wikitext"
    req = urllib.request.Request(url, headers={"User-Agent": UA})
    try:
        with urllib.request.urlopen(req, timeout=30) as r:
            return json.loads(r.read())
    except Exception as e:
        return {"error": str(e)}

def parse_events(wikitext):
    """Extract events from the wikitext. Returns list of (year, text) tuples."""
    if not wikitext:
        return []
    # Find the Events section
    m = re.search(r'==Events==\s*(.*?)(?==(?:Births|Deaths|Holidays|\Z))', wikitext, re.DOTALL)
    if not m:
        return []
    events_text = m.group(1)
    
    events = []
    current_year = None
    # Parse line by line (each event is one line)
    for line in events_text.split('\n'):
        line = line.strip()
        if not line:
            continue
        # Event line variations:
        #   "* YYYY – text..."
        #   "*[[YYYY]] &ndash; text..."  (older years wrapped in wiki-link)
        #   "** YYYY – text..." (sub-list)
        #   "* YYYY BC &ndash; text..." (BC dates)
        # The separator is one of: &ndash; (HTML entity), –, —, -
        m = re.match(r'\*+\s*(?:\[\[)?(\d{1,4})(?:\s*(BC))?(?:\]\]?)?\s*(?:&ndash;|–|—|-)\s*', line)
        if m:
            year_str, bc_marker = m.group(1), m.group(2)
            year = int(year_str)
            if bc_marker == 'BC':
                year = -year
            # Get text after the dash
            text = line[m.end():].strip()
            # Clean up text
            text = re.sub(r'\[\[([^|\]]*\|)?([^\]]*?)\]\]', r'\2', text)  # wiki links
            text = re.sub(r'<ref[^>]*>.*?</ref>', '', text, flags=re.DOTALL)
            text = re.sub(r'<ref[^>]*/?>', '', text)
            text = re.sub(r'\{\{[^}]*?\}\}', '', text)  # templates
            text = re.sub(r"'''?", '', text)  # bold/italic
            text = re.sub(r'\s+', ' ', text).strip()
            if -3000 <= year <= 2100 and 20 <= len(text) <= 800:
                events.append({"year": year, "text": text})
    return events

def parse_births(wikitext):
    """Extract births from the wikitext. Returns list of (year, name, description)."""
    if not wikitext:
        return []
    m = re.search(r'==Births==\s*(.*?)(?==Deaths|\Z)', wikitext, re.DOTALL)
    if not m:
        return []
    births_text = m.group(1)
    births = []
    for line in births_text.split('\n'):
        line = line.strip()
        if not line:
            continue
        m = re.match(r'\*+\s*(?:\[\[)?(\d{1,4})(?:\s*(BC))?(?:\]\]?)?\s*(?:&ndash;|–|—|-)\s*', line)
        if m:
            year_str, bc_marker = m.group(1), m.group(2)
            year = int(year_str)
            if bc_marker == 'BC':
                year = -year
            text = line[m.end():].strip()
            text = re.sub(r'\[\[([^|\]]*\|)?([^\]]*?)\]\]', r'\2', text)
            text = re.sub(r'<ref[^>]*>.*?</ref>', '', text, flags=re.DOTALL)
            text = re.sub(r'<ref[^>]*/?>', '', text)
            text = re.sub(r'\{\{[^}]*?\}\}', '', text)
            text = re.sub(r"'''?", '', text)
            text = re.sub(r'\s+', ' ', text).strip()
            if -3000 <= year <= 2100 and 10 <= len(text) <= 400:
                # Extract name (first part before comma or paren)
                name = text.split(',')[0].split('(')[0].strip()[:100]
                births.append({"year": year, "name": name, "description": text})
    return births

def parse_deaths(wikitext):
    """Extract deaths from the wikitext."""
    if not wikitext:
        return []
    m = re.search(r'==Deaths==\s*(.*?)(?==Holidays|\Z)', wikitext, re.DOTALL)
    if not m:
        return []
    deaths_text = m.group(1)
    deaths = []
    for line in deaths_text.split('\n'):
        line = line.strip()
        if not line:
            continue
        m = re.match(r'\*+\s*(?:\[\[)?(\d{1,4})(?:\s*(BC))?(?:\]\]?)?\s*(?:&ndash;|–|—|-)\s*', line)
        if m:
            year_str, bc_marker = m.group(1), m.group(2)
            year = int(year_str)
            if bc_marker == 'BC':
                year = -year
            text = line[m.end():].strip()
            text = re.sub(r'\[\[([^|\]]*\|)?([^\]]*?)\]\]', r'\2', text)
            text = re.sub(r'<ref[^>]*>.*?</ref>', '', text, flags=re.DOTALL)
            text = re.sub(r'<ref[^>]*/?>', '', text)
            text = re.sub(r'\{\{[^}]*?\}\}', '', text)
            text = re.sub(r"'''?", '', text)
            text = re.sub(r'\s+', ' ', text).strip()
            if -3000 <= year <= 2100 and 10 <= len(text) <= 400:
                # Extract name (first part before comma or paren)
                name = text.split(',')[0].split('(')[0].strip()[:100]
                deaths.append({"year": year, "name": name, "description": text})
    return deaths

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--months", type=int, nargs="+", default=list(range(1, 13)), help="Months to fetch (1-12)")
    parser.add_argument("--days", type=str, nargs="+", default=None, help="Specific days MM-DD to fetch (overrides month list)")
    parser.add_argument("--out", type=str, required=True, help="Output JSON file")
    parser.add_argument("--delay", type=float, default=0.5, help="Seconds between requests")
    args = parser.parse_args()
    
    # Build list of (month_name, day, mm_dd) to fetch
    if args.days:
        targets = []
        for d in args.days:
            m, dd = d.split("-")
            targets.append((MONTH_NAMES[int(m)], int(dd), d))
    else:
        targets = []
        for m in args.months:
            for d in range(1, DAYS_IN_MONTH[m] + 1):
                targets.append((MONTH_NAMES[m], d, f"{m:02d}-{d:02d}"))
    
    print(f"Fetching {len(targets)} day-pages from Wikipedia")
    all_data = {}
    errors = []
    
    for i, (month_name, day, mm_dd) in enumerate(targets, 1):
        if i % 30 == 0:
            print(f"  Progress: {i}/{len(targets)} (current: {mm_dd})")
        data = fetch_wikitext(month_name, day)
        if "error" in data:
            errors.append({"date": mm_dd, "error": data["error"]})
            time.sleep(args.delay)
            continue
        wikitext = data.get("parse", {}).get("wikitext", {}).get("*", "")
        if not wikitext:
            errors.append({"date": mm_dd, "error": "no wikitext"})
            time.sleep(args.delay)
            continue
        events = parse_events(wikitext)
        births = parse_births(wikitext)
        deaths = parse_deaths(wikitext)
        all_data[mm_dd] = {
            "events": events,
            "births": births,
            "deaths": deaths,
        }
        time.sleep(args.delay)
    
    # Stats
    total_events = sum(len(d["events"]) for d in all_data.values())
    total_births = sum(len(d["births"]) for d in all_data.values())
    total_deaths = sum(len(d["deaths"]) for d in all_data.values())
    print(f"\nFetched: {len(all_data)} days, {total_events} events, {total_births} births, {total_deaths} deaths")
    print(f"Errors: {len(errors)}")
    
    with open(args.out, "w") as f:
        json.dump({"data": all_data, "errors": errors, "fetched_at": time.time()}, f)
    print(f"Saved to {args.out}")

if __name__ == "__main__":
    main()
