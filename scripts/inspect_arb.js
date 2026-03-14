const fs = require('fs');
const data = JSON.parse(fs.readFileSync('lib/l10n/app_en.arb', 'utf-8'));

const prefix = process.argv[2] || 'prompt';
const keys = Object.keys(data).filter(k => k.startsWith(prefix) && !k.startsWith('@'));
keys.forEach(k => {
  const val = String(data[k] || '');
  console.log(`\n[${k}] (${val.length} chars)\n  ${val.slice(0, 160)}`);
});
