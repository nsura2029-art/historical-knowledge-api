-- ========================================
-- Migration 0008: Slug redirects for common variations
-- Per ref doc, slug_redirect maps old_slug -> new_slug (301/308/rewrite)
-- ========================================

-- Add common slug variations so user-typed URLs (with middle initial,
-- with diacritics, with common typos) resolve to the canonical entity
INSERT OR REPLACE INTO slug_redirect
  (id, entity_id, old_slug, new_slug, redirect_type, reason, effective_at, created_at)
VALUES
  -- Donald Trump: user typed donald-j-trump (with middle initial J)
  ('sr_trump_j', 'ent_donald-trump', 'donald-j-trump', 'donald-trump', 'rewrite',
   'User typed with middle initial J; canonical name is just "Donald Trump"', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05')),
  -- Frida Kahlo: common variations
  ('sr_frida_kahlo_y_calderon', 'ent_frida-kahlo', 'magdalena-carmen-frida-kahlo-y-calderon', 'frida-kahlo', 'rewrite',
   'Full birth name (Magdalena Carmen Frida Kahlo y Calderón) slug redirects to canonical', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05')),
  -- A.R. Rahman: hyphen / dot variations
  ('sr_rahman_dot', 'ent_ar-rahman', 'a.r.-rahman', 'ar-rahman', 'rewrite',
   'User typed with periods; canonical slug is ar-rahman', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05')),
  ('sr_rahman_full', 'ent_ar-rahman', 'allahrakka-rahman', 'ar-rahman', 'rewrite',
   'Birth name (Allah Rakha Rahman) redirects to A.R. Rahman canonical', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05'));
