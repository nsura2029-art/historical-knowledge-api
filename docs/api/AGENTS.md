# docs/api/AGENTS.md — API documentation conventions

> **Owner**: API reference docs. Read before writing any hand-written API doc.

## The primary source is OpenAPI

`@hono/zod-openapi` generates `/v1/openapi.json` automatically from the route definitions. Swagger UI is at `/v1/docs`. **Hand-written docs are supplements, not the source of truth.**

## When to add a hand-written doc

- **Long explanations** that don't fit in OpenAPI (e.g. multi-signal relevance scoring algorithm).
- **Tutorials** (e.g. "how to paginate", "how to handle redirects").
- **Diagrams** (request flow, data model).
- **Examples** beyond what OpenAPI examples provide.

## File naming

`{topic}.md` (kebab-case). Examples: `pagination.md`, `relevance-scoring.md`, `slug-redirects.md`.

## Required sections (when applicable)

1. **What it is** — one-paragraph description.
2. **When to use it** — use case.
3. **How it works** — the algorithm or flow.
4. **Examples** — request + response.
5. **Edge cases** — what happens on null, on 404, on conflict.
6. **Related** — links to other docs.

## Standing gotchas

- **Don't duplicate the OpenAPI.** If the answer is in the OpenAPI, link to it.
- **Version the docs alongside the code.** If a route's response shape changes, update the doc in the same PR.
- **No fake URLs.** Examples should use real slugs from the dev D1 (e.g. `donald-trump`, `frida-kahlo`).

## When stuck

- Want to document a route's behavior — look at the route file first, the OpenAPI is generated from the Zod schemas.
- Want to document a multi-step flow — use a diagram (Mermaid, ASCII art).
- Want to document error handling — see the `error envelope` section in `AGENT-INSTRUCTIONS.md`.
