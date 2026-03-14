#!/usr/bin/env node
/**
 * scripts/import_translations.js
 *
 * Reads filled-in CSV files from scripts/translations/ and writes the
 * translations back to Firestore under each document's `translations` map.
 *
 * Only non-empty cells are written — existing translations are merged, not
 * overwritten, so you can import one language at a time.
 *
 * Usage (from repo root):
 *   node scripts/import_translations.js
 *
 * The script is idempotent — running it again only updates existing docs.
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
  credential: admin.credential.cert(serviceAccountPath),
  projectId: 'ayara-mobile-app',
});
const db = admin.firestore();

const inDir = path.resolve(__dirname, 'translations');

// ─── CSV parser ───────────────────────────────────────────────────────────────

function parseCsv(content) {
  const rows = [];
  let row = [];
  let cell = '';
  let inQuotes = false;

  for (let i = 0; i < content.length; i++) {
    const ch = content[i];
    if (inQuotes) {
      if (ch === '"' && content[i + 1] === '"') {
        cell += '"';
        i++;
      } else if (ch === '"') {
        inQuotes = false;
      } else {
        cell += ch;
      }
    } else if (ch === '"') {
      inQuotes = true;
    } else if (ch === ',') {
      row.push(cell);
      cell = '';
    } else if (ch === '\n') {
      row.push(cell);
      cell = '';
      if (row.some(c => c !== '')) rows.push(row);
      row = [];
    } else if (ch === '\r') {
      // skip
    } else {
      cell += ch;
    }
  }
  if (cell || row.length) { row.push(cell); if (row.some(c => c !== '')) rows.push(row); }
  return rows;
}

// ─── Import one CSV ───────────────────────────────────────────────────────────

/**
 * @param {string} csvFile - path to filled CSV
 * @param {string} collection - Firestore collection name
 * @param {string[]} translatableFields - same order as used in export
 */
async function importCsv(csvFile, collection, translatableFields) {
  if (!fs.existsSync(csvFile)) {
    console.log(`⏭️   ${path.basename(csvFile)}: not found, skipping`);
    return;
  }

  const rows = parseCsv(fs.readFileSync(csvFile, 'utf-8'));
  if (rows.length < 2) {
    console.log(`⚠️   ${path.basename(csvFile)}: empty or header-only, skipping`);
    return;
  }

  const header = rows[0];
  const dataRows = rows.slice(1);

  // Parse header to find column positions
  // Format: id, order, [arabicRef_REF...], field_en, ..., field_<lang>, ...
  const colIndex = {};
  for (let i = 0; i < header.length; i++) {
    colIndex[header[i]] = i;
  }

  // Determine all languages present in the header
  const langSet = new Set();
  for (const col of header) {
    const match = col.match(/^.+_([a-z]{2,3})$/);
    if (match && match[1] !== 'en' && !col.endsWith('_REF')) {
      langSet.add(match[1]);
    }
  }
  const langs = [...langSet];

  let docsUpdated = 0;
  let translationsAdded = 0;

  const BATCH_SIZE = 400;
  let batch = db.batch();
  let batchCount = 0;

  for (const row of dataRows) {
    const docId = row[colIndex['id']];
    if (!docId) continue;

    const ref = db.collection(collection).doc(docId);
    const updates = {};

    for (const lang of langs) {
      const langUpdates = {};
      for (const field of translatableFields) {
        const colName = `${field}_${lang}`;
        const idx = colIndex[colName];
        if (idx == null) continue;
        const val = (row[idx] ?? '').trim();
        if (val) {
          langUpdates[field] = val;
          translationsAdded++;
        }
      }
      if (Object.keys(langUpdates).length > 0) {
        for (const [f, v] of Object.entries(langUpdates)) {
          updates[`translations.${lang}.${f}`] = v;
        }
      }
    }

    if (Object.keys(updates).length > 0) {
      batch.update(ref, updates);
      docsUpdated++;
      batchCount++;

      if (batchCount >= BATCH_SIZE) {
        await batch.commit();
        batch = db.batch();
        batchCount = 0;
      }
    }
  }

  if (batchCount > 0) await batch.commit();

  console.log(`✅  ${path.basename(csvFile)}: updated ${docsUpdated} docs, ${translationsAdded} translation fields`);
}

// ─── Main ─────────────────────────────────────────────────────────────────────

async function main() {
  console.log('Importing translations to Firestore...\n');

  // Hadiths — translations.{lang} is a plain string (the translated text)
  await importCsv(
    path.join(inDir, 'hadiths_export.csv'),
    'content_hadiths',
    ['english'],
  );

  await importCsv(
    path.join(inDir, 'imams_export.csv'),
    'content_imams',
    ['biography', 'famousQuote'],
  );

  await importCsv(
    path.join(inDir, 'wisdom_export.csv'),
    'content_wisdom',
    ['quote', 'source'],
  );

  await importCsv(
    path.join(inDir, 'hajj_steps_export.csv'),
    'content_hajj_steps',
    ['title', 'body'],
  );

  await importCsv(
    path.join(inDir, 'umrah_steps_export.csv'),
    'content_umrah_steps',
    ['title', 'body'],
  );

  await importCsv(
    path.join(inDir, 'scriptures_export.csv'),
    'content_scriptures',
    ['text', 'ref'],
  );

  await importCsv(
    path.join(inDir, 'role_models_export.csv'),
    'content_role_models',
    ['text'],
  );

  await importCsv(
    path.join(inDir, 'reflections_export.csv'),
    'content_reflections',
    ['text'],
  );

  // Duas — flat fields (nameEn, shortDesc)
  await importCsv(
    path.join(inDir, 'duas_export.csv'),
    'content_duas',
    ['nameEn', 'shortDesc'],
  );

  // Dua sections — nested structure: translations.{lang}.sections[i].translation/transliteration
  await importDuaSections(path.join(inDir, 'dua_sections_export.csv'));

  console.log('\nDone. Translations are live in Firestore.');
  console.log('App users will see translated content on next cache refresh (within 24h).');
  process.exit(0);
}

// ─── Dua sections special importer ───────────────────────────────────────────
// Sections are stored as an array inside the dua document.
// Strategy: read existing doc, patch sections array, write back.

async function importDuaSections(csvFile) {
  if (!fs.existsSync(csvFile)) {
    console.log(`⏭️   ${path.basename(csvFile)}: not found, skipping`);
    return;
  }

  const rows = parseCsv(fs.readFileSync(csvFile, 'utf-8'));
  if (rows.length < 2) return;

  const header = rows[0];
  const dataRows = rows.slice(1);
  const colIndex = {};
  for (let i = 0; i < header.length; i++) colIndex[header[i]] = i;

  const langSet = new Set();
  for (const col of header) {
    const m = col.match(/^.+_([a-z]{2,3})$/);
    if (m && m[1] !== 'en' && !col.endsWith('_REF')) langSet.add(m[1]);
  }
  const langs = [...langSet];

  // Group rows by dua_id
  const byDua = {};
  for (const row of dataRows) {
    const duaId = row[colIndex['dua_id']];
    const sectionIndex = parseInt(row[colIndex['section_index']], 10);
    if (!duaId || isNaN(sectionIndex)) continue;
    if (!byDua[duaId]) byDua[duaId] = [];
    byDua[duaId].push({ sectionIndex, row });
  }

  let docsUpdated = 0;
  let translationsAdded = 0;

  for (const [duaId, sections] of Object.entries(byDua)) {
    const ref = db.collection('content_duas').doc(duaId);
    const snap = await ref.get();
    if (!snap.exists) continue;

    const data = snap.data();
    const trans = data.translations || {};

    for (const lang of langs) {
      if (!trans[lang]) trans[lang] = {};
      if (!trans[lang].sections) trans[lang].sections = [];

      for (const { sectionIndex, row } of sections) {
        while (trans[lang].sections.length <= sectionIndex) {
          trans[lang].sections.push({});
        }
        const tVal = (row[colIndex[`translation_${lang}`]] ?? '').trim();
        const trVal = (row[colIndex[`transliteration_${lang}`]] ?? '').trim();
        if (tVal) { trans[lang].sections[sectionIndex].translation = tVal; translationsAdded++; }
        if (trVal) { trans[lang].sections[sectionIndex].transliteration = trVal; translationsAdded++; }
      }
    }

    await ref.update({ translations: trans });
    docsUpdated++;
  }

  console.log(`✅  ${path.basename(csvFile)}: updated ${docsUpdated} duas, ${translationsAdded} translation fields`);
}

main().catch(err => { console.error(err); process.exit(1); });
