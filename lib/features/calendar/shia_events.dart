// lib/features/calendar/shia_events.dart
//
// Complete Shia Islamic event calendar — all Fourteen Infallibles birth/martyrdom dates
// plus major occasions, ordered by Hijri month.

import 'shia_event_model.dart';

const List<ShiaEvent> kShiaEvents = [

  // ─── Muharram (Month 1) ───────────────────────────────────────────────────

  ShiaEvent(
    id: 'new_year',
    nameEn: 'Islamic New Year',
    nameAr: 'رأس السنة الهجرية',
    type: ShiaEventType.occasion,
    hijriMonth: 1, hijriDay: 1,
    description: 'The beginning of the new Islamic Hijri year. A day of reflection on the sacrifice of Imam Husayn (AS) at Karbala.',
    isHighImportance: true,
  ),

  ShiaEvent(
    id: 'tasua',
    nameEn: "Tasu'a",
    nameAr: 'يوم تاسوعاء',
    type: ShiaEventType.occasion,
    hijriMonth: 1, hijriDay: 9,
    description: 'The day before Ashura. A day of deep grief and remembrance for Imam Husayn (AS), his family, and loyal companions.',
    isHighImportance: true,
  ),

  ShiaEvent(
    id: 'ashura',
    nameEn: 'Ashura — Martyrdom of Imam Husayn (AS)',
    nameAr: 'عاشوراء — شهادة الإمام الحسين',
    personEn: 'Imam Husayn ibn Ali (AS)',
    type: ShiaEventType.martyrdom,
    hijriMonth: 1, hijriDay: 10,
    description:
        'The martyrdom of Imam Husayn (AS), grandson of the Holy Prophet, at Karbala in 61 AH. '
        'The most sacred day of mourning in Shia Islam — a timeless stand for justice over oppression.',
    isHighImportance: true,
  ),

  ShiaEvent(
    id: 'martyrdom_sajjad',
    nameEn: 'Martyrdom of Imam al-Sajjad (AS)',
    nameAr: 'شهادة الإمام زين العابدين',
    personEn: 'Imam Ali ibn Husayn al-Sajjad (AS)',
    type: ShiaEventType.martyrdom,
    hijriMonth: 1, hijriDay: 25,
    description:
        'The martyrdom of the fourth Imam, Ali ibn Husayn Zayn al-Abidin (AS), '
        'poisoned by Hisham ibn Abd al-Malik in Medina, 95 AH. Known for his profound supplications (Sahifa Sajjadiyya).',
    isHighImportance: true,
  ),

  // ─── Safar (Month 2) ─────────────────────────────────────────────────────

  ShiaEvent(
    id: 'birth_kadhim',
    nameEn: 'Birth of Imam al-Kadhim (AS)',
    nameAr: 'ولادة الإمام موسى الكاظم',
    personEn: 'Imam Musa al-Kadhim (AS)',
    type: ShiaEventType.birth,
    hijriMonth: 2, hijriDay: 7,
    description: 'The birth of the seventh Imam, Musa ibn Ja\'far al-Kadhim (AS), in al-Abwa\' between Mecca and Medina, 128 AH.',
  ),

  ShiaEvent(
    id: 'arbaeen',
    nameEn: 'Arbaeen',
    nameAr: 'الأربعين',
    type: ShiaEventType.occasion,
    hijriMonth: 2, hijriDay: 20,
    description:
        'The 40th day after Ashura. Millions of believers converge on Karbala in the largest peaceful human gathering on Earth, '
        'walking in honour of Imam Husayn (AS).',
    isHighImportance: true,
  ),

  ShiaEvent(
    id: 'martyrdom_prophet',
    nameEn: 'Passing of the Holy Prophet (SAW)',
    nameAr: 'وفاة النبي محمد ﷺ',
    personEn: 'Prophet Muhammad (SAW)',
    type: ShiaEventType.martyrdom,
    hijriMonth: 2, hijriDay: 28,
    description:
        'The passing of the Holy Prophet Muhammad (SAW) on the 28th of Safar, 11 AH. '
        'A day of immense grief for the entire Ummah.',
    isHighImportance: true,
  ),

  ShiaEvent(
    id: 'martyrdom_hasan',
    nameEn: 'Martyrdom of Imam Hasan (AS)',
    nameAr: 'شهادة الإمام الحسن المجتبى',
    personEn: 'Imam Hasan al-Mujtaba (AS)',
    type: ShiaEventType.martyrdom,
    hijriMonth: 2, hijriDay: 28,
    description:
        'The martyrdom of the second Imam, Hasan ibn Ali (AS), '
        'poisoned by Muawiyah ibn Abi Sufyan in Medina, 50 AH. Son of Imam Ali and Lady Fatima.',
    isHighImportance: true,
  ),

  ShiaEvent(
    id: 'martyrdom_ridha',
    nameEn: 'Martyrdom of Imam al-Ridha (AS)',
    nameAr: 'شهادة الإمام علي الرضا',
    personEn: 'Imam Ali al-Ridha (AS)',
    type: ShiaEventType.martyrdom,
    hijriMonth: 2, hijriDay: 29,
    description:
        'The martyrdom of the eighth Imam, Ali ibn Musa al-Ridha (AS), '
        'poisoned by the Abbasid Caliph al-Ma\'mun in Mashhad (Tus), 203 AH. His shrine in Mashhad is visited by millions.',
    isHighImportance: true,
  ),

  // ─── Rabi al-Awwal (Month 3) ─────────────────────────────────────────────

  ShiaEvent(
    id: 'martyrdom_askari',
    nameEn: 'Martyrdom of Imam al-Askari (AS)',
    nameAr: 'شهادة الإمام الحسن العسكري',
    personEn: 'Imam Hasan al-Askari (AS)',
    type: ShiaEventType.martyrdom,
    hijriMonth: 3, hijriDay: 8,
    description:
        'The martyrdom of the eleventh Imam, Hasan ibn Ali al-Askari (AS), '
        'poisoned in Samarra under house arrest by the Abbasid Caliph al-Mu\'tamid, 260 AH.',
    isHighImportance: true,
  ),

  ShiaEvent(
    id: 'birth_prophet_sadiq',
    nameEn: 'Birth of Prophet Muhammad (SAW) & Imam al-Sadiq (AS)',
    nameAr: 'ولادة النبي محمد ﷺ والإمام جعفر الصادق',
    personEn: 'Prophet Muhammad (SAW) & Imam Ja\'far al-Sadiq (AS)',
    type: ShiaEventType.birth,
    hijriMonth: 3, hijriDay: 17,
    description:
        'The birth of the Holy Prophet Muhammad (SAW) — and by blessed coincidence, '
        'the sixth Imam Ja\'far al-Sadiq (AS) on the same date. A day of great celebration in the Shia world.',
    isHighImportance: true,
  ),

  // ─── Rabi al-Thani (Month 4) ─────────────────────────────────────────────

  ShiaEvent(
    id: 'birth_askari',
    nameEn: 'Birth of Imam al-Askari (AS)',
    nameAr: 'ولادة الإمام الحسن العسكري',
    personEn: 'Imam Hasan al-Askari (AS)',
    type: ShiaEventType.birth,
    hijriMonth: 4, hijriDay: 8,
    description: 'The birth of the eleventh Imam, Hasan ibn Ali al-Askari (AS), in Medina, 232 AH. Father of Imam al-Mahdi (AJ).',
  ),

  // ─── Jumada al-Awwal (Month 5) ───────────────────────────────────────────

  ShiaEvent(
    id: 'birth_zaynab',
    nameEn: "Birth of Lady Zaynab (SA)",
    nameAr: 'ولادة السيدة زينب الكبرى',
    personEn: 'Lady Zaynab bint Ali (SA)',
    type: ShiaEventType.birth,
    hijriMonth: 5, hijriDay: 5,
    description:
        'The birth of Lady Zaynab al-Kubra (SA), daughter of Imam Ali (AS) and Lady Fatima (SA). '
        'Her courage at Karbala and Kufa preserved the message of Ashura for all of humanity.',
    isHighImportance: true,
  ),

  // ─── Jumada al-Thani (Month 6) ───────────────────────────────────────────

  ShiaEvent(
    id: 'martyrdom_fatima',
    nameEn: 'Fatimiyyah — Lady Fatima al-Zahra (SA)',
    nameAr: 'الفاطمية',
    personEn: 'Lady Fatima al-Zahra (SA)',
    type: ShiaEventType.occasion,
    hijriMonth: 6, hijriDay: 3,
    description:
        'Many Twelver Shia communities mark Fatimiyyah in more than one period because reports differ '
        'between 75 and 95 days after the Prophet\'s passing. This date reflects the later commemoration '
        'widely observed in Jumada al-Thani.',
    isHighImportance: true,
  ),

  ShiaEvent(
    id: 'birth_fatima',
    nameEn: 'Birth of Lady Fatima Zahra (SA)',
    nameAr: 'ولادة السيدة فاطمة الزهراء',
    personEn: 'Lady Fatima al-Zahra (SA)',
    type: ShiaEventType.birth,
    hijriMonth: 6, hijriDay: 20,
    description:
        'The birth of Sayyida Fatima al-Zahra (SA), the Lady of Light, '
        'daughter of the Holy Prophet Muhammad (SAW) and Khadijah al-Kubra (SA), in Mecca.',
    isHighImportance: true,
  ),

  // ─── Rajab (Month 7) ─────────────────────────────────────────────────────

  ShiaEvent(
    id: 'birth_baqir',
    nameEn: 'Birth of Imam al-Baqir (AS)',
    nameAr: 'ولادة الإمام محمد الباقر',
    personEn: 'Imam Muhammad al-Baqir (AS)',
    type: ShiaEventType.birth,
    hijriMonth: 7, hijriDay: 1,
    description: 'The birth of the fifth Imam, Muhammad ibn Ali al-Baqir (AS), in Medina, 57 AH. Renowned for opening vast horizons of Islamic knowledge.',
  ),

  ShiaEvent(
    id: 'martyrdom_hadi',
    nameEn: 'Martyrdom of Imam al-Hadi (AS)',
    nameAr: 'شهادة الإمام علي الهادي النقي',
    personEn: 'Imam Ali al-Hadi al-Naqi (AS)',
    type: ShiaEventType.martyrdom,
    hijriMonth: 7, hijriDay: 3,
    description:
        'The martyrdom of the tenth Imam, Ali ibn Muhammad al-Hadi al-Naqi (AS), '
        'poisoned in Samarra by the Abbasid Caliph al-Mu\'tazz, 254 AH.',
    isHighImportance: true,
  ),

  ShiaEvent(
    id: 'birth_jawad',
    nameEn: 'Birth of Imam al-Jawad (AS)',
    nameAr: 'ولادة الإمام محمد الجواد التقي',
    personEn: 'Imam Muhammad al-Jawad al-Taqi (AS)',
    type: ShiaEventType.birth,
    hijriMonth: 7, hijriDay: 10,
    description: 'The birth of the ninth Imam, Muhammad ibn Ali al-Jawad al-Taqi (AS), in Medina, 195 AH. He became Imam at the age of eight.',
  ),

  ShiaEvent(
    id: 'birth_ali',
    nameEn: 'Birth of Imam Ali ibn Abi Talib (AS)',
    nameAr: 'ولادة الإمام علي بن أبي طالب',
    personEn: 'Imam Ali ibn Abi Talib (AS)',
    type: ShiaEventType.birth,
    hijriMonth: 7, hijriDay: 13,
    description:
        'The birth of the first Imam and Commander of the Faithful, Ali ibn Abi Talib (AS), '
        'inside the sacred Ka\'bah in Mecca — an honour granted to no one before or after him.',
    isHighImportance: true,
  ),

  ShiaEvent(
    id: 'martyrdom_kadhim',
    nameEn: 'Martyrdom of Imam al-Kadhim (AS)',
    nameAr: 'شهادة الإمام موسى الكاظم',
    personEn: 'Imam Musa al-Kadhim (AS)',
    type: ShiaEventType.martyrdom,
    hijriMonth: 7, hijriDay: 25,
    description:
        'The martyrdom of the seventh Imam, Musa ibn Ja\'far al-Kadhim (AS), '
        'poisoned in the prison of Harun al-Rashid in Baghdad, 183 AH. Known for his immense patience.',
    isHighImportance: true,
  ),

  ShiaEvent(
    id: 'mabath',
    nameEn: "Mab'ath — The Prophet's Divine Mission",
    nameAr: 'المبعث النبوي الشريف',
    personEn: 'Prophet Muhammad (SAW)',
    type: ShiaEventType.occasion,
    hijriMonth: 7, hijriDay: 27,
    description:
        'The day the Holy Prophet Muhammad (SAW) received the first revelation from the Archangel Jibreel '
        'in the Cave of Hira, 13 BH. The dawn of Islam — one of the five greatest Eids.',
    isHighImportance: true,
  ),

  // ─── Sha'ban (Month 8) ───────────────────────────────────────────────────

  ShiaEvent(
    id: 'birth_husayn',
    nameEn: 'Birth of Imam Husayn (AS)',
    nameAr: 'ولادة الإمام الحسين بن علي',
    personEn: 'Imam Husayn ibn Ali (AS)',
    type: ShiaEventType.birth,
    hijriMonth: 8, hijriDay: 3,
    description:
        'The birth of Imam Husayn (AS), Master of the Martyrs and beloved grandson of the Holy Prophet, '
        'in Medina, 4 AH. "Husayn is from me, and I am from Husayn." — Prophet Muhammad (SAW)',
    isHighImportance: true,
  ),

  ShiaEvent(
    id: 'birth_sajjad',
    nameEn: 'Birth of Imam al-Sajjad (AS)',
    nameAr: 'ولادة الإمام زين العابدين',
    personEn: 'Imam Ali ibn Husayn al-Sajjad (AS)',
    type: ShiaEventType.birth,
    hijriMonth: 8, hijriDay: 5,
    description:
        'The birth of the fourth Imam, Ali ibn Husayn Zayn al-Abidin (AS), in Medina, 38 AH. '
        'His Sahifa Sajjadiyya — the Psalms of Islam — remains a treasure of Islamic spirituality.',
  ),

  ShiaEvent(
    id: 'birth_mahdi',
    nameEn: 'Birth of Imam al-Mahdi (AJ)',
    nameAr: 'ولادة الإمام المهدي المنتظر',
    personEn: 'Imam Muhammad al-Mahdi (AJ)',
    type: ShiaEventType.birth,
    hijriMonth: 8, hijriDay: 15,
    description:
        'The birth of the twelfth Imam and awaited Saviour, Muhammad ibn Hasan al-Mahdi (AJ), '
        'in Samarra, 255 AH. The Night of mid-Sha\'ban. May Allah hasten his noble reappearance.',
    isHighImportance: true,
  ),

  // ─── Ramadan (Month 9) ───────────────────────────────────────────────────

  ShiaEvent(
    id: 'birth_hasan',
    nameEn: 'Birth of Imam Hasan (AS)',
    nameAr: 'ولادة الإمام الحسن المجتبى',
    personEn: 'Imam Hasan al-Mujtaba (AS)',
    type: ShiaEventType.birth,
    hijriMonth: 9, hijriDay: 15,
    description:
        'The birth of the second Imam, Hasan ibn Ali (AS), in Medina, 3 AH. '
        'Grandson of the Holy Prophet and the first of the Ahl al-Bayt to be born in Medina.',
    isHighImportance: true,
  ),

  ShiaEvent(
    id: 'ali_struck',
    nameEn: 'Night Imam Ali (AS) Was Struck',
    nameAr: 'ليلة ضرب أمير المؤمنين',
    personEn: 'Imam Ali ibn Abi Talib (AS)',
    type: ShiaEventType.martyrdom,
    hijriMonth: 9, hijriDay: 19,
    description:
        'The night Imam Ali (AS) was struck by the poisoned sword of Ibn Muljam while prostrating in prayer at the mosque of Kufa. '
        'A night of unparalleled grief.',
    isHighImportance: true,
  ),

  ShiaEvent(
    id: 'martyrdom_ali',
    nameEn: 'Martyrdom of Imam Ali (AS)',
    nameAr: 'شهادة الإمام علي بن أبي طالب',
    personEn: 'Imam Ali ibn Abi Talib (AS)',
    type: ShiaEventType.martyrdom,
    hijriMonth: 9, hijriDay: 21,
    description:
        'The martyrdom of the first Imam, Ali ibn Abi Talib (AS), Commander of the Faithful, '
        'in Kufa, 40 AH. Also the most likely Laylat al-Qadr according to many Shia scholars.',
    isHighImportance: true,
  ),

  ShiaEvent(
    id: 'laylat_qadr_23',
    nameEn: "Laylat al-Qadr (23rd Ramadan)",
    nameAr: 'ليلة القدر — الليلة الثالثة والعشرون',
    type: ShiaEventType.occasion,
    hijriMonth: 9, hijriDay: 23,
    description:
        'The Night of Power — considered the most probable Laylat al-Qadr by many Shia scholars. '
        'Worship on this single night is worth more than a thousand months. Stay awake in prayer.',
    isHighImportance: true,
  ),

  // ─── Shawwal (Month 10) ──────────────────────────────────────────────────

  ShiaEvent(
    id: 'eid_fitr',
    nameEn: 'Eid al-Fitr',
    nameAr: 'عيد الفطر المبارك',
    type: ShiaEventType.occasion,
    hijriMonth: 10, hijriDay: 1,
    description: 'The blessed celebration of breaking the fast after Ramadan. A day of joy, gratitude to Allah, and giving to those in need.',
    isHighImportance: true,
  ),

  ShiaEvent(
    id: 'martyrdom_sadiq',
    nameEn: 'Martyrdom of Imam al-Sadiq (AS)',
    nameAr: 'شهادة الإمام جعفر الصادق',
    personEn: 'Imam Ja\'far al-Sadiq (AS)',
    type: ShiaEventType.martyrdom,
    hijriMonth: 10, hijriDay: 25,
    description:
        'The martyrdom of the sixth Imam, Ja\'far ibn Muhammad al-Sadiq (AS), '
        'poisoned by the Abbasid Caliph al-Mansur in Medina, 148 AH. '
        'He codified Shia jurisprudence and his school had thousands of students.',
    isHighImportance: true,
  ),

  // ─── Dhu al-Qi'da (Month 11) ─────────────────────────────────────────────

  ShiaEvent(
    id: 'birth_ridha',
    nameEn: 'Birth of Imam al-Ridha (AS)',
    nameAr: 'ولادة الإمام علي الرضا',
    personEn: 'Imam Ali al-Ridha (AS)',
    type: ShiaEventType.birth,
    hijriMonth: 11, hijriDay: 11,
    description:
        'The birth of the eighth Imam, Ali ibn Musa al-Ridha (AS), in Medina, 148 AH. '
        'His shrine in Mashhad is one of the holiest sites in the Shia world.',
  ),

  ShiaEvent(
    id: 'martyrdom_jawad',
    nameEn: 'Martyrdom of Imam al-Jawad (AS)',
    nameAr: 'شهادة الإمام محمد الجواد التقي',
    personEn: 'Imam Muhammad al-Jawad al-Taqi (AS)',
    type: ShiaEventType.martyrdom,
    hijriMonth: 11, hijriDay: 29,
    description:
        'The martyrdom of the ninth Imam, Muhammad ibn Ali al-Jawad (AS), '
        'poisoned by his wife at the instigation of the Abbasid Caliph al-Mu\'tasim in Baghdad, 220 AH.',
    isHighImportance: true,
  ),

  // ─── Dhu al-Hijja (Month 12) ─────────────────────────────────────────────

  ShiaEvent(
    id: 'martyrdom_baqir',
    nameEn: 'Martyrdom of Imam al-Baqir (AS)',
    nameAr: 'شهادة الإمام محمد الباقر',
    personEn: 'Imam Muhammad al-Baqir (AS)',
    type: ShiaEventType.martyrdom,
    hijriMonth: 12, hijriDay: 7,
    description:
        'The martyrdom of the fifth Imam, Muhammad ibn Ali al-Baqir (AS), '
        'poisoned by the Umayyad Caliph Hisham ibn Abd al-Malik in Medina, 114 AH.',
    isHighImportance: true,
  ),

  ShiaEvent(
    id: 'eid_adha',
    nameEn: 'Eid al-Adha',
    nameAr: 'عيد الأضحى المبارك',
    type: ShiaEventType.occasion,
    hijriMonth: 12, hijriDay: 10,
    description:
        'The festival of sacrifice, commemorating Prophet Ibrahim\'s willingness to sacrifice his son for Allah. '
        'A day of prayer, sacrifice, and gratitude.',
    isHighImportance: true,
  ),

  ShiaEvent(
    id: 'birth_hadi',
    nameEn: 'Birth of Imam al-Hadi (AS)',
    nameAr: 'ولادة الإمام علي الهادي النقي',
    personEn: 'Imam Ali al-Hadi al-Naqi (AS)',
    type: ShiaEventType.birth,
    hijriMonth: 12, hijriDay: 15,
    description: 'The birth of the tenth Imam, Ali ibn Muhammad al-Hadi al-Naqi (AS), in Sariyya (near Medina), 212 AH.',
  ),

  ShiaEvent(
    id: 'eid_ghadir',
    nameEn: 'Eid al-Ghadir',
    nameAr: 'عيد الغدير الأكبر',
    type: ShiaEventType.occasion,
    hijriMonth: 12, hijriDay: 18,
    description:
        'The greatest Eid in Shia Islam. '
        'The day the Holy Prophet (SAW) declared at Ghadir Khumm: '
        '"Whoever I am his master, Ali is his master." '
        'The divine appointment of Imam Ali (AS) as the successor of the Prophet.',
    isHighImportance: true,
  ),
];
