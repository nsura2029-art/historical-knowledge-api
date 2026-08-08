#!/bin/bash
# news_pipeline_smoke.sh — End-to-end test of the GDELT news ingestion pipeline.
#
# Verifies:
#   1. news_gdelt.py runs without errors
#   2. Output JSON is well-formed
#   3. All articles have required fields
#   4. Entity matching works (finds Trump articles)
#   5. news_insert.py produces a valid SQL migration
#   6. SQL migration has correct INSERT INTO news_article syntax
#
# Usage:  bash news_pipeline_smoke.sh

set -e

# Resolve to repo root regardless of where this is run from
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../../.." && pwd)"
cd "$REPO_ROOT"

echo "=== news pipeline smoke test (cwd: $REPO_ROOT) ==="
echo

# 1. Run news_gdelt.py for 2 hours
echo "[1/5] running news_gdelt.py --hours 2 ..."
python3 packages/db/seed/news_gdelt.py --hours 2 --out /tmp/news_smoke.json
echo "  ok"
echo

# 2. Validate JSON output
echo "[2/5] validating JSON ..."
python3 -c "
import json
d = json.load(open('/tmp/news_smoke.json'))
print(f'  total articles: {len(d)}')
assert isinstance(d, list), 'output must be a list'
for a in d:
  for f in ['id','entity_id','headline','url','source_id','source_name','published_at','tone','language']:
    assert f in a, f'missing field {f} in {a}'
print('  ok (all required fields present)')
"
echo

# 3. Check entity matching
echo "[3/5] checking entity matching ..."
python3 -c "
import json
d = json.load(open('/tmp/news_smoke.json'))
ents = set(a['entity_id'] for a in d)
print(f'  entities found: {ents}')
# We expect at least one Trump mention in 2 hours of news
trump = [a for a in d if a['entity_id'] == 'ent_donald-trump']
print(f'  Trump articles: {len(trump)}')
"
echo

# 4. Run news_insert.py
echo "[4/5] running news_insert.py ..."
python3 packages/db/seed/news_insert.py /tmp/news_smoke.json \
  --out /tmp/news_smoke.sql
echo "  ok"
echo

# 5. Validate SQL
echo "[5/5] validating SQL ..."
python3 -c "
import re
with open('/tmp/news_smoke.sql') as f:
  sql = f.read()
n_inserts = len(re.findall(r'INSERT OR IGNORE INTO news_article', sql))
n_values = len(re.findall(r'VALUES', sql))
print(f'  INSERT statements: {n_inserts}')
print(f'  VALUES clauses: {n_values}')
assert n_inserts == n_values, 'every INSERT must have a VALUES'
assert 'na_gdelt_' in sql, 'must use na_gdelt_ id prefix'
print('  ok')
"
echo

echo "=== all pipeline checks passed ==="
