const fs = require('fs');

const paths = [
  'lib/l10n/app_en.arb',
  'lib/l10n/app_en_US.arb',
];

const pattern = /^(daily(Scripture\d+|RoleModel\d+|Reflection\d+)|wisdomQuote\d+|wisdomQuoteSource\d+|hajjStep\d+(Title|Body)|hajjIntro|umrahStep\d+(Title|Body)|umrahIntro|promptSlot\d+)/;

for (const p of paths) {
  if (!fs.existsSync(p)) { console.log(`Skipping ${p} (not found)`); continue; }
  const data = JSON.parse(fs.readFileSync(p, 'utf-8'));
  const toRemove = Object.keys(data).filter(k => pattern.test(k));
  toRemove.forEach(k => delete data[k]);
  fs.writeFileSync(p, JSON.stringify(data, null, 2) + '\n', 'utf-8');
  console.log(`${p}: removed ${toRemove.length} keys, ${Object.keys(data).length} remaining`);
}
