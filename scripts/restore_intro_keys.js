const fs = require('fs');

const hajjIntro = "Hajj is the fifth pillar of Islam, obligatory once in a lifetime for every Muslim who is physically and financially able. For most Twelver Shia pilgrims today, this means Hajj al-Tamattu', performed in the month of Dhul Hijjah in the footsteps of Prophet Ibrahim (AS), his son Ismail (AS), and Lady Hajar. This guide follows the Ja'fari outline of the rites, while ziyarat in Medina remains a deeply cherished journey before or after Hajj.";

const umrahIntro = "Umrah is the lesser pilgrimage to Mecca and, unlike Hajj, can be performed at any time of the year. While not obligatory, it carries immense spiritual reward and is considered a highly recommended act of worship. It shares several rituals with Hajj but is shorter, consisting of four main rites.";

const paths = ['lib/l10n/app_en.arb', 'lib/l10n/app_en_US.arb'];

for (const p of paths) {
  const data = JSON.parse(fs.readFileSync(p, 'utf-8'));
  data.hajjIntro = hajjIntro;
  data.umrahIntro = umrahIntro;
  fs.writeFileSync(p, JSON.stringify(data, null, 2) + '\n', 'utf-8');
  console.log(`${p}: restored hajjIntro + umrahIntro`);
}
