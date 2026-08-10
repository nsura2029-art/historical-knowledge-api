#!/usr/bin/env python3
"""orgs_seed_v2.py — Generate SQL migration for orgs from combined sources.

Sources combined (deduped by normalized name):
  1. Fortune 500 2025 (US by revenue) — has rank, industry, revenue, employees, hq, founded
  2. S&P 500 — has ticker, sector, sub_industry, hq, founded
  3. Top US banks (Wikipedia) — has hq
  4. Wikidata public companies (instance of Q891723, country US, has P159 hq, has P1128 employees)

Usage:
    python3 packages/db/seed/orgs_seed_v2.py [output.sql] [limit]
"""
import json
import os
import re
import subprocess
import sys
import time
import urllib.parse
import urllib.request

API_DIR = "/workspace/historical-knowledge-api/apps/api"
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))


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
    except Exception:
        return []


# Industry → org_type (same mapping as F500)
def org_type_for(industry):
    n = (industry or '').lower()
    if 'tech' in n or 'software' in n or 'cloud' in n or 'semiconductor' in n or 'it ' in n or 'cybersec' in n or 'internet' in n:
        return 'technology'
    if 'bank' in n or 'finance' in n or 'insur' in n or 'fintech' in n or 'capital' in n or 'bancorp' in n or 'bancshares' in n:
        return 'financial'
    if 'retail' in n or 'wholesale' in n:
        return 'retail'
    if 'manufact' in n or 'industrial' in n or 'aerospace' in n or 'defense' in n or 'auto' in n or 'transport' in n or 'logist' in n or 'energy' in n or 'oil' in n or 'petroleum' in n or 'airline' in n or 'rail' in n or 'mining' in n or 'chemical' in n or 'steel' in n or 'machinery' in n or 'building' in n:
        return 'industrial'
    if 'health' in n or 'pharma' in n or 'medical' in n or 'biotech' in n or 'hospital' in n:
        return 'healthcare'
    if 'media' in n or 'stream' in n or 'telecom' in n or 'cable' in n or 'broadcast' in n or 'entertainment' in n or 'publishing' in n:
        return 'media'
    if 'consumer' in n or 'apparel' in n or 'food' in n or 'beverage' in n or 'restaurant' in n or 'tobacco' in n or 'cosmetic' in n:
        return 'consumer'
    if 'consult' in n or 'account' in n or 'professional services' in n or 'staffing' in n or 'holding' in n:
        return 'services'
    if 'real estate' in n or 'reit' in n or 'property' in n:
        return 'real_estate'
    if 'utility' in n or 'electric' in n or 'gas' in n or 'water' in n:
        return 'utilities'
    return 'corporate'


# Suffix replacements for cleaner slugs
SUFFIXES = [' Inc', ' Inc.', ' Corporation', ' Corp', ' Corp.', ' Co.', ' Company', ' Holdings',
            ' Industries', ' International', ' Group', ' Group Inc', ' PLC', ' Ltd', ' Ltd.',
            ' Incorporated', ' LLC', ' LP', ' SA', ' S.A.', ' AG', ' NV', ' N.V.',
            ' & Co.', ' & Company', ' Bancorp', ' Bancshares', ' Financial', ' Financial Group',
            ' Enterprises', ' Partners', ' Holdings Inc', ' Holdings, Inc', ' Technologies', ' Technology']


def slugify(s, existing_slugs=None):
    s = (s or '').strip()
    for suf in SUFFIXES:
        if s.endswith(suf):
            s = s[:-len(suf)].strip()
            break
    base = s.lower()
    base = re.sub(r"[^a-z0-9\s-]", "", base)
    base = re.sub(r"\s+", "-", base)
    base = re.sub(r"-+", "-", base)
    base = base.strip('-')
    if not existing_slugs:
        return base
    # If base slug collides with a non-organization entity, try with suffixes
    if base in existing_slugs and existing_slugs[base] != 'organization':
        for suf in ['inc', 'corp', 'co', 'group', 'company']:
            candidate = f"{base}-{suf}"
            if candidate not in existing_slugs or existing_slugs[candidate] == 'organization':
                return candidate
    return base


def escape_sql(s):
    if s is None:
        return "NULL"
    return "'" + s.replace("'", "''") + "'"


def normalize_company(c):
    """Normalize a company dict to F500-like schema."""
    industry = c.get('industry') or c.get('sector') or c.get('sub_industry') or 'Diversified'
    if c.get('source') == 'Bank':
        industry = 'Banking'
    if c.get('source') == 'Wikidata':
        industry = ''  # We'll fetch later or leave empty
    return {
        'name': c['name'],
        'industry': industry,
        'hq_city': c.get('hq_city', ''),
        'hq_state': c.get('hq_state', ''),
        'founded': c.get('founded'),
        'ticker': c.get('ticker', ''),
        'qid': c.get('qid', ''),
        'source': c.get('source', ''),
    }


def render_company_sql(company, existing_slugs):
    name = company['name']
    slug = slugify(name, existing_slugs)
    if not slug:
        return None  # Skip if no usable slug
    entity_id = f"org_{slug}"
    org_type = org_type_for(company.get('industry', ''))
    founded = company.get('founded')
    if isinstance(founded, str):
        m = re.search(r'(\d{4})', founded)
        founded = int(m.group(1)) if m else None
    if founded and (founded < 1600 or founded > 2030):
        founded = None

    country = 'US'
    hq_city = company.get('hq_city', '') or ''
    hq_state = company.get('hq_state', '') or ''
    industry = company.get('industry', '') or 'Diversified'

    summary = f"{name} is an American {industry.lower()} company"
    if hq_city and hq_state:
        summary += f" headquartered in {hq_city}, {hq_state}"
    if founded:
        summary += f", founded in {founded}"
    summary += "."
    summary = summary.replace("'", "''")[:500]

    popularity = 25  # default for non-F500
    if company.get('source') == 'F500':
        popularity = max(0, 510 - (company.get('rank', 500) or 500))

    return f"""-- Company: {name} (source={company.get('source', '?')})
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('{entity_id}', 'organization', '{slug}', '{name.replace("'", "''")}', 'published', '{summary}', '["src_en_wikipedia"]', unixepoch(), {popularity}, 'en');

INSERT OR IGNORE INTO organization (id, org_type, founded_year, dissolved_year, wikidata_qid)
VALUES ('{entity_id}', '{org_type}', {founded if founded else 'NULL'}, NULL, {escape_sql(company.get('qid', '')) or 'NULL'});
"""


def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0074_orgs_v2.sql"
    limit = int(sys.argv[2]) if len(sys.argv) > 2 else 2000

    # Load combined orgs
    with open(os.path.join(SCRIPT_DIR, "orgs_combined.json")) as f:
        all_orgs = json.load(f)
    print(f"[orgs-v2] loaded {len(all_orgs)} orgs from combined sources", file=sys.stderr)

    # Get existing org slugs in DB
    print(f"[orgs-v2] querying existing entity slugs in DB...", file=sys.stderr)
    existing = d1_query("SELECT slug, type FROM entity")
    existing_slugs = {r['slug']: r['type'] for r in existing}
    print(f"[orgs-v2] {len(existing_slugs)} existing entities in DB", file=sys.stderr)

    out_f = open(out_path, "w")
    out_f.write(f"""-- ========================================
-- Migration 0074: Orgs vertical v2 (1000+ milestone)
-- Source: F500 + S&P500 + Banks + Wikidata public companies
-- {len(all_orgs)} unique companies, deduped by normalized name
-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}
-- ========================================

""")
    out_f.flush()

    n_ok, n_skip, n_existing = 0, 0, 0
    for i, c in enumerate(all_orgs):
        norm = normalize_company(c)
        slug = slugify(norm['name'], existing_slugs)
        if not slug:
            n_skip += 1
            continue
        if slug in existing_slugs and existing_slugs[slug] == 'organization':
            n_existing += 1
            continue

        sql = render_company_sql(norm, existing_slugs)
        if not sql:
            n_skip += 1
            continue
        out_f.write(sql)
        out_f.write("\n")
        # Mark this slug as taken (to avoid later collisions in same batch)
        existing_slugs[slug] = 'organization'
        n_ok += 1

        if (i + 1) % 100 == 0:
            print(f"[orgs-v2] {i+1}/{len(all_orgs)} ({n_ok} new, {n_existing} existing, {n_skip} skip)", file=sys.stderr)
            out_f.flush()

    out_f.close()
    print(f"\n[orgs-v2] done: {n_ok} new inserts, {n_existing} already in DB, {n_skip} skipped", file=sys.stderr)
    print(f"[orgs-v2] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
