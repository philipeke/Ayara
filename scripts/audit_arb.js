const fs = require('fs');
const data = JSON.parse(fs.readFileSync('lib/l10n/app_en.arb', 'utf-8'));
const keys = Object.keys(data).filter(k => k !== '@@locale' && !k.startsWith('@'));
console.log('Total keys:', keys.length);

// Group by feature prefix
const groups = {};
keys.forEach(k => {
  // strip trailing numbers
  const base = k.replace(/\d+$/, '').replace(/\d+[A-Z].*$/, '');
  const prefix = base.match(/^[a-z]+[A-Z][a-z]+/) ? base.match(/^[a-z]+/)[0] : base.slice(0, 12);
  groups[prefix] = groups[prefix] || [];
  groups[prefix].push(k);
});

Object.entries(groups)
  .sort((a, b) => b[1].length - a[1].length)
  .forEach(([p, ks]) => {
    if (ks.length > 2) {
      // Show value length to flag long-form content
      const sample = data[ks[0]] || '';
      const avg = ks.reduce((s, k) => s + (data[k] ? String(data[k]).length : 0), 0) / ks.length;
      console.log(`  ${ks.length.toString().padStart(3)}  ${p.padEnd(28)}  avg ${Math.round(avg)} chars  e.g: "${String(sample).slice(0,60)}"`);
    }
  });
