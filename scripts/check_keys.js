const fs = require('fs');
const d = JSON.parse(fs.readFileSync('lib/l10n/app_en.arb', 'utf-8'));
console.log('hajjIntro:', d.hajjIntro ? 'EXISTS' : 'MISSING');
console.log('umrahIntro:', d.umrahIntro ? 'EXISTS' : 'MISSING');
