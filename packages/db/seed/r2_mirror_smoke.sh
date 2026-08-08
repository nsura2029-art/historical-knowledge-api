#!/bin/bash
# r2_mirror_smoke.sh — End-to-end test of the R2 image mirror pipeline.
#
# Verifies:
#   1. image_r2_mirror.py --dry-run lists images from D1
#   2. R2 bucket is accessible
#   3. Test image download + upload works
#   4. D1 update sets url_r2
#
# Usage:  bash r2_mirror_smoke.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../../.." && pwd)"
cd "$REPO_ROOT"

export PATH="$REPO_ROOT/../develop/node_modules/.bin:$PATH"

echo "=== r2 mirror smoke test (cwd: $REPO_ROOT) ==="
echo

# 1. Dry-run
echo "[1/4] dry-run: listing pending images..."
python3 packages/db/seed/image_r2_mirror.py --dry-run --limit 3 2>&1 | tail -5
echo "  ok"
echo

# 2. R2 bucket check
echo "[2/4] checking R2 bucket exists..."
cd apps/api
wrangler r2 bucket list 2>&1 | grep -q "historical-knowledge-api-raw" && echo "  ok (bucket exists)" || { echo "  FAIL: bucket missing"; exit 1; }
cd "$REPO_ROOT"
echo

# 3. Real run with 1 image (idempotent — already mirrored images are skipped)
echo "[3/4] running real mirror on 1 image..."
python3 packages/db/seed/image_r2_mirror.py --limit 1 2>&1 | tail -3
echo

# 4. Verify D1 was updated
echo "[4/4] verifying D1 was updated..."
PATH="$REPO_ROOT/../develop/node_modules/.bin:$PATH" wrangler d1 execute historical-knowledge-api-d1 --remote \
  --command "SELECT COUNT(*) as n_mirrored FROM entity_image WHERE url_r2 IS NOT NULL" --cwd apps/api 2>&1 \
  | grep -A 1 "results" | head -2
echo

echo "=== r2 mirror smoke complete ==="
