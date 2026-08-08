#!/usr/bin/env python3
"""fortune500_seed.py — Generate SQL migration for Fortune 500 US companies.

Reads fortune500_2025.json, generates INSERT statements for:
  - entity table (type='organization')
  - organization table (org_type, founded_year, etc.)

Output: SQL file with INSERT OR IGNORE statements.
"""
import json
import os
import re
import sys
import unicodedata

# Load Fortune 500 data
DATA = json.load(open(os.path.join(os.path.dirname(__file__), 'fortune500_2025.json')))

# Common suffix replacements for cleaner slugs
SUFFIXES = [' Inc', ' Inc.', ' Corporation', ' Corp', ' Corp.', ' Co.', ' Company', ' Holdings',
            ' Industries', ' International', ' Group', ' Group Inc', ' PLC', ' Ltd', ' Ltd.']

def slugify(s):
    """Generate URL slug from name."""
    s = s.strip()
    for suf in SUFFIXES:
        if s.endswith(suf):
            s = s[:-len(suf)]
            break
    s = s.lower()
    s = re.sub(r"[^a-z0-9\s-]", "", s)
    s = re.sub(r"\s+", "-", s)
    s = re.sub(r"-+", "-", s)
    s = s.strip('-')
    return s

def escape_sql(s):
    if s is None:
        return "NULL"
    return "'" + s.replace("'", "''") + "'"

def org_type_for(industry):
    """Map industry to a more specific org_type."""
    n = (industry or '').lower()
    if 'tech' in n or 'software' in n or 'cloud' in n or 'semiconductor' in n or 'it ' in n or 'cybersec' in n:
        return 'technology'
    if 'finance' in n or 'bank' in n or 'insur' in n or 'fintech' in n:
        return 'financial'
    if 'retail' in n:
        return 'retail'
    if 'manufact' in n or 'industrial' in n or 'aerospace' in n or 'defense' in n or 'auto' in n or 'transport' in n or 'logist' in n or 'energy' in n or 'oil' in n or 'petroleum' in n or 'airline' in n or 'rail' in n or 'mining' in n or 'chemical' in n or 'steel' in n:
        return 'industrial'
    if 'health' in n or 'pharma' in n or 'medical' in n or 'biotech' in n:
        return 'healthcare'
    if 'media' in n or 'stream' in n or 'telecom' in n or 'cable' in n or 'broadcast' in n:
        return 'media'
    if 'consumer' in n or 'apparel' in n or 'food' in n or 'beverage' in n or 'restaurant' in n or 'retail' in n or 'tobacco' in n:
        return 'consumer'
    if 'consult' in n or 'account' in n or 'professional services' in n or 'staffing' in n:
        return 'services'
    return 'conglomerate'

def render_company_sql(company):
    name = company['name']
    slug = slugify(name)
    entity_id = f"org_{slug}"
    org_type = org_type_for(company.get('industry', ''))
    founded = company.get('founded')
    dissolved = None  # All Fortune 500 are still active
    # Map country from HQ state (all US)
    country = 'US'
    hq_state = company.get('hq_state', '')
    hq_city = company.get('hq_city', '')
    # short_description
    industry = company.get('industry', '')
    revenue = company.get('revenue_mm', 0)
    employees = company.get('employees', 0)
    summary = f"{name} is an American {industry.lower()} company headquartered in {hq_city}, {hq_state}. Founded in {founded}, it has approximately {employees:,} employees and annual revenue of ${revenue:,} million." if founded and employees else f"{name} is an American {industry.lower()} company headquartered in {hq_city}, {hq_state}."
    summary = summary.replace("'", "''")
    return f"""-- Company {name} (Fortune 500 #{company.get('rank', '?')})
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('{entity_id}', 'organization', '{slug}', '{name.replace("'", "''")}', 'published', '{summary[:500]}', '["src_wikidata","src_dbpedia"]', unixepoch(), {max(0, 510 - company.get('rank', 500))}, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('{entity_id}', '{org_type}', {founded if founded else 'NULL'}, {dissolved if dissolved else 'NULL'}, NULL);
"""

def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0035_fortune500_2025.sql"

    print(f"[fortune500] Loading {len(DATA)} companies...")
    # Dedupe by canonical_name (we have some accidental dupes in the source data)
    seen = set()
    unique = []
    for c in DATA:
        key = c['name'].lower()
        if key in seen:
            continue
        seen.add(key)
        unique.append(c)
    print(f"[fortune500] {len(unique)} unique companies after dedupe")

    with open(out_path, 'w') as f:
        f.write("-- ========================================\n")
        f.write(f"-- Migration 0035: Fortune 500 2025 (US companies)\n")
        f.write(f"-- Generated: {os.popen('date -u +%Y-%m-%dT%H:%M:%SZ').read().strip()}\n")
        f.write(f"-- Source: https://en.wikipedia.org/wiki/List_of_largest_companies_in_the_United_States_by_revenue\n")
        f.write(f"-- {len(unique)} companies, top by 2024 revenue\n")
        f.write("-- Schema: entity (type='organization') + organization\n")
        f.write("-- Note: Fortune 500 ranks 1-500. Revenue data is from 2024 fiscal year.\n")
        f.write("-- ========================================\n\n")
        for c in unique:
            f.write(render_company_sql(c))
            f.write("\n")

    print(f"[fortune500] Wrote {out_path}")

if __name__ == "__main__":
    main()
