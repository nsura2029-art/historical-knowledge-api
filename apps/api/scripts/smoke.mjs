// Dev/preview smoke test — hits a running Worker and asserts key endpoints work.
// Usage: node scripts/smoke.mjs [base-url]
// Default base: http://127.0.0.1:8787 (local wrangler dev)

const base = process.argv[2] || process.env.SMOKE_URL || 'http://127.0.0.1:8787';

let pass = 0;
let fail = 0;

async function check(name, fn) {
  process.stdout.write(`  ${name} ... `);
  try {
    await fn();
    console.log('PASS');
    pass++;
  } catch (err) {
    console.log('FAIL');
    console.log('    ' + (err?.message || err));
    fail++;
  }
}

async function getJson(path, expectedStatus = 200) {
  const res = await fetch(base + path, {
    headers: { 'X-Request-Id': 'smoke-' + Date.now() },
  });
  if (res.status !== expectedStatus) {
    throw new Error(`${path} → status ${res.status}, expected ${expectedStatus}`);
  }
  const body = await res.json();
  return { res, body };
}

async function main() {
  console.log(`Smoke test against ${base}`);

  await check('GET /v1/health returns 200 + status:ok', async () => {
    const { res, body } = await getJson('/v1/health');
    if (res.headers.get('X-Request-Id')?.length === 0) throw new Error('Missing X-Request-Id');
    if (body.status !== 'ok' && body.status !== 'degraded') {
      throw new Error('status is not ok/degraded: ' + body.status);
    }
    if (typeof body.latencyMs !== 'number') throw new Error('latencyMs missing');
    if (!Array.isArray(body.bindingsPresent)) throw new Error('bindingsPresent missing');
  });

  await check('GET /v1/version returns 200 + version info', async () => {
    const { body } = await getJson('/v1/version');
    if (!body.version) throw new Error('version missing');
    if (!body.environment) throw new Error('environment missing');
    if (!Array.isArray(body.bindings)) throw new Error('bindings missing');
  });

  await check('GET /openapi.json returns 200 + valid spec', async () => {
    const { res, body } = await getJson('/openapi.json');
    if (body.openapi !== '3.1.0') throw new Error('openapi version: ' + body.openapi);
    if (!body.paths['/v1/health']) throw new Error('OpenAPI missing /v1/health');
    if (!body.paths['/v1/version']) throw new Error('OpenAPI missing /v1/version');
  });

  await check('GET /docs returns 200 HTML', async () => {
    const res = await fetch(base + '/docs');
    if (res.status !== 200) throw new Error('/docs status ' + res.status);
    const ct = res.headers.get('content-type') || '';
    if (!ct.includes('text/html')) throw new Error('/docs content-type ' + ct);
  });

  await check('HEAD /v1/health returns 200, no body', async () => {
    const res = await fetch(base + '/v1/health', { method: 'HEAD' });
    if (res.status !== 200) throw new Error('HEAD status ' + res.status);
    const text = await res.text();
    if (text.length > 0) throw new Error('HEAD has body');
  });

  await check('GET /v1/nonexistent returns 404 problem+json', async () => {
    const res = await fetch(base + '/v1/nonexistent');
    if (res.status !== 404) throw new Error('404 expected, got ' + res.status);
    const ct = res.headers.get('content-type') || '';
    if (!ct.includes('application/problem+json')) throw new Error('not problem+json: ' + ct);
    const body = await res.json();
    if (body.code !== 'NOT_FOUND') throw new Error('code: ' + body.code);
    if (!body.requestId) throw new Error('requestId missing');
  });

  await check('GET /v1/health preserves upstream X-Request-Id', async () => {
    const myId = 'test-upstream-' + Date.now();
    const res = await fetch(base + '/v1/health', { headers: { 'X-Request-Id': myId } });
    const echoed = res.headers.get('X-Request-Id');
    if (echoed !== myId) throw new Error(`expected ${myId}, got ${echoed}`);
  });

  console.log(`\nResult: ${pass} passed, ${fail} failed`);
  if (fail > 0) process.exit(1);
}

main().catch((err) => {
  console.error('Smoke test crashed:', err);
  process.exit(1);
});
