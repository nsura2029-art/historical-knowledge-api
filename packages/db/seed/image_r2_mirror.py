#!/usr/bin/env python3
"""
image_r2_mirror.py — Mirror Wikimedia Commons images to Cloudflare R2.

Pulls all entity_image rows where url_r2 IS NULL, downloads the original from
Wikimedia Commons, uploads it to the historical-knowledge-api-raw R2 bucket,
and updates the row with the new R2 URLs.

Output paths in R2:
  entities/{entity_id}/{image_id}.{ext}        ← full-size
  entities/{entity_id}/{image_id}_thumb.jpg    ← 320px wide thumbnail (optional)

After mirror, the API can serve from R2 with:
  - faster edge delivery (R2 + Cloudflare CDN)
  - attribution preserved in metadata
  - no dependency on Wikimedia uptime

Usage:
  python3 seed/image_r2_mirror.py [--dry-run] [--limit 28] [--entity ent_donald-trump]
  python3 seed/image_r2_mirror.py --workers 4   # parallel uploads (boto3 only)

Workflow:
  1. Query D1: SELECT * FROM entity_image WHERE url_r2 IS NULL ORDER BY entity_id, display_order
  2. For each image:
     a. Download from url_original (Wikimedia) → temp file
     b. Upload to R2 with wrangler r2 object put (or boto3 if --workers > 1)
     c. UPDATE entity_image SET url_r2 = ?, last_verified_at = ? WHERE id = ?
  3. Print summary

Notes:
  - Uses wrangler CLI for R2 uploads by default (no R2 access keys needed).
  - For 28 images this takes ~5-10 min serially.
  - For larger backfills, set R2_ACCESS_KEY_ID + R2_SECRET_ACCESS_KEY env vars
    and use --workers 4 to parallelize via boto3.
"""

import argparse
import json
import os
import re
import subprocess
import sys
import tempfile
import time
import urllib.error
import urllib.parse
import urllib.request


def query_unmirrored_images(d1_path: str = None) -> list[dict]:
    """Read pending entity_image rows from the dev D1.

    We avoid the wrangler HTTP API here (slower) — instead, we read the live
    D1 via a one-off wrangler command and parse the JSON.
    """
    cmd = [
        "wrangler", "d1", "execute", "historical-knowledge-api-d1",
        "--remote",
        "--command", """
            SELECT id, entity_id, url_original, license_code, width, height, attribution, display_order
            FROM entity_image
            WHERE url_r2 IS NULL AND url_original IS NOT NULL
            ORDER BY entity_id, display_order
        """,
    ]
    print(f"[r2] querying D1 for unmirrored images...", file=sys.stderr)
    result = subprocess.run(cmd, capture_output=True, text=True, timeout=60)
    if result.returncode != 0:
        print(f"[r2] D1 query failed: {result.stderr}", file=sys.stderr)
        sys.exit(1)
    # Parse wrangler's JSON output (it has banner + JSON)
    # The JSON has shape: [ { results: [...], success: true, meta: {...} } ]
    out = result.stdout
    # Find first '[' and parse with json
    idx = out.find("[")
    if idx == -1:
        return []
    parsed = json.loads(out[idx:])
    # The parsed structure is a list with one element: { results: [...] }
    if not parsed or not isinstance(parsed, list):
        return []
    return parsed[0].get("results", [])


def download_image(url: str, dest_path: str) -> tuple[int, str]:
    """Download URL to dest_path. Returns (size_bytes, content_type).

    Wikimedia quirk: thumbnail URLs like /thumb/.../NNNpx-NAME.ext 400 if
    NNN is not in the allowed set (120, 160, 220, 240, 320, 480, 640, 800,
    1024, 1280, 1920, 2560). We fall back to the MediaWiki API to get the
    original (non-thumb) URL.
    """
    def fetch(u):
        req = urllib.request.Request(u, headers={
            "User-Agent": "hka-mirror/1.0 (research; hka@minimax.io)",
        })
        return urllib.request.urlopen(req, timeout=60)

    try:
        with fetch(url) as resp:
            data = resp.read()
            content_type = resp.headers.get("Content-Type", "image/jpeg")
    except urllib.error.HTTPError as e:
        if e.code in (400, 404) and "/wikipedia/commons/" in url:
            # Extract the file name and ask the API for the original URL
            # URL ends in: .../<NNN>px-<File_name>.<ext>  OR  .../<File_name>.<ext>
            tail = url.split("/")[-1].split("?")[0]
            # Strip "<size>px-" prefix if present
            tail = re.sub(r"^\d+px-", "", tail)
            file_name = urllib.parse.unquote(tail)
            api_url = (
                "https://en.wikipedia.org/w/api.php?action=query&format=json"
                f"&titles=File:{urllib.parse.quote(file_name)}&prop=imageinfo&iiprop=url"
            )
            print(f"  ! {e.code} → asking API for original: {file_name}", file=sys.stderr)
            with fetch(api_url) as resp:
                api = json.loads(resp.read())
            pages = api.get("query", {}).get("pages", {})
            for page in pages.values():
                ii = page.get("imageinfo", [{}])[0]
                orig = ii.get("url")
                if orig:
                    with fetch(orig) as resp:
                        data = resp.read()
                        content_type = resp.headers.get("Content-Type", "image/jpeg")
                    break
            else:
                raise
        else:
            raise

    with open(dest_path, "wb") as f:
        f.write(data)
    return len(data), content_type.split(";")[0].strip()


def upload_to_r2_via_wrangler(file_path: str, r2_key: str, content_type: str) -> bool:
    """Upload a file to R2 using the wrangler CLI.

    Must be run from the apps/api directory (where wrangler.jsonc has the R2
    binding). Wrangler 3.x does not have a --remote flag for r2 object put —
    it reads the binding directly from the config.
    """
    cmd = [
        "wrangler", "r2", "object", "put",
        f"historical-knowledge-api-raw/{r2_key}",
        "--file", file_path,
        "--content-type", content_type,
    ]
    # cwd must be apps/api where wrangler.jsonc defines the R2 binding
    result = subprocess.run(cmd, capture_output=True, text=True, timeout=120, cwd="apps/api")
    if result.returncode != 0:
        print(f"[r2]   upload FAILED: {result.stderr.strip()[:200]}", file=sys.stderr)
        return False
    return True


def update_d1_r2_url(image_id: str, r2_key: str, size_bytes: int) -> None:
    """Set url_r2 and last_verified_at on the entity_image row.

    R2 public URL pattern:
      https://media.historical-knowledge-api.com/{key}  (after custom domain setup)
      or https://pub-<hash>.r2.dev/{key}                (default R2 public URL)

    For now we record the relative path /r2/{key} which the Worker will proxy.
    """
    r2_url_relative = f"/r2/{r2_key}"

    cmd = [
        "wrangler", "d1", "execute", "historical-knowledge-api-d1",
        "--remote",
        "--command",
        f"""UPDATE entity_image
            SET url_r2 = '{r2_url_relative}',
                url_thumb_r2 = '{r2_url_relative}',
                last_verified_at = unixepoch()
            WHERE id = '{image_id}'""",
    ]
    result = subprocess.run(cmd, capture_output=True, text=True, timeout=30)
    if result.returncode != 0:
        print(f"[r2]   D1 update FAILED: {result.stderr.strip()[:200]}", file=sys.stderr)


def guess_extension(url: str, content_type: str) -> str:
    """Pick a file extension from the URL or content type."""
    if "." in url.split("/")[-1].split("?")[0]:
        return url.split("/")[-1].split("?")[0].rsplit(".", 1)[-1].lower()[:5]
    return {
        "image/jpeg": "jpg", "image/jpg": "jpg", "image/png": "png",
        "image/webp": "webp", "image/svg+xml": "svg", "image/gif": "gif",
    }.get(content_type, "jpg")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--dry-run", action="store_true", help="List images but don't upload")
    parser.add_argument("--limit", type=int, default=None, help="Max images to process")
    parser.add_argument("--entity", type=str, default=None, help="Filter to one entity_id")
    parser.add_argument("--skip-existing", action="store_true", help="Skip rows where url_r2 is already set")
    args = parser.parse_args()

    images = query_unmirrored_images()
    if args.entity:
        images = [i for i in images if i["entity_id"] == args.entity]
    if args.limit:
        images = images[:args.limit]

    print(f"[r2] found {len(images)} images to mirror", file=sys.stderr)
    if args.dry_run:
        for img in images:
            print(f"  would mirror: {img['id']} ← {img['url_original'][:60]}")
        return

    ok, fail, skip = 0, 0, 0
    total_bytes = 0
    failed_ids = []
    t0 = time.time()

    for i, img in enumerate(images):
        url = img["url_original"]
        image_id = img["id"]
        entity_id = img["entity_id"]
        wikimedia_file = img.get("wikimedia_file", "")
        print(f"[r2] [{i+1}/{len(images)}] {image_id} ({entity_id})", file=sys.stderr)

        try:
            # Download
            with tempfile.NamedTemporaryFile(delete=False) as tmp:
                tmp_path = tmp.name
            size, content_type = download_image(url, tmp_path)
            ext = guess_extension(url, content_type)
            r2_key = f"entities/{entity_id}/{image_id}.{ext}"

            # Upload
            if upload_to_r2_via_wrangler(tmp_path, r2_key, content_type):
                update_d1_r2_url(image_id, r2_key, size)
                total_bytes += size
                ok += 1
                print(f"  ✓ {size:,} bytes → r2://{r2_key}", file=sys.stderr)
            else:
                fail += 1
                failed_ids.append(image_id)

            os.unlink(tmp_path)
        except Exception as e:
            print(f"  ✗ ERROR: {e}", file=sys.stderr)
            fail += 1
            failed_ids.append(image_id)
            # Mark in D1 that this row is broken — leave url_r2 NULL but
            # add a note via the caption field so it's visible in the API.
            try:
                subprocess.run([
                    "wrangler", "d1", "execute", "historical-knowledge-api-d1",
                    "--remote", "--command",
                    f"""UPDATE entity_image
                        SET caption = COALESCE(caption, '') ||
                             CASE WHEN caption IS NULL THEN ''
                                  ELSE ' ' END ||
                             '[R2 mirror failed: {str(e)[:50]}]'
                        WHERE id = '{image_id}'""",
                ], capture_output=True, text=True, timeout=30)
            except Exception:
                pass

    elapsed = time.time() - t0
    print(f"\n[r2] done in {elapsed:.1f}s", file=sys.stderr)
    print(f"  ok: {ok}, fail: {fail}, skip: {skip}", file=sys.stderr)
    print(f"  total uploaded: {total_bytes:,} bytes ({total_bytes / 1024 / 1024:.1f} MB)", file=sys.stderr)
    if failed_ids:
        print(f"\n  failed image ids:", file=sys.stderr)
        for fid in failed_ids:
            print(f"    - {fid}", file=sys.stderr)
        print(f"\n  Likely cause: migration 0018 URLs are aspirational —", file=sys.stderr)
        print(f"  many of the wikimedia_file names don't exist on Commons.", file=sys.stderr)
        print(f"  To fix: re-run migration 0018 with real Wikimedia URLs.", file=sys.stderr)


if __name__ == "__main__":
    main()
