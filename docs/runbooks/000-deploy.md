# Deploy runbook — historical-knowledge-api

> TASK-001 deliverable. Per AGENT-INSTRUCTIONS.md §13.

## Deploy to preview (every PR)

```bash
cd apps/api
CLOUDFLARE_API_TOKEN=... CLOUDFLARE_ACCOUNT_ID=... pnpm wrangler deploy --env preview
```

Or via the CI workflow `.github/workflows/ci.yml` — the `deploy-preview` job runs automatically on PRs and requires no manual secrets in the workflow file (uses `secrets.CLOUDFLARE_API_TOKEN` + `secrets.CLOUDFLARE_ACCOUNT_ID` from the GitHub repo settings).

After deploy, the Worker is live at:

- `https://historical-knowledge-api-preview.nsura2029.workers.dev`

## Verify the deploy

```bash
SMOKE_URL=https://historical-knowledge-api-preview.nsura2029.workers.dev \
  node apps/api/scripts/smoke.mjs
```

Expected: 7 passed, 0 failed.

## Deploy to dev

```bash
cd apps/api
CLOUDFLARE_API_TOKEN=... CLOUDFLARE_ACCOUNT_ID=... pnpm wrangler deploy --env dev
```

Worker URL: `https://historical-knowledge-api-dev.nsura2029.workers.dev`

## Deploy to production

```bash
cd apps/api
CLOUDFLARE_API_TOKEN=... CLOUDFLARE_ACCOUNT_ID=... pnpm wrangler deploy --env production
```

Worker URL: `https://historical-knowledge-api.nsura2029.workers.dev`

**Pre-deploy checklist**:

- [ ] All 11 quality commands pass locally
- [ ] Preview deploy has been running for ≥24h without issues
- [ ] CHANGELOG.md updated with the new version entry
- [ ] Cloudflare Workers version log reviewed

## Rollback

Cloudflare Workers keeps version history. To roll back:

```bash
cd apps/api
npx wrangler rollback --env production
```

Or via the Cloudflare dashboard → Workers → historical-knowledge-api-prod → Deployments → "Rollback to this deployment".

## Worker versions

Each deploy is a new immutable Worker version. The current version is reported by:

```bash
curl https://historical-knowledge-api-preview.nsura2029.workers.dev/v1/version
```

The `deployedAt` field shows the ISO 8601 timestamp of the most recent deploy.

## Secrets in GitHub Actions

| Secret                  | Source                                       | Used by                                         |
| ----------------------- | -------------------------------------------- | ----------------------------------------------- |
| `CLOUDFLARE_API_TOKEN`  | Cloudflare → My Profile → API Tokens         | `deploy-preview` job, all `wrangler` commands   |
| `CLOUDFLARE_ACCOUNT_ID` | Cloudflare → Workers & Pages → right sidebar | `deploy-preview` job                            |
| `GITHUB_PAT` (optional) | GitHub → Settings → Developer settings → PAT | used for cross-repo automation (not needed yet) |

If the secret is missing in CI, the deploy will fail with a Cloudflare auth error. Check repo Settings → Secrets → Actions.
