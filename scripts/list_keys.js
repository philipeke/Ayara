const fs = require('fs');
const d = JSON.parse(fs.readFileSync('lib/l10n/app_en.arb', 'utf-8'));
const keys = Object.keys(d).filter(k => !k.startsWith('@') && (k.startsWith('wisdom') || k.startsWith('hajj') || k.startsWith('umrah') || k.startsWith('prompt')));
keys.forEach(k => console.log(k + ': ' + String(d[k]).slice(0, 80)));
