/**
 * KP-005: Slug resolution helper.
 *
 * Centralized slug → entity_id resolution that respects slug_redirect table
 * (e.g., Beyonce×3 → ent_beyonc). Use this everywhere instead of raw
 * `SELECT id FROM entity WHERE slug = ?`.
 */

export interface ResolvedEntity {
  entity_id: string;
  slug: string;
  is_redirect: boolean;
  /** Set when is_redirect=true: the old slug that was requested */
  old_slug?: string;
  /** Set when is_redirect=true: the redirect row id (for audit) */
  redirect_id?: string;
}

const MAX_REDIRECT_HOPS = 5;

/**
 * Resolve a slug to its canonical entity_id, following redirects.
 * Returns null if neither entity table nor slug_redirect has the slug.
 */
export async function resolveEntitySlug(
  db: D1Database,
  slug: string,
  typeFilter?: 'person' | 'organization' | 'place',
): Promise<ResolvedEntity | null> {
  // 1. Try slug_redirect first (KP-005 merges + historical renames from 0008)
  let visited = new Set<string>();
  let currentSlug = slug;
  let oldSlug = slug;
  let redirectId: string | undefined;

  for (let hop = 0; hop < MAX_REDIRECT_HOPS; hop++) {
    if (visited.has(currentSlug)) {
      // Loop detected
      return null;
    }
    visited.add(currentSlug);

    const redirect = await db.prepare(
      `SELECT id, new_slug, entity_id FROM slug_redirect WHERE old_slug = ? AND (expires_at IS NULL OR expires_at > unixepoch())`
    ).bind(currentSlug).first() as { id: string; new_slug: string; entity_id: string } | null;

    if (redirect) {
      if (hop === 0) {
        redirectId = redirect.id;
      }
      currentSlug = redirect.new_slug;
      // Continue following the chain
      continue;
    }
    break;
  }

  // 2. Try entity table (canonical)
  let entity: { id: string; slug: string } | null;
  if (typeFilter) {
    entity = await db.prepare(
      `SELECT id, slug FROM entity WHERE slug = ? AND type = ?`
    ).bind(currentSlug, typeFilter).first() as { id: string; slug: string } | null;
  } else {
    entity = await db.prepare(
      `SELECT id, slug FROM entity WHERE slug = ?`
    ).bind(currentSlug).first() as { id: string; slug: string } | null;
  }

  if (entity) {
    return {
      entity_id: entity.id,
      slug: entity.slug,
      is_redirect: currentSlug !== oldSlug,
      old_slug: currentSlug !== oldSlug ? oldSlug : undefined,
      redirect_id: currentSlug !== oldSlug ? redirectId : undefined,
    };
  }

  return null;
}
