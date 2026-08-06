/**
 * GET /v1/people/{slug} — full person detail.
 * Per famous-people-platform-spec.md v2.0 §8.1
 */

import { createRoute, OpenAPIHono } from '@hono/zod-openapi';
import { z } from 'zod';
import { PersonDetail, RefDocError } from '@hka/contracts';
import type { AppEnv } from '../../bindings.js';
import {
  getPersonBySlug,
  getNamesForPerson,
  getCitizenshipsForPerson,
  getProfessionsForPerson,
  getSocialProfilesForPerson,
  getMediaForPerson,
  getWorksForPerson,
  getAwardsForPerson,
  getRelationsForPerson,
  getExternalIdsForPerson,
  getDerivedAttributesForPerson,
  getPlacesForPerson,
  getSourcesForPerson,
  getEventsForPerson,
} from '../../repositories/people.js';

const route = createRoute({
  method: 'get',
  path: '/v1/people/{slug}',
  operationId: 'getPersonDetail',
  tags: ['people'],
  summary: 'Full detail of a famous person',
  description: 'Returns all known claims, sources, social profiles, media, works, awards, relations, and external identifiers for a person.',
  request: {
    params: z.object({
      slug: z.string().min(1).max(255).describe('URL-safe identifier of the person'),
    }),
  },
  responses: {
    200: {
      description: 'The person detail',
      content: { 'application/json': { schema: PersonDetail } },
    },
    404: {
      description: 'Person not found',
      content: { 'application/json': { schema: RefDocError } },
    },
  },
});

export const personDetailRouter = new OpenAPIHono<AppEnv>();

personDetailRouter.openapi(route, async (c) => {
  const requestId = c.get('requestId');
  const { slug } = c.req.valid('param');

  let person;
  try {
    person = await getPersonBySlug(c.env.DB, slug);
  } catch (err) {
    console.log(JSON.stringify({ level: 'error', code: 'GET_PERSON_BY_SLUG_FAILED', requestId, slug, error: String(err) }));
    return c.json(
      { error: { code: 'GET_PERSON_FAILED', message: String(err), requestId, details: [] } },
      500
    ) as any;
  }
  if (!person) {
    return c.json(
      {
        error: {
          code: 'PERSON_NOT_FOUND',
          message: `No published person matched the supplied identifier: ${slug}`,
          requestId,
          details: [],
        },
      },
      404
    ) as any;
  }

  const [
    names,
    citizenships,
    professions,
    socialProfiles,
    media,
    works,
    awards,
    relations,
    externalIds,
    derivedAttrs,
    places,
    sources,
    events,
  ] = await Promise.all([
    getNamesForPerson(c.env.DB, person.id).catch((e) => { console.log('names err:', String(e)); return []; }),
    getCitizenshipsForPerson(c.env.DB, person.id).catch((e) => { console.log('cit err:', String(e)); return []; }),
    getProfessionsForPerson(c.env.DB, person.id).catch((e) => { console.log('prof err:', String(e)); return []; }),
    getSocialProfilesForPerson(c.env.DB, person.id).catch((e) => { console.log('social err:', String(e)); return []; }),
    getMediaForPerson(c.env.DB, person.id).catch((e) => { console.log('media err:', String(e)); return []; }),
    getWorksForPerson(c.env.DB, person.id).catch((e) => { console.log('works err:', String(e)); return []; }),
    getAwardsForPerson(c.env.DB, person.id).catch((e) => { console.log('awards err:', String(e)); return []; }),
    getRelationsForPerson(c.env.DB, person.id).catch((e) => { console.log('relations err:', String(e)); return []; }),
    getExternalIdsForPerson(c.env.DB, person.id).catch((e) => { console.log('extids err:', String(e)); return []; }),
    getDerivedAttributesForPerson(c.env.DB, person.id).catch((e) => { console.log('derived err:', String(e)); return []; }),
    getPlacesForPerson(c.env.DB, person.id).catch((e) => { console.log('places err:', String(e)); return []; }),
    getSourcesForPerson(c.env.DB, person.id).catch((e) => { console.log('sources err:', String(e)); return []; }),
    getEventsForPerson(c.env.DB, person.id).catch((e) => { console.log('events err:', String(e)); return []; }),
  ]);

  // Resolve birthplace/death place
  const birthplace = places.find((p) => p.relation_type === 'birthplace');
  const deathPlace = places.find((p) => p.relation_type === 'death_place');

  // External identifiers
  const extIdMap: Record<string, string | null> = {
    wikidata_qid: null, viaf_id: null, isni: null, orcid: null,
    imdb_id: null, musicbrainz_id: null, official_website: null, wikipedia_url: null,
  };
  for (const eid of externalIds) {
    const key = eid.scheme;
    if (key in extIdMap) {
      extIdMap[key] = eid.url ?? eid.identifier;
    }
  }

  // Build derived attributes
  const daMap: Record<string, string> = {};
  for (const d of derivedAttrs) {
    daMap[d.attribute_type] = d.attribute_value;
  }

  // Get birth/death as HistoricalDate (prefer day-precision from derived_attribute.birth_date)
  const birthDate = daMap['birth_date'] || null; // YYYY-MM-DD
  const deathDate = daMap['death_date'] || null; // YYYY-MM-DD
  const birthYear = daMap['birth_year'] ? Number(daMap['birth_year']) : null;
  const deathYear = daMap['death_year'] ? Number(daMap['death_year']) : null;

  const datePrecision = (d: string | null): 'day' | 'month' | 'year' => {
    if (!d) return 'year';
    if (/^\d{4}-\d{2}-\d{2}$/.test(d)) return 'day';
    if (/^\d{4}-\d{2}$/.test(d)) return 'month';
    return 'year';
  };

  const birthHistorical = birthDate
    ? {
        original: birthDate,
        earliest_gregorian: birthDate,
        latest_gregorian: birthDate,
        calendar: 'gregorian' as const,
        precision: datePrecision(birthDate),
        certainty: 'undisputed' as const,
        place_name: birthplace?.place_name ?? null,
        place_country_code: birthplace?.country_code ?? null,
      }
    : birthYear
      ? {
          original: `${birthYear}`,
          earliest_gregorian: `${birthYear}-01-01`,
          latest_gregorian: `${birthYear}-12-31`,
          calendar: 'gregorian' as const,
          precision: 'year' as const,
          certainty: 'undisputed' as const,
          place_name: birthplace?.place_name ?? null,
          place_country_code: birthplace?.country_code ?? null,
        }
      : null;
  const deathHistorical = deathDate
    ? {
        original: deathDate,
        earliest_gregorian: deathDate,
        latest_gregorian: deathDate,
        calendar: 'gregorian' as const,
        precision: datePrecision(deathDate),
        certainty: 'undisputed' as const,
        place_name: deathPlace?.place_name ?? null,
        place_country_code: deathPlace?.country_code ?? null,
      }
    : deathYear
      ? {
          original: `${deathYear}`,
          earliest_gregorian: `${deathYear}-01-01`,
          latest_gregorian: `${deathYear}-12-31`,
          calendar: 'gregorian' as const,
          precision: 'year' as const,
          certainty: 'undisputed' as const,
          place_name: deathPlace?.place_name ?? null,
          place_country_code: deathPlace?.country_code ?? null,
        }
      : null;

  // Pick hero image
  const heroImage = media[0]
    ? {
        id: media[0].id,
        asset_type: media[0].asset_type as 'image' | 'video' | 'audio' | 'document',
        url: media[0].url,
        thumbnail_url: media[0].thumbnail_url,
        width: media[0].width,
        height: media[0].height,
        depiction_confidence: media[0].depiction_confidence,
        depiction_method: media[0].depiction_method,
        rights: {
          creator_name: media[0].creator_name,
          copyright_holder: media[0].copyright_holder,
          license_code: media[0].license_code,
          license_url: media[0].license_url,
          attribution_text: media[0].attribution_text,
          commercial_use_allowed: media[0].commercial_use_allowed === 1,
          derivatives_allowed: media[0].derivatives_allowed === 1,
          attribution_required: media[0].attribution_required === 1,
          share_alike_required: media[0].share_alike_required === 1,
          editorial_use_only: media[0].editorial_use_only === 1,
          rights_verified_at: media[0].rights_verified_at,
        },
      }
    : null;

  return c.json({
    id: person.id,
    slug: person.slug,
    canonical_name: person.canonical_name,
    short_description: person.short_description,
    known_for_summary: person.known_for_summary,
    living_status: person.living_status,
    editorial_risk_level: 'low' as const,
    names: names.map((n) => ({
      id: n.id,
      name_value: n.name_value,
      name_type: n.name_type as 'canonical' | 'birth' | 'stage' | 'married' | 'former' | 'regnal' | 'religious' | 'pen' | 'nickname' | 'initials' | 'transliteration' | 'translated' | 'common_misspelling',
      language_code: n.language_code,
      script_code: n.script_code,
      is_preferred: n.is_preferred === 1,
    })),
    birth: birthHistorical,
    death: deathHistorical,
    birth_place_name: birthplace?.place_name ?? null,
    death_place_name: deathPlace?.place_name ?? null,
    citizenships: citizenships.map((cit) => ({
      country_code: cit.country_code,
      country_name: cit.country_name,
      valid_from: cit.valid_from,
      valid_to: cit.valid_to,
      primary_flag: cit.primary_flag === 1,
    })),
    professions: professions.map((p) => ({
      profession_slug: p.profession_slug,
      profession_name: p.profession_name,
      category: p.category as 'arts' | 'science' | 'politics' | 'sports' | 'business' | 'military' | 'religion' | 'royalty' | 'media' | 'law' | 'academia' | 'other',
      is_primary: p.is_primary === 1,
      start_year: p.start_year,
      end_year: p.end_year,
    })),
    fame_flags: {
      is_celebrity: person.is_celebrity === 1,
      is_historical_figure: person.is_historical_figure === 1,
      is_professional: person.is_professional === 1,
      is_cultural_icon: person.is_cultural_icon === 1,
      is_royalty: person.is_royalty === 1,
      is_controversial: person.is_controversial === 1,
      is_living: person.is_living === 1,
      is_military_leader: person.is_military_leader === 1,
      is_religious_spiritual: person.is_religious_spiritual === 1,
      is_activist: person.is_activist === 1,
      is_pioneer: person.is_pioneer === 1,
      is_internet_personality: person.is_internet_personality === 1,
      is_polarizing: person.is_polarizing === 1,
      is_living_legend: person.is_living_legend === 1,
    },
    fame_attributes: {
      fame_scope: 'global' as const,
      fame_intensity: 'well_known' as const,
      gender: (person.gender as 'male' | 'female' | 'nonbinary' | 'unknown') ?? 'unknown',
      controversy_level: 0,
      era_relevance: null,
    },
    social_profiles: socialProfiles.map((s) => ({
      id: s.id,
      platform: s.platform as 'youtube' | 'instagram' | 'facebook' | 'twitter' | 'tiktok' | 'linkedin' | 'threads' | 'mastodon' | 'official_website' | 'other',
      handle: s.handle,
      platform_account_id: s.platform_account_id,
      profile_url: s.profile_url,
      account_type: s.account_type as 'personal' | 'professional_page' | 'fan_account' | 'memorial' | 'topic' | null,
      official_status: s.official_status as 'official_confirmed' | 'likely_official' | 'representative_or_agency' | 'memorial' | 'fan' | 'parody' | 'topic_or_auto_generated' | 'unknown',
      confidence: s.confidence,
      verification_method: s.verification_method,
      follower_observation: s.follower_observation,
      follower_observed_at: s.follower_observed_at,
      follower_expires_at: s.follower_expires_at,
      last_verified_at: s.last_verified_at,
    })),
    media: media.map((m) => ({
      id: m.id,
      asset_type: m.asset_type as 'image' | 'video' | 'audio' | 'document',
      url: m.url,
      thumbnail_url: m.thumbnail_url,
      width: m.width,
      height: m.height,
      depiction_confidence: m.depiction_confidence,
      depiction_method: m.depiction_method,
      rights: {
        creator_name: m.creator_name,
        copyright_holder: m.copyright_holder,
        license_code: m.license_code,
        license_url: m.license_url,
        attribution_text: m.attribution_text,
        commercial_use_allowed: m.commercial_use_allowed === 1,
        derivatives_allowed: m.derivatives_allowed === 1,
        attribution_required: m.attribution_required === 1,
        share_alike_required: m.share_alike_required === 1,
        editorial_use_only: m.editorial_use_only === 1,
        rights_verified_at: m.rights_verified_at,
      },
    })),
    works: works.map((w) => ({
      work_title: w.work_title,
      work_type: w.work_type as 'book' | 'film' | 'album' | 'song' | 'paper' | 'composition' | 'painting' | 'sculpture' | 'tv_show' | 'play' | 'game' | 'patent' | 'other',
      release_date: w.release_date,
      role: w.role,
      is_primary: w.is_primary === 1,
    })),
    awards: awards.map((a) => ({
      award_name: a.award_name,
      year: a.year,
      result: a.result as 'won' | 'nominated' | 'shortlisted' | 'announced' | 'declined',
    })),
    notable_events: events.map((e) => ({
      id: e.id,
      event_type: e.event_type,
      start_date: e.start_date,
      end_date: e.end_date,
      description: e.description,
      place_name: e.place_name,
      country_code: e.country_code,
      source_tier: e.source_tier,
      source_name: e.source_name,
      source_url: e.source_url,
      source_locator: e.source_locator,
      year_url: e.year_url,
    })),
    relations: relations.map((r) => ({
      relation_type: r.relation_type,
      related_person_name: r.related_person_name,
      related_person_slug: r.related_person_slug,
      valid_from: r.valid_from,
      valid_to: r.valid_to,
    })),
    external_identifiers: {
      wikidata_qid: extIdMap.wikidata_qid,
      viaf_id: extIdMap.viaf_id,
      isni: extIdMap.isni,
      orcid: extIdMap.orcid,
      imdb_id: extIdMap.imdb_id,
      musicbrainz_id: extIdMap.musicbrainz_id,
      official_website: extIdMap.official_website,
      wikipedia_url: extIdMap.wikipedia_url,
    },
    derived_attributes: {
      current_age: person.living_status === 'living' && daMap['current_age'] ? Number(daMap['current_age']) : null,
      age_at_death: person.age_at_death,
      generation: daMap['generation']
        ? { slug: daMap['generation'], name: daMap['generation'], rule_version: 'pew_generations_2019_v1' }
        : null,
      star_sign: daMap['star_sign']
        ? { slug: daMap['star_sign'], name: daMap['star_sign'], rule_version: 'western_tropical_v1' }
        : null,
      chinese_zodiac: daMap['chinese_zodiac']
        ? { animal: daMap['chinese_zodiac'], rule_version: 'chinese_lunisolar_v1' }
        : null,
      active_years_min: daMap['active_years_min'] ? Number(daMap['active_years_min']) : null,
      active_years_max: daMap['active_years_max'] ? Number(daMap['active_years_max']) : null,
    },
    cause_of_death: (person as any).cause_of_death ?? null,
    industry: (person as any).industry ?? null,
    era_slug: (person as any).era_slug ?? null,
    identity_confidence: 0.95,
    completeness_score: 0.85,
    provenance_score: 0.90,
    hero_image: heroImage,
    last_reviewed_at: null,
    _links: {
      self: `/v1/people/${slug}`,
      timeline: `/v1/people/${slug}/timeline`,
      birth_year: birthYear ? `/v1/years/${birthYear}` : null,
      death_year: deathYear ? `/v1/years/${deathYear}` : null,
    },
    sources: sources.map((s) => ({
      claim: s.claim,
      tier: s.tier as 'A' | 'B' | 'C' | 'D' | 'E',
      source_name: s.source_name,
      source_url: s.source_url,
      support_type: s.support_type,
    })),
    review_notes: null,
  } as any);
});
