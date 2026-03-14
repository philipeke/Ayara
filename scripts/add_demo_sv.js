#!/usr/bin/env node
/**
 * One-off helper: injects Swedish (sv) demo translations into wisdom_export.csv
 * so you can see exactly how a filled-in row looks.
 * Delete this script after you've seen the format.
 *
 * Run from repo root:  node scripts/add_demo_sv.js
 */

const fs = require('fs');
const path = require('path');

const file = path.resolve(__dirname, 'translations/wisdom_export.csv');
const content = fs.readFileSync(file, 'utf-8');
const lines = content.split('\n');

const header = lines[0].split(',');
const svQuoteCol  = header.indexOf('quote_sv');
const svSourceCol = header.indexOf('source_sv');
const noQuoteCol  = header.indexOf('quote_no');
const noSourceCol = header.indexOf('source_no');

if (svQuoteCol === -1) { console.error('quote_sv column not found'); process.exit(1); }

// Demo Swedish + Norwegian translations for first 3 wisdom quotes (w00–w02)
const demos = {
  w00: {
    sv: ['Den bäste av människorna är den som är mest nyttig för andra.', 'Imam Ali (frid vare med honom)'],
    no: ['Det beste mennesket er den som er mest nyttig for andre.', 'Imam Ali (fred være med ham)'],
  },
  w01: {
    sv: ['Tystnaden är kontemplationens trädgård.', 'Imam Ali (frid vare med honom)'],
    no: ['Stillheten er kontemplasjonens hage.', 'Imam Ali (fred være med ham)'],
  },
  w02: {
    sv: ['Var inte andras slav när Allah har skapat dig fri.', 'Imam Ali (frid vare med honom)'],
    no: ['Vær ikke andres slave når Allah har skapt deg fri.', 'Imam Ali (fred være med ham)'],
  },
};

const newLines = lines.map((line, lineIdx) => {
  if (lineIdx === 0 || !line.trim()) return line;
  const cols = line.split(',');
  const id = cols[0];
  const demo = demos[id];
  if (!demo) return line;

  if (demo.sv) {
    cols[svQuoteCol]  = `"${demo.sv[0]}"`;
    cols[svSourceCol] = `"${demo.sv[1]}"`;
  }
  if (demo.no && noQuoteCol !== -1) {
    cols[noQuoteCol]  = `"${demo.no[0]}"`;
    cols[noSourceCol] = `"${demo.no[1]}"`;
  }
  return cols.join(',');
});

fs.writeFileSync(file, newLines.join('\n'), 'utf-8');
console.log('Done — opened wisdom_export.csv and filled sv + no columns for w00, w01, w02.');
console.log(`  quote_sv  = column ${svQuoteCol}`);
console.log(`  source_sv = column ${svSourceCol}`);
