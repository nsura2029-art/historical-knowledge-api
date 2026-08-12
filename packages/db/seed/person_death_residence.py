#!/usr/bin/env python3
"""person_death_residence.py — Extract death place, residence, and work location for persons from Wikidata.

Strategy:
1. For each person, look up wikidata_qid via Wikipedia API
2. Fetch P570 (date of death), P20 (place of death), P551 (residence), P937 (work location)
3. Map Wikidata place QIDs to our entity IDs (via wikidata_qid)
4. Insert person_place_relation rows
5. Update person.age_at_death and person.death_event_id

This is the main missing relations for the persons vertical: 1054 persons
with only 6 death_place and 1 residence relations prior to this run.
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
API_DIR = "/workspace/hka-person-relations/apps/api"

RATE_LIMIT_HIT = False
RATE_LIMIT_HIT_AT = 0


def http_get_json(url, retries=2, use_urllib=False):
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


def get_wikidata_qid_from_wikipedia(slug, canonical_name):
    """Look up Wikidata QID via Wikipedia pageprops."""
    candidates = [slug.replace("-", "_"), canonical_name.replace(" ", "_")]
    for prefix in ["", "Sir_", "President_", "Dr_"]:
        candidates.append(f"{prefix}{canonical_name.replace(' ', '_')}")
    for title in candidates:
        url = f"https://en.wikipedia.org/w/api.php?action=query&prop=pageprops&format=json&titles={urllib.parse.quote(title)}"
        data = http_get_json(url, use_urllib=True)
        if not data:
            time.sleep(0.03)
            continue
        pages = data.get("query", {}).get("pages", {})
        for p in pages.values():
            qid = p.get("pageprops", {}).get("wikibase_item")
            if not qid:
                continue
            description = p.get("description", "").lower()
            if "disambiguation" in description:
                time.sleep(0.03)
                continue
            return qid
        time.sleep(0.03)
    return None


def fetch_wikidata_entity(qid):
    url = f"https://www.wikidata.org/w/api.php?action=wbgetentities&ids={qid}&format=json&props=claims"
    return http_get_json(url)


def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0082_person_death_residence.sql"
    limit = int(sys.argv[2]) if len(sys.argv) > 2 else 1100

    print("[wd-person] loading persons without death/residence relations...", file=sys.stderr)
    persons = d1_query(f"""
        SELECT e.id, e.slug, e.canonical_name
        FROM entity e
        WHERE e.type = 'person'
          AND NOT EXISTS (SELECT 1 FROM person_place_relation ppr
                          WHERE ppr.person_id = e.id AND ppr.relation_type = 'death_place')
        ORDER BY e.popularity_score DESC NULLS LAST
        LIMIT {limit}
    """)
    print(f"[wd-person] {len(persons)} persons to process", file=sys.stderr)

    out_f = open(out_path, "w")
    out_f.write(f"""-- ========================================
-- Migration 0082: Person death + residence + work location from Wikidata
-- Generated: 2026-08-12
-- Strategy: Fetch P570 (date of death), P20 (place of death), P551 (residence), P937 (work location)
-- Coverage goal: bring death_place from 6 → ~700+ persons
-- ========================================

""")

    # Build a map: Wikidata place QID → our place entity ID
    print("[wd-person] loading place wikidata_qid map...", file=sys.stderr)
    place_rows = d1_query("SELECT id, wikidata_qid FROM place WHERE wikidata_qid IS NOT NULL AND wikidata_qid != ''")
    qid_to_place = {p["wikidata_qid"]: p["id"] for p in place_rows if p.get("wikidata_qid")}
    print(f"[wd-person] {len(qid_to_place)} places with QID in our DB", file=sys.stderr)

    # Process each person
    relations_added = 0
    persons_with_death = 0
    persons_with_death_place = 0
    persons_with_residence = 0
    persons_with_work = 0
    not_found = 0
    age_updates = 0
    death_events_added = 0

    for i, p in enumerate(persons):
        eid = p["id"]
        slug = p["slug"]
        name = p["canonical_name"]

        # Look up QID
        qid = get_wikidata_qid_from_wikipedia(slug, name)
        if not qid:
            not_found += 1
            continue

        # Fetch entity
        data = fetch_wikidata_entity(qid)
        if not data:
            not_found += 1
            continue
        ent = data.get("entities", {}).get(qid, {})
        claims = ent.get("claims", {})

        # P570 (date of death) → age_at_death update + death event
        if "P570" in claims:
            for v in claims["P570"]:
                t = v.get("mainsnak", {}).get("datavalue", {}).get("value", {})
                time_str = t.get("time", "")
                m = re.match(r"\+(\d{4})-(\d{2})-(\d{2})", time_str)
                if m:
                    year, month, day = int(m.group(1)), int(m.group(2)), int(m.group(3))
                    persons_with_death += 1
                    # Look up birth year to compute age_at_death
                    birth_year_row = d1_query(f"SELECT MIN(event_year) AS by FROM entity_event WHERE entity_id = '{eid}' AND event_type = 'personal_life' AND event_year < {year} AND event_year > 1500 LIMIT 1")
                    age_at_death = None
                    if birth_year_row and birth_year_row[0].get("by"):
                        age_at_death = year - int(birth_year_row[0]["by"])
                    eid_e = eid.replace("'", "''")
                    name_e = name.replace("'", "''")
                    date_str = f"{year:04d}-{month:02d}-{day:02d}"
                    # Add a death event
                    ev_id = f"ev_death_{eid}_{year}"
                    out_f.write(f"""INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('{ev_id}', '{eid_e}', '{date_str}', {year}, 'death', 'biography',
   '{name_e} died on {date_str}', '{name_e} died on {date_str} (Wikidata P570)',
   'src_wikidata', 'https://www.wikidata.org/wiki/{qid}', 0.9, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
""")
                    death_events_added += 1
                    # Update person table: age_at_death, living_status, cause_of_death (none)
                    if age_at_death:
                        out_f.write(f"UPDATE person SET age_at_death = {age_at_death}, living_status = 'deceased' WHERE id = '{eid_e}';\n")
                        age_updates += 1
                    else:
                        out_f.write(f"UPDATE person SET living_status = 'deceased' WHERE id = '{eid_e}';\n")
                    break

        # P20 (place of death) → death_place relation
        if "P20" in claims:
            for v in claims["P20"]:
                mainsnak = v.get("mainsnak", {}).get("datavalue", {})
                if mainsnak.get("type") != "wikibase-entityid":
                    continue
                place_qid = mainsnak.get("value", {}).get("id", "")
                place_eid = qid_to_place.get(place_qid)
                if not place_eid:
                    continue
                rel_id = f"ppr_death_{eid}_{place_eid}"
                eid_e = eid.replace("'", "''")
                peid_e = place_eid.replace("'", "''")
                out_f.write(f"""INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('{rel_id}', '{eid_e}', '{peid_e}', 'death_place', unixepoch());
""")
                relations_added += 1
                persons_with_death_place += 1
                break

        # P551 (residence) → residence relation (one per person, take first)
        if "P551" in claims:
            for v in claims["P551"]:
                mainsnak = v.get("mainsnak", {}).get("datavalue", {})
                if mainsnak.get("type") != "wikibase-entityid":
                    continue
                place_qid = mainsnak.get("value", {}).get("id", "")
                place_eid = qid_to_place.get(place_qid)
                if not place_eid:
                    continue
                rel_id = f"ppr_res_{eid}_{place_eid}"
                eid_e = eid.replace("'", "''")
                peid_e = place_eid.replace("'", "''")
                out_f.write(f"""INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('{rel_id}', '{eid_e}', '{peid_e}', 'residence', unixepoch());
""")
                relations_added += 1
                persons_with_residence += 1
                break

        # P937 (work location) → work_location relation
        if "P937" in claims:
            for v in claims["P937"]:
                mainsnak = v.get("mainsnak", {}).get("datavalue", {})
                if mainsnak.get("type") != "wikibase-entityid":
                    continue
                place_qid = mainsnak.get("value", {}).get("id", "")
                place_eid = qid_to_place.get(place_qid)
                if not place_eid:
                    continue
                rel_id = f"ppr_work_{eid}_{place_eid}"
                eid_e = eid.replace("'", "''")
                peid_e = place_eid.replace("'", "''")
                out_f.write(f"""INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type, created_at)
VALUES ('{rel_id}', '{eid_e}', '{peid_e}', 'work_location', unixepoch());
""")
                relations_added += 1
                persons_with_work += 1
                break

        if (i + 1) % 50 == 0:
            print(f"[wd-person] {i+1}/{len(persons)} processed, "
                  f"death={persons_with_death} death_place={persons_with_death_place} "
                  f"res={persons_with_residence} work={persons_with_work} not_found={not_found} age_upd={age_updates}",
                  file=sys.stderr)
        time.sleep(0.1)

    out_f.close()
    print(f"\n[wd-person] done: relations={relations_added} "
          f"death={persons_with_death} death_place={persons_with_death_place} "
          f"res={persons_with_residence} work={persons_with_work} not_found={not_found} age_upd={age_updates} death_events={death_events_added}", file=sys.stderr)
    print(f"[wd-person] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
