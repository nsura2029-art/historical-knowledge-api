#!/usr/bin/env python3
"""place_wikidata_events_r3.py — Extend place events using QIDs that already exist in place.wikidata_qid.

Strategy:
1. Get all places with wikidata_qid but no events (target ~423 places)
2. Fetch the entity, extract events from:
   - P571 (inception) — if not already captured
   - P576 (dissolution)
   - P793 (significant event) — fetch ALL events, not just one
   - P585 qualifier from P793
   - P580/P582 qualifiers on any property (P1376 capital of, P36 capital, P31 instance of)
3. For each event, use P585 point in time, or the property's time qualifier
4. Insert as new entity_event rows
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
API_DIR = "/workspace/hka-place-events-r3/apps/api"

RATE_LIMIT_HIT = False
RATE_LIMIT_HIT_AT = 0


def http_get_json(url, retries=2):
    global RATE_LIMIT_HIT, RATE_LIMIT_HIT_AT
    for attempt in range(retries + 1):
        if RATE_LIMIT_HIT and time.time() - RATE_LIMIT_HIT_AT < 60:
            wait = 60 - (time.time() - RATE_LIMIT_HIT_AT)
            if wait > 0:
                time.sleep(wait)
        try:
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
        except Exception:
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


def fetch_wikidata_entity(qid):
    return http_get_json(f"https://www.wikidata.org/w/api.php?action=wbgetentities&ids={qid}&format=json&props=claims")


def fetch_labels_batch(qids):
    if not qids:
        return {}
    data = http_get_json(f"https://www.wikidata.org/w/api.php?action=wbgetentities&ids={'|'.join(qids)}&format=json&props=labels&languages=en")
    if not data:
        return {}
    return {qid: data.get("entities", {}).get(qid, {}).get("labels", {}).get("en", {}).get("value", qid) for qid in qids}


def fetch_p31(qids):
    """Fetch P31 (instance of) for multiple QIDs."""
    if not qids:
        return {}
    data = http_get_json(f"https://www.wikidata.org/w/api.php?action=wbgetentities&ids={'|'.join(qids)}&format=json&props=claims")
    if not data:
        return {}
    result = {}
    for qid, entity in data.get("entities", {}).items():
        p31 = entity.get("claims", {}).get("P31", [])
        result[qid] = [v.get("mainsnak", {}).get("datavalue", {}).get("value", {}).get("id", "")
                       for v in p31 if v.get("mainsnak", {}).get("datavalue", {}).get("type") == "wikibase-entityid"]
    return result


def extract_time(qualifiers, value_qualifiers=None):
    """Try to extract a date from P585, P580, P574 qualifiers."""
    for prop in ("P585", "P580", "P574"):
        if prop in qualifiers:
            for q in qualifiers[prop]:
                t = q.get("datavalue", {}).get("value", {})
                time_str = t.get("time", "")
                precision = t.get("precision", 9)
                m = re.match(r"\+(\d{4})-(\d{2})-(\d{2})", time_str)
                if m:
                    year = int(m.group(1))
                    if precision >= 11:
                        return f"{year:04d}-{m.group(2)}-{m.group(3)}", year, "DAY"
                    elif precision >= 10:
                        return f"{year:04d}-{m.group(2)}", year, "MONTH"
                    else:
                        return None, year, "YEAR"
                m2 = re.match(r"\+(\d{4})-00-00", time_str)
                if m2:
                    return None, int(m2.group(1)), "YEAR"
    return None, None, None


def detect_event_type(p31_qids, label):
    if any(q in p31_qids for q in ("Q178561", "Q12714", "Q4026292")):
        return "political"
    if any(q in p31_qids for q in ("Q132821",)):
        return "political"
    if any(q in p31_qids for q in ("Q5153359",)):
        return "founding"
    if any(q in p31_qids for q in ("Q1195789", "Q12718", "Q4022")):
        return "political"
    if any(q in p31_qids for q in ("Q844240", "Q4830453", "Q4763001")):
        return "political"
    if any(q in p31_qids for q in ("Q210392", "Q178651")):
        return "political"
    label_lower = (label or "").lower()
    if any(k in label_lower for k in ("battle", "war", "siege", "bombing", "attack")):
        return "political"
    if any(k in label_lower for k in ("earthquake", "hurricane", "tornado", "flood", "fire")):
        return "political"
    if any(k in label_lower for k in ("founding", "established", "incorporated", "chartered")):
        return "founding"
    if any(k in label_lower for k in ("treaty", "agreement", "ceasefire", "convention")):
        return "political"
    return "career"


def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0083_place_events_r3.sql"
    limit = int(sys.argv[2]) if len(sys.argv) > 2 else 500

    print("[wd-r3] loading places with QID but no events...", file=sys.stderr)
    places = d1_query(f"""
        SELECT p.id AS place_id, p.wikidata_qid, e.canonical_name
        FROM place p
        JOIN entity e ON e.id = p.id
        WHERE p.wikidata_qid IS NOT NULL AND p.wikidata_qid != ''
          AND NOT EXISTS (SELECT 1 FROM entity_event WHERE entity_id = p.id)
        ORDER BY e.popularity_score DESC NULLS LAST
        LIMIT {limit}
    """)
    print(f"[wd-r3] {len(places)} places to process", file=sys.stderr)

    out_f = open(out_path, "w")
    out_f.write(f"""-- ========================================
-- Migration 0083: Place events r3 (extend from existing QIDs)
-- Generated: 2026-08-12
-- Strategy: Use existing place.wikidata_qid (no QID lookups needed)
--            Fetch P571 + P576 + P793 + nested P585 from these places
-- Coverage: target ~423 places without events
-- ========================================

""")

    total_events = 0
    places_with_events = 0
    precision_counts = {"DAY": 0, "MONTH": 0, "YEAR": 0}

    for i, p in enumerate(places):
        eid = p["place_id"]
        qid = p["wikidata_qid"]
        name = p["canonical_name"]

        data = fetch_wikidata_entity(qid)
        if not data:
            continue
        ent = data.get("entities", {}).get(qid, {})
        claims = ent.get("claims", {})
        events = []

        # P571 inception
        for v in claims.get("P571", []):
            t = v.get("mainsnak", {}).get("datavalue", {}).get("value", {})
            time_str = t.get("time", "")
            precision = t.get("precision", 9)
            m = re.match(r"\+(\d{4})-(\d{2})-(\d{2})", time_str)
            if m:
                year = int(m.group(1))
                if precision >= 11:
                    date_str = f"{year:04d}-{m.group(2)}-{m.group(3)}"
                    prec = "DAY"
                elif precision >= 10:
                    date_str = f"{year:04d}-{m.group(2)}"
                    prec = "MONTH"
                else:
                    date_str = None
                    prec = "YEAR"
                events.append({"date": date_str, "year": year, "precision": prec,
                               "event_type": "founding", "title": f"{name} founded in {year}",
                               "body": f"Date of incorporation or first settlement: {year} (Wikidata P571)"})

        # P576 dissolution
        for v in claims.get("P576", []):
            t = v.get("mainsnak", {}).get("datavalue", {}).get("value", {})
            time_str = t.get("time", "")
            m = re.match(r"\+(\d{4})-(\d{2})-(\d{2})", time_str)
            if m:
                year = int(m.group(1))
                events.append({"date": f"{year:04d}", "year": year, "precision": "YEAR",
                               "event_type": "political", "title": f"{name} dissolved in {year}",
                               "body": f"Dissolution date: {year} (Wikidata P576)"})

        # P793 significant event (all of them, not just first)
        p793_targets = []
        for ev in claims.get("P793", []):
            mainsnak = ev.get("mainsnak", {}).get("datavalue", {})
            if mainsnak.get("type") == "wikibase-entityid":
                p793_targets.append(mainsnak.get("value", {}).get("id", ""))

        if p793_targets:
            labels = fetch_labels_batch(p793_targets)
            p31s = fetch_p31(p793_targets)
            for ev in claims.get("P793", []):
                mainsnak = ev.get("mainsnak", {}).get("datavalue", {})
                if mainsnak.get("type") != "wikibase-entityid":
                    continue
                target_id = mainsnak.get("value", {}).get("id", "")
                qualifiers = ev.get("qualifiers", {})
                date_str, year, prec = extract_time(qualifiers)
                if not year:
                    continue
                label = labels.get(target_id, target_id)
                p31_qids = p31s.get(target_id, [])
                et = detect_event_type(p31_qids, label)
                events.append({"date": date_str, "year": year, "precision": prec,
                               "event_type": et, "title": f"{label} ({year}) — {name}",
                               "body": f"{label} in {name} (Wikidata {target_id} P793)"})

        if not events:
            continue

        places_with_events += 1
        # Cap at 15 events per place
        events = events[:15]

        for j, e in enumerate(events):
            precision_counts[e["precision"]] = precision_counts.get(e["precision"], 0) + 1
            title_clean = e["title"].replace("'", "''")[:200]
            body_clean = e["body"].replace("'", "''")[:500]
            date_sql = f"'{e['date']}'" if e["date"] else "NULL"
            ev_id = f"ev_wd3_{eid.replace('plc_', '')}_{e['year']}_{j}"
            source_url = f"https://www.wikidata.org/wiki/{qid}"

            out_f.write(f"""INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('{ev_id}', '{eid}', {date_sql},
   {e['year']}, '{e['event_type']}', 'history',
   '{title_clean}', '{body_clean}',
   'src_wikidata', '{source_url}', 0.8, {j*10},
   'en', unixepoch(), unixepoch(), unixepoch(), '{e['precision']}');
""")
            total_events += 1

        if (i + 1) % 50 == 0:
            print(f"[wd-r3] {i+1}/{len(places)} processed, {total_events} events, {places_with_events} with events", file=sys.stderr)
        time.sleep(0.1)

    out_f.close()
    print(f"\n[wd-r3] done: total_events={total_events} places_with_events={places_with_events}", file=sys.stderr)
    print(f"[wd-r3] precision: {precision_counts}", file=sys.stderr)


if __name__ == "__main__":
    main()
