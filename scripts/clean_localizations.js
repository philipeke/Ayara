const fs = require('fs');

const path = 'lib/l10n/app_localizations.dart';
const content = fs.readFileSync(path, 'utf-8');
const lines = content.split('\n');

const pattern = /daily(Scripture\d+|RoleModel\d+|Reflection\d+)|wisdomQuote\d+|wisdomQuoteSource\d+|hajjStep\d+(Title|Body)|hajjIntro|umrahStep\d+(Title|Body)|umrahIntro|promptSlot\d+/;

const out = [];
let i = 0;
while (i < lines.length) {
  const line = lines[i];
  if (pattern.test(line)) {
    // Skip this line.
    // If it's an @override + get that spans multiple lines (string continuation),
    // consume until the line ends with ';'
    if (line.trimEnd().endsWith(';')) {
      // Single-line declaration or implementation — just skip.
    } else {
      // Multi-line: consume until we find a line ending with ';'
      i++;
      while (i < lines.length && !lines[i].trimEnd().endsWith(';')) i++;
      // i is now on the closing ';' line — skip it too
    }
    // Also drop a preceding '@override' if the previous *output* line is @override
    if (out.length > 0 && out[out.length - 1].trim() === '@override') {
      out.pop();
    }
    // Remove blank line before @override if present
    if (out.length > 0 && out[out.length - 1].trim() === '' &&
        out.length > 1 && out[out.length - 2].trim() === '') {
      out.pop();
    }
  } else {
    out.push(line);
  }
  i++;
}

const result = out.join('\n');
fs.writeFileSync(path, result, 'utf-8');

const removed = (content.split('\n').length - result.split('\n').length);
console.log(`Removed ${removed} lines. File now has ${result.split('\n').length} lines.`);
