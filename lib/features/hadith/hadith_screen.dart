// lib/features/hadith/hadith_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:share_plus/share_plus.dart' show SharePlus, ShareParams;

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/core/models/content_models.dart';
import 'package:ayara/core/services/content_repository.dart';
import 'package:ayara/l10n/app_localizations.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Data model
// ─────────────────────────────────────────────────────────────────────────────

class _Hadith {
  final String arabic;
  final String english;
  final String source;
  final String imam;
  final String imamAr;

  const _Hadith({
    required this.arabic,
    required this.english,
    required this.source,
    required this.imam,
    required this.imamAr,
  });
}

const List<_Hadith> _kHadiths = [
  _Hadith(
    arabic:
        'إِنِّي تَارِكٌ فِيكُمُ الثَّقَلَيْنِ: كِتَابَ اللهِ وَعِتْرَتِي أَهْلَ بَيْتِي',
    english:
        'I am leaving among you two weighty things: the Book of Allah and my Ahlul Bayt. They will never separate until they meet me at the Pond of Kawthar.',
    source: 'Hadith al-Thaqalayn',
    imam: 'Prophet Muhammad (SAW)',
    imamAr: 'النبي محمد ﷺ',
  ),
  _Hadith(
    arabic:
        'الْعِلْمُ خَيْرٌ مِنَ الْمَالِ، الْعِلْمُ يَحْرُسُكَ وَأَنْتَ تَحْرُسُ الْمَالَ',
    english:
        'Knowledge is better than wealth. Knowledge guards you, while you must guard wealth. Wealth decreases with spending, but knowledge only grows.',
    source: 'Nahj al-Balagha',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    imamAr: 'الإمام علي بن أبي طالب ع',
  ),
  _Hadith(
    arabic:
        'لَمْ أَخْرُجْ أَشِراً وَلا بَطِراً، وَإِنَّمَا خَرَجْتُ لِطَلَبِ الإِصْلاحِ فِي أُمَّةِ جَدِّي',
    english:
        'I did not rise out of arrogance or corruption. I rose only to seek reform in the nation of my grandfather, the Prophet (SAW).',
    source: 'Maqtal al-Husayn, al-Muqarram',
    imam: 'Imam Husayn ibn Ali (AS)',
    imamAr: 'الإمام الحسين بن علي ع',
  ),
  _Hadith(
    arabic:
        'أَفْضَلُ الأَعْمَالِ إِدْخَالُ السُّرُورِ عَلَى قَلْبِ الْمُؤْمِنِ',
    english:
        'The best of deeds is to bring joy to the heart of a believer — to satisfy his hunger, relieve his worry, or pay off his debt.',
    source: 'al-Kafi, vol. 2',
    imam: 'Imam Ja\'far al-Sadiq (AS)',
    imamAr: 'الإمام جعفر الصادق ع',
  ),
  _Hadith(
    arabic:
        'اعْبُدِ اللهَ كَأَنَّكَ تَرَاهُ، فَإِنْ لَمْ تَكُنْ تَرَاهُ فَإِنَّهُ يَرَاكَ',
    english:
        'Worship Allah as though you see Him; even if you cannot see Him, He surely sees you.',
    source: 'Sahifa al-Sajjadiyya',
    imam: 'Imam Ali ibn Husayn al-Sajjad (AS)',
    imamAr: 'الإمام علي بن الحسين ع',
  ),
  _Hadith(
    arabic:
        'الصَّبْرُ مِنَ الإِيمَانِ بِمَنْزِلَةِ الرَّأْسِ مِنَ الْجَسَدِ',
    english:
        'Patience is to faith what the head is to the body. A body without a head perishes, and so does faith without patience.',
    source: 'Bihar al-Anwar',
    imam: 'Imam Musa al-Kadhim (AS)',
    imamAr: 'الإمام موسى الكاظم ع',
  ),
  _Hadith(
    arabic:
        'الإِيمَانُ إِقْرَارٌ بِالْقَلْبِ وَإِقْرَارٌ بِاللِّسَانِ وَعَمَلٌ بِالأَرْكَانِ',
    english:
        'Faith is acknowledgment with the heart, confession with the tongue, and action with the limbs.',
    source: 'Uyun Akhbar al-Ridha',
    imam: 'Imam Ali al-Ridha (AS)',
    imamAr: 'الإمام علي الرضا ع',
  ),
  _Hadith(
    arabic:
        'التَّوَكُّلُ عَلَى اللهِ ثَمَنٌ لِكُلِّ غَالٍ وَسُلَّمٌ إِلَى كُلِّ عَالٍ',
    english:
        'Reliance on Allah is the price of every precious thing and the ladder to every elevated station.',
    source: 'Bihar al-Anwar',
    imam: 'Imam Muhammad al-Jawad (AS)',
    imamAr: 'الإمام محمد الجواد ع',
  ),
  _Hadith(
    arabic:
        'الدُّنْيَا سُوقٌ رَبِحَ فِيهَا قَوْمٌ وَخَسِرَ آخَرُونَ',
    english:
        'The world is a marketplace: some people profit from it, while others incur loss.',
    source: 'Tuhaf al-Uqul',
    imam: 'Imam Ali al-Hadi (AS)',
    imamAr: 'الإمام علي الهادي ع',
  ),
  _Hadith(
    arabic:
        'التَّقْوَى شَرَفٌ وَالْعِلْمُ كَنْزٌ وَالصَّمْتُ نُورٌ',
    english:
        'Piety is an honor, knowledge is a treasure, silence is a light, and the peak of worship is modesty and contentment.',
    source: 'Bihar al-Anwar',
    imam: 'Imam Hasan al-Askari (AS)',
    imamAr: 'الإمام الحسن العسكري ع',
  ),
  _Hadith(
    arabic:
        'إِنَّا غَيْرُ مُهْمِلِينَ لِمُرَاعَاتِكُمْ وَلا نَاسِينَ لِذِكْرِكُمْ',
    english:
        'We are not neglectful of your affairs, nor forgetful of your remembrance. Were it not for that, hardships would descend upon you.',
    source: 'Bihar al-Anwar, Tawqi\' al-Mahdi',
    imam: 'Imam Muhammad al-Mahdi (AJ)',
    imamAr: 'الإمام محمد المهدي عج',
  ),
  _Hadith(
    arabic:
        'خَيْرُكُمْ خَيْرُكُمْ لأَهْلِهِ',
    english:
        'The best of you is the best among his family.',
    source: 'Bihar al-Anwar',
    imam: 'Prophet Muhammad (SAW)',
    imamAr: 'النبي محمد ﷺ',
  ),
  _Hadith(
    arabic:
        'الْمَرْءُ مَخْبُوءٌ تَحْتَ لِسَانِهِ',
    english:
        'A person is hidden beneath his tongue. Speak, and you will be known.',
    source: 'Nahj al-Balagha',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    imamAr: 'الإمام علي بن أبي طالب ع',
  ),
  _Hadith(
    arabic:
        'الْمُصِيبَةُ لِلصَّابِرِ وَاحِدَةٌ وَلِلْجَازِعِ اثْنَتَانِ',
    english:
        'A calamity for the patient person is one; but for the impatient, it is two — the calamity itself and the loss of patience.',
    source: 'Bihar al-Anwar',
    imam: 'Imam Husayn ibn Ali (AS)',
    imamAr: 'الإمام الحسين بن علي ع',
  ),
  _Hadith(
    arabic:
        'حَقُّ أُمِّكَ أَنْ تَعْلَمَ أَنَّهَا حَمَلَتْكَ حَيْثُ لا يَحْمِلُ أَحَدٌ أَحَداً',
    english:
        'The right of your mother upon you is that you know: she carried you as no one carries another, and nourished you from the fruit of her heart.',
    source: 'Risalat al-Huquq',
    imam: 'Imam Ali ibn Husayn al-Sajjad (AS)',
    imamAr: 'الإمام علي بن الحسين ع',
  ),
  _Hadith(
    arabic:
        'لا خَيْرَ فِي قِرَاءَةٍ لَيْسَ فِيهَا تَدَبُّرٌ',
    english:
        'There is no good in recitation without reflection and understanding of what is being recited.',
    source: 'al-Kafi, vol. 2',
    imam: 'Imam Muhammad al-Baqir (AS)',
    imamAr: 'الإمام محمد الباقر ع',
  ),
  _Hadith(
    arabic:
        'احْفَظْ لِسَانَكَ كَمَا تَحْفَظُ ذَهَبَكَ وَفِضَّتَكَ',
    english:
        'Guard your tongue as you guard your gold and silver, for many have been destroyed by a word carelessly spoken.',
    source: 'al-Kafi, vol. 2',
    imam: 'Imam Ja\'far al-Sadiq (AS)',
    imamAr: 'الإمام جعفر الصادق ع',
  ),
  _Hadith(
    arabic:
        'أَعْقَلُ النَّاسِ أَحْسَنُهُمْ مُدَارَاةً لِلنَّاسِ',
    english:
        'The most intelligent of people is the one who deals with others most wisely and with the most patience.',
    source: 'Bihar al-Anwar',
    imam: 'Imam Musa al-Kadhim (AS)',
    imamAr: 'الإمام موسى الكاظم ع',
  ),
  _Hadith(
    arabic:
        'مَنْ حَسُنَ خُلُقُهُ كَمَلَ نِصْفُ عَقْلِهِ',
    english:
        'One who has a good character has completed half of his intellect.',
    source: 'Bihar al-Anwar',
    imam: 'Imam Ali al-Ridha (AS)',
    imamAr: 'الإمام علي الرضا ع',
  ),
  _Hadith(
    arabic:
        'ثَلاثٌ يُبَلِّغْنَ بِالْعَبْدِ رِضَا اللهِ: كَثْرَةُ الاسْتِغْفَارِ وَلِينُ الجَانِبِ وَكَثْرَةُ الصَّدَقَةِ',
    english:
        'Three things bring the servant to the pleasure of Allah: abundant seeking of forgiveness, gentleness in dealings, and frequent charity.',
    source: 'Bihar al-Anwar',
    imam: 'Imam Muhammad al-Jawad (AS)',
    imamAr: 'الإمام محمد الجواد ع',
  ),
  _Hadith(
    arabic:
        'لا تَسْتَعِنْ بِمَنْ ظَلَمَ نَفْسَهُ',
    english:
        'Do not seek the aid of one who has wronged himself — for one who cannot be just to himself cannot be just to others.',
    source: 'Bihar al-Anwar',
    imam: 'Imam Ali al-Hadi (AS)',
    imamAr: 'الإمام علي الهادي ع',
  ),
  _Hadith(
    arabic:
        'مِنْ عَلامَاتِ الْفَقِيهِ: الْحِلْمُ وَالْعِلْمُ وَالصَّمْتُ',
    english:
        'Among the signs of true understanding are: forbearance, love of knowledge, and deliberate silence.',
    source: 'Bihar al-Anwar',
    imam: 'Imam Hasan al-Askari (AS)',
    imamAr: 'الإمام الحسن العسكري ع',
  ),
  _Hadith(
    arabic:
        'جَعَلَ اللهُ الإِيمَانَ تَطْهِيراً مِنَ الشِّرْكِ وَالصَّلاةَ تَنْزِيهاً عَنِ الكِبْرِ',
    english:
        'Allah has made faith a purification from polytheism, prayer a purification from pride, and zakat a purification of the soul and wealth.',
    source: 'Khutbat Fadak',
    imam: 'Lady Fatima Zahra (SA)',
    imamAr: 'السيدة فاطمة الزهراء ع',
  ),
  _Hadith(
    arabic:
        'أَشَدُّكُمْ مَنْ غَلَبَ نَفْسَهُ عِنْدَ الْغَضَبِ',
    english:
        'The strongest among you is the one who controls himself in anger.',
    source: 'Bihar al-Anwar',
    imam: 'Prophet Muhammad (SAW)',
    imamAr: 'النبي محمد ﷺ',
  ),
  _Hadith(
    arabic:
        'دَوَاءُ الْجَهْلِ السُّؤَالُ',
    english:
        'The cure for ignorance is to ask. Do not be too proud to seek knowledge from those who have it.',
    source: 'Nahj al-Balagha',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    imamAr: 'الإمام علي بن أبي طالب ع',
  ),
  _Hadith(
    arabic:
        'الْمُؤْمِنُ أَخُو الْمُؤْمِنِ كَالْجَسَدِ الْوَاحِدِ',
    english:
        'The believer is the brother of the believer, like a single body — if one part suffers, all other parts respond with sleeplessness and fever.',
    source: 'al-Kafi, vol. 2',
    imam: 'Imam Muhammad al-Baqir (AS)',
    imamAr: 'الإمام محمد الباقر ع',
  ),
  _Hadith(
    arabic:
        'صِلْ مَنْ قَطَعَكَ وَأَعْطِ مَنْ حَرَمَكَ وَاعْفُ عَمَّنْ ظَلَمَكَ',
    english:
        'Maintain ties with those who sever theirs; give to those who deprive you; and forgive those who wrong you.',
    source: 'Tuhaf al-Uqul',
    imam: 'Imam Ja\'far al-Sadiq (AS)',
    imamAr: 'الإمام جعفر الصادق ع',
  ),
  _Hadith(
    arabic:
        'التَّوْبَةُ النَّدَمُ بِالْقَلْبِ وَالاسْتِغْفَارُ بِاللِّسَانِ وَالتَّرْكُ بِالْجَوَارِحِ',
    english:
        'True repentance is remorse in the heart, seeking forgiveness with the tongue, and abstaining from sin with the limbs.',
    source: 'al-Kafi',
    imam: 'Imam Muhammad al-Baqir (AS)',
    imamAr: 'الإمام محمد الباقر ع',
  ),
  _Hadith(
    arabic:
        'لَيْسَ مِنَّا مَنْ لَمْ يُحَاسِبْ نَفْسَهُ فِي كُلِّ يَوْمٍ',
    english:
        'He is not of us who does not hold himself to account every single day — examining his deeds, intentions, and heart.',
    source: 'Bihar al-Anwar',
    imam: 'Imam Ali ibn Husayn al-Sajjad (AS)',
    imamAr: 'الإمام علي بن الحسين ع',
  ),
  _Hadith(
    arabic:
        'طَلَبُ الْعِلْمِ فَرِيضَةٌ عَلَى كُلِّ مُسْلِمٍ',
    english:
        'The seeking of knowledge is an obligation upon every Muslim — man and woman alike.',
    source: 'Bihar al-Anwar',
    imam: 'Prophet Muhammad (SAW)',
    imamAr: 'النبي محمد ﷺ',
  ),
  _Hadith(
    arabic:
        'قِيمَةُ كُلِّ امْرِئٍ مَا يُحْسِنُهُ',
    english:
        'The worth of every person lies in what he does well. Invest in what you master and offer it to the world.',
    source: 'Nahj al-Balagha',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    imamAr: 'الإمام علي بن أبي طالب ع',
  ),
  _Hadith(
    arabic:
        'كُنْ لِلظَّالِمِ خَصْماً وَلِلْمَظْلُومِ عَوْناً',
    english:
        'Be an opponent to the oppressor and a helper to the oppressed — regardless of who they are.',
    source: 'Nahj al-Balagha',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    imamAr: 'الإمام علي بن أبي طالب ع',
  ),
  _Hadith(
    arabic:
        'إِنَّ أَحَبَّكُمْ إِلَى اللهِ أَحْسَنُكُمْ أَخْلاقاً',
    english:
        'The most beloved of you to Allah is the one with the finest character — gentle in speech, patient in trials, and generous in giving.',
    source: 'Bihar al-Anwar',
    imam: 'Prophet Muhammad (SAW)',
    imamAr: 'النبي محمد ﷺ',
  ),
  _Hadith(
    arabic:
        'لا تَكُنْ مِمَّنْ يَرْجُو الآخِرَةَ بِغَيْرِ عَمَلٍ',
    english:
        'Do not be among those who hope for the next life without working for it, or who delay repentance because of long hopes.',
    source: 'Nahj al-Balagha',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    imamAr: 'الإمام علي بن أبي طالب ع',
  ),
  _Hadith(
    arabic:
        'أَكْرِمُوا أَوْلادَكُمْ وَأَحْسِنُوا آدَابَهُمْ',
    english:
        'Honor your children and cultivate their character well, for they are a trust from Allah placed in your hands.',
    source: 'Bihar al-Anwar',
    imam: 'Prophet Muhammad (SAW)',
    imamAr: 'النبي محمد ﷺ',
  ),
  _Hadith(
    arabic:
        'كَفَى بِالنَّفْسِ عِلْماً أَنْ تَعْرِفَ عُيُوبَهَا',
    english:
        'It is sufficient self-knowledge to recognize one\'s own faults — before pointing to the faults of others.',
    source: 'Ghurar al-Hikam',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    imamAr: 'الإمام علي بن أبي طالب ع',
  ),
];

// ─────────────────────────────────────────────────────────────────────────────
// Screen
// ─────────────────────────────────────────────────────────────────────────────

class HadithScreen extends StatefulWidget {
  const HadithScreen({super.key});

  @override
  State<HadithScreen> createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {
  late int _index;
  late _Hadith _hadith;
  // Starts as the compile-time bundle; updated from Firestore in the background.
  List<_Hadith> _hadiths = _kHadiths;

  @override
  void initState() {
    super.initState();
    final dayOfYear = DateTime.now().difference(DateTime(DateTime.now().year)).inDays;
    _index = dayOfYear % _hadiths.length;
    _hadith = _hadiths[_index];
    _refreshFromRepository();
  }

  /// Fetches hadiths from Firestore (via ContentRepository) in the background.
  /// Updates the displayed hadith only if the index still maps cleanly.
  Future<void> _refreshFromRepository() async {
    try {
      final models = await ContentRepository.instance.getHadiths();
      if (!mounted || models.isEmpty) return;
      final sorted = [...models]..sort((a, b) => a.order.compareTo(b.order));
      final converted = sorted.map(_hadithFromModel).toList();
      setState(() {
        _hadiths = converted;
        // Recompute today's hadith from the potentially larger list.
        final dayOfYear =
            DateTime.now().difference(DateTime(DateTime.now().year)).inDays;
        _index = dayOfYear % _hadiths.length;
        _hadith = _hadiths[_index];
      });
    } catch (_) {
      // Network unavailable — keep bundled data as is.
    }
  }

  static _Hadith _hadithFromModel(HadithModel m) => _Hadith(
        arabic: m.arabic,
        english: m.english,
        source: m.source,
        imam: m.imam,
        imamAr: m.imamAr,
      );

  void _previous() {
    HapticFeedback.selectionClick();
    setState(() {
      _index = (_index - 1 + _hadiths.length) % _hadiths.length;
      _hadith = _hadiths[_index];
    });
  }

  void _next() {
    HapticFeedback.selectionClick();
    setState(() {
      _index = (_index + 1) % _hadiths.length;
      _hadith = _hadiths[_index];
    });
  }

  void _share(BuildContext context) {
    final t = AppLocalizations.of(context);
    final text = t.hadithShareText(_hadith.english, _hadith.imam, _hadith.source);
    SharePlus.instance.share(ShareParams(text: text));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deepNavy,
      body: Stack(
        children: [
          // Background gradient
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.navy, AppColors.deepNavy, AppColors.navyDeep],
                  stops: [0.0, 0.5, 1.0],
                ),
              ),
            ),
          ),
          // Gold shimmer top-right
          Positioned(
            top: 0, right: 0,
            child: IgnorePointer(
              child: SizedBox(
                width: 280, height: 280,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        AppColors.gold.withValues(alpha: 0.12),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                // ── Top bar ───────────────────────────────────────────────
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 6, 8, 0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new_rounded,
                            color: AppColors.gold),
                        onPressed: () {
                          HapticFeedback.lightImpact();
                          Navigator.of(context).pop();
                        },
                      ),
                      Expanded(
                        child: Text(
                          AppLocalizations.of(context).hadithScreenTitle,
                          style: GoogleFonts.lora(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: AppColors.gold,
                            letterSpacing: 0.3,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.share_rounded,
                            color: AppColors.gold, size: 24),
                        onPressed: () => _share(context),
                        tooltip: 'Share',
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // ── Imam attribution card ─────────────────────────
                        _ImamBadge(hadith: _hadith)
                            .animate()
                            .fadeIn(duration: 400.ms),

                        const SizedBox(height: 20),

                        // ── Arabic text card ──────────────────────────────
                        _ArabicCard(hadith: _hadith)
                            .animate(key: ValueKey('ar_$_index'))
                            .fadeIn(duration: 350.ms)
                            .slideY(begin: 0.04, end: 0),

                        const SizedBox(height: 16),

                        // ── English translation card ──────────────────────
                        _EnglishCard(hadith: _hadith)
                            .animate(key: ValueKey('en_$_index'))
                            .fadeIn(duration: 400.ms, delay: 80.ms)
                            .slideY(begin: 0.04, end: 0),

                        const SizedBox(height: 20),

                        // ── Source ────────────────────────────────────────
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.menu_book_outlined,
                                color: AppColors.textDim, size: 14),
                            const SizedBox(width: 6),
                            Text(
                              _hadith.source,
                              style: const TextStyle(
                                color: AppColors.textDim,
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.2,
                              ),
                            ),
                          ],
                        ).animate(key: ValueKey('src_$_index')).fadeIn(duration: 400.ms),

                        const SizedBox(height: 32),

                        // ── Navigation ────────────────────────────────────
                        _NavigationRow(
                          index: _index,
                          total: _hadiths.length,
                          onPrevious: _previous,
                          onNext: _next,
                        ),

                        const SizedBox(height: 16),

                        // ── Share button ──────────────────────────────────
                        GestureDetector(
                          onTap: () => _share(context),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            decoration: BoxDecoration(
                              color: AppColors.gold.withValues(alpha: 0.10),
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                  color: AppColors.gold.withValues(alpha: 0.30)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.share_rounded,
                                    color: AppColors.gold, size: 18),
                                const SizedBox(width: 8),
                                Text(
                                  AppLocalizations.of(context).hadithShare,
                                  style: const TextStyle(
                                    color: AppColors.gold,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Sub-widgets
// ─────────────────────────────────────────────────────────────────────────────

class _ImamBadge extends StatelessWidget {
  final _Hadith hadith;
  const _ImamBadge({required this.hadith});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.gold.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.gold.withValues(alpha: 0.28)),
      ),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.goldDim.withValues(alpha: 0.25),
              border: Border.all(
                  color: AppColors.gold.withValues(alpha: 0.5), width: 1.5),
            ),
            child: const Icon(Icons.auto_awesome_rounded,
                color: AppColors.goldBright, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hadith.imam,
                  style: GoogleFonts.lora(
                    color: AppColors.goldBright,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.2,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  hadith.imamAr,
                  textDirection: TextDirection.rtl,
                  style: const TextStyle(
                    color: AppColors.textDim,
                    fontSize: 12,
                    fontFamily: 'Arial',
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.gold.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              AppLocalizations.of(context).hadithBadge,
              style: const TextStyle(
                color: AppColors.goldBright,
                fontSize: 9,
                fontWeight: FontWeight.w800,
                letterSpacing: 1.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ArabicCard extends StatelessWidget {
  final _Hadith hadith;
  const _ArabicCard({required this.hadith});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.borderMid),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Container(
                width: 3,
                height: 16,
                decoration: BoxDecoration(
                  color: AppColors.gold,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                AppLocalizations.of(context).hadithLabelArabic,
                style: const TextStyle(
                  color: AppColors.gold,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.4,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            hadith.arabic,
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: GoogleFonts.amiri(
              color: AppColors.textPrimary,
              fontSize: 22,
              height: 1.9,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}

class _EnglishCard extends StatelessWidget {
  final _Hadith hadith;
  const _EnglishCard({required this.hadith});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.borderMid),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 3,
                height: 16,
                decoration: BoxDecoration(
                  color: AppColors.emeraldBright,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                AppLocalizations.of(context).hadithLabelTranslation,
                style: const TextStyle(
                  color: AppColors.emeraldBright,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.4,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            '"${hadith.english}"',
            style: GoogleFonts.lora(
              color: AppColors.textPrimary,
              fontSize: 16,
              height: 1.75,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}

class _NavigationRow extends StatelessWidget {
  final int index;
  final int total;
  final VoidCallback onPrevious;
  final VoidCallback onNext;

  const _NavigationRow({
    required this.index,
    required this.total,
    required this.onPrevious,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Previous
        GestureDetector(
          onTap: onPrevious,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white.withValues(alpha: 0.12)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.arrow_back_ios_new_rounded,
                    color: Colors.white.withValues(alpha: 0.6), size: 14),
                const SizedBox(width: 6),
                Text(
                  AppLocalizations.of(context).hadithNavPrevious,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.6),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        // Counter
        Text(
          AppLocalizations.of(context).hadithCounter(index + 1, total),
          style: const TextStyle(
            color: AppColors.textDim,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        // Next
        GestureDetector(
          onTap: onNext,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            decoration: BoxDecoration(
              color: AppColors.gold.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(12),
              border:
                  Border.all(color: AppColors.gold.withValues(alpha: 0.30)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  AppLocalizations.of(context).hadithNavNext,
                  style: TextStyle(
                    color: AppColors.gold.withValues(alpha: 0.9),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 6),
                Icon(Icons.arrow_forward_ios_rounded,
                    color: AppColors.gold.withValues(alpha: 0.9), size: 14),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
