/**
 * translate-new-keys.js - Auto-translate selected ARB keys using OpenAI API.
 *
 * Usage (PowerShell):
 *   $env:OPENAI_API_KEY = "sk-proj-..."
 *   node scripts/translate-new-keys.js
 *   node scripts/translate-new-keys.js --write
 *   node scripts/translate-new-keys.js --write --force
 *
 * Options:
 *   --write      Write changes to disk (default: dry run)
 *   --force      Overwrite existing values for the selected keys
 *   --verbose    Print translated values
 */

"use strict";

const fs = require("fs");
const path = require("path");
const https = require("https");

const L10N_DIR = path.join(__dirname, "../lib/l10n");
const SOURCE_FILE = path.join(L10N_DIR, "app_en.arb");

const KEYS_TO_TRANSLATE = [
  { key: "dailyGraceSaintLabel", insertAfter: "dailyGraceScriptureLabel" },
  { key: "tasbihatDuaFarajNote", insertAfter: "tasbihatDuaFarajSource" },
  { key: "imamsScreenTitle", insertAfter: "hadithCounter" },
  { key: "imamsScreenSubtitle", insertAfter: "imamsScreenTitle" },
  { key: "quickAction14Masumeen", insertAfter: "quickActionDailyHadith" },
  { key: "pilgrimageShiaNoteBody", insertAfter: "pilgrimageShiaNoteTitle" },
  { key: "hajjIntro", insertAfter: "pilgrimageShiaNoteBody" },
  { key: "voiceInputTitle", insertAfter: "umrahIntro" },
  { key: "voiceInputMicTitle", insertAfter: "voiceInputTitle" },
  { key: "voiceInputMicSubtitle", insertAfter: "voiceInputMicTitle" },
  { key: "voiceInputMicDenied", insertAfter: "voiceInputMicSubtitle" },
  { key: "voiceInputSpeak", insertAfter: "voiceInputMicDenied" },
  { key: "voiceInputListening", insertAfter: "voiceInputSpeak" },
  { key: "voiceInputPermissionDenied", insertAfter: "voiceInputListening" },
];

const MODEL = "gpt-4o-mini";
const API_KEY = (process.env.OPENAI_API_KEY || "").trim();

const DRY_RUN = !process.argv.includes("--write");
const FORCE = process.argv.includes("--force");
const VERBOSE = process.argv.includes("--verbose");
const LOCALES_FILTER = new Set(
  process.argv
    .filter((arg) => arg.startsWith("--locales="))
    .flatMap((arg) => arg.slice("--locales=".length).split(","))
    .map((value) => value.trim())
    .filter(Boolean),
);
const FALLBACK_ENGLISH_LOCALES = new Set(
  process.argv
    .filter((arg) => arg.startsWith("--fallback-english-locales="))
    .flatMap((arg) =>
      arg.slice("--fallback-english-locales=".length).split(","),
    )
    .map((value) => value.trim())
    .filter(Boolean),
);
// Locales where gpt-4o-mini produces unreliable or hallucinated output.
// These receive the English source value instead of a translation.
const BUILTIN_FALLBACK_ENGLISH = new Set([
  "ti",  // Tigrinya — model produces infinite repetition loops
]);

const ALLOW_ARABIC_SCRIPT = new Set([
  "ar",
  "ar_AE",
  "ar_EG",
  "ar_IQ",
  "ar_MA",
  "ar_SA",
  "ckb",
  "fa",
  "ps",
  "ur",
]);
const LANGUAGE_NAME_OVERRIDES = {
  ace: "Acehnese",
  ckb: "Central Kurdish",
  es_419: "Latin American Spanish",
  es_AR: "Spanish (Argentina)",
  mad: "Madurese",
  min: "Minangkabau",
  ny: "Nyanja",
  st: "Sesotho",
  ti: "Tigrinya",
  yue: "Cantonese",
};
const KEY_NOTES = {
  dailyGraceSaintLabel:
    'Short section label meaning "Figure of the Week" or "Featured Figure of the Week".',
  tasbihatDuaFarajNote:
    'A devotional note about reciting Tasbihat al-Zahra and Dua al-Faraj. Preserve the religious meaning.',
  imamsScreenTitle:
    'Screen title meaning "The Fourteen Infallibles" in Twelver Shia Islam. This does NOT mean fourteen imams.',
  imamsScreenSubtitle:
    'Subtitle about learning from the lives, wisdom, and legacy of the Fourteen Infallibles.',
  quickAction14Masumeen:
    'Very short quick-action label meaning "Fourteen Infallibles". Keep it concise.',
  pilgrimageShiaNoteBody:
    'A note that Hajj and Umrah details vary by marja and that users should follow their own marja and Ja\'fari fiqh guidance.',
  hajjIntro:
    'Intro text about Hajj in Twelver Shia Islam, framed around Ja\'fari rulings and spiritual preparation.',
  voiceInputTitle:
    'Section header label for the voice/microphone permission setting. Keep it short.',
  voiceInputMicTitle:
    'Label for the microphone toggle in settings. One word or very short.',
  voiceInputMicSubtitle:
    'Short description under the microphone toggle. "Ask Ayara" is the name of the feature — do not translate it.',
  voiceInputMicDenied:
    'Warning shown when the user denied microphone permission.',
  voiceInputSpeak:
    'Button label to activate voice input instead of typing. Short, action-oriented.',
  voiceInputListening:
    'Label shown while the microphone is actively recording. Ends with an ellipsis.',
  voiceInputPermissionDenied:
    'Snackbar message when microphone permission is not granted.',
};

function callOpenAI(prompt) {
  return new Promise((resolve, reject) => {
    const body = JSON.stringify({
      model: MODEL,
      temperature: 0.1,
      response_format: { type: "json_object" },
      messages: [{ role: "user", content: prompt }],
    });

    const req = https.request(
      {
        hostname: "api.openai.com",
        path: "/v1/chat/completions",
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${API_KEY}`,
          "Content-Length": Buffer.byteLength(body),
        },
      },
      (res) => {
        let data = "";
        res.on("data", (chunk) => {
          data += chunk;
        });
        res.on("end", () => {
          try {
            const parsed = JSON.parse(data);
            if (parsed.error) {
              reject(new Error(parsed.error.message));
              return;
            }
            resolve(parsed.choices[0].message.content);
          } catch (error) {
            reject(error);
          }
        });
      },
    );

    req.on("error", reject);
    req.write(body);
    req.end();
  });
}

function localeFromFile(filename) {
  return filename.replace(/^app_/, "").replace(/\.arb$/, "");
}

function toBcp47(locale) {
  return locale.replace(/_/g, "-");
}

function getLocaleLabel(locale) {
  if (LANGUAGE_NAME_OVERRIDES[locale]) {
    return LANGUAGE_NAME_OVERRIDES[locale];
  }

  const bcp47 = toBcp47(locale);

  try {
    const localeInfo = new Intl.Locale(bcp47);
    const display = new Intl.DisplayNames(["en"], { type: "language" });
    const languageName = display.of(localeInfo.language);
    if (!languageName) return locale;
    if (!localeInfo.region) return languageName;
    const regions = new Intl.DisplayNames(["en"], { type: "region" });
    const regionName = regions.of(localeInfo.region);
    return regionName ? `${languageName} (${regionName})` : languageName;
  } catch {
    return locale;
  }
}

function hasArabicScript(value) {
  return /[\u0600-\u06FF]/.test(value);
}

// Maximum characters a single translated value may contain.
// Anything longer is almost certainly a model hallucination / repetition loop.
const MAX_VALUE_LENGTH = 600;

function isValidTranslationMap(locale, translatedMap, targetKeys) {
  if (!translatedMap || typeof translatedMap !== "object") return false;

  for (const { key } of targetKeys) {
    const value = translatedMap[key];
    if (typeof value !== "string" || !value.trim()) {
      return false;
    }
    if (value.length > MAX_VALUE_LENGTH) {
      return false;
    }
    if (!ALLOW_ARABIC_SCRIPT.has(locale) && hasArabicScript(value)) {
      return false;
    }
  }

  return true;
}

function escapeArbString(value) {
  return JSON.stringify(value).slice(1, -1);
}

function insertAfterKey(rawText, afterKey, newKey, newValue) {
  const escaped = escapeArbString(newValue);
  const eol = rawText.includes("\r\n") ? "\r\n" : "\n";
  // No trailing comma on the new key — the next insertion will add one to it
  // when using it as an afterKey. This avoids a trailing comma on the final entry.
  const insertion = `  "${newKey}": "${escaped}"${eol}`;

  // $1 = key+value (no comma), $2 = optional whitespace, $3 = line ending.
  // Always force a comma after afterKey (it may have been the last entry without one).
  const pattern = new RegExp(
    `([ \\t]*"${afterKey}"[ \\t]*:[ \\t]*"[^"\\\\]*(?:\\\\.[^"\\\\]*)*")([ \\t]*),?([ \\t]*\\r?\\n)`,
  );

  if (pattern.test(rawText)) {
    return rawText.replace(pattern, `$1,$3${insertion}`);
  }

  // Fallback: afterKey not found — append before closing `}` and ensure
  // the currently-last entry gains a trailing comma.
  return rawText
    .replace(/(")[ \t]*,?([ \t]*\r?\n)([ \t]*\}[ \t\r\n]*)$/, `$1,$2${insertion}$3`);
}

function replaceKeyValue(rawText, key, newValue) {
  const escaped = escapeArbString(newValue);
  const pattern = new RegExp(
    `([ \\t]*"${key}"[ \\t]*:[ \\t]*)"[^"\\\\]*(?:\\\\.[^"\\\\]*)*"(\\s*,?)`,
  );
  if (!pattern.test(rawText)) return rawText;
  return rawText.replace(pattern, `$1"${escaped}"$2`);
}

function upsertKeyValue(rawText, afterKey, key, newValue) {
  if (new RegExp(`"${key}"\\s*:`).test(rawText)) {
    return replaceKeyValue(rawText, key, newValue);
  }
  return insertAfterKey(rawText, afterKey, key, newValue);
}

async function sleep(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

async function testApiKey() {
  const body = JSON.stringify({
    model: MODEL,
    temperature: 0,
    max_tokens: 5,
    messages: [{ role: "user", content: "Reply OK" }],
  });
  return new Promise((resolve, reject) => {
    const req = https.request(
      {
        hostname: "api.openai.com",
        path: "/v1/chat/completions",
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${API_KEY}`,
          "Content-Length": Buffer.byteLength(body),
        },
      },
      (res) => {
        let data = "";
        res.on("data", (chunk) => { data += chunk; });
        res.on("end", () => {
          try {
            const parsed = JSON.parse(data);
            if (parsed.error) {
              reject(new Error(`${parsed.error.code}: ${parsed.error.message}`));
            } else {
              resolve(true);
            }
          } catch (e) {
            reject(e);
          }
        });
      },
    );
    req.on("error", reject);
    req.write(body);
    req.end();
  });
}

async function main() {
  if (!API_KEY) {
    console.error("ERROR: OPENAI_API_KEY not set.");
    process.exit(1);
  }

  process.stdout.write("Checking OpenAI API key... ");
  try {
    await testApiKey();
    console.log("OK");
  } catch (error) {
    console.error(`FAILED\nERROR: ${error.message}`);
    process.exit(1);
  }

  const sourceArb = JSON.parse(fs.readFileSync(SOURCE_FILE, "utf8"));
  const keysInfo = KEYS_TO_TRANSLATE.filter(({ key }) => key in sourceArb);
  if (!keysInfo.length) {
    console.log("Nothing to translate.");
    return;
  }

  const allFiles = fs
    .readdirSync(L10N_DIR)
    .filter((file) => file.endsWith(".arb"))
    .filter((file) => file !== "app_en.arb")
    .filter((file) => !/^app_en(?:[_\.]|$)/.test(file))
    .filter((file) => {
      if (!LOCALES_FILTER.size) return true;
      return LOCALES_FILTER.has(localeFromFile(file));
    })
    .sort();

  const filesToUpdate = [];
  for (const filename of allFiles) {
    const fullPath = path.join(L10N_DIR, filename);
    const arb = JSON.parse(fs.readFileSync(fullPath, "utf8"));
    const targetKeys = FORCE
      ? keysInfo
      : keysInfo.filter(({ key }) => !(key in arb));

    if (targetKeys.length) {
      filesToUpdate.push({ filename, fullPath, targetKeys });
    }
  }

  if (!filesToUpdate.length) {
    console.log("All locale ARBs are already up to date.");
    return;
  }

  console.log(
    `\nKeys to translate: ${keysInfo.map(({ key }) => key).join(", ")}`,
  );
  console.log(`Locale files to update: ${filesToUpdate.length}`);
  console.log(`Mode: ${DRY_RUN ? "dry run" : `write${FORCE ? " + force" : ""}`}`);

  let updated = 0;
  let skipped = 0;

  for (let i = 0; i < filesToUpdate.length; i += 1) {
    const { filename, fullPath, targetKeys } = filesToUpdate[i];
    const locale = localeFromFile(filename);
    const localeLabel = getLocaleLabel(locale);
    const keyValueLines = targetKeys
      .map(
        ({ key }) =>
          `  "${key}": ${JSON.stringify(sourceArb[key])}\n    Note: ${KEY_NOTES[key]}`,
      )
      .join("\n");

    const useFallback =
      FALLBACK_ENGLISH_LOCALES.has(locale) || BUILTIN_FALLBACK_ENGLISH.has(locale);

    if (useFallback) {
      console.log(`Applying English fallback ${i + 1}/${filesToUpdate.length}: ${locale}`);
    } else {
      console.log(`Translating ${i + 1}/${filesToUpdate.length}: ${locale}`);
    }

    let translatedMap;
    let translatedOk = false;

    if (useFallback) {
      translatedMap = Object.fromEntries(
        targetKeys.map(({ key }) => [key, sourceArb[key]]),
      );
      translatedOk = true;
    }

    for (let attempt = 1; !translatedOk && attempt <= 3; attempt += 1) {
      const strictness =
        attempt === 1
          ? ""
          : "\n- Previous output was invalid. Follow the target language and script instructions exactly.";
      const prompt = `You are a professional translator for a Muslim spiritual guidance app called Ayara.

Translate the following English app strings into ${localeLabel} (locale code: ${locale}).
Return ONLY a JSON object in this exact format:
{
  "<key>": "<translated string>"
}

English strings:
${keyValueLines}

Rules:
- Keep translations natural and spiritually appropriate for a Twelver Shia Muslim audience.
- Preserve the Shia framing accurately.
- Translate into ${localeLabel}, not Arabic, unless the target locale normally uses Arabic script.
- Do not transliterate unless that is standard in ${localeLabel}.
- The number fourteen must remain fourteen. Never change it to four, fifteen, sixteen, forty-four, or any other number.
- For "imamsScreenTitle" and "quickAction14Masumeen", the intended meaning is "Fourteen Infallibles", not "Fourteen Imams".
- Keep placeholders and religious names intact where appropriate.
- Do not add markdown or explanation.${strictness}`;

      let responseText;
      try {
        responseText = await callOpenAI(prompt);
      } catch (error) {
        console.warn(`  attempt ${attempt} failed: ${error.message}`);
        if (attempt === 3) {
          console.warn(`Skipping ${locale}: API error after 3 attempts`);
          skipped += 1;
        }
        await sleep(500 * attempt);
        continue;
      }

      const cleaned = responseText
        .replace(/^```[a-z]*\n?/i, "")
        .replace(/\n?```$/i, "")
        .trim();

      try {
        translatedMap = JSON.parse(cleaned);
      } catch (error) {
        const match = cleaned.match(/\{[\s\S]*\}/);
        if (!match) {
          fs.writeFileSync(
            path.join(__dirname, "translate-new-keys.debug.txt"),
            cleaned,
            "utf8",
          );
          await sleep(150);
          continue;
        }
        try {
          translatedMap = JSON.parse(match[0]);
        } catch (innerError) {
          fs.writeFileSync(
            path.join(__dirname, "translate-new-keys.debug.txt"),
            cleaned,
            "utf8",
          );
          await sleep(150);
          continue;
        }
      }

      if (isValidTranslationMap(locale, translatedMap, targetKeys)) {
        translatedOk = true;
        break;
      }
    }

    if (!translatedOk) {
      const debugValues = translatedMap
        ? Object.entries(translatedMap).map(([k, v]) => `${k}(${v.length})`).join(", ")
        : "no map parsed";
      console.warn(`Skipping ${locale}: invalid translated output [${debugValues}]`);
      skipped += 1;
      continue;
    }

    let rawText = fs.readFileSync(fullPath, "utf8");
    let modified = false;

    for (const { key, insertAfter } of targetKeys) {
      const translated = translatedMap[key];
      if (!translated) {
        console.warn(`Missing translation for ${locale}.${key}`);
        skipped += 1;
        continue;
      }
      if (VERBOSE) {
        console.log(`${locale}.${key} = ${translated}`);
      }
      rawText = upsertKeyValue(rawText, insertAfter, key, translated);
      modified = true;
    }

    if (!modified) continue;

    try {
      JSON.parse(rawText);
    } catch (error) {
      console.error(`Invalid JSON after update: ${filename}`);
      skipped += 1;
      continue;
    }

    if (!DRY_RUN) {
      fs.writeFileSync(fullPath, rawText, "utf8");
    }
    updated += 1;

    await sleep(150);
  }

  console.log(`Done. Updated: ${updated}${skipped ? `, skipped: ${skipped}` : ""}`);
}

main().catch((error) => {
  console.error("Fatal:", error);
  process.exit(1);
});
