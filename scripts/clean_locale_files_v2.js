/**
 * Removes @override getter implementations from all locale dart files
 * for getters that no longer exist in the abstract base class.
 */
const fs = require('fs');
const path = require('path');

// 1. Extract all abstract getter names from the base class
const base = fs.readFileSync('lib/l10n/app_localizations.dart', 'utf-8');
const abstractGetters = new Set();
for (const m of base.matchAll(/^\s+String get (\w+);/gm)) {
  abstractGetters.add(m[1]);
}
console.log(`Base class has ${abstractGetters.size} abstract getters.`);

// 2. Process each locale implementation file
const dir = 'lib/l10n';
const files = fs.readdirSync(dir)
  .filter(f => f.startsWith('app_localizations_') && f.endsWith('.dart'))
  .map(f => path.join(dir, f));

let totalLinesRemoved = 0;
let filesModified = 0;

for (const filePath of files) {
  const content = fs.readFileSync(filePath, 'utf-8');
  const lines = content.split('\n');
  const out = [];
  let i = 0;
  let linesRemoved = 0;

  while (i < lines.length) {
    const line = lines[i];

    // Detect: "  String get <name>" or "@override" followed by "String get <name>"
    const getterMatch = line.match(/^\s+String get (\w+)/);

    if (getterMatch) {
      const name = getterMatch[1];

      if (!abstractGetters.has(name)) {
        // This getter doesn't exist in the base class — remove it
        // Consume until end of getter (line ending with ';')
        if (line.trimEnd().endsWith(';')) {
          // single-line — skip it
          linesRemoved++;
        } else {
          linesRemoved++;
          i++;
          while (i < lines.length && !lines[i].trimEnd().endsWith(';')) {
            linesRemoved++;
            i++;
          }
          // the ';' line itself
          linesRemoved++;
        }

        // Remove preceding @override from output
        if (out.length > 0 && out[out.length - 1].trim() === '@override') {
          out.pop();
          linesRemoved++;
        }

        // Remove double blank lines left behind
        if (out.length > 0 && out[out.length - 1].trim() === '' &&
            out.length > 1 && out[out.length - 2].trim() === '') {
          out.pop();
        }

        i++;
        continue;
      }
    }

    out.push(line);
    i++;
  }

  if (linesRemoved > 0) {
    fs.writeFileSync(filePath, out.join('\n'), 'utf-8');
    console.log(`${path.basename(filePath)}: removed ${linesRemoved} lines`);
    totalLinesRemoved += linesRemoved;
    filesModified++;
  }
}

console.log(`\nDone. Modified ${filesModified} files, removed ${totalLinesRemoved} total lines.`);
