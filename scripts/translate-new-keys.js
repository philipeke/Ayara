/**
 * translate-new-keys.js — Auto-translate missing ARB keys using OpenAI API
 *
 * Usage (PowerShell):
 *   $env:OPENAI_API_KEY = "sk-proj-..."
 *   node scripts/translate-new-keys.js          # dry run
 *   node scripts/translate-new-keys.js --write  # write to disk
 *
 * What it does:
 *   1. Reads the keys listed in KEYS_TO_TRANSLATE from app_en.arb
 *   2. For each other .arb file that is missing any of those keys,
 *      translates them via OpenAI and inserts them after the anchor key.
 *   3. Dry-run by default — pass --write to actually save files.
 *
 * Options:
 *   --write      Write changes to disk (default: dry-run only)
 *   --verbose    Print each translated value
 */

"use strict";

const fs = require("fs");
const path = require("path");
const https = require("https");

// ─── Config ───────────────────────────────────────────────────────────────────

const L10N_DIR = path.join(__dirname, "../lib/l10n");
const SOURCE_FILE = path.join(L10N_DIR, "app_en.arb");

// Keys to translate + the key they should be inserted AFTER in each ARB file.
// Add more entries here whenever you add new keys to app_en.arb.
const KEYS_TO_TRANSLATE = [
  { key: "calendarAddToPhone",         insertAfter: "calendarNoEvents" },
  { key: "calendarAddedToPhone",       insertAfter: "calendarAddToPhone" },
  { key: "pilgrimageDuaTitle",         insertAfter: "pilgrimageImportantNotesTitle" },
  { key: "pilgrimageJafariNoteTitle",  insertAfter: "pilgrimageDuaTitle" },
  { key: "pilgrimageComplete",         insertAfter: "pilgrimageJafariNoteTitle" },
  { key: "pilgrimageMarkDone",         insertAfter: "pilgrimageComplete" },
  { key: "pilgrimageProgress",         insertAfter: "pilgrimageMarkDone" },
  { key: "pilgrimageReadTime",         insertAfter: "pilgrimageProgress" },
];

const BATCH_SIZE = 30; // languages per API call
const MODEL = "gpt-4o-mini"; // fast + cheap for bulk translation
const API_KEY = process.env.OPENAI_API_KEY;

const DRY_RUN = !process.argv.includes("--write");
const VERBOSE = process.argv.includes("--verbose");

// ─── Helpers ──────────────────────────────────────────────────────────────────

function callOpenAI(prompt) {
  return new Promise((resolve, reject) => {
    const body = JSON.stringify({
      model: MODEL,
      temperature: 0.1,
      messages: [{ role: "user", content: prompt }],
    });

    const req = https.request(
      {
        hostname: "api.openai.com",
        path: "/v1/chat/completions",
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          "Authorization": `Bearer ${API_KEY}`,
          "Content-Length": Buffer.byteLength(body),
        },
      },
      (res) => {
        let data = "";
        res.on("data", (c) => (data += c));
        res.on("end", () => {
          try {
            const parsed = JSON.parse(data);
            if (parsed.error) return reject(new Error(parsed.error.message));
            resolve(parsed.choices[0].message.content);
          } catch (e) {
            reject(e);
          }
        });
      }
    );
    req.on("error", reject);
    req.write(body);
    req.end();
  });
}

/** Extract locale code from filename, e.g. "app_zh_TW.arb" → "zh_TW" */
function localeFromFile(filename) {
  return filename.replace(/^app_/, "").replace(/\.arb$/, "");
}

/** Insert value after a given key inside raw ARB JSON text. */
function insertAfterKey(rawText, afterKey, newKey, newValue) {
  const escaped = newValue.replace(/"/g, '\\"');

  // Detect the file's line ending style and match it
  const eol = rawText.includes("\r\n") ? "\r\n" : "\n";
  const insertion = `  "${newKey}": "${escaped}",${eol}`;

  // Match CRLF or LF at end of line
  const pattern = new RegExp(
    `([ \\t]*"${afterKey}"[ \\t]*:[ \\t]*"[^"\\\\]*(?:\\\\.[^"\\\\]*)*"[ \\t]*,?[ \\t]*\\r?\\n)`
  );
  if (!pattern.test(rawText)) {
    // Anchor not found — append before the closing brace
    return rawText.replace(/(\r?\n\}[\s]*$)/, `${eol}${insertion.trimEnd()}${eol}}`);
  }
  return rawText.replace(pattern, `$1${insertion}`);
}

/** Chunk an array into groups of n. */
function chunks(arr, n) {
  const result = [];
  for (let i = 0; i < arr.length; i += n) result.push(arr.slice(i, i + n));
  return result;
}

// ─── Main ─────────────────────────────────────────────────────────────────────

async function main() {
  if (!API_KEY) {
    console.error("❌  OPENAI_API_KEY not set.");
    console.error('    Run: $env:OPENAI_API_KEY = "sk-proj-..."');
    process.exit(1);
  }

  // 1. Read source (English) values
  const sourceArb = JSON.parse(fs.readFileSync(SOURCE_FILE, "utf8"));
  const keysInfo = KEYS_TO_TRANSLATE.filter(({ key }) => key in sourceArb);
  if (!keysInfo.length) {
    console.log("✅  All keys already present in source — nothing to do.");
    return;
  }

  console.log(
    `\n📖  Keys to translate: ${keysInfo.map((k) => k.key).join(", ")}`
  );
  console.log(`🔍  Source values:`);
  for (const { key } of keysInfo) {
    console.log(`     ${key}: "${sourceArb[key]}"`);
  }

  // 2. Collect ARB files that need updates
  const allFiles = fs
    .readdirSync(L10N_DIR)
    .filter((f) => f.endsWith(".arb") && f !== "app_en.arb")
    .sort();

  const filesToUpdate = [];
  for (const filename of allFiles) {
    const fullPath = path.join(L10N_DIR, filename);
    const arb = JSON.parse(fs.readFileSync(fullPath, "utf8"));
    const missingKeys = keysInfo.filter(({ key }) => !(key in arb));
    if (missingKeys.length) {
      filesToUpdate.push({ filename, fullPath, arb, missingKeys });
    }
  }

  if (!filesToUpdate.length) {
    console.log("\n✅  All ARB files already have the keys — nothing to do.");
    return;
  }

  console.log(`\n📝  ${filesToUpdate.length} files need updates.`);
  if (DRY_RUN) {
    console.log("ℹ️   DRY RUN — pass --write to save changes.\n");
  }

  // 3. Translate in batches
  const translations = {};
  const batches = chunks(filesToUpdate, BATCH_SIZE);
  let batchNum = 0;

  for (const batch of batches) {
    batchNum++;
    console.log(
      `\n🌐  Batch ${batchNum}/${batches.length} — translating ${batch.length} locales...`
    );

    const localeList = batch
      .map(({ filename }) => localeFromFile(filename))
      .join(", ");

    const uniqueKeys = [
      ...new Set(batch.flatMap(({ missingKeys }) => missingKeys.map((k) => k.key))),
    ];

    const keyValueLines = uniqueKeys
      .map((k) => `  "${k}": "${sourceArb[k]}"`)
      .join("\n");

    const prompt = `You are a professional translator for a Muslim spiritual guidance app called Ayara.

Translate the following English app strings into each of the listed languages.
Return ONLY a JSON object in this exact format — no markdown, no explanation:

{
  "<locale_code>": {
    "<key>": "<translated string>"
  },
  ...
}

English strings to translate:
${keyValueLines}

Target locales (BCP-47 codes):
${localeList}

Rules:
- Keep translations natural and spiritually appropriate for a Muslim audience.
- Do not transliterate — use the native script of each language.
- Do not add any text outside the JSON.`;

    let responseText;
    try {
      responseText = await callOpenAI(prompt);
    } catch (e) {
      console.error(`❌  API call failed for batch ${batchNum}:`, e.message);
      process.exit(1);
    }

    const cleaned = responseText
      .replace(/^```[a-z]*\n?/i, "")
      .replace(/\n?```$/i, "")
      .trim();

    let parsed;
    try {
      parsed = JSON.parse(cleaned);
    } catch (e) {
      console.error(`❌  Failed to parse API response as JSON:\n${cleaned}`);
      process.exit(1);
    }

    for (const [rawLocale, keyMap] of Object.entries(parsed)) {
      const locale = rawLocale.replace(/-/g, "_");
      translations[locale] = { ...(translations[locale] || {}), ...keyMap };
    }

    if (batchNum < batches.length) {
      await new Promise((r) => setTimeout(r, 500));
    }
  }

  // 4. Apply translations to files
  let updated = 0;
  let skipped = 0;

  for (const { filename, fullPath, missingKeys } of filesToUpdate) {
    const locale = localeFromFile(filename);
    const localeTranslations = translations[locale] || {};

    let rawText = fs.readFileSync(fullPath, "utf8");
    let modified = false;

    for (const { key, insertAfter } of missingKeys) {
      const value = localeTranslations[key];
      if (!value) {
        console.warn(`⚠️   No translation for "${key}" in locale "${locale}" — skipping.`);
        skipped++;
        continue;
      }

      if (VERBOSE) {
        console.log(`  ${locale}  ${key}: "${value}"`);
      }

      rawText = insertAfterKey(rawText, insertAfter, key, value);
      modified = true;
    }

    if (!modified) continue;

    try {
      JSON.parse(rawText);
    } catch (e) {
      console.error(`❌  Modified ARB for "${locale}" is not valid JSON — skipping.`);
      skipped++;
      continue;
    }

    if (!DRY_RUN) {
      fs.writeFileSync(fullPath, rawText, "utf8");
    }
    updated++;
    if (DRY_RUN) {
      console.log(`  [dry] would update: ${filename}`);
    }
  }

  console.log(`\n✅  Done.`);
  console.log(`   Updated : ${updated} files`);
  if (skipped) console.log(`   Skipped : ${skipped} (see warnings above)`);
  if (DRY_RUN && updated > 0) {
    console.log(`\n   Run with --write to save changes.`);
  }
}

main().catch((e) => {
  console.error("❌  Fatal:", e);
  process.exit(1);
});
