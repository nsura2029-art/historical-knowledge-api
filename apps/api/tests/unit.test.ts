/**
 * Unit tests for the Historical Knowledge Platform API.
 * Run with: pnpm test
 *
 * Uses vitest. The integration tests (using miniflare) are in
 * tests/integration.test.ts.
 */

import { describe, it, expect } from 'vitest';
import { ErrorResponse, HealthCheck, VersionInfo, ErrorCode } from '@hka/contracts';

describe('contracts: error envelope', () => {
  it('validates a complete problem+json body', () => {
    const sample = {
      type: 'https://historical-knowledge-api.example.com/problems/validation-error',
      title: 'Request validation failed',
      status: 400,
      detail: 'One or more fields are invalid',
      instance: '/v1/test',
      code: 'VALIDATION_ERROR',
      requestId: 'req_abc123',
    };
    expect(() => ErrorResponse.parse(sample)).not.toThrow();
  });

  it('rejects an incomplete body', () => {
    const bad = { type: 'x', title: 'y' };
    expect(() => ErrorResponse.parse(bad)).toThrow();
  });

  it('accepts field-level errors when present', () => {
    const sample = {
      type: 'https://historical-knowledge-api.example.com/problems/validation-error',
      title: 'y',
      status: 422,
      detail: 'z',
      instance: '/v1/test',
      code: 'VALIDATION_ERROR',
      requestId: 'req_x',
      errors: [{ field: 'name', message: 'required' }],
    };
    expect(() => ErrorResponse.parse(sample)).not.toThrow();
  });
});

describe('contracts: health check', () => {
  it('validates a healthy body', () => {
    const sample = {
      status: 'ok',
      checks: {
        DB: 'ok',
        RAW_BUCKET: 'ok',
        INGEST_QUEUE: 'ok',
        CACHE: 'ok',
        VECTORIZE: 'skipped',
        API_RATE_LIMITER: 'skipped',
      },
      latencyMs: 12,
      version: '0.0.1',
      environment: 'dev',
      bindingsPresent: ['DB', 'RAW_BUCKET', 'INGEST_QUEUE', 'CACHE'],
    };
    expect(() => HealthCheck.parse(sample)).not.toThrow();
  });

  it('rejects an unknown environment', () => {
    const sample = {
      status: 'ok',
      checks: {
        DB: 'ok',
        RAW_BUCKET: 'ok',
        INGEST_QUEUE: 'ok',
        CACHE: 'ok',
        VECTORIZE: 'ok',
        API_RATE_LIMITER: 'ok',
      },
      latencyMs: 1,
      version: '0.0.1',
      environment: 'unknown',
      bindingsPresent: [],
    };
    expect(() => HealthCheck.parse(sample)).toThrow();
  });
});

describe('contracts: version info', () => {
  it('validates a complete version body', () => {
    const sample = {
      version: '0.0.1',
      sha: 'ccf6579',
      environment: 'dev',
      deployedAt: '2026-08-05T02:30:00.000Z',
      compatibilityDate: '2026-08-01',
      bindings: ['DB', 'CACHE'],
    };
    expect(() => VersionInfo.parse(sample)).not.toThrow();
  });
});

describe('contracts: error code catalog', () => {
  it('exposes the expected error codes', () => {
    expect(ErrorCode.VALIDATION_ERROR).toBe('VALIDATION_ERROR');
    expect(ErrorCode.BINDING_MISSING).toBe('BINDING_MISSING');
    expect(ErrorCode.NOT_FOUND).toBe('NOT_FOUND');
    expect(ErrorCode.INTERNAL_ERROR).toBe('INTERNAL_ERROR');
  });
});
