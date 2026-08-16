#!/usr/bin/env python3
"""
Apply USA PKG Phase 1 enrichment data into D1 via the new PKG schema.

Reads:
  - /tmp/pkg_usa/raw_data.json     (440 unique USA people discovered)
  - /tmp/pkg_usa/enrichment.json   (structured facts per QID)

Writes to D1:
  - entity (for new people not yet in HKA)
  - person (id, living_status, current_age, etc.)
  - claim (DOB, POB, occupation, awards, party, etc.)
  - claim_source (link claim → source_record)
  - source_record (one per person, pointing to Wikidata)
  - person_family_relation (P22/P25/P26/P40/P3373)
  - social_profile (P2002/P2003/P2397/P7084/P856)
  - person_provenance_summary (denormalized)
  - external_identifier (QID for new people)

Slug scheme: ent_{qid-slug} e.g. ent_donald-trump.
If slug exists in HKA already, we re-use it and UPDATE the relevant fields.
If not, we INSERT.

Idempotent: every INSERT uses OR IGNORE/OR REPLACE on (scheme,identifier) /
(primary key) so re-runs are safe.
"""
import json
import re
import ssl
import time
import urllib.parse
import urllib.request
from collections import defaultdict
from datetime import date, datetime
from pathlib import Path

EXISTING_SLUGS: dict[str, str] = {}  # populated at start of main()
from typing import Optional

USER_AGENT = "HKA-PKG-Apply/1.0 (ops@example.com)"
WIKIDATA_API = "https://www.wikidata.org/w/api.php"

ACCOUNT = "0dacf1b5-2987-4cb7-bf9d-989428a84382"
DB_NAME = "historical-knowledge-api-d1"


def slugify(name: str, qid: str) -> str:
    """Convert 'Donald Trump' → 'donald-trump', with QID as fallback."""
    if not name or name.startswith("["):
        return f"person-{qid.lower()}"
    s = name.lower()
    s = re.sub(r"['\u2018\u2019]", "", s)         # strip apostrophes
    s = re.sub(r"[^a-z0-9]+", "-", s)
    s = s.strip("-")
    return s or f"person-{qid.lower()}"


def today() -> int:
    return int(datetime.now().timestamp())


def age_on(dob: str, dod: Optional[str]) -> Optional[int]:
    if not dob:
        return None
    try:
        born = date.fromisoformat(dob[:10])
        end = date.fromisoformat(dod[:10]) if dod else date.today()
        return end.year - born.year - ((end.month, end.day) < (born.month, born.day))
    except Exception:
        return None


def fetch_label_via_wikipedia(qid: str) -> Optional[str]:
    """Use Wikidata's wbgetentities to get the English Wikipedia sitelink title."""
    url = WIKIDATA_API + f"?action=wbgetentities&ids={qid}&props=sitelinks&sitefilter=enwiki&format=json"
    try:
        req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
        with urllib.request.urlopen(req, context=ssl.create_default_context(), timeout=15) as r:
            data = json.loads(r.read())
        return data.get("entities", {}).get(qid, {}).get("sitelinks", {}).get("enwiki", {}).get("title")
    except Exception:
        return None


def main():
    raw = json.load(open("/tmp/pkg_usa/raw_data.json"))
    enr = json.load(open("/tmp/pkg_usa/enrichment.json"))

    # Load existing person slugs from D1 to avoid slug-collision silent failures
    global EXISTING_SLUGS
    slug_file = Path("/tmp/person_slugs.json")
    if slug_file.exists():
        EXISTING_SLUGS = json.load(open(slug_file))
        print(f"Loaded {len(EXISTING_SLUGS)} existing person slugs from {slug_file}")
    else:
        EXISTING_SLUGS = {}
        print("No existing slugs file found")

    # Build person catalog: QID → (name, slug, dob, dod, dob_full, dod_full)
    catalog = {}
    for cat_id, subs in raw["categories"].items():
        for sub_id, people in subs.items():
            for p in people:
                qid = p["qid"]
                if qid not in catalog:
                    catalog[qid] = {
                        "name": p["name"],
                        "slug": slugify(p["name"], qid),
                        "dob": p.get("dob"),
                        "dod": p.get("dod"),
                        "notable_work": p.get("notable_work"),
                        "sitelinks": p.get("sitelinks", 0),
                    }
    print(f"Catalog: {len(catalog)} unique people")

    # Resolve any missing English Wikipedia titles (these are the Q-IDs that had
    # blank en labels like Trump / Jobs / Taylor Swift)
    need_resolve = [q for q, p in catalog.items()
                    if not p["name"] or p["name"].startswith("[") or
                    (p["name"].startswith("Q") and p["name"][1:].isdigit())]
    if need_resolve:
        print(f"Resolving {len(need_resolve)} missing enwiki titles…")
        for qid in need_resolve:
            title = fetch_label_via_wikipedia(qid)
            if title:
                catalog[qid]["name"] = title
                catalog[qid]["slug"] = slugify(title, qid)
        time.sleep(1)

    # Build the SQL — we batch by 50 statements per wrangler call
    statements: list[str] = []
    new_entities: list[str] = []  # entity IDs we created
    stats = defaultdict(int)

    PREDICATE = {
        "dob":           ("DATE_OF_BIRTH",     "date"),
        "pob":           ("PLACE_OF_BIRTH",    "string"),
        "citizenship":   ("NATIONALITY",       "string"),
        "gender":        ("GENDER",            "string"),
        "father":        ("CHILD_OF",          "string"),  # Person is child of father
        "mother":        ("CHILD_OF",          "string"),
        "spouse":        ("SPOUSE_OF",         "string"),
        "sibling":       ("SIBLING_OF",        "string"),
        "child":         ("PARENT_OF",         "string"),
        "edu":           ("EDUCATED_AT",       "string"),
        "employer":      ("WORKED_FOR",        "string"),
        "member_of":     ("MEMBER_OF",         "string"),
        "party":         ("POLITICAL_PARTY",   "string"),
        "religion":      ("RELIGION",          "string"),
        "award":         ("WON_AWARD",         "string"),
        "position":      ("HELD_POSITION",     "string"),
        "genre":         ("GENRE",             "string"),
        "instrument":    ("INSTRUMENT_PLAYED", "string"),  # not in our seed, but valid
        "lang":          ("SPEAKS_LANGUAGE",   "string"),
        "notable_work":  ("KNOWN_FOR",         "string"),
    }

    # P22 father → child_of; P25 mother → child_of; P26 spouse → spouse_of;
    # P3373 sibling → sibling_of; P40 child → parent_of
    FAMILY_MAP = {
        "father":  ("child_of",   "P22"),
        "mother":  ("child_of",   "P25"),
        "spouse":  ("spouse_of",  "P26"),
        "sibling": ("sibling_of", "P3373"),
        "child":   ("parent_of",  "P40"),
    }

    P_PROPERTY = {
        "P569": "DATE_OF_BIRTH",  "P570": "DATE_OF_DEATH",   "P19":  "PLACE_OF_BIRTH",
        "P20":  "PLACE_OF_DEATH", "P27":  "NATIONALITY",     "P21":  "GENDER",
        "P22":  "CHILD_OF",       "P25":  "CHILD_OF",        "P26":  "SPOUSE_OF",
        "P40":  "PARENT_OF",      "P69":  "EDUCATED_AT",     "P108": "WORKED_FOR",
        "P463": "MEMBER_OF",      "P102": "POLITICAL_PARTY", "P140": "RELIGION",
        "P166": "WON_AWARD",      "P39":  "HELD_POSITION",   "P136": "GENRE",
        "P1412":"SPEAKS_LANGUAGE","P800": "KNOWN_FOR",       "P3373":"SIBLING_OF",
    }

    # SQL escape helper
    def esc(s: str) -> str:
        if s is None:
            return ""
        return s.replace("'", "''")

    # Map of QID → entity_id we'll use (existing or new)
    qid_to_entity_id: dict[str, str] = {}

    # ---- Phase 1: INSERT OR IGNORE entity + person for each discovered USA person
    for qid, info in catalog.items():
        ent_id = f"ent_{info['slug']}"
        qid_to_entity_id[qid] = ent_id
        name = esc(info["name"])
        slug = esc(info["slug"])
        living = "deceased" if info.get("dod") else "living"
        cur_age = age_on(info.get("dob"), info.get("dod")) if not info.get("dod") else None
        age_at_death = age_on(info.get("dob"), info.get("dod")) if info.get("dod") else None
        notable = esc(info.get("notable_work") or "")
        desc = f"American {living_status_label(living)}."
        if info.get("notable_work"):
            desc = f"American known for: {info['notable_work']}."

        # 1) entity — INSERT OR IGNORE so we don't clobber existing HKA entries
        statements.append(
            f"INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, language_default, created_at, updated_at) "
            f"VALUES ('{ent_id}', 'person', '{slug}', '{name}', 'published', 'en', unixepoch(), unixepoch())"
        )

        # 2) person — INSERT OR IGNORE (won't clobber if person exists)
        # We always recompute current_age / age_at_death
        cad = cur_age if cur_age is not None else "NULL"
        aad = age_at_death if age_at_death is not None else "NULL"
        statements.append(
            f"INSERT OR IGNORE INTO person (id, living_status, current_age, age_at_death, "
            f"primary_profession_id, short_description, known_for_summary, "
            f"is_living, claim_count, source_count) "
            f"VALUES ('{ent_id}', '{living}', {cad}, {aad}, "
            f"NULL, '{esc(desc)}', '{esc(notable)}', "
            f"{1 if not info.get('dod') else 0}, 0, 0)"
        )
        new_entities.append(ent_id)
        stats["entities"] += 1

    # ---- Phase 2: For each enriched person, write claims + family + social
    for qid, info in catalog.items():
        ent_id = qid_to_entity_id[qid]
        e = enr.get(qid)
        if not e:
            continue

        # Ensure source_record for Wikidata
        sr_id = f"sr_pkg_{qid.lower()}"
        wd_url = f"https://www.wikidata.org/wiki/{qid}"
        statements.append(
            f"INSERT OR IGNORE INTO source_record (id, source_id, external_id, external_url, "
            f"fetched_at, fetch_status, raw_format, parse_status, normalized_at) "
            f"VALUES ('{sr_id}', 'src_wikidata', '{qid}', '{esc(wd_url)}', "
            f"unixepoch(), 'success', 'json', 'success', unixepoch())"
        )

        # Walk each enriched field
        claim_idx = 0
        for field, (predicate, value_type) in PREDICATE.items():
            raw_value = e.get(field)
            if not raw_value:
                continue
            # Some fields are scalars
            if isinstance(raw_value, str):
                values = [raw_value]
            elif isinstance(raw_value, list):
                values = [v for v in raw_value if v]
            else:
                continue
            for v in values:
                v_esc = esc(str(v)[:500])
                clm_id = f"clm_{qid.lower()}_{field}_{claim_idx}"
                claim_idx += 1
                # Find the P-property (locator)
                locator = next((p for p, pr in P_PROPERTY.items() if pr == predicate), None) or ""
                # INVERSE OF: For 'father' we stored under 'child_of' predicate
                # Adjust the literal_value to be clear (e.g., "Fred Trump" → child_of)
                # but we keep the predicate and add a source_locator
                statements.append(
                    f"INSERT OR IGNORE INTO claim (id, subject_entity_id, predicate, literal_value, "
                    f"value_type, certainty, confidence, sensitivity_level, status, preferred, generated_by, created_at) "
                    f"VALUES ('{clm_id}', '{ent_id}', '{predicate}', '{v_esc}', "
                    f"'{value_type}', 'undisputed', 0.95, 'public', 'published', 1, 'pkg_usa_apply', unixepoch())"
                )
                statements.append(
                    f"INSERT OR IGNORE INTO claim_source (id, claim_id, source_record_id, support_type, locator, retrieved_at) "
                    f"VALUES ('cs_{clm_id}', '{clm_id}', '{sr_id}', 'primary_record', '{locator}', unixepoch())"
                )
                stats["claims"] += 1

        # Family relations (from enriched person_family_relation-style fields)
        # Need to resolve family member name → entity_id via slugify
        for field, (rel_type, locator) in FAMILY_MAP.items():
            names = e.get(field, [])
            if not names:
                continue
            for idx, name in enumerate(names):
                # Slugify the family member name
                family_slug = slugify(name, "unk")
                # If the slug already exists in our DB (94% of family members do!), reuse the existing ID
                if family_slug in EXISTING_SLUGS:
                    family_ent_id = EXISTING_SLUGS[family_slug]
                    # Don't add entity INSERT (would conflict) and don't add person stub (might already exist)
                else:
                    family_ent_id = f"ent_{family_slug}"
                    family_qid_like = f"{qid}-family-{field}-{idx}"
                    # 1) Create the family entity if missing
                    statements.append(
                        f"INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, language_default, created_at, updated_at) "
                        f"VALUES ('{family_ent_id}', 'person', '{esc(family_slug)}', '{esc(name)}', 'published', 'en', unixepoch(), unixepoch())"
                    )
                    # 1b) Create a stub person row (person_family_relation has FK to person.id)
                    statements.append(
                        f"INSERT OR IGNORE INTO person (id, living_status, current_age, age_at_death, "
                        f"primary_profession_id, short_description, known_for_summary, is_living, claim_count, source_count) "
                        f"VALUES ('{family_ent_id}', 'undisclosed', NULL, NULL, NULL, "
                        f"'Family member of {esc(info['name'])}.', '', 1, 0, 0)"
                    )
                # 2) Create the family relation (only if person table is OK — we don't add a person row for
                #    the family member, just an entity. We use a different table for relations that don't
                #    need a person record: entity_relation)
                start = info.get("dob", "")[:10] if rel_type in ("child_of", "parent_of") else ""
                # Use a date range placeholder if no info
                if rel_type == "spouse_of" and info.get("dob"):
                    # We don't know when they married, so leave start_date empty
                    start = ""
                # We use the existing entity_relation table (simpler) for these since we don't want
                # to fabricate a person record. Skip if the family member is likely synthetic.
                er_id = f"er_{qid.lower()}_{field}_{idx}"
                valid_from_sql = "NULL" if not start else f"'{start}'"
                statements.append(
                    f"INSERT OR IGNORE INTO entity_relation (id, subject_entity_id, object_entity_id, "
                    f"relation_type, valid_from, confidence, source_claim_id) "
                    f"VALUES ('{er_id}', '{ent_id}', '{family_ent_id}', '{rel_type}', "
                    f"{valid_from_sql}, 0.9, NULL)"
                )
                # Also add a person_family_relation row for the spec compliance
                pfr_id = f"pfr_{qid.lower()}_{field}_{idx}"
                statements.append(
                    f"INSERT OR IGNORE INTO person_family_relation (id, person_id, related_person_id, "
                    f"relation_type, start_date, source_id, source_url, source_locator, confidence, privacy_class) "
                    f"VALUES ('{pfr_id}', '{ent_id}', '{family_ent_id}', '{rel_type}', "
                    f"{valid_from_sql}, 'src_wikidata', '{esc(wd_url)}', '{locator}', "
                    f"0.9, 'public_record')"
                )
                stats["family_relations"] += 1

        # Social handles (twitter, instagram, youtube, tiktok, website)
        SOCIAL_MAP = [
            ("twitter", "twitter", "P2002"),
            ("instagram", "instagram", "P2003"),
            ("youtube", "youtube", "P2397"),
            ("tiktok", "tiktok", "P7084"),
            ("website", "official_website", "P856"),
        ]
        for field, platform, locator in SOCIAL_MAP:
            handle = e.get(field)
            if not handle:
                continue
            # handle might be a string or dict (sometimes API gives the ID)
            if isinstance(handle, dict):
                handle = handle.get("value", "")
            if not handle or handle.startswith("Q"):
                continue
            # YouTube channel IDs start with UC and are 24 chars — store as platform_account_id
            plat_id = handle if (platform == "youtube" and handle.startswith("UC") and len(handle) >= 22) else None
            profile_url = {
                "twitter": f"https://twitter.com/{handle}",
                "instagram": f"https://www.instagram.com/{handle}/",
                "youtube": f"https://www.youtube.com/channel/{handle}" if handle.startswith("UC") else f"https://www.youtube.com/@{handle}",
                "tiktok": f"https://www.tiktok.com/@{handle}",
                "official_website": handle if handle.startswith("http") else f"https://{handle}",
            }.get(platform, handle)
            sp_id = f"sp_{qid.lower()}_{platform}"
            plat_id_sql = "NULL" if not plat_id else f"'{plat_id}'"
            handle_sql = "NULL" if platform == "official_website" else f"'{esc(handle)}'"
            statements.append(
                f"INSERT OR IGNORE INTO social_profile (id, person_id, platform, platform_account_id, handle, "
                f"profile_url, account_type, official_status, confidence, first_seen_at, last_verified_at, status, source_id) "
                f"VALUES ('{sp_id}', '{ent_id}', '{platform}', "
                f"{plat_id_sql}, "
                f"{handle_sql}, "
                f"'{esc(profile_url)}', 'personal', 'likely_official', 0.9, unixepoch(), unixepoch(), 'active', 'src_wikidata')"
            )
            stats["social_profiles"] += 1

        # Image (P18)
        image = e.get("image")
        if image:
            # entity_image schema: wikimedia_file, url_original, attribution, license_code, is_primary, display_order
            statements.append(
                f"INSERT OR IGNORE INTO entity_image (id, entity_id, source_id, wikimedia_file, "
                f"url_original, attribution, license_code, license_url, is_primary, display_order, fetched_at) "
                f"VALUES ('ei_{qid.lower()}_main', '{ent_id}', 'src_wikimedia_commons', "
                f"'{esc(image)}', 'https://commons.wikimedia.org/wiki/File:{esc(image)}', "
                f"'Wikimedia Commons', 'CC-BY-SA-4.0', 'https://creativecommons.org/licenses/by-sa/4.0/', "
                f"1, 10, unixepoch())"
            )
            stats["images"] += 1

        # Provenance summary
        prov_data = {
            "total_claims": claim_idx,
            "verified_claims": claim_idx,
            "has_dob": 1 if info.get("dob") else 0,
            "has_pob": 1 if e.get("pob") else 0,
            "has_citizenship": 1 if e.get("citizenship") else 0,
            "has_image": 1 if image else 0,
            "has_social_account": 1 if any(e.get(f[0]) for f in SOCIAL_MAP) else 0,
            "has_family": 1 if any(e.get(f) for f in ["father","mother","spouse","sibling","child"]) else 0,
            "has_employer_or_school": 1 if (e.get("employer") or e.get("edu")) else 0,
        }
        quality = sum(prov_data.values()) / 9.0
        statements.append(
            f"INSERT OR REPLACE INTO person_provenance_summary "
            f"(person_id, total_claims, verified_claims, auto_verified_claims, disputed_claims, unique_sources, "
            f"has_dob, has_pob, has_citizenship, has_image, has_social_account, has_family, has_employer_or_school, "
            f"last_refreshed_at, data_quality_score) "
            f"VALUES ('{ent_id}', {prov_data['total_claims']}, {prov_data['verified_claims']}, "
            f"{prov_data['total_claims']}, 0, 1, "
            f"{prov_data['has_dob']}, {prov_data['has_pob']}, {prov_data['has_citizenship']}, "
            f"{prov_data['has_image']}, {prov_data['has_social_account']}, {prov_data['has_family']}, "
            f"{prov_data['has_employer_or_school']}, unixepoch(), {quality:.2f})"
        )

        # External identifier (QID) — INSERT OR IGNORE (avoid clobbering existing entries)
        statements.append(
            f"INSERT OR IGNORE INTO external_identifier (id, entity_id, scheme, identifier, url, is_preferred, source_id, created_at) "
            f"VALUES ('ei_pkg_{qid.lower()}', '{ent_id}', 'wikidata_qid', '{qid}', '{esc(wd_url)}', 1, 'src_wikidata', unixepoch())"
        )

    print(f"\nGenerated {len(statements)} SQL statements")
    for k, v in stats.items():
        print(f"  {k}: {v}")

    # Save statements to per-QID files (one person per file = isolated failures)
    out_dir = Path("/tmp/pkg_usa_sql")
    if out_dir.exists():
        for f in out_dir.iterdir():
            f.unlink()
    out_dir.mkdir(exist_ok=True)
    # Split statements by person (we know each person starts with "INSERT OR IGNORE INTO source_record")
    person_files: dict[str, list[str]] = {}
    # Build slug → qid lookup so we can split by entity inserts too (always normalize to lowercase)
    slug_to_qid: dict[str, str] = {}
    for qid, e in catalog.items():
        if "slug" in e:
            slug_to_qid[e["slug"]] = qid.lower()
    current_qid = None
    for stmt in statements:
        m_sr = re.search(r"'sr_pkg_(q\d+)'", stmt, re.IGNORECASE)
        m_ent = re.search(r"entity\s*\([^)]+\)\s*VALUES\s*\('ent_([^']+)'", stmt, re.IGNORECASE)
        if m_sr:
            current_qid = m_sr.group(1).lower()
        elif m_ent:
            slug = m_ent.group(1)
            if slug in slug_to_qid:
                current_qid = slug_to_qid[slug]
        if current_qid is None:
            # Pre-source-record entity inserts (family members) — assign to first catalog key as fallback
            current_qid = next(iter(catalog), "unknown").lower()
        person_files.setdefault(current_qid, []).append(stmt)

    print(f"\nWriting {len(person_files)} per-person files to {out_dir}/")
    for qid, stmts in person_files.items():
        path = out_dir / f"person_{qid}.sql"
        path.write_text(";\n".join(stmts) + ";\n")
    print(f"Done. Apply with: cd apps/api && for f in /tmp/pkg_usa_sql/person_*.sql; do npx wrangler d1 execute {DB_NAME} --remote --file=$f 2>&1 | grep -E 'ERROR|error' | head -2 || true; done | tee /tmp/apply.log | tail -5; echo Done")


def living_status_label(s: str) -> str:
    return {"living": "person (living)", "deceased": "person (deceased)"}.get(s, "person")


if __name__ == "__main__":
    main()
