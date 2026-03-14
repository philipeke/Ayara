const fs = require('fs');
const path = require('path');

const dir = 'lib/l10n';
const files = fs.readdirSync(dir)
  .filter(f => f.startsWith('app_localizations_') && f.endsWith('.dart'))
  .map(f => path.join(dir, f));

// Keys removed from base class — match getter name in any locale implementation
const pattern = /\b(daily(Scripture\d+|RoleModel\d+|Reflection\d+)|wisdomQuote\d+|wisdomQuoteSource\d+|hajjStep\d+(Title|Body)|hajjIntro(?!N)|umrahStep\d+(Title|Body)|umrahIntro(?!N)|promptSlot\d+)\b/;

let totalRemoved = 0;

for (const filePath of files) {
  const content = fs.readFileSync(filePath, 'utf-8');
  const lines = content.split('\n');
  const out = [];
  let i = 0;
  let removed = 0;

  while (i < lines.length) {
    const line = lines[i];
    if (pattern.test(line) && (line.includes('String get') || line.includes("'") || line.includes('"'))) {
      // This line is part of a getter implementation — skip until ';'
      if (line.trimEnd().endsWith(';')) {
        // single-line — skip
      } else {
        i++;
        while (i < lines.length && !lines[i].trimEnd().endsWith(';')) i++;
        // skip the closing ';' line too
      }
      removed++;

      // Drop preceding @override
      if (out.length > 0 && out[out.length - 1].trim() === '@override') {
        out.pop();
        removed++;
      }
      // Drop extra blank line before @override if double blank
      if (out.length > 0 && out[out.length - 1].trim() === '' &&
          out.length > 1 && out[out.length - 2].trim() === '') {
        out.pop();
      }
    } else {
      out.push(line);
    }
    i++;
  }

  if (removed > 0) {
    fs.writeFileSync(filePath, out.join('\n'), 'utf-8');
    const shortName = path.basename(filePath);
    console.log(`${shortName}: removed ${removed} lines`);
    totalRemoved += removed;
  }
}

console.log(`\nDone. Total lines removed across ${files.length} files: ${totalRemoved}`);
