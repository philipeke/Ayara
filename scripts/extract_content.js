const fs = require('fs');
const d = JSON.parse(fs.readFileSync('lib/l10n/app_en.arb', 'utf-8'));

function dump(prefix) {
  const keys = Object.keys(d).filter(k => !k.startsWith('@') && k.startsWith(prefix));
  keys.forEach(k => console.log(`  ${k}: ${JSON.stringify(d[k])}`));
}

console.log('=== WISDOM ===');
dump('wisdomQuote');

console.log('\n=== HAJJ ===');
dump('hajjStep');
console.log('hajjIntro:', JSON.stringify(d.hajjIntro));

console.log('\n=== UMRAH ===');
dump('umrahStep');
console.log('umrahIntro:', JSON.stringify(d.umrahIntro));

console.log('\n=== PROMPTS ===');
dump('promptSlot');
