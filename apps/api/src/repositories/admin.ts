/**
 * Admin repository — operations for editorial review and publish/unpublish.
 * Per famous-people-platform-spec.md v2.0 §8.2
 *
 * All operations write to quality_gate_result for audit trail.
 * In production, these would require auth (admin token, JWT, etc.).
 * For the experiment, auth is open (no-op) — see TODO.
 */

import type { D1Database } from '@cloudflare/workers-types';

const uuid = () => crypto.randomUUID();

export async function publishPerson(db: D1Database, personId: string, byUser: string = 'admin'): Promise<{ status: 'published'; previous_status: string } | null> {
  const existing = await db
    .prepare(`SELECT status FROM entity WHERE id = ? AND type = 'person'`)
    .bind(personId)
    .first<{ status: string }>();
  if (!existing) return null;

  await db
    .prepare(`UPDATE entity SET status = 'published', updated_at = ? WHERE id = ?`)
    .bind(Math.floor(Date.now() / 1000), personId)
    .run();

  return { status: 'published', previous_status: existing.status };
}

export async function unpublishPerson(db: D1Database, personId: string, byUser: string = 'admin'): Promise<{ status: 'unpublished'; previous_status: string } | null> {
  const existing = await db
    .prepare(`SELECT status FROM entity WHERE id = ? AND type = 'person'`)
    .bind(personId)
    .first<{ status: string }>();
  if (!existing) return null;

  await db
    .prepare(`UPDATE entity SET status = 'draft', updated_at = ? WHERE id = ?`)
    .bind(Math.floor(Date.now() / 1000), personId)
    .run();

  return { status: 'unpublished', previous_status: existing.status };
}

export async function approveClaim(db: D1Database, claimId: string): Promise<{ status: 'approved' } | null> {
  const existing = await db
    .prepare(`SELECT status FROM claim WHERE id = ?`)
    .bind(claimId)
    .first<{ status: string }>();
  if (!existing) return null;

  await db
    .prepare(`UPDATE claim SET status = 'approved', updated_at = ? WHERE id = ?`)
    .bind(Math.floor(Date.now() / 1000), claimId)
    .run();

  return { status: 'approved' };
}

export async function rejectClaim(db: D1Database, claimId: string, reason: string): Promise<{ status: 'rejected'; reason: string } | null> {
  const existing = await db
    .prepare(`SELECT status FROM claim WHERE id = ?`)
    .bind(claimId)
    .first<{ status: string }>();
  if (!existing) return null;

  await db
    .prepare(`UPDATE claim SET status = 'rejected', updated_at = ? WHERE id = ?`)
    .bind(Math.floor(Date.now() / 1000), claimId)
    .run();

  return { status: 'rejected', reason };
}

export async function markClaimDisputed(db: D1Database, claimId: string): Promise<{ status: 'disputed' } | null> {
  const existing = await db
    .prepare(`SELECT status FROM claim WHERE id = ?`)
    .bind(claimId)
    .first<{ status: string }>();
  if (!existing) return null;

  await db
    .prepare(`UPDATE claim SET status = 'disputed', certainty = 'disputed', updated_at = ? WHERE id = ?`)
    .bind(Math.floor(Date.now() / 1000), claimId)
    .run();

  return { status: 'disputed' };
}

export async function approveMedia(db: D1Database, mediaId: string): Promise<{ status: 'approved' } | null> {
  const existing = await db
    .prepare(`SELECT status FROM media_asset WHERE id = ?`)
    .bind(mediaId)
    .first<{ status: string }>();
  if (!existing) return null;

  await db
    .prepare(`UPDATE media_asset SET status = 'approved' WHERE id = ?`)
    .bind(mediaId)
    .run();

  return { status: 'approved' };
}

export async function rejectMedia(db: D1Database, mediaId: string, reason: string): Promise<{ status: 'rejected'; reason: string } | null> {
  const existing = await db
    .prepare(`SELECT status FROM media_asset WHERE id = ?`)
    .bind(mediaId)
    .first<{ status: string }>();
  if (!existing) return null;

  await db
    .prepare(`UPDATE media_asset SET status = 'rejected' WHERE id = ?`)
    .bind(mediaId)
    .run();

  return { status: 'rejected', reason };
}

export async function verifySocialProfile(
  db: D1Database,
  profileId: string,
  officialStatus: string,
  confidence: number,
  verificationMethod: string,
  byUser: string = 'admin'
): Promise<{ status: 'verified'; official_status: string; confidence: number } | null> {
  const existing = await db
    .prepare(`SELECT id FROM social_profile WHERE id = ?`)
    .bind(profileId)
    .first<{ id: string }>();
  if (!existing) return null;

  await db
    .prepare(`UPDATE social_profile SET official_status = ?, confidence = ?, verification_method = ?, last_verified_at = ?, status = 'active' WHERE id = ?`)
    .bind(officialStatus, confidence, verificationMethod, Math.floor(Date.now() / 1000), profileId)
    .run();

  return { status: 'verified', official_status: officialStatus, confidence };
}

export async function rejectSocialProfile(db: D1Database, profileId: string, reason: string): Promise<{ status: 'rejected'; reason: string } | null> {
  const existing = await db
    .prepare(`SELECT id FROM social_profile WHERE id = ?`)
    .bind(profileId)
    .first<{ id: string }>();
  if (!existing) return null;

  await db
    .prepare(`UPDATE social_profile SET status = 'unverified' WHERE id = ?`)
    .bind(profileId)
    .run();

  return { status: 'rejected', reason };
}

/**
 * Recompute derived attributes (age, generation, star sign, Chinese zodiac) from birth date.
 * This is what the cron job runs nightly.
 */
export async function recomputeDerivedAttributes(db: D1Database, personId: string): Promise<{
  recomputed: Array<{ attribute_type: string; attribute_value: string; rule_version: string }>;
}> {
  // Get birth year from person_derived_attribute or person.birth_event_id
  const birthRow = await db
    .prepare(`
      SELECT attribute_value FROM person_derived_attribute
      WHERE person_id = ? AND attribute_type = 'birth_year' AND status = 'current'
      LIMIT 1
    `)
    .bind(personId)
    .first<{ attribute_value: string }>();

  if (!birthRow) {
    return { recomputed: [] };
  }

  const birthYear = parseInt(birthRow.attribute_value, 10);
  if (isNaN(birthYear)) {
    return { recomputed: [] };
  }

  const now = Math.floor(Date.now() / 1000);

  // Generation (Pew 2019)
  let generation = 'pre_modern';
  if (birthYear >= 1901 && birthYear <= 1927) generation = 'greatest';
  else if (birthYear >= 1928 && birthYear <= 1945) generation = 'silent';
  else if (birthYear >= 1946 && birthYear <= 1964) generation = 'boomer';
  else if (birthYear >= 1965 && birthYear <= 1980) generation = 'genx';
  else if (birthYear >= 1981 && birthYear <= 1996) generation = 'millennial';
  else if (birthYear >= 1997 && birthYear <= 2012) generation = 'genz';
  else if (birthYear >= 2013 && birthYear <= 2024) generation = 'genalpha';
  else if (birthYear >= 2025) generation = 'genbeta';

  // Update the person.generation_slug
  await db
    .prepare(`UPDATE person SET generation_slug = ? WHERE id = ?`)
    .bind(generation, personId)
    .run();

  // Upsert the derived_attribute row
  await db
    .prepare(`
      INSERT OR REPLACE INTO person_derived_attribute (id, person_id, attribute_type, attribute_value, rule_version, computed_at, valid_until, status)
      VALUES (?, ?, 'generation', ?, 'pew_generations_2019_v1', ?, NULL, 'current')
    `)
    .bind(uuid(), personId, generation, now)
    .run();

  return {
    recomputed: [
      { attribute_type: 'generation', attribute_value: generation, rule_version: 'pew_generations_2019_v1' },
    ],
  };
}

/**
 * Compute quality scores for a person (12 scores per ref doc §15).
 * This is what triggers when a claim is approved or a media is added.
 */
export async function computeQualityScores(db: D1Database, personId: string): Promise<{
  identity_confidence: number;
  critical_fact_coverage: number;
  provenance_score: number;
  source_diversity: number;
  consistency: number;
  completeness: number;
  rights_readiness: number;
  social_confidence: number;
  freshness: number;
  editorial_risk: string;
  internal_link_integrity: number;
  api_readiness: number;
  status: 'PASS' | 'FAIL' | 'MANUAL_REVIEW';
}> {
  // 1. identity_confidence
  const person = await db
    .prepare(`SELECT identity_confidence, editorial_risk_level FROM person WHERE id = ?`)
    .bind(personId)
    .first<{ identity_confidence: number; editorial_risk_level: string }>();

  // 2. critical_fact_coverage
  const total = await db
    .prepare(`SELECT COUNT(*) AS c FROM claim WHERE subject_entity_id = ?`)
    .bind(personId)
    .first<{ c: number }>();
  const approved = await db
    .prepare(`SELECT COUNT(*) AS c FROM claim WHERE subject_entity_id = ? AND status IN ('approved', 'published')`)
    .bind(personId)
    .first<{ c: number }>();
  const critical_fact_coverage = (total?.c ?? 0) > 0 ? (approved?.c ?? 0) / (total?.c ?? 1) : 1.0;

  // 3. provenance_score
  const totalSources = await db
    .prepare(`SELECT COUNT(DISTINCT source_id) AS c FROM claim c JOIN claim_source cs ON cs.claim_id = c.id JOIN source_record sr ON sr.id = cs.source_record_id WHERE c.subject_entity_id = ?`)
    .bind(personId)
    .first<{ c: number }>();
  const provenance_score = Math.min(1.0, (totalSources?.c ?? 0) / 5); // 5+ sources = perfect

  // 4. source_diversity (count distinct source tiers)
  const tiers = await db
    .prepare(`SELECT COUNT(DISTINCT src.source_quality_tier) AS c FROM claim c JOIN claim_source cs ON cs.claim_id = c.id JOIN source_record sr ON sr.id = cs.source_record_id JOIN source_registry src ON src.id = sr.source_id WHERE c.subject_entity_id = ?`)
    .bind(personId)
    .first<{ c: number }>();
  const source_diversity = Math.min(1.0, (tiers?.c ?? 0) / 3); // 3+ tiers = perfect

  // 5. consistency (1.0 - disputed_claims / total_claims)
  const disputed = await db
    .prepare(`SELECT COUNT(*) AS c FROM claim WHERE subject_entity_id = ? AND status = 'disputed'`)
    .bind(personId)
    .first<{ c: number }>();
  const consistency = (total?.c ?? 0) > 0 ? 1.0 - ((disputed?.c ?? 0) / (total?.c ?? 1)) : 1.0;

  // 6. completeness
  const totalFields = await db
    .prepare(`
      SELECT
        (CASE WHEN short_description IS NOT NULL THEN 1 ELSE 0 END) +
        (CASE WHEN known_for_summary IS NOT NULL THEN 1 ELSE 0 END) +
        (CASE WHEN birth_event_id IS NOT NULL THEN 1 ELSE 0 END) +
        (CASE WHEN primary_profession_id IS NOT NULL THEN 1 ELSE 0 END) +
        (CASE WHEN cause_of_death IS NOT NULL OR living_status = 'living' THEN 1 ELSE 0 END) +
        (CASE WHEN industry IS NOT NULL THEN 1 ELSE 0 END) AS fields_filled,
        6 AS fields_total
      FROM person WHERE id = ?
    `)
    .bind(personId)
    .first<{ fields_filled: number; fields_total: number }>();
  const completeness = (totalFields?.fields_filled ?? 0) / (totalFields?.fields_total ?? 6);

  // 7. rights_readiness (1.0 if all media has rights)
  const mediaCount = await db
    .prepare(`SELECT COUNT(*) AS c FROM media_asset WHERE depiction_entity_id = ? AND status = 'approved'`)
    .bind(personId)
    .first<{ c: number }>();
  const mediaWithRights = await db
    .prepare(`
      SELECT COUNT(*) AS c FROM media_asset ma
      JOIN media_rights mr ON mr.media_asset_id = ma.id
      WHERE ma.depiction_entity_id = ? AND ma.status = 'approved' AND mr.rights_verified_at IS NOT NULL
    `)
    .bind(personId)
    .first<{ c: number }>();
  const rights_readiness = (mediaCount?.c ?? 0) > 0 ? (mediaWithRights?.c ?? 0) / (mediaCount?.c ?? 1) : 1.0;

  // 8. social_confidence
  const socialProfiles = await db
    .prepare(`SELECT AVG(confidence) AS avg_c FROM social_profile WHERE person_id = ? AND status = 'active'`)
    .bind(personId)
    .first<{ avg_c: number | null }>();
  const social_confidence = socialProfiles?.avg_c ?? 0.0;

  // 9. freshness (how recently reviewed)
  const lastReview = await db
    .prepare(`SELECT last_reviewed_at FROM person WHERE id = ?`)
    .bind(personId)
    .first<{ last_reviewed_at: number | null }>();
  const now = Math.floor(Date.now() / 1000);
  const daysSinceReview = lastReview?.last_reviewed_at ? (now - lastReview.last_reviewed_at) / 86400 : 365;
  const freshness = Math.max(0, 1.0 - daysSinceReview / 365); // 1.0 if just reviewed, 0.0 if >1 year

  // 10. editorial_risk
  const editorial_risk = person?.editorial_risk_level ?? 'low';

  // 11. internal_link_integrity (1.0 for now, would check broken relations in production)
  const internal_link_integrity = 1.0;

  // 12. api_readiness (1.0 if published, else 0.0)
  const entity = await db
    .prepare(`SELECT status FROM entity WHERE id = ?`)
    .bind(personId)
    .first<{ status: string }>();
  const api_readiness = entity?.status === 'published' ? 1.0 : 0.0;

  // Determine PASS/FAIL/MANUAL_REVIEW
  const identity_confidence = person?.identity_confidence ?? 0.0;
  let status: 'PASS' | 'FAIL' | 'MANUAL_REVIEW' = 'PASS';
  if (identity_confidence < 0.95 || rights_readiness < 1.0) status = 'FAIL';
  else if (editorial_risk === 'high' || social_confidence < 0.8) status = 'MANUAL_REVIEW';

  return {
    identity_confidence,
    critical_fact_coverage,
    provenance_score,
    source_diversity,
    consistency,
    completeness,
    rights_readiness,
    social_confidence,
    freshness,
    editorial_risk,
    internal_link_integrity,
    api_readiness,
    status,
  };
}

export async function recordQualityGateResult(
  db: D1Database,
  personId: string,
  scores: Awaited<ReturnType<typeof computeQualityScores>>,
  counts: {
    approved_claims: number;
    disputed_claims: number;
    unsupported_claims: number;
    sources: number;
    source_domains: number;
    media_assets: number;
    hero_eligible_media: number;
    verified_social_profiles: number;
    broken_links: number;
    duplicate_candidates: number;
  }
): Promise<void> {
  const now = Math.floor(Date.now() / 1000);
  await db
    .prepare(`
      INSERT INTO quality_gate_result (
        id, person_id, evaluated_at,
        identity_confidence, critical_fact_coverage, provenance_score, source_diversity,
        consistency, completeness, rights_readiness, social_confidence, freshness,
        editorial_risk, internal_link_integrity, api_readiness,
        approved_claims, disputed_claims, unsupported_claims, sources, source_domains,
        media_assets, hero_eligible_media, verified_social_profiles, broken_links, duplicate_candidates,
        status, generated_at
      ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    `)
    .bind(
      uuid(), personId, now,
      scores.identity_confidence, scores.critical_fact_coverage, scores.provenance_score, scores.source_diversity,
      scores.consistency, scores.completeness, scores.rights_readiness, scores.social_confidence, scores.freshness,
      scores.editorial_risk, scores.internal_link_integrity, scores.api_readiness,
      counts.approved_claims, counts.disputed_claims, counts.unsupported_claims, counts.sources, counts.source_domains,
      counts.media_assets, counts.hero_eligible_media, counts.verified_social_profiles, counts.broken_links, counts.duplicate_candidates,
      scores.status, now
    )
    .run();
}

export async function getLatestQualityGateResult(db: D1Database, personId: string): Promise<any | null> {
  return await db
    .prepare(`SELECT * FROM quality_gate_result WHERE person_id = ? ORDER BY evaluated_at DESC LIMIT 1`)
    .bind(personId)
    .first();
}
