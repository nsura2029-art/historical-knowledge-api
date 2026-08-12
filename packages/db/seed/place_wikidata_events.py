#!/usr/bin/env python3
"""place_wikidata_events.py — Extract date-anchored events from Wikidata for places.

Strategy:
1. For each place without events, look up its wikidata_qid via Wikipedia API
2. Fetch P571 (inception), P576 (dissolved), P793 (significant event) from Wikidata
3. Resolve P793 target entity labels for meaningful titles
4. Generate INSERT statements

Three event sources:
- P571 inception → event_type=founding
- P576 dissolution → event_type=political
- P793 significant event → derive event_type from P31 (instance of) on target
"""
import json
import os
import re
import subprocess
import sys
import time
import urllib.parse
import urllib.request

USER_AGENT = "HKA-Research/1.1 (https://historical-knowledge-api.com; research@historical-knowledge-api.com)"
API_DIR = "/workspace/hka-place-wikidata/apps/api"

# Rate limit tracking
RATE_LIMIT_HIT = False
RATE_LIMIT_HIT_AT = 0


def http_get_json(url, retries=2, use_urllib=False):
    """HTTP GET, return parsed JSON or None. Detects rate limit by status code."""
    global RATE_LIMIT_HIT, RATE_LIMIT_HIT_AT
    for attempt in range(retries + 1):
        if RATE_LIMIT_HIT and time.time() - RATE_LIMIT_HIT_AT < 60:
            wait = 60 - (time.time() - RATE_LIMIT_HIT_AT)
            if wait > 0:
                time.sleep(wait)
        try:
            if use_urllib:
                req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
                with urllib.request.urlopen(req, timeout=15) as r:
                    if r.status == 429:
                        RATE_LIMIT_HIT = True
                        RATE_LIMIT_HIT_AT = time.time()
                        continue
                    return json.loads(r.read().decode("utf-8"))
            else:
                res = subprocess.run(
                    ["curl", "-s", "--max-time", "15", "--connect-timeout", "5",
                     "-A", USER_AGENT, "-w", "\n__HTTP_STATUS__:%{http_code}", url],
                    capture_output=True, text=True
                )
                if "__HTTP_STATUS__:429" in res.stdout or "__HTTP_STATUS__:403" in res.stdout:
                    RATE_LIMIT_HIT = True
                    RATE_LIMIT_HIT_AT = time.time()
                    continue
                body = res.stdout.split("__HTTP_STATUS__:")[0]
                return json.loads(body)
        except Exception as e:
            if attempt == retries:
                return None
            time.sleep(0.5)
    return None


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


def get_wikidata_qid_from_wikipedia(slug, canonical_name):
    """Look up Wikidata QID via Wikipedia API pageprops endpoint.

    Tries state-suffixed titles first (Austin,_Texas) which are usually the city
    article, then falls back to bare name. Skips disambiguation pages.
    """
    base = slug.replace("-", "_")
    base_name = re.sub(r"\s*\([^)]*\)", "", canonical_name).strip().replace(" ", "_")
    # State-suffixed titles first (more likely to be the city article)
    candidates = []
    for state in ["California", "Texas", "Florida", "New_York", "Pennsylvania",
                  "Illinois", "Ohio", "Georgia", "North_Carolina", "Michigan",
                  "Virginia", "Washington", "Arizona", "Massachusetts", "Tennessee",
                  "Indiana", "Missouri", "Maryland", "Wisconsin", "Colorado",
                  "Minnesota", "Alabama", "Louisiana", "Kentucky", "Oregon",
                  "Oklahoma", "Connecticut", "Iowa", "South_Carolina", "Arkansas",
                  "Kansas", "Mississippi", "Utah", "Nevada", "Nebraska", "New_Mexico",
                  "West_Virginia", "Idaho", "Hawaii", "New_Hampshire", "Maine",
                  "Montana", "Rhode_Island", "South_Dakota", "North_Dakota", "Alaska",
                  "Vermont", "Wyoming", "Delaware"]:
        candidates.append(f"{base_name},_{state}")
    # Then bare names
    candidates.append(base)
    candidates.append(base_name)
    for title in candidates:
        url = f"https://en.wikipedia.org/w/api.php?action=query&prop=pageprops&format=json&titles={urllib.parse.quote(title)}"
        data = http_get_json(url, use_urllib=True)
        if not data:
            time.sleep(0.05)
            continue
        pages = data.get("query", {}).get("pages", {})
        for p in pages.values():
            qid = p.get("pageprops", {}).get("wikibase_item")
            if not qid:
                continue
            # Skip disambiguation pages
            description = p.get("description", "").lower()
            if "disambiguation" in description:
                time.sleep(0.05)
                continue
            return qid
        time.sleep(0.05)
    return None


def fetch_wikidata_entity(qid):
    """Fetch entity data from Wikidata for given QID."""
    url = f"https://www.wikidata.org/w/api.php?action=wbgetentities&ids={qid}&format=json&props=claims|labels&languages=en"
    return http_get_json(url)


def fetch_labels_batch(qids):
    """Fetch labels for multiple QIDs."""
    if not qids:
        return {}
    url = f"https://www.wikidata.org/w/api.php?action=wbgetentities&ids={'|'.join(qids)}&format=json&props=labels&languages=en"
    data = http_get_json(url)
    if not data:
        return {}
    return {qid: data.get("entities", {}).get(qid, {}).get("labels", {}).get("en", {}).get("value", qid)
            for qid in qids}


def extract_time(qualifiers):
    """Extract a date from P585 or P580 qualifiers. Return (date_str, year, precision)."""
    for prop in ("P585", "P580", "P574"):
        if prop in qualifiers:
            for q in qualifiers[prop]:
                t = q.get("datavalue", {}).get("value", {})
                time_str = t.get("time", "")
                precision = t.get("precision", 9)
                m = re.match(r"\+(\d{4})-(\d{2})-(\d{2})", time_str)
                if m:
                    year, month, day = m.group(1), m.group(2), m.group(3)
                    if precision >= 11:  # day-level
                        return f"{year}-{month}-{day}", int(year), "DAY"
                    elif precision >= 10:  # month-level
                        return f"{year}-{month}", int(year), "MONTH"
                    else:
                        return None, int(year), "YEAR"
                m2 = re.match(r"\+(\d{4})-00-00", time_str)
                if m2:
                    return None, int(m2.group(1)), "YEAR"
    return None, None, None


def detect_event_type_from_p31(p31_qids, label):
    """Map a P31 (instance of) QID to event_type."""
    # Common event types
    if any(q in p31_qids for q in ("Q178561", "Q12714", "Q4026292")):  # battle, war
        return "political"
    if any(q in p31_qids for q in ("Q132821",)):  # earthquake
        return "political"  # natural disaster mapped to political
    if any(q in p31_qids for q in ("Q5153359", "Q6256")):  # city, country
        return "founding"
    if any(q in p31_qids for q in ("Q1195789", "Q12718", "Q4022")):  # fire, hurricane, flood
        return "political"
    if any(q in p31_qids for q in ("Q844240", "Q4830453", "Q4763001")):  # treaty, agreement
        return "political"
    if any(q in p31_qids for q in ("Q210392", "Q178651")):  # attack, terrorism
        return "political"
    if any(q in p31_qids for q in ("Q3063450",)):  # sports event
        return "public_appearance"
    # Default based on label keywords
    label_lower = label.lower()
    if any(k in label_lower for k in ("battle", "war", "siege", "bombing", "attack")):
        return "political"
    if any(k in label_lower for k in ("earthquake", "hurricane", "tornado", "flood", "fire")):
        return "political"
    if any(k in label_lower for k in ("founding", "established", "incorporated", "chartered")):
        return "founding"
    if any(k in label_lower for k in ("treaty", "agreement", "ceasefire", "convention")):
        return "political"
    return "career"  # default to career


def get_p31_for_qids(qids, label_cache):
    """Fetch P31 (instance of) for a list of QIDs."""
    if not qids:
        return {}
    # We need to call wbgetentities with claims
    url = f"https://www.wikidata.org/w/api.php?action=wbgetentities&ids={'|'.join(qids)}&format=json&props=claims"
    data = http_get_json(url)
    if not data:
        return {}
    result = {}
    for qid, entity in data.get("entities", {}).items():
        p31 = entity.get("claims", {}).get("P31", [])
        result[qid] = [v.get("mainsnak", {}).get("datavalue", {}).get("value", {}).get("id", "")
                       for v in p31 if v.get("mainsnak", {}).get("datavalue", {}).get("type") == "wikibase-entityid"]
    return result


def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0079_place_wikidata_events.sql"
    limit = int(sys.argv[2]) if len(sys.argv) > 2 else 800

    print("[wd-place] loading places without events...", file=sys.stderr)
    # Get places with no events, preferring those with wikidata_qid already
    places = d1_query(f"""
        SELECT e.id, e.slug, e.canonical_name, p.wikidata_qid, p.country_code
        FROM entity e
        JOIN place p ON p.id = e.id
        WHERE e.type='place'
          AND e.id LIKE 'plc_%'
          AND NOT EXISTS (SELECT 1 FROM entity_event WHERE entity_id = e.id)
        ORDER BY e.popularity_score DESC NULLS LAST
        LIMIT {limit}
    """)
    print(f"[wd-place] {len(places)} places to process", file=sys.stderr)

    out_f = open(out_path, "w")
    out_f.write(f"""-- ========================================
-- Migration 0079: Place events from Wikidata
-- Generated: 2026-08-12
-- Strategy: Fetch P571 (inception), P576 (dissolution), P793 (significant event) from Wikidata
-- Per-place events: cap at 20 (Wikidata has fewer, higher-quality events than Wikipedia text)
-- ========================================

""")

    qid_to_place = {}
    place_qid_needs_lookup = []

    # First pass: collect QIDs and look up missing ones
    for p in places:
        eid = p["id"]
        qid = p.get("wikidata_qid")
        if not qid:
            place_qid_needs_lookup.append(p)
        else:
            qid_to_place[qid] = eid

    # Bootstrap missing QIDs
    print(f"[wd-place] looking up QIDs for {len(place_qid_needs_lookup)} places without one...", file=sys.stderr)
    qid_update_sql = []
    new_qid_count = 0
    for i, p in enumerate(place_qid_needs_lookup):
        eid = p["id"]
        slug = p["slug"]
        name = p["canonical_name"]
        qid = get_wikidata_qid_from_wikipedia(slug, name)
        if qid:
            qid_to_place[qid] = eid
            new_qid_count += 1
            # Save the QID to place table for future runs
            qid_escaped = qid.replace("'", "''")
            qid_update_sql.append(f"UPDATE place SET wikidata_qid = '{qid_escaped}' WHERE id = '{eid}';")
        if (i + 1) % 50 == 0:
            print(f"[wd-place] {i+1}/{len(place_qid_needs_lookup)} QIDs looked up, {new_qid_count} found", file=sys.stderr)
        time.sleep(0.1)

    print(f"[wd-place] found QIDs for {new_qid_count}/{len(place_qid_needs_lookup)} missing", file=sys.stderr)

    # Write the QID bootstrap update at the top of the migration (idempotent)
    if qid_update_sql:
        out_f.write("-- Bootstrap: populate place.wikidata_qid where missing\n")
        for s in qid_update_sql:
            out_f.write(s + "\n")
        out_f.write("\n-- Events:\n")

    # Second pass: fetch entity data and extract events
    total_events = 0
    places_with_events = 0
    precision_counts = {"DAY": 0, "MONTH": 0, "YEAR": 0}
    event_type_counts = {}
    label_cache = {}
    p31_cache = {}

    for i, (qid, eid) in enumerate(qid_to_place.items()):
        # Get the canonical name for the place (used in event titles)
        place_name = next((p["canonical_name"] for p in places if p["id"] == eid), eid.replace("plc_", ""))
        data = fetch_wikidata_entity(qid)
        if not data:
            continue
        ent = data.get("entities", {}).get(qid, {})
        claims = ent.get("claims", {})

        # Collect event targets we need to resolve
        p793_targets = []
        for ev in claims.get("P793", []):
            mainsnak = ev.get("mainsnak", {}).get("datavalue", {})
            if mainsnak.get("type") == "wikibase-entityid":
                p793_targets.append(mainsnak.get("value", {}).get("id", ""))

        # Fetch labels for P793 targets
        labels = fetch_labels_batch(p793_targets) if p793_targets else {}
        label_cache.update(labels)

        # Fetch P31 (instance of) for the targets to detect event type
        p31s = get_p31_for_qids(p793_targets, label_cache)
        p31_cache.update(p31s)

        events = []

        # P571 inception
        for v in claims.get("P571", []):
            t = v.get("mainsnak", {}).get("datavalue", {}).get("value", {})
            time_str = t.get("time", "")
            precision = t.get("precision", 9)
            m = re.match(r"\+(\d{4})-(\d{2})-(\d{2})", time_str)
            if not m:
                m2 = re.match(r"\+(\d{4})-00-00", time_str)
                if m2:
                    year = int(m2.group(1))
                    date_str = None
                    prec = "YEAR"
                else:
                    continue
            else:
                year, month, day = int(m.group(1)), m.group(2), m.group(3)
                if precision >= 11:
                    date_str = f"{year:04d}-{month}-{day}"
                    prec = "DAY"
                elif precision >= 10:
                    date_str = f"{year:04d}-{month}"
                    prec = "MONTH"
                else:
                    date_str = None
                    prec = "YEAR"
            events.append({
                "date": date_str,
                "year": year,
                "precision": prec,
                "event_type": "founding",
                "category": "history",
                "title": f"{place_name} founded in {year}",
                "body": f"{place_name} date of incorporation or first settlement: {year} (Wikidata P571)",
            })

        # P576 dissolution
        for v in claims.get("P576", []):
            t = v.get("mainsnak", {}).get("datavalue", {}).get("value", {})
            time_str = t.get("time", "")
            m = re.match(r"\+(\d{4})-(\d{2})-(\d{2})", time_str)
            if not m:
                continue
            year = int(m.group(1))
            events.append({
                "date": f"{year:04d}",
                "year": year,
                "precision": "YEAR",
                "event_type": "political",
                "category": "history",
                "title": f"{place_name} dissolved in {year}",
                "body": f"{place_name} dissolution date: {year} (Wikidata P576)",
            })

        # P793 significant events
        for ev in claims.get("P793", []):
            mainsnak = ev.get("mainsnak", {}).get("datavalue", {})
            if mainsnak.get("type") != "wikibase-entityid":
                continue
            target_id = mainsnak.get("value", {}).get("id", "")
            qualifiers = ev.get("qualifiers", {})
            date_str, year, prec = extract_time(qualifiers)
            if not year:
                continue
            label = label_cache.get(target_id, target_id)
            p31_qids = p31_cache.get(target_id, [])
            et = detect_event_type_from_p31(p31_qids, label)
            events.append({
                "date": date_str,
                "year": year,
                "precision": prec,
                "event_type": et,
                "category": "history",
                "title": f"{label} ({year})",
                "body": f"{label} (Wikidata {target_id}, P793)",
            })

        if not events:
            continue

        places_with_events += 1
        # Cap at 20 events per place
        events = events[:20]

        for j, e in enumerate(events):
            precision_counts[e["precision"]] = precision_counts.get(e["precision"], 0) + 1
            event_type_counts[e["event_type"]] = event_type_counts.get(e["event_type"], 0) + 1

            title_clean = e["title"].replace("'", "''")[:200]
            body_clean = e["body"].replace("'", "''")[:500]
            date_sql = f"'{e['date']}'" if e["date"] else "NULL"
            ev_id = f"ev_wd_{eid.replace('plc_', '')}_{e['year']}_{j}"
            source_url = f"https://www.wikidata.org/wiki/{qid}"

            out_f.write(f"""INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('{ev_id}', '{eid}', {date_sql},
   {e['year']}, '{e['event_type']}', '{e['category']}',
   '{title_clean}', '{body_clean}',
   'src_wikidata', '{source_url}', 0.8, {j*10},
   'en', unixepoch(), unixepoch(), unixepoch(), '{e['precision']}');
""")
            total_events += 1

        if (i + 1) % 25 == 0:
            print(f"[wd-place] {i+1}/{len(qid_to_place)} processed, {total_events} events, {places_with_events} with events", file=sys.stderr)

    out_f.close()
    print(f"\n[wd-place] done: total_events={total_events} places_with_events={places_with_events}", file=sys.stderr)
    print(f"[wd-place] precision: {precision_counts}", file=sys.stderr)
    print(f"[wd-place] event_type: {event_type_counts}", file=sys.stderr)
    print(f"[wd-place] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
