#!/usr/bin/env node
/**
 * scripts/export_for_translation.js
 *
 * Exports ALL translatable Firestore content to CSV files ready for human translators.
 * Arabic fields (arabic, quoteAr, famousQuoteAr, imamAr) are always included as
 * read-only reference columns but are never placed in translation columns.
 *
 * Usage (from repo root):
 *   node scripts/export_for_translation.js
 *
 * Output files (in scripts/translations/):
 *   wisdom_export.csv         — WisdomModel: quote, source  (+ quoteAr ref)
 *   hadiths_export.csv        — HadithModel: english (the translation of the arabic)
 *   imams_export.csv          — ImamModel: biography, famousQuote
 *   hajj_steps_export.csv     — PilgrimageStepModel: title, body  (+ arabic ref)
 *   umrah_steps_export.csv    — PilgrimageStepModel: title, body  (+ arabic ref)
 *   scriptures_export.csv     — DailyScriptureModel: text, ref
 *   role_models_export.csv    — DailyRoleModelModel: text
 *   reflections_export.csv    — DailyReflectionModel: text
 *   duas_export.csv           — DuaModel: nameEn, shortDesc (one row per dua)
 *   dua_sections_export.csv   — DuaSectionModel: translation, transliteration
 *                               (one row per section; key = duaId__sectionIndex)
 *
 * Each CSV has columns:
 *   id | arabic_REF (if applicable) | field_en | field_<lang> ...
 *
 * Translators fill in the empty cells for each language.
 * Run import_translations.js after filling to upload to Firestore.
 */

const fs = require('fs');
const path = require('path');
const admin = require('../functions/node_modules/firebase-admin');

// ─── Auth ─────────────────────────────────────────────────────────────────────
const serviceAccountPath = path.resolve(__dirname, 'service-account.json');
if (!fs.existsSync(serviceAccountPath)) {
  console.error('❌  Service account key not found.');
  console.error('   Download from Firebase Console → Project Settings → Service Accounts');
  console.error(`   Save to: ${serviceAccountPath}`);
  process.exit(1);
}

admin.initializeApp({
  credential: admin.credential.cert(require(serviceAccountPath)),
  projectId: 'ayara-mobile-app',
});
const db = admin.firestore();

// ─── Target languages ─────────────────────────────────────────────────────────
// All app locales except 'en' (source) and 'ar' (Arabic — stored natively, not translated).
const TARGET_LANGS = [
  'ace','af','am','as','az','bg','bn','bs','ca','ceb','ckb','cs','da','de','el',
  'es','et','fa','fi','fil','fr','ga','gu','ha','he','hi','hr','ht','hu','hy',
  'id','ig','is','it','ja','jv','ka','kk','km','kn','ko','ku','ky','lb',
  'lo','lt','lv','mad','mg','min','mk','ml','mn','mr','ms','mt','my','ne',
  'nl','no','ny','or','pa','pl','ps','pt','ro','rw','si','sk','sl','so',
  'sq','sr','st','sv','sw','ta','te','th','ti','tl','tr','uk','ur','uz',
  'vi','yo','yue','zh','zu',
];

const outDir = path.resolve(__dirname, 'translations');
if (!fs.existsSync(outDir)) fs.mkdirSync(outDir);

// ─── CSV helpers ──────────────────────────────────────────────────────────────

function escape(val) {
  if (val == null) return '';
  const s = String(val);
  if (s.includes(',') || s.includes('\n') || s.includes('"')) {
    return '"' + s.replace(/"/g, '""') + '"';
  }
  return s;
}

function buildCsv(rows) {
  return rows.map(row => row.map(escape).join(',')).join('\n') + '\n';
}

// ─── Standard collection export ───────────────────────────────────────────────

async function exportCollection(collection, outputFile, translatableFields, arabicRefFields = []) {
  const snap = await db.collection(collection).orderBy('order').get();
  if (snap.empty) { console.log(`⚠️  ${collection}: no documents — skipping`); return; }

  const header = ['id', 'order'];
  for (const f of arabicRefFields) header.push(`${f}_ar_REF`);
  for (const f of translatableFields) header.push(`${f}_en`);
  for (const lang of TARGET_LANGS) {
    for (const f of translatableFields) header.push(`${f}_${lang}`);
  }

  const dataRows = snap.docs.map(doc => {
    const d = doc.data();
    const trans = d.translations || {};
    const enTrans = trans['en'] || {};

    const row = [doc.id, d.order ?? ''];
    for (const f of arabicRefFields) row.push(d[f] ?? '');
    for (const f of translatableFields) {
      // For hadiths the en translation may be a plain string, not a map
      const val = typeof enTrans === 'string' ? enTrans : (enTrans[f] ?? d[f] ?? '');
      row.push(val);
    }
    for (const lang of TARGET_LANGS) {
      const langTrans = trans[lang] || {};
      for (const f of translatableFields) {
        const val = typeof langTrans === 'string' ? langTrans : (langTrans[f] ?? '');
        row.push(val);
      }
    }
    return row;
  });

  fs.writeFileSync(path.join(outDir, outputFile), buildCsv([header, ...dataRows]), 'utf-8');
  console.log(`✅  ${collection}: exported ${snap.docs.length} docs → ${outputFile}`);
}

// ─── Hadiths (translations.en may be a plain string, not a map) ───────────────

async function exportHadiths() {
  const snap = await db.collection('content_hadiths').orderBy('order').get();
  if (snap.empty) { console.log('⚠️  content_hadiths: no documents — skipping'); return; }

  const header = ['id', 'order', 'arabic_REF', 'imam_REF', 'source_REF', 'english_en'];
  for (const lang of TARGET_LANGS) header.push(`english_${lang}`);

  const dataRows = snap.docs.map(doc => {
    const d = doc.data();
    const trans = d.translations || {};

    function resolveText(lang) {
      const t = trans[lang];
      if (typeof t === 'string') return t;
      if (t && typeof t === 'object') return t.text || '';
      return '';
    }

    const row = [doc.id, d.order ?? '', d.arabic ?? '', d.imam ?? '', d.source ?? '', resolveText('en')];
    for (const lang of TARGET_LANGS) row.push(resolveText(lang));
    return row;
  });

  fs.writeFileSync(path.join(outDir, 'hadiths_export.csv'), buildCsv([header, ...dataRows]), 'utf-8');
  console.log(`✅  content_hadiths: exported ${snap.docs.length} docs → hadiths_export.csv`);
}

// ─── Duas (flat fields + nested sections in separate CSV) ─────────────────────

async function exportDuas() {
  const snap = await db.collection('content_duas').orderBy('order').get();
  if (snap.empty) { console.log('⚠️  content_duas: no documents — skipping'); return; }

  // ── Dua-level CSV (nameEn, shortDesc) ─────────────────────────────────────
  const duaHeader = ['id', 'order', 'nameAr_REF', 'nameEn_en', 'shortDesc_en'];
  for (const lang of TARGET_LANGS) {
    duaHeader.push(`nameEn_${lang}`, `shortDesc_${lang}`);
  }

  const duaRows = snap.docs.map(doc => {
    const d = doc.data();
    const trans = d.translations || {};
    const enTrans = trans['en'] || {};
    const row = [doc.id, d.order ?? '', d.nameAr ?? '', enTrans.nameEn ?? d.nameEn ?? '', enTrans.shortDesc ?? d.shortDesc ?? ''];
    for (const lang of TARGET_LANGS) {
      const lt = trans[lang] || {};
      row.push(lt.nameEn ?? '', lt.shortDesc ?? '');
    }
    return row;
  });

  fs.writeFileSync(path.join(outDir, 'duas_export.csv'), buildCsv([duaHeader, ...duaRows]), 'utf-8');
  console.log(`✅  content_duas: exported ${snap.docs.length} dua rows → duas_export.csv`);

  // ── Section-level CSV (translation, transliteration per section) ───────────
  // Key format: duaId__0, duaId__1, etc.
  const secHeader = ['id', 'dua_id', 'section_index', 'arabic_REF', 'translation_en', 'transliteration_en'];
  for (const lang of TARGET_LANGS) {
    secHeader.push(`translation_${lang}`, `transliteration_${lang}`);
  }

  const secRows = [];
  for (const doc of snap.docs) {
    const d = doc.data();
    const sections = d.sections || [];
    const trans = d.translations || {};

    sections.forEach((sec, i) => {
      const key = `${doc.id}__${i}`;
      const enSecs = (trans['en'] || {}).sections || [];
      const enSec = enSecs[i] || {};
      const row = [
        key, doc.id, i,
        sec.arabic ?? '',
        enSec.translation ?? sec.translation ?? '',
        enSec.transliteration ?? sec.transliteration ?? '',
      ];
      for (const lang of TARGET_LANGS) {
        const langSecs = (trans[lang] || {}).sections || [];
        const langSec = langSecs[i] || {};
        row.push(langSec.translation ?? '', langSec.transliteration ?? '');
      }
      secRows.push(row);
    });
  }

  fs.writeFileSync(path.join(outDir, 'dua_sections_export.csv'), buildCsv([secHeader, ...secRows]), 'utf-8');
  console.log(`✅  content_duas sections: exported ${secRows.length} section rows → dua_sections_export.csv`);
}

// ─── Main ─────────────────────────────────────────────────────────────────────

async function main() {
  console.log('Exporting Firestore content for translation...\n');

  await exportHadiths();

  await exportCollection('content_imams', 'imams_export.csv',
    ['biography', 'famousQuote'], ['nameAr', 'famousQuoteAr']);

  await exportCollection('content_wisdom', 'wisdom_export.csv',
    ['quote', 'source'], ['quoteAr']);

  await exportCollection('content_hajj_steps', 'hajj_steps_export.csv',
    ['title', 'body'], ['arabic']);

  await exportCollection('content_umrah_steps', 'umrah_steps_export.csv',
    ['title', 'body'], ['arabic']);

  await exportCollection('content_scriptures', 'scriptures_export.csv',
    ['text', 'ref']);

  await exportCollection('content_role_models', 'role_models_export.csv',
    ['text']);

  await exportCollection('content_reflections', 'reflections_export.csv',
    ['text']);

  await exportDuas();

  console.log(`\nDone. CSV files written to: ${outDir}`);
  console.log('\nNext steps:');
  console.log('  1. Open CSV files in Google Sheets (File → Import)');
  console.log('  2. Fill in translation columns — columns ending in _<lang>');
  console.log('  3. Export back to CSV and run: node scripts/import_translations.js');
  process.exit(0);
}

main().catch(err => { console.error(err); process.exit(1); });
