#!/usr/bin/env node
/**
 * scripts/auto_translate.js
 *
 * Auto-translates all Firestore content into 89 target languages using
 * the Google Cloud Translation API v2 (Basic). Translations are stored
 * under translations.{lang}.{field} and are merged — existing translations
 * are never overwritten unless you pass --force.
 *
 * ── Prerequisites ─────────────────────────────────────────────────────────────
 * 1. Enable Cloud Translation API in Google Cloud Console:
 *    https://console.cloud.google.com/apis/library/translate.googleapis.com
 *
 * 2. Grant the "Cloud Translation API User" role to your service account:
 *    Google Cloud Console → IAM & Admin → IAM → find your service account
 *    → Add role: Cloud Translation API User
 *
 * ── Usage ─────────────────────────────────────────────────────────────────────
 *   node scripts/auto_translate.js                          (all collections)
 *   node scripts/auto_translate.js --collection=content_wisdom
 *   node scripts/auto_translate.js --dry-run               (no Firestore writes)
 *   node scripts/auto_translate.js --force                 (overwrite existing)
 */

const fs   = require('fs');
const path = require('path');
const https = require('https');
const admin = require('../functions/node_modules/firebase-admin');
const { GoogleAuth } = require('../functions/node_modules/google-auth-library');

// ─── Args ─────────────────────────────────────────────────────────────────────
const args = process.argv.slice(2);
const DRY_RUN    = args.includes('--dry-run');
const FORCE      = args.includes('--force');
const COL_FILTER = (args.find(a => a.startsWith('--collection=')) || '').replace('--collection=', '') || null;

if (DRY_RUN) console.log('🧪  DRY RUN — no Firestore writes will be made\n');

// ─── Firebase ─────────────────────────────────────────────────────────────────
const serviceAccountPath = path.resolve(__dirname, 'service-account.json');
if (!fs.existsSync(serviceAccountPath)) {
  console.error('❌  scripts/service-account.json not found.');
  process.exit(1);
}
admin.initializeApp({
  credential: admin.credential.cert(require(serviceAccountPath)),
  projectId: 'ayara-mobile-app',
});
const db = admin.firestore();

// ─── Google Translate Auth ────────────────────────────────────────────────────
const auth = new GoogleAuth({
  keyFile: serviceAccountPath,
  scopes: ['https://www.googleapis.com/auth/cloud-translation'],
});
let _accessToken = null;
async function getToken() {
  if (!_accessToken) {
    const client = await auth.getClient();
    const res = await client.getAccessToken();
    _accessToken = res.token;
  }
  return _accessToken;
}

// ─── Language mapping: our locale codes → Google Translate codes ──────────────
// Some of our locales are unsupported or use different codes in Google Translate.
const LANG_MAP = {
  jv:  'jw',    // Javanese — Google uses 'jw'
  yue: 'zh-TW', // Cantonese — nearest supported is Traditional Chinese
  fil: 'tl',    // Filipino = Tagalog
};
// Locales not supported by Google Translate at all — they get English fallback
const UNSUPPORTED_LANGS = new Set(['ace', 'mad', 'min']);

const TARGET_LANGS = [
  'ace','af','am','as','az','bg','bn','bs','ca','ceb','ckb','cs','da','de','el',
  'es','et','fa','fi','fil','fr','ga','gu','ha','he','hi','hr','ht','hu','hy',
  'id','ig','is','it','ja','jv','ka','kk','km','kn','ko','ku','ky','lb',
  'lo','lt','lv','mad','mg','min','mk','ml','mn','mr','ms','mt','my','ne',
  'nl','no','ny','or','pa','pl','ps','pt','ro','rw','si','sk','sl','so',
  'sq','sr','st','sv','sw','ta','te','th','ti','tl','tr','uk','ur','uz',
  'vi','yo','yue','zh','zu',
].filter(l => !UNSUPPORTED_LANGS.has(l));

function googleLang(locale) {
  return LANG_MAP[locale] || locale;
}

// ─── Google Translate API call ────────────────────────────────────────────────
// Translates an array of strings into a single target language.
// Returns array of translated strings in the same order.
async function translateBatch(texts, targetLocale) {
  if (!texts.length) return [];
  const token = await getToken();
  const target = googleLang(targetLocale);

  return new Promise((resolve, reject) => {
    const body = JSON.stringify({
      q: texts,
      target,
      source: 'en',
      format: 'text',
    });

    const req = https.request({
      hostname: 'translation.googleapis.com',
      path: '/language/translate/v2',
      method: 'POST',
      headers: {
        'Authorization': `Bearer ${token}`,
        'Content-Type': 'application/json',
        'Content-Length': Buffer.byteLength(body),
      },
    }, res => {
      let data = '';
      res.on('data', chunk => data += chunk);
      res.on('end', () => {
        try {
          const json = JSON.parse(data);
          if (json.error) return reject(new Error(`Translate API error: ${json.error.message}`));
          resolve(json.data.translations.map(t => t.translatedText));
        } catch (e) { reject(e); }
      });
    });
    req.on('error', reject);
    req.write(body);
    req.end();
  });
}

// Translate in chunks of 100 to respect API limits
async function translateAll(texts, targetLocale) {
  const results = [];
  for (let i = 0; i < texts.length; i += 100) {
    const chunk = texts.slice(i, i + 100);
    const translated = await translateBatch(chunk, targetLocale);
    results.push(...translated);
    if (i + 100 < texts.length) await sleep(150);
  }
  return results;
}

function sleep(ms) { return new Promise(r => setTimeout(r, ms)); }

// ─── Collection definitions ───────────────────────────────────────────────────
// fields: translatable fields stored under translations.{lang}.{field}
// flatLang: if true, translations.{lang} = string (not a map) — for hadiths
// skipTransliterations: skip transliteration fields (they're Arabic phonetics,
//   not meant to be translated — only the meaning/translation field gets translated)

const COLLECTIONS = [
  {
    collection: 'content_wisdom',
    fields: ['quote', 'source'],
  },
  {
    collection: 'content_hadiths',
    // Hadiths store the English translation as translations.en (plain string).
    // We'll store other langs the same way: translations.{lang} = "translated string"
    fields: ['text'],
    flatLang: true, // translations.{lang} = string
    sourceField: 'translations.en', // where to read the English text from
  },
  {
    collection: 'content_imams',
    fields: ['biography', 'famousQuote'],
  },
  {
    collection: 'content_hajj_steps',
    // duaTransliteration is Arabic phonetics — intentionally NOT translated
    fields: ['title', 'body', 'shiaNote', 'warningsText', 'duaTranslation'],
  },
  {
    collection: 'content_umrah_steps',
    fields: ['title', 'body', 'shiaNote', 'warningsText', 'duaTranslation'],
  },
  {
    collection: 'content_scriptures',
    fields: ['text', 'ref'],
  },
  {
    collection: 'content_role_models',
    fields: ['text'],
  },
  {
    collection: 'content_reflections',
    fields: ['text'],
  },
  {
    collection: 'content_duas',
    fields: ['nameEn', 'shortDesc'],
    hasSections: true, // also translate sections[].translation (NOT transliteration)
  },
];

// ─── Extract English text from a Firestore doc ────────────────────────────────
function getEnglishTexts(data, colDef) {
  if (colDef.flatLang) {
    // Hadith: translations.en is a plain string
    const trans = data.translations || {};
    const text = typeof trans.en === 'string' ? trans.en
        : (trans.en && trans.en.text) ? trans.en.text : '';
    return [{ field: '__flat__', text }];
  }

  const trans = data.translations || {};
  const en = trans.en || {};
  const results = [];
  for (const field of colDef.fields) {
    const text = (typeof en[field] === 'string' ? en[field] : data[field]) || '';
    results.push({ field, text });
  }

  if (colDef.hasSections) {
    const sections = data.sections || [];
    sections.forEach((sec, i) => {
      const enSec = (en.sections || [])[i] || {};
      const text = enSec.translation || sec.translation || '';
      if (text) results.push({ field: `sections.${i}.translation`, text });
    });
  }

  return results.filter(r => r.text.trim());
}

// ─── Check if a field already has a translation ───────────────────────────────
function hasTranslation(data, lang, field) {
  const trans = data.translations || {};
  if (field === '__flat__') {
    const t = trans[lang];
    return typeof t === 'string' && t.length > 0;
  }
  if (field.startsWith('sections.')) {
    const parts = field.split('.');
    const i = parseInt(parts[1], 10);
    const f = parts[2];
    const langTrans = trans[lang] || {};
    const secs = langTrans.sections || [];
    return !!(secs[i] && secs[i][f]);
  }
  const langTrans = trans[lang] || {};
  return !!langTrans[field];
}

// ─── Build Firestore update for a translated field ────────────────────────────
function buildUpdate(lang, field, value) {
  if (field === '__flat__') {
    return { [`translations.${lang}`]: value };
  }
  if (field.startsWith('sections.')) {
    // sections array: must read-modify-write (handled separately)
    return null; // signals: needs special handling
  }
  return { [`translations.${lang}.${field}`]: value };
}

// ─── Translate one collection ─────────────────────────────────────────────────
async function translateCollection(colDef) {
  const { collection } = colDef;
  console.log(`\n── ${collection} ──`);

  const snap = await db.collection(collection).get();
  if (snap.empty) { console.log('  (empty — skipping)'); return; }

  let totalTranslated = 0;

  for (const lang of TARGET_LANGS) {
    // Collect texts that still need translation for this lang
    const pending = []; // [{docId, docData, field, text}, ...]

    for (const doc of snap.docs) {
      const data = doc.data();
      const englishTexts = getEnglishTexts(data, colDef);

      for (const { field, text } of englishTexts) {
        if (!text.trim()) continue;
        if (!FORCE && hasTranslation(data, lang, field)) continue; // already translated
        pending.push({ docId: doc.id, docData: data, field, text });
      }
    }

    if (!pending.length) {
      process.stdout.write(`  ${lang}: already done ✓\n`);
      continue;
    }

    // Translate all texts for this language in one batch
    const texts = pending.map(p => p.text);
    let translated;
    try {
      translated = await translateAll(texts, lang);
    } catch (err) {
      console.error(`  ${lang}: ❌ API error — ${err.message}`);
      continue;
    }

    // Group updates by document
    const updatesByDoc = {};
    const sectionUpdatesByDoc = {}; // docId → { lang → [{i, field, value}] }

    for (let i = 0; i < pending.length; i++) {
      const { docId, docData, field } = pending[i];
      const value = translated[i];
      if (!value) continue;

      if (!updatesByDoc[docId]) updatesByDoc[docId] = {};

      if (field.startsWith('sections.')) {
        // Handle section array updates separately
        if (!sectionUpdatesByDoc[docId]) sectionUpdatesByDoc[docId] = [];
        const parts = field.split('.');
        sectionUpdatesByDoc[docId].push({ idx: parseInt(parts[1], 10), subField: parts[2], value, docData });
      } else {
        const update = buildUpdate(lang, field, value);
        if (update) Object.assign(updatesByDoc[docId], update);
      }
    }

    // Apply flat field updates in batches of 400
    if (!DRY_RUN) {
      const docIds = Object.keys(updatesByDoc);
      for (let i = 0; i < docIds.length; i += 400) {
        const batch = db.batch();
        for (const docId of docIds.slice(i, i + 400)) {
          batch.update(db.collection(collection).doc(docId), updatesByDoc[docId]);
        }
        await batch.commit();
      }

      // Apply section updates (read-modify-write per document)
      for (const [docId, sectionUpdates] of Object.entries(sectionUpdatesByDoc)) {
        const ref = db.collection(collection).doc(docId);
        const fresh = (await ref.get()).data();
        const trans = fresh.translations || {};
        if (!trans[lang]) trans[lang] = {};
        if (!trans[lang].sections) trans[lang].sections = [];

        for (const { idx, subField, value } of sectionUpdates) {
          while (trans[lang].sections.length <= idx) trans[lang].sections.push({});
          trans[lang].sections[idx][subField] = value;
        }
        await ref.update({ translations: trans });
      }
    }

    totalTranslated += pending.length;
    console.log(`  ${lang}: translated ${pending.length} fields`);
    await sleep(200); // be polite to the API
  }

  console.log(`  Total fields translated: ${totalTranslated}`);
}

// ─── Main ─────────────────────────────────────────────────────────────────────
async function main() {
  console.log('🌍  Auto-translate — Ayara content → 89 languages');
  console.log(`    Mode: ${DRY_RUN ? 'DRY RUN' : 'LIVE'} | Force: ${FORCE}\n`);

  const collections = COL_FILTER
      ? COLLECTIONS.filter(c => c.collection === COL_FILTER)
      : COLLECTIONS;

  if (!collections.length) {
    console.error(`No collection matching: ${COL_FILTER}`);
    process.exit(1);
  }

  for (const colDef of collections) {
    await translateCollection(colDef);
  }

  console.log('\n✅  Done. Translations are live in Firestore.');
  console.log('    App users will see them on next cache refresh (within 24h).');
  process.exit(0);
}

main().catch(err => {
  console.error('❌', err.message || err);
  process.exit(1);
});
