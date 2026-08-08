#!/usr/bin/env python3
"""
dbpedia_events_extract.py — Extract date-anchored events from DBpedia for each person.

Uses SPARQL endpoint at https://dbpedia.org/sparql (no rate limits, no auth).

For each entity of type 'person':
  1. Build DBpedia URI from slug
  2. Query SPARQL for all date-anchored properties
  3. Categorize each event
  4. Insert as entity_event with confidence 0.80

Output: migration 0031_dbpedia_events_extracted.sql

DBpedia has structured dates for:
  dbo:birthDate, dbo:deathDate (life events)
  dbp:spouse (with date - marriage/divorce events)
  dbp:termStart, dbp:termEnd (political office events)
  dbp:activeYearsStartDate, dbp:activeYearsEndDate (career)
  dbp:childhoodDate, dbp:deathDate, etc.
"""

import json
import os
import re
import subprocess
import sys
import time
import urllib.parse


# ============================================================
# HTTP HELPERS
# ============================================================

def http_post_json(url: str, data: str, retries: int = 3) -> dict | list | None:
    """HTTP POST via curl (for SPARQL), return parsed JSON."""
    for attempt in range(retries):
        try:
            res = subprocess.run(
                ["curl", "-s", "--max-time", "30", "--connect-timeout", "10",
                 "-H", "Accept: application/json",
                 "-H", "Content-Type: application/x-www-form-urlencoded",
                 "--data-urlencode", f"query={data}",
                 url],
                capture_output=True, text=True, timeout=35)
            if res.returncode != 0:
                continue
            if "rate limit" in res.stdout.lower() or "429" in res.stdout:
                if attempt < retries - 1:
                    time.sleep(2 ** (attempt + 1))
                    continue
            return json.loads(res.stdout)
        except Exception:
            if attempt < retries - 1:
                time.sleep(2)
                continue
    return None


# ============================================================
# DBPEDIA QUERY
# ============================================================

# Get all date-anchored properties for a person
DBPEDIA_QUERY_TEMPLATE = """
PREFIX dbo: <http://dbpedia.org/ontology/>
PREFIX dbp: <http://dbpedia.org/property/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
SELECT DISTINCT ?prop ?date ?value ?valueLabel WHERE {
  BIND(<{uri}> AS ?person)
  ?person ?prop ?value .
  FILTER(isLiteral(?value) && (datatype(?value) = xsd:date || datatype(?value) = xsd:gYear || datatype(?value) = xsd:gYearMonth))
  BIND(STR(?value) AS ?date)
  FILTER(REGEX(?date, "^[0-9]{3,4}"))
  FILTER(?prop NOT IN (rdfs:label, rdfs:comment))
  OPTIONAL { ?value rdfs:label ?valueLabel . FILTER(lang(?valueLabel) = 'en') }
} LIMIT 100
"""


def query_dbpedia(slug: str) -> list:
    """Query DBpedia for all date-anchored properties of a person. Returns list of (prop, date, value, valueLabel)."""
    # Build DBpedia URI from slug
    name = slug.replace("-", "_")
    # DBpedia uses Wikipedia URL convention (Title_Case)
    title_case = name.title() if name else name

    # Try multiple URI variants
    uris_to_try = [
        f"http://dbpedia.org/resource/{title_case}",
        f"http://dbpedia.org/resource/{name}",
    ]

    for uri in uris_to_try:
        query = DBPEDIA_QUERY_TEMPLATE.replace("{uri}", uri)
        data = http_post_json("https://dbpedia.org/sparql", query)
        if not data:
            continue
        results = data.get("results", {}).get("bindings", [])
        if results:
            return [(r["prop"]["value"], r["date"]["value"], r.get("value", {}).get("value", ""), r.get("valueLabel", {}).get("value", "")) for r in results]
    return []


# ============================================================
# CATEGORIZATION
# ============================================================

# Map DBpedia properties to event types
PROPERTY_TO_EVENT_TYPE = {
    "http://dbpedia.org/ontology/birthDate": ("birth", "life", "Born"),
    "http://dbpedia.org/property/birthDate": ("birth", "life", "Born"),
    "http://dbpedia.org/ontology/deathDate": ("death", "life", "Died"),
    "http://dbpedia.org/property/deathDate": ("death", "life", "Died"),
    "http://dbpedia.org/property/spouse": ("personal_life", "life", "Marriage"),
    "http://dbpedia.org/ontology/spouse": ("personal_life", "life", "Marriage"),
    "http://dbpedia.org/property/childhoodDate": ("personal_life", "life", "Childhood"),
    "http://dbpedia.org/property/termStart": ("political", "public", "Term started"),
    "http://dbpedia.org/property/termEnd": ("political", "public", "Term ended"),
    "http://dbpedia.org/ontology/termStart": ("political", "public", "Term started"),
    "http://dbpedia.org/ontology/termEnd": ("political", "public", "Term ended"),
    "http://dbpedia.org/property/activeYearsStartDate": ("career", "work", "Career started"),
    "http://dbpedia.org/property/activeYearsEndDate": ("career", "work", "Career ended"),
    "http://dbpedia.org/ontology/activeYearsStartDate": ("career", "work", "Career started"),
    "http://dbpedia.org/ontology/activeYearsEndDate": ("career", "work", "Career ended"),
    "http://dbpedia.org/property/successor": ("political", "public", "Succeeded"),
    "http://dbpedia.org/property/predecessor": ("political", "public", "Predecessor"),
}


def extract_year(date_str: str) -> int:
    """Extract year from a date string."""
    m = re.match(r"^(-?\d{3,4})", date_str)
    if m:
        try:
            y = int(m.group(1))
            if 1000 <= y <= 2100:
                return y
        except ValueError:
            pass
    return 0


def extract_date(date_str: str) -> str | None:
    """Extract YYYY-MM-DD or YYYY-MM or YYYY from a date string."""
    m = re.match(r"^(-?\d{3,4})(?:-(\d{2}))?(?:-(\d{2}))?", date_str)
    if m:
        y = abs(int(m.group(1)))
        mo = m.group(2)
        d = m.group(3)
        if mo and d:
            return f"{y:04d}-{mo}-{d}"
        elif mo:
            return f"{y:04d}-{mo}"
        else:
            return f"{y:04d}"
    return None


# ============================================================
# MAIN
# ============================================================

def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0031_dbpedia_events_extracted.sql"
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

    print("[db] loading entities from D1...", file=sys.stderr)
    res = subprocess.run(
        ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
         "--command",
         "SELECT e.id, e.slug, e.canonical_name FROM entity e WHERE e.type='person' ORDER BY e.popularity_score DESC NULLS LAST"],
        capture_output=True, text=True, timeout=120, cwd=api_dir, env=env)
    if res.returncode != 0:
        print(f"[db] wrangler error: {res.stderr[:500]}", file=sys.stderr)
        return 1
    out = res.stdout
    idx = out.find("[")
    if idx == -1:
        print(f"[db] no results", file=sys.stderr)
        return 1
    parsed = json.loads(out[idx:])
    rows = parsed[0].get("results", [])
    print(f"[db] found {len(rows)} people", file=sys.stderr)
    if limit:
        rows = rows[:limit]

    # Open output
    sql_parts = [
        "-- ========================================",
        f"-- Migration 0031: DBpedia-sourced events for {len(rows)} people",
        f"-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}",
        f"-- Source: DBpedia SPARQL endpoint (https://dbpedia.org/sparql)",
        f"-- Date-anchored properties only",
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
    n_no_data = 0

    for i, row in enumerate(rows):
        eid = row["id"]
        slug = row["slug"]
        name = row.get("canonical_name", slug)

        # Query DBpedia
        results = query_dbpedia(slug)
        if not results:
            n_no_data += 1
            if (i + 1) % 25 == 0:
                print(f"[db] {i+1}/{len(rows)}: {name} (no data)", file=sys.stderr)
            continue

        events = []
        for prop, date_str, value, value_label in results:
            year = extract_year(date_str)
            if not year:
                continue
            event_type, category, default_verb = PROPERTY_TO_EVENT_TYPE.get(
                prop, ("career", "work", "Notable event")
            )
            date = extract_date(date_str)
            events.append({
                "year": year, "date": date, "type": event_type,
                "category": category, "prop": prop, "verb": default_verb,
                "value": value_label or date_str
            })

        # Dedupe by (year, type)
        seen = set()
        unique = []
        for ev in events:
            key = (ev["year"], ev["type"])
            if key in seen:
                continue
            seen.add(key)
            unique.append(ev)

        # Sort by year
        unique.sort(key=lambda e: e["year"])

        for j, ev in enumerate(unique):
            ev_id = f"ev_db_{slug}_{ev['prop'].split('/')[-1]}_{ev['year']}_{j}"
            verb = ev["verb"]
            val = ev["value"].replace("'", "''")[:200]
            body = f"{name}: {verb.lower()} on {ev['date'] or ev['year']}."
            body = body.replace("'", "''")[:500]
            date_sql = f"'{ev['date']}'" if ev["date"] else "NULL"
            year = ev["year"]
            etype = ev["type"]
            cat = ev["category"]
            out_f.write(f"""INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('{ev_id}', '{eid}', {date_sql}, {year}, '{etype}', '{cat}',
   '{verb} ({year})', '{body}', 'src_dbpedia', 0.8, {j}, 'en',
   unixepoch(), unixepoch());
""")
            out_f.flush()
            n_type_counts[etype] = n_type_counts.get(etype, 0) + 1

        if unique:
            n_people_with_events += 1
            n_max_per_person = max(n_max_per_person, len(unique))
        total_events += len(unique)

        if (i + 1) % 25 == 0 or (i + 1) == len(rows):
            avg = total_events / max(1, n_people_with_events)
            print(f"[db] {i+1}/{len(rows)}: {name} → {len(unique)} events (total: {total_events}, avg: {avg:.1f}, max: {n_max_per_person}, no_data: {n_no_data})", file=sys.stderr)

    out_f.close()
    print(f"\n[db] done: total_events={total_events} people_with_events={n_people_with_events} max_per_person={n_max_per_person} no_data={n_no_data}", file=sys.stderr)
    print(f"[db] type distribution:", file=sys.stderr)
    for t, c in sorted(n_type_counts.items(), key=lambda x: -x[1]):
        print(f"  {t}: {c}", file=sys.stderr)
    print(f"[db] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
