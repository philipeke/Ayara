// lib/core/services/content_repository.dart
//
// Firebase-backed content repository for religious texts.
//
// Strategy:
//   1. Return bundled (compile-time) data immediately — zero latency, works offline.
//   2. Fetch from Firestore in the background.
//   3. Cache Firestore data in SharedPreferences (TTL = 12 h).
//   4. On next cold start, serve cached Firestore data first, then refresh.
//
// Collections:
//   content_hadiths  — HadithModel
//   content_imams    — ImamModel
//   content_duas     — DuaModel

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:ayara/core/models/content_models.dart';

// ─────────────────────────────────────────────────────────────────────────────

class ContentRepository {
  ContentRepository._();
  static final ContentRepository instance = ContentRepository._();

  static const _ttlHours = 24;
  static const _keyHadiths = 'cr_hadiths_v1';
  static const _keyImams = 'cr_imams_v1';
  static const _keyDuas = 'cr_duas_v1';
  static const _keyScriptures = 'cr_scriptures_v1';
  static const _keyRoleModels = 'cr_rolemodels_v1';
  static const _keyReflections = 'cr_reflections_v1';
  static const _keyHadithsTs = 'cr_hadiths_ts_v1';
  static const _keyImamsTs = 'cr_imams_ts_v1';
  static const _keyDuasTs = 'cr_duas_ts_v1';
  static const _keyScripturesTs = 'cr_scriptures_ts_v1';
  static const _keyRoleModelsTs = 'cr_rolemodels_ts_v1';
  static const _keyReflectionsTs = 'cr_reflections_ts_v1';
  static const _keyWisdom = 'cr_wisdom_v1';
  static const _keyWisdomTs = 'cr_wisdom_ts_v1';
  static const _keyHajjSteps = 'cr_hajj_v2';
  static const _keyHajjStepsTs = 'cr_hajj_ts_v2';
  static const _keyUmrahSteps = 'cr_umrah_v2';
  static const _keyUmrahStepsTs = 'cr_umrah_ts_v2';
  static const _keyPromptSlots = 'cr_prompts_v1';
  static const _keyPromptSlotsTs = 'cr_prompts_ts_v1';

  // In-memory upgraded prompt slots (starts as bundled, updated after Firestore fetch).
  List<PromptSlotModel> _livePromptSlots = _bundledPromptSlots;

  // Active locale code used for content translation resolution.
  String _locale = 'en';

  final _firestore = FirebaseFirestore.instance;

  // ── Public API ─────────────────────────────────────────────────────────────

  /// Sets the active locale for content resolution.
  /// Call this whenever the app locale changes.
  void setLocale(String locale) {
    if (_locale == locale) return;
    _locale = locale;
    // Reset in-memory prompts so next warmPrompts() re-fetches with the new locale.
    _livePromptSlots = _bundledPromptSlots;
  }

  /// Returns the hadith list. Always resolves immediately from bundle or cache;
  /// triggers a background Firestore refresh if the cache is stale.
  Future<List<HadithModel>> getHadiths() async {
    final locale = _locale;
    return _get<HadithModel>(_keyHadiths, _keyHadithsTs, 'content_hadiths',
        _bundledHadiths, HadithModel.fromJson, (m) => m.toJson(),
        (id, data) => HadithModel.fromFirestore(id, data, locale: locale));
  }

  /// Returns imam profiles, sorted by [ImamModel.order].
  Future<List<ImamModel>> getImams() async {
    final locale = _locale;
    return _get<ImamModel>(_keyImams, _keyImamsTs, 'content_imams',
        _bundledImams, ImamModel.fromJson, (m) => m.toJson(),
        (id, data) => ImamModel.fromFirestore(id, data, locale: locale));
  }

  /// Returns duas, sorted by [DuaModel.order].
  Future<List<DuaModel>> getDuas() async =>
      _get<DuaModel>(_keyDuas, _keyDuasTs, 'content_duas',
          _bundledDuas, DuaModel.fromJson, (m) => m.toJson(),
          DuaModel.fromFirestore);

  // Public accessors for bundled data — used as initial widget state.
  List<DailyScriptureModel> get bundledScriptures => _bundledScriptures;
  List<DailyRoleModelModel> get bundledRoleModels => _bundledRoleModels;
  List<DailyReflectionModel> get bundledReflections => _bundledReflections;

  /// Returns daily Quran scriptures, sorted by [DailyScriptureModel.order].
  Future<List<DailyScriptureModel>> getScriptures() async {
    final locale = _locale;
    return _get<DailyScriptureModel>(_keyScriptures, _keyScripturesTs,
        'content_scriptures', _bundledScriptures,
        DailyScriptureModel.fromJson, (m) => m.toJson(),
        (id, data) => DailyScriptureModel.fromFirestore(id, data, locale: locale));
  }

  /// Returns role-model/saint entries, sorted by [DailyRoleModelModel.order].
  Future<List<DailyRoleModelModel>> getRoleModels() async {
    final locale = _locale;
    return _get<DailyRoleModelModel>(_keyRoleModels, _keyRoleModelsTs,
        'content_role_models', _bundledRoleModels,
        DailyRoleModelModel.fromJson, (m) => m.toJson(),
        (id, data) => DailyRoleModelModel.fromFirestore(id, data, locale: locale));
  }

  /// Returns evening reflection prompts, sorted by [DailyReflectionModel.order].
  Future<List<DailyReflectionModel>> getReflections() async {
    final locale = _locale;
    return _get<DailyReflectionModel>(_keyReflections, _keyReflectionsTs,
        'content_reflections', _bundledReflections,
        DailyReflectionModel.fromJson, (m) => m.toJson(),
        (id, data) => DailyReflectionModel.fromFirestore(id, data, locale: locale));
  }

  // Public accessors for wisdom / pilgrimage / prompts.
  List<WisdomModel> get bundledWisdom => _bundledWisdom;
  List<PilgrimageStepModel> get bundledHajjSteps => _bundledHajjSteps;
  List<PilgrimageStepModel> get bundledUmrahSteps => _bundledUmrahSteps;

  /// Returns the live prompt-slot list (bundled data until Firestore upgrades it).
  /// Always synchronous — call [warmPrompts] early to pre-fetch from Firestore.
  List<PromptSlotModel> get livePromptSlots => _livePromptSlots;

  /// Pre-fetches prompt slots from Firestore/cache and updates [livePromptSlots].
  Future<void> warmPrompts() async {
    final result = await _get<PromptSlotModel>(
        _keyPromptSlots, _keyPromptSlotsTs, 'content_prompts',
        _bundledPromptSlots, PromptSlotModel.fromJson, (m) => m.toJson(),
        PromptSlotModel.fromFirestore);
    _livePromptSlots = result;
  }

  Future<List<WisdomModel>> getWisdom() async {
    final locale = _locale;
    return _get<WisdomModel>(_keyWisdom, _keyWisdomTs, 'content_wisdom',
        _bundledWisdom, WisdomModel.fromJson, (m) => m.toJson(),
        (id, data) => WisdomModel.fromFirestore(id, data, locale: locale));
  }

  Future<List<PilgrimageStepModel>> getHajjSteps() async {
    final locale = _locale;
    return _get<PilgrimageStepModel>(_keyHajjSteps, _keyHajjStepsTs,
        'content_hajj_steps', _bundledHajjSteps,
        PilgrimageStepModel.fromJson, (m) => m.toJson(),
        (id, data) => PilgrimageStepModel.fromFirestore(id, data, locale: locale));
  }

  Future<List<PilgrimageStepModel>> getUmrahSteps() async {
    final locale = _locale;
    return _get<PilgrimageStepModel>(_keyUmrahSteps, _keyUmrahStepsTs,
        'content_umrah_steps', _bundledUmrahSteps,
        PilgrimageStepModel.fromJson, (m) => m.toJson(),
        (id, data) => PilgrimageStepModel.fromFirestore(id, data, locale: locale));
  }

  // ── Internal ───────────────────────────────────────────────────────────────

  Future<List<T>> _get<T>(
    String cacheKey,
    String tsKey,
    String collection,
    List<T> bundle,
    T Function(Map<String, dynamic>) fromJson,
    Map<String, dynamic> Function(T) toJson,
    T Function(String, Map<String, dynamic>) fromFirestore,
  ) async {
    final prefs = await SharedPreferences.getInstance();

    // Use locale-scoped cache keys so each locale gets its own cached content.
    final localizedCacheKey = '${cacheKey}_$_locale';
    final localizedTsKey = '${tsKey}_$_locale';

    // 1. Try cache first
    final cached = _readCache<T>(prefs, localizedCacheKey, fromJson);
    if (cached != null) {
      final ts = prefs.getInt(localizedTsKey) ?? 0;
      final stale = DateTime.now().millisecondsSinceEpoch - ts >
          const Duration(hours: _ttlHours).inMilliseconds;
      if (stale) {
        // Refresh in background, return cached data now
        _fetchAndCache(prefs, localizedCacheKey, localizedTsKey, collection, toJson, fromFirestore)
            .ignore();
      }
      return cached;
    }

    // 2. No cache — try Firestore with a short timeout
    try {
      final result = await _fetchAndCache(
          prefs, localizedCacheKey, localizedTsKey, collection, toJson, fromFirestore);
      if (result != null && result.isNotEmpty) return result;
    } catch (_) {
      // Network unavailable — fall through to bundle
    }

    // 3. Fallback: bundled compile-time data
    return bundle;
  }

  List<T>? _readCache<T>(
    SharedPreferences prefs,
    String key,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    final raw = prefs.getString(key);
    if (raw == null) return null;
    try {
      final list = json.decode(raw) as List<dynamic>;
      return list
          .map((e) => fromJson(Map<String, dynamic>.from(e as Map)))
          .toList();
    } catch (_) {
      return null;
    }
  }

  Future<List<T>?> _fetchAndCache<T>(
    SharedPreferences prefs,
    String cacheKey,
    String tsKey,
    String collection,
    Map<String, dynamic> Function(T) toJson,
    T Function(String, Map<String, dynamic>) fromFirestore,
  ) async {
    final snap = await _firestore
        .collection(collection)
        .get(const GetOptions(source: Source.serverAndCache))
        .timeout(const Duration(seconds: 8));

    if (snap.docs.isEmpty) return null;

    final items = snap.docs
        .map((d) => fromFirestore(d.id, d.data()))
        .toList();

    // Persist to cache
    try {
      final encoded = items.map(toJson).toList();
      await prefs.setString(cacheKey, json.encode(encoded));
      await prefs.setInt(tsKey, DateTime.now().millisecondsSinceEpoch);
    } catch (_) {
      // Cache write failure is non-fatal
    }

    return items;
  }

  // ── Bundled fallback data ──────────────────────────────────────────────────
  // These mirror the hardcoded lists in the feature screens. They ensure the
  // app works fully offline on first install before Firestore is reached.

  static final List<HadithModel> _bundledHadiths = [
    const HadithModel(id: 'hadith_thaqalayn', order: 1, arabic: 'إِنِّي تَارِكٌ فِيكُمُ الثَّقَلَيْنِ: كِتَابَ اللهِ وَعِتْرَتِي أَهْلَ بَيْتِي', english: 'I am leaving among you two weighty things: the Book of Allah and my Ahl al-Bayt. They will never separate until they meet me at the Pond of Kawthar.', source: 'Hadith al-Thaqalayn', imam: 'Prophet Muhammad (SAW)', imamAr: 'النبي محمد ﷺ'),
    const HadithModel(id: 'hadith_ilm_mal', order: 2, arabic: 'الْعِلْمُ خَيْرٌ مِنَ الْمَالِ، الْعِلْمُ يَحْرُسُكَ وَأَنْتَ تَحْرُسُ الْمَالَ', english: 'Knowledge is better than wealth. Knowledge guards you, while you must guard wealth. Wealth decreases with spending, but knowledge only grows.', source: 'Nahj al-Balagha', imam: 'Imam Ali ibn Abi Talib (AS)', imamAr: 'الإمام علي بن أبي طالب ع'),
    const HadithModel(id: 'hadith_husayn_rise', order: 3, arabic: 'لَمْ أَخْرُجْ أَشِراً وَلا بَطِراً، وَإِنَّمَا خَرَجْتُ لِطَلَبِ الإِصْلاحِ فِي أُمَّةِ جَدِّي', english: 'I did not rise out of arrogance or corruption. I rose only to seek reform in the nation of my grandfather, the Prophet (SAW).', source: 'Maqtal al-Husayn, al-Muqarram', imam: 'Imam Husayn ibn Ali (AS)', imamAr: 'الإمام الحسين بن علي ع'),
    const HadithModel(id: 'hadith_best_deeds', order: 4, arabic: 'أَفْضَلُ الأَعْمَالِ إِدْخَالُ السُّرُورِ عَلَى قَلْبِ الْمُؤْمِنِ', english: 'The best of deeds is to bring joy to the heart of a believer — to satisfy his hunger, relieve his worry, or pay off his debt.', source: 'al-Kafi, vol. 2', imam: "Imam Ja'far al-Sadiq (AS)", imamAr: 'الإمام جعفر الصادق ع'),
    const HadithModel(id: 'hadith_worship_as_seeing', order: 5, arabic: 'اعْبُدِ اللهَ كَأَنَّكَ تَرَاهُ، فَإِنْ لَمْ تَكُنْ تَرَاهُ فَإِنَّهُ يَرَاكَ', english: 'Worship Allah as though you see Him; even if you cannot see Him, He surely sees you.', source: 'Sahifa al-Sajjadiyya', imam: 'Imam Ali ibn Husayn al-Sajjad (AS)', imamAr: 'الإمام علي بن الحسين ع'),
    const HadithModel(id: 'hadith_patience_head', order: 6, arabic: 'الصَّبْرُ مِنَ الإِيمَانِ بِمَنْزِلَةِ الرَّأْسِ مِنَ الْجَسَدِ', english: 'Patience is to faith what the head is to the body. A body without a head perishes, and so does faith without patience.', source: 'Bihar al-Anwar', imam: 'Imam Musa al-Kadhim (AS)', imamAr: 'الإمام موسى الكاظم ع'),
    const HadithModel(id: 'hadith_iman_heart_tongue', order: 7, arabic: 'الإِيمَانُ إِقْرَارٌ بِالْقَلْبِ وَإِقْرَارٌ بِاللِّسَانِ وَعَمَلٌ بِالأَرْكَانِ', english: 'Faith is acknowledgment with the heart, confession with the tongue, and action with the limbs.', source: 'Uyun Akhbar al-Ridha', imam: 'Imam Ali al-Ridha (AS)', imamAr: 'الإمام علي الرضا ع'),
    const HadithModel(id: 'hadith_tawakkul_ladder', order: 8, arabic: 'التَّوَكُّلُ عَلَى اللهِ ثَمَنٌ لِكُلِّ غَالٍ وَسُلَّمٌ إِلَى كُلِّ عَالٍ', english: 'Reliance on Allah is the price of every precious thing and the ladder to every elevated station.', source: 'Bihar al-Anwar', imam: 'Imam Muhammad al-Jawad (AS)', imamAr: 'الإمام محمد الجواد ع'),
    const HadithModel(id: 'hadith_dunya_marketplace', order: 9, arabic: 'الدُّنْيَا سُوقٌ رَبِحَ فِيهَا قَوْمٌ وَخَسِرَ آخَرُونَ', english: 'The world is a marketplace: some people profit from it, while others incur loss.', source: 'Tuhaf al-Uqul', imam: 'Imam Ali al-Hadi (AS)', imamAr: 'الإمام علي الهادي ع'),
    const HadithModel(id: 'hadith_taqwa_treasure', order: 10, arabic: 'التَّقْوَى شَرَفٌ وَالْعِلْمُ كَنْزٌ وَالصَّمْتُ نُورٌ', english: 'Piety is an honor, knowledge is a treasure, silence is a light, and the peak of worship is modesty and contentment.', source: 'Bihar al-Anwar', imam: 'Imam Hasan al-Askari (AS)', imamAr: 'الإمام الحسن العسكري ع'),
    const HadithModel(id: 'hadith_mahdi_caring', order: 11, arabic: 'إِنَّا غَيْرُ مُهْمِلِينَ لِمُرَاعَاتِكُمْ وَلا نَاسِينَ لِذِكْرِكُمْ', english: 'We are not neglectful of your affairs, nor forgetful of your remembrance. Were it not for that, hardships would descend upon you.', source: "Bihar al-Anwar, Tawqi' al-Mahdi", imam: 'Imam Muhammad al-Mahdi (AJ)', imamAr: 'الإمام محمد المهدي عج'),
    const HadithModel(id: 'hadith_best_family', order: 12, arabic: 'خَيْرُكُمْ خَيْرُكُمْ لأَهْلِهِ', english: 'The best of you is the best among his family.', source: 'Bihar al-Anwar', imam: 'Prophet Muhammad (SAW)', imamAr: 'النبي محمد ﷺ'),
    const HadithModel(id: 'hadith_person_under_tongue', order: 13, arabic: 'الْمَرْءُ مَخْبُوءٌ تَحْتَ لِسَانِهِ', english: 'A person is hidden beneath his tongue. Speak, and you will be known.', source: 'Nahj al-Balagha', imam: 'Imam Ali ibn Abi Talib (AS)', imamAr: 'الإمام علي بن أبي طالب ع'),
    const HadithModel(id: 'hadith_calamity_patience', order: 14, arabic: 'الْمُصِيبَةُ لِلصَّابِرِ وَاحِدَةٌ وَلِلْجَازِعِ اثْنَتَانِ', english: 'A calamity for the patient person is one; but for the impatient, it is two — the calamity itself and the loss of patience.', source: 'Bihar al-Anwar', imam: 'Imam Husayn ibn Ali (AS)', imamAr: 'الإمام الحسين بن علي ع'),
    const HadithModel(id: 'hadith_right_of_mother', order: 15, arabic: 'حَقُّ أُمِّكَ أَنْ تَعْلَمَ أَنَّهَا حَمَلَتْكَ حَيْثُ لا يَحْمِلُ أَحَدٌ أَحَداً', english: 'The right of your mother upon you is that you know: she carried you as no one carries another, and nourished you from the fruit of her heart.', source: 'Risalat al-Huquq', imam: 'Imam Ali ibn Husayn al-Sajjad (AS)', imamAr: 'الإمام علي بن الحسين ع'),
    const HadithModel(id: 'hadith_recitation_reflection', order: 16, arabic: 'لا خَيْرَ فِي قِرَاءَةٍ لَيْسَ فِيهَا تَدَبُّرٌ', english: 'There is no good in recitation without reflection and understanding of what is being recited.', source: 'al-Kafi, vol. 2', imam: 'Imam Muhammad al-Baqir (AS)', imamAr: 'الإمام محمد الباقر ع'),
    const HadithModel(id: 'hadith_guard_tongue', order: 17, arabic: 'احْفَظْ لِسَانَكَ كَمَا تَحْفَظُ ذَهَبَكَ وَفِضَّتَكَ', english: 'Guard your tongue as you guard your gold and silver, for many have been destroyed by a word carelessly spoken.', source: 'al-Kafi, vol. 2', imam: "Imam Ja'far al-Sadiq (AS)", imamAr: 'الإمام جعفر الصادق ع'),
    const HadithModel(id: 'hadith_wise_deals_wisely', order: 18, arabic: 'أَعْقَلُ النَّاسِ أَحْسَنُهُمْ مُدَارَاةً لِلنَّاسِ', english: 'The most intelligent of people is the one who deals with others most wisely and with the most patience.', source: 'Bihar al-Anwar', imam: 'Imam Musa al-Kadhim (AS)', imamAr: 'الإمام موسى الكاظم ع'),
    const HadithModel(id: 'hadith_good_character_half_intellect', order: 19, arabic: 'مَنْ حَسُنَ خُلُقُهُ كَمَلَ نِصْفُ عَقْلِهِ', english: 'One who has a good character has completed half of his intellect.', source: 'Bihar al-Anwar', imam: 'Imam Ali al-Ridha (AS)', imamAr: 'الإمام علي الرضا ع'),
    const HadithModel(id: 'hadith_three_things_rida', order: 20, arabic: 'ثَلاثٌ يُبَلِّغْنَ بِالْعَبْدِ رِضَا اللهِ: كَثْرَةُ الاسْتِغْفَارِ وَلِينُ الجَانِبِ وَكَثْرَةُ الصَّدَقَةِ', english: 'Three things bring the servant to the pleasure of Allah: abundant seeking of forgiveness, gentleness in dealings, and frequent charity.', source: 'Bihar al-Anwar', imam: 'Imam Muhammad al-Jawad (AS)', imamAr: 'الإمام محمد الجواد ع'),
    const HadithModel(id: 'hadith_do_not_seek_wrongdoer', order: 21, arabic: 'لا تَسْتَعِنْ بِمَنْ ظَلَمَ نَفْسَهُ', english: 'Do not seek the aid of one who has wronged himself — for one who cannot be just to himself cannot be just to others.', source: 'Bihar al-Anwar', imam: 'Imam Ali al-Hadi (AS)', imamAr: 'الإمام علي الهادي ع'),
    const HadithModel(id: 'hadith_signs_faqih', order: 22, arabic: 'مِنْ عَلامَاتِ الْفَقِيهِ: الْحِلْمُ وَالْعِلْمُ وَالصَّمْتُ', english: 'Among the signs of true understanding are: forbearance, love of knowledge, and deliberate silence.', source: 'Bihar al-Anwar', imam: 'Imam Hasan al-Askari (AS)', imamAr: 'الإمام الحسن العسكري ع'),
    const HadithModel(id: 'hadith_fatima_faith_prayer_zakat', order: 23, arabic: 'جَعَلَ اللهُ الإِيمَانَ تَطْهِيراً مِنَ الشِّرْكِ وَالصَّلاةَ تَنْزِيهاً عَنِ الكِبْرِ', english: 'Allah has made faith a purification from polytheism, and prayer a cleansing from arrogance.', source: 'Khutbat Fadak', imam: 'Lady Fatima Zahra (SA)', imamAr: 'السيدة فاطمة الزهراء ع'),
    const HadithModel(id: 'hadith_strongest_controls_anger', order: 24, arabic: 'أَشَدُّكُمْ مَنْ غَلَبَ نَفْسَهُ عِنْدَ الْغَضَبِ', english: 'The strongest among you is the one who controls himself in anger.', source: 'Bihar al-Anwar', imam: 'Prophet Muhammad (SAW)', imamAr: 'النبي محمد ﷺ'),
    const HadithModel(id: 'hadith_cure_ignorance_ask', order: 25, arabic: 'دَوَاءُ الْجَهْلِ السُّؤَالُ', english: 'The cure for ignorance is to ask. Do not be too proud to seek knowledge from those who have it.', source: 'Nahj al-Balagha', imam: 'Imam Ali ibn Abi Talib (AS)', imamAr: 'الإمام علي بن أبي طالب ع'),
    const HadithModel(id: 'hadith_believer_one_body', order: 26, arabic: 'الْمُؤْمِنُ أَخُو الْمُؤْمِنِ كَالْجَسَدِ الْوَاحِدِ', english: 'The believer is the brother of the believer, like a single body — if one part suffers, all other parts respond with sleeplessness and fever.', source: 'al-Kafi, vol. 2', imam: 'Imam Muhammad al-Baqir (AS)', imamAr: 'الإمام محمد الباقر ع'),
    const HadithModel(id: 'hadith_maintain_forgive', order: 27, arabic: 'صِلْ مَنْ قَطَعَكَ وَأَعْطِ مَنْ حَرَمَكَ وَاعْفُ عَمَّنْ ظَلَمَكَ', english: 'Maintain ties with those who sever theirs; give to those who deprive you; and forgive those who wrong you.', source: 'Tuhaf al-Uqul', imam: "Imam Ja'far al-Sadiq (AS)", imamAr: 'الإمام جعفر الصادق ع'),
    const HadithModel(id: 'hadith_repentance_three', order: 28, arabic: 'التَّوْبَةُ النَّدَمُ بِالْقَلْبِ وَالاسْتِغْفَارُ بِاللِّسَانِ وَالتَّرْكُ بِالْجَوَارِحِ', english: 'True repentance is remorse in the heart, seeking forgiveness with the tongue, and abstaining from sin with the limbs.', source: 'al-Kafi', imam: 'Imam Muhammad al-Baqir (AS)', imamAr: 'الإمام محمد الباقر ع'),
    const HadithModel(id: 'hadith_account_yourself_daily', order: 29, arabic: 'لَيْسَ مِنَّا مَنْ لَمْ يُحَاسِبْ نَفْسَهُ فِي كُلِّ يَوْمٍ', english: 'He is not of us who does not hold himself to account every single day — examining his deeds, intentions, and heart.', source: 'Bihar al-Anwar', imam: 'Imam Ali ibn Husayn al-Sajjad (AS)', imamAr: 'الإمام علي بن الحسين ع'),
    const HadithModel(id: 'hadith_knowledge_obligation', order: 30, arabic: 'طَلَبُ الْعِلْمِ فَرِيضَةٌ عَلَى كُلِّ مُسْلِمٍ', english: 'The seeking of knowledge is an obligation upon every Muslim — man and woman alike.', source: 'Bihar al-Anwar', imam: 'Prophet Muhammad (SAW)', imamAr: 'النبي محمد ﷺ'),
    const HadithModel(id: 'hadith_worth_what_you_do_well', order: 31, arabic: 'قِيمَةُ كُلِّ امْرِئٍ مَا يُحْسِنُهُ', english: 'A person\'s worth lies in what he does well.', source: 'Nahj al-Balagha', imam: 'Imam Ali ibn Abi Talib (AS)', imamAr: 'الإمام علي بن أبي طالب ع'),
    const HadithModel(id: 'hadith_opponent_oppressor', order: 32, arabic: 'كُنْ لِلظَّالِمِ خَصْماً وَلِلْمَظْلُومِ عَوْناً', english: 'Be an opponent to the oppressor and a helper to the oppressed — regardless of who they are.', source: 'Nahj al-Balagha', imam: 'Imam Ali ibn Abi Talib (AS)', imamAr: 'الإمام علي بن أبي طالب ع'),
    const HadithModel(id: 'hadith_finest_character', order: 33, arabic: 'إِنَّ أَحَبَّكُمْ إِلَى اللهِ أَحْسَنُكُمْ أَخْلاقاً', english: 'The most beloved of you to Allah is the one with the best character.', source: 'Bihar al-Anwar', imam: 'Prophet Muhammad (SAW)', imamAr: 'النبي محمد ﷺ'),
    const HadithModel(id: 'hadith_no_hope_without_work', order: 34, arabic: 'لا تَكُنْ مِمَّنْ يَرْجُو الآخِرَةَ بِغَيْرِ عَمَلٍ', english: 'Do not be among those who hope for the next life without working for it, or who delay repentance because of long hopes.', source: 'Nahj al-Balagha', imam: 'Imam Ali ibn Abi Talib (AS)', imamAr: 'الإمام علي بن أبي طالب ع'),
    const HadithModel(id: 'hadith_honor_children', order: 35, arabic: 'أَكْرِمُوا أَوْلادَكُمْ وَأَحْسِنُوا آدَابَهُمْ', english: 'Honor your children and cultivate their character well, for they are a trust from Allah placed in your hands.', source: 'Bihar al-Anwar', imam: 'Prophet Muhammad (SAW)', imamAr: 'النبي محمد ﷺ'),
    const HadithModel(id: 'hadith_know_your_faults', order: 36, arabic: 'كَفَى بِالنَّفْسِ عِلْماً أَنْ تَعْرِفَ عُيُوبَهَا', english: "It is sufficient self-knowledge to recognize one's own faults — before pointing to the faults of others.", source: 'Ghurar al-Hikam', imam: 'Imam Ali ibn Abi Talib (AS)', imamAr: 'الإمام علي بن أبي طالب ع'),
  ];

  static final List<ImamModel> _bundledImams = [
    const ImamModel(id: 'imam_prophet', order: 0, nameEn: 'Prophet Muhammad', nameAr: 'النبي محمد ﷺ', title: 'Seal of the Prophets', role: 'The Final Prophet of Allah', bornHijri: '53 BH (570 CE)', diedHijri: '11 AH (632 CE)', birthplace: 'Mecca, Arabia', burialPlace: 'Madinah al-Munawwarah', biography: "The final messenger of Allah, sent as a mercy to all of creation. Born in Mecca into the noble tribe of Quraysh, he received the first revelation at age 40. Over 23 years he conveyed the Quran, established the Islamic community, and demonstrated through his Sunnah the complete way of life. His declaration at Ghadir Khumm of Imam Ali's succession is a cornerstone of Shia belief.", famousQuote: 'I am leaving among you two weighty things: the Book of Allah and my Ahl al-Bayt. They shall not separate until they meet me at the Pond of Kawthar.', famousQuoteAr: 'إِنِّي تَارِكٌ فِيكُمُ الثَّقَلَيْنِ: كِتَابَ اللهِ وَعِتْرَتِي أَهْلَ بَيْتِي', famousQuoteSource: 'Hadith al-Thaqalayn', accentKey: 'gold'),
    const ImamModel(id: 'imam_fatima', order: -1, nameEn: 'Lady Fatima Zahra', nameAr: 'السيدة فاطمة الزهراء ع', title: 'Al-Zahra — The Radiant', role: 'Daughter of the Prophet, Mother of the Imams', bornHijri: '5 BH (615 CE)', diedHijri: '11 AH (632 CE)', birthplace: 'Mecca, Arabia', burialPlace: 'Madinah — exact location unknown', biography: 'The beloved daughter of Prophet Muhammad (SAW) and Sayyida Khadijah (SA), wife of Imam Ali (AS), and mother of Imams Hasan and Husayn (AS). She is among the Fourteen Infallibles and holds the highest station among women in Islam. Her Fadak Sermon is a landmark defense of divine justice and Imamate. She passed away shortly after her father.', famousQuote: 'Allah has made faith a purification from polytheism, and prayer a cleansing from arrogance.', famousQuoteAr: 'جَعَلَ اللهُ الإِيمَانَ تَطْهِيراً مِنَ الشِّرْكِ وَالصَّلاةَ تَنْزِيهاً عَنِ الكِبْرِ', famousQuoteSource: 'Khutbat Fadak', accentKey: 'crimsonLight'),
    const ImamModel(id: 'imam_ali_1', order: 1, nameEn: 'Imam Ali ibn Abi Talib', nameAr: 'الإمام علي بن أبي طالب ع', title: "Amir al-Mu'minin — Commander of the Faithful", role: '1st Imam — Cousin and son-in-law of the Prophet', bornHijri: '23 BH (599 CE)', diedHijri: '40 AH (661 CE)', birthplace: "Inside the Ka'ba, Mecca", burialPlace: 'Najaf al-Ashraf, Iraq', biography: "The first Imam and designated successor of the Prophet Muhammad (SAW), born miraculously inside the Ka'ba. He was raised in the household of the Prophet and was the first male to accept Islam. Renowned for his unparalleled knowledge, justice, and valor, his wisdom is preserved in Nahj al-Balagha. He was martyred by Ibn Muljam while in prostration during Fajr prayer.", famousQuote: 'Knowledge is better than wealth. Knowledge guards you, while you must guard wealth.', famousQuoteAr: 'الْعِلْمُ خَيْرٌ مِنَ الْمَالِ، الْعِلْمُ يَحْرُسُكَ وَأَنْتَ تَحْرُسُ الْمَالَ', famousQuoteSource: 'Nahj al-Balagha', accentKey: 'gold'),
    const ImamModel(id: 'imam_hasan_2', order: 2, nameEn: 'Imam Hasan al-Mujtaba', nameAr: 'الإمام الحسن المجتبى ع', title: 'Al-Mujtaba — The Chosen', role: '2nd Imam — Son of Imam Ali (AS)', bornHijri: '3 AH (625 CE)', diedHijri: '50 AH (670 CE)', birthplace: 'Madinah al-Munawwarah', burialPlace: "Baqi' Cemetery, Madinah", biography: "The second Imam and elder grandson of the Prophet, praised in many hadiths alongside Imam Husayn as the leaders of the youth of Paradise. Renowned for his immense generosity and forbearance, he signed a peace treaty with Muawiyah to preserve Islam and protect the Muslim community. According to well-known Shia reports, he was martyred by poison in Madinah.", famousQuote: "Whoever places his trust in the excellence of Allah's choice will not wish to be in any state other than the one Allah has chosen for him.", famousQuoteAr: 'مَنْ تَوَكَّلَ عَلَى اللهِ كَفَاهُ', famousQuoteSource: 'Bihar al-Anwar', accentKey: 'emeraldBright'),
    const ImamModel(id: 'imam_husayn_3', order: 3, nameEn: 'Imam Husayn ibn Ali', nameAr: 'الإمام الحسين بن علي ع', title: 'Sayyid al-Shuhada — Master of Martyrs', role: '3rd Imam — Son of Imam Ali (AS)', bornHijri: '4 AH (626 CE)', diedHijri: '61 AH (680 CE)', birthplace: 'Madinah al-Munawwarah', burialPlace: 'Karbala, Iraq', biography: 'The third Imam and younger grandson of the Prophet, whose stand at Karbala on the 10th of Muharram (Ashura) in 61 AH defines Islamic conscience and resistance to oppression. He refused to pledge allegiance to the corrupt Yazid and rose with 72 companions and family members. His sacrifice revived Islam. Ziyarat to his shrine in Karbala is among the most meritorious acts in Shia Islam.', famousQuote: 'I did not rise out of arrogance, nor to cause mischief. I rose only to seek reform in the nation of my grandfather.', famousQuoteAr: 'لَمْ أَخْرُجْ أَشِراً وَلا بَطِراً، وَإِنَّمَا خَرَجْتُ لِطَلَبِ الإِصْلاحِ فِي أُمَّةِ جَدِّي', famousQuoteSource: 'Maqtal al-Husayn', accentKey: 'crimsonBright'),
    const ImamModel(id: 'imam_sajjad_4', order: 4, nameEn: 'Imam Ali ibn Husayn al-Sajjad', nameAr: 'الإمام علي بن الحسين زين العابدين ع', title: 'Zayn al-Abidin — Ornament of Worshippers', role: '4th Imam — Son of Imam Husayn (AS)', bornHijri: '38 AH (658 CE)', diedHijri: '95 AH (713 CE)', birthplace: 'Madinah al-Munawwarah', burialPlace: "Baqi' Cemetery, Madinah", biography: 'The fourth Imam, sole surviving son of Imam Husayn after Karbala. He preserved the message of Karbala through his sermons after being taken captive to Damascus. His spiritual legacy is the Sahifa al-Sajjadiyya, a book of sublime supplications often called "the Psalms of Islam." He was known for his extraordinary depth of worship and compassion for the poor.', famousQuote: 'Worship Allah as though you see Him; for even if you cannot see Him, He surely sees you.', famousQuoteAr: 'اعْبُدِ اللهَ كَأَنَّكَ تَرَاهُ، فَإِنْ لَمْ تَكُنْ تَرَاهُ فَإِنَّهُ يَرَاكَ', famousQuoteSource: 'Sahifa al-Sajjadiyya', accentKey: 'gold'),
    const ImamModel(id: 'imam_baqir_5', order: 5, nameEn: 'Imam Muhammad al-Baqir', nameAr: 'الإمام محمد الباقر ع', title: 'Al-Baqir — Splitter of Knowledge', role: '5th Imam — Son of Imam al-Sajjad (AS)', bornHijri: '57 AH (677 CE)', diedHijri: '114 AH (733 CE)', birthplace: 'Madinah al-Munawwarah', burialPlace: "Baqi' Cemetery, Madinah", biography: 'The fifth Imam, known as al-Baqir — "one who deeply explores knowledge." He established the first great Islamic university from Madinah, teaching hundreds of students in theology, jurisprudence, and Quranic sciences. His period marked an intellectual flourishing of Shia scholarship. He was martyred by poison under the Umayyad caliph Hisham ibn Abd al-Malik.', famousQuote: 'The believer is the brother of the believer — like a single body; if one part suffers, all other parts respond.', famousQuoteAr: 'الْمُؤْمِنُ أَخُو الْمُؤْمِنِ كَالْجَسَدِ الْوَاحِدِ', famousQuoteSource: 'al-Kafi', accentKey: 'emeraldBright'),
    const ImamModel(id: 'imam_sadiq_6', order: 6, nameEn: "Imam Ja'far al-Sadiq", nameAr: 'الإمام جعفر الصادق ع', title: 'Al-Sadiq — The Truthful', role: '6th Imam — Son of Imam al-Baqir (AS)', bornHijri: '83 AH (702 CE)', diedHijri: '148 AH (765 CE)', birthplace: 'Madinah al-Munawwarah', burialPlace: "Baqi' Cemetery, Madinah", biography: "The sixth Imam and a central teacher of the Ja'fari school whose circle of learning shaped Islamic law, theology, ethics, and the intellectual sciences. The Ja'fari school of Islamic law is named after him. He was martyred by poison under the Abbasid caliph al-Mansur.", famousQuote: 'Guard your tongue as you guard your gold and silver, for many have been destroyed by a careless word.', famousQuoteAr: 'احْفَظْ لِسَانَكَ كَمَا تَحْفَظُ ذَهَبَكَ وَفِضَّتَكَ', famousQuoteSource: 'al-Kafi', accentKey: 'gold'),
    const ImamModel(id: 'imam_kadhim_7', order: 7, nameEn: 'Imam Musa al-Kadhim', nameAr: 'الإمام موسى الكاظم ع', title: 'Al-Kadhim — The One Who Suppresses Anger', role: '7th Imam — Son of Imam al-Sadiq (AS)', bornHijri: '128 AH (745 CE)', diedHijri: '183 AH (799 CE)', birthplace: 'Al-Abwa, between Mecca and Madinah', burialPlace: 'Kadhimiyyah, Baghdad, Iraq', biography: 'The seventh Imam, renowned for his extraordinary patience and control of anger — hence his title al-Kadhim. He spent much of his life under Abbasid surveillance, imprisoned multiple times by Harun al-Rashid. He continued teaching from prison, and his shrine in Kadhimiyyah, Baghdad is one of the most visited in the world. He was martyred by poison in the prison of Sindi ibn Shahik.', famousQuote: 'Patience is to faith what the head is to the body. A body without a head perishes — and so does faith without patience.', famousQuoteAr: 'الصَّبْرُ مِنَ الإِيمَانِ بِمَنْزِلَةِ الرَّأْسِ مِنَ الْجَسَدِ', famousQuoteSource: 'Bihar al-Anwar', accentKey: 'emeraldBright'),
    const ImamModel(id: 'imam_ridha_8', order: 8, nameEn: 'Imam Ali al-Ridha', nameAr: 'الإمام علي الرضا ع', title: 'Al-Ridha — The Contented, The Pleasing', role: '8th Imam — Son of Imam al-Kadhim (AS)', bornHijri: '148 AH (765 CE)', diedHijri: '203 AH (818 CE)', birthplace: 'Madinah al-Munawwarah', burialPlace: 'Mashhad, Iran (Razavi Khorasan)', biography: "The eighth Imam, appointed heir apparent by the Abbasid caliph al-Ma'mun, a political maneuver to control him. Despite this, he used the position to spread Islamic knowledge. His debates with scholars of all religions are legendary. He was martyred by poison and buried in Tus (modern-day Mashhad), which became one of the holiest shrines in Shia Islam — visited by millions annually.", famousQuote: 'Faith is acknowledgment with the heart, confession with the tongue, and action with the limbs.', famousQuoteAr: 'الإِيمَانُ إِقْرَارٌ بِالْقَلْبِ وَإِقْرَارٌ بِاللِّسَانِ وَعَمَلٌ بِالأَرْكَانِ', famousQuoteSource: 'Uyun Akhbar al-Ridha', accentKey: 'gold'),
    const ImamModel(id: 'imam_jawad_9', order: 9, nameEn: 'Imam Muhammad al-Jawad', nameAr: 'الإمام محمد الجواد ع', title: 'Al-Jawad — The Generous, Al-Taqi — The Pious', role: '9th Imam — Son of Imam al-Ridha (AS)', bornHijri: '195 AH (811 CE)', diedHijri: '220 AH (835 CE)', birthplace: 'Madinah al-Munawwarah', burialPlace: 'Kadhimiyyah, Baghdad, Iraq', biography: "The ninth Imam, who assumed Imamate at age 8 — demonstrating that divine knowledge is not dependent on age. Despite his short life of only 25 years, he left a vast legacy of scholarly work and spiritual guidance. Forced to move to Baghdad by the Abbasid caliph al-Mu'tasim, he was martyred there by poison. His shrine is adjacent to that of Imam al-Kadhim in Kadhimiyyah.", famousQuote: 'Reliance on Allah is the price of every precious thing and the ladder to every elevated station.', famousQuoteAr: 'التَّوَكُّلُ عَلَى اللهِ ثَمَنٌ لِكُلِّ غَالٍ وَسُلَّمٌ إِلَى كُلِّ عَالٍ', famousQuoteSource: 'Bihar al-Anwar', accentKey: 'emeraldBright'),
    const ImamModel(id: 'imam_hadi_10', order: 10, nameEn: 'Imam Ali al-Hadi', nameAr: 'الإمام علي الهادي ع', title: 'Al-Hadi — The Guide, Al-Naqi — The Pure', role: '10th Imam — Son of Imam al-Jawad (AS)', bornHijri: '212 AH (828 CE)', diedHijri: '254 AH (868 CE)', birthplace: 'Al-Sariya, near Madinah', burialPlace: 'Samarra, Iraq', biography: 'The tenth Imam, forcibly relocated from Madinah to Samarra by the Abbasid caliph al-Mutawakkil to keep him under surveillance. He lived in Samarra under virtual house arrest for over 20 years, yet continued guiding his followers through letters and trusted representatives. His shrine in Samarra alongside that of his son Imam al-Askari is one of the holiest sites in Shia Islam.', famousQuote: 'The world is a marketplace: some people profit from it, while others incur loss.', famousQuoteAr: 'الدُّنْيَا سُوقٌ رَبِحَ فِيهَا قَوْمٌ وَخَسِرَ آخَرُونَ', famousQuoteSource: 'Tuhaf al-Uqul', accentKey: 'gold'),
    const ImamModel(id: 'imam_askari_11', order: 11, nameEn: 'Imam Hasan al-Askari', nameAr: 'الإمام الحسن العسكري ع', title: 'Al-Askari — Named after the garrison city of Samarra', role: '11th Imam — Son of Imam al-Hadi (AS)', bornHijri: '232 AH (846 CE)', diedHijri: '260 AH (874 CE)', birthplace: 'Madinah or Samarra', burialPlace: 'Samarra, Iraq', biography: "The eleventh Imam, who also lived under strict surveillance in Samarra. He led his community primarily through correspondence due to heavy Abbasid restrictions. He is the father of the 12th Imam, Imam al-Mahdi (AJ). He was martyred by poison at the young age of 28. The Askariyyain shrine in Samarra, destroyed and rebuilt multiple times, houses both his and his father's tombs.", famousQuote: 'Piety is an honor, knowledge is a treasure, silence is a light, and the peak of worship is modesty.', famousQuoteAr: 'التَّقْوَى شَرَفٌ وَالْعِلْمُ كَنْزٌ وَالصَّمْتُ نُورٌ', famousQuoteSource: 'Bihar al-Anwar', accentKey: 'emeraldBright'),
    const ImamModel(id: 'imam_mahdi_12', order: 12, nameEn: 'Imam Muhammad al-Mahdi', nameAr: 'الإمام محمد المهدي عجل الله فرجه', title: "Al-Mahdi — The Guided One, Al-Qa'im — The One Who Shall Rise", role: '12th Imam — Son of Imam al-Askari (AS)', bornHijri: '255 AH (869 CE)', diedHijri: 'Still alive — in Occultation', birthplace: 'Samarra, Iraq', burialPlace: 'In Occultation — awaiting divine command', biography: 'The twelfth and final Imam, currently in the Major Occultation (Ghayba al-Kubra) since 329 AH. Shia Muslims believe he is alive and will reappear at the end of times to fill the world with justice after it has been filled with oppression. His birth was concealed to protect him from the Abbasid caliph. He communicated with the Shia community through four deputies during the Minor Occultation.', famousQuote: 'We are not neglectful of your affairs, nor forgetful of your remembrance. Were it not for that, hardships would descend upon you.', famousQuoteAr: 'إِنَّا غَيْرُ مُهْمِلِينَ لِمُرَاعَاتِكُمْ وَلا نَاسِينَ لِذِكْرِكُمْ', famousQuoteSource: "Tawqi' al-Mahdi, Bihar al-Anwar", accentKey: 'gold'),
  ];

  static const List<DailyScriptureModel> _bundledScriptures = [
    DailyScriptureModel(id: 'scr_0',  order: 0,  text: 'Indeed, the righteous will be among gardens and rivers, in a seat of honor near a Mighty King.', ref: 'Quran 54:54-55'),
    DailyScriptureModel(id: 'scr_1',  order: 1,  text: 'And We have not sent you, [O Muhammad], except as a mercy to the worlds.', ref: 'Quran 21:107'),
    DailyScriptureModel(id: 'scr_2',  order: 2,  text: 'Is not Allah sufficient for His servant? Yet they frighten you with others besides Him.', ref: 'Quran 39:36'),
    DailyScriptureModel(id: 'scr_3',  order: 3,  text: 'Perhaps you hate something and it is good for you; and perhaps you love something and it is bad for you. And Allah knows, while you know not.', ref: 'Quran 2:216'),
    DailyScriptureModel(id: 'scr_4',  order: 4,  text: 'Indeed, Allah is with the patient ones.', ref: 'Quran 2:153'),
    DailyScriptureModel(id: 'scr_5',  order: 5,  text: 'So remember Me; I will remember you. And be grateful to Me and do not deny Me.', ref: 'Quran 2:152'),
    DailyScriptureModel(id: 'scr_6',  order: 6,  text: 'Indeed, the most noble of you in the sight of Allah is the most righteous of you.', ref: 'Quran 49:13'),
    DailyScriptureModel(id: 'scr_7',  order: 7,  text: 'And your Lord has decreed that you worship none but Him, and that you be dutiful to your parents.', ref: 'Quran 17:23'),
    DailyScriptureModel(id: 'scr_8',  order: 8,  text: 'Verily, with hardship comes ease.', ref: 'Quran 94:6'),
    DailyScriptureModel(id: 'scr_9',  order: 9,  text: 'And He is with you wherever you are. And Allah, of what you do, is Seeing.', ref: 'Quran 57:4'),
    DailyScriptureModel(id: 'scr_10', order: 10, text: 'Allah does not burden a soul beyond that it can bear.', ref: 'Quran 2:286'),
    DailyScriptureModel(id: 'scr_11', order: 11, text: 'And whoever relies upon Allah — then He is sufficient for him.', ref: 'Quran 65:3'),
    DailyScriptureModel(id: 'scr_12', order: 12, text: 'My mercy encompasses all things.', ref: 'Quran 7:156'),
    DailyScriptureModel(id: 'scr_13', order: 13, text: 'And when My servants ask you about Me — indeed I am near. I respond to the supplicant when he calls upon Me.', ref: 'Quran 2:186'),
    DailyScriptureModel(id: 'scr_14', order: 14, text: 'Whoever does righteousness, whether male or female, while being a believer — We will surely cause him to live a good life.', ref: 'Quran 16:97'),
    DailyScriptureModel(id: 'scr_15', order: 15, text: 'Indeed, Allah will not change the condition of a people until they change what is in themselves.', ref: 'Quran 13:11'),
    DailyScriptureModel(id: 'scr_16', order: 16, text: 'So do not weaken and do not grieve, and you will be superior if you are true believers.', ref: 'Quran 3:139'),
    DailyScriptureModel(id: 'scr_17', order: 17, text: 'O My servants who have transgressed against themselves, do not despair of the mercy of Allah. Indeed, Allah forgives all sins.', ref: 'Quran 39:53'),
    DailyScriptureModel(id: 'scr_18', order: 18, text: 'And whoever fears Allah — He will make for him a way out, and will provide for him from where he does not expect.', ref: 'Quran 65:2-3'),
    DailyScriptureModel(id: 'scr_19', order: 19, text: 'Do not lose hope in the mercy of Allah.', ref: 'Quran 12:87'),
    DailyScriptureModel(id: 'scr_20', order: 20, text: 'And We have certainly made the Quran easy to remember. So is there anyone who will be mindful?', ref: 'Quran 54:17'),
    DailyScriptureModel(id: 'scr_21', order: 21, text: 'And He found you lost and guided you.', ref: 'Quran 93:7'),
    DailyScriptureModel(id: 'scr_22', order: 22, text: 'And your Lord says: Call upon Me; I will respond to you.', ref: 'Quran 40:60'),
    DailyScriptureModel(id: 'scr_23', order: 23, text: 'And We have certainly honored the children of Adam.', ref: 'Quran 17:70'),
    DailyScriptureModel(id: 'scr_24', order: 24, text: 'And seek help through patience and prayer.', ref: 'Quran 2:45'),
    DailyScriptureModel(id: 'scr_25', order: 25, text: "Whoever does an atom's weight of good will see it.", ref: 'Quran 99:7'),
    DailyScriptureModel(id: 'scr_26', order: 26, text: 'Unquestionably, the help of Allah is near.', ref: 'Quran 2:214'),
    DailyScriptureModel(id: 'scr_27', order: 27, text: 'And whoever is grateful — his gratitude is only for the benefit of himself.', ref: 'Quran 31:12'),
  ];

  static const List<DailyRoleModelModel> _bundledRoleModels = [
    DailyRoleModelModel(id: 'rm_0',  order: 0,  text: 'Prophet Muhammad \u{FDFA} — Seal of the Prophets, whose household (Ahl al-Bayt) are a light and mercy for all of creation'),
    DailyRoleModelModel(id: 'rm_1',  order: 1,  text: "Imam Ali ibn Abi Talib (AS) — First Imam, Commander of the Faithful, gate of the city of the Prophet's knowledge, author of Nahj al-Balagha"),
    DailyRoleModelModel(id: 'rm_2',  order: 2,  text: 'Imam Hasan ibn Ali (AS) — Second Imam, grandson of the Prophet \u{FDFA}, leader of the youth of Paradise'),
    DailyRoleModelModel(id: 'rm_3',  order: 3,  text: 'Imam Hussain ibn Ali (AS) — Third Imam, Master of Martyrs, whose stand at Karbala is the eternal emblem of justice over oppression'),
    DailyRoleModelModel(id: 'rm_4',  order: 4,  text: 'Imam Ali ibn Hussain Zayn al-Abidin (AS) — Fourth Imam, the Adornment of the Worshippers, author of al-Sahifa al-Sajjadiyya'),
    DailyRoleModelModel(id: 'rm_5',  order: 5,  text: 'Imam Muhammad al-Baqir (AS) — Fifth Imam, Splitter of Knowledge, who opened the doors of Shia jurisprudence and theology'),
    DailyRoleModelModel(id: 'rm_6',  order: 6,  text: "Imam Ja'far al-Sadiq (AS) — Sixth Imam, the great teacher of the Ahl al-Bayt school, whose students shaped Islamic science and law"),
    DailyRoleModelModel(id: 'rm_7',  order: 7,  text: 'Imam Musa al-Kadhim (AS) — Seventh Imam, the Patient One, who endured long imprisonment with unwavering faith'),
    DailyRoleModelModel(id: 'rm_8',  order: 8,  text: 'Imam Ali al-Ridha (AS) — Eighth Imam, the Scholar of the Ahl al-Bayt, whose shrine in Mashhad is a place of pilgrimage and blessing'),
    DailyRoleModelModel(id: 'rm_9',  order: 9,  text: 'Imam Muhammad al-Jawad (AS) — Ninth Imam, the Generous One, who demonstrated divine wisdom from the youngest age'),
    DailyRoleModelModel(id: 'rm_10', order: 10, text: 'Imam Ali al-Hadi (AS) — Tenth Imam, who preserved the faith of his community under severe Abbasid pressure'),
    DailyRoleModelModel(id: 'rm_11', order: 11, text: 'Imam Hasan al-Askari (AS) — Eleventh Imam, who guided the community from Samarra and prepared the way for the occultation'),
    DailyRoleModelModel(id: 'rm_12', order: 12, text: 'Imam Muhammad al-Mahdi (AJ) — Twelfth Imam, the Awaited Saviour, the Living Proof of Allah on earth, may Allah hasten his reappearance'),
    DailyRoleModelModel(id: 'rm_13', order: 13, text: 'Lady Khadijah bint Khuwaylid (SA) — first wife of the Prophet \u{FDFA}, first believer, who supported the mission of Islam with her wealth and her soul'),
    DailyRoleModelModel(id: 'rm_14', order: 14, text: 'Lady Fatimah az-Zahra (SA) — daughter of the Prophet \u{FDFA}, wife of Imam Ali (AS), mother of the Imams, the Lady of Light, the best of women of all the worlds'),
    DailyRoleModelModel(id: 'rm_15', order: 15, text: 'Lady Zainab bint Ali (SA) — granddaughter of the Prophet \u{FDFA}, hero of Karbala, who carried the message of Imam Hussain (AS) to the world after his martyrdom'),
    DailyRoleModelModel(id: 'rm_16', order: 16, text: 'Lady Maryam (AS) — mother of Prophet Isa (AS), chosen and purified above all women, a model of devotion and purity in the Quran'),
    DailyRoleModelModel(id: 'rm_17', order: 17, text: 'Lady Asiya (AS) — wife of Pharaoh, who chose faith over the throne of the world, praised in the Quran as a model for all believers'),
    DailyRoleModelModel(id: 'rm_18', order: 18, text: 'Lady Ruqayyah bint Hussain (AS) — young daughter of Imam Hussain (AS), who endured the tragedy of Karbala as a child and is beloved by the faithful'),
    DailyRoleModelModel(id: 'rm_19', order: 19, text: 'Salman al-Farisi (RA) — beloved companion of the Prophet \u{FDFA}, the first Persian Muslim, deeply close to the Ahl al-Bayt, of whom the Prophet said: Salman is from us, the Ahl al-Bayt'),
    DailyRoleModelModel(id: 'rm_20', order: 20, text: 'Abu Dharr al-Ghifari (RA) — companion of the Prophet \u{FDFA} who stood firmly with Imam Ali (AS), champion of the poor and oppressed, model of uncompromising truthfulness'),
    DailyRoleModelModel(id: 'rm_21', order: 21, text: 'Ammar ibn Yasir (RA) — companion of the Prophet \u{FDFA}, son of the first martyrs of Islam, who fought and was martyred alongside Imam Ali (AS) at the Battle of Siffin'),
    DailyRoleModelModel(id: 'rm_22', order: 22, text: 'Maytham al-Tammar (RA) — loyal companion of Imam Ali (AS), who endured martyrdom rather than renounce his love for the Ahl al-Bayt'),
    DailyRoleModelModel(id: 'rm_23', order: 23, text: 'Hujr ibn Adi al-Kindi (RA) — devoted companion of Imam Ali (AS), martyred by Muawiyah for refusing to curse the Commander of the Faithful'),
    DailyRoleModelModel(id: 'rm_24', order: 24, text: 'Mukhtar al-Thaqafi (RA) — who rose to avenge the martyrs of Karbala and brought justice to the killers of Imam Hussain (AS)'),
    DailyRoleModelModel(id: 'rm_25', order: 25, text: 'Abbas ibn Ali (AS) — standard-bearer at Karbala, brother and loyal protector of Imam Hussain (AS), whose devotion is a model of selfless love'),
    DailyRoleModelModel(id: 'rm_26', order: 26, text: 'Ali al-Akbar ibn Hussain (AS) — firstborn son of Imam Hussain (AS), who resembled the Prophet \u{FDFA} most closely and was martyred at Karbala in the prime of youth'),
    DailyRoleModelModel(id: 'rm_27', order: 27, text: 'Ali al-Asghar (AS) — the infant son of Imam Hussain (AS), the youngest martyr of Karbala, whose innocent blood cries out against injustice'),
    DailyRoleModelModel(id: 'rm_28', order: 28, text: 'Hurr ibn Yazid al-Riyahi (RA) — the commander who blocked Imam Hussain (AS) yet repented on the morning of Ashura and died defending the Imam, a model of true Tawbah'),
    DailyRoleModelModel(id: 'rm_29', order: 29, text: 'Bilal ibn Rabah (RA) — the first muezzin of Islam, a freed slave whose faith overcame all oppression, beloved by the Prophet \u{FDFA} and the Ahl al-Bayt'),
    DailyRoleModelModel(id: 'rm_30', order: 30, text: 'Sumayya bint Khabbab (RA) — first martyr of Islam, mother of Ammar ibn Yasir, who gave her life for the truth of La ilaha illallah'),
    DailyRoleModelModel(id: 'rm_31', order: 31, text: 'Jafar ibn Abi Talib (RA) — cousin of the Prophet \u{FDFA} and brother of Imam Ali (AS), Dhul-Janahayn, who was martyred at the Battle of Mu\'tah'),
    DailyRoleModelModel(id: 'rm_32', order: 32, text: 'Zayd ibn Ali ibn Hussain (RA) — grandson of Imam Hussain (AS) and great scholar who rose against Umayyad tyranny and was martyred, revered by Shia Muslims'),
    DailyRoleModelModel(id: 'rm_33', order: 33, text: 'Prophet Ibrahim (AS) — Friend of Allah, father of the Prophets, who smashed idols and submitted to Allah even when commanded to sacrifice his son'),
    DailyRoleModelModel(id: 'rm_34', order: 34, text: "Prophet Musa (AS) — Kalimullah, who led his people from Pharaoh's oppression to freedom through steadfast faith and divine guidance"),
    DailyRoleModelModel(id: 'rm_35', order: 35, text: "Prophet Isa (AS) — Spirit of Allah, born of Lady Maryam (AS), who healed the sick and raised the dead by Allah's permission"),
    DailyRoleModelModel(id: 'rm_36', order: 36, text: 'Prophet Yusuf (AS) — whose patience through betrayal, slavery, and imprisonment is one of the most beautiful stories in the Quran'),
    DailyRoleModelModel(id: 'rm_37', order: 37, text: 'Prophet Dawud (AS) — given the Zabur, who combined the roles of prophet and just ruler, and whose Psalms of praise echo through creation'),
    DailyRoleModelModel(id: 'rm_38', order: 38, text: 'Prophet Sulayman (AS) — who was granted dominion over wind, jinn, and creation, yet remained humble and grateful before Allah'),
    DailyRoleModelModel(id: 'rm_39', order: 39, text: 'Prophet Nuh (AS) — who called his people to Allah for 950 years with patience and perseverance in the face of total rejection'),
    DailyRoleModelModel(id: 'rm_40', order: 40, text: 'Prophet Yunus (AS) — who turned to Allah in the depths of darkness with the words: There is no god but You, glory be to You; I was indeed of the wrongdoers'),
    DailyRoleModelModel(id: 'rm_41', order: 41, text: 'Prophet Ayub (AS) — the supreme model of Sabr, who endured immense suffering without complaint and was restored by Allah\'s boundless mercy'),
    DailyRoleModelModel(id: 'rm_42', order: 42, text: 'Shaykh al-Mufid (RA) — the great Shia theologian of Baghdad, who systematised Imami theology and defended Shia doctrine with brilliant scholarship'),
    DailyRoleModelModel(id: 'rm_43', order: 43, text: 'Allamah al-Hilli (RA) — the foremost Shia jurist and theologian of his age, who strengthened Shia jurisprudence and engaged the great intellectual debates of his time'),
    DailyRoleModelModel(id: 'rm_44', order: 44, text: "Sheikh al-Tusi (RA) — Shaykh al-Ta'ifa, the foundational Shia scholar whose works in fiqh, hadith, and theology remain authoritative to this day"),
    DailyRoleModelModel(id: 'rm_45', order: 45, text: 'Shahid al-Awwal — Muhammad ibn Makki al-Amili (RA), the First Martyr of Shia jurisprudence, whose al-Lum\'ah al-Dimashqiyyah remains a cornerstone of Shia fiqh'),
    DailyRoleModelModel(id: 'rm_46', order: 46, text: "Allamah Tabataba'i (RA) — the great 20th century Shia philosopher and author of al-Mizan, the monumental Quranic exegesis of the modern era"),
    DailyRoleModelModel(id: 'rm_47', order: 47, text: 'Shaykh al-Kulayni (RA) — the great Shia hadith scholar who compiled al-Kafi and preserved the transmitted wisdom of the Ahl al-Bayt'),
    DailyRoleModelModel(id: 'rm_48', order: 48, text: 'Shahid Mutahhari (RA) — 20th century Shia scholar and martyr, whose writings on Islamic philosophy, ethics, and society continue to guide millions'),
    DailyRoleModelModel(id: 'rm_49', order: 49, text: 'Sayyid Muhammad Baqir al-Sadr (RA) — visionary Shia scholar and martyr, whose works in Islamic economics and philosophy broke new intellectual ground'),
    DailyRoleModelModel(id: 'rm_50', order: 50, text: 'Umm Salamah (RA) — noble wife of the Prophet \u{FDFA}, deeply devoted to the Ahl al-Bayt, who narrated many hadith and was a pillar of wisdom in the early community'),
    DailyRoleModelModel(id: 'rm_51', order: 51, text: 'Abdullah ibn Abbas (RA) — cousin of the Prophet \u{FDFA}, ocean of knowledge in Quranic exegesis, who remained close to Imam Ali (AS)'),
    DailyRoleModelModel(id: 'rm_52', order: 52, text: 'Muadh ibn Jabal (RA) — companion of the Prophet \u{FDFA} renowned for his knowledge of halal and haram, and his deep devotion to learning'),
    DailyRoleModelModel(id: 'rm_53', order: 53, text: 'Musab ibn Umayr (RA) — the first ambassador of Islam, who sacrificed wealth and family for the truth of the faith'),
    DailyRoleModelModel(id: 'rm_54', order: 54, text: 'Sayyid Ibn Tawus (RA) — the great Shia scholar of devotion, ziyarat, and prayer whose works nourished centuries of worship'),
    DailyRoleModelModel(id: 'rm_55', order: 55, text: 'Mulla Sadra (RA) — the major Shia philosopher whose synthesis of reason, scripture, and spiritual insight shaped later Islamic thought'),
    DailyRoleModelModel(id: 'rm_56', order: 56, text: 'Ibn Sina — Abu Ali al-Husayn ibn Sina (RH), the great Islamic philosopher and physician of Persian heritage whose Canon of Medicine shaped world science'),
    DailyRoleModelModel(id: 'rm_57', order: 57, text: 'Al-Biruni (RH) — the brilliant polymath of the Islamic Golden Age, a Persian scholar who advanced mathematics, astronomy, and the study of cultures'),
    DailyRoleModelModel(id: 'rm_58', order: 58, text: 'Ibn Khaldun (RH) — the great North African Islamic historian and social thinker, founder of the philosophy of history and sociology'),
    DailyRoleModelModel(id: 'rm_59', order: 59, text: 'Lady Nafisa bint al-Hasan (SA) — great-granddaughter of Imam Hasan (AS), renowned for her knowledge, piety, and intercession, deeply revered in the Shia tradition'),
  ];

  static const List<DailyReflectionModel> _bundledReflections = [
    DailyReflectionModel(id: 'ref_0',  order: 0,  text: "As this day closes, consider one moment where Allah's mercy was evident."),
    DailyReflectionModel(id: 'ref_1',  order: 1,  text: 'Bring before Allah whatever weighed on your heart today.'),
    DailyReflectionModel(id: 'ref_2',  order: 2,  text: 'Name one blessing from this day and express gratitude to Allah.'),
    DailyReflectionModel(id: 'ref_3',  order: 3,  text: "Rest in the knowledge that you are held in Allah's infinite care."),
    DailyReflectionModel(id: 'ref_4',  order: 4,  text: 'Reflect on where you felt called to show compassion and kindness today.'),
    DailyReflectionModel(id: 'ref_5',  order: 5,  text: "Let go of what you cannot control and trust in Allah's perfect plan."),
    DailyReflectionModel(id: 'ref_6',  order: 6,  text: "As the day draws to a close, receive peace in remembrance of Allah."),
    DailyReflectionModel(id: 'ref_7',  order: 7,  text: 'Consider how you honored your prayers today, and thank Allah for each one.'),
    DailyReflectionModel(id: 'ref_8',  order: 8,  text: 'Reflect on a moment where patience (Sabr) guided your actions today.'),
    DailyReflectionModel(id: 'ref_9',  order: 9,  text: "Ask forgiveness for any shortcoming today — Allah's mercy is boundless."),
    DailyReflectionModel(id: 'ref_10', order: 10, text: 'Name one person you showed kindness to today and make dua for them.'),
    DailyReflectionModel(id: 'ref_11', order: 11, text: 'Sit with gratitude: what did Allah provide today that you did not ask for?'),
    DailyReflectionModel(id: 'ref_12', order: 12, text: 'Reflect on a verse from the Quran that speaks to where you are right now.'),
    DailyReflectionModel(id: 'ref_13', order: 13, text: 'Consider how you used your time today — and offer tomorrow to Allah.'),
    DailyReflectionModel(id: 'ref_14', order: 14, text: 'Rest knowing that whatever hardship came today, Allah was with you through it.'),
    DailyReflectionModel(id: 'ref_15', order: 15, text: "Think of one way you served your family or community today for Allah's sake."),
    DailyReflectionModel(id: 'ref_16', order: 16, text: 'As night falls, make Tawbah — Allah loves those who turn back to Him.'),
    DailyReflectionModel(id: 'ref_17', order: 17, text: "Reflect on the beauty Allah placed in your day, however small."),
    DailyReflectionModel(id: 'ref_18', order: 18, text: 'Consider what you learned today and how it draws you closer to Allah.'),
    DailyReflectionModel(id: 'ref_19', order: 19, text: "Let the day's worries rest with Allah — He carries what you cannot."),
    DailyReflectionModel(id: 'ref_20', order: 20, text: 'Think of a moment today where you could have chosen better, and learn from it gently.'),
    DailyReflectionModel(id: 'ref_21', order: 21, text: 'Make dua for those who are struggling — your prayer is a gift to them.'),
    DailyReflectionModel(id: 'ref_22', order: 22, text: 'Recall a blessing you often overlook and take a moment to thank Allah for it.'),
    DailyReflectionModel(id: 'ref_23', order: 23, text: 'Reflect on your intentions today — were they for Allah? Tomorrow, begin again.'),
    DailyReflectionModel(id: 'ref_24', order: 24, text: "As the night quiets, listen for Allah's nearness in the stillness."),
    DailyReflectionModel(id: 'ref_25', order: 25, text: 'Consider where you found strength today — that strength is from Allah.'),
    DailyReflectionModel(id: 'ref_26', order: 26, text: "Name one thing you will do tomorrow, for Allah's sake, that you did not do today."),
    DailyReflectionModel(id: 'ref_27', order: 27, text: 'As you prepare for rest, entrust your soul to Allah — He is the best of guardians.'),
  ];

  // Duas bundled fallback — uses the existing kDuaLibrary from duas_data.dart
  // converted to DuaModel at runtime. Declared as getter to avoid circular imports.
  static List<DuaModel> get _bundledDuas => _buildBundledDuas();

  static List<DuaModel> _buildBundledDuas() {
    // Import is done lazily to avoid circular dependency issues.
    // The actual content is already in duas_data.dart; we reference it here.
    // If you add duas to duas_data.dart, add the DuaModel equivalent below.
    return [
      DuaModel(
        id: 'tasbih_zahra', order: 1,
        nameEn: 'Tasbih of Sayyida Fatima (SA)',
        nameAr: 'تسبيح السيدة فاطمة الزهراء',
        category: 'tasbih',
        recommendedTime: 'After every prayer, especially before sleeping',
        taughtBy: 'Taught by the Holy Prophet (SAW) to Lady Fatima (SA)',
        shortDesc: '34 × Allāhu Akbar · 33 × Alḥamdulillāh · 33 × Subḥānallāh',
        hasAiExplain: true, isTasbih: true,
        sections: const [
          DuaSectionModel(sectionTitle: 'The Tasbih', arabic: 'اللَّهُ أَكْبَرُ × ٣٤\nالْحَمْدُ لِلَّهِ × ٣٣\nسُبْحَانَ اللَّهِ × ٣٣', transliteration: 'Allāhu Akbar × 34\nAlḥamdu lillāh × 33\nSubḥāna-llāh × 33', translation: 'Allah is the Greatest × 34\nAll praise belongs to Allah × 33\nGlory be to Allah × 33'),
          DuaSectionModel(sectionTitle: 'Why This Tasbih?', arabic: '', transliteration: '', translation: "The Holy Prophet (SAW) taught this dhikr to his beloved daughter Fatima al-Zahra (SA) when she asked for a servant to ease her household burdens. He told her: \"This tasbih is better for you than a servant.\" Imam al-Sadiq (AS) said that reciting it before sleep is more beloved to him than a thousand rak'at of prayer. The well-known order in Twelver Shia practice is Allāhu Akbar (34 times), then Alḥamdulillāh (33 times), then Subḥānallāh (33 times)."),
        ],
      ),
      // Additional bundled duas are loaded from duas_data.dart at app startup.
      // The repository will serve Firestore data after first successful fetch.
    ];
  }

  // ── Wisdom quotes ──────────────────────────────────────────────────────────

  static const List<WisdomModel> _bundledWisdom = [
    WisdomModel(id: 'w00', order: 0,  quote: 'The best of people is the one most beneficial to others.',                                                                                                source: 'Imam Ali (AS)'),
    WisdomModel(id: 'w01', order: 1,  quote: 'Silence is the garden of contemplation.',                                                                                                               source: 'Imam Ali (AS)'),
    WisdomModel(id: 'w02', order: 2,  quote: 'Do not be a slave to others when Allah has created you free.',                                                                                           source: 'Imam Ali (AS)'),
    WisdomModel(id: 'w03', order: 3,  quote: 'Whoever knows himself, knows his Lord.',                                                                                                                source: 'Imam Ali (AS)'),
    WisdomModel(id: 'w04', order: 4,  quote: 'If eyes were to weep for something that deserves weeping, they should weep for the death of the heart.',                                                 source: 'Imam Ali (AS)'),
    WisdomModel(id: 'w05', order: 5,  quote: 'Be patient, for patience is to faith as the head is to the body.',                                                                                      source: 'Imam Ali (AS)'),
    WisdomModel(id: 'w06', order: 6,  quote: 'Teach your tongue to say "I do not know," lest you say what you do not know.',                                                                          source: 'Imam Ali (AS)'),
    WisdomModel(id: 'w07', order: 7,  quote: 'The tongue of the wise man lies behind his heart.',                                                                                                     source: 'Imam Ali (AS)'),
    WisdomModel(id: 'w08', order: 8,  quote: 'Generosity is that which comes from oneself without request.',                                                                                          source: 'Imam Husayn (AS)'),
    WisdomModel(id: 'w09', order: 9,  quote: 'If you do not believe in religion and do not fear the Day of Judgment, then at least be free in your world.',                                           source: 'Imam Husayn (AS)'),
    WisdomModel(id: 'w10', order: 10, quote: 'Death is nothing but a bridge which you cross from misery to joy.',                                                                                     source: 'Imam Husayn (AS)'),
    WisdomModel(id: 'w11', order: 11, quote: 'People are slaves to this world; religion is only on their tongues. They circle it as long as it sustains them, but when trials come, the truly religious are few.', source: 'Imam Husayn (AS)'),
    WisdomModel(id: 'w12', order: 12, quote: 'The most generous person is the one who gives to those who have no hope in him.',                                                                        source: 'Imam Husayn (AS)'),
    WisdomModel(id: 'w13', order: 13, quote: 'Supplicate Allah but know that Allah does not respond to a heart that is heedless and inattentive.',                                                     source: 'Imam al-Sadiq (AS)'),
    WisdomModel(id: 'w14', order: 14, quote: 'Be careful to have truthful friends and try to obtain them, for they are your support in ease and your defense in hardship.',                            source: 'Imam al-Sadiq (AS)'),
    WisdomModel(id: 'w15', order: 15, quote: 'The most complete of you in intellect is the best of you in character.',                                                                                source: 'Imam al-Sadiq (AS)'),
    WisdomModel(id: 'w16', order: 16, quote: 'Whoever is content with what Allah has apportioned him is the richest of people.',                                                                      source: 'Imam al-Sadiq (AS)'),
    WisdomModel(id: 'w17', order: 17, quote: 'Sit with the wise, even if that means sitting in silence.',                                                                                             source: 'Imam al-Sadiq (AS)'),
    WisdomModel(id: 'w18', order: 18, quote: 'One who has three qualities will not regret: avoiding haste, consulting others, and trusting Allah.',                                                    source: 'Imam al-Baqir (AS)'),
    WisdomModel(id: 'w19', order: 19, quote: 'No one can truly worship Allah without knowing Him.',                                                                                                   source: 'Imam al-Baqir (AS)'),
    WisdomModel(id: 'w20', order: 20, quote: 'Beware of laziness and boredom, for they are the keys to every evil.',                                                                                  source: 'Imam al-Ridha (AS)'),
    WisdomModel(id: 'w21', order: 21, quote: 'Faith is acknowledgment with the heart, confession with the tongue, and action with the limbs.',                                                        source: 'Imam al-Ridha (AS)'),
    WisdomModel(id: 'w22', order: 22, quote: 'Friendship is not sincere unless it passes through three stages: if you did not achieve it from him in hardship, do not count it in ease.',              source: 'Imam al-Kadhim (AS)'),
    WisdomModel(id: 'w23', order: 23, quote: 'The likeness of this world is like a serpent — soft to the touch but with deadly venom inside.',                                                        source: 'Imam Ali (AS)'),
    WisdomModel(id: 'w24', order: 24, quote: 'How many a lesson there is, yet how few who learn.',                                                                                                   source: 'Imam Ali (AS)'),
    WisdomModel(id: 'w25', order: 25, quote: 'Take from this world what comes to you and turn away from what turns away from you.',                                                                    source: 'Imam Sajjad (AS)'),
    WisdomModel(id: 'w26', order: 26, quote: 'Rights are the most binding of all things, and whoever fulfils them most with people is most trustworthy before Allah.',                                 source: 'Imam Sajjad (AS)'),
    WisdomModel(id: 'w27', order: 27, quote: 'He who does not have wisdom does not have religion, and he who does not have generosity does not have manners.',                                         source: 'Imam Hasan (AS)'),
    WisdomModel(id: 'w28', order: 28, quote: 'Do not make an enemy of someone until you know what is between him and Allah.',                                                                         source: 'Imam Ali al-Hadi (AS)'),
    WisdomModel(id: 'w29', order: 29, quote: 'The world is a market in which some profit and others lose.',                                                                                           source: 'Imam Ali (AS)'),
    WisdomModel(id: 'w30', order: 30, quote: 'O son of Adam, if you collect more than what you need, you are only keeping it for others.',                                                            source: 'Imam Ali (AS)'),
  ];

  // ── Pilgrimage steps ───────────────────────────────────────────────────────

  static const List<PilgrimageStepModel> _bundledHajjSteps = [
    PilgrimageStepModel(id: 'hajj_01', order: 1,  type: 'hajj', arabic: 'الإحرام',            location: 'Miqat',                      dayLabel: 'Day 1 — 8th Dhul Hijjah',        readTimeMin: 3, title: 'Ihram',                          body: "Before reaching the Miqat (boundary stations), pilgrims enter a sacred state called Ihram by wearing two white seamless garments (for men) or modest dress (for women), making the intention (niyyah), and reciting the Talbiyah: 'Labbayk Allahumma Labbayk.' In this state, certain acts become prohibited, including cutting hair, using perfume, and engaging in marital relations. The white garments symbolise equality before Allah — no distinction of wealth, rank, or origin."),
    PilgrimageStepModel(id: 'hajj_02', order: 2,  type: 'hajj', arabic: 'الطواف وصلاة الطواف',         location: 'Masjid al-Haram, Mecca',     dayLabel: 'Meccan rites — timing varies',        readTimeMin: 3, title: 'Tawaf and Prayer', body: 'During the Meccan rites of Hajj, pilgrims perform the obligatory tawaf and its two-rak\'ah prayer in ritual purity. In Ja\'fari fiqh, the major tawafs of Hajj are Tawaf al-Hajj and Tawaf al-Nisa; follow your marja\' and group guide for their timing.'),
    PilgrimageStepModel(id: 'hajj_03', order: 3,  type: 'hajj', arabic: 'السعي',              location: 'Safa & Marwa, Mecca',        dayLabel: 'Day 1 — 8th Dhul Hijjah',        readTimeMin: 3, title: "Sa'i",                           body: "Sa'i commemorates the desperate search of Lady Hajar for water for her infant son Ismail (AS) between the hills of Safa and Marwa. Pilgrims walk briskly seven times between these two hills. It is a powerful reminder of a mother's devotion, trust in Allah, and how divine mercy responds to sincere need — the Zamzam well emerged as a result of her effort."),
    PilgrimageStepModel(id: 'hajj_04', order: 4,  type: 'hajj', arabic: 'الوقوف بعرفة',       location: 'Plain of Arafat',            dayLabel: 'Day 2 — 9th Dhul Hijjah',        readTimeMin: 4, title: 'Wuquf at Arafat',               body: "The standing at the plain of Arafat on the 9th of Dhul Hijjah is the spiritual heart of Hajj — so central that the Prophet (SAW) said 'Hajj is Arafat.' From midday until sunset, pilgrims engage in supplication, remembrance of Allah, and reflection on the Day of Judgement. It is said that on this day, more people are forgiven by Allah than on any other day of the year."),
    PilgrimageStepModel(id: 'hajj_05', order: 5,  type: 'hajj', arabic: 'المزدلفة',           location: 'Muzdalifah',                 dayLabel: 'Night of 10th Dhul Hijjah',       readTimeMin: 2, title: 'Muzdalifah',                     body: 'After sunset at Arafat, pilgrims move to Muzdalifah, where the Maghrib and Isha prayers are combined. They spend the night under the open sky and collect small pebbles for the upcoming stoning ritual. This night of simplicity — sleeping on the earth — deepens the experience of equality and humility before Allah.'),
    PilgrimageStepModel(id: 'hajj_06', order: 6,  type: 'hajj', arabic: 'رمي الجمرات',        location: 'Mina',                       dayLabel: 'Day 3 — 10th Dhul Hijjah (Eid)', readTimeMin: 3, title: 'Rami al-Jamarat (Stoning)',      body: "On the 10th of Dhul Hijjah (Eid al-Adha), pilgrims throw seven pebbles at the largest of three stone pillars in Mina, symbolising the rejection of Shaytan as done by Ibrahim (AS). Over the following days (11th–13th), all three pillars are stoned. This act is a declaration of the pilgrim's resolve to reject evil in all its forms."),
    PilgrimageStepModel(id: 'hajj_07', order: 7,  type: 'hajj', arabic: 'القربان',            location: 'Mina',                       dayLabel: 'Day 3 — 10th Dhul Hijjah',       readTimeMin: 2, title: 'Qurbani (Sacrifice)',            body: "After stoning, pilgrims perform Qurbani — the sacrifice of a sheep, goat, cow, or camel — in remembrance of Ibrahim's (AS) willingness to sacrifice his son Ismail (AS), and Allah's mercy in substituting a ram. The meat is distributed to the poor. This act teaches that true devotion means surrendering what is most precious at the command of Allah."),
    PilgrimageStepModel(id: 'hajj_08', order: 8,  type: 'hajj', arabic: 'الحلق أو التقصير',  location: 'Mina',                       dayLabel: 'Day 3 — 10th Dhul Hijjah',       readTimeMin: 2, title: 'Halq or Taqsir (Hair Cutting)',  body: "Men shave their heads (Halq) or cut a portion of hair (Taqsir), while women cut a small portion of hair. This act marks the partial exit from the state of Ihram, symbolising renewal, rebirth, and the shedding of one's past sins. After this, most Ihram restrictions are lifted."),
    PilgrimageStepModel(id: 'hajj_09', order: 9,  type: 'hajj', arabic: 'طواف الإفاضة',       location: 'Masjid al-Haram, Mecca',     dayLabel: 'Days 3–4 (10th–12th)',           readTimeMin: 4, title: 'Tawaf al-Ifadah',               body: "Pilgrims return to the Kaaba in Mecca to perform Tawaf al-Ifadah — the essential Tawaf that forms the core rite of Hajj. This is followed by Sa'i again between Safa and Marwa. After completing these rites, pilgrims are fully released from the state of Ihram."),
    PilgrimageStepModel(id: 'hajj_10', order: 10, type: 'hajj', arabic: 'المبيت بمنى',        location: 'Mina',                       dayLabel: 'Days 4–5 (11th–13th)',           readTimeMin: 2, title: 'Nights in Mina',                body: 'Pilgrims spend two or three nights in Mina (11th–13th Dhul Hijjah), stoning the three pillars each day. These days, known as Ayyam al-Tashreeq, are days of celebration, remembrance of Allah, and communal gathering of the global Muslim community — a living expression of the unity of the Ummah.'),
    PilgrimageStepModel(id: 'hajj_11', order: 11, type: 'hajj', arabic: 'طواف النساء',        location: 'Masjid al-Haram, Mecca',     dayLabel: 'Meccan rites — timing varies',   readTimeMin: 3, title: 'Tawaf al-Nisa', body: 'In Ja\'fari fiqh, Tawaf al-Nisa and its two-rak\'ah prayer are required before marital intimacy becomes lawful again after Hajj. Its timing within the Meccan rites can vary according to a pilgrim\'s marja\' and travel arrangements.'),
  ];

  static const List<PilgrimageStepModel> _bundledUmrahSteps = [
    PilgrimageStepModel(id: 'umrah_01', order: 1, type: 'umrah', arabic: 'الإحرام',           location: 'Miqat',                  readTimeMin: 3, title: 'Ihram',          body: 'As with Hajj, Umrah begins at the Miqat where pilgrims enter the sacred state of Ihram. Men wear the two white garments and women wear modest dress. The intention (niyyah) is made specifically for Umrah, followed by the recitation of the Talbiyah. All Ihram prohibitions apply from this point until Taqsir is performed.'),
    PilgrimageStepModel(id: 'umrah_02', order: 2, type: 'umrah', arabic: 'الطواف',            location: 'Masjid al-Haram, Mecca', readTimeMin: 3, title: 'Tawaf',          body: 'Pilgrims circumambulate the Kaaba seven times in a counter-clockwise direction, beginning at the Black Stone. Two units of prayer are offered after completion at Maqam Ibrahim. Tawaf is among the essential rites of Umrah in Ja\'fari fiqh, and each circuit is a declaration of tawhid.'),
    PilgrimageStepModel(id: 'umrah_03', order: 3, type: 'umrah', arabic: 'السعي',             location: 'Safa & Marwa, Mecca',    readTimeMin: 3, title: "Sa'i",           body: "Pilgrims walk seven times between the hills of Safa and Marwa, commemorating Lady Hajar's search for water. Beginning at Safa and ending at Marwa, this rite honours her faith and perseverance. The Zamzam well, which miraculously appeared in response to her efforts, is nearby and pilgrims traditionally drink from it throughout their stay."),
    PilgrimageStepModel(id: 'umrah_04', order: 4, type: 'umrah', arabic: 'الحلق أو التقصير', location: 'Mecca (after Sa\'i)',     readTimeMin: 2, title: 'Halq or Taqsir', body: 'After Sa\'i, the pilgrim trims or shaves the hair according to the type of Umrah being performed. This ends Ihram for Umrah al-Tamattu\'. In Umrah al-Mufradah, consult your marja\' because Tawaf al-Nisa and its prayer still remain before the rites are fully completed.'),
  ];

  // ── AI prompt slots ────────────────────────────────────────────────────────

  static const List<PromptSlotModel> _bundledPromptSlots = [
    PromptSlotModel(id: 'ps_01', order: 1,  categoryId: 'daily_guidance',         text: 'Write a short, practical daily guidance rooted in Shia Islamic faith — grounded in the Quran and the teachings of the Prophet Muhammad and the Ahl al-Bayt. Choose a fresh angle each time: a virtue from Islamic ethics, wisdom from one of the twelve Imams, a teaching from Nahj al-Balagha, or a quiet practice from the Shia tradition. Include one Quran verse (Surah:Ayah) and a 1-2 sentence reflection to carry through the day. Optionally connect it to the Islamic calendar or an important date if relevant.'),
    PromptSlotModel(id: 'ps_02', order: 2,  categoryId: 'faith_trust',            text: "Write a short Islamic reflection on Iman (faith) and trust in Allah's plan (Tawakkul). Root it in the Quran, the example of Prophet Muhammad ﷺ, and the steadfast faith modelled by the Ahl al-Bayt and the example of the Imams. Vary the theme each time: trusting Allah during uncertainty, relying on divine wisdom, patience in trials, or quiet perseverance in everyday life as demonstrated by Imam Ali (AS) and the Imams of the Ahl al-Bayt. Include one Quran verse and one honest step for today drawn from Shia Islamic spiritual wisdom."),
    PromptSlotModel(id: 'ps_03', order: 3,  categoryId: 'prayer_reflection',      text: "Write a short Islamic prayer reflection rooted in Salah, Dua, or Dhikr within the Shia tradition. Vary the form each time: a supplication from Mafatih al-Jinan or the duas of the Imams, reflection on the five daily prayers as observed in three prayer times (combining Dhuhr with Asr, and Maghrib with Isha), the spiritual virtues of Salat al-Layl (the recommended night prayer beloved by the Ahl al-Bayt), the significance of praying on a turbah (prayer stone from sacred earth), the importance of Qunut in prayer, or a heartfelt dua from the tradition of Imam Zayn al-Abidin's Sahifa al-Sajjadiyya. Include one Quran verse and briefly name the prayer form or supplication source used."),
    PromptSlotModel(id: 'ps_04', order: 4,  categoryId: 'hope_difficult_times',   text: 'Write an Islamic reflection on patience (Sabr) and hope during hardship. Draw from Quranic teachings about trials, the perseverance of the Prophets, and the mercy of Allah in difficult moments. Vary the angle each time. Include one Quran verse and one encouraging perspective from Islamic tradition.'),
    PromptSlotModel(id: 'ps_05', order: 5,  categoryId: 'forgiveness',            text: "Write a wise Islamic reflection about seeking forgiveness (Tawbah) and Allah's mercy. Draw from Quranic teachings on repentance, Allah's compassion, and the forgiving example of Prophet Muhammad ﷺ. Vary the theme: turning back to Allah, forgiving others, healing relationships, or believing in Allah's mercy after mistakes. Include one Quran verse and one concrete step."),
    PromptSlotModel(id: 'ps_06', order: 6,  categoryId: 'love_compassion',        text: 'Write a short Islamic reflection on mercy (Rahmah) and compassion in everyday life. Draw from the example of Prophet Muhammad ﷺ, the concept of Ihsan (excellence), and Islamic teachings on kindness to family, neighbors, and the vulnerable. Include one Quran verse and one small act of compassion to practice today.'),
    PromptSlotModel(id: 'ps_07', order: 7,  categoryId: 'strength_courage',       text: "Write an Islamic reflection on faith-based strength and courage. Draw from the supreme example of Imam Hussain ibn Ali (AS) at Karbala — the eternal model of standing firm against injustice, sacrificing everything for truth, and never surrendering to oppression — and from the broader example of the Ahl al-Bayt who remained steadfast through immense trials. Vary the theme each time: courage through faith, strength in prayer, trust in Allah during fear, or resilience in the face of injustice. Include one Quran verse and a short supplication or phrase of remembrance from the Shia tradition."),
    PromptSlotModel(id: 'ps_08', order: 8,  categoryId: 'gratitude',              text: 'Write an Islamic reflection on gratitude (Shukr) toward Allah. Root it in Quranic teaching and prophetic tradition. Vary the angle: gratitude in hardship, appreciating small blessings, beginning the day with praise of Allah, or recognizing Allah\'s guidance in daily life. Include one Quran verse and one gratitude practice.'),
    PromptSlotModel(id: 'ps_09', order: 9,  categoryId: 'purpose_calling',        text: "Write an Islamic reflection on life's purpose in worshipping Allah and living righteously. Draw from Quranic teachings about purpose, serving others, and using one's gifts for good. Vary the theme each time: serving family and community, seeking guidance through Istikhara, living with intention, or finding meaning in ordinary work. Include one Quran verse and two reflective questions."),
    PromptSlotModel(id: 'ps_10', order: 10, categoryId: 'family_relationships',   text: 'Write wise Islamic guidance on family and relationships rooted in Quranic teaching and the example of Prophet Muhammad ﷺ. Vary the theme each time: kindness in family life, patience in conflict, honoring parents, raising children in faith, or strengthening marriage. Include one Quran verse and one relational practice to try.'),
    PromptSlotModel(id: 'ps_11', order: 11, categoryId: 'peace_anxiety_relief',   text: "Write a calming Islamic reflection about finding inner peace through remembrance of Allah (Dhikr) and trust in His plan. Draw from Quranic teachings about tranquility of the heart, prayer, and surrender to Allah's will. Vary the approach each time and include one Quran verse and one simple grounding practice from Islamic tradition."),
    PromptSlotModel(id: 'ps_12', order: 12, categoryId: 'wisdom_of_jesus',        text: "Write a short piece of wisdom from the Prophet Muhammad ﷺ and the Imams of the Ahl al-Bayt as taught in Shia Islam. Draw from the Quran, Hadith, the sayings of Imam Ali (AS) in Nahj al-Balagha, and the teachings of Imam Ja'far al-Sadiq (AS) — the great scholar of the Ahl al-Bayt whose knowledge illuminated the ummah. Vary the topic each time: character, patience, humility, faith, justice, or daily conduct. Include a Quranic verse, a hadith, or a saying from one of the twelve Imams, and one practical application."),
    PromptSlotModel(id: 'ps_13', order: 13, categoryId: 'humility_character',     text: 'Write an Islamic reflection on humility (Tawadhu) and good character (Akhlaq). Draw from Quranic teachings, the example of Prophet Muhammad ﷺ, and the tradition of Islamic character development. Vary the theme: humility in leadership, admitting mistakes, treating others with respect, or growing spiritually through self-reflection. Include one Quran verse and one habit to practice.'),
    PromptSlotModel(id: 'ps_14', order: 14, categoryId: 'overcoming_temptation',  text: 'Write an Islamic reflection on resisting temptation and staying on the straight path. Draw from Quranic guidance, remembrance of Allah (Dhikr), prayer (Salah), and examples of believers who overcame struggles. Vary the angle each time. Include one Quran verse and one practical strategy for the next 24 hours.'),
    PromptSlotModel(id: 'ps_15', order: 15, categoryId: 'evening_reflection',     text: "Write a peaceful Islamic evening reflection rooted in the Shia tradition of evening supplication. Draw from the treasures of Mafatih al-Jinan, the Munajat al-Shabaniyya (the intimate whispered prayer of the month of Sha'ban beloved by the Imams), and the evening duas transmitted from the Imams of the Ahl al-Bayt. Encourage gratitude, Muhasabah (self-accounting) as recommended by the Imams, and trust in Allah before rest. Include 3–5 short reflection prompts about the day, a brief closing supplication drawn from the tradition of the Ahl al-Bayt, and one Quran verse."),
  ];
}
