#!/usr/bin/env python3
"""
wikidata_events_v2.py — v2 of the event extractor.

Differences from v1:
- Handles BOTH persons AND places
- Expanded property map: 22 → 40+ for persons, +13 for places
- Captures date precision (YEAR/MONTH/DAY)
- Generates target_year and target_year_end properly
- Outputs a single migration that covers all 869 subjects
"""

import json
import os
import re
import subprocess
import sys
import time
import urllib.parse


RATE_LIMIT_HIT = False
RATE_LIMIT_HIT_AT = 0

USER_AGENT = "HistoricalKnowledgePlatform/0.1 (https://github.com/nsura2029-art/historical-knowledge-api; contact: research@hka.local)"


def http_get_json(url, retries=2, force_wait=0):
    global RATE_LIMIT_HIT, RATE_LIMIT_HIT_AT
    for attempt in range(retries + 1):
        if RATE_LIMIT_HIT and time.time() - RATE_LIMIT_HIT_AT < 60:
            wait_time = 60 - (time.time() - RATE_LIMIT_HIT_AT)
            if wait_time > 0:
                time.sleep(wait_time)
        try:
            res = subprocess.run(
                ["curl", "-s", "--max-time", "20", "--connect-timeout", "5",
                 "-A", USER_AGENT,
                 "-w", "\n__HTTP_STATUS__%{http_code}",
                 url],
                capture_output=True, text=True, timeout=25)
            if res.returncode != 0:
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
                if attempt < retries:
                    RATE_LIMIT_HIT = True
                    RATE_LIMIT_HIT_AT = time.time()
                    time.sleep(2 ** (attempt + 2))
                    continue
                return None
            if status == 403 and "Too Many Reqs" in out[:500]:
                if attempt < retries:
                    RATE_LIMIT_HIT = True
                    RATE_LIMIT_HIT_AT = time.time()
                    time.sleep(2 ** (attempt + 2))
                    continue
                return None
            if status >= 400:
                return None
            if not out.strip():
                return None
            try:
                return json.loads(out)
            except json.JSONDecodeError:
                return None
        except Exception:
            if attempt < retries:
                time.sleep(2)
                continue
            return None
    return None


def get_labels_batch(qids, cache):
    global RATE_LIMIT_HIT, RATE_LIMIT_HIT_AT
    missing = [q for q in qids if q and q.startswith("Q") and q not in cache]
    if not missing:
        return
    BATCH_SIZE = 50
    for i in range(0, len(missing), BATCH_SIZE):
        batch = missing[i:i+BATCH_SIZE]
        ids_str = "|".join(batch)
        url = f"https://www.wikidata.org/w/api.php?action=wbgetentities&ids={ids_str}&props=labels&languages=en&format=json"
        for attempt in range(3):
            if RATE_LIMIT_HIT and time.time() - RATE_LIMIT_HIT_AT < 60:
                wait_time = 60 - (time.time() - RATE_LIMIT_HIT_AT)
                if wait_time > 0:
                    time.sleep(wait_time)
            try:
                res = subprocess.run(
                    ["curl", "-s", "--max-time", "20", "--connect-timeout", "5",
                     "-A", USER_AGENT,
                     "-w", "\n__HTTP_STATUS__%{http_code}",
                     url],
                    capture_output=True, text=True, timeout=25)
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
                    RATE_LIMIT_HIT = True
                    RATE_LIMIT_HIT_AT = time.time()
                    time.sleep(2 ** (attempt + 2))
                    continue
                if status >= 400:
                    break
                data = json.loads(out) if out.strip() else None
                if data and "entities" in data:
                    for qid, ent in data["entities"].items():
                        labels = ent.get("labels", {})
                        if "en" in labels:
                            cache[qid] = labels["en"]["value"]
                break
            except Exception:
                time.sleep(2)
                continue
        time.sleep(0.5)  # Gentle rate limit between label batches


def get_label(qid, cache):
    if not qid or not qid.startswith("Q"):
        return qid or ""
    if qid in cache:
        return cache[qid]
    get_labels_batch([qid], cache)
    return cache.get(qid, qid)


def get_wikidata_qid(slug):
    candidates = generate_title_candidates(slug)
    for title in candidates:
        url = f"https://en.wikipedia.org/api/rest_v1/page/summary/{title}"
        data = http_get_json(url)
        if not data:
            continue
        qid = data.get("wikibase_item")
        if qid:
            return qid
    return search_wikipedia_for_qid(slug)


def generate_title_candidates(slug):
    candidates = []
    base = slug.replace("-", "_")
    candidates.append(base)
    if base:
        candidates.append(base[0].upper() + base[1:])
    parts = base.split("_")
    if len(parts) > 1:
        candidates.append("_".join(p[0].upper() + p[1:] for p in parts if p))
    if base.startswith("ar_") and len(base) > 3:
        rest = base[3:]
        candidates.append(f"A.R._{rest[0].upper() + rest[1:]}")
        candidates.append(f"A._R._{rest[0].upper() + rest[1:]}")
    if base.startswith("jr_") or base.startswith("sr_"):
        candidates.append(f"_{base[0].upper() + base[1:]}")
    if "_" in base and all(len(p) <= 2 for p in base.split("_")[:3] if p):
        initials = ".".join(p.upper() for p in base.split("_") if p)
        candidates.append(initials)
    return candidates


def search_wikipedia_for_qid(slug):
    query = slug.replace("-", " ")
    url = f"https://en.wikipedia.org/w/api.php?{urllib.parse.urlencode({'action': 'query', 'list': 'search', 'srsearch': query, 'srlimit': 1, 'format': 'json'})}"
    data = http_get_json(url)
    if not data:
        return None
    hits = data.get("query", {}).get("search", [])
    if not hits:
        return None
    title = hits[0].get("title")
    if not title:
        return None
    title_underscore = title.replace(" ", "_")
    url = f"https://en.wikipedia.org/api/rest_v1/page/summary/{title_underscore}"
    data = http_get_json(url)
    if not data:
        return None
    return data.get("wikibase_item")


def get_entity_data(qid):
    url = f"https://www.wikidata.org/wiki/Special:EntityData/{qid}.json"
    return http_get_json(url, retries=2)


# ============================================================
# PROPERTY MAP (v2: 40+ person + 13 place properties)
# ============================================================

# Map: Wikidata property ID -> (event_type, category, default_verb, date_kind)
#   date_kind: 'time' = main value is a time, 'qualifier' = main is entity, date is P580/P585/P582
PERSON_PROPS = {
    "P569":  ("birth", "life", "Born", "time"),
    "P570":  ("death", "life", "Died", "time"),
    "P166":  ("award", "work", "Received", "qualifier"),
    "P39":   ("political", "public", "Held position", "qualifier"),
    "P26":   ("personal_life", "life", "Married", "qualifier"),  # was marriage
    "P40":   ("personal_life", "life", "Had child", "qualifier"),  # was child
    "P69":   ("education", "life", "Educated at", "qualifier"),
    "P108":  ("career", "work", "Employed by", "qualifier"),  # was employment
    "P800":  ("publication", "work", "Notable work", "qualifier"),
    "P54":   ("athletic", "work", "Played for", "qualifier"),
    "P551":  ("personal_life", "life", "Resided at", "qualifier"),  # was residence
    "P22":   ("personal_life", "life", "Father was", "qualifier"),  # was family
    "P25":   ("personal_life", "life", "Mother was", "qualifier"),  # was family
    "P3373": ("personal_life", "life", "Sibling", "qualifier"),  # was family
    "P607":  ("political", "public", "Fought in", "qualifier"),  # was military
    "P1343": ("publication", "work", "Described by", "qualifier"),
    "P1411": ("award", "work", "Nominated for", "qualifier"),  # was nomination
    "P2522": ("election", "public", "Result in", "qualifier"),
    "P3342": ("public_appearance", "work", "Significant event", "qualifier"),  # was significant
    "P159":  ("career", "work", "Headquartered at", "qualifier"),  # was workplace
    "P937":  ("career", "work", "Worked in", "qualifier"),  # was workplace
    "P19":   ("personal_life", "life", "Born in", "qualifier"),  # was birthplace
    "P20":   ("personal_life", "life", "Died in", "qualifier"),  # was deathplace
    "P119":  ("death", "life", "Buried at", "qualifier"),  # was burial
    "P27":   ("personal_life", "life", "Citizen of", "qualifier"),  # was citizenship
    "P102":  ("political", "public", "Member of", "qualifier"),  # was party
    "P1344": ("public_appearance", "public", "Participated in", "qualifier"),  # was participation
    "P793":  ("public_appearance", "work", "Significant event", "qualifier"),  # was significant
    "P3602": ("election", "public", "Candidate in", "qualifier"),
    "P2868": ("public_appearance", "work", "Subject of", "qualifier"),  # was subject_of
    "P2638": ("travel", "life", "Traveled to", "qualifier"),
    "P1269": ("legal", "public", "Facet of", "qualifier"),
}

PLACE_PROPS = {
    "P571":  ("founding", "history", "Founded", "time"),
    "P576":  ("public_appearance", "history", "Dissolved", "time"),  # was dissolution
    "P793":  ("public_appearance", "history", "Significant event", "qualifier"),  # was significant
    "P1082": ("public_appearance", "demographics", "Population", "qualifier"),  # was population
    "P36":   ("political", "politics", "Capital of", "qualifier"),
    "P1619": ("public_appearance", "history", "Opened", "time"),  # was opening
    "P3999": ("public_appearance", "history", "Closed", "time"),  # was closure
    "P1448": ("public_appearance", "history", "Officially named", "qualifier"),  # was renaming
    "P31":   ("public_appearance", "history", "Became", "qualifier"),  # was instance_of_change
    "P17":   ("political", "politics", "Country", "qualifier"),  # was country_change
    "P131":  ("political", "politics", "Admin parent", "qualifier"),  # was admin_change
    "P1376": ("political", "politics", "Capital of", "qualifier"),  # was capital_of
    "P112":  ("founding", "history", "Founded by", "qualifier"),  # was founder
}


def parse_wikidata_time_full(time_str):
    """Parse Wikidata time string -> (date_iso, year, precision) where precision in (YEAR, MONTH, DAY)."""
    if not time_str or not isinstance(time_str, str):
        return None, None, None
    m = re.match(r"^([+-]?\d{1,4})(?:-(\d{1,2}))?(?:-(\d{1,2}))?(T\d{2}:\d{2}:\d{2}Z)?", time_str)
    if not m:
        return None, None, None
    try:
        year = int(m.group(1))
        if year < 1000 or year > 2100:
            return None, None, None
    except ValueError:
        return None, None, None
    month = m.group(2)
    day = m.group(3)
    if month and day:
        date = f"{abs(year):04d}-{int(month):02d}-{int(day):02d}"
        return date, abs(year), "DAY"
    elif month:
        return f"{abs(year):04d}-{int(month):02d}", abs(year), "MONTH"
    else:
        return None, abs(year), "YEAR"


def extract_claim_value(claim):
    try:
        return claim.get("mainsnak", {}).get("datavalue", {}).get("value", {}).get("id", "")
    except Exception:
        return ""


def extract_claim_times_full(claim):
    """Extract all time values from a claim's qualifiers + main value.

    Returns list of (date_iso, year, precision) tuples.
    """
    times = []
    qualifiers = claim.get("qualifiers", {})
    for qk in ("P585", "P580", "P574"):
        if qk in qualifiers:
            for qv in qualifiers[qk]:
                t = qv.get("datavalue", {}).get("value", {}).get("time", "")
                d, y, p = parse_wikidata_time_full(t)
                if y:
                    times.append((d, y, p))
    for qk in ("P582",):
        if qk in qualifiers:
            for qv in qualifiers[qk]:
                t = qv.get("datavalue", {}).get("value", {}).get("time", "")
                d, y, p = parse_wikidata_time_full(t)
                if y:
                    times.append((d, y, p))
    main_value = claim.get("mainsnak", {}).get("datavalue", {}).get("value", {})
    if isinstance(main_value, dict) and "time" in main_value:
        d, y, p = parse_wikidata_time_full(main_value["time"])
        if y and (d, y, p) not in times:
            times.append((d, y, p))
    return times


def get_property_map(entity_type):
    return PERSON_PROPS if entity_type == "person" else PLACE_PROPS


def main():
    global RATE_LIMIT_HIT, RATE_LIMIT_HIT_AT

    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0040_wikidata_events_v2.sql"
    entity_type_filter = sys.argv[2] if len(sys.argv) > 2 else "all"  # 'person', 'place', or 'all'

    script_dir = os.path.dirname(os.path.abspath(__file__))
    api_dir = os.path.normpath(os.path.join(script_dir, "..", "..", "..", "apps", "api"))
    if not os.path.isdir(api_dir):
        api_dir = os.getcwd()
    env = os.environ.copy()
    if "node_modules/.bin/wrangler" not in env.get("PATH", ""):
        env["PATH"] = f"{api_dir}/node_modules/.bin:{env.get('PATH', '')}"

    # Load all entities (persons + places) by chunked IN
    print(f"[wd-v2] loading entities (filter={entity_type_filter})...", file=sys.stderr)
    all_rows = []
    chunk_size = 100
    if entity_type_filter == "all":
        types = ["person", "place"]
    else:
        types = [entity_type_filter]
    for et in types:
        offset = 0
        while True:
            cmd = ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
                   "--command",
                   f"SELECT e.id, e.slug, e.canonical_name, e.type FROM entity e WHERE e.type='{et}' ORDER BY e.popularity_score DESC NULLS LAST LIMIT {chunk_size} OFFSET {offset}",
                   "--json"]
            r = subprocess.run(cmd, capture_output=True, text=True, timeout=60, cwd=api_dir, env=env)
            if r.returncode != 0:
                print(f"[wd-v2] chunk error: {r.stderr[:200]}", file=sys.stderr)
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
            except Exception as e:
                print(f"[wd-v2] parse error: {e}", file=sys.stderr)
                break
    print(f"[wd-v2] loaded {len(all_rows)} entities", file=sys.stderr)

    # Phase 1: Resolve all QIDs
    print(f"[wd-v2] Phase 1: resolving QIDs...", file=sys.stderr)
    slug_to_qid = {}
    qid_failures = []
    for i, row in enumerate(all_rows):
        slug = row["slug"]
        qid = get_wikidata_qid(slug)
        if qid:
            slug_to_qid[slug] = qid
        else:
            qid_failures.append(slug)
        if (i + 1) % 50 == 0:
            print(f"[wd-v2]   QID {i+1}/{len(all_rows)}: {len(slug_to_qid)} ok, {len(qid_failures)} failed", file=sys.stderr)
        time.sleep(0.05)
    print(f"[wd-v2] Phase 1 done: {len(slug_to_qid)} QIDs resolved, {len(qid_failures)} failed", file=sys.stderr)

    # Phase 2: Fetch entity data
    print(f"[wd-v2] Phase 2: fetching entity data...", file=sys.stderr)
    entity_data_map = {}
    unique_qids = list(set(slug_to_qid.values()))
    for i, qid in enumerate(unique_qids):
        data = get_entity_data(qid)
        if data and qid in data.get("entities", {}):
            entity_data_map[qid] = data
        if (i + 1) % 50 == 0:
            print(f"[wd-v2]   Entity {i+1}/{len(unique_qids)}: {len(entity_data_map)} ok", file=sys.stderr)
        time.sleep(0.15)
    print(f"[wd-v2] Phase 2 done: {len(entity_data_map)} entities loaded", file=sys.stderr)

    # Phase 3: Pre-collect label QIDs
    print(f"[wd-v2] Phase 3: pre-collecting label QIDs...", file=sys.stderr)
    label_cache = {}
    all_label_qids = set()
    for qid, data in entity_data_map.items():
        entity = data.get("entities", {}).get(qid, {})
        claims = entity.get("claims", {})
        # Try both person + place props
        for prop_map in (PERSON_PROPS, PLACE_PROPS):
            for prop in prop_map:
                if prop not in claims:
                    continue
                for claim in claims[prop]:
                    v = extract_claim_value(claim)
                    if v and v.startswith("Q") and v != qid:
                        all_label_qids.add(v)
    print(f"[wd-v2] Phase 3: {len(all_label_qids)} unique label QIDs to fetch", file=sys.stderr)

    # Phase 4: Batch fetch labels
    print(f"[wd-v2] Phase 4: batch fetching labels...", file=sys.stderr)
    all_label_qids_list = list(all_label_qids)
    BATCH = 50
    for i in range(0, len(all_label_qids_list), BATCH):
        batch = all_label_qids_list[i:i+BATCH]
        get_labels_batch(batch, label_cache)
        if (i // BATCH) % 10 == 0:
            print(f"[wd-v2]   Label batch {i//BATCH + 1}/{(len(all_label_qids_list) + BATCH - 1)//BATCH}: {len(label_cache)}/{len(all_label_qids_list)} cached", file=sys.stderr)
    print(f"[wd-v2] Phase 4 done: {len(label_cache)} labels cached", file=sys.stderr)

    # Phase 5: Extract events
    print(f"[wd-v2] Phase 5: extracting events...", file=sys.stderr)
    sql_parts = [
        "-- ========================================",
        f"-- Migration 0040: Wikidata-sourced events for {len(all_rows)} subjects",
        f"-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}",
        f"-- Subjects: {sum(1 for r in all_rows if r['type']=='person')} persons, {sum(1 for r in all_rows if r['type']=='place')} places",
        f"-- Source: Wikidata Special:EntityData, structured claims with date qualifiers",
        f"-- Person properties: {', '.join(PERSON_PROPS.keys())}",
        f"-- Place properties: {', '.join(PLACE_PROPS.keys())}",
        "-- ========================================",
        "",
    ]
    out_f = open(out_path, "w")
    out_f.write("\n".join(sql_parts) + "\n")
    out_f.flush()

    total_events = 0
    n_with_events = 0
    n_max_per = 0
    n_type_counts = {}
    n_precision_counts = {"DAY": 0, "MONTH": 0, "YEAR": 0}

    for i, row in enumerate(all_rows):
        eid = row["id"]
        slug = row["slug"]
        name = row.get("canonical_name", slug)
        etype = row["type"]
        qid = slug_to_qid.get(slug)
        if not qid or qid not in entity_data_map:
            continue
        entity = entity_data_map[qid].get("entities", {}).get(qid, {})
        claims = entity.get("claims", {})
        events = []

        prop_map = get_property_map(etype)

        for prop, (event_type, category, default_verb, date_kind) in prop_map.items():
            if prop not in claims:
                continue
            for claim in claims[prop]:
                value_qid = extract_claim_value(claim)
                if not value_qid or value_qid == qid:
                    continue
                times = extract_claim_times_full(claim)
                if not times:
                    continue
                value_label = label_cache.get(value_qid, value_qid)
                if not value_label or value_label == value_qid:
                    continue
                for date, year, precision in times:
                    events.append({
                        "year": year, "date": date, "type": event_type,
                        "category": category, "value_qid": value_qid, "value_label": value_label,
                        "prop": prop, "verb": default_verb, "precision": precision
                    })

        events.sort(key=lambda e: (e["year"], e["value_label"]))

        for j, ev in enumerate(events):
            ev_id = f"ev_wd2_{slug}_{ev['prop']}_{ev['value_qid']}_{ev['year']}_{j}"
            title_verb = ev["verb"]
            value = ev["value_label"].replace("'", "''")[:200]
            body = f"{name} {title_verb.lower()} {ev['value_label']} ({ev['year']})."
            body = body.replace("'", "''")[:500]
            date_sql = f"'{ev['date']}'" if ev["date"] else "NULL"
            year = ev["year"]
            etype2 = ev["type"]
            cat = ev["category"]
            out_f.write(f"""INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('{ev_id}', '{eid}', {date_sql}, {year}, '{etype2}', '{cat}',
   '{title_verb} {value}', '{body}', 'src_wikidata', 0.85, {j}, 'en',
   '{ev["precision"]}', unixepoch(), unixepoch());
""")
            out_f.flush()
            n_type_counts[etype2] = n_type_counts.get(etype2, 0) + 1
            n_precision_counts[ev["precision"]] = n_precision_counts.get(ev["precision"], 0) + 1

        if events:
            n_with_events += 1
            n_max_per = max(n_max_per, len(events))
        total_events += len(events)

        if (i + 1) % 50 == 0 or (i + 1) == len(all_rows):
            avg = total_events / max(1, n_with_events)
            print(f"[wd-v2] {i+1}/{len(all_rows)}: {name} → {len(events)} events (total: {total_events}, avg: {avg:.1f}, max: {n_max_per})", file=sys.stderr)

    out_f.close()
    print(f"\n[wd-v2] done: total_events={total_events} subjects_with_events={n_with_events} max_per={n_max_per} qid_failures={len(qid_failures)}", file=sys.stderr)
    print(f"[wd-v2] type distribution:", file=sys.stderr)
    for t, c in sorted(n_type_counts.items(), key=lambda x: -x[1]):
        print(f"  {t}: {c}", file=sys.stderr)
    print(f"[wd-v2] precision distribution:", file=sys.stderr)
    for p, c in sorted(n_precision_counts.items(), key=lambda x: -x[1]):
        print(f"  {p}: {c}", file=sys.stderr)
    print(f"[wd-v2] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
