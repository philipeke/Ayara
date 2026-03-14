#!/usr/bin/env node
/**
 * scripts/seed_content.js
 *
 * Seeds Firestore with all religious content:
 *   - content_hadiths   (35 hadiths)
 *   - content_imams     (Fourteen Infallibles profiles)
 *   - content_duas      (9 duas with sections)
 *
 * Usage (from repo root):
 *   1. Download your service account key from Firebase Console →
 *      Project Settings → Service Accounts → Generate New Private Key
 *      and save it as  scripts/service-account.json
 *   2. Run:  node scripts/seed_content.js
 *
 * The script is idempotent — running it again only updates existing docs.
 */

const admin = require('../functions/node_modules/firebase-admin');

// ─── Auth ─────────────────────────────────────────────────────────────────────
const serviceAccountPath = require('path').resolve(__dirname, 'service-account.json');
if (!require('fs').existsSync(serviceAccountPath)) {
  console.error('❌  Service account key not found.');
  console.error('   Download it from Firebase Console → Project Settings → Service Accounts');
  console.error(`   and save to: ${serviceAccountPath}`);
  process.exit(1);
}

admin.initializeApp({
  credential: admin.credential.cert(require(serviceAccountPath)),
  projectId: 'ayara-mobile-app',
});

const db = admin.firestore();

// ─────────────────────────────────────────────────────────────────────────────
// HADITHS
// ─────────────────────────────────────────────────────────────────────────────

const hadiths = [
  {
    id: 'hadith_thaqalayn',
    order: 1,
    arabic: 'إِنِّي تَارِكٌ فِيكُمُ الثَّقَلَيْنِ: كِتَابَ اللهِ وَعِتْرَتِي أَهْلَ بَيْتِي',
    translations: {
      en: 'I am leaving among you two weighty things: the Book of Allah and my Ahl al-Bayt. They will never separate until they meet me at the Pond of Kawthar.',
    },
    source: 'Hadith al-Thaqalayn',
    imam: 'Prophet Muhammad (SAW)',
    imamAr: 'النبي محمد ﷺ',
  },
  {
    id: 'hadith_ilm_mal',
    order: 2,
    arabic: 'الْعِلْمُ خَيْرٌ مِنَ الْمَالِ، الْعِلْمُ يَحْرُسُكَ وَأَنْتَ تَحْرُسُ الْمَالَ',
    translations: {
      en: 'Knowledge is better than wealth. Knowledge guards you, while you must guard wealth. Wealth decreases with spending, but knowledge only grows.',
    },
    source: 'Nahj al-Balagha',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    imamAr: 'الإمام علي بن أبي طالب ع',
  },
  {
    id: 'hadith_husayn_rise',
    order: 3,
    arabic: 'لَمْ أَخْرُجْ أَشِراً وَلا بَطِراً، وَإِنَّمَا خَرَجْتُ لِطَلَبِ الإِصْلاحِ فِي أُمَّةِ جَدِّي',
    translations: {
      en: 'I did not rise out of arrogance or corruption. I rose only to seek reform in the nation of my grandfather, the Prophet (SAW).',
    },
    source: 'Maqtal al-Husayn, al-Muqarram',
    imam: 'Imam Husayn ibn Ali (AS)',
    imamAr: 'الإمام الحسين بن علي ع',
  },
  {
    id: 'hadith_best_deeds',
    order: 4,
    arabic: 'أَفْضَلُ الأَعْمَالِ إِدْخَالُ السُّرُورِ عَلَى قَلْبِ الْمُؤْمِنِ',
    translations: {
      en: 'The best of deeds is to bring joy to the heart of a believer — to satisfy his hunger, relieve his worry, or pay off his debt.',
    },
    source: 'al-Kafi, vol. 2',
    imam: "Imam Ja'far al-Sadiq (AS)",
    imamAr: 'الإمام جعفر الصادق ع',
  },
  {
    id: 'hadith_worship_as_seeing',
    order: 5,
    arabic: 'اعْبُدِ اللهَ كَأَنَّكَ تَرَاهُ، فَإِنْ لَمْ تَكُنْ تَرَاهُ فَإِنَّهُ يَرَاكَ',
    translations: {
      en: 'Worship Allah as though you see Him; even if you cannot see Him, He surely sees you.',
    },
    source: 'Sahifa al-Sajjadiyya',
    imam: 'Imam Ali ibn Husayn al-Sajjad (AS)',
    imamAr: 'الإمام علي بن الحسين ع',
  },
  {
    id: 'hadith_patience_head',
    order: 6,
    arabic: 'الصَّبْرُ مِنَ الإِيمَانِ بِمَنْزِلَةِ الرَّأْسِ مِنَ الْجَسَدِ',
    translations: {
      en: 'Patience is to faith what the head is to the body. A body without a head perishes, and so does faith without patience.',
    },
    source: 'Bihar al-Anwar',
    imam: 'Imam Musa al-Kadhim (AS)',
    imamAr: 'الإمام موسى الكاظم ع',
  },
  {
    id: 'hadith_iman_heart_tongue',
    order: 7,
    arabic: 'الإِيمَانُ إِقْرَارٌ بِالْقَلْبِ وَإِقْرَارٌ بِاللِّسَانِ وَعَمَلٌ بِالأَرْكَانِ',
    translations: {
      en: 'Faith is acknowledgment with the heart, confession with the tongue, and action with the limbs.',
    },
    source: 'Uyun Akhbar al-Ridha',
    imam: 'Imam Ali al-Ridha (AS)',
    imamAr: 'الإمام علي الرضا ع',
  },
  {
    id: 'hadith_tawakkul_ladder',
    order: 8,
    arabic: 'التَّوَكُّلُ عَلَى اللهِ ثَمَنٌ لِكُلِّ غَالٍ وَسُلَّمٌ إِلَى كُلِّ عَالٍ',
    translations: {
      en: 'Reliance on Allah is the price of every precious thing and the ladder to every elevated station.',
    },
    source: 'Bihar al-Anwar',
    imam: 'Imam Muhammad al-Jawad (AS)',
    imamAr: 'الإمام محمد الجواد ع',
  },
  {
    id: 'hadith_dunya_marketplace',
    order: 9,
    arabic: 'الدُّنْيَا سُوقٌ رَبِحَ فِيهَا قَوْمٌ وَخَسِرَ آخَرُونَ',
    translations: {
      en: 'The world is a marketplace: some people profit from it, while others incur loss.',
    },
    source: 'Tuhaf al-Uqul',
    imam: 'Imam Ali al-Hadi (AS)',
    imamAr: 'الإمام علي الهادي ع',
  },
  {
    id: 'hadith_taqwa_treasure',
    order: 10,
    arabic: 'التَّقْوَى شَرَفٌ وَالْعِلْمُ كَنْزٌ وَالصَّمْتُ نُورٌ',
    translations: {
      en: 'Piety is an honor, knowledge is a treasure, silence is a light, and the peak of worship is modesty and contentment.',
    },
    source: 'Bihar al-Anwar',
    imam: 'Imam Hasan al-Askari (AS)',
    imamAr: 'الإمام الحسن العسكري ع',
  },
  {
    id: 'hadith_mahdi_caring',
    order: 11,
    arabic: 'إِنَّا غَيْرُ مُهْمِلِينَ لِمُرَاعَاتِكُمْ وَلا نَاسِينَ لِذِكْرِكُمْ',
    translations: {
      en: 'We are not neglectful of your affairs, nor forgetful of your remembrance. Were it not for that, hardships would descend upon you.',
    },
    source: "Bihar al-Anwar, Tawqi' al-Mahdi",
    imam: 'Imam Muhammad al-Mahdi (AJ)',
    imamAr: 'الإمام محمد المهدي عج',
  },
  {
    id: 'hadith_best_family',
    order: 12,
    arabic: 'خَيْرُكُمْ خَيْرُكُمْ لأَهْلِهِ',
    translations: {
      en: 'The best of you is the best among his family.',
    },
    source: 'Bihar al-Anwar',
    imam: 'Prophet Muhammad (SAW)',
    imamAr: 'النبي محمد ﷺ',
  },
  {
    id: 'hadith_person_under_tongue',
    order: 13,
    arabic: 'الْمَرْءُ مَخْبُوءٌ تَحْتَ لِسَانِهِ',
    translations: {
      en: 'A person is hidden beneath his tongue. Speak, and you will be known.',
    },
    source: 'Nahj al-Balagha',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    imamAr: 'الإمام علي بن أبي طالب ع',
  },
  {
    id: 'hadith_calamity_patience',
    order: 14,
    arabic: 'الْمُصِيبَةُ لِلصَّابِرِ وَاحِدَةٌ وَلِلْجَازِعِ اثْنَتَانِ',
    translations: {
      en: 'A calamity for the patient person is one; but for the impatient, it is two — the calamity itself and the loss of patience.',
    },
    source: 'Bihar al-Anwar',
    imam: 'Imam Husayn ibn Ali (AS)',
    imamAr: 'الإمام الحسين بن علي ع',
  },
  {
    id: 'hadith_right_of_mother',
    order: 15,
    arabic: 'حَقُّ أُمِّكَ أَنْ تَعْلَمَ أَنَّهَا حَمَلَتْكَ حَيْثُ لا يَحْمِلُ أَحَدٌ أَحَداً',
    translations: {
      en: 'The right of your mother upon you is that you know: she carried you as no one carries another, and nourished you from the fruit of her heart.',
    },
    source: 'Risalat al-Huquq',
    imam: 'Imam Ali ibn Husayn al-Sajjad (AS)',
    imamAr: 'الإمام علي بن الحسين ع',
  },
  {
    id: 'hadith_recitation_reflection',
    order: 16,
    arabic: 'لا خَيْرَ فِي قِرَاءَةٍ لَيْسَ فِيهَا تَدَبُّرٌ',
    translations: {
      en: 'There is no good in recitation without reflection and understanding of what is being recited.',
    },
    source: 'al-Kafi, vol. 2',
    imam: 'Imam Muhammad al-Baqir (AS)',
    imamAr: 'الإمام محمد الباقر ع',
  },
  {
    id: 'hadith_guard_tongue',
    order: 17,
    arabic: 'احْفَظْ لِسَانَكَ كَمَا تَحْفَظُ ذَهَبَكَ وَفِضَّتَكَ',
    translations: {
      en: 'Guard your tongue as you guard your gold and silver, for many have been destroyed by a word carelessly spoken.',
    },
    source: 'al-Kafi, vol. 2',
    imam: "Imam Ja'far al-Sadiq (AS)",
    imamAr: 'الإمام جعفر الصادق ع',
  },
  {
    id: 'hadith_wise_deals_wisely',
    order: 18,
    arabic: 'أَعْقَلُ النَّاسِ أَحْسَنُهُمْ مُدَارَاةً لِلنَّاسِ',
    translations: {
      en: 'The most intelligent of people is the one who deals with others most wisely and with the most patience.',
    },
    source: 'Bihar al-Anwar',
    imam: 'Imam Musa al-Kadhim (AS)',
    imamAr: 'الإمام موسى الكاظم ع',
  },
  {
    id: 'hadith_good_character_half_intellect',
    order: 19,
    arabic: 'مَنْ حَسُنَ خُلُقُهُ كَمَلَ نِصْفُ عَقْلِهِ',
    translations: {
      en: 'One who has a good character has completed half of his intellect.',
    },
    source: 'Bihar al-Anwar',
    imam: 'Imam Ali al-Ridha (AS)',
    imamAr: 'الإمام علي الرضا ع',
  },
  {
    id: 'hadith_three_things_rida',
    order: 20,
    arabic: 'ثَلاثٌ يُبَلِّغْنَ بِالْعَبْدِ رِضَا اللهِ: كَثْرَةُ الاسْتِغْفَارِ وَلِينُ الجَانِبِ وَكَثْرَةُ الصَّدَقَةِ',
    translations: {
      en: 'Three things bring the servant to the pleasure of Allah: abundant seeking of forgiveness, gentleness in dealings, and frequent charity.',
    },
    source: 'Bihar al-Anwar',
    imam: 'Imam Muhammad al-Jawad (AS)',
    imamAr: 'الإمام محمد الجواد ع',
  },
  {
    id: 'hadith_do_not_seek_wrongdoer',
    order: 21,
    arabic: 'لا تَسْتَعِنْ بِمَنْ ظَلَمَ نَفْسَهُ',
    translations: {
      en: 'Do not seek the aid of one who has wronged himself — for one who cannot be just to himself cannot be just to others.',
    },
    source: 'Bihar al-Anwar',
    imam: 'Imam Ali al-Hadi (AS)',
    imamAr: 'الإمام علي الهادي ع',
  },
  {
    id: 'hadith_signs_faqih',
    order: 22,
    arabic: 'مِنْ عَلامَاتِ الْفَقِيهِ: الْحِلْمُ وَالْعِلْمُ وَالصَّمْتُ',
    translations: {
      en: 'Among the signs of true understanding are: forbearance, love of knowledge, and deliberate silence.',
    },
    source: 'Bihar al-Anwar',
    imam: 'Imam Hasan al-Askari (AS)',
    imamAr: 'الإمام الحسن العسكري ع',
  },
  {
    id: 'hadith_fatima_faith_prayer_zakat',
    order: 23,
    arabic: 'جَعَلَ اللهُ الإِيمَانَ تَطْهِيراً مِنَ الشِّرْكِ وَالصَّلاةَ تَنْزِيهاً عَنِ الكِبْرِ',
    translations: {
      en: 'Allah has made faith a purification from polytheism, and prayer a cleansing from arrogance.',
    },
    source: 'Khutbat Fadak',
    imam: 'Lady Fatima Zahra (SA)',
    imamAr: 'السيدة فاطمة الزهراء ع',
  },
  {
    id: 'hadith_strongest_controls_anger',
    order: 24,
    arabic: 'أَشَدُّكُمْ مَنْ غَلَبَ نَفْسَهُ عِنْدَ الْغَضَبِ',
    translations: {
      en: 'The strongest among you is the one who controls himself in anger.',
    },
    source: 'Bihar al-Anwar',
    imam: 'Prophet Muhammad (SAW)',
    imamAr: 'النبي محمد ﷺ',
  },
  {
    id: 'hadith_cure_ignorance_ask',
    order: 25,
    arabic: 'دَوَاءُ الْجَهْلِ السُّؤَالُ',
    translations: {
      en: 'The cure for ignorance is to ask. Do not be too proud to seek knowledge from those who have it.',
    },
    source: 'Nahj al-Balagha',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    imamAr: 'الإمام علي بن أبي طالب ع',
  },
  {
    id: 'hadith_believer_one_body',
    order: 26,
    arabic: 'الْمُؤْمِنُ أَخُو الْمُؤْمِنِ كَالْجَسَدِ الْوَاحِدِ',
    translations: {
      en: 'The believer is the brother of the believer, like a single body — if one part suffers, all other parts respond with sleeplessness and fever.',
    },
    source: 'al-Kafi, vol. 2',
    imam: 'Imam Muhammad al-Baqir (AS)',
    imamAr: 'الإمام محمد الباقر ع',
  },
  {
    id: 'hadith_maintain_forgive',
    order: 27,
    arabic: 'صِلْ مَنْ قَطَعَكَ وَأَعْطِ مَنْ حَرَمَكَ وَاعْفُ عَمَّنْ ظَلَمَكَ',
    translations: {
      en: 'Maintain ties with those who sever theirs; give to those who deprive you; and forgive those who wrong you.',
    },
    source: 'Tuhaf al-Uqul',
    imam: "Imam Ja'far al-Sadiq (AS)",
    imamAr: 'الإمام جعفر الصادق ع',
  },
  {
    id: 'hadith_repentance_three',
    order: 28,
    arabic: 'التَّوْبَةُ النَّدَمُ بِالْقَلْبِ وَالاسْتِغْفَارُ بِاللِّسَانِ وَالتَّرْكُ بِالْجَوَارِحِ',
    translations: {
      en: 'True repentance is remorse in the heart, seeking forgiveness with the tongue, and abstaining from sin with the limbs.',
    },
    source: 'al-Kafi',
    imam: 'Imam Muhammad al-Baqir (AS)',
    imamAr: 'الإمام محمد الباقر ع',
  },
  {
    id: 'hadith_account_yourself_daily',
    order: 29,
    arabic: 'لَيْسَ مِنَّا مَنْ لَمْ يُحَاسِبْ نَفْسَهُ فِي كُلِّ يَوْمٍ',
    translations: {
      en: 'He is not of us who does not hold himself to account every single day — examining his deeds, intentions, and heart.',
    },
    source: 'Bihar al-Anwar',
    imam: 'Imam Ali ibn Husayn al-Sajjad (AS)',
    imamAr: 'الإمام علي بن الحسين ع',
  },
  {
    id: 'hadith_knowledge_obligation',
    order: 30,
    arabic: 'طَلَبُ الْعِلْمِ فَرِيضَةٌ عَلَى كُلِّ مُسْلِمٍ',
    translations: {
      en: 'The seeking of knowledge is an obligation upon every Muslim — man and woman alike.',
    },
    source: 'Bihar al-Anwar',
    imam: 'Prophet Muhammad (SAW)',
    imamAr: 'النبي محمد ﷺ',
  },
  {
    id: 'hadith_worth_what_you_do_well',
    order: 31,
    arabic: 'قِيمَةُ كُلِّ امْرِئٍ مَا يُحْسِنُهُ',
    translations: {
      en: 'A person\'s worth lies in what he does well.',
    },
    source: 'Nahj al-Balagha',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    imamAr: 'الإمام علي بن أبي طالب ع',
  },
  {
    id: 'hadith_opponent_oppressor',
    order: 32,
    arabic: 'كُنْ لِلظَّالِمِ خَصْماً وَلِلْمَظْلُومِ عَوْناً',
    translations: {
      en: 'Be an opponent to the oppressor and a helper to the oppressed — regardless of who they are.',
    },
    source: 'Nahj al-Balagha',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    imamAr: 'الإمام علي بن أبي طالب ع',
  },
  {
    id: 'hadith_finest_character',
    order: 33,
    arabic: 'إِنَّ أَحَبَّكُمْ إِلَى اللهِ أَحْسَنُكُمْ أَخْلاقاً',
    translations: {
      en: 'The most beloved of you to Allah is the one with the best character.',
    },
    source: 'Bihar al-Anwar',
    imam: 'Prophet Muhammad (SAW)',
    imamAr: 'النبي محمد ﷺ',
  },
  {
    id: 'hadith_no_hope_without_work',
    order: 34,
    arabic: 'لا تَكُنْ مِمَّنْ يَرْجُو الآخِرَةَ بِغَيْرِ عَمَلٍ',
    translations: {
      en: 'Do not be among those who hope for the next life without working for it, or who delay repentance because of long hopes.',
    },
    source: 'Nahj al-Balagha',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    imamAr: 'الإمام علي بن أبي طالب ع',
  },
  {
    id: 'hadith_honor_children',
    order: 35,
    arabic: 'أَكْرِمُوا أَوْلادَكُمْ وَأَحْسِنُوا آدَابَهُمْ',
    translations: {
      en: 'Honor your children and cultivate their character well, for they are a trust from Allah placed in your hands.',
    },
    source: 'Bihar al-Anwar',
    imam: 'Prophet Muhammad (SAW)',
    imamAr: 'النبي محمد ﷺ',
  },
  {
    id: 'hadith_know_your_faults',
    order: 36,
    arabic: 'كَفَى بِالنَّفْسِ عِلْماً أَنْ تَعْرِفَ عُيُوبَهَا',
    translations: {
      en: "It is sufficient self-knowledge to recognize one's own faults — before pointing to the faults of others.",
    },
    source: 'Ghurar al-Hikam',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    imamAr: 'الإمام علي بن أبي طالب ع',
  },
];

// ─────────────────────────────────────────────────────────────────────────────
// IMAMS
// ─────────────────────────────────────────────────────────────────────────────

const imams = [
  {
    id: 'imam_prophet',
    order: 0,
    nameEn: 'Prophet Muhammad',
    nameAr: 'النبي محمد ﷺ',
    title: 'Seal of the Prophets',
    role: 'The Final Prophet of Allah',
    bornHijri: '53 BH (570 CE)',
    diedHijri: '11 AH (632 CE)',
    birthplace: 'Mecca, Arabia',
    burialPlace: 'Madinah al-Munawwarah',
    translations: {
      en: {
        biography:
          "The final messenger of Allah, sent as a mercy to all of creation. Born in Mecca into the noble tribe of Quraysh, he received the first revelation at age 40. Over 23 years he conveyed the Quran, established the Islamic community, and demonstrated through his Sunnah the complete way of life. His declaration at Ghadir Khumm of Imam Ali's succession is a cornerstone of Shia belief.",
        famousQuote:
          'I am leaving among you two weighty things: the Book of Allah and my Ahl al-Bayt. They shall not separate until they meet me at the Pond of Kawthar.',
      },
    },
    famousQuoteAr: 'إِنِّي تَارِكٌ فِيكُمُ الثَّقَلَيْنِ: كِتَابَ اللهِ وَعِتْرَتِي أَهْلَ بَيْتِي',
    famousQuoteSource: 'Hadith al-Thaqalayn',
    accentKey: 'gold',
  },
  {
    id: 'imam_fatima',
    order: -1,
    nameEn: 'Lady Fatima Zahra',
    nameAr: 'السيدة فاطمة الزهراء ع',
    title: 'Al-Zahra — The Radiant',
    role: 'Daughter of the Prophet, Mother of the Imams',
    bornHijri: '5 BH (615 CE)',
    diedHijri: '11 AH (632 CE)',
    birthplace: 'Mecca, Arabia',
    burialPlace: 'Madinah — exact location unknown',
    translations: {
      en: {
        biography:
          'The beloved daughter of Prophet Muhammad (SAW) and Sayyida Khadijah (SA), wife of Imam Ali (AS), and mother of Imams Hasan and Husayn (AS). She is among the Fourteen Infallibles and holds the highest station among women in Islam. Her Fadak Sermon is a landmark defense of divine justice and Imamate. She passed away shortly after her father.',
        famousQuote:
          'Allah has made faith a purification from polytheism, and prayer a cleansing from arrogance.',
      },
    },
    famousQuoteAr: 'جَعَلَ اللهُ الإِيمَانَ تَطْهِيراً مِنَ الشِّرْكِ وَالصَّلاةَ تَنْزِيهاً عَنِ الكِبْرِ',
    famousQuoteSource: 'Khutbat Fadak',
    accentKey: 'crimsonLight',
  },
  {
    id: 'imam_ali_1',
    order: 1,
    nameEn: 'Imam Ali ibn Abi Talib',
    nameAr: 'الإمام علي بن أبي طالب ع',
    title: "Amir al-Mu'minin — Commander of the Faithful",
    role: '1st Imam — Cousin and son-in-law of the Prophet',
    bornHijri: '23 BH (599 CE)',
    diedHijri: '40 AH (661 CE)',
    birthplace: "Inside the Ka'ba, Mecca",
    burialPlace: 'Najaf al-Ashraf, Iraq',
    translations: {
      en: {
        biography:
          "The first Imam and designated successor of the Prophet Muhammad (SAW), born miraculously inside the Ka'ba. He was raised in the household of the Prophet and was the first male to accept Islam. Renowned for his unparalleled knowledge, justice, and valor, his wisdom is preserved in Nahj al-Balagha. He was martyred by Ibn Muljam while in prostration during Fajr prayer.",
        famousQuote: 'Knowledge is better than wealth. Knowledge guards you, while you must guard wealth.',
      },
    },
    famousQuoteAr: 'الْعِلْمُ خَيْرٌ مِنَ الْمَالِ، الْعِلْمُ يَحْرُسُكَ وَأَنْتَ تَحْرُسُ الْمَالَ',
    famousQuoteSource: 'Nahj al-Balagha',
    accentKey: 'gold',
  },
  {
    id: 'imam_hasan_2',
    order: 2,
    nameEn: 'Imam Hasan al-Mujtaba',
    nameAr: 'الإمام الحسن المجتبى ع',
    title: 'Al-Mujtaba — The Chosen',
    role: '2nd Imam — Son of Imam Ali (AS)',
    bornHijri: '3 AH (625 CE)',
    diedHijri: '50 AH (670 CE)',
    birthplace: 'Madinah al-Munawwarah',
    burialPlace: "Baqi' Cemetery, Madinah",
    translations: {
      en: {
        biography:
          'The second Imam and elder grandson of the Prophet, praised in many hadiths alongside Imam Husayn as the leaders of the youth of Paradise. Renowned for his immense generosity and forbearance, he signed a peace treaty with Muawiyah to preserve Islam and protect the Muslim community. According to well-known Shia reports, he was martyred by poison in Madinah.',
        famousQuote:
          "Whoever places his trust in the excellence of Allah's choice will not wish to be in any state other than the one Allah has chosen for him.",
      },
    },
    famousQuoteAr: 'مَنْ تَوَكَّلَ عَلَى اللهِ كَفَاهُ',
    famousQuoteSource: 'Bihar al-Anwar',
    accentKey: 'emeraldBright',
  },
  {
    id: 'imam_husayn_3',
    order: 3,
    nameEn: 'Imam Husayn ibn Ali',
    nameAr: 'الإمام الحسين بن علي ع',
    title: 'Sayyid al-Shuhada — Master of Martyrs',
    role: '3rd Imam — Son of Imam Ali (AS)',
    bornHijri: '4 AH (626 CE)',
    diedHijri: '61 AH (680 CE)',
    birthplace: 'Madinah al-Munawwarah',
    burialPlace: 'Karbala, Iraq',
    translations: {
      en: {
        biography:
          'The third Imam and younger grandson of the Prophet, whose stand at Karbala on the 10th of Muharram (Ashura) in 61 AH defines Islamic conscience and resistance to oppression. He refused to pledge allegiance to the corrupt Yazid and rose with 72 companions and family members. His sacrifice revived Islam. Ziyarat to his shrine in Karbala is among the most meritorious acts in Shia Islam.',
        famousQuote:
          'I did not rise out of arrogance, nor to cause mischief. I rose only to seek reform in the nation of my grandfather.',
      },
    },
    famousQuoteAr: 'لَمْ أَخْرُجْ أَشِراً وَلا بَطِراً، وَإِنَّمَا خَرَجْتُ لِطَلَبِ الإِصْلاحِ فِي أُمَّةِ جَدِّي',
    famousQuoteSource: 'Maqtal al-Husayn',
    accentKey: 'crimsonBright',
  },
  {
    id: 'imam_sajjad_4',
    order: 4,
    nameEn: 'Imam Ali ibn Husayn al-Sajjad',
    nameAr: 'الإمام علي بن الحسين زين العابدين ع',
    title: "Zayn al-Abidin — Ornament of Worshippers",
    role: '4th Imam — Son of Imam Husayn (AS)',
    bornHijri: '38 AH (658 CE)',
    diedHijri: '95 AH (713 CE)',
    birthplace: 'Madinah al-Munawwarah',
    burialPlace: "Baqi' Cemetery, Madinah",
    translations: {
      en: {
        biography:
          "The fourth Imam, sole surviving son of Imam Husayn after Karbala. He preserved the message of Karbala through his sermons after being taken captive to Damascus. His spiritual legacy is the Sahifa al-Sajjadiyya, a book of sublime supplications often called \"the Psalms of Islam.\" He was known for his extraordinary depth of worship and compassion for the poor.",
        famousQuote: 'Worship Allah as though you see Him; for even if you cannot see Him, He surely sees you.',
      },
    },
    famousQuoteAr: 'اعْبُدِ اللهَ كَأَنَّكَ تَرَاهُ، فَإِنْ لَمْ تَكُنْ تَرَاهُ فَإِنَّهُ يَرَاكَ',
    famousQuoteSource: 'Sahifa al-Sajjadiyya',
    accentKey: 'gold',
  },
  {
    id: 'imam_baqir_5',
    order: 5,
    nameEn: 'Imam Muhammad al-Baqir',
    nameAr: 'الإمام محمد الباقر ع',
    title: 'Al-Baqir — Splitter of Knowledge',
    role: '5th Imam — Son of Imam al-Sajjad (AS)',
    bornHijri: '57 AH (677 CE)',
    diedHijri: '114 AH (733 CE)',
    birthplace: 'Madinah al-Munawwarah',
    burialPlace: "Baqi' Cemetery, Madinah",
    translations: {
      en: {
        biography:
          'The fifth Imam, known as al-Baqir — "one who deeply explores knowledge." He established the first great Islamic university from Madinah, teaching hundreds of students in theology, jurisprudence, and Quranic sciences. His period marked an intellectual flourishing of Shia scholarship. He was martyred by poison under the Umayyad caliph Hisham ibn Abd al-Malik.',
        famousQuote:
          'The believer is the brother of the believer — like a single body; if one part suffers, all other parts respond.',
      },
    },
    famousQuoteAr: 'الْمُؤْمِنُ أَخُو الْمُؤْمِنِ كَالْجَسَدِ الْوَاحِدِ',
    famousQuoteSource: 'al-Kafi',
    accentKey: 'emeraldBright',
  },
  {
    id: 'imam_sadiq_6',
    order: 6,
    nameEn: "Imam Ja'far al-Sadiq",
    nameAr: 'الإمام جعفر الصادق ع',
    title: 'Al-Sadiq — The Truthful',
    role: '6th Imam — Son of Imam al-Baqir (AS)',
    bornHijri: '83 AH (702 CE)',
    diedHijri: '148 AH (765 CE)',
    birthplace: 'Madinah al-Munawwarah',
    burialPlace: "Baqi' Cemetery, Madinah",
    translations: {
      en: {
        biography:
          "The sixth Imam and a central teacher of the Ja'fari school whose circle of learning shaped Islamic law, theology, ethics, and the intellectual sciences. The Ja'fari school of Islamic law is named after him. He was martyred by poison under the Abbasid caliph al-Mansur.",
        famousQuote: 'Guard your tongue as you guard your gold and silver, for many have been destroyed by a careless word.',
      },
    },
    famousQuoteAr: 'احْفَظْ لِسَانَكَ كَمَا تَحْفَظُ ذَهَبَكَ وَفِضَّتَكَ',
    famousQuoteSource: 'al-Kafi',
    accentKey: 'gold',
  },
  {
    id: 'imam_kadhim_7',
    order: 7,
    nameEn: 'Imam Musa al-Kadhim',
    nameAr: 'الإمام موسى الكاظم ع',
    title: 'Al-Kadhim — The One Who Suppresses Anger',
    role: '7th Imam — Son of Imam al-Sadiq (AS)',
    bornHijri: '128 AH (745 CE)',
    diedHijri: '183 AH (799 CE)',
    birthplace: 'Al-Abwa, between Mecca and Madinah',
    burialPlace: 'Kadhimiyyah, Baghdad, Iraq',
    translations: {
      en: {
        biography:
          'The seventh Imam, renowned for his extraordinary patience and control of anger — hence his title al-Kadhim. He spent much of his life under Abbasid surveillance, imprisoned multiple times by Harun al-Rashid. He continued teaching from prison, and his shrine in Kadhimiyyah, Baghdad is one of the most visited in the world. He was martyred by poison in the prison of Sindi ibn Shahik.',
        famousQuote:
          'Patience is to faith what the head is to the body. A body without a head perishes — and so does faith without patience.',
      },
    },
    famousQuoteAr: 'الصَّبْرُ مِنَ الإِيمَانِ بِمَنْزِلَةِ الرَّأْسِ مِنَ الْجَسَدِ',
    famousQuoteSource: 'Bihar al-Anwar',
    accentKey: 'emeraldBright',
  },
  {
    id: 'imam_ridha_8',
    order: 8,
    nameEn: 'Imam Ali al-Ridha',
    nameAr: 'الإمام علي الرضا ع',
    title: 'Al-Ridha — The Contented, The Pleasing',
    role: '8th Imam — Son of Imam al-Kadhim (AS)',
    bornHijri: '148 AH (765 CE)',
    diedHijri: '203 AH (818 CE)',
    birthplace: 'Madinah al-Munawwarah',
    burialPlace: 'Mashhad, Iran (Razavi Khorasan)',
    translations: {
      en: {
        biography:
          "The eighth Imam, appointed heir apparent by the Abbasid caliph al-Ma'mun, a political maneuver to control him. Despite this, he used the position to spread Islamic knowledge. His debates with scholars of all religions are legendary. He was martyred by poison and buried in Tus (modern-day Mashhad), which became one of the holiest shrines in Shia Islam — visited by millions annually.",
        famousQuote: 'Faith is acknowledgment with the heart, confession with the tongue, and action with the limbs.',
      },
    },
    famousQuoteAr: 'الإِيمَانُ إِقْرَارٌ بِالْقَلْبِ وَإِقْرَارٌ بِاللِّسَانِ وَعَمَلٌ بِالأَرْكَانِ',
    famousQuoteSource: 'Uyun Akhbar al-Ridha',
    accentKey: 'gold',
  },
  {
    id: 'imam_jawad_9',
    order: 9,
    nameEn: 'Imam Muhammad al-Jawad',
    nameAr: 'الإمام محمد الجواد ع',
    title: 'Al-Jawad — The Generous, Al-Taqi — The Pious',
    role: '9th Imam — Son of Imam al-Ridha (AS)',
    bornHijri: '195 AH (811 CE)',
    diedHijri: '220 AH (835 CE)',
    birthplace: 'Madinah al-Munawwarah',
    burialPlace: 'Kadhimiyyah, Baghdad, Iraq',
    translations: {
      en: {
        biography:
          "The ninth Imam, who assumed Imamate at age 8 — demonstrating that divine knowledge is not dependent on age. Despite his short life of only 25 years, he left a vast legacy of scholarly work and spiritual guidance. Forced to move to Baghdad by the Abbasid caliph al-Mu'tasim, he was martyred there by poison. His shrine is adjacent to that of Imam al-Kadhim in Kadhimiyyah.",
        famousQuote: 'Reliance on Allah is the price of every precious thing and the ladder to every elevated station.',
      },
    },
    famousQuoteAr: 'التَّوَكُّلُ عَلَى اللهِ ثَمَنٌ لِكُلِّ غَالٍ وَسُلَّمٌ إِلَى كُلِّ عَالٍ',
    famousQuoteSource: 'Bihar al-Anwar',
    accentKey: 'emeraldBright',
  },
  {
    id: 'imam_hadi_10',
    order: 10,
    nameEn: 'Imam Ali al-Hadi',
    nameAr: 'الإمام علي الهادي ع',
    title: 'Al-Hadi — The Guide, Al-Naqi — The Pure',
    role: '10th Imam — Son of Imam al-Jawad (AS)',
    bornHijri: '212 AH (828 CE)',
    diedHijri: '254 AH (868 CE)',
    birthplace: 'Al-Sariya, near Madinah',
    burialPlace: 'Samarra, Iraq',
    translations: {
      en: {
        biography:
          'The tenth Imam, forcibly relocated from Madinah to Samarra by the Abbasid caliph al-Mutawakkil to keep him under surveillance. He lived in Samarra under virtual house arrest for over 20 years, yet continued guiding his followers through letters and trusted representatives. His shrine in Samarra alongside that of his son Imam al-Askari is one of the holiest sites in Shia Islam.',
        famousQuote: 'The world is a marketplace: some people profit from it, while others incur loss.',
      },
    },
    famousQuoteAr: 'الدُّنْيَا سُوقٌ رَبِحَ فِيهَا قَوْمٌ وَخَسِرَ آخَرُونَ',
    famousQuoteSource: 'Tuhaf al-Uqul',
    accentKey: 'gold',
  },
  {
    id: 'imam_askari_11',
    order: 11,
    nameEn: 'Imam Hasan al-Askari',
    nameAr: 'الإمام الحسن العسكري ع',
    title: 'Al-Askari — Named after the garrison city of Samarra',
    role: '11th Imam — Son of Imam al-Hadi (AS)',
    bornHijri: '232 AH (846 CE)',
    diedHijri: '260 AH (874 CE)',
    birthplace: 'Madinah or Samarra',
    burialPlace: 'Samarra, Iraq',
    translations: {
      en: {
        biography:
          "The eleventh Imam, who also lived under strict surveillance in Samarra. He led his community primarily through correspondence due to heavy Abbasid restrictions. He is the father of the 12th Imam, Imam al-Mahdi (AJ). He was martyred by poison at the young age of 28. The Askariyyain shrine in Samarra, destroyed and rebuilt multiple times, houses both his and his father's tombs.",
        famousQuote: 'Piety is an honor, knowledge is a treasure, silence is a light, and the peak of worship is modesty.',
      },
    },
    famousQuoteAr: 'التَّقْوَى شَرَفٌ وَالْعِلْمُ كَنْزٌ وَالصَّمْتُ نُورٌ',
    famousQuoteSource: 'Bihar al-Anwar',
    accentKey: 'emeraldBright',
  },
  {
    id: 'imam_mahdi_12',
    order: 12,
    nameEn: 'Imam Muhammad al-Mahdi',
    nameAr: 'الإمام محمد المهدي عجل الله فرجه',
    title: "Al-Mahdi — The Guided One, Al-Qa'im — The One Who Shall Rise",
    role: '12th Imam — Son of Imam al-Askari (AS)',
    bornHijri: '255 AH (869 CE)',
    diedHijri: 'Still alive — in Occultation',
    birthplace: 'Samarra, Iraq',
    burialPlace: 'In Occultation — awaiting divine command',
    translations: {
      en: {
        biography:
          'The twelfth and final Imam, currently in the Major Occultation (Ghayba al-Kubra) since 329 AH. Shia Muslims believe he is alive and will reappear at the end of times to fill the world with justice after it has been filled with oppression. His birth was concealed to protect him from the Abbasid caliph. He communicated with the Shia community through four deputies during the Minor Occultation.',
        famousQuote:
          'We are not neglectful of your affairs, nor forgetful of your remembrance. Were it not for that, hardships would descend upon you.',
      },
    },
    famousQuoteAr: 'إِنَّا غَيْرُ مُهْمِلِينَ لِمُرَاعَاتِكُمْ وَلا نَاسِينَ لِذِكْرِكُمْ',
    famousQuoteSource: "Tawqi' al-Mahdi, Bihar al-Anwar",
    accentKey: 'gold',
  },
];

// ─────────────────────────────────────────────────────────────────────────────
// DUAS
// ─────────────────────────────────────────────────────────────────────────────

const duas = [
  {
    id: 'tasbih_zahra',
    order: 1,
    nameEn: 'Tasbih of Sayyida Fatima (SA)',
    nameAr: 'تسبيح السيدة فاطمة الزهراء',
    category: 'tasbih',
    recommendedTime: 'After every prayer, especially before sleeping',
    taughtBy: 'Taught by the Holy Prophet (SAW) to Lady Fatima (SA)',
    shortDesc: '34 × Allāhu Akbar · 33 × Alḥamdulillāh · 33 × Subḥānallāh',
    isTasbih: true,
    hasAiExplain: true,
    sections: [
      {
        sectionTitle: 'The Tasbih',
        arabic: 'اللَّهُ أَكْبَرُ × ٣٤\nالْحَمْدُ لِلَّهِ × ٣٣\nسُبْحَانَ اللَّهِ × ٣٣',
        transliteration: 'Allāhu Akbar × 34\nAlḥamdu lillāh × 33\nSubḥāna-llāh × 33',
        translation: 'Allah is the Greatest × 34\nAll praise belongs to Allah × 33\nGlory be to Allah × 33',
      },
      {
        sectionTitle: 'Why This Tasbih?',
        arabic: '',
        transliteration: '',
        translation:
          'The Holy Prophet (SAW) taught this dhikr to his beloved daughter Fatima al-Zahra (SA) when she asked for a servant to ease her household burdens. He told her: "This tasbih is better for you than a servant." Imam al-Sadiq (AS) said that reciting it before sleep is more beloved to him than a thousand rak\'at of prayer. The well-known order in Twelver Shia practice is Allāhu Akbar (34 times), then Alḥamdulillāh (33 times), then Subḥānallāh (33 times).',
      },
    ],
  },
  {
    id: 'dua_kumayl',
    order: 2,
    nameEn: 'Dua Kumayl',
    nameAr: 'دعاء كميل',
    category: 'weekly',
    recommendedTime: "Thursday nights (eve of Friday) and the night of mid-Sha'ban",
    taughtBy: "Imam Ali ibn Abi Talib (AS) — taught to Kumayl ibn Ziyad al-Nakha'i",
    shortDesc: 'The supplication of Thursday nights — a profound dialogue with Allah',
    hasAiExplain: true,
    isTasbih: false,
    sections: [
      {
        sectionTitle: 'Opening',
        arabic:
          'اَللَّهُمَّ إِنِّي أَسْأَلُكَ بِرَحْمَتِكَ الَّتِي وَسِعَتْ كُلَّ شَيْءٍ\nوَبِقُوَّتِكَ الَّتِي قَهَرْتَ بِهَا كُلَّ شَيْءٍ\nوَخَضَعَ لَهَا كُلُّ شَيْءٍ وَذَلَّ لَهَا كُلُّ شَيْءٍ',
        transliteration:
          "Allāhumma innī as'aluka bi-raḥmatika-llatī wasi'at kulla shay'in\nwa bi-quwwatika-llatī qahharta bihā kulla shay'in\nwa khaḍa'a lahā kullu shay'in wa dhalla lahā kullu shay'in",
        translation:
          'O Allah, I ask You by Your mercy that encompasses all things,\nand by Your power by which You have subdued all things,\nand before which all things bow in humility and submission.',
      },
      {
        sectionTitle: 'Acknowledging Sins',
        arabic:
          'اَللَّهُمَّ اغْفِرْ لِيَ الذُّنُوبَ الَّتِي تَهْتِكُ الْعِصَمَ\nاَللَّهُمَّ اغْفِرْ لِيَ الذُّنُوبَ الَّتِي تُنْزِلُ النِّقَمَ\nاَللَّهُمَّ اغْفِرْ لِيَ الذُّنُوبَ الَّتِي تَحْبِسُ الدُّعَاءَ\nاَللَّهُمَّ اغْفِرْ لِيَ الذُّنُوبَ الَّتِي تَقْطَعُ الرَّجَاءَ',
        transliteration:
          "Allāhumma-ghfir liya-dhunūba-llatī tahtiku-l-'iṣam\nAllāhumma-ghfir liya-dhunūba-llatī tunzilu-n-niqam\nAllāhumma-ghfir liya-dhunūba-llatī taḥbisu-d-du'ā'a\nAllāhumma-ghfir liya-dhunūba-llatī taqṭa'u-r-rajā'a",
        translation:
          'O Allah, forgive me the sins that tear away [the veil of] my protection,\nO Allah, forgive me the sins that bring down adversity,\nO Allah, forgive me the sins that withhold the answer to supplication,\nO Allah, forgive me the sins that cut off hope.',
      },
      {
        sectionTitle: 'The Plea for Mercy',
        arabic:
          'فَأَسْأَلُكَ بِعِزَّتِكَ أَنْ لَا يَحْجُبَ عَنْكَ دُعَائِي سُوءُ عَمَلِي وَفِعَالِي\nوَلَا تَفْضَحْنِي بِخَفِيِّ مَا اطَّلَعْتَ عَلَيْهِ مِنْ سِرِّي\nوَلَا تُعَاجِلْنِي بِالْعُقُوبَةِ عَلَى مَا عَمِلْتُهُ فِي خَلَوَاتِي',
        transliteration:
          "Fa-as'aluka bi-'izzatika an lā yaḥjuba 'anka du'ā'ī sū'u 'amalī wa fi'ālī\nwalā tafḍaḥnī bi-khafiyyi mā-ṭṭala'ta 'alayhi min sirrī\nwalā tu'ājilnī bi-l-'uqūbati 'alā mā 'amiltuhu fī khalawātī",
        translation:
          'I ask You by Your might that the evil of my deeds and actions not veil my supplication from You,\nand do not expose me for what You know of my secrets,\nand do not hasten to punish me for what I have done in my private moments.',
      },
      {
        sectionTitle: 'Patience in the Fire',
        arabic:
          'فَهَبْنِي يَا إِلَهِي وَسَيِّدِي وَمَوْلَايَ وَرَبِّي\nصَبَرْتُ عَلَى عَذَابِكَ فَكَيْفَ أَصْبِرُ عَلَى فِرَاقِكَ\nوَهَبْنِي صَبَرْتُ عَلَى حَرِّ نَارِكَ فَكَيْفَ أَصْبِرُ عَنِ النَّظَرِ إِلَى كَرَامَتِكَ',
        transliteration:
          "Fa-habnī yā Ilāhī wa sayyidī wa mawlāya wa rabbī\nṣabartu 'alā 'adhābika fa-kayfa aṣbiru 'alā firāqika\nwa habnī ṣabartu 'alā ḥarri nārika fa-kayfa aṣbiru 'ani-n-naẓari ilā karāmatika",
        translation:
          'Even if, my God, my Master, my Lord, my Sustainer,\nI were to endure Your punishment — how could I endure separation from You?\nEven if I endured the heat of Your fire — how could I endure being denied the sight of Your generosity?',
      },
      {
        sectionTitle: 'Closing',
        arabic:
          'يَا غَيَاثَ الْمُسْتَغِيثِينَ\nيَا غِيَاثِي فَأَغِثْنِي\nيَا مُجِيبَ الْمُضْطَرِّينَ\nيَا وَلِيِّي فَاكْفِنِي مَا أَهَمَّنِي\nبِرَحْمَتِكَ يَا أَرْحَمَ الرَّاحِمِينَ',
        transliteration:
          "Yā ghiyātha-l-mustaghīthīn\nYā ghiyāthī fa-aghithnī\nYā mujība-l-muḍṭarrīn\nYā waliyyī fa-kfinī mā ahammani\nBi-raḥmatika yā arḥama-r-rāḥimīn",
        translation:
          'O succour of those who seek succour!\nO my succour — come to my aid!\nO Answerer of the distressed!\nO my Guardian — suffice me in what troubles me,\nby Your mercy, O Most Merciful of the merciful.',
      },
    ],
  },
  {
    id: 'dua_nudbah',
    order: 3,
    nameEn: 'Dua Nudbah',
    nameAr: 'دعاء الندبة',
    category: 'weekly',
    recommendedTime: 'Friday mornings, after Fajr prayer',
    taughtBy: 'From the tradition of Imam al-Sadiq (AS) and Imam al-Ridha (AS)',
    shortDesc: 'The Lamentation — a yearning cry for Imam al-Mahdi (AJ)',
    hasAiExplain: true,
    isTasbih: false,
    sections: [
      {
        sectionTitle: "Praise of the Prophet's Family",
        arabic:
          'اَلْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ\nوَصَلَّى اللَّهُ عَلَى سَيِّدِنَا مُحَمَّدٍ نَبِيِّهِ وَآلِهِ\nوَسَلَّمَ تَسْلِيمًا',
        transliteration:
          "Al-ḥamdu lillāhi rabbi-l-'ālamīn\nWa ṣallā-llāhu 'alā sayyidinā Muḥammadin nabiyyihi wa ālih\nWa sallama taslīmā",
        translation:
          'All praise is for Allah, Lord of the worlds.\nAnd may Allah send blessings upon our master Muhammad, His Prophet, and his family,\nand send peace — a complete and perfect peace.',
      },
      {
        sectionTitle: 'The Covenant of Ghadir',
        arabic:
          'حَتَّى إِذَا اسْتَكْمَلْتَ لَهُ مُدَّتَهُ\nوَأَرَدْتَ قَبْضَهُ إِلَيْكَ\nوَكُنْتَ أَنْتَ الْوَارِثُ لِمَا أَوْدَعْتَهُ\nأَقَامَ بِأَمْرِكَ عَلِيًّا عَلَمًا لِخَلْقِكَ\nوَاسْتَوْدَعَهُ سِرَّكَ وَعِلْمَكَ وَحِكْمَتَكَ',
        transliteration:
          "Ḥattā idha-stakmalat lahu muddatahu\nwa aradta qabḍahu ilayk\nwa kunta anta-l-wārithu limā awda'tahu\naqāma bi-amrika 'Aliyyan 'alaman li-khalqika\nwa-stawda'ahu sirraka wa 'ilmaka wa ḥikmataka",
        translation:
          'Until, when You had completed his allotted time\nand willed to gather him back to You,\nand You alone are the Inheritor of all You had deposited with him —\nhe raised Ali, by Your command, as a banner for Your creation,\nand entrusted him with Your secret, Your knowledge, and Your wisdom.',
      },
      {
        sectionTitle: 'Yearning for the Imam (AJ)',
        arabic:
          'أَيْنَ الْمُدَّخَرُ لِيَوْمِ الْفَقْرِ وَالْحَاجَةِ\nأَيْنَ الْمُنْتَظَرُ لِإِقَامَةِ الْأَمْتِ وَالْعِوَجِ\nأَيْنَ الْمُرْتَجَى لِإِزَالَةِ الْجَوْرِ وَالْعُدْوَانِ\nأَيْنَ الْمُدَّخَرُ لِتَجْدِيدِ الْفَرَائِضِ وَالسُّنَنِ',
        transliteration:
          "Ayna-l-muddakharu li-yawmi-l-faqri wa-l-ḥājah\nAyna-l-muntaẓaru li-iqāmati-l-amti wa-l-'iwaj\nAyna-l-murtajā li-izālati-l-jawri wa-l-'udwān\nAyna-l-muddakharu li-tajdīdi-l-farā'iḍi wa-s-sunan",
        translation:
          'Where is the one preserved for the day of poverty and need?\nWhere is the one awaited to straighten the crooked and deviant?\nWhere is the one hoped-for to remove oppression and aggression?\nWhere is the one kept in store to renew the obligations and traditions?',
      },
      {
        sectionTitle: 'The Longing Cry',
        arabic:
          'عَزِيزٌ عَلَيَّ أَنْ أَرَى الْخَلْقَ وَلَا تُرَى\nوَلَا أَسْمَعُ لَكَ حَسِيسًا وَلَا نَجْوَى\nعَزِيزٌ عَلَيَّ أَنْ تُحِيطَ بِكَ دُونِي الْبَلْوَى\nعَزِيزٌ عَلَيَّ أَنْ يَجْرِيَ عَلَيْكَ مَا جَرَى\nهَلْ مِنْ مُعِينٍ فَأُطِيلَ مَعَهُ الْعَوِيلَ وَالْبُكَاءَ',
        transliteration:
          "'Azīzun 'alayya an ara-l-khalqa wa lā turā\nwa lā asma'u laka ḥasīsan wa lā najwā\n'Azīzun 'alayya an tuḥīṭa bika dūnī-l-balwā\n'Azīzun 'alayya an yajriya 'alayka mā jarā\nHal min mu'īnin fa-uṭīla ma'ahu-l-'awīla wa-l-bukā'",
        translation:
          'It is painful for me that I see creation, yet you are not seen —\nand I do not hear from you even a whisper or a secret exchange.\nIt is painful for me that trials surround you while I am here.\nIt is painful for me that what has happened to you has happened.\nIs there anyone to help me so I may prolong my mourning and weeping?',
      },
    ],
  },
  {
    id: 'dua_tawassul',
    order: 4,
    nameEn: 'Dua Tawassul',
    nameAr: 'دعاء التوسل',
    category: 'occasions',
    recommendedTime: 'When seeking help, in times of difficulty or need',
    taughtBy: 'Transmitted through the tradition of the Ahl al-Bayt (AS)',
    shortDesc: 'Seeking intercession through the Prophet (SAW) and the Fourteen Infallibles',
    hasAiExplain: true,
    isTasbih: false,
    sections: [
      {
        sectionTitle: 'Opening Salutation',
        arabic:
          'اَللَّهُمَّ إِنِّي أَسْأَلُكَ وَأَتَوَجَّهُ إِلَيْكَ\nبِنَبِيِّكَ نَبِيِّ الرَّحْمَةِ مُحَمَّدٍ صَلَّى اللَّهُ عَلَيْهِ وَآلِهِ\nيَا أَبَا الْقَاسِمِ يَا رَسُولَ اللَّهِ\nيَا إِمَامَ الرَّحْمَةِ يَا سَيِّدَنَا وَمَوْلَانَا\nإِنَّا تَوَجَّهْنَا وَاسْتَشْفَعْنَا وَتَوَسَّلْنَا بِكَ إِلَى اللَّهِ',
        transliteration:
          "Allāhumma innī as'aluka wa atawajjahu ilayka\nbi-nabiyyika nabiyyi-r-raḥmati Muḥammadin ṣalla-llāhu 'alayhi wa ālih\nYā Aba-l-Qāsim yā Rasūla-llāh\nYā imāma-r-raḥma yā sayyidanā wa mawlānā\nInnā tawajjahnā wa-stashfa'nā wa tawassalnā bika ila-llāh",
        translation:
          'O Allah, I ask You and turn to You\nthrough Your Prophet, the Prophet of mercy, Muhammad (SAW).\nO Abu al-Qasim! O Messenger of Allah!\nO Imam of mercy! O our master and our guardian!\nWe have turned to you, sought your intercession, and used you as our means to Allah.',
      },
      {
        sectionTitle: 'Intercession of Imam Ali (AS)',
        arabic:
          'يَا أَمِيرَ الْمُؤْمِنِينَ يَا عَلِيَّ بْنَ أَبِي طَالِبٍ\nيَا حُجَّةَ اللَّهِ عَلَى خَلْقِهِ\nيَا سَيِّدَنَا وَمَوْلَانَا إِنَّا تَوَسَّلْنَا بِكَ\nوَتَشَفَّعْنَا إِلَى اللَّهِ بِقَرَابَتِكَ مِنْ رَسُولِ اللَّهِ\nفَاشْفَعْ لَنَا عِنْدَ اللَّهِ',
        transliteration:
          "Yā Amīra-l-mu'minīn yā 'Aliyya bna Abī Ṭālib\nYā ḥujjata-llāhi 'alā khalqih\nYā sayyidanā wa mawlānā innā tawassalnā bik\nwa tashaffa'nā ila-llāhi bi-qarābatika min Rasūli-llāh\nFa-shfa' lanā 'inda-llāh",
        translation:
          'O Commander of the Faithful! O Ali ibn Abi Talib!\nO Proof of Allah over His creation!\nO our master and our guardian — we seek your intercession\nand use you as our means to Allah through your kinship to the Messenger of Allah.\nSo intercede for us before Allah.',
      },
      {
        sectionTitle: 'Intercession of Imam Husayn (AS)',
        arabic:
          'يَا أَبَا عَبْدِ اللَّهِ يَا حُسَيْنَ بْنَ عَلِيٍّ\nيَا ابْنَ رَسُولِ اللَّهِ يَا ابْنَ أَمِيرِ الْمُؤْمِنِينَ\nيَا ابْنَ فَاطِمَةَ الزَّهْرَاءِ سَيِّدَةِ نِسَاءِ الْعَالَمِينَ\nيَا سَيِّدَنَا وَمَوْلَانَا إِنَّا تَوَسَّلْنَا بِكَ\nفَاشْفَعْ لَنَا عِنْدَ اللَّهِ',
        transliteration:
          "Yā Aba 'Abdillāh yā Ḥusayna bna 'Alī\nYā-bna Rasūli-llāh yā-bna Amīri-l-mu'minīn\nYā-bna Fāṭimata-z-Zahrā'i sayyidati nisā'i-l-'ālamīn\nYā sayyidanā wa mawlānā innā tawassalnā bik\nFa-shfa' lanā 'inda-llāh",
        translation:
          'O Abu Abdillah! O Husayn ibn Ali!\nO son of the Messenger of Allah! O son of the Commander of the Faithful!\nO son of Fatima al-Zahra, mistress of the women of all the worlds!\nO our master and guardian — we use you as our means to Allah.\nSo intercede for us before Allah.',
      },
      {
        sectionTitle: 'Intercession of Imam al-Mahdi (AJ)',
        arabic:
          'يَا صَاحِبَ الزَّمَانِ يَا ابْنَ الْحَسَنِ الْعَسْكَرِيِّ\nيَا حُجَّةَ اللَّهِ عَلَى خَلْقِهِ\nيَا سَيِّدَنَا وَمَوْلَانَا إِنَّا تَوَسَّلْنَا بِكَ\nفَاشْفَعْ لَنَا عِنْدَ اللَّهِ',
        transliteration:
          "Yā Ṣāḥiba-z-zamān yā-bna-l-Ḥasani-l-'Askarī\nYā ḥujjata-llāhi 'alā khalqih\nYā sayyidanā wa mawlānā innā tawassalnā bik\nFa-shfa' lanā 'inda-llāh",
        translation:
          'O Master of the Age! O son of Hasan al-Askari!\nO Proof of Allah over His creation!\nO our master and guardian — we use you as our means to Allah.\nSo intercede for us before Allah.',
      },
      {
        sectionTitle: 'The Final Plea',
        arabic:
          'اَللَّهُمَّ إِنَّا نَتَوَجَّهُ إِلَيْكَ بِأَوْلِيَائِكَ\nوَنَسْأَلُكَ بِحَقِّهِمْ لَدَيْكَ\nأَنْ تُقَضِّيَ لَنَا حَاجَتَنَا\nوَلَا تَرُدَّنَا خَائِبِينَ\nيَا أَرْحَمَ الرَّاحِمِينَ',
        transliteration:
          "Allāhumma innā natawajjahu ilayka bi-awliyā'ik\nwa nas'aluka bi-ḥaqqihim ladayk\nan tuqaḍḍiya lanā ḥājatanā\nwa lā taruddanā khā'ibīn\nYā arḥama-r-rāḥimīn",
        translation:
          'O Allah, we turn to You through Your close friends (the Imams),\nand we ask You by their right with You\nto fulfil our need\nand not to turn us away empty-handed,\nO Most Merciful of the merciful.',
      },
    ],
  },
  {
    id: 'dua_faraj',
    order: 5,
    nameEn: "Dua Faraj (for the Reappearance)",
    nameAr: 'دعاء الفرج',
    category: 'daily',
    recommendedTime: 'After every obligatory prayer',
    taughtBy: "From the tradition of the Imams (AS), particularly for the era of occultation",
    shortDesc: "A daily prayer for the hastening of Imam al-Mahdi's (AJ) reappearance",
    hasAiExplain: true,
    isTasbih: false,
    sections: [
      {
        sectionTitle: 'Complete Dua',
        arabic:
          'اَللَّهُمَّ كُنْ لِوَلِيِّكَ الْحُجَّةِ بْنِ الْحَسَنِ\nصَلَوَاتُكَ عَلَيْهِ وَعَلَى آبَائِهِ\nفِي هَذِهِ السَّاعَةِ وَفِي كُلِّ سَاعَةٍ\nوَلِيًّا وَحَافِظًا وَقَائِدًا وَنَاصِرًا وَدَلِيلًا وَعَيْنًا\nحَتَّى تُسْكِنَهُ أَرْضَكَ طَوْعًا\nوَتُمَتِّعَهُ فِيهَا طَوِيلًا',
        transliteration:
          "Allāhumma kun li-waliyyika-l-Ḥujjati-bni-l-Ḥasan\nṢalawātuka 'alayhi wa 'alā ābā'ih\nfī hādhihi-s-sā'ati wa fī kulli sā'ah\nwaliyyan wa ḥāfiẓan wa qā'idan wa nāṣiran wa dalīlan wa 'aynā\nḥattā tuskinnahu arḍaka ṭaw'an\nwa tumatti'ahu fīhā ṭawīlā",
        translation:
          'O Allah, be for Your guardian, al-Hujjah ibn al-Hasan —\nmay Your blessings be upon him and his forefathers —\nin this hour and in every hour:\na guardian, a protector, a leader, a helper, a guide, and a watchful eye,\nuntil You settle him on Your earth willingly\nand grant him long enjoyment therein.',
      },
    ],
  },
  {
    id: 'dua_ahd',
    order: 6,
    nameEn: "Dua al-'Ahd (The Covenant)",
    nameAr: 'دعاء العهد',
    category: 'daily',
    recommendedTime: 'Every morning after Fajr, for 40 consecutive mornings',
    taughtBy: 'Imam al-Sadiq (AS)',
    shortDesc:
      "A daily covenant of allegiance to Imam al-Mahdi (AJ). Whoever recites this for 40 mornings becomes one of his helpers at reappearance.",
    hasAiExplain: true,
    isTasbih: false,
    sections: [
      {
        sectionTitle: 'Opening',
        arabic:
          'اَللَّهُمَّ رَبَّ النُّورِ الْعَظِيمِ\nوَرَبَّ الْكُرْسِيِّ الرَّفِيعِ\nوَرَبَّ الْبَحْرِ الْمَسْجُورِ\nوَمُنْزِلَ التَّوْرَاةِ وَالإِنجِيلِ وَالزَّبُورِ\nوَرَبَّ الظِّلِّ وَالْحَرُورِ',
        transliteration:
          "Allāhumma rabba-n-nūri-l-'aẓīm\nwa rabba-l-kursiyyi-r-rafī'\nwa rabba-l-baḥri-l-masjūr\nwa munzila-t-tawrāti wa-l-injīli wa-z-zabūr\nwa rabba-ẓ-ẓilli wa-l-ḥarūr",
        translation:
          'O Allah! Lord of the magnificent light,\nLord of the exalted Throne,\nLord of the surging sea,\nSender of the Torah, the Gospel, and the Psalms,\nLord of shade and of scorching heat.',
      },
      {
        sectionTitle: 'The Pledge',
        arabic:
          'اَللَّهُمَّ إِنِّي أُشْهِدُكَ أَنِّي أَشْهَدُ\nأَنْ لَا إِلَهَ إِلَّا أَنْتَ وَحْدَكَ لَا شَرِيكَ لَكَ\nوَأَنَّ مُحَمَّدًا عَبْدُكَ وَرَسُولُكَ\nوَأَنَّ الإِمَامَ الْقَائِمَ بِالْحَقِّ بَعْدَهُ\nهُوَ الْحُجَّةُ بْنُ الْحَسَنِ صَاحِبُ الزَّمَانِ',
        transliteration:
          "Allāhumma innī ush-hiduka annī ash-hadu\nan lā ilāha illā anta waḥdaka lā sharīka lak\nwa anna Muḥammadan 'abduka wa rasūluk\nwa anna-l-imāma-l-qā'ima bi-l-ḥaqqi ba'dah\nhuwa-l-Ḥujjatu-bnu-l-Ḥasan Ṣāḥibu-z-zamān",
        translation:
          'O Allah, I call You as witness that I testify:\nThere is no god but You, alone, without partner,\nand that Muhammad is Your servant and Messenger,\nand that the Imam who stands with truth after him\nis al-Hujjah ibn al-Hasan, the Master of the Age.',
      },
      {
        sectionTitle: 'Reaffirmation',
        arabic:
          'اَللَّهُمَّ فَصَلِّ عَلَى مُحَمَّدٍ وَآلِ مُحَمَّدٍ\nوَعَجِّلْ فَرَجَهُ\nوَاجْعَلْنِي مِنْ أَنْصَارِهِ وَأَعْوَانِهِ\nوَأَوْلِيَائِهِ فِي الدُّنْيَا وَالآخِرَةِ',
        transliteration:
          "Allāhumma fa-ṣalli 'alā Muḥammadin wa āli Muḥammad\nwa 'ajjil farajah\nwa-j'alnī min anṣārihī wa a'wānih\nwa awliyā'ihī fi-d-dunyā wa-l-ākhirah",
        translation:
          'O Allah, send blessings upon Muhammad and the family of Muhammad,\nand hasten his reappearance,\nand make me of his helpers, supporters,\nand close companions in this world and the next.',
      },
    ],
  },
  {
    id: 'ziyarat_ashura',
    order: 7,
    nameEn: 'Ziyarat Ashura',
    nameAr: 'زيارة عاشوراء',
    category: 'ziyarat',
    recommendedTime:
      "On the day of Ashura (10 Muharram) and every day — especially in Muharram. Recite the salawat and la'n 100 times each.",
    taughtBy: 'Imam Muhammad al-Baqir (AS) — transmitted by Alqama ibn Muhammad al-Hadrami',
    shortDesc:
      'The most powerful Ziyarat — recited to spiritually visit Imam Husayn (AS) at Karbala. Its reward is beyond measure.',
    hasAiExplain: true,
    isTasbih: false,
    sections: [
      {
        sectionTitle: 'Opening Salutation',
        arabic:
          'اَلسَّلَامُ عَلَيْكَ يَا أَبَا عَبْدِ اللَّهِ\nاَلسَّلَامُ عَلَيْكَ يَا ابْنَ رَسُولِ اللَّهِ\nاَلسَّلَامُ عَلَيْكَ يَا ابْنَ أَمِيرِ الْمُؤْمِنِينَ\nوَابْنَ سَيِّدِ الْوَصِيِّينَ\nاَلسَّلَامُ عَلَيْكَ يَا ابْنَ فَاطِمَةَ سَيِّدَةِ نِسَاءِ الْعَالَمِينَ',
        transliteration:
          "As-salāmu 'alayka yā Abā 'Abdillāh\nAs-salāmu 'alayka yā-bna Rasūli-llāh\nAs-salāmu 'alayka yā-bna Amīri-l-mu'minīn\nwa-bna sayyidi-l-waṣiyyīn\nAs-salāmu 'alayka yā-bna Fāṭimata sayyidati nisā'i-l-'ālamīn",
        translation:
          'Peace be upon you, O Abu Abdillah.\nPeace be upon you, O son of the Messenger of Allah.\nPeace be upon you, O son of the Commander of the Faithful\nand son of the master of the legatees.\nPeace be upon you, O son of Fatima, mistress of the women of all the worlds.',
      },
      {
        sectionTitle: 'Acknowledging the Sacrifice',
        arabic:
          'أَشْهَدُ أَنَّكَ قَدْ أَقَمْتَ الصَّلَاةَ\nوَآتَيْتَ الزَّكَاةَ وَأَمَرْتَ بِالْمَعْرُوفِ\nوَنَهَيْتَ عَنِ الْمُنْكَرِ\nوَجَاهَدْتَ فِي اللَّهِ حَقَّ جِهَادِهِ\nوَصَبَرْتَ عَلَى الأَذَى فِي جَنْبِهِ',
        transliteration:
          "Ash-hadu annaka qad aqamta-ṣ-ṣalāh\nwa ātayta-z-zakāta wa amarta bi-l-ma'rūf\nwa nahayta 'ani-l-munkar\nwa jāhadta fi-llāhi ḥaqqa jihādih\nwa ṣabartu 'ala-l-adhā fī janbih",
        translation:
          'I testify that you established prayer,\ngave zakat, commanded the good,\nand forbade the evil,\nand strove in the way of Allah as it deserved to be striven,\nand you were patient in bearing harm for His sake.',
      },
      {
        sectionTitle: 'Salawat (100 times)',
        arabic: 'اَللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَآلِ مُحَمَّدٍ × ١٠٠',
        transliteration: "Allāhumma ṣalli 'alā Muḥammadin wa āli Muḥammad × 100",
        translation:
          'O Allah, send blessings upon Muhammad and the family of Muhammad × 100\n\n(Recite this one hundred times during the Ziyarat)',
      },
      {
        sectionTitle: 'Covenant of Allegiance',
        arabic:
          'يَا أَبَا عَبْدِ اللَّهِ إِنِّي سِلْمٌ لِمَنْ سَالَمَكُمْ\nوَحَرْبٌ لِمَنْ حَارَبَكُمْ إِلَى يَوْمِ الْقِيَامَةِ\nوَلَعَنَ اللَّهُ آلَ زِيَادٍ وَآلَ مَرْوَانَ\nوَلَعَنَ اللَّهُ بَنِي أُمَيَّةَ قَاطِبَةً\nوَلَعَنَ اللَّهُ ابْنَ مَرْجَانَةَ',
        transliteration:
          "Yā Abā 'Abdillāh innī silmun li-man sālamakum\nwa ḥarbun li-man ḥārabakum ilā yawmi-l-qiyāmah\nwa la'ana-llāhu āla Ziyādin wa āla Marwān\nwa la'ana-llāhu banī Umayyata qāṭibah\nwa la'ana-llāhu-bna Marjānah",
        translation:
          'O Abu Abdillah, I am at peace with those who are at peace with you\nand at war with those who are at war with you until the Day of Resurrection.\nMay Allah curse the house of Ziyad and the house of Marwan.\nMay Allah curse the Banu Umayya altogether.\nMay Allah curse the son of Marjanah.',
      },
      {
        sectionTitle: 'Closing Prayer',
        arabic:
          'اَللَّهُمَّ اجْعَلْنِي عِنْدَكَ وَجِيهًا بِالْحُسَيْنِ\nفِي الدُّنْيَا وَالآخِرَةِ\nاَللَّهُمَّ اجْعَلْنِي مِنَ الْمُسْتَشْفِعِينَ بِهِ\nوَمِنَ الطَّالِبِينَ بِثَأْرِهِ\nوَمِمَّنْ يَنْتَصِرُ بِهِ وَيَتَبَعُ سَبِيلَهُ وَهَدْيَهُ',
        transliteration:
          "Allāhumma-j'alnī 'indaka wajīhan bi-l-Ḥusayn\nfi-d-dunyā wa-l-ākhirah\nAllāhumma-j'alnī min al-mustashfi'īna bih\nwa mina-ṭ-ṭālibīna bi-tha'rih\nwa mimman yantaṣiru bih wa yattabi'u sabīlahu wa hadyah",
        translation:
          'O Allah, make me honoured in Your sight through al-Husayn\nin this world and the next.\nO Allah, make me of those who seek his intercession,\nand of those who seek to avenge his blood,\nand of those who are victorious through him and follow his path and guidance.',
      },
    ],
  },
  {
    id: 'munajat_shabaniyya',
    order: 8,
    nameEn: "Munajat Sha'baniyya",
    nameAr: 'المناجاة الشعبانية',
    category: 'occasions',
    recommendedTime: "During the month of Sha'ban — especially the first nights",
    taughtBy: "Transmitted from Imam Ali (AS) — all Imams recited it together in Sha'ban",
    shortDesc: "The intimate whispered prayer of Sha'ban — a deeply personal conversation with Allah",
    hasAiExplain: true,
    isTasbih: false,
    sections: [
      {
        sectionTitle: 'The Whisper',
        arabic:
          'إِلَهِي هَبْ لِي كَمَالَ الإِنْقِطَاعِ إِلَيْكَ\nوَأَنِرْ أَبْصَارَ قُلُوبِنَا بِضِيَاءِ نَظَرِهَا إِلَيْكَ\nحَتَّى تَخْرِقَ أَبْصَارُ الْقُلُوبِ حُجُبَ النُّورِ\nفَتَصِلَ إِلَى مَعْدِنِ الْعَظَمَةِ\nوَتَصِيرَ أَرْوَاحُنَا مُعَلَّقَةً بِعِزِّ قُدْسِكَ',
        transliteration:
          "Ilāhī hab lī kamāla-l-inqiṭā'i ilayk\nwa anir abṣāra qulūbinā bi-ḍiyā'i naẓarihā ilayk\nḥattā takhriqa abṣāru-l-qulūbi ḥujuba-n-nūr\nfa-taṣila ilā ma'dini-l-'aẓamah\nwa taṣīra arwāḥunā mu'allaqatan bi-'izzi qudsik",
        translation:
          'My God, grant me complete severance from all else — turning only to You.\nIlluminate the eyes of our hearts with the light of gazing upon You,\nuntil the sight of hearts pierces through the veils of light\nand reaches the source of all Majesty —\nand our souls become suspended in the glory of Your sanctity.',
      },
      {
        sectionTitle: 'Longing for Allah',
        arabic:
          'إِلَهِي وَأَلْحِقْنِي بِنُورِ عِزِّكَ الأَبْهَجِ\nفَأَكُونَ لَكَ عَارِفًا\nوَعَنْ سِوَاكَ مُنْحَرِفًا\nوَتَكُونَ مِنِّي خَائِفًا مُرَاقِبًا\nيَا ذَا الْجَلَالِ وَالإِكْرَامِ',
        transliteration:
          "Ilāhī wa alḥiqnī bi-nūri 'izzika-l-abhaj\nfa-akūna laka 'ārifan\nwa 'an siwāka munḥarifan\nwa takūna minnī khā'ifan murāqiban\nYā Dha-l-jalāli wa-l-ikrām",
        translation:
          'My God, join me to the most radiant light of Your glory,\nthat I may be one who truly knows You,\nand turns away from all other than You —\nand be one who fears You and remains ever-watchful of You,\nO Possessor of Majesty and Honour.',
      },
    ],
  },
  {
    id: 'dua_samat',
    order: 9,
    nameEn: 'Dua al-Samat',
    nameAr: 'دعاء السمات',
    category: 'weekly',
    recommendedTime: 'Friday evenings (after Asr), or Thursday nights',
    taughtBy: "From Imam al-Sadiq (AS) — one of the most powerful duas in the tradition",
    shortDesc:
      'A supplication of tremendous majesty, invoking Allah by His greatest names and the secrets entrusted to the Prophets.',
    hasAiExplain: true,
    isTasbih: false,
    sections: [
      {
        sectionTitle: "Invoking Allah's Names",
        arabic:
          'اَللَّهُمَّ إِنِّي أَسْأَلُكَ بِاسْمِكَ الْعَظِيمِ الأَعْظَمِ\nالأَعَزِّ الأَجَلِّ الأَكْرَمِ\nالَّذِي إِذَا دُعِيتَ بِهِ عَلَى مَغَالِقِ أَبْوَابِ السَّمَاءِ لِلْفَتْحِ بِالرَّحْمَةِ انْفَتَحَتْ\nوَإِذَا دُعِيتَ بِهِ عَلَى مَضَائِقِ أَبْوَابِ الأَرْضِ لِلْفَرَجِ انْفَرَجَتْ',
        transliteration:
          "Allāhumma innī as'aluka bi-smika-l-'aẓīmi-l-a'ẓam\nal-a'azzi-l-ajalli-l-akram\nalladhī idhā du'īta bih 'alā maghāliqi abwābi-s-samā'i li-l-fatḥi bi-r-raḥmah infataḥat\nwa idhā du'īta bih 'alā maḍā'iqi abwābi-l-arḍi li-l-faraji infarajat",
        translation:
          'O Allah, I ask You by Your name — the Great, the Greatest,\nthe Most Mighty, the Most Exalted, the Most Generous —\nthe name by which, when You are called upon to open the closed gates of heaven with mercy, they open,\nand when You are called upon to relieve the constricted gates of the earth, they open wide.',
      },
      {
        sectionTitle: 'The Plea',
        arabic:
          'يَا نُورَ النُّورِ يَا مُدَبِّرَ الأُمُورِ\nيَا بَاعِثَ مَنْ فِي الْقُبُورِ\nصَلِّ عَلَى مُحَمَّدٍ وَآلِ مُحَمَّدٍ\nوَافْعَلْ بِي مَا أَنْتَ أَهْلُهُ\nوَلَا تَفْعَلْ بِي مَا أَنَا أَهْلُهُ',
        transliteration:
          "Yā nūra-n-nūr yā mudabbira-l-umūr\nYā bā'itha man fi-l-qubūr\nṢalli 'alā Muḥammadin wa āli Muḥammad\nwa-f'al bī mā anta ahluh\nwa lā taf'al bī mā anā ahluh",
        translation:
          'O Light of lights! O Disposer of all affairs!\nO Resurrector of those in the graves!\nSend blessings upon Muhammad and the family of Muhammad,\nand treat me as You, in Your generosity, deserve to treat me —\nand do not treat me as I, in my unworthiness, deserve to be treated.',
      },
    ],
  },
];

// ─────────────────────────────────────────────────────────────────────────────
// Seed runner
// ─────────────────────────────────────────────────────────────────────────────

async function seed(collectionName, items) {
  console.log(`\n📂 Seeding ${collectionName} (${items.length} docs)…`);
  const batch = db.batch();
  for (const item of items) {
    const { id, ...data } = item;
    const ref = db.collection(collectionName).doc(id);
    batch.set(ref, data, { merge: true });
  }
  await batch.commit();
  console.log(`   ✅ ${items.length} documents written`);
}

// ─────────────────────────────────────────────────────────────────────────────
// Daily Grace content
// ─────────────────────────────────────────────────────────────────────────────

const scriptures = [
  { id: 'scr_0',  order: 0,  text: 'Indeed, the righteous will be among gardens and rivers, in a seat of honor near a Mighty King.', ref: 'Quran 54:54-55' },
  { id: 'scr_1',  order: 1,  text: 'And We have not sent you, [O Muhammad], except as a mercy to the worlds.', ref: 'Quran 21:107' },
  { id: 'scr_2',  order: 2,  text: 'Is not Allah sufficient for His servant? Yet they frighten you with others besides Him.', ref: 'Quran 39:36' },
  { id: 'scr_3',  order: 3,  text: 'Perhaps you hate something and it is good for you; and perhaps you love something and it is bad for you. And Allah knows, while you know not.', ref: 'Quran 2:216' },
  { id: 'scr_4',  order: 4,  text: 'Indeed, Allah is with the patient ones.', ref: 'Quran 2:153' },
  { id: 'scr_5',  order: 5,  text: 'So remember Me; I will remember you. And be grateful to Me and do not deny Me.', ref: 'Quran 2:152' },
  { id: 'scr_6',  order: 6,  text: 'Indeed, the most noble of you in the sight of Allah is the most righteous of you.', ref: 'Quran 49:13' },
  { id: 'scr_7',  order: 7,  text: 'And your Lord has decreed that you worship none but Him, and that you be dutiful to your parents.', ref: 'Quran 17:23' },
  { id: 'scr_8',  order: 8,  text: 'Verily, with hardship comes ease.', ref: 'Quran 94:6' },
  { id: 'scr_9',  order: 9,  text: 'And He is with you wherever you are. And Allah, of what you do, is Seeing.', ref: 'Quran 57:4' },
  { id: 'scr_10', order: 10, text: 'Allah does not burden a soul beyond that it can bear.', ref: 'Quran 2:286' },
  { id: 'scr_11', order: 11, text: 'And whoever relies upon Allah — then He is sufficient for him.', ref: 'Quran 65:3' },
  { id: 'scr_12', order: 12, text: 'My mercy encompasses all things.', ref: 'Quran 7:156' },
  { id: 'scr_13', order: 13, text: 'And when My servants ask you about Me — indeed I am near. I respond to the supplicant when he calls upon Me.', ref: 'Quran 2:186' },
  { id: 'scr_14', order: 14, text: 'Whoever does righteousness, whether male or female, while being a believer — We will surely cause him to live a good life.', ref: 'Quran 16:97' },
  { id: 'scr_15', order: 15, text: 'Indeed, Allah will not change the condition of a people until they change what is in themselves.', ref: 'Quran 13:11' },
  { id: 'scr_16', order: 16, text: 'So do not weaken and do not grieve, and you will be superior if you are true believers.', ref: 'Quran 3:139' },
  { id: 'scr_17', order: 17, text: 'O My servants who have transgressed against themselves, do not despair of the mercy of Allah. Indeed, Allah forgives all sins.', ref: 'Quran 39:53' },
  { id: 'scr_18', order: 18, text: 'And whoever fears Allah — He will make for him a way out, and will provide for him from where he does not expect.', ref: 'Quran 65:2-3' },
  { id: 'scr_19', order: 19, text: 'Do not lose hope in the mercy of Allah.', ref: 'Quran 12:87' },
  { id: 'scr_20', order: 20, text: 'And We have certainly made the Quran easy to remember. So is there anyone who will be mindful?', ref: 'Quran 54:17' },
  { id: 'scr_21', order: 21, text: 'And He found you lost and guided you.', ref: 'Quran 93:7' },
  { id: 'scr_22', order: 22, text: 'And your Lord says: Call upon Me; I will respond to you.', ref: 'Quran 40:60' },
  { id: 'scr_23', order: 23, text: 'And We have certainly honored the children of Adam.', ref: 'Quran 17:70' },
  { id: 'scr_24', order: 24, text: 'And seek help through patience and prayer.', ref: 'Quran 2:45' },
  { id: 'scr_25', order: 25, text: "Whoever does an atom's weight of good will see it.", ref: 'Quran 99:7' },
  { id: 'scr_26', order: 26, text: 'Unquestionably, the help of Allah is near.', ref: 'Quran 2:214' },
  { id: 'scr_27', order: 27, text: 'And whoever is grateful — his gratitude is only for the benefit of himself.', ref: 'Quran 31:12' },
];

const roleModels = [
  { id: 'rm_0',  order: 0,  text: 'Prophet Muhammad ﷺ — Seal of the Prophets, whose household (Ahl al-Bayt) are a light and mercy for all of creation' },
  { id: 'rm_1',  order: 1,  text: "Imam Ali ibn Abi Talib (AS) — First Imam, Commander of the Faithful, gate of the city of the Prophet's knowledge, author of Nahj al-Balagha" },
  { id: 'rm_2',  order: 2,  text: 'Imam Hasan ibn Ali (AS) — Second Imam, grandson of the Prophet ﷺ, leader of the youth of Paradise' },
  { id: 'rm_3',  order: 3,  text: 'Imam Hussain ibn Ali (AS) — Third Imam, Master of Martyrs, whose stand at Karbala is the eternal emblem of justice over oppression' },
  { id: 'rm_4',  order: 4,  text: 'Imam Ali ibn Hussain Zayn al-Abidin (AS) — Fourth Imam, the Adornment of the Worshippers, author of al-Sahifa al-Sajjadiyya' },
  { id: 'rm_5',  order: 5,  text: 'Imam Muhammad al-Baqir (AS) — Fifth Imam, Splitter of Knowledge, who opened the doors of Shia jurisprudence and theology' },
  { id: 'rm_6',  order: 6,  text: "Imam Ja'far al-Sadiq (AS) — Sixth Imam, the great teacher of the Ahl al-Bayt school, whose students shaped Islamic science and law" },
  { id: 'rm_7',  order: 7,  text: 'Imam Musa al-Kadhim (AS) — Seventh Imam, the Patient One, who endured long imprisonment with unwavering faith' },
  { id: 'rm_8',  order: 8,  text: 'Imam Ali al-Ridha (AS) — Eighth Imam, the Scholar of the Ahl al-Bayt, whose shrine in Mashhad is a place of pilgrimage and blessing' },
  { id: 'rm_9',  order: 9,  text: 'Imam Muhammad al-Jawad (AS) — Ninth Imam, the Generous One, who demonstrated divine wisdom from the youngest age' },
  { id: 'rm_10', order: 10, text: 'Imam Ali al-Hadi (AS) — Tenth Imam, who preserved the faith of his community under severe Abbasid pressure' },
  { id: 'rm_11', order: 11, text: 'Imam Hasan al-Askari (AS) — Eleventh Imam, who guided the community from Samarra and prepared the way for the occultation' },
  { id: 'rm_12', order: 12, text: 'Imam Muhammad al-Mahdi (AJ) — Twelfth Imam, the Awaited Saviour, the Living Proof of Allah on earth, may Allah hasten his reappearance' },
  { id: 'rm_13', order: 13, text: 'Lady Khadijah bint Khuwaylid (SA) — first wife of the Prophet ﷺ, first believer, who supported the mission of Islam with her wealth and her soul' },
  { id: 'rm_14', order: 14, text: 'Lady Fatimah az-Zahra (SA) — daughter of the Prophet ﷺ, wife of Imam Ali (AS), mother of the Imams, the Lady of Light, the best of women of all the worlds' },
  { id: 'rm_15', order: 15, text: 'Lady Zainab bint Ali (SA) — granddaughter of the Prophet ﷺ, hero of Karbala, who carried the message of Imam Hussain (AS) to the world after his martyrdom' },
  { id: 'rm_16', order: 16, text: 'Lady Maryam (AS) — mother of Prophet Isa (AS), chosen and purified above all women, a model of devotion and purity in the Quran' },
  { id: 'rm_17', order: 17, text: 'Lady Asiya (AS) — wife of Pharaoh, who chose faith over the throne of the world, praised in the Quran as a model for all believers' },
  { id: 'rm_18', order: 18, text: 'Lady Ruqayyah bint Hussain (AS) — young daughter of Imam Hussain (AS), who endured the tragedy of Karbala as a child and is beloved by the faithful' },
  { id: 'rm_19', order: 19, text: 'Salman al-Farisi (RA) — beloved companion of the Prophet ﷺ, the first Persian Muslim, deeply close to the Ahl al-Bayt, of whom the Prophet said: Salman is from us, the Ahl al-Bayt' },
  { id: 'rm_20', order: 20, text: 'Abu Dharr al-Ghifari (RA) — companion of the Prophet ﷺ who stood firmly with Imam Ali (AS), champion of the poor and oppressed, model of uncompromising truthfulness' },
  { id: 'rm_21', order: 21, text: 'Ammar ibn Yasir (RA) — companion of the Prophet ﷺ, son of the first martyrs of Islam, who fought and was martyred alongside Imam Ali (AS) at the Battle of Siffin' },
  { id: 'rm_22', order: 22, text: 'Maytham al-Tammar (RA) — loyal companion of Imam Ali (AS), who endured martyrdom rather than renounce his love for the Ahl al-Bayt' },
  { id: 'rm_23', order: 23, text: 'Hujr ibn Adi al-Kindi (RA) — devoted companion of Imam Ali (AS), martyred by Muawiyah for refusing to curse the Commander of the Faithful' },
  { id: 'rm_24', order: 24, text: 'Mukhtar al-Thaqafi (RA) — who rose to avenge the martyrs of Karbala and brought justice to the killers of Imam Hussain (AS)' },
  { id: 'rm_25', order: 25, text: 'Abbas ibn Ali (AS) — standard-bearer at Karbala, brother and loyal protector of Imam Hussain (AS), whose devotion is a model of selfless love' },
  { id: 'rm_26', order: 26, text: 'Ali al-Akbar ibn Hussain (AS) — firstborn son of Imam Hussain (AS), who resembled the Prophet ﷺ most closely and was martyred at Karbala in the prime of youth' },
  { id: 'rm_27', order: 27, text: 'Ali al-Asghar (AS) — the infant son of Imam Hussain (AS), the youngest martyr of Karbala, whose innocent blood cries out against injustice' },
  { id: 'rm_28', order: 28, text: 'Hurr ibn Yazid al-Riyahi (RA) — the commander who blocked Imam Hussain (AS) yet repented on the morning of Ashura and died defending the Imam, a model of true Tawbah' },
  { id: 'rm_29', order: 29, text: 'Bilal ibn Rabah (RA) — the first muezzin of Islam, a freed slave whose faith overcame all oppression, beloved by the Prophet ﷺ and the Ahl al-Bayt' },
  { id: 'rm_30', order: 30, text: 'Sumayya bint Khabbab (RA) — first martyr of Islam, mother of Ammar ibn Yasir, who gave her life for the truth of La ilaha illallah' },
  { id: 'rm_31', order: 31, text: "Jafar ibn Abi Talib (RA) — cousin of the Prophet ﷺ and brother of Imam Ali (AS), Dhul-Janahayn, who was martyred at the Battle of Mu'tah" },
  { id: 'rm_32', order: 32, text: 'Zayd ibn Ali ibn Hussain (RA) — grandson of Imam Hussain (AS) and great scholar who rose against Umayyad tyranny and was martyred, revered by Shia Muslims' },
  { id: 'rm_33', order: 33, text: 'Prophet Ibrahim (AS) — Friend of Allah, father of the Prophets, who smashed idols and submitted to Allah even when commanded to sacrifice his son' },
  { id: 'rm_34', order: 34, text: "Prophet Musa (AS) — Kalimullah, who led his people from Pharaoh's oppression to freedom through steadfast faith and divine guidance" },
  { id: 'rm_35', order: 35, text: "Prophet Isa (AS) — Spirit of Allah, born of Lady Maryam (AS), who healed the sick and raised the dead by Allah's permission" },
  { id: 'rm_36', order: 36, text: 'Prophet Yusuf (AS) — whose patience through betrayal, slavery, and imprisonment is one of the most beautiful stories in the Quran' },
  { id: 'rm_37', order: 37, text: 'Prophet Dawud (AS) — given the Zabur, who combined the roles of prophet and just ruler, and whose Psalms of praise echo through creation' },
  { id: 'rm_38', order: 38, text: 'Prophet Sulayman (AS) — who was granted dominion over wind, jinn, and creation, yet remained humble and grateful before Allah' },
  { id: 'rm_39', order: 39, text: 'Prophet Nuh (AS) — who called his people to Allah for 950 years with patience and perseverance in the face of total rejection' },
  { id: 'rm_40', order: 40, text: 'Prophet Yunus (AS) — who turned to Allah in the depths of darkness with the words: There is no god but You, glory be to You; I was indeed of the wrongdoers' },
  { id: 'rm_41', order: 41, text: "Prophet Ayub (AS) — the supreme model of Sabr, who endured immense suffering without complaint and was restored by Allah's boundless mercy" },
  { id: 'rm_42', order: 42, text: 'Shaykh al-Mufid (RA) — the great Shia theologian of Baghdad, who systematised Imami theology and defended Shia doctrine with brilliant scholarship' },
  { id: 'rm_43', order: 43, text: 'Allamah al-Hilli (RA) — the foremost Shia jurist and theologian of his age, who strengthened Shia jurisprudence and engaged the great intellectual debates of his time' },
  { id: 'rm_44', order: 44, text: "Sheikh al-Tusi (RA) — Shaykh al-Ta'ifa, the foundational Shia scholar whose works in fiqh, hadith, and theology remain authoritative to this day" },
  { id: 'rm_45', order: 45, text: "Shahid al-Awwal — Muhammad ibn Makki al-Amili (RA), the First Martyr of Shia jurisprudence, whose al-Lum'ah al-Dimashqiyyah remains a cornerstone of Shia fiqh" },
  { id: 'rm_46', order: 46, text: "Allamah Tabataba'i (RA) — the great 20th century Shia philosopher and author of al-Mizan, the monumental Quranic exegesis of the modern era" },
  { id: 'rm_47', order: 47, text: 'Shaykh al-Kulayni (RA) — the great Shia hadith scholar who compiled al-Kafi and preserved the transmitted wisdom of the Ahl al-Bayt' },
  { id: 'rm_48', order: 48, text: 'Shahid Mutahhari (RA) — 20th century Shia scholar and martyr, whose writings on Islamic philosophy, ethics, and society continue to guide millions' },
  { id: 'rm_49', order: 49, text: 'Sayyid Muhammad Baqir al-Sadr (RA) — visionary Shia scholar and martyr, whose works in Islamic economics and philosophy broke new intellectual ground' },
  { id: 'rm_50', order: 50, text: 'Umm Salamah (RA) — noble wife of the Prophet ﷺ, deeply devoted to the Ahl al-Bayt, who narrated many hadith and was a pillar of wisdom in the early community' },
  { id: 'rm_51', order: 51, text: 'Abdullah ibn Abbas (RA) — cousin of the Prophet ﷺ, ocean of knowledge in Quranic exegesis, who remained close to Imam Ali (AS)' },
  { id: 'rm_52', order: 52, text: 'Muadh ibn Jabal (RA) — companion of the Prophet ﷺ renowned for his knowledge of halal and haram, and his deep devotion to learning' },
  { id: 'rm_53', order: 53, text: 'Musab ibn Umayr (RA) — the first ambassador of Islam, who sacrificed wealth and family for the truth of the faith' },
  { id: 'rm_54', order: 54, text: 'Sayyid Ibn Tawus (RA) — the great Shia scholar of devotion, ziyarat, and prayer whose works nourished centuries of worship' },
  { id: 'rm_55', order: 55, text: 'Mulla Sadra (RA) — the major Shia philosopher whose synthesis of reason, scripture, and spiritual insight shaped later Islamic thought' },
  { id: 'rm_56', order: 56, text: 'Ibn Sina — Abu Ali al-Husayn ibn Sina (RH), the great Islamic philosopher and physician of Persian heritage whose Canon of Medicine shaped world science' },
  { id: 'rm_57', order: 57, text: 'Al-Biruni (RH) — the brilliant polymath of the Islamic Golden Age, a Persian scholar who advanced mathematics, astronomy, and the study of cultures' },
  { id: 'rm_58', order: 58, text: 'Ibn Khaldun (RH) — the great North African Islamic historian and social thinker, founder of the philosophy of history and sociology' },
  { id: 'rm_59', order: 59, text: 'Lady Nafisa bint al-Hasan (SA) — great-granddaughter of Imam Hasan (AS), renowned for her knowledge, piety, and intercession, deeply revered in the Shia tradition' },
];

const reflections = [
  { id: 'ref_0',  order: 0,  text: "As this day closes, consider one moment where Allah's mercy was evident." },
  { id: 'ref_1',  order: 1,  text: 'Bring before Allah whatever weighed on your heart today.' },
  { id: 'ref_2',  order: 2,  text: 'Name one blessing from this day and express gratitude to Allah.' },
  { id: 'ref_3',  order: 3,  text: "Rest in the knowledge that you are held in Allah's infinite care." },
  { id: 'ref_4',  order: 4,  text: 'Reflect on where you felt called to show compassion and kindness today.' },
  { id: 'ref_5',  order: 5,  text: "Let go of what you cannot control and trust in Allah's perfect plan." },
  { id: 'ref_6',  order: 6,  text: 'As the day draws to a close, receive peace in remembrance of Allah.' },
  { id: 'ref_7',  order: 7,  text: 'Consider how you honored your prayers today, and thank Allah for each one.' },
  { id: 'ref_8',  order: 8,  text: 'Reflect on a moment where patience (Sabr) guided your actions today.' },
  { id: 'ref_9',  order: 9,  text: "Ask forgiveness for any shortcoming today — Allah's mercy is boundless." },
  { id: 'ref_10', order: 10, text: 'Name one person you showed kindness to today and make dua for them.' },
  { id: 'ref_11', order: 11, text: 'Sit with gratitude: what did Allah provide today that you did not ask for?' },
  { id: 'ref_12', order: 12, text: 'Reflect on a verse from the Quran that speaks to where you are right now.' },
  { id: 'ref_13', order: 13, text: 'Consider how you used your time today — and offer tomorrow to Allah.' },
  { id: 'ref_14', order: 14, text: 'Rest knowing that whatever hardship came today, Allah was with you through it.' },
  { id: 'ref_15', order: 15, text: "Think of one way you served your family or community today for Allah's sake." },
  { id: 'ref_16', order: 16, text: 'As night falls, make Tawbah — Allah loves those who turn back to Him.' },
  { id: 'ref_17', order: 17, text: 'Reflect on the beauty Allah placed in your day, however small.' },
  { id: 'ref_18', order: 18, text: 'Consider what you learned today and how it draws you closer to Allah.' },
  { id: 'ref_19', order: 19, text: "Let the day's worries rest with Allah — He carries what you cannot." },
  { id: 'ref_20', order: 20, text: 'Think of a moment today where you could have chosen better, and learn from it gently.' },
  { id: 'ref_21', order: 21, text: 'Make dua for those who are struggling — your prayer is a gift to them.' },
  { id: 'ref_22', order: 22, text: 'Recall a blessing you often overlook and take a moment to thank Allah for it.' },
  { id: 'ref_23', order: 23, text: 'Reflect on your intentions today — were they for Allah? Tomorrow, begin again.' },
  { id: 'ref_24', order: 24, text: "As the night quiets, listen for Allah's nearness in the stillness." },
  { id: 'ref_25', order: 25, text: 'Consider where you found strength today — that strength is from Allah.' },
  { id: 'ref_26', order: 26, text: "Name one thing you will do tomorrow, for Allah's sake, that you did not do today." },
  { id: 'ref_27', order: 27, text: 'As you prepare for rest, entrust your soul to Allah — He is the best of guardians.' },
];

// ─────────────────────────────────────────────────────────────────────────────
// Seed runner
// ─────────────────────────────────────────────────────────────────────────────

async function seed(collectionName, items) {
  console.log(`\n📂 Seeding ${collectionName} (${items.length} docs)…`);
  const batch = db.batch();
  for (const item of items) {
    const { id, ...data } = item;
    const ref = db.collection(collectionName).doc(id);
    batch.set(ref, data, { merge: true });
  }
  await batch.commit();
  console.log(`   ✅ ${items.length} documents written`);
}

// ─────────────────────────────────────────────────────────────────────────────
// WISDOM QUOTES
// ─────────────────────────────────────────────────────────────────────────────

const wisdom = [
  { id: 'w00', order: 0,  quote: 'The best of people is the one most beneficial to others.',                                                                                                source: 'Imam Ali (AS)' },
  { id: 'w01', order: 1,  quote: 'Silence is the garden of contemplation.',                                                                                                               source: 'Imam Ali (AS)' },
  { id: 'w02', order: 2,  quote: 'Do not be a slave to others when Allah has created you free.',                                                                                           source: 'Imam Ali (AS)' },
  { id: 'w03', order: 3,  quote: 'Whoever knows himself, knows his Lord.',                                                                                                                source: 'Imam Ali (AS)' },
  { id: 'w04', order: 4,  quote: 'If eyes were to weep for something that deserves weeping, they should weep for the death of the heart.',                                                 source: 'Imam Ali (AS)' },
  { id: 'w05', order: 5,  quote: 'Be patient, for patience is to faith as the head is to the body.',                                                                                      source: 'Imam Ali (AS)' },
  { id: 'w06', order: 6,  quote: 'Teach your tongue to say "I do not know," lest you say what you do not know.',                                                                          source: 'Imam Ali (AS)' },
  { id: 'w07', order: 7,  quote: 'The tongue of the wise man lies behind his heart.',                                                                                                     source: 'Imam Ali (AS)' },
  { id: 'w08', order: 8,  quote: 'Generosity is that which comes from oneself without request.',                                                                                          source: 'Imam Husayn (AS)' },
  { id: 'w09', order: 9,  quote: 'If you do not believe in religion and do not fear the Day of Judgment, then at least be free in your world.',                                           source: 'Imam Husayn (AS)' },
  { id: 'w10', order: 10, quote: 'Death is nothing but a bridge which you cross from misery to joy.',                                                                                     source: 'Imam Husayn (AS)' },
  { id: 'w11', order: 11, quote: 'People are slaves to this world; religion is only on their tongues. They circle it as long as it sustains them, but when trials come, the truly religious are few.', source: 'Imam Husayn (AS)' },
  { id: 'w12', order: 12, quote: 'The most generous person is the one who gives to those who have no hope in him.',                                                                        source: 'Imam Husayn (AS)' },
  { id: 'w13', order: 13, quote: 'Supplicate Allah but know that Allah does not respond to a heart that is heedless and inattentive.',                                                     source: 'Imam al-Sadiq (AS)' },
  { id: 'w14', order: 14, quote: 'Be careful to have truthful friends and try to obtain them, for they are your support in ease and your defense in hardship.',                            source: 'Imam al-Sadiq (AS)' },
  { id: 'w15', order: 15, quote: 'The most complete of you in intellect is the best of you in character.',                                                                                source: 'Imam al-Sadiq (AS)' },
  { id: 'w16', order: 16, quote: 'Whoever is content with what Allah has apportioned him is the richest of people.',                                                                      source: 'Imam al-Sadiq (AS)' },
  { id: 'w17', order: 17, quote: 'Sit with the wise, even if that means sitting in silence.',                                                                                             source: 'Imam al-Sadiq (AS)' },
  { id: 'w18', order: 18, quote: 'One who has three qualities will not regret: avoiding haste, consulting others, and trusting Allah.',                                                    source: 'Imam al-Baqir (AS)' },
  { id: 'w19', order: 19, quote: 'No one can truly worship Allah without knowing Him.',                                                                                                   source: 'Imam al-Baqir (AS)' },
  { id: 'w20', order: 20, quote: 'Beware of laziness and boredom, for they are the keys to every evil.',                                                                                  source: 'Imam al-Ridha (AS)' },
  { id: 'w21', order: 21, quote: 'Faith is acknowledgment with the heart, confession with the tongue, and action with the limbs.',                                                        source: 'Imam al-Ridha (AS)' },
  { id: 'w22', order: 22, quote: 'Friendship is not sincere unless it passes through three stages: if you did not achieve it from him in hardship, do not count it in ease.',              source: 'Imam al-Kadhim (AS)' },
  { id: 'w23', order: 23, quote: 'The likeness of this world is like a serpent — soft to the touch but with deadly venom inside.',                                                        source: 'Imam Ali (AS)' },
  { id: 'w24', order: 24, quote: 'How many a lesson there is, yet how few who learn.',                                                                                                   source: 'Imam Ali (AS)' },
  { id: 'w25', order: 25, quote: 'Take from this world what comes to you and turn away from what turns away from you.',                                                                    source: 'Imam Sajjad (AS)' },
  { id: 'w26', order: 26, quote: 'Rights are the most binding of all things, and whoever fulfils them most with people is most trustworthy before Allah.',                                 source: 'Imam Sajjad (AS)' },
  { id: 'w27', order: 27, quote: 'He who does not have wisdom does not have religion, and he who does not have generosity does not have manners.',                                         source: 'Imam Hasan (AS)' },
  { id: 'w28', order: 28, quote: 'Do not make an enemy of someone until you know what is between him and Allah.',                                                                         source: 'Imam Ali al-Hadi (AS)' },
  { id: 'w29', order: 29, quote: 'The world is a market in which some profit and others lose.',                                                                                           source: 'Imam Ali (AS)' },
  { id: 'w30', order: 30, quote: 'O son of Adam, if you collect more than what you need, you are only keeping it for others.',                                                            source: 'Imam Ali (AS)' },
];

// ─────────────────────────────────────────────────────────────────────────────
// HAJJ STEPS
// ─────────────────────────────────────────────────────────────────────────────

const hajjSteps = [
  {
    id: 'hajj_01', order: 1, type: 'hajj', arabic: 'الإحرام',
    location: 'Miqat', dayLabel: 'Day 1 — 8th Dhul Hijjah', readTimeMin: 3,
    duaArabic: 'لَبَّيْكَ اللَّهُمَّ لَبَّيْكَ، لَبَّيْكَ لا شَرِيكَ لَكَ لَبَّيْكَ، إِنَّ الْحَمْدَ وَالنِّعْمَةَ لَكَ وَالْمُلْكَ لا شَرِيكَ لَكَ',
    duaTransliteration: 'Labbayk Allahumma labbayk, labbayk la sharika laka labbayk, innal-hamda wan-ni\'mata laka wal-mulk, la sharika lak',
    translations: { en: {
      title: 'Ihram',
      body: "Before reaching the Miqat (boundary stations), pilgrims enter a sacred state called Ihram by wearing two white seamless garments (for men) or modest dress (for women), making the intention (niyyah), and reciting the Talbiyah: 'Labbayk Allahumma Labbayk.' In this state, certain acts become prohibited, including cutting hair, using perfume, and engaging in marital relations. The white garments symbolise equality before Allah — no distinction of wealth, rank, or origin.",
      duaTranslation: 'Here I am, O Allah, here I am! Here I am — You have no partner — here I am. Truly all praise, all grace, and all dominion are Yours. You have no partner.',
      warningsText: 'Avoid all Ihram prohibitions from the moment of niyyah: cutting hair/nails, using perfume, hunting, intimate relations\nDo not pass the Miqat without entering Ihram — this requires an expiation (dam)\nEnsure your niyyah is made explicitly for the type of Hajj (al-Tamattu\', al-Qiran, or al-Ifrad)',
      shiaNote: "According to Ja'fari fiqh, the niyyah must be made verbally or in the heart specifically for the type of Hajj appropriate to your situation. For most pilgrims travelling from outside Mecca, Hajj al-Tamattu' is obligatory. Consult your marja' before departure regarding the exact conditions of your Ihram.",
    }},
  },
  {
    id: 'hajj_02', order: 2, type: 'hajj', arabic: 'الطواف وصلاة الطواف',
    location: 'Masjid al-Haram, Mecca', dayLabel: 'Meccan rites — timing varies', readTimeMin: 3,
    duaArabic: 'بِسْمِ اللهِ وَاللهُ أَكْبَرُ، اللَّهُمَّ إِيمَاناً بِكَ وَتَصْدِيقاً بِكِتَابِكَ',
    duaTransliteration: 'Bismillah wallahu akbar, Allahumma imanan bika wa tasdiqan bikitabik',
    translations: { en: {
      title: 'Tawaf and Prayer',
      body: 'During the Meccan rites of Hajj, pilgrims perform the obligatory tawaf and its two-rak\'ah prayer in ritual purity. In Ja\'fari fiqh, the major tawafs of Hajj are Tawaf al-Hajj and Tawaf al-Nisa; follow your marja\' and group guide for their timing.',
      duaTranslation: 'In the name of Allah, and Allah is the Greatest. O Allah, with faith in You and affirming the truth of Your Book.',
      warningsText: 'Begin Tawaf at the Black Stone — align yourself with it or the green line marker on the floor\nWalk counter-clockwise with the Ka\'ba on your left at all times\nTwo rak\'at prayer follows every obligatory tawaf in ritual purity',
      shiaNote: "In Ja'fari fiqh, the obligatory Meccan tawafs of Hajj are Tawaf al-Hajj and Tawaf al-Nisa. Their exact timing can vary within the Hajj schedule, so follow your marja' and the guidance of your trusted caravan leaders.",
    }},
  },
  {
    id: 'hajj_03', order: 3, type: 'hajj', arabic: 'السعي',
    location: "Safa & Marwa, Mecca", dayLabel: 'Day 1 — 8th Dhul Hijjah', readTimeMin: 3,
    duaArabic: 'إِنَّ الصَّفَا وَالْمَرْوَةَ مِن شَعَائِرِ اللَّهِ',
    duaTransliteration: "Innas-Safa wal-Marwata min sha'a'irillah",
    translations: { en: {
      title: "Sa'i",
      body: "Sa'i commemorates the desperate search of Lady Hajar for water for her infant son Ismail (AS) between the hills of Safa and Marwa. Pilgrims walk briskly seven times between these two hills. It is a powerful reminder of a mother's devotion, trust in Allah, and how divine mercy responds to sincere need — the Zamzam well emerged as a result of her effort.",
      duaTranslation: 'Indeed, Safa and Marwa are among the symbols (sha\'a\'ir) of Allah.',
      warningsText: "Sa'i consists of 7 passages: Safa → Marwa = 1, Marwa → Safa = 2. Always end at Marwa\nBegin Sa'i from Safa, not from Marwa — the direction matters\nMen should walk briskly (harwala) between the two green-marked pillars",
      shiaNote: "According to Shia fiqh, Sa'i is a wajib act and must be performed immediately after a valid Tawaf. It is to be done in a state where Tawaf has just been completed — do not break the sequence without necessity. Lady Hajar (SA) is a profound model: her complete reliance on Allah is what every pilgrim should meditate on at each passage.",
    }},
  },
  {
    id: 'hajj_04', order: 4, type: 'hajj', arabic: 'الوقوف بعرفة',
    location: 'Plain of Arafat', dayLabel: 'Day 2 — 9th Dhul Hijjah', readTimeMin: 4,
    duaArabic: 'اللَّهُمَّ أَنْتَ رَبِّي لا إِلَهَ إِلَّا أَنْتَ، خَلَقْتَنِي وَأَنَا عَبْدُكَ',
    duaTransliteration: 'Allahumma anta rabbi la ilaha illa ant, khalaqtani wa ana abduk',
    translations: { en: {
      title: 'Wuquf at Arafat',
      body: "The standing at the plain of Arafat on the 9th of Dhul Hijjah is the spiritual heart of Hajj — so central that the Prophet (SAW) said 'Hajj is Arafat.' From midday until sunset, pilgrims engage in supplication, remembrance of Allah, and reflection on the Day of Judgement. It is said that on this day, more people are forgiven by Allah than on any other day of the year.",
      duaTranslation: 'O Allah, You are my Lord. There is no god but You. You created me and I am Your servant.',
      warningsText: 'Standing at Arafat is the ESSENTIAL pillar of Hajj — missing it entirely invalidates the entire Hajj\nWuquf must occur within the correct time: after Dhuhr on the 9th until Fajr of the 10th Dhul Hijjah\nThe valley of Wadi Urana is NOT part of Arafat — do not stand in it and count it as Wuquf',
      shiaNote: "The Day of Arafat is the pinnacle of Hajj. Shia tradition holds that reciting Du'a Arafah of Imam Husayn (AS) during the afternoon at Arafat is among the most meritorious acts a pilgrim can perform. Maghrib and Isha prayers must be combined and delayed until Muzdalifah — do not pray Maghrib at Arafat itself.",
    }},
  },
  {
    id: 'hajj_05', order: 5, type: 'hajj', arabic: 'المزدلفة',
    location: 'Muzdalifah', dayLabel: 'Night of 10th Dhul Hijjah', readTimeMin: 2,
    translations: { en: {
      title: 'Muzdalifah',
      body: 'After sunset at Arafat, pilgrims move to Muzdalifah, where the Maghrib and Isha prayers are combined. They spend the night under the open sky and collect small pebbles for the upcoming stoning ritual. This night of simplicity — sleeping on the earth — deepens the experience of equality and humility before Allah.',
      warningsText: 'Collect 49 to 70 small pebbles (chickpea-sized) for Rami al-Jamarat\nPray combined Maghrib and Isha here — this is obligatory and part of the rites\nStaying at Muzdalifah until Fajr is wajib; exceptions exist for the elderly, ill, and women with small children',
      shiaNote: "In the Ja'fari school, remaining at Muzdalifah until sunrise is wajib. The combined prayer of Maghrib and Isha at Muzdalifah (not at Arafat) is part of the Hajj rites. Legal dispensations (rukhsah) exist for those with genuine hardship — those individuals may leave after midnight with proper intention.",
    }},
  },
  {
    id: 'hajj_06', order: 6, type: 'hajj', arabic: 'رمي الجمرات',
    location: 'Mina', dayLabel: 'Day 3 — 10th Dhul Hijjah (Eid al-Adha)', readTimeMin: 3,
    duaArabic: 'بِسْمِ اللهِ وَاللهُ أَكْبَرُ، رَغْماً لِلشَّيْطَانِ وَحِزْبِهِ',
    duaTransliteration: "Bismillah wallahu akbar, raghman lil-shaytani wa hizbih",
    translations: { en: {
      title: 'Rami al-Jamarat (Stoning)',
      body: "On the 10th of Dhul Hijjah (Eid al-Adha), pilgrims throw seven pebbles at the largest of three stone pillars in Mina, symbolising the rejection of Shaytan as done by Ibrahim (AS). Over the following days (11th–13th), all three pillars are stoned. This act is a declaration of the pilgrim's resolve to reject evil in all its forms.",
      duaTranslation: 'In the name of Allah, and Allah is Greatest — a humiliation for Shaytan and his party.',
      warningsText: "Stone only the Jamarat al-Aqabah (the largest pillar) on the 10th — all three pillars are stoned on the 11th and 12th\nPebbles must be small (chickpea-sized) — not clods of dirt, large stones, or any other objects\nThe Talbiyah recitation ends with the first throw of Rami on the 10th Dhul Hijjah",
      shiaNote: "In the Ja'fari school, saying 'Allahu Akbar' with each throw and reciting the above dua is strongly recommended. The stoning must be done in person — delegating it to another is only permitted in cases of genuine incapacity. Stoning during daylight hours is preferred; there are time windows that differ by day — verify with your group's guide.",
    }},
  },
  {
    id: 'hajj_07', order: 7, type: 'hajj', arabic: 'القربان',
    location: 'Mina', dayLabel: 'Day 3 — 10th Dhul Hijjah', readTimeMin: 2,
    translations: { en: {
      title: 'Qurbani (Sacrifice)',
      body: "After stoning, pilgrims perform Qurbani — the sacrifice of a sheep, goat, cow, or camel — in remembrance of Ibrahim's (AS) willingness to sacrifice his son Ismail (AS), and Allah's mercy in substituting a ram. The meat is distributed to the poor. This act teaches that true devotion means surrendering what is most precious at the command of Allah.",
      warningsText: 'Qurbani must be performed after Rami al-Jamarat and before Halq/Taqsir — the order is important\nAuthorized slaughterhouses handle sacrifice on behalf of pilgrims; confirm your arrangement with an official agent\nThe animal must meet minimum age requirements: at least 1 year for sheep/goat, 2 years for cow, 5 years for camel',
      shiaNote: "According to Shia fiqh, Qurbani in Mina on Eid al-Adha is obligatory (wajib) as part of Hajj al-Tamattu'. One sheep per pilgrim is sufficient. If personally unable to slaughter, arrangements through officially approved agents in Mina are valid and widely used by Shia pilgrims from all countries.",
    }},
  },
  {
    id: 'hajj_08', order: 8, type: 'hajj', arabic: 'الحلق أو التقصير',
    location: 'Mina', dayLabel: 'Day 3 — 10th Dhul Hijjah', readTimeMin: 2,
    translations: { en: {
      title: 'Halq or Taqsir (Hair Cutting)',
      body: "Men shave their heads (Halq) or cut a portion of hair (Taqsir), while women cut a small portion of hair. This act marks the partial exit from the state of Ihram, symbolising renewal, rebirth, and the shedding of one's past sins. After this, most Ihram restrictions are lifted.",
      warningsText: 'This step must be performed in Mina — it is not valid to do Halq/Taqsir in Mecca for this specific rite\nWomen must do Taqsir only — shaving the head is not permitted for women in Hajj\nAfter Halq or Taqsir, most Ihram restrictions lift; however, intimate relations remain prohibited until after Tawaf al-Ifadah',
      shiaNote: "In the Ja'fari school, Halq (full shaving) is obligatory for a first-time male pilgrim unless excused. Taqsir (trimming) is only sufficient if this is not the pilgrim's first Hajj, or in cases of genuine excuse. This ruling comes from explicit hadiths narrated from Imam al-Sadiq (AS). After Halq/Taqsir, the exit from Ihram is partial — full exit comes only after Tawaf al-Ifadah.",
    }},
  },
  {
    id: 'hajj_09', order: 9, type: 'hajj', arabic: 'طواف الإفاضة',
    location: 'Masjid al-Haram, Mecca', dayLabel: 'Days 3–4 (10th–12th)', readTimeMin: 4,
    duaArabic: 'اللَّهُمَّ قَبِّلْ مِنِّي وَلا تَجْعَلْهُ آخِرَ الْعَهْدِ',
    duaTransliteration: "Allahumma qabbil minni wa la taj'alhu akhiral-'ahd",
    translations: { en: {
      title: 'Tawaf al-Ifadah',
      body: "Pilgrims return to the Kaaba in Mecca to perform Tawaf al-Ifadah — the essential Tawaf that forms the core rite of Hajj. This is followed by Sa'i again between Safa and Marwa. After completing these rites, pilgrims are fully released from the state of Ihram.",
      duaTranslation: 'O Allah, accept it from me, and do not make this the last of my visits.',
      warningsText: "Tawaf al-Ifadah is one of the three essential pillars of Hajj — it cannot be omitted or substituted\nWudu is obligatory for Tawaf — ensure you are in a state of ritual purity\nWomen in menses must wait until they are pure before performing this Tawaf; it cannot be skipped",
      shiaNote: "Tawaf al-Ifadah (also called Tawaf al-Ziyarah) is wajib. In Shia practice, after this Tawaf, two rak'at prayer at Maqam Ibrahim is also wajib. After Tawaf and Sa'i, the complete release from Ihram occurs. The window for performing this Tawaf extends until the 12th of Dhul Hijjah; after that, expiation is required.",
    }},
  },
  {
    id: 'hajj_10', order: 10, type: 'hajj', arabic: 'المبيت بمنى',
    location: 'Mina', dayLabel: 'Days 4–5 (11th–13th)', readTimeMin: 2,
    translations: { en: {
      title: 'Nights in Mina (Ayyam al-Tashreeq)',
      body: 'Pilgrims spend two or three nights in Mina (11th–13th Dhul Hijjah), stoning the three pillars each day. These days, known as Ayyam al-Tashreeq, are days of celebration, remembrance of Allah, and communal gathering of the global Muslim community — a living expression of the unity of the Ummah.',
      warningsText: "Staying the nights of 11th and 12th Dhul Hijjah in Mina is wajib — leaving without completing stoning incurs a penalty\nAll three Jamarat must be stoned each day of Tashreeq, in order: Jamarat al-Sughra, al-Wusta, al-Aqabah\nThose taking Nifr Awwal (early departure) must complete all stoning before sunset on the 12th",
      shiaNote: "Shia pilgrims must spend the nights of the 11th and 12th in Mina. The permissibility of Nifr Awwal (leaving on Day 12) requires that all stoning be completed before sunset of that day. Those who remain until the 13th must also stone on that day before departure. Spending these nights in dhikr and community is spiritually highly recommended.",
    }},
  },
  {
    id: 'hajj_11', order: 11, type: 'hajj', arabic: 'طواف النساء',
    location: 'Masjid al-Haram, Mecca', dayLabel: 'Meccan rites — timing varies', readTimeMin: 3,
    duaArabic: 'اللَّهُمَّ هَذَا بَيْتُكَ عَظَّمْتَهُ وَشَرَّفْتَهُ وَكَرَّمْتَهُ',
    duaTransliteration: "Allahumma hadha baytuka 'azzamtahu wa sharraftahu wa karamtahu",
    translations: { en: {
      title: 'Tawaf al-Nisa',
      body: 'In Ja\'fari fiqh, Tawaf al-Nisa and its two-rak\'ah prayer are required before marital intimacy becomes lawful again after Hajj. Its timing within the Meccan rites can vary according to a pilgrim\'s marja\' and travel arrangements.',
      duaTranslation: 'O Allah, this is Your House — You have made it great, noble, and honourable.',
      warningsText: 'Tawaf al-Nisa is a required rite in Ja\'fari fiqh and should not be confused with the Sunni Farewell Tawaf\nIts two-rak\'ah prayer follows the tawaf, as with other obligatory tawafs\nWomen in menses must follow the ruling of their marja\' if this rite is delayed by purity concerns or travel hardship',
      shiaNote: "This is one of the clearest differences between Ja'fari and Sunni pilgrimage guides. A Shia pilgrim should not replace Tawaf al-Nisa with Tawaf al-Wada; consult your marja' on timing, especially when group logistics are tight.",
    }},
  },
];

// ─────────────────────────────────────────────────────────────────────────────
// UMRAH STEPS
// ─────────────────────────────────────────────────────────────────────────────

const umrahSteps = [
  {
    id: 'umrah_01', order: 1, type: 'umrah', arabic: 'الإحرام',
    location: 'Miqat', readTimeMin: 3,
    duaArabic: 'لَبَّيْكَ اللَّهُمَّ لَبَّيْكَ، لَبَّيْكَ لا شَرِيكَ لَكَ لَبَّيْكَ',
    duaTransliteration: 'Labbayk Allahumma labbayk, labbayk la sharika laka labbayk',
    translations: { en: {
      title: 'Ihram',
      body: 'As with Hajj, Umrah begins at the Miqat where pilgrims enter the sacred state of Ihram. Men wear the two white garments and women wear modest dress. The intention (niyyah) is made specifically for Umrah, followed by the recitation of the Talbiyah. All Ihram prohibitions apply from this point until Taqsir is performed.',
      duaTranslation: 'Here I am, O Allah, here I am. Here I am — You have no partner — here I am.',
      warningsText: "Ensure Ihram is entered before or at the Miqat — passing it without Ihram requires expiation\nAll Ihram prohibitions begin immediately after the niyyah is made\nKnow your specific Miqat point in advance — it varies by the direction from which you are travelling",
      shiaNote: "For Umrah al-Mufradah (standalone Umrah), the niyyah is made specifically for Umrah — not Hajj. For Umrah al-Tamattu' (as part of Hajj), the Ihram is for Umrah first, then ends after Taqsir before re-entering Ihram for Hajj. The nearest point of Ihram for those already in Mecca is the Adna al-Hill boundary; consult your marja' for repeated Umrahs.",
    }},
  },
  {
    id: 'umrah_02', order: 2, type: 'umrah', arabic: 'الطواف',
    location: 'Masjid al-Haram, Mecca', readTimeMin: 3,
    duaArabic: 'بِسْمِ اللهِ وَاللهُ أَكْبَرُ، اللَّهُمَّ إِيمَاناً بِكَ',
    duaTransliteration: 'Bismillah wallahu akbar, Allahumma imanan bik',
    translations: { en: {
      title: 'Tawaf',
      body: 'Pilgrims circumambulate the Kaaba seven times in a counter-clockwise direction, beginning at the Black Stone. Two units of prayer are offered after completion at Maqam Ibrahim. Tawaf is among the essential rites of Umrah in Ja\'fari fiqh, and each circuit is a declaration of tawhid.',
      duaTranslation: 'In the name of Allah, and Allah is the Greatest. O Allah, with faith in You.',
      warningsText: "Start at the Black Stone or its alignment — a green overhead light marks the starting line\nMaintain counter-clockwise direction with the Ka'ba always on your left\nTwo rak'at prayer at Maqam Ibrahim after Tawaf is wajib",
      shiaNote: "Tawaf for Umrah is wajib and follows the same rules as Tawaf in Hajj. Wudu is obligatory. Women in menses cannot perform Tawaf and must wait until they are pure. If the area around Maqam Ibrahim is extremely crowded, the prayer may be performed anywhere in the Masjid al-Haram facing the Maqam direction.",
    }},
  },
  {
    id: 'umrah_03', order: 3, type: 'umrah', arabic: 'السعي',
    location: "Safa & Marwa, Mecca", readTimeMin: 3,
    duaArabic: 'إِنَّ الصَّفَا وَالْمَرْوَةَ مِن شَعَائِرِ اللَّهِ',
    duaTransliteration: "Innas-Safa wal-Marwata min sha'a'irillah",
    translations: { en: {
      title: "Sa'i",
      body: "Pilgrims walk seven times between the hills of Safa and Marwa, commemorating Lady Hajar's search for water. Beginning at Safa and ending at Marwa, this rite honours her faith and perseverance. The Zamzam well, which miraculously appeared in response to her efforts, is nearby and pilgrims traditionally drink from it throughout their stay.",
      duaTranslation: "Indeed, Safa and Marwa are among the symbols of Allah.",
      warningsText: "Start at Safa and end at Marwa — 7 passages total (Safa → Marwa is 1, Marwa → Safa is 2)\nSa'i must be performed after Tawaf, in a state of Ihram, before Taqsir is performed\nWudu is recommended though not strictly required (differs by marja') — aim to maintain purity",
      shiaNote: "Sa'i is wajib in Umrah according to Ja'fari fiqh — it is not merely sunnah. It must follow the Tawaf in sequence. Reflecting on Lady Hajar (SA)'s complete reliance on Allah at each passage is strongly recommended by our Imams. Her perseverance in running between the hills while carrying her infant is the model of tawakkul in action.",
    }},
  },
  {
    id: 'umrah_04', order: 4, type: 'umrah', arabic: 'الحلق أو التقصير',
    location: "Mecca (after Sa'i)", readTimeMin: 2,
    translations: { en: {
      title: 'Halq or Taqsir',
      body: 'After Sa\'i, the pilgrim trims or shaves the hair according to the type of Umrah being performed. This ends Ihram for Umrah al-Tamattu\'. In Umrah al-Mufradah, consult your marja\' because Tawaf al-Nisa and its prayer still remain before the rites are fully completed.',
      warningsText: "For Umrah al-Tamattu' (performed as part of Hajj), choose Taqsir over Halq — preserve the full shaving for Mina after Hajj rituals\nWomen must do Taqsir only — cutting a finger-length portion from the hair is sufficient\nFor Umrah al-Mufradah, ask your marja' about the remaining Tawaf al-Nisa before treating the rites as fully complete",
      shiaNote: "In the Ja'fari school, Taqsir (trimming) is specifically preferred for Umrah al-Tamattu' — not Halq. For Umrah al-Mufradah, Tawaf al-Nisa and its prayer remain after this step before marital intimacy becomes lawful.",
    }},
  },
];

// ─────────────────────────────────────────────────────────────────────────────
// AI PROMPT SLOTS
// ─────────────────────────────────────────────────────────────────────────────

const promptSlots = [
  { id: 'ps_01', order: 1,  categoryId: 'daily_guidance',         text: 'Write a short, practical daily guidance rooted in Shia Islamic faith — grounded in the Quran and the teachings of the Prophet Muhammad and the Ahl al-Bayt. Choose a fresh angle each time: a virtue from Islamic ethics, wisdom from one of the twelve Imams, a teaching from Nahj al-Balagha, or a quiet practice from the Shia tradition. Include one Quran verse (Surah:Ayah) and a 1-2 sentence reflection to carry through the day. Optionally connect it to the Islamic calendar or an important date if relevant.' },
  { id: 'ps_02', order: 2,  categoryId: 'faith_trust',            text: "Write a short Islamic reflection on Iman (faith) and trust in Allah's plan (Tawakkul). Root it in the Quran, the example of Prophet Muhammad ﷺ, and the steadfast faith modelled by the Ahl al-Bayt and the example of the Imams. Vary the theme each time: trusting Allah during uncertainty, relying on divine wisdom, patience in trials, or quiet perseverance in everyday life as demonstrated by Imam Ali (AS) and the Imams of the Ahl al-Bayt. Include one Quran verse and one honest step for today drawn from Shia Islamic spiritual wisdom." },
  { id: 'ps_03', order: 3,  categoryId: 'prayer_reflection',      text: "Write a short Islamic prayer reflection rooted in Salah, Dua, or Dhikr within the Shia tradition. Vary the form each time: a supplication from Mafatih al-Jinan or the duas of the Imams, reflection on the five daily prayers as observed in three prayer times (combining Dhuhr with Asr, and Maghrib with Isha), the spiritual virtues of Salat al-Layl (the recommended night prayer beloved by the Ahl al-Bayt), the significance of praying on a turbah (prayer stone from sacred earth), the importance of Qunut in prayer, or a heartfelt dua from the tradition of Imam Zayn al-Abidin's Sahifa al-Sajjadiyya. Include one Quran verse and briefly name the prayer form or supplication source used." },
  { id: 'ps_04', order: 4,  categoryId: 'hope_difficult_times',   text: 'Write an Islamic reflection on patience (Sabr) and hope during hardship. Draw from Quranic teachings about trials, the perseverance of the Prophets, and the mercy of Allah in difficult moments. Vary the angle each time. Include one Quran verse and one encouraging perspective from Islamic tradition.' },
  { id: 'ps_05', order: 5,  categoryId: 'forgiveness',            text: "Write a wise Islamic reflection about seeking forgiveness (Tawbah) and Allah's mercy. Draw from Quranic teachings on repentance, Allah's compassion, and the forgiving example of Prophet Muhammad ﷺ. Vary the theme: turning back to Allah, forgiving others, healing relationships, or believing in Allah's mercy after mistakes. Include one Quran verse and one concrete step." },
  { id: 'ps_06', order: 6,  categoryId: 'love_compassion',        text: 'Write a short Islamic reflection on mercy (Rahmah) and compassion in everyday life. Draw from the example of Prophet Muhammad ﷺ, the concept of Ihsan (excellence), and Islamic teachings on kindness to family, neighbors, and the vulnerable. Include one Quran verse and one small act of compassion to practice today.' },
  { id: 'ps_07', order: 7,  categoryId: 'strength_courage',       text: "Write an Islamic reflection on faith-based strength and courage. Draw from the supreme example of Imam Hussain ibn Ali (AS) at Karbala — the eternal model of standing firm against injustice, sacrificing everything for truth, and never surrendering to oppression — and from the broader example of the Ahl al-Bayt who remained steadfast through immense trials. Vary the theme each time: courage through faith, strength in prayer, trust in Allah during fear, or resilience in the face of injustice. Include one Quran verse and a short supplication or phrase of remembrance from the Shia tradition." },
  { id: 'ps_08', order: 8,  categoryId: 'gratitude',              text: "Write an Islamic reflection on gratitude (Shukr) toward Allah. Root it in Quranic teaching and prophetic tradition. Vary the angle: gratitude in hardship, appreciating small blessings, beginning the day with praise of Allah, or recognizing Allah's guidance in daily life. Include one Quran verse and one gratitude practice." },
  { id: 'ps_09', order: 9,  categoryId: 'purpose_calling',        text: "Write an Islamic reflection on life's purpose in worshipping Allah and living righteously. Draw from Quranic teachings about purpose, serving others, and using one's gifts for good. Vary the theme each time: serving family and community, seeking guidance through Istikhara, living with intention, or finding meaning in ordinary work. Include one Quran verse and two reflective questions." },
  { id: 'ps_10', order: 10, categoryId: 'family_relationships',   text: 'Write wise Islamic guidance on family and relationships rooted in Quranic teaching and the example of Prophet Muhammad ﷺ. Vary the theme each time: kindness in family life, patience in conflict, honoring parents, raising children in faith, or strengthening marriage. Include one Quran verse and one relational practice to try.' },
  { id: 'ps_11', order: 11, categoryId: 'peace_anxiety_relief',   text: "Write a calming Islamic reflection about finding inner peace through remembrance of Allah (Dhikr) and trust in His plan. Draw from Quranic teachings about tranquility of the heart, prayer, and surrender to Allah's will. Vary the approach each time and include one Quran verse and one simple grounding practice from Islamic tradition." },
  { id: 'ps_12', order: 12, categoryId: 'wisdom_of_jesus',        text: "Write a short piece of wisdom from the Prophet Muhammad ﷺ and the Imams of the Ahl al-Bayt as taught in Shia Islam. Draw from the Quran, Hadith, the sayings of Imam Ali (AS) in Nahj al-Balagha, and the teachings of Imam Ja'far al-Sadiq (AS) — the great scholar of the Ahl al-Bayt whose knowledge illuminated the ummah. Vary the topic each time: character, patience, humility, faith, justice, or daily conduct. Include a Quranic verse, a hadith, or a saying from one of the twelve Imams, and one practical application." },
  { id: 'ps_13', order: 13, categoryId: 'humility_character',     text: "Write an Islamic reflection on humility (Tawadhu) and good character (Akhlaq). Draw from Quranic teachings, the example of Prophet Muhammad ﷺ, and the tradition of Islamic character development. Vary the theme: humility in leadership, admitting mistakes, treating others with respect, or growing spiritually through self-reflection. Include one Quran verse and one habit to practice." },
  { id: 'ps_14', order: 14, categoryId: 'overcoming_temptation',  text: 'Write an Islamic reflection on resisting temptation and staying on the straight path. Draw from Quranic guidance, remembrance of Allah (Dhikr), prayer (Salah), and examples of believers who overcame struggles. Vary the angle each time. Include one Quran verse and one practical strategy for the next 24 hours.' },
  { id: 'ps_15', order: 15, categoryId: 'evening_reflection',     text: "Write a peaceful Islamic evening reflection rooted in the Shia tradition of evening supplication. Draw from the treasures of Mafatih al-Jinan, the Munajat al-Shabaniyya (the intimate whispered prayer of the month of Sha'ban beloved by the Imams), and the evening duas transmitted from the Imams of the Ahl al-Bayt. Encourage gratitude, Muhasabah (self-accounting) as recommended by the Imams, and trust in Allah before rest. Include 3–5 short reflection prompts about the day, a brief closing supplication drawn from the tradition of the Ahl al-Bayt, and one Quran verse." },
];

async function main() {
  console.log('🌿 Ayara — Firebase content seeder');
  console.log('   Project: ayara-mobile-app\n');
  try {
    await seed('content_hadiths', hadiths);
    await seed('content_imams', imams);
    await seed('content_duas', duas);
    await seed('content_scriptures', scriptures);
    await seed('content_role_models', roleModels);
    await seed('content_reflections', reflections);
    await seed('content_wisdom', wisdom);
    await seed('content_hajj_steps', hajjSteps);
    await seed('content_umrah_steps', umrahSteps);
    await seed('content_prompts', promptSlots);
    console.log('\n✨ All done! Collections seeded successfully.\n');
    console.log('   Collections created:');
    console.log('   • content_hadiths       — 35 hadiths');
    console.log('   • content_imams         — Fourteen Infallibles profiles');
    console.log('   • content_duas          —  9 duas with sections');
    console.log('   • content_scriptures    — 28 Quran ayahs (daily rotation)');
    console.log('   • content_role_models   — 60 role models (weekly rotation)');
    console.log('   • content_reflections   — 28 evening prompts (daily rotation)');
    console.log('   • content_wisdom        — 31 wisdom quotes (daily rotation)');
    console.log('   • content_hajj_steps    — 11 Hajj pilgrimage steps');
    console.log('   • content_umrah_steps   —  4 Umrah pilgrimage steps');
    console.log('   • content_prompts       — 15 AI prompt slots (per category)');
    console.log('\n   Add translations by editing a document\'s translations.{locale} field.');
  } catch (err) {
    console.error('\n❌ Seed failed:', err.message);
    process.exit(1);
  }
}

main();
