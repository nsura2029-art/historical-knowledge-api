/**
 * KP-017: Image gallery + news + quiz endpoints
 *
 * Endpoints (4 new):
 *   GET /v1/people/{slug}/images          — image gallery (5+ per top-5 entity)
 *   GET /v1/people/{slug}/news            — latest news headlines (GDELT + curated)
 *   GET /v1/people/{slug}/quizzes         — list quizzes for a person
 *   POST /v1/people/{slug}/quizzes/{quiz_id}/attempt — record an answer
 *
 * Also exposes a convenience:
 *   GET /v1/people/{slug}/quizzes/play    — start a new quiz session (4 questions)
 *   GET /v1/quiz-sessions/{session_id}    — get session + questions
 */

import { createRoute, OpenAPIHono, z } from '@hono/zod-openapi';
import type { AppEnv } from '../../bindings.js';

// ============================================================
// Schemas
// ============================================================

const GalleryImage = z.object({
  id: z.string(),
  url_original: z.string(),
  url_r2: z.string().nullable(),
  url_thumb_r2: z.string().nullable(),
  attribution: z.string(),
  license_code: z.string(),
  license_url: z.string().nullable(),
  width: z.number().int().nullable(),
  height: z.number().int().nullable(),
  caption: z.string().nullable(),
  alt_text: z.string().nullable(),
  is_primary: z.number().int(),
  display_order: z.number().int(),
}).openapi('GalleryImage');

const GalleryResponse = z.object({
  entity_id: z.string(),
  total: z.number().int(),
  images: z.array(GalleryImage),
}).openapi('GalleryResponse');

const NewsArticle = z.object({
  id: z.string(),
  headline: z.string(),
  url: z.string(),
  source_id: z.string(),
  source_name: z.string(),
  published_at: z.number().int(),
  published_iso: z.string().nullable(),
  snippet: z.string().nullable(),
  image_url: z.string().nullable(),
  tone: z.string().nullable(),
  topic_tags: z.array(z.string()).nullable(),
}).openapi('NewsArticle');

const NewsResponse = z.object({
  entity_id: z.string(),
  total: z.number().int(),
  articles: z.array(NewsArticle),
}).openapi('NewsResponse');

const QuizQuestionPublic = z.object({
  id: z.string(),
  question: z.string(),
  options: z.array(z.string()),
  difficulty: z.string(),
  category: z.string().nullable(),
  // NOTE: correct_index and explanation are NOT exposed until the user answers
}).openapi('QuizQuestionPublic');

const QuizSessionStartResponse = z.object({
  session_id: z.string(),
  entity_id: z.string(),
  questions: z.array(QuizQuestionPublic),
  total: z.number().int(),
}).openapi('QuizSessionStartResponse');

const QuizAttemptRequest = z.object({
  session_id: z.string(),
  question_id: z.string(),
  selected_index: z.number().int().min(0).max(3),
});

const QuizAttemptResponse = z.object({
  is_correct: z.boolean(),
  correct_index: z.number().int(),
  explanation: z.string(),
  session_score: z.number().int(),
  session_total: z.number().int(),
}).openapi('QuizAttemptResponse');

const QuizListResponse = z.object({
  entity_id: z.string(),
  total: z.number().int(),
  questions: z.array(z.object({
    id: z.string(),
    question: z.string(),
    difficulty: z.string(),
    category: z.string().nullable(),
  })),
}).openapi('QuizListResponse');

const RefDocError = z.object({
  error: z.object({
    code: z.string(),
    message: z.string(),
  }),
}).openapi('RefDocError');

// ============================================================
// Routes
// ============================================================

const getGalleryRoute = createRoute({
  method: 'get',
  path: '/v1/people/{slug}/images',
  operationId: 'getGallery',
  tags: ['biography', 'media'],
  summary: 'Image gallery for a person (Wikimedia → R2)',
  request: {
    params: z.object({ slug: z.string() }),
    query: z.object({
      limit: z.coerce.number().int().min(1).max(50).default(20),
    }),
  },
  responses: {
    200: { description: 'Image gallery', content: { 'application/json': { schema: GalleryResponse } } },
    404: { description: 'Person not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

const getNewsRoute = createRoute({
  method: 'get',
  path: '/v1/people/{slug}/news',
  operationId: 'getPersonNews',
  tags: ['biography', 'news'],
  summary: 'Latest news headlines for a person (GDELT + curated)',
  request: {
    params: z.object({ slug: z.string() }),
    query: z.object({
      limit: z.coerce.number().int().min(1).max(50).default(10),
    }),
  },
  responses: {
    200: { description: 'News articles', content: { 'application/json': { schema: NewsResponse } } },
    404: { description: 'Person not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

const getQuizzesRoute = createRoute({
  method: 'get',
  path: '/v1/people/{slug}/quizzes',
  operationId: 'getPersonQuizzes',
  tags: ['biography', 'quiz'],
  summary: 'List quiz questions for a person (without answers)',
  request: {
    params: z.object({ slug: z.string() }),
    query: z.object({
      difficulty: z.enum(['easy', 'medium', 'hard']).optional(),
    }),
  },
  responses: {
    200: { description: 'Quiz questions (no answers)', content: { 'application/json': { schema: QuizListResponse } } },
    404: { description: 'Person not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

const playQuizRoute = createRoute({
  method: 'get',
  path: '/v1/people/{slug}/quizzes/play',
  operationId: 'playQuiz',
  tags: ['biography', 'quiz'],
  summary: 'Start a new quiz session (4 questions, no answers exposed)',
  request: {
    params: z.object({ slug: z.string() }),
    query: z.object({
      user_token: z.string().optional(),
      difficulty: z.enum(['easy', 'medium', 'hard', 'mixed']).optional().default('mixed'),
    }),
  },
  responses: {
    200: { description: 'Quiz session', content: { 'application/json': { schema: QuizSessionStartResponse } } },
    404: { description: 'No quiz questions available for this person', content: { 'application/json': { schema: RefDocError } } },
  },
});

const attemptQuizRoute = createRoute({
  method: 'post',
  path: '/v1/people/{slug}/quizzes/{quiz_id}/attempt',
  operationId: 'attemptQuiz',
  tags: ['biography', 'quiz'],
  summary: 'Submit an answer to a quiz question',
  request: {
    params: z.object({ slug: z.string(), quiz_id: z.string() }),
    body: {
      content: { 'application/json': { schema: QuizAttemptRequest } },
      required: true,
    },
  },
  responses: {
    200: { description: 'Answer result', content: { 'application/json': { schema: QuizAttemptResponse } } },
    404: { description: 'Question or session not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// ============================================================
// Helpers
// ============================================================

async function getEntityIdBySlug(db: D1Database, slug: string): Promise<string | null> {
  const row = await db.prepare(`SELECT id FROM entity WHERE slug = ? AND type = 'person' LIMIT 1`).bind(slug).first();
  return (row as any)?.id ?? null;
}

function newId(prefix: string): string {
  return `${prefix}_${Date.now()}_${Math.random().toString(36).slice(2, 8)}`;
}

// ============================================================
// Router
// ============================================================

export const galleryRouter = new OpenAPIHono<AppEnv>();

galleryRouter.openapi(getGalleryRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const { limit } = c.req.valid('query');
  const entityId = await getEntityIdBySlug(c.env.DB, slug);
  if (!entityId) return c.json({ error: { code: 'PERSON_NOT_FOUND', message: `No person with slug ${slug}` } }, 404) as any;

  const { results } = await c.env.DB.prepare(`
    SELECT id, url_original, url_r2, url_thumb_r2, attribution, license_code, license_url,
           width, height, caption, alt_text, is_primary, display_order
    FROM entity_image
    WHERE entity_id = ?
    ORDER BY is_primary DESC, display_order ASC, fetched_at ASC
    LIMIT ?
  `).bind(entityId, limit).all();

  return c.json({
    entity_id: entityId,
    total: (results as any[]).length,
    images: results as any[],
  }) as any;
});

galleryRouter.openapi(getNewsRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const { limit } = c.req.valid('query');
  const entityId = await getEntityIdBySlug(c.env.DB, slug);
  if (!entityId) return c.json({ error: { code: 'PERSON_NOT_FOUND', message: `No person with slug ${slug}` } }, 404) as any;

  const { results } = await c.env.DB.prepare(`
    SELECT id, headline, url, source_id, source_name, published_at, snippet,
           image_url, tone, topic_tags
    FROM news_article
    WHERE entity_id = ?
    ORDER BY published_at DESC
    LIMIT ?
  `).bind(entityId, limit).all();

  const articles = (results as any[]).map(a => ({
    ...a,
    published_iso: a.published_at ? new Date(a.published_at * 1000).toISOString() : null,
    topic_tags: a.topic_tags ? JSON.parse(a.topic_tags) : null,
  }));

  return c.json({
    entity_id: entityId,
    total: articles.length,
    articles,
  }) as any;
});

galleryRouter.openapi(getQuizzesRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const { difficulty } = c.req.valid('query');
  const entityId = await getEntityIdBySlug(c.env.DB, slug);
  if (!entityId) return c.json({ error: { code: 'PERSON_NOT_FOUND', message: `No person with slug ${slug}` } }, 404) as any;

  let query = `SELECT id, question, difficulty, category FROM quiz_question WHERE entity_id = ? AND status = 'live'`;
  const params: any[] = [entityId];
  if (difficulty) { query += ` AND difficulty = ?`; params.push(difficulty); }
  query += ` ORDER BY difficulty ASC, RANDOM() LIMIT 20`;

  const { results } = await c.env.DB.prepare(query).bind(...params).all();
  return c.json({
    entity_id: entityId,
    total: (results as any[]).length,
    questions: results as any[],
  }) as any;
});

galleryRouter.openapi(playQuizRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const { user_token, difficulty } = c.req.valid('query');
  const entityId = await getEntityIdBySlug(c.env.DB, slug);
  if (!entityId) return c.json({ error: { code: 'PERSON_NOT_FOUND', message: `No person with slug ${slug}` } }, 404) as any;

  // Pick 4 questions: either mixed (1 of each easy/medium/hard + 1 random) or all of the same difficulty
  let query: string;
  let params: any[];
  if (difficulty === 'mixed') {
    query = `
      SELECT * FROM (
        SELECT id, question, options_json, difficulty, category FROM (
          SELECT id, question, options_json, difficulty, category,
                         ROW_NUMBER() OVER (PARTITION BY difficulty ORDER BY RANDOM()) as rn
                  FROM quiz_question
                  WHERE entity_id = ? AND status = 'live'
        ) WHERE rn = 1
        UNION ALL
        SELECT id, question, options_json, difficulty, category FROM (
          SELECT id, question, options_json, difficulty, category FROM quiz_question
            WHERE entity_id = ? AND status = 'live'
            ORDER BY RANDOM() LIMIT 1
        )
      )
    `;
    params = [entityId, entityId];
  } else {
    query = `SELECT id, question, options_json, difficulty, category FROM quiz_question WHERE entity_id = ? AND status = 'live' AND difficulty = ? ORDER BY RANDOM() LIMIT 4`;
    params = [entityId, difficulty];
  }

  const { results } = await c.env.DB.prepare(query).bind(...params).all();
  if (!(results as any[]).length) {
    return c.json({ error: { code: 'NO_QUIZZES', message: `No quiz questions available for ${slug}` } }, 404) as any;
  }

  const sessionId = newId('qses');
  const questionIds = (results as any[]).map(q => q.id);
  await c.env.DB.prepare(`
    INSERT INTO quiz_session (id, user_token, entity_id, question_ids, total)
    VALUES (?, ?, ?, ?, ?)
  `).bind(sessionId, user_token || 'anon', entityId, JSON.stringify(questionIds), questionIds.length).run();

  // Strip correct_index + explanation from public response
  const publicQuestions = (results as any[]).map(q => ({
    id: q.id,
    question: q.question,
    options: JSON.parse(q.options_json),
    difficulty: q.difficulty,
    category: q.category,
  }));

  return c.json({
    session_id: sessionId,
    entity_id: entityId,
    total: questionIds.length,
    questions: publicQuestions,
  }) as any;
});

galleryRouter.openapi(attemptQuizRoute, async (c) => {
  const { slug, quiz_id } = c.req.valid('param');
  const body = c.req.valid('json');
  const entityId = await getEntityIdBySlug(c.env.DB, slug);
  if (!entityId) return c.json({ error: { code: 'PERSON_NOT_FOUND', message: `No person with slug ${slug}` } }, 404) as any;

  // Fetch the question
  const question = await c.env.DB.prepare(`
    SELECT id, correct_index, explanation FROM quiz_question WHERE id = ? AND entity_id = ? AND status = 'live'
  `).bind(quiz_id, entityId).first();
  if (!question) return c.json({ error: { code: 'QUESTION_NOT_FOUND', message: `No question ${quiz_id} for ${slug}` } }, 404) as any;

  // Fetch the session
  const session = await c.env.DB.prepare(`
    SELECT id, question_ids, score, total FROM quiz_session WHERE id = ? AND entity_id = ?
  `).bind(body.session_id, entityId).first();
  if (!session) return c.json({ error: { code: 'SESSION_NOT_FOUND', message: `No session ${body.session_id}` } }, 404) as any;

  const isCorrect = (question as any).correct_index === body.selected_index ? 1 : 0;

  // Record the attempt
  await c.env.DB.prepare(`
    INSERT INTO quiz_attempt (id, session_id, question_id, selected_index, is_correct)
    VALUES (?, ?, ?, ?, ?)
  `).bind(newId('qa'), body.session_id, quiz_id, body.selected_index, isCorrect).run();

  // Update session score
  const newScore = ((session as any).score || 0) + isCorrect;
  const completedAt = (newScore === (session as any).total) ? Math.floor(Date.now() / 1000) : null;
  await c.env.DB.prepare(`UPDATE quiz_session SET score = ?, completed_at = ? WHERE id = ?`).bind(newScore, completedAt, body.session_id).run();

  return c.json({
    is_correct: isCorrect === 1,
    correct_index: (question as any).correct_index,
    explanation: (question as any).explanation,
    session_score: newScore,
    session_total: (session as any).total,
  }) as any;
});
