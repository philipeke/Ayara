// lib/features/duas/duas_data.dart
//
// Complete Shia Dua library — Mafatih al-Jinan core duas.

import 'dua_model.dart';

const List<DuaEntry> kDuaLibrary = [

  // ─── Tasbih of Sayyida Fatima (SA) ───────────────────────────────────────

  DuaEntry(
    id: 'tasbih_zahra',
    nameEn: 'Tasbih of Sayyida Fatima (SA)',
    nameAr: 'تسبيح السيدة فاطمة الزهراء',
    category: DuaCategory.tasbih,
    recommendedTime: 'After every prayer, especially before sleeping',
    taughtBy: 'Taught by the Holy Prophet (SAW) to Lady Fatima (SA)',
    shortDesc: '34 × Allāhu Akbar · 33 × Alḥamdulillāh · 33 × Subḥānallāh',
    isTasbih: true,
    hasAiExplain: true,
    sections: [
      DuaSection(
        sectionTitle: 'The Tasbih',
        arabic: 'اللَّهُ أَكْبَرُ × ٣٤\nالْحَمْدُ لِلَّهِ × ٣٣\nسُبْحَانَ اللَّهِ × ٣٣',
        transliteration:
            'Allāhu Akbar × 34\nAlḥamdu lillāh × 33\nSubḥāna-llāh × 33',
        translation:
            'Allah is the Greatest × 34\n'
            'All praise belongs to Allah × 33\n'
            'Glory be to Allah × 33',
      ),
      DuaSection(
        sectionTitle: 'Why This Tasbih?',
        arabic: '',
        transliteration: '',
        translation:
            'The Holy Prophet (SAW) taught this dhikr to his beloved daughter '
            'Fatima al-Zahra (SA) when she asked for a servant to ease her household burdens. '
            'He told her: "This tasbih is better for you than a servant." '
            'Imam al-Sadiq (AS) said that reciting it before sleep is more beloved to him than a thousand rak\'at of prayer. '
            'Begin with Allāhu Akbar (34 times), then Alḥamdulillāh (33 times), then Subḥānallāh (33 times). '
            'This is the well-known order in Twelver Shia practice.',
      ),
    ],
  ),

  // ─── Dua Kumayl ──────────────────────────────────────────────────────────

  DuaEntry(
    id: 'dua_kumayl',
    nameEn: 'Dua Kumayl',
    nameAr: 'دعاء كميل',
    category: DuaCategory.weekly,
    recommendedTime: 'Thursday nights (eve of Friday) and the night of mid-Sha\'ban',
    taughtBy: 'Imam Ali ibn Abi Talib (AS) — taught to Kumayl ibn Ziyad al-Nakha\'i',
    shortDesc: 'The supplication of Thursday nights — a profound dialogue with Allah',
    sections: [
      DuaSection(
        sectionTitle: 'Opening',
        arabic:
            'اَللَّهُمَّ إِنِّي أَسْأَلُكَ بِرَحْمَتِكَ الَّتِي وَسِعَتْ كُلَّ شَيْءٍ\n'
            'وَبِقُوَّتِكَ الَّتِي قَهَرْتَ بِهَا كُلَّ شَيْءٍ\n'
            'وَخَضَعَ لَهَا كُلُّ شَيْءٍ وَذَلَّ لَهَا كُلُّ شَيْءٍ',
        transliteration:
            'Allāhumma innī as\'aluka bi-raḥmatika-llatī wasi\'at kulla shay\'in\n'
            'wa bi-quwwatika-llatī qahharta bihā kulla shay\'in\n'
            'wa khaḍa\'a lahā kullu shay\'in wa dhalla lahā kullu shay\'in',
        translation:
            'O Allah, I ask You by Your mercy that encompasses all things,\n'
            'and by Your power by which You have subdued all things,\n'
            'and before which all things bow in humility and submission.',
      ),
      DuaSection(
        sectionTitle: 'Acknowledging Sins',
        arabic:
            'اَللَّهُمَّ اغْفِرْ لِيَ الذُّنُوبَ الَّتِي تَهْتِكُ الْعِصَمَ\n'
            'اَللَّهُمَّ اغْفِرْ لِيَ الذُّنُوبَ الَّتِي تُنْزِلُ النِّقَمَ\n'
            'اَللَّهُمَّ اغْفِرْ لِيَ الذُّنُوبَ الَّتِي تَحْبِسُ الدُّعَاءَ\n'
            'اَللَّهُمَّ اغْفِرْ لِيَ الذُّنُوبَ الَّتِي تَقْطَعُ الرَّجَاءَ',
        transliteration:
            'Allāhumma-ghfir liya-dhunūba-llatī tahtiku-l-\'iṣam\n'
            'Allāhumma-ghfir liya-dhunūba-llatī tunzilu-n-niqam\n'
            'Allāhumma-ghfir liya-dhunūba-llatī taḥbisu-d-du\'ā\'a\n'
            'Allāhumma-ghfir liya-dhunūba-llatī taqṭa\'u-r-rajā\'a',
        translation:
            'O Allah, forgive me the sins that tear away [the veil of] my protection,\n'
            'O Allah, forgive me the sins that bring down adversity,\n'
            'O Allah, forgive me the sins that withhold the answer to supplication,\n'
            'O Allah, forgive me the sins that cut off hope.',
      ),
      DuaSection(
        sectionTitle: 'The Plea for Mercy',
        arabic:
            'فَأَسْأَلُكَ بِعِزَّتِكَ أَنْ لَا يَحْجُبَ عَنْكَ دُعَائِي سُوءُ عَمَلِي وَفِعَالِي\n'
            'وَلَا تَفْضَحْنِي بِخَفِيِّ مَا اطَّلَعْتَ عَلَيْهِ مِنْ سِرِّي\n'
            'وَلَا تُعَاجِلْنِي بِالْعُقُوبَةِ عَلَى مَا عَمِلْتُهُ فِي خَلَوَاتِي',
        transliteration:
            'Fa-as\'aluka bi-\'izzatika an lā yaḥjuba \'anka du\'ā\'ī sū\'u \'amalī wa fi\'ālī\n'
            'walā tafḍaḥnī bi-khafiyyi mā-ṭṭala\'ta \'alayhi min sirrī\n'
            'walā tu\'ājilnī bi-l-\'uqūbati \'alā mā \'amiltuhu fī khalawātī',
        translation:
            'I ask You by Your might that the evil of my deeds and actions '
            'not veil my supplication from You,\n'
            'and do not expose me for what You know of my secrets,\n'
            'and do not hasten to punish me for what I have done in my private moments.',
      ),
      DuaSection(
        sectionTitle: 'Patience in the Fire',
        arabic:
            'فَهَبْنِي يَا إِلَهِي وَسَيِّدِي وَمَوْلَايَ وَرَبِّي\n'
            'صَبَرْتُ عَلَى عَذَابِكَ فَكَيْفَ أَصْبِرُ عَلَى فِرَاقِكَ\n'
            'وَهَبْنِي صَبَرْتُ عَلَى حَرِّ نَارِكَ فَكَيْفَ أَصْبِرُ عَنِ النَّظَرِ إِلَى كَرَامَتِكَ',
        transliteration:
            'Fa-habnī yā Ilāhī wa sayyidī wa mawlāya wa rabbī\n'
            'ṣabartu \'alā \'adhābika fa-kayfa aṣbiru \'alā firāqika\n'
            'wa habnī ṣabartu \'alā ḥarri nārika fa-kayfa aṣbiru \'ani-n-naẓari ilā karāmatika',
        translation:
            'Even if, my God, my Master, my Lord, my Sustainer,\n'
            'I were to endure Your punishment — how could I endure separation from You?\n'
            'Even if I endured the heat of Your fire — how could I endure '
            'being denied the sight of Your generosity?',
      ),
      DuaSection(
        sectionTitle: 'Closing',
        arabic:
            'يَا غَيَاثَ الْمُسْتَغِيثِينَ\n'
            'يَا غِيَاثِي فَأَغِثْنِي\n'
            'يَا مُجِيبَ الْمُضْطَرِّينَ\n'
            'يَا وَلِيِّي فَاكْفِنِي مَا أَهَمَّنِي\n'
            'بِرَحْمَتِكَ يَا أَرْحَمَ الرَّاحِمِينَ',
        transliteration:
            'Yā ghiyātha-l-mustaghīthīn\n'
            'Yā ghiyāthī fa-aghithnī\n'
            'Yā mujība-l-muḍṭarrīn\n'
            'Yā waliyyī fa-kfinī mā ahammani\n'
            'Bi-raḥmatika yā arḥama-r-rāḥimīn',
        translation:
            'O succour of those who seek succour!\n'
            'O my succour — come to my aid!\n'
            'O Answerer of the distressed!\n'
            'O my Guardian — suffice me in what troubles me,\n'
            'by Your mercy, O Most Merciful of the merciful.',
      ),
    ],
  ),

  // ─── Dua Nudbah ──────────────────────────────────────────────────────────

  DuaEntry(
    id: 'dua_nudbah',
    nameEn: 'Dua Nudbah',
    nameAr: 'دعاء الندبة',
    category: DuaCategory.weekly,
    recommendedTime: 'Friday mornings, after Fajr prayer',
    taughtBy: 'From the tradition of Imam al-Sadiq (AS) and Imam al-Ridha (AS)',
    shortDesc: 'The Lamentation — a yearning cry for Imam al-Mahdi (AJ)',
    sections: [
      DuaSection(
        sectionTitle: 'Praise of the Prophet\'s Family',
        arabic:
            'اَلْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ\n'
            'وَصَلَّى اللَّهُ عَلَى سَيِّدِنَا مُحَمَّدٍ نَبِيِّهِ وَآلِهِ\n'
            'وَسَلَّمَ تَسْلِيمًا',
        transliteration:
            'Al-ḥamdu lillāhi rabbi-l-\'ālamīn\n'
            'Wa ṣallā-llāhu \'alā sayyidinā Muḥammadin nabiyyihi wa ālih\n'
            'Wa sallama taslīmā',
        translation:
            'All praise is for Allah, Lord of the worlds.\n'
            'And may Allah send blessings upon our master Muhammad, His Prophet, and his family,\n'
            'and send peace — a complete and perfect peace.',
      ),
      DuaSection(
        sectionTitle: 'The Covenant of Ghadir',
        arabic:
            'حَتَّى إِذَا اسْتَكْمَلْتَ لَهُ مُدَّتَهُ\n'
            'وَأَرَدْتَ قَبْضَهُ إِلَيْكَ\n'
            'وَكُنْتَ أَنْتَ الْوَارِثُ لِمَا أَوْدَعْتَهُ\n'
            'أَقَامَ بِأَمْرِكَ عَلِيًّا عَلَمًا لِخَلْقِكَ\n'
            'وَاسْتَوْدَعَهُ سِرَّكَ وَعِلْمَكَ وَحِكْمَتَكَ',
        transliteration:
            'Ḥattā idha-stakmalat lahu muddatahu\n'
            'wa aradta qabḍahu ilayk\n'
            'wa kunta anta-l-wārithu limā awda\'tahu\n'
            'aqāma bi-amrika \'Aliyyan \'alaman li-khalqika\n'
            'wa-stawda\'ahu sirraka wa \'ilmaka wa ḥikmataka',
        translation:
            'Until, when You had completed his allotted time\n'
            'and willed to gather him back to You,\n'
            'and You alone are the Inheritor of all You had deposited with him —\n'
            'he raised Ali, by Your command, as a banner for Your creation,\n'
            'and entrusted him with Your secret, Your knowledge, and Your wisdom.',
      ),
      DuaSection(
        sectionTitle: 'Yearning for the Imam (AJ)',
        arabic:
            'أَيْنَ الْمُدَّخَرُ لِيَوْمِ الْفَقْرِ وَالْحَاجَةِ\n'
            'أَيْنَ الْمُنْتَظَرُ لِإِقَامَةِ الْأَمْتِ وَالْعِوَجِ\n'
            'أَيْنَ الْمُرْتَجَى لِإِزَالَةِ الْجَوْرِ وَالْعُدْوَانِ\n'
            'أَيْنَ الْمُدَّخَرُ لِتَجْدِيدِ الْفَرَائِضِ وَالسُّنَنِ',
        transliteration:
            'Ayna-l-muddakharu li-yawmi-l-faqri wa-l-ḥājah\n'
            'Ayna-l-muntaẓaru li-iqāmati-l-amti wa-l-\'iwaj\n'
            'Ayna-l-murtajā li-izālati-l-jawri wa-l-\'udwān\n'
            'Ayna-l-muddakharu li-tajdīdi-l-farā\'iḍi wa-s-sunan',
        translation:
            'Where is the one preserved for the day of poverty and need?\n'
            'Where is the one awaited to straighten the crooked and deviant?\n'
            'Where is the one hoped-for to remove oppression and aggression?\n'
            'Where is the one kept in store to renew the obligations and traditions?',
      ),
      DuaSection(
        sectionTitle: 'The Longing Cry',
        arabic:
            'عَزِيزٌ عَلَيَّ أَنْ أَرَى الْخَلْقَ وَلَا تُرَى\n'
            'وَلَا أَسْمَعُ لَكَ حَسِيسًا وَلَا نَجْوَى\n'
            'عَزِيزٌ عَلَيَّ أَنْ تُحِيطَ بِكَ دُونِي الْبَلْوَى\n'
            'عَزِيزٌ عَلَيَّ أَنْ يَجْرِيَ عَلَيْكَ مَا جَرَى\n'
            'هَلْ مِنْ مُعِينٍ فَأُطِيلَ مَعَهُ الْعَوِيلَ وَالْبُكَاءَ',
        transliteration:
            '\'Azīzun \'alayya an ara-l-khalqa wa lā turā\n'
            'wa lā asma\'u laka ḥasīsan wa lā najwā\n'
            '\'Azīzun \'alayya an tuḥīṭa bika dūnī-l-balwā\n'
            '\'Azīzun \'alayya an yajriya \'alayka mā jarā\n'
            'Hal min mu\'īnin fa-uṭīla ma\'ahu-l-\'awīla wa-l-bukā\'',
        translation:
            'It is painful for me that I see creation, yet you are not seen —\n'
            'and I do not hear from you even a whisper or a secret exchange.\n'
            'It is painful for me that trials surround you while I am here.\n'
            'It is painful for me that what has happened to you has happened.\n'
            'Is there anyone to help me so I may prolong my mourning and weeping?',
      ),
    ],
  ),

  // ─── Dua Tawassul ────────────────────────────────────────────────────────

  DuaEntry(
    id: 'dua_tawassul',
    nameEn: 'Dua Tawassul',
    nameAr: 'دعاء التوسل',
    category: DuaCategory.occasions,
    recommendedTime: 'When seeking help, in times of difficulty or need',
    taughtBy: 'Transmitted through the tradition of the Ahl al-Bayt (AS)',
    shortDesc: 'Seeking intercession through the Prophet (SAW) and the Fourteen Infallibles',
    sections: [
      DuaSection(
        sectionTitle: 'Opening Salutation',
        arabic:
            'اَللَّهُمَّ إِنِّي أَسْأَلُكَ وَأَتَوَجَّهُ إِلَيْكَ\n'
            'بِنَبِيِّكَ نَبِيِّ الرَّحْمَةِ مُحَمَّدٍ صَلَّى اللَّهُ عَلَيْهِ وَآلِهِ\n'
            'يَا أَبَا الْقَاسِمِ يَا رَسُولَ اللَّهِ\n'
            'يَا إِمَامَ الرَّحْمَةِ يَا سَيِّدَنَا وَمَوْلَانَا\n'
            'إِنَّا تَوَجَّهْنَا وَاسْتَشْفَعْنَا وَتَوَسَّلْنَا بِكَ إِلَى اللَّهِ',
        transliteration:
            'Allāhumma innī as\'aluka wa atawajjahu ilayka\n'
            'bi-nabiyyika nabiyyi-r-raḥmati Muḥammadin ṣalla-llāhu \'alayhi wa ālih\n'
            'Yā Aba-l-Qāsim yā Rasūla-llāh\n'
            'Yā imāma-r-raḥma yā sayyidanā wa mawlānā\n'
            'Innā tawajjahnā wa-stashfa\'nā wa tawassalnā bika ila-llāh',
        translation:
            'O Allah, I ask You and turn to You\n'
            'through Your Prophet, the Prophet of mercy, Muhammad (SAW).\n'
            'O Abu al-Qasim! O Messenger of Allah!\n'
            'O Imam of mercy! O our master and our guardian!\n'
            'We have turned to you, sought your intercession, and used you as our means to Allah.',
      ),
      DuaSection(
        sectionTitle: 'Intercession of Imam Ali (AS)',
        arabic:
            'يَا أَمِيرَ الْمُؤْمِنِينَ يَا عَلِيَّ بْنَ أَبِي طَالِبٍ\n'
            'يَا حُجَّةَ اللَّهِ عَلَى خَلْقِهِ\n'
            'يَا سَيِّدَنَا وَمَوْلَانَا إِنَّا تَوَسَّلْنَا بِكَ\n'
            'وَتَشَفَّعْنَا إِلَى اللَّهِ بِقَرَابَتِكَ مِنْ رَسُولِ اللَّهِ\n'
            'فَاشْفَعْ لَنَا عِنْدَ اللَّهِ',
        transliteration:
            'Yā Amīra-l-mu\'minīn yā \'Aliyya bna Abī Ṭālib\n'
            'Yā ḥujjata-llāhi \'alā khalqih\n'
            'Yā sayyidanā wa mawlānā innā tawassalnā bik\n'
            'wa tashaffa\'nā ila-llāhi bi-qarābatika min Rasūli-llāh\n'
            'Fa-shfa\' lanā \'inda-llāh',
        translation:
            'O Commander of the Faithful! O Ali ibn Abi Talib!\n'
            'O Proof of Allah over His creation!\n'
            'O our master and our guardian — we seek your intercession\n'
            'and use you as our means to Allah through your kinship to the Messenger of Allah.\n'
            'So intercede for us before Allah.',
      ),
      DuaSection(
        sectionTitle: 'Intercession of Imam Husayn (AS)',
        arabic:
            'يَا أَبَا عَبْدِ اللَّهِ يَا حُسَيْنَ بْنَ عَلِيٍّ\n'
            'يَا ابْنَ رَسُولِ اللَّهِ يَا ابْنَ أَمِيرِ الْمُؤْمِنِينَ\n'
            'يَا ابْنَ فَاطِمَةَ الزَّهْرَاءِ سَيِّدَةِ نِسَاءِ الْعَالَمِينَ\n'
            'يَا سَيِّدَنَا وَمَوْلَانَا إِنَّا تَوَسَّلْنَا بِكَ\n'
            'فَاشْفَعْ لَنَا عِنْدَ اللَّهِ',
        transliteration:
            'Yā Aba \'Abdillāh yā Ḥusayna bna \'Alī\n'
            'Yā-bna Rasūli-llāh yā-bna Amīri-l-mu\'minīn\n'
            'Yā-bna Fāṭimata-z-Zahrā\'i sayyidati nisā\'i-l-\'ālamīn\n'
            'Yā sayyidanā wa mawlānā innā tawassalnā bik\n'
            'Fa-shfa\' lanā \'inda-llāh',
        translation:
            'O Abu Abdillah! O Husayn ibn Ali!\n'
            'O son of the Messenger of Allah! O son of the Commander of the Faithful!\n'
            'O son of Fatima al-Zahra, mistress of the women of all the worlds!\n'
            'O our master and guardian — we use you as our means to Allah.\n'
            'So intercede for us before Allah.',
      ),
      DuaSection(
        sectionTitle: 'Intercession of Imam al-Mahdi (AJ)',
        arabic:
            'يَا صَاحِبَ الزَّمَانِ يَا ابْنَ الْحَسَنِ الْعَسْكَرِيِّ\n'
            'يَا حُجَّةَ اللَّهِ عَلَى خَلْقِهِ\n'
            'يَا سَيِّدَنَا وَمَوْلَانَا إِنَّا تَوَسَّلْنَا بِكَ\n'
            'فَاشْفَعْ لَنَا عِنْدَ اللَّهِ',
        transliteration:
            'Yā Ṣāḥiba-z-zamān yā-bna-l-Ḥasani-l-\'Askarī\n'
            'Yā ḥujjata-llāhi \'alā khalqih\n'
            'Yā sayyidanā wa mawlānā innā tawassalnā bik\n'
            'Fa-shfa\' lanā \'inda-llāh',
        translation:
            'O Master of the Age! O son of Hasan al-Askari!\n'
            'O Proof of Allah over His creation!\n'
            'O our master and guardian — we use you as our means to Allah.\n'
            'So intercede for us before Allah.',
      ),
      DuaSection(
        sectionTitle: 'The Final Plea',
        arabic:
            'اَللَّهُمَّ إِنَّا نَتَوَجَّهُ إِلَيْكَ بِأَوْلِيَائِكَ\n'
            'وَنَسْأَلُكَ بِحَقِّهِمْ لَدَيْكَ\n'
            'أَنْ تُقَضِّيَ لَنَا حَاجَتَنَا\n'
            'وَلَا تَرُدَّنَا خَائِبِينَ\n'
            'يَا أَرْحَمَ الرَّاحِمِينَ',
        transliteration:
            'Allāhumma innā natawajjahu ilayka bi-awliyā\'ik\n'
            'wa nas\'aluka bi-ḥaqqihim ladayk\n'
            'an tuqaḍḍiya lanā ḥājatanā\n'
            'wa lā taruddanā khā\'ibīn\n'
            'Yā arḥama-r-rāḥimīn',
        translation:
            'O Allah, we turn to You through Your close friends (the Imams),\n'
            'and we ask You by their right with You\n'
            'to fulfil our need\n'
            'and not to turn us away empty-handed,\n'
            'O Most Merciful of the merciful.',
      ),
    ],
  ),

  // ─── Dua Faraj ───────────────────────────────────────────────────────────

  DuaEntry(
    id: 'dua_faraj',
    nameEn: 'Dua Faraj (for the Reappearance)',
    nameAr: 'دعاء الفرج',
    category: DuaCategory.daily,
    recommendedTime: 'After every obligatory prayer',
    taughtBy: 'From the tradition of the Imams (AS), particularly for the era of occultation',
    shortDesc: 'A daily prayer for the hastening of Imam al-Mahdi\'s (AJ) reappearance',
    sections: [
      DuaSection(
        sectionTitle: 'Complete Dua',
        arabic:
            'اَللَّهُمَّ كُنْ لِوَلِيِّكَ الْحُجَّةِ بْنِ الْحَسَنِ\n'
            'صَلَوَاتُكَ عَلَيْهِ وَعَلَى آبَائِهِ\n'
            'فِي هَذِهِ السَّاعَةِ وَفِي كُلِّ سَاعَةٍ\n'
            'وَلِيًّا وَحَافِظًا وَقَائِدًا وَنَاصِرًا وَدَلِيلًا وَعَيْنًا\n'
            'حَتَّى تُسْكِنَهُ أَرْضَكَ طَوْعًا\n'
            'وَتُمَتِّعَهُ فِيهَا طَوِيلًا',
        transliteration:
            'Allāhumma kun li-waliyyika-l-Ḥujjati-bni-l-Ḥasan\n'
            'Ṣalawātuka \'alayhi wa \'alā ābā\'ih\n'
            'fī hādhihi-s-sā\'ati wa fī kulli sā\'ah\n'
            'waliyyan wa ḥāfiẓan wa qā\'idan wa nāṣiran wa dalīlan wa \'aynā\n'
            'ḥattā tuskinnahu arḍaka ṭaw\'an\n'
            'wa tumatti\'ahu fīhā ṭawīlā',
        translation:
            'O Allah, be for Your guardian, al-Hujjah ibn al-Hasan —\n'
            'may Your blessings be upon him and his forefathers —\n'
            'in this hour and in every hour:\n'
            'a guardian, a protector, a leader, a helper, a guide, and a watchful eye,\n'
            'until You settle him on Your earth willingly\n'
            'and grant him long enjoyment therein.',
      ),
    ],
  ),

  // ─── Dua Ahd ─────────────────────────────────────────────────────────────

  DuaEntry(
    id: 'dua_ahd',
    nameEn: "Dua al-'Ahd (The Covenant)",
    nameAr: 'دعاء العهد',
    category: DuaCategory.daily,
    recommendedTime: 'Every morning after Fajr, for 40 consecutive mornings',
    taughtBy: 'Imam al-Sadiq (AS)',
    shortDesc:
        'A daily covenant of allegiance to Imam al-Mahdi (AJ). '
        'Whoever recites this for 40 mornings becomes one of his helpers at reappearance.',
    sections: [
      DuaSection(
        sectionTitle: 'Opening',
        arabic:
            'اَللَّهُمَّ رَبَّ النُّورِ الْعَظِيمِ\n'
            'وَرَبَّ الْكُرْسِيِّ الرَّفِيعِ\n'
            'وَرَبَّ الْبَحْرِ الْمَسْجُورِ\n'
            'وَمُنْزِلَ التَّوْرَاةِ وَالإِنجِيلِ وَالزَّبُورِ\n'
            'وَرَبَّ الظِّلِّ وَالْحَرُورِ',
        transliteration:
            'Allāhumma rabba-n-nūri-l-\'aẓīm\n'
            'wa rabba-l-kursiyyi-r-rafī\'\n'
            'wa rabba-l-baḥri-l-masjūr\n'
            'wa munzila-t-tawrāti wa-l-injīli wa-z-zabūr\n'
            'wa rabba-ẓ-ẓilli wa-l-ḥarūr',
        translation:
            'O Allah! Lord of the magnificent light,\n'
            'Lord of the exalted Throne,\n'
            'Lord of the surging sea,\n'
            'Sender of the Torah, the Gospel, and the Psalms,\n'
            'Lord of shade and of scorching heat.',
      ),
      DuaSection(
        sectionTitle: 'The Pledge',
        arabic:
            'اَللَّهُمَّ إِنِّي أُشْهِدُكَ أَنِّي أَشْهَدُ\n'
            'أَنْ لَا إِلَهَ إِلَّا أَنْتَ وَحْدَكَ لَا شَرِيكَ لَكَ\n'
            'وَأَنَّ مُحَمَّدًا عَبْدُكَ وَرَسُولُكَ\n'
            'وَأَنَّ الإِمَامَ الْقَائِمَ بِالْحَقِّ بَعْدَهُ\n'
            'هُوَ الْحُجَّةُ بْنُ الْحَسَنِ صَاحِبُ الزَّمَانِ',
        transliteration:
            'Allāhumma innī ush-hiduka annī ash-hadu\n'
            'an lā ilāha illā anta waḥdaka lā sharīka lak\n'
            'wa anna Muḥammadan \'abduka wa rasūluk\n'
            'wa anna-l-imāma-l-qā\'ima bi-l-ḥaqqi ba\'dah\n'
            'huwa-l-Ḥujjatu-bnu-l-Ḥasan Ṣāḥibu-z-zamān',
        translation:
            'O Allah, I call You as witness that I testify:\n'
            'There is no god but You, alone, without partner,\n'
            'and that Muhammad is Your servant and Messenger,\n'
            'and that the Imam who stands with truth after him\n'
            'is al-Hujjah ibn al-Hasan, the Master of the Age.',
      ),
      DuaSection(
        sectionTitle: 'Reaffirmation',
        arabic:
            'اَللَّهُمَّ فَصَلِّ عَلَى مُحَمَّدٍ وَآلِ مُحَمَّدٍ\n'
            'وَعَجِّلْ فَرَجَهُ\n'
            'وَاجْعَلْنِي مِنْ أَنْصَارِهِ وَأَعْوَانِهِ\n'
            'وَأَوْلِيَائِهِ فِي الدُّنْيَا وَالآخِرَةِ',
        transliteration:
            'Allāhumma fa-ṣalli \'alā Muḥammadin wa āli Muḥammad\n'
            'wa \'ajjil farajah\n'
            'wa-j\'alnī min anṣārihī wa a\'wānih\n'
            'wa awliyā\'ihī fi-d-dunyā wa-l-ākhirah',
        translation:
            'O Allah, send blessings upon Muhammad and the family of Muhammad,\n'
            'and hasten his reappearance,\n'
            'and make me of his helpers, supporters,\n'
            'and close companions in this world and the next.',
      ),
    ],
  ),

  // ─── Ziyarat Ashura ──────────────────────────────────────────────────────

  DuaEntry(
    id: 'ziyarat_ashura',
    nameEn: 'Ziyarat Ashura',
    nameAr: 'زيارة عاشوراء',
    category: DuaCategory.ziyarat,
    recommendedTime:
        'On the day of Ashura (10 Muharram) and every day — especially in Muharram. '
        'Recite the salawat and la\'n 100 times each.',
    taughtBy: 'Imam Muhammad al-Baqir (AS) — transmitted by Alqama ibn Muhammad al-Hadrami',
    shortDesc:
        'The most powerful Ziyarat — recited to spiritually visit Imam Husayn (AS) at Karbala. '
        'Its reward is beyond measure.',
    sections: [
      DuaSection(
        sectionTitle: 'Opening Salutation',
        arabic:
            'اَلسَّلَامُ عَلَيْكَ يَا أَبَا عَبْدِ اللَّهِ\n'
            'اَلسَّلَامُ عَلَيْكَ يَا ابْنَ رَسُولِ اللَّهِ\n'
            'اَلسَّلَامُ عَلَيْكَ يَا ابْنَ أَمِيرِ الْمُؤْمِنِينَ\n'
            'وَابْنَ سَيِّدِ الْوَصِيِّينَ\n'
            'اَلسَّلَامُ عَلَيْكَ يَا ابْنَ فَاطِمَةَ سَيِّدَةِ نِسَاءِ الْعَالَمِينَ',
        transliteration:
            'As-salāmu \'alayka yā Abā \'Abdillāh\n'
            'As-salāmu \'alayka yā-bna Rasūli-llāh\n'
            'As-salāmu \'alayka yā-bna Amīri-l-mu\'minīn\n'
            'wa-bna sayyidi-l-waṣiyyīn\n'
            'As-salāmu \'alayka yā-bna Fāṭimata sayyidati nisā\'i-l-\'ālamīn',
        translation:
            'Peace be upon you, O Abu Abdillah.\n'
            'Peace be upon you, O son of the Messenger of Allah.\n'
            'Peace be upon you, O son of the Commander of the Faithful\n'
            'and son of the master of the legatees.\n'
            'Peace be upon you, O son of Fatima, mistress of the women of all the worlds.',
      ),
      DuaSection(
        sectionTitle: 'Acknowledging the Sacrifice',
        arabic:
            'أَشْهَدُ أَنَّكَ قَدْ أَقَمْتَ الصَّلَاةَ\n'
            'وَآتَيْتَ الزَّكَاةَ وَأَمَرْتَ بِالْمَعْرُوفِ\n'
            'وَنَهَيْتَ عَنِ الْمُنْكَرِ\n'
            'وَجَاهَدْتَ فِي اللَّهِ حَقَّ جِهَادِهِ\n'
            'وَصَبَرْتَ عَلَى الأَذَى فِي جَنْبِهِ',
        transliteration:
            'Ash-hadu annaka qad aqamta-ṣ-ṣalāh\n'
            'wa ātayta-z-zakāta wa amarta bi-l-ma\'rūf\n'
            'wa nahayta \'ani-l-munkar\n'
            'wa jāhadta fi-llāhi ḥaqqa jihādih\n'
            'wa ṣabartu \'ala-l-adhā fī janbih',
        translation:
            'I testify that you established prayer,\n'
            'gave zakat, commanded the good,\n'
            'and forbade the evil,\n'
            'and strove in the way of Allah as it deserved to be striven,\n'
            'and you were patient in bearing harm for His sake.',
      ),
      DuaSection(
        sectionTitle: 'Salawat (100 times)',
        arabic:
            'اَللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَآلِ مُحَمَّدٍ × ١٠٠',
        transliteration:
            'Allāhumma ṣalli \'alā Muḥammadin wa āli Muḥammad × 100',
        translation:
            'O Allah, send blessings upon Muhammad and the family of Muhammad × 100\n\n'
            '(Recite this one hundred times during the Ziyarat)',
      ),
      DuaSection(
        sectionTitle: 'Covenant of Allegiance',
        arabic:
            'يَا أَبَا عَبْدِ اللَّهِ إِنِّي سِلْمٌ لِمَنْ سَالَمَكُمْ\n'
            'وَحَرْبٌ لِمَنْ حَارَبَكُمْ إِلَى يَوْمِ الْقِيَامَةِ\n'
            'وَلَعَنَ اللَّهُ آلَ زِيَادٍ وَآلَ مَرْوَانَ\n'
            'وَلَعَنَ اللَّهُ بَنِي أُمَيَّةَ قَاطِبَةً\n'
            'وَلَعَنَ اللَّهُ ابْنَ مَرْجَانَةَ',
        transliteration:
            'Yā Abā \'Abdillāh innī silmun li-man sālamakum\n'
            'wa ḥarbun li-man ḥārabakum ilā yawmi-l-qiyāmah\n'
            'wa la\'ana-llāhu āla Ziyādin wa āla Marwān\n'
            'wa la\'ana-llāhu banī Umayyata qāṭibah\n'
            'wa la\'ana-llāhu-bna Marjānah',
        translation:
            'O Abu Abdillah, I am at peace with those who are at peace with you\n'
            'and at war with those who are at war with you until the Day of Resurrection.\n'
            'May Allah curse the house of Ziyad and the house of Marwan.\n'
            'May Allah curse the Banu Umayya altogether.\n'
            'May Allah curse the son of Marjanah.',
      ),
      DuaSection(
        sectionTitle: 'Closing Prayer',
        arabic:
            'اَللَّهُمَّ اجْعَلْنِي عِنْدَكَ وَجِيهًا بِالْحُسَيْنِ\n'
            'فِي الدُّنْيَا وَالآخِرَةِ\n'
            'اَللَّهُمَّ اجْعَلْنِي مِنَ الْمُسْتَشْفِعِينَ بِهِ\n'
            'وَمِنَ الطَّالِبِينَ بِثَأْرِهِ\n'
            'وَمِمَّنْ يَنْتَصِرُ بِهِ وَيَتَبَعُ سَبِيلَهُ وَهَدْيَهُ',
        transliteration:
            'Allāhumma-j\'alnī \'indaka wajīhan bi-l-Ḥusayn\n'
            'fi-d-dunyā wa-l-ākhirah\n'
            'Allāhumma-j\'alnī min al-mustashfi\'īna bih\n'
            'wa mina-ṭ-ṭālibīna bi-tha\'rih\n'
            'wa mimman yantaṣiru bih wa yattabi\'u sabīlahu wa hadyah',
        translation:
            'O Allah, make me honoured in Your sight through al-Husayn\n'
            'in this world and the next.\n'
            'O Allah, make me of those who seek his intercession,\n'
            'and of those who seek to avenge his blood,\n'
            'and of those who are victorious through him and follow his path and guidance.',
      ),
    ],
  ),

  // ─── Munajat Shabaniyya ───────────────────────────────────────────────────

  DuaEntry(
    id: 'munajat_shabaniyya',
    nameEn: "Munajat Sha'baniyya",
    nameAr: 'المناجاة الشعبانية',
    category: DuaCategory.occasions,
    recommendedTime: "During the month of Sha'ban — especially the first nights",
    taughtBy:
        'Transmitted from Imam Ali (AS) — all Imams recited it together in Sha\'ban',
    shortDesc:
        'The intimate whispered prayer of Sha\'ban — a deeply personal conversation with Allah',
    sections: [
      DuaSection(
        sectionTitle: 'The Whisper',
        arabic:
            'إِلَهِي هَبْ لِي كَمَالَ الإِنْقِطَاعِ إِلَيْكَ\n'
            'وَأَنِرْ أَبْصَارَ قُلُوبِنَا بِضِيَاءِ نَظَرِهَا إِلَيْكَ\n'
            'حَتَّى تَخْرِقَ أَبْصَارُ الْقُلُوبِ حُجُبَ النُّورِ\n'
            'فَتَصِلَ إِلَى مَعْدِنِ الْعَظَمَةِ\n'
            'وَتَصِيرَ أَرْوَاحُنَا مُعَلَّقَةً بِعِزِّ قُدْسِكَ',
        transliteration:
            'Ilāhī hab lī kamāla-l-inqiṭā\'i ilayk\n'
            'wa anir abṣāra qulūbinā bi-ḍiyā\'i naẓarihā ilayk\n'
            'ḥattā takhriqa abṣāru-l-qulūbi ḥujuba-n-nūr\n'
            'fa-taṣila ilā ma\'dini-l-\'aẓamah\n'
            'wa taṣīra arwāḥunā mu\'allaqatan bi-\'izzi qudsik',
        translation:
            'My God, grant me complete severance from all else — turning only to You.\n'
            'Illuminate the eyes of our hearts with the light of gazing upon You,\n'
            'until the sight of hearts pierces through the veils of light\n'
            'and reaches the source of all Majesty —\n'
            'and our souls become suspended in the glory of Your sanctity.',
      ),
      DuaSection(
        sectionTitle: 'Longing for Allah',
        arabic:
            'إِلَهِي وَأَلْحِقْنِي بِنُورِ عِزِّكَ الأَبْهَجِ\n'
            'فَأَكُونَ لَكَ عَارِفًا\n'
            'وَعَنْ سِوَاكَ مُنْحَرِفًا\n'
            'وَتَكُونَ مِنِّي خَائِفًا مُرَاقِبًا\n'
            'يَا ذَا الْجَلَالِ وَالإِكْرَامِ',
        transliteration:
            'Ilāhī wa alḥiqnī bi-nūri \'izzika-l-abhaj\n'
            'fa-akūna laka \'ārifan\n'
            'wa \'an siwāka munḥarifan\n'
            'wa takūna minnī khā\'ifan murāqiban\n'
            'Yā Dha-l-jalāli wa-l-ikrām',
        translation:
            'My God, join me to the most radiant light of Your glory,\n'
            'that I may be one who truly knows You,\n'
            'and turns away from all other than You —\n'
            'and be one who fears You and remains ever-watchful of You,\n'
            'O Possessor of Majesty and Honour.',
      ),
    ],
  ),

  // ─── Dua Samat ───────────────────────────────────────────────────────────

  DuaEntry(
    id: 'dua_samat',
    nameEn: 'Dua al-Samat',
    nameAr: 'دعاء السمات',
    category: DuaCategory.weekly,
    recommendedTime: 'Friday evenings (after Asr), or Thursday nights',
    taughtBy: 'From Imam al-Sadiq (AS) — one of the most powerful duas in the tradition',
    shortDesc:
        'A supplication of tremendous majesty, invoking Allah by His greatest names '
        'and the secrets entrusted to the Prophets.',
    sections: [
      DuaSection(
        sectionTitle: 'Invoking Allah\'s Names',
        arabic:
            'اَللَّهُمَّ إِنِّي أَسْأَلُكَ بِاسْمِكَ الْعَظِيمِ الأَعْظَمِ\n'
            'الأَعَزِّ الأَجَلِّ الأَكْرَمِ\n'
            'الَّذِي إِذَا دُعِيتَ بِهِ عَلَى مَغَالِقِ أَبْوَابِ السَّمَاءِ لِلْفَتْحِ بِالرَّحْمَةِ انْفَتَحَتْ\n'
            'وَإِذَا دُعِيتَ بِهِ عَلَى مَضَائِقِ أَبْوَابِ الأَرْضِ لِلْفَرَجِ انْفَرَجَتْ',
        transliteration:
            'Allāhumma innī as\'aluka bi-smika-l-\'aẓīmi-l-a\'ẓam\n'
            'al-a\'azzi-l-ajalli-l-akram\n'
            'alladhī idhā du\'īta bih \'alā maghāliqi abwābi-s-samā\'i li-l-fatḥi bi-r-raḥmah infataḥat\n'
            'wa idhā du\'īta bih \'alā maḍā\'iqi abwābi-l-arḍi li-l-faraji infaŕajat',
        translation:
            'O Allah, I ask You by Your name — the Great, the Greatest,\n'
            'the Most Mighty, the Most Exalted, the Most Generous —\n'
            'the name by which, when You are called upon to open the closed gates of heaven with mercy, they open,\n'
            'and when You are called upon to relieve the constricted gates of the earth, they open wide.',
      ),
      DuaSection(
        sectionTitle: 'The Plea',
        arabic:
            'يَا نُورَ النُّورِ يَا مُدَبِّرَ الأُمُورِ\n'
            'يَا بَاعِثَ مَنْ فِي الْقُبُورِ\n'
            'صَلِّ عَلَى مُحَمَّدٍ وَآلِ مُحَمَّدٍ\n'
            'وَافْعَلْ بِي مَا أَنْتَ أَهْلُهُ\n'
            'وَلَا تَفْعَلْ بِي مَا أَنَا أَهْلُهُ',
        transliteration:
            'Yā nūra-n-nūr yā mudabbira-l-umūr\n'
            'Yā bā\'itha man fi-l-qubūr\n'
            'Ṣalli \'alā Muḥammadin wa āli Muḥammad\n'
            'wa-f\'al bī mā anta ahluh\n'
            'wa lā taf\'al bī mā anā ahluh',
        translation:
            'O Light of lights! O Disposer of all affairs!\n'
            'O Resurrector of those in the graves!\n'
            'Send blessings upon Muhammad and the family of Muhammad,\n'
            'and treat me as You, in Your generosity, deserve to treat me —\n'
            'and do not treat me as I, in my unworthiness, deserve to be treated.',
      ),
    ],
  ),
];
