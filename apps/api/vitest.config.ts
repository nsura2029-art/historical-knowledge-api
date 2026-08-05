import { defineConfig } from 'vitest/config';
import { fileURLToPath } from 'node:url';

const contractsSrc = fileURLToPath(new URL('../../packages/contracts/src/index.ts', import.meta.url));

export default defineConfig({
  test: {
    include: ['tests/**/*.test.ts'],
    environment: 'node',
  },
  resolve: {
    alias: {
      '@hka/contracts': contractsSrc,
    },
  },
});
