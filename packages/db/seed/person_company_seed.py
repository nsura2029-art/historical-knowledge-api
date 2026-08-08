#!/usr/bin/env python3
"""
Person <-> company linking migration generator.

Reads person_company_links.json and emits a migration that inserts
entity_relation rows for person <-> organization relationships.
"""
import json
import re
from pathlib import Path

ROOT = Path(__file__).parent
LINKS_FILE = ROOT / "person_company_links.json"
F500_FILE = ROOT / "fortune500_2025.json"
OUT_FILE = ROOT.parent / "migrations" / "0038_person_company_links.sql"

ROLE_TO_RELATION = {
    "founder": "founded",
    "co-founder": "co_founded",
    "ceo": "ceo_of",
    "cto": "cto_of",
    "coo": "coo_of",
    "cfo": "cfo_of",
    "president": "president_of",
    "chairman": "chairman_of",
    "owner": "owns",
}

# Common suffix replacements for cleaner slugs (must match fortune500_seed.py)
SUFFIX_REPLACEMENTS = [
    (r'\bInc\.?\b', ''),
    (r'\bIncorporated\b', ''),
    (r'\bCorp\.?\b', ''),
    (r'\bCorporation\b', ''),
    (r'\bCo\.?\b', ''),
    (r'\bCompany\b', ''),
    (r'\bLtd\.?\b', ''),
    (r'\bLLC\b', ''),
    (r'\bLLP\b', ''),
    (r'\bPLC\b', ''),
    (r'\bHoldings?\b', ''),
    (r'\bGroup\b', ''),
    (r'\b&\b', 'and'),
    (r'\band\b', 'and'),
]

def slugify(s):
    """Generate URL slug from name. Matches fortune500_seed.py logic."""
    out = s
    for pat, rep in SUFFIX_REPLACEMENTS:
        out = re.sub(pat, rep, out, flags=re.IGNORECASE)
    out = re.sub(r'[^a-z0-9]+', '-', out.lower()).strip('-')
    return out

def main():
    links = json.loads(LINKS_FILE.read_text())
    f500 = json.loads(F500_FILE.read_text())

    # Build company slug set
    company_slugs = {slugify(c['name']): c['name'] for c in f500}

    out = ["-- Migration 0038: Person <-> company (Fortune 500) links"]
    out.append("-- Generated from person_company_links.json")
    out.append("")
    out.append("BEGIN;")
    out.append("")

    inserted = 0
    skipped_company = 0
    seen = set()

    for link in links:
        pslug = link['person_slug']
        cslug = link['company_slug']
        role = link.get('role', '').lower()
        from_year = link.get('from_year')
        to_year = link.get('to_year')

        if cslug not in company_slugs:
            skipped_company += 1
            continue

        real_name = company_slugs[cslug]
        print(f"  Link: {pslug} -> {cslug} ({real_name}) as {role}") if inserted < 3 else None

        rel = ROLE_TO_RELATION.get(role, role or "associated_with")
        person_id = f"ent_{pslug.replace('-', '_')}"
        company_id = f"org_{cslug.replace('-', '_')}"

        # Dedup
        key = (person_id, company_id, rel)
        if key in seen:
            continue
        seen.add(key)

        from_str = str(from_year) if from_year else "NULL"
        to_str = str(to_year) if to_year else "NULL"

        out.append(
            f"INSERT OR IGNORE INTO entity_relation ("
            f"id, subject_entity_id, object_entity_id, relation_type, valid_from, valid_to, confidence) "
            f"VALUES ("
            f"'rel_{pslug.replace('-', '_')}_{cslug.replace('-', '_')}_{rel}', "
            f"'{person_id}', '{company_id}', '{rel}', {from_str}, {to_str}, 1.0);"
        )
        inserted += 1

    out.append("")
    out.append("COMMIT;")
    out.append("")
    out.append(f"-- Inserted: {inserted} person-company links")
    out.append(f"-- Skipped (company not in Fortune 500): {skipped_company}")
    out.append(f"-- Unique: {len(seen)}")

    OUT_FILE.parent.mkdir(parents=True, exist_ok=True)
    OUT_FILE.write_text("\n".join(out))
    print(f"Written {OUT_FILE}")
    print(f"Inserted: {inserted}, Skipped: {skipped_company}, Unique: {len(seen)}")

if __name__ == "__main__":
    main()
