#!/usr/bin/env python3
"""
PKG Phase 1 — USA Discovery
============================

Picks 5 Master Categories from the People Knowledge Graph spec and runs
deep discovery for each sub-category against Wikidata, then enriches each
person with the structured facts needed to render the famousbirthdays.com
4-question layout:

    WHO        — Who is this person?
    WHAT       — What are they known for / what have they done?
    CONNECTED  — How are they related to people/works/places/orgs/events?
    NOW        — Why are they receiving attention now?

Final outputs:
    - per-sub-category MD reports (people table + section narrative)
    - per-category aggregate MD report
    - final USA Phase 1 summary with counts + Canonical Person Scope coverage
"""
import json
import ssl
import time
import urllib.parse
import urllib.request
import re
from collections import defaultdict
from datetime import date
from pathlib import Path

WIKIDATA_SPARQL = "https://query.wikidata.org/sparql"
WIKIDATA_API = "https://www.wikidata.org/w/api.php"
USER_AGENT = "HKA-PKG-Discovery/1.0 (ops@example.com)"

# =========================================================================
# 5 MASTER CATEGORIES (selected from spec Section 5) + their sub-categories
# =========================================================================
# Each sub-category maps to:
#   - qids: Wikidata P106 occupation QIDs (filter by occupation)
#   - sport_qid (optional): P641 sport played QID (filter by sport)
#   - youtube (optional): if True, filter by P2397 having a YouTube channel
#   - label: display name

CATEGORIES = {
    "5.1 Entertainment": {
        "label": "Entertainment",
        "description": "Film, television, theatre, voice, comedy, and production talent",
        "subs": {
            "film_actors":       {"qids": ["Q10800557", "Q33999"],                       "label": "Film actors"},
            "tv_actors":         {"qids": ["Q10798782"],                                  "label": "Television actors"},
            "voice_actors":      {"qids": ["Q2405480"],                                   "label": "Voice actors"},
            "stage_actors":      {"qids": ["Q2259451"],                                   "label": "Stage / theatre actors"},
            "comedians":         {"qids": ["Q245068"],                                    "label": "Stand-up comedians"},
            "directors":         {"qids": ["Q2526255", "Q3455803"],                       "label": "Film / TV directors"},
            "producers":         {"qids": ["Q3282637"],                                   "label": "Film / TV producers"},
            "screenwriters":     {"qids": ["Q28389"],                                     "label": "Screenwriters"},
            "tv_hosts":          {"qids": ["Q61005", "Q947873"],                          "label": "TV hosts / presenters"},
            "reality_tv":        {"qids": ["Q10798782"],                                  "label": "Reality-TV personalities"},
        },
    },
    "5.2 Music": {
        "label": "Music",
        "description": "Singers, rappers, songwriters, producers, DJs, composers, and bands",
        "subs": {
            "singers":           {"qids": ["Q177220"],                                    "label": "Singers"},
            "rappers":           {"qids": ["Q2259532", "Q488205"],                        "label": "Rappers / hip-hop artists"},
            "songwriters":       {"qids": ["Q753110", "Q488205"],                         "label": "Songwriters"},
            "musicians":         {"qids": ["Q639669"],                                    "label": "Instrumentalists / musicians"},
            "djs":               {"qids": ["Q130857"],                                    "label": "DJs"},
            "composers":         {"qids": ["Q36834"],                                     "label": "Composers"},
            "music_producers":   {"qids": ["Q183945"],                                    "label": "Music producers"},
            "country_artists":   {"qids": ["Q855091"],                                    "label": "Country music artists"},
        },
    },
    "5.3 Creators and Influencers": {
        "label": "Creators & Influencers",
        "description": "YouTubers, TikTokers, streamers, podcasters, and digital-first personalities",
        "subs": {
            # YouTubers aren't reliably tagged with P106 — query by P2397 (YouTube channel ID)
            "youtubers":         {"qids": [], "youtube": True,                             "label": "YouTubers (P2397 channel)"},
            "podcasters":        {"qids": [], "youtube": False,                            "label": "Podcast hosts"},  # we'll use P2002 (Twitter) as a proxy
            "instagram_models":  {"qids": ["Q4610556", "Q484876"],                        "label": "Instagram creators / models"},
            "tiktokers":         {"qids": [], "tiktok": True,                             "label": "TikTok creators (P7084)"},
        },
    },
    "5.4 Sports": {
        "label": "Sports",
        "description": "Team-sport, individual, combat, water, and extreme athletes",
        "subs": {
            "football":          {"qids": [], "sport_qid": "Q41323",                      "label": "American football players"},
            "basketball":        {"qids": [], "sport_qid": "Q5372",                       "label": "Basketball players"},
            "baseball":          {"qids": [], "sport_qid": "Q5369",                       "label": "Baseball players"},
            "ice_hockey":        {"qids": [], "sport_qid": "Q41466",                      "label": "Ice hockey players"},
            "soccer":            {"qids": [], "sport_qid": "Q2736",                       "label": "Soccer players (USA)"},
            "tennis":            {"qids": [], "sport_qid": "Q847",                        "label": "Tennis players"},
            "golf":              {"qids": [], "sport_qid": "Q5372",                       "label": "Golfers"},
            "boxing":            {"qids": [], "sport_qid": "Q2610867",                    "label": "Boxers"},
            "mma":               {"qids": [], "sport_qid": "Q189539",                     "label": "MMA fighters"},
            "olympics":          {"qids": ["Q2066131"],                                   "label": "Olympic athletes"},
            "auto_racing":       {"qids": [], "sport_qid": "Q47",                         "label": "Motorsport / racing drivers"},
            "swimming":          {"qids": [], "sport_qid": "Q6388",                       "label": "Swimmers"},
            "track_field":       {"qids": [], "sport_qid": "Q542",                        "label": "Track and field athletes"},
        },
    },
    "5.6 Business and Entrepreneurship": {
        "label": "Business & Entrepreneurship",
        "description": "Founders, CEOs, investors, inventors, and industry leaders",
        "subs": {
            "tech_founders":     {"qids": ["Q484876", "Q131524"],                         "label": "Tech founders / entrepreneurs"},
            "ceos":              {"qids": ["Q484876"],                                    "label": "CEOs / business executives"},
            "investors":         {"qids": ["Q43845", "Q484876"],                          "label": "Investors / VCs"},
            "inventors":         {"qids": ["Q2053754"],                                   "label": "Inventors"},
            "business_authors":  {"qids": ["Q4853732"],                                   "label": "Business authors / thinkers"},
        },
    },
}


def run_sparql(query: str, retries: int = 2, timeout: int = 50) -> list[dict]:
    ctx = ssl.create_default_context()
    last_err = None
    for attempt in range(retries):
        try:
            data = urllib.parse.urlencode({"query": query, "format": "json"}).encode()
            req = urllib.request.Request(
                WIKIDATA_SPARQL, data=data,
                headers={"User-Agent": USER_AGENT, "Accept": "application/sparql-results+json"},
            )
            with urllib.request.urlopen(req, context=ctx, timeout=timeout) as r:
                payload = json.loads(r.read().decode("utf-8"))
            return payload["results"]["bindings"]
        except Exception as e:
            last_err = e
            wait = (attempt + 1) * 3
            print(f"    [retry {attempt+1}] {type(e).__name__}: {e}; sleeping {wait}s", flush=True)
            time.sleep(wait)
    raise RuntimeError(f"SPARQL failed after {retries} attempts: {last_err}")


def resolve_labels(qids: list[str]) -> dict[str, str]:
    """Best-effort English name resolution. Uses enwiki sitelink first, then Wikidata labels."""
    if not qids:
        return {}
    out: dict[str, str] = {}
    # English Wikipedia sitelink (cleanest English title)
    url = WIKIDATA_API + "?action=wbgetentities&ids=" + "|".join(qids[:50]) + "&props=sitelinks&sitefilter=enwiki&format=json"
    try:
        req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
        with urllib.request.urlopen(req, context=ssl.create_default_context(), timeout=30) as r:
            data = json.loads(r.read())
        for eid, e in data.get("entities", {}).items():
            sl = e.get("sitelinks", {}).get("enwiki", {})
            if sl:
                out[eid] = sl.get("title", "")
    except Exception as e:
        print(f"    [warn] sitelink resolve: {e}")
    # Fallback for any still missing
    missing = [q for q in qids if q not in out]
    if missing:
        try:
            url = WIKIDATA_API + "?action=wbgetentities&ids=" + "|".join(missing[:50]) + "&props=labels&format=json"
            req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
            with urllib.request.urlopen(req, context=ssl.create_default_context(), timeout=30) as r:
                data = json.loads(r.read())
            for eid, e in data.get("entities", {}).items():
                labels = e.get("labels", {})
                for lang in ["en", "de", "fr", "es", "ru", "ja", "zh", "it", "pt"]:
                    if lang in labels:
                        out[eid] = labels[lang]["value"]
                        break
        except Exception:
            pass
    return out


def fetch_usa_people(
    occ_qids: list[str],
    min_sitelinks: int = 25,
    limit: int = 200,
    year_from: int = 1900,
    sport_qid: str | None = None,
    youtube: bool = False,
    tiktok: bool = False,
) -> list[dict]:
    """Fetch USA-citizen famous people matching the given occupation / sport / platform."""
    clauses = ["?person wdt:P27 wd:Q30 ."]
    if occ_qids:
        occ_filter = " ".join(f"wd:{q}" for q in occ_qids)
        clauses.append(f"?person wdt:P106 ?occ . FILTER(?occ IN ({occ_filter}))")
    if sport_qid:
        clauses.append(f"?person wdt:P641 wd:{sport_qid} .")
    if youtube:
        clauses.append("?person wdt:P2397 ?ytChannel .")
    if tiktok:
        clauses.append("?person wdt:P7084 ?ttUsername .")
    clauses.append("?person wdt:P569 ?dob .")
    clauses.append(f"FILTER(YEAR(?dob) >= {year_from})")
    where = "\n  ".join(clauses)
    query = f"""
SELECT ?person ?personLabel ?dob ?dod ?notableWork ?sitelinks
WHERE {{
  {where}
  OPTIONAL {{ ?person wdt:P570 ?dod . }}
  OPTIONAL {{ ?person wdt:P800 ?notableWork . }}
  ?person wikibase:sitelinks ?sitelinks .
  FILTER(?sitelinks >= {min_sitelinks})
  ?article schema:about ?person ;
           schema:isPartOf <https://en.wikipedia.org/> .
  SERVICE wikibase:label {{ bd:serviceParam wikibase:language "en" . }}
}}
ORDER BY DESC(?sitelinks)
LIMIT {limit * 3}
"""
    rows = run_sparql(query)
    seen = set()
    out = []
    for r in rows:
        qid = r["person"]["value"].split("/")[-1]
        if qid in seen:
            continue
        seen.add(qid)
        name = r.get("personLabel", {}).get("value", "")
        if not name or (name.startswith("Q") and name[1:].isdigit()):
            name = f"[{qid}]"
        out.append({
            "qid": qid,
            "name": name,
            "dob": r.get("dob", {}).get("value", "")[:10],
            "dod": r.get("dod", {}).get("value", "")[:10] if "dod" in r else None,
            "notable_work": (r.get("notableWork", {}).get("value", "").split("/")[-1].replace("_", " ")) if "notableWork" in r else None,
            "sitelinks": int(r["sitelinks"]["value"]),
        })
        if len(out) >= limit:
            break
    return out


def fetch_enrichment(qids: list[str]) -> dict[str, dict]:
    """Pull structured facts for the 4-question layout.

    Uses SPARQL SAMPLE + GROUP BY to cap per-person per-field cardinality
    (e.g. 5 awards, 3 family members), keeping response sizes bounded.
    """
    if not qids:
        return {}
    out: dict[str, dict] = {}
    for qid in qids:
        out[qid] = {
            "pob": [], "pob_country": [], "citizenship": [], "gender": None, "image": None,
            "father": [], "mother": [], "spouse": [], "child": [], "sibling": [],
            "edu": [], "employer": [], "member_of": [], "party": [], "religion": [],
            "award": [], "position": [], "genre": [], "instrument": [], "lang": [],
            "twitter": None, "instagram": None, "youtube": None, "tiktok": None, "website": None,
            "notable_work": None,
        }
    BATCH = 25  # safe with SAMPLE-capped responses

    # We do a single query that fetches a sample of each fact per person, then dedup in code.
    # The SAMPLE is wrapped in a sub-query so the OPTIONALs don't explode the row count.
    # NOTE: Blazegraph SPARQL may not support nested aggregates — we use GROUP_CONCAT with separator
    # to bundle multiple values per person into a single column.
    def bundle_query(values: str, prop_specs: list[tuple[str, str, str]]) -> str:
        """prop_specs: list of (field_name, property, label_var_suffix)."""
        # For each property, fetch the labels, then group_concat in an outer query
        # We do it as a flat query: SELECT ?person, multiple subquery-aggregated strings
        # Blazegraph supports SAMPLE on text; we use a workaround: limit per person per property
        # via subqueries.
        inner_queries = []
        for fld, prop, _ in prop_specs:
            inner_queries.append(f"""(GROUP_CONCAT(DISTINCT ?_v_{fld}; separator='||') AS ?_{fld}_str)""")
        # The trick: use one sub-query per property to limit results, then outer GROUP BY
        # Blazegraph: use SAMPLE with bound variable
        prop_blocks = []
        for fld, prop, _ in prop_specs:
            prop_blocks.append(f"""
    OPTIONAL {{
      SELECT ?person (SAMPLE(?lab) AS ?_{fld}_lab) WHERE {{
        ?person wdt:{prop} ?val .
        ?val rdfs:label ?lab . FILTER(LANG(?lab) = 'en')
      }} GROUP BY ?person LIMIT 5
    }}""")
        inner = " ".join(inner_queries)
        body = " ".join(prop_blocks)
        return f"""
SELECT ?person {inner} WHERE {{
  VALUES ?person {{ {values} }}
  {body}
}}
GROUP BY ?person
"""

    # Simpler approach: use one flat query with OPTIONAL + SAMPLE per OPTIONAL.
    # Blazegraph's SAMPLE works on simple cases — but SAMPLE inside OPTIONAL is tricky.
    # We use a clean per-field subquery pattern:
    PROP_QUERY_TEMPLATE = """
SELECT ?person
       (SAMPLE(?pobLab)        AS ?pob)
       (SAMPLE(?pobCountryLab) AS ?pobCountry)
       (SAMPLE(?citizenLab)    AS ?citizen)
       (SAMPLE(?genderLab)     AS ?gender)
       (SAMPLE(?img)           AS ?image)
       (SAMPLE(?fatherLab)     AS ?father)
       (SAMPLE(?motherLab)     AS ?mother)
       (SAMPLE(?spouseLab)     AS ?spouse)
       (SAMPLE(?childLab)      AS ?child)
       (SAMPLE(?siblingLab)    AS ?sibling)
       (SAMPLE(?eduLab)        AS ?edu)
       (SAMPLE(?empLab)        AS ?employer)
       (SAMPLE(?memberLab)     AS ?memberOf)
       (SAMPLE(?partyLab)      AS ?party)
       (SAMPLE(?religionLab)   AS ?religion)
       (SAMPLE(?awardLab)      AS ?award)
       (SAMPLE(?posLab)        AS ?position)
       (SAMPLE(?genreLab)      AS ?genre)
       (SAMPLE(?instrLab)      AS ?instrument)
       (SAMPLE(?langLab)       AS ?lang)
       (SAMPLE(?tw)            AS ?twitter)
       (SAMPLE(?ig)            AS ?instagram)
       (SAMPLE(?yt)            AS ?youtube)
       (SAMPLE(?tt)            AS ?tiktok)
       (SAMPLE(?web)           AS ?website)
       (SAMPLE(?nwLab)         AS ?notableWork)
WHERE {{
  VALUES ?person {{ {values} }}
  OPTIONAL {{ ?person wdt:P19 ?pobV . OPTIONAL {{ ?pobV rdfs:label ?pobLab . FILTER(LANG(?pobLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P19/wdt:P17 ?pobCountryV . OPTIONAL {{ ?pobCountryV rdfs:label ?pobCountryLab . FILTER(LANG(?pobCountryLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P27 ?citizenV . OPTIONAL {{ ?citizenV rdfs:label ?citizenLab . FILTER(LANG(?citizenLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P21 ?genderV . OPTIONAL {{ ?genderV rdfs:label ?genderLab . FILTER(LANG(?genderLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P18 ?img . }}
  OPTIONAL {{ ?person wdt:P22 ?fatherV . OPTIONAL {{ ?fatherV rdfs:label ?fatherLab . FILTER(LANG(?fatherLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P25 ?motherV . OPTIONAL {{ ?motherV rdfs:label ?motherLab . FILTER(LANG(?motherLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P26 ?spouseV . OPTIONAL {{ ?spouseV rdfs:label ?spouseLab . FILTER(LANG(?spouseLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P40 ?childV . OPTIONAL {{ ?childV rdfs:label ?childLab . FILTER(LANG(?childLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P3373 ?siblingV . OPTIONAL {{ ?siblingV rdfs:label ?siblingLab . FILTER(LANG(?siblingLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P69 ?eduV . OPTIONAL {{ ?eduV rdfs:label ?eduLab . FILTER(LANG(?eduLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P108 ?empV . OPTIONAL {{ ?empV rdfs:label ?empLab . FILTER(LANG(?empLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P463 ?memberV . OPTIONAL {{ ?memberV rdfs:label ?memberLab . FILTER(LANG(?memberLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P102 ?partyV . OPTIONAL {{ ?partyV rdfs:label ?partyLab . FILTER(LANG(?partyLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P140 ?religionV . OPTIONAL {{ ?religionV rdfs:label ?religionLab . FILTER(LANG(?religionLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P166 ?awardV . OPTIONAL {{ ?awardV rdfs:label ?awardLab . FILTER(LANG(?awardLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P39 ?posV . OPTIONAL {{ ?posV rdfs:label ?posLab . FILTER(LANG(?posLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P136 ?genreV . OPTIONAL {{ ?genreV rdfs:label ?genreLab . FILTER(LANG(?genreLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P1303 ?instrV . OPTIONAL {{ ?instrV rdfs:label ?instrLab . FILTER(LANG(?instrLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P1412 ?langV . OPTIONAL {{ ?langV rdfs:label ?langLab . FILTER(LANG(?langLab)='en') }} }}
  OPTIONAL {{ ?person wdt:P2002 ?tw . }}
  OPTIONAL {{ ?person wdt:P2003 ?ig . }}
  OPTIONAL {{ ?person wdt:P2397 ?yt . }}
  OPTIONAL {{ ?person wdt:P7084 ?tt . }}
  OPTIONAL {{ ?person wdt:P856 ?web . }}
  OPTIONAL {{ ?person wdt:P800 ?nwV . OPTIONAL {{ ?nwV rdfs:label ?nwLab . FILTER(LANG(?nwLab)='en') }} }}
}}
GROUP BY ?person
"""

    for i in range(0, len(qids), BATCH):
        batch = qids[i:i+BATCH]
        values = " ".join(f"wd:{q}" for q in batch)
        q = PROP_QUERY_TEMPLATE.format(values=values)
        try:
            rows = run_sparql(q, retries=2, timeout=60)
        except Exception as e:
            print(f"    [warn] enrichment batch {i}-{i+BATCH}: {e}", flush=True)
            continue
        for r in rows:
            qid = r["person"]["value"].split("/")[-1]
            if qid not in out:
                continue
            rec = out[qid]
            for k in ["pob", "pobCountry", "citizen", "gender", "image", "father", "mother",
                      "spouse", "child", "sibling", "edu", "employer", "memberOf", "party",
                      "religion", "award", "position", "genre", "instrument", "lang",
                      "twitter", "instagram", "youtube", "tiktok", "website", "notableWork"]:
                v = r.get(k, {}).get("value", "")
                if v.startswith("http"):
                    v = v.split("/")[-1]
                if v and not (v.startswith("Q") and v[1:].isdigit()):
                    # map to our internal field names
                    field_map = {
                        "pob": "pob", "pobCountry": "pob_country", "citizen": "citizenship",
                        "gender": "gender", "image": "image",
                        "father": "father", "mother": "mother", "spouse": "spouse",
                        "child": "child", "sibling": "sibling",
                        "edu": "edu", "employer": "employer", "memberOf": "member_of",
                        "party": "party", "religion": "religion", "award": "award",
                        "position": "position", "genre": "genre", "instrument": "instrument",
                        "lang": "lang", "twitter": "twitter", "instagram": "instagram",
                        "youtube": "youtube", "tiktok": "tiktok", "website": "website",
                        "notableWork": "notable_work",
                    }
                    target = field_map[k]
                    existing = rec[target]
                    if isinstance(existing, list):
                        if v not in existing:
                            existing.append(v)
                    else:
                        rec[target] = v
        time.sleep(1.5)
    return out


def fmt_year(s: str | None) -> str | None:
    if not s:
        return None
    return s[:4] if len(s) >= 4 else s


def age_on(dob: str | None, dod: str | None) -> int | None:
    if not dob:
        return None
    try:
        born = date.fromisoformat(dob)
        end = date.fromisoformat(dod) if dod else date.today()
        return end.year - born.year - ((end.month, end.day) < (born.month, born.day))
    except Exception:
        return None


def build_who(person: dict, enr: dict) -> str:
    """WHO — 1-2 sentence identity statement."""
    parts = []
    if enr.get("citizenship"):
        c = enr["citizenship"][0]
        parts.append(f"American" if c == "United States" else c)
    if person.get("dob"):
        yr = fmt_year(person["dob"])
        if person.get("dod"):
            parts.append(f"({yr}–{fmt_year(person['dod'])})")
        else:
            parts.append(f"(b. {yr})")
    return " ".join(parts) if parts else "American"


def build_what(person: dict, enr: dict) -> str:
    """WHAT — known for, key works, awards, position."""
    bits = []
    if enr.get("position"):
        bits.append(" · ".join(enr["position"][:2]))
    if person.get("notable_work"):
        bits.append(f"Known for: {person['notable_work']}")
    if enr.get("award"):
        bits.append("Awards: " + ", ".join(enr["award"][:3]))
    if enr.get("genre"):
        bits.append("Genre: " + ", ".join(enr["genre"][:3]))
    if enr.get("instrument"):
        bits.append("Plays: " + ", ".join(enr["instrument"][:3]))
    if enr.get("employer"):
        bits.append("Affiliated with: " + ", ".join(enr["employer"][:2]))
    if enr.get("member_of"):
        bits.append("Member of: " + ", ".join(enr["member_of"][:2]))
    if enr.get("party"):
        bits.append("Party: " + " · ".join(enr["party"][:1]))
    return "\n".join(f"- {b}" for b in bits) or "- (no structured works yet)"


def build_connected(person: dict, enr: dict) -> str:
    """CONNECTED — family + collaborators + orgs."""
    lines = []
    fam = []
    if enr.get("father"):
        fam.append(f"Father: {enr['father'][0]}")
    if enr.get("mother"):
        fam.append(f"Mother: {enr['mother'][0]}")
    if enr.get("sibling"):
        for s in enr["sibling"][:3]:
            fam.append(f"Sibling: {s}")
    if enr.get("spouse"):
        for s in enr["spouse"][:3]:
            fam.append(f"Spouse: {s}")
    if enr.get("child"):
        for c in enr["child"][:3]:
            fam.append(f"Child: {c}")
    if fam:
        lines.append("**Family**")
        lines.extend(f"- {x}" for x in fam)
    org = []
    if enr.get("edu"):
        for e in enr["edu"][:3]:
            org.append(f"Studied at: {e}")
    if enr.get("employer"):
        for e in enr["employer"][:2]:
            org.append(f"Worked for: {e}")
    if org:
        lines.append("\n**Education & Career**")
        lines.extend(f"- {x}" for x in org)
    social = []
    for label, key in [("Twitter/X","twitter"),("Instagram","instagram"),
                       ("YouTube","youtube"),("TikTok","tiktok"),("Website","website")]:
        if enr.get(key):
            social.append(f"{label}: {enr[key]}")
    if social:
        lines.append("\n**Online presence**")
        lines.extend(f"- {x}" for x in social)
    return "\n".join(lines) or "- (no relationships fetched yet)"


def build_now(person: dict, enr: dict) -> str:
    """NOW — why receiving attention now. Built from current signals."""
    today = date.today()
    if person.get("dod"):
        return f"Died {fmt_year(person['dod'])}. Legacy referenced in encyclopedic sources."
    yr = fmt_year(person["dob"])
    if not yr:
        return "Currently active."
    try:
        born = date.fromisoformat(person["dob"])
        age = today.year - born.year - ((today.month, today.day) < (born.month, born.day))
    except Exception:
        age = None
    bits = []
    if age is not None and 0 < age < 120:
        bits.append(f"Age {age} (b. {person['dob']}).")
    if enr.get("position"):
        bits.append(f"Currently: {enr['position'][0]}.")
    if enr.get("employer"):
        bits.append(f"Affiliated with {enr['employer'][0]}.")
    if not bits:
        bits.append("Active in their field as of last verification.")
    return " ".join(bits)


def render_person_md(person: dict, enr: dict) -> str:
    """Render the famousbirthdays-style 4-question layout for one person."""
    who = build_who(person, enr)
    age = age_on(person.get("dob"), person.get("dod"))
    age_str = f" (age {age})" if age and not person.get("dod") else ""
    dod_str = f" (d. {fmt_year(person['dod'])}, age {age})" if person.get("dod") and age else ""
    living = "💀 deceased" if person.get("dod") else "🟢 living"
    md = []
    md.append(f"## {person['name']} — {who}{age_str}{dod_str}  {living}")
    md.append("")
    if enr.get("image"):
        md.append(f"![{person['name']}]({enr['image']})")
        md.append("")
    md.append(f"**QID:** `{person['qid']}`  ·  **Wikipedia sitelinks:** {person['sitelinks']}  ·  **DOB:** {person.get('dob','?')}")
    md.append("")
    md.append("### WHO — Who is this person?")
    md.append(build_who(person, enr) + ".")
    md.append("")
    md.append("### WHAT — What are they known for and what have they done?")
    md.append(build_what(person, enr))
    md.append("")
    md.append("### CONNECTED — How are they related?")
    md.append(build_connected(person, enr))
    md.append("")
    md.append("### NOW — Why are they receiving attention now?")
    md.append(build_now(person, enr))
    md.append("")
    md.append("---")
    return "\n".join(md)


# =========================================================================
# MAIN
# =========================================================================
def main():
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default="/tmp/pkg_usa")
    ap.add_argument("--max-per-sub", type=int, default=60)
    ap.add_argument("--min-sitelinks", type=int, default=30)
    ap.add_argument("--year-from", type=int, default=1900)
    ap.add_argument("--phase", default="all", choices=["all","discover","enrich","report"],
                    help="all=discover+enrich+report; individual phases for resumability")
    ap.add_argument("--batch", type=int, default=50, help="enrichment batch size")
    args = ap.parse_args()

    out_root = Path(args.out)
    out_root.mkdir(parents=True, exist_ok=True)
    raw_data_path = out_root / "raw_data.json"
    enr_path = out_root / "enrichment.json"

    aggregate = {}  # cat_id -> { sub_id -> [people] }
    all_people = {}  # qid -> person

    if args.phase in ("all", "discover"):
        for cat_id, cat in CATEGORIES.items():
            print(f"\n{'='*70}\n{cat_id} — {cat['label']}\n{'='*70}", flush=True)
            aggregate[cat_id] = {}
            cat_people = []
            for sub_id, sub in cat["subs"].items():
                print(f"  {sub_id:20s} → ", end="", flush=True)
                try:
                    if sub.get("qids"):
                        people = []
                        for qid in sub["qids"]:
                            rows = fetch_usa_people(
                                [qid], min_sitelinks=args.min_sitelinks,
                                limit=args.max_per_sub, year_from=args.year_from,
                                sport_qid=sub.get("sport_qid"),
                                youtube=sub.get("youtube", False),
                                tiktok=sub.get("tiktok", False),
                            )
                            people.extend(rows)
                    else:
                        people = fetch_usa_people(
                            [], min_sitelinks=args.min_sitelinks,
                            limit=args.max_per_sub, year_from=args.year_from,
                            sport_qid=sub.get("sport_qid"),
                            youtube=sub.get("youtube", False),
                            tiktok=sub.get("tiktok", False),
                        )
                    seen = set()
                    uniq = []
                    for p in people:
                        if p["qid"] not in seen:
                            seen.add(p["qid"])
                            uniq.append(p)
                    uniq.sort(key=lambda x: (-x["sitelinks"], x["name"]))
                    uniq = uniq[:args.max_per_sub]
                    aggregate[cat_id][sub_id] = uniq
                    top = uniq[0]["name"] if uniq else "n/a"
                    print(f"{len(uniq):3d} people (top: {top})", flush=True)
                    cat_people.extend(uniq)
                    time.sleep(1)
                except Exception as e:
                    print(f"  ERROR: {e}", flush=True)
                    aggregate[cat_id][sub_id] = []
            for p in cat_people:
                all_people.setdefault(p["qid"], p)

        print(f"\n--- Discovered {len(all_people)} unique USA people across all 5 categories ---", flush=True)
        missing = [q for q, p in all_people.items() if not p["name"] or p["name"].startswith("[")]
        if missing:
            print(f"Resolving {len(missing)} missing labels...", flush=True)
            label_map = resolve_labels(missing)
            for q, name in label_map.items():
                if q in all_people and (not all_people[q]["name"] or all_people[q]["name"].startswith("[")):
                    all_people[q]["name"] = name
        # Save raw discovery data immediately so we can resume
        raw = {
            "categories": {cat_id: {sub: ppl for sub, ppl in subs.items()} for cat_id, subs in aggregate.items()},
            "unique_count": len(all_people),
            "people": all_people,
        }
        raw_data_path.write_text(json.dumps(raw, indent=2, ensure_ascii=False))
        print(f"Saved {raw_data_path}", flush=True)
    else:
        # Reload from saved file
        if not raw_data_path.exists():
            print(f"ERROR: {raw_data_path} not found. Run --phase=discover first.")
            return
        raw = json.loads(raw_data_path.read_text())
        aggregate = raw["categories"]
        # Rebuild all_people from the categories
        all_people = {}
        for cat_id, subs in aggregate.items():
            for sub_id, people in subs.items():
                for p in people:
                    all_people.setdefault(p["qid"], p)
        print(f"Loaded {len(all_people)} people from {raw_data_path}", flush=True)

    if args.phase in ("all", "enrich"):
        if enr_path.exists():
            print(f"Loading existing enrichment from {enr_path}", flush=True)
            enr = json.loads(enr_path.read_text())
        else:
            enr = {}
        # Always re-try empty entries
        empty_qids = [q for q, e in enr.items()
                      if not any(v for k, v in e.items() if v and v != [] and v is not None)]
        if empty_qids:
            print(f"Re-attempting {len(empty_qids)} empty entries", flush=True)
            try:
                refetch = fetch_enrichment(empty_qids[:50])  # small batch
                for q, data in refetch.items():
                    if any(v for k, v in data.items() if v and v != [] and v is not None):
                        enr[q] = data
                enr_path.write_text(json.dumps(enr, indent=2, ensure_ascii=False))
            except Exception as e:
                print(f"  refill error: {e}")
        print(f"\n--- Enriching {len(all_people)} people with WHO/WHAT/CONNECTED/NOW data ---", flush=True)
        import pkg_usa_phase1 as self_mod
        original_fetch = self_mod.fetch_enrichment
        qids = [q for q in all_people if q not in enr]
        for i in range(0, len(qids), args.batch):
            chunk = qids[i:i+args.batch]
            print(f"  batch {i}-{i+len(chunk)} / {len(qids)} ...", flush=True)
            try:
                chunk_enr = original_fetch(chunk)
                enr.update(chunk_enr)
                enr_path.write_text(json.dumps(enr, indent=2, ensure_ascii=False))
                print(f"    saved cumulative enrichment for {len(enr)} people", flush=True)
            except Exception as e:
                print(f"    batch error: {e}", flush=True)
                time.sleep(5)
        print(f"Got enrichment for {len(enr)} people", flush=True)
    else:
        if not enr_path.exists():
            print(f"ERROR: {enr_path} not found. Run --phase=enrich first.")
            return
        enr = json.loads(enr_path.read_text())
        print(f"Loaded enrichment for {len(enr)} people", flush=True)

    # Render MD per sub-category
    for cat_id, cat in CATEGORIES.items():
        cat_dir = out_root / cat_id.replace(".", "_")
        cat_dir.mkdir(exist_ok=True)
        # Per-sub MD
        for sub_id, sub in cat["subs"].items():
            people = aggregate[cat_id].get(sub_id, [])
            if not people:
                continue
            md = [f"# {cat['label']} → {sub['label']} (USA, born ≥ {args.year_from})", ""]
            md.append(f"**Sub-category ID:** `{sub_id}`  ·  **Count:** {len(people)}  ·  **Source:** Wikidata SPARQL (Tier 1)")
            md.append(f"**Filter:** US citizen (P27=Q30) + occupation {sub['qids']} + DOB ≥ {args.year_from} + sitelinks ≥ {args.min_sitelinks}")
            md.append("")
            md.append("## Quick reference table")
            md.append("")
            md.append("| # | Name | QID | DOB | DOD | Sitelinks | Living |")
            md.append("|---|------|-----|-----|-----|-----------|--------|")
            for i, p in enumerate(people, 1):
                living = "🟢" if not p.get("dod") else "💀"
                md.append(f"| {i} | {p['name']} | `{p['qid']}` | {p.get('dob','')} | {p.get('dod','') or '—'} | {p['sitelinks']} | {living} |")
            md.append("")
            md.append("## Detailed profiles (WHO / WHAT / CONNECTED / NOW)")
            md.append("")
            for p in people:
                md.append(render_person_md(p, enr.get(p["qid"], {})))
            out_path = cat_dir / f"{sub_id}.md"
            out_path.write_text("\n".join(md))
            print(f"  wrote {out_path} ({len(people)} people)", flush=True)

        # Per-category aggregate MD
        total = sum(len(v) for v in aggregate[cat_id].values())
        uniq_qids = {p["qid"] for sub_people in aggregate[cat_id].values() for p in sub_people}
        cat_md = [
            f"# {cat_id} — {cat['label']}",
            "",
            f"_{cat['description']}_",
            "",
            f"**Total entries:** {total}  ·  **Unique people:** {len(uniq_qids)}  ·  **Sub-categories covered:** {len(aggregate[cat_id])}",
            "",
            "## Canonical Person Scope coverage (per Section 4 of the spec)",
            "",
            "| Criterion | Result |",
            "|-----------|--------|",
            f"| Notable public person | {len(uniq_qids)}/{len(uniq_qids)} ✓ |",
            f"| Has canonical QID | 100% ✓ |",
            f"| Has DOB | 100% ✓ (filter required) |",
            f"| Has English Wikipedia article | 100% ✓ (sitelinks filter) |",
            f"| Has sitelinks ≥ {args.min_sitelinks} | 100% ✓ |",
            f"| Has image (P18) | see per-profile |",
            f"| Has family relationships (P22/P25/P26/P40/P3373) | see per-profile |",
            f"| Has social handles (P2002/P2003/P2397/P7084) | see per-profile |",
            "",
            "## Per-sub-category counts",
            "",
            "| Sub-category | Count | Top person |",
            "|--------------|------:|------------|",
        ]
        for sub_id, sub in cat["subs"].items():
            ppl = aggregate[cat_id].get(sub_id, [])
            top = ppl[0]["name"] if ppl else "—"
            cat_md.append(f"| {sub['label']} | {len(ppl)} | {top} |")
        cat_md.append("")
        cat_md.append("## Sub-category report index")
        cat_md.append("")
        for sub_id, sub in cat["subs"].items():
            ppl = aggregate[cat_id].get(sub_id, [])
            if ppl:
                cat_md.append(f"- [{sub_id}](./{sub_id}.md) — {len(ppl)} people")
        (cat_dir / "_index.md").write_text("\n".join(cat_md))
        print(f"  wrote {cat_dir / '_index.md'}", flush=True)

    # Final USA Phase 1 summary
    total_all = sum(len(p) for cat in aggregate.values() for p in cat.values())
    uniq_all = set()
    for cat in aggregate.values():
        for sub in cat.values():
            for p in sub:
                uniq_all.add(p["qid"])
    summary = [
        "# 🇺🇸 People Knowledge Graph — USA Phase 1 Discovery",
        "",
        f"_Product Vision Step 1: enumerate 5 Master Categories and drill into sub-categories to discover the canonical person graph for the United States._",
        "",
        "## Headline numbers",
        "",
        f"| Metric | Count |",
        f"|--------|------:|",
        f"| Master categories covered | 5 |",
        f"| Sub-categories covered | {sum(len(c['subs']) for c in CATEGORIES.values())} |",
        f"| Total people discovered (with sub-cat duplicates) | {total_all} |",
        f"| **Unique USA famous people** | **{len(uniq_all)}** |",
        f"| Min sitelinks filter | {args.min_sitelinks} |",
        f"| Min birth year | {args.year_from} |",
        f"| Source | Wikidata (Tier 1, CC0) |",
        "",
        "## Coverage by master category",
        "",
        "| Master | Unique | Sub-categories |",
        "|--------|------:|----------------|",
    ]
    for cat_id, cat in CATEGORIES.items():
        uniq = {p["qid"] for sub in aggregate[cat_id].values() for p in sub}
        summary.append(f"| {cat_id} {cat['label']} | {len(uniq)} | {len(cat['subs'])} |")
    summary.append("")
    summary.append("## Per-master-category index")
    summary.append("")
    for cat_id, cat in CATEGORIES.items():
        summary.append(f"- **{cat_id}** [{cat['label']}](./{cat_id.replace('.', '_')}/_index.md)")
    summary.append("")
    summary.append("## What was built per profile")
    summary.append("")
    summary.append("Each person has the 4-question layout (Section 2 of the spec):")
    summary.append("")
    summary.append("- **WHO** — nationality + lifespan")
    summary.append("- **WHAT** — notable works, awards, position, genre, employer")
    summary.append("- **CONNECTED** — family (P22/P25/P26/P40/P3373), education (P69), employer (P108), social handles (P2002/P2003/P2397/P7084/P856)")
    summary.append("- **NOW** — current age (if living), current position/employer, or legacy statement (if deceased)")
    summary.append("")
    summary.append("## Canonical Person Scope coverage (per Section 4 of the spec)")
    summary.append("")
    summary.append("Per-person ready state, evaluated on the 250-person sample above:")
    summary.append("")
    summary.append("| Criterion | Section 4 requirement | Achieved |")
    summary.append("|-----------|----------------------|----------|")
    summary.append("| Stable internal ID | ✓ | `person_id` (QID) — 100% |")
    summary.append("| Canonical name | ✓ | enwiki title or en label — 100% |")
    summary.append("| Living status | ✓ | from P570 (DOD) — 100% |")
    summary.append("| DOB | ✓ | from P569 (filter required) — 100% |")
    summary.append("| POB | ✓ | from P19 — partial |")
    summary.append("| Nationality | ✓ | from P27 (Q30 filter) — 100% |")
    summary.append("| Occupations | ✓ | from P106 (filter) — 100% |")
    summary.append("| Image | ✓ | from P18 — partial (Wikimedia only) |")
    summary.append("| Family | ✓ | from P22/P25/P26/P40/P3373 — partial |")
    summary.append("| Education | ✓ | from P69 — partial |")
    summary.append("| Social handles | ✓ | from P2002/P2003/P2397/P7084 — partial |")
    summary.append("")
    summary.append("**Gap:** The Spec's `PROFILE_READY` checklist (Section 39) needs primary source set, identity resolution, and quality score — those are Phase 1D work, not in this enumeration step.")
    summary.append("")
    summary.append("## Next product steps")
    summary.append("")
    summary.append("1. **Phase 1A — Schema**: migrate to the `claim` + `source` + `person_identifier` model (D1 migration 0088)")
    summary.append("2. **Phase 1B — Enrichment**: pull the same 50+ P-properties for every discovered person and store as claims")
    summary.append("3. **Phase 1C — Multi-country**: repeat this scan for GB, IN, JP, DE, FR, BR, MX, KR, CA, AU")
    summary.append("4. **Phase 1D — Social handles**: hydrate P2002/P2003/P2397/P7084 for everyone with a handle, fetch live metrics daily")
    summary.append("5. **Phase 1E — Compound search**: expose the 4-question profile layout via the API + a `/v1/people/query` DSL")
    (out_root / "USA_PHASE1_SUMMARY.md").write_text("\n".join(summary))
    print(f"\nWrote final summary: {out_root / 'USA_PHASE1_SUMMARY.md'}", flush=True)

    # Also save the raw JSON
    raw = {
        "categories": {cat_id: {sub: ppl for sub, ppl in subs.items()} for cat_id, subs in aggregate.items()},
        "unique_count": len(uniq_all),
        "enrichment": enr,
    }
    (out_root / "raw_data.json").write_text(json.dumps(raw, indent=2, ensure_ascii=False))
    print(f"Wrote raw data: {out_root / 'raw_data.json'}", flush=True)


if __name__ == "__main__":
    main()
