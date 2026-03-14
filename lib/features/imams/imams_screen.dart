// lib/features/imams/imams_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/core/models/content_models.dart';
import 'package:ayara/core/services/content_repository.dart';
import 'package:ayara/l10n/app_localizations.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Data model
// ─────────────────────────────────────────────────────────────────────────────

class _ImamProfile {
  final int order; // 0 = Prophet, -1 = Lady Fatima, 1–12 = Imams
  final String nameEn;
  final String nameAr;
  final String title;
  final String role;
  final String bornHijri;
  final String diedHijri;
  final String birthplace;
  final String burialPlace;
  final String biography;
  final String famousQuote;
  final String famousQuoteAr;
  final String famousQuoteSource;
  final Color accent;

  const _ImamProfile({
    required this.order,
    required this.nameEn,
    required this.nameAr,
    required this.title,
    required this.role,
    required this.bornHijri,
    required this.diedHijri,
    required this.birthplace,
    required this.burialPlace,
    required this.biography,
    required this.famousQuote,
    required this.famousQuoteAr,
    required this.famousQuoteSource,
    required this.accent,
  });
}

const List<_ImamProfile> _kMasumeen = [
  _ImamProfile(
    order: 0,
    nameEn: 'Prophet Muhammad',
    nameAr: 'النبي محمد ﷺ',
    title: 'Seal of the Prophets',
    role: 'The Final Prophet of Allah',
    bornHijri: '53 BH (570 CE)',
    diedHijri: '11 AH (632 CE)',
    birthplace: 'Mecca, Arabia',
    burialPlace: 'Madinah al-Munawwarah',
    biography:
        'The final messenger of Allah, sent as a mercy to all of creation. Born in Mecca into the noble tribe of Quraysh, he received the first revelation at age 40. Over 23 years he conveyed the Quran, established the Islamic community, and demonstrated through his Sunnah the complete way of life. His declaration at Ghadir Khumm of Imam Ali\'s succession is a cornerstone of Shia belief.',
    famousQuote:
        'I am leaving among you two weighty things: the Book of Allah and my Ahl al-Bayt. They shall not separate until they meet me at the Pond of Kawthar.',
    famousQuoteAr:
        'إِنِّي تَارِكٌ فِيكُمُ الثَّقَلَيْنِ: كِتَابَ اللهِ وَعِتْرَتِي أَهْلَ بَيْتِي',
    famousQuoteSource: 'Hadith al-Thaqalayn',
    accent: AppColors.gold,
  ),
  _ImamProfile(
    order: -1,
    nameEn: 'Lady Fatima Zahra',
    nameAr: 'السيدة فاطمة الزهراء ع',
    title: 'Al-Zahra — The Radiant',
    role: 'Daughter of the Prophet, Mother of the Imams',
    bornHijri: '5 BH (615 CE)',
    diedHijri: '11 AH (632 CE)',
    birthplace: 'Mecca, Arabia',
    burialPlace: 'Madinah — exact location unknown',
    biography:
        'The beloved daughter of Prophet Muhammad (SAW) and Sayyida Khadijah (SA), wife of Imam Ali (AS), and mother of Imams Hasan and Husayn (AS). She is among the Fourteen Infallibles and holds the highest station among women in Islam. Her Fadak Sermon is a landmark defense of divine justice and Imamate. She passed away shortly after her father.',
    famousQuote:
        'Allah has made faith a purification from polytheism, and prayer a cleansing from arrogance.',
    famousQuoteAr:
        'جَعَلَ اللهُ الإِيمَانَ تَطْهِيراً مِنَ الشِّرْكِ وَالصَّلاةَ تَنْزِيهاً عَنِ الكِبْرِ',
    famousQuoteSource: 'Khutbat Fadak',
    accent: AppColors.crimsonLight,
  ),
  _ImamProfile(
    order: 1,
    nameEn: 'Imam Ali ibn Abi Talib',
    nameAr: 'الإمام علي بن أبي طالب ع',
    title: 'Amir al-Mu\'minin — Commander of the Faithful',
    role: '1st Imam — Cousin and son-in-law of the Prophet',
    bornHijri: '23 BH (599 CE)',
    diedHijri: '40 AH (661 CE)',
    birthplace: 'Inside the Ka\'ba, Mecca',
    burialPlace: 'Najaf al-Ashraf, Iraq',
    biography:
        'The first Imam and designated successor of the Prophet Muhammad (SAW), born miraculously inside the Ka\'ba. He was raised in the household of the Prophet and was the first male to accept Islam. Renowned for his unparalleled knowledge, justice, and valor, his wisdom is preserved in Nahj al-Balagha. He was martyred by Ibn Muljam while in prostration during Fajr prayer.',
    famousQuote:
        'Knowledge is better than wealth. Knowledge guards you, while you must guard wealth.',
    famousQuoteAr:
        'الْعِلْمُ خَيْرٌ مِنَ الْمَالِ، الْعِلْمُ يَحْرُسُكَ وَأَنْتَ تَحْرُسُ الْمَالَ',
    famousQuoteSource: 'Nahj al-Balagha',
    accent: AppColors.gold,
  ),
  _ImamProfile(
    order: 2,
    nameEn: 'Imam Hasan al-Mujtaba',
    nameAr: 'الإمام الحسن المجتبى ع',
    title: 'Al-Mujtaba — The Chosen',
    role: '2nd Imam — Son of Imam Ali (AS)',
    bornHijri: '3 AH (625 CE)',
    diedHijri: '50 AH (670 CE)',
    birthplace: 'Madinah al-Munawwarah',
    burialPlace: 'Baqi\' Cemetery, Madinah',
    biography:
        'The second Imam and elder grandson of the Prophet, praised in many hadiths alongside Imam Husayn as the leaders of the youth of Paradise. Renowned for his immense generosity and forbearance, he signed a peace treaty with Muawiyah to preserve Islam and protect the Muslim community. According to well-known Shia reports, he was martyred by poison in Madinah.',
    famousQuote:
        'Whoever places his trust in the excellence of Allah\'s choice will not wish to be in any state other than the one Allah has chosen for him.',
    famousQuoteAr:
        'مَنْ تَوَكَّلَ عَلَى اللهِ كَفَاهُ',
    famousQuoteSource: 'Bihar al-Anwar',
    accent: AppColors.emeraldBright,
  ),
  _ImamProfile(
    order: 3,
    nameEn: 'Imam Husayn ibn Ali',
    nameAr: 'الإمام الحسين بن علي ع',
    title: 'Sayyid al-Shuhada — Master of Martyrs',
    role: '3rd Imam — Son of Imam Ali (AS)',
    bornHijri: '4 AH (626 CE)',
    diedHijri: '61 AH (680 CE)',
    birthplace: 'Madinah al-Munawwarah',
    burialPlace: 'Karbala, Iraq',
    biography:
        'The third Imam and younger grandson of the Prophet, whose stand at Karbala on the 10th of Muharram (Ashura) in 61 AH defines Islamic conscience and resistance to oppression. He refused to pledge allegiance to the corrupt Yazid and rose with 72 companions and family members. His sacrifice revived Islam. Ziyarat to his shrine in Karbala is among the most meritorious acts in Shia Islam.',
    famousQuote:
        'I did not rise out of arrogance, nor to cause mischief. I rose only to seek reform in the nation of my grandfather.',
    famousQuoteAr:
        'لَمْ أَخْرُجْ أَشِراً وَلا بَطِراً، وَإِنَّمَا خَرَجْتُ لِطَلَبِ الإِصْلاحِ فِي أُمَّةِ جَدِّي',
    famousQuoteSource: 'Maqtal al-Husayn',
    accent: AppColors.crimsonBright,
  ),
  _ImamProfile(
    order: 4,
    nameEn: 'Imam Ali ibn Husayn al-Sajjad',
    nameAr: 'الإمام علي بن الحسين زين العابدين ع',
    title: 'Zayn al-Abidin — Ornament of Worshippers',
    role: '4th Imam — Son of Imam Husayn (AS)',
    bornHijri: '38 AH (658 CE)',
    diedHijri: '95 AH (713 CE)',
    birthplace: 'Madinah al-Munawwarah',
    burialPlace: 'Baqi\' Cemetery, Madinah',
    biography:
        'The fourth Imam, sole surviving son of Imam Husayn after Karbala. He preserved the message of Karbala through his sermons after being taken captive to Damascus. His spiritual legacy is the Sahifa al-Sajjadiyya, a book of sublime supplications often called "the Psalms of Islam." He was known for his extraordinary depth of worship and compassion for the poor.',
    famousQuote:
        'Worship Allah as though you see Him; for even if you cannot see Him, He surely sees you.',
    famousQuoteAr:
        'اعْبُدِ اللهَ كَأَنَّكَ تَرَاهُ، فَإِنْ لَمْ تَكُنْ تَرَاهُ فَإِنَّهُ يَرَاكَ',
    famousQuoteSource: 'Sahifa al-Sajjadiyya',
    accent: AppColors.gold,
  ),
  _ImamProfile(
    order: 5,
    nameEn: 'Imam Muhammad al-Baqir',
    nameAr: 'الإمام محمد الباقر ع',
    title: 'Al-Baqir — Splitter of Knowledge',
    role: '5th Imam — Son of Imam al-Sajjad (AS)',
    bornHijri: '57 AH (677 CE)',
    diedHijri: '114 AH (733 CE)',
    birthplace: 'Madinah al-Munawwarah',
    burialPlace: 'Baqi\' Cemetery, Madinah',
    biography:
        'The fifth Imam, known as al-Baqir — "one who deeply explores knowledge." He established the first great Islamic university from Madinah, teaching hundreds of students in theology, jurisprudence, and Quranic sciences. His period marked an intellectual flourishing of Shia scholarship. He was martyred by poison under the Umayyad caliph Hisham ibn Abd al-Malik.',
    famousQuote:
        'The believer is the brother of the believer — like a single body; if one part suffers, all other parts respond.',
    famousQuoteAr:
        'الْمُؤْمِنُ أَخُو الْمُؤْمِنِ كَالْجَسَدِ الْوَاحِدِ',
    famousQuoteSource: 'al-Kafi',
    accent: AppColors.emeraldBright,
  ),
  _ImamProfile(
    order: 6,
    nameEn: 'Imam Ja\'far al-Sadiq',
    nameAr: 'الإمام جعفر الصادق ع',
    title: 'Al-Sadiq — The Truthful',
    role: '6th Imam — Son of Imam al-Baqir (AS)',
    bornHijri: '83 AH (702 CE)',
    diedHijri: '148 AH (765 CE)',
    birthplace: 'Madinah al-Munawwarah',
    burialPlace: 'Baqi\' Cemetery, Madinah',
    biography:
        'The sixth Imam and one of the central teachers of the Ahl al-Bayt school. His circle of learning in Madinah deeply shaped Ja\'fari jurisprudence and influenced later discussions in theology, ethics, and the intellectual sciences. The Ja\'fari school of Islamic law is named after him. He was martyred by poison under the Abbasid caliph al-Mansur.',
    famousQuote:
        'Guard your tongue as you guard your gold and silver, for many have been destroyed by a careless word.',
    famousQuoteAr:
        'احْفَظْ لِسَانَكَ كَمَا تَحْفَظُ ذَهَبَكَ وَفِضَّتَكَ',
    famousQuoteSource: 'al-Kafi',
    accent: AppColors.gold,
  ),
  _ImamProfile(
    order: 7,
    nameEn: 'Imam Musa al-Kadhim',
    nameAr: 'الإمام موسى الكاظم ع',
    title: 'Al-Kadhim — The One Who Suppresses Anger',
    role: '7th Imam — Son of Imam al-Sadiq (AS)',
    bornHijri: '128 AH (745 CE)',
    diedHijri: '183 AH (799 CE)',
    birthplace: 'Al-Abwa, between Mecca and Madinah',
    burialPlace: 'Kadhimiyyah, Baghdad, Iraq',
    biography:
        'The seventh Imam, renowned for his extraordinary patience and control of anger — hence his title al-Kadhim. He spent much of his life under Abbasid surveillance, imprisoned multiple times by Harun al-Rashid. He continued teaching from prison, and his shrine in Kadhimiyyah, Baghdad is one of the most visited in the world. He was martyred by poison in the prison of Sindi ibn Shahik.',
    famousQuote:
        'Patience is to faith what the head is to the body. A body without a head perishes — and so does faith without patience.',
    famousQuoteAr:
        'الصَّبْرُ مِنَ الإِيمَانِ بِمَنْزِلَةِ الرَّأْسِ مِنَ الْجَسَدِ',
    famousQuoteSource: 'Bihar al-Anwar',
    accent: AppColors.emeraldBright,
  ),
  _ImamProfile(
    order: 8,
    nameEn: 'Imam Ali al-Ridha',
    nameAr: 'الإمام علي الرضا ع',
    title: 'Al-Ridha — The Contented, The Pleasing',
    role: '8th Imam — Son of Imam al-Kadhim (AS)',
    bornHijri: '148 AH (765 CE)',
    diedHijri: '203 AH (818 CE)',
    birthplace: 'Madinah al-Munawwarah',
    burialPlace: 'Mashhad, Iran (Razavi Khorasan)',
    biography:
        'The eighth Imam, appointed heir apparent by the Abbasid caliph al-Ma\'mun, a political maneuver to control him. Despite this, he used the position to spread Islamic knowledge. His debates with scholars of all religions are legendary. He was martyred by poison and buried in Tus (modern-day Mashhad), which became one of the holiest shrines in Shia Islam — visited by millions annually.',
    famousQuote:
        'Faith is acknowledgment with the heart, confession with the tongue, and action with the limbs.',
    famousQuoteAr:
        'الإِيمَانُ إِقْرَارٌ بِالْقَلْبِ وَإِقْرَارٌ بِاللِّسَانِ وَعَمَلٌ بِالأَرْكَانِ',
    famousQuoteSource: 'Uyun Akhbar al-Ridha',
    accent: AppColors.gold,
  ),
  _ImamProfile(
    order: 9,
    nameEn: 'Imam Muhammad al-Jawad',
    nameAr: 'الإمام محمد الجواد ع',
    title: 'Al-Jawad — The Generous, Al-Taqi — The Pious',
    role: '9th Imam — Son of Imam al-Ridha (AS)',
    bornHijri: '195 AH (811 CE)',
    diedHijri: '220 AH (835 CE)',
    birthplace: 'Madinah al-Munawwarah',
    burialPlace: 'Kadhimiyyah, Baghdad, Iraq',
    biography:
        'The ninth Imam, who assumed Imamate at age 8 — demonstrating that divine knowledge is not dependent on age. Despite his short life of only 25 years, he left a vast legacy of scholarly work and spiritual guidance. Forced to move to Baghdad by the Abbasid caliph al-Mu\'tasim, he was martyred there by poison. His shrine is adjacent to that of Imam al-Kadhim in Kadhimiyyah.',
    famousQuote:
        'Reliance on Allah is the price of every precious thing and the ladder to every elevated station.',
    famousQuoteAr:
        'التَّوَكُّلُ عَلَى اللهِ ثَمَنٌ لِكُلِّ غَالٍ وَسُلَّمٌ إِلَى كُلِّ عَالٍ',
    famousQuoteSource: 'Bihar al-Anwar',
    accent: AppColors.emeraldBright,
  ),
  _ImamProfile(
    order: 10,
    nameEn: 'Imam Ali al-Hadi',
    nameAr: 'الإمام علي الهادي ع',
    title: 'Al-Hadi — The Guide, Al-Naqi — The Pure',
    role: '10th Imam — Son of Imam al-Jawad (AS)',
    bornHijri: '212 AH (828 CE)',
    diedHijri: '254 AH (868 CE)',
    birthplace: 'Al-Sariya, near Madinah',
    burialPlace: 'Samarra, Iraq',
    biography:
        'The tenth Imam, forcibly relocated from Madinah to Samarra by the Abbasid caliph al-Mutawakkil to keep him under surveillance. He lived in Samarra under virtual house arrest for over 20 years, yet continued guiding his followers through letters and trusted representatives. His shrine in Samarra alongside that of his son Imam al-Askari is one of the holiest sites in Shia Islam.',
    famousQuote:
        'The world is a marketplace: some people profit from it, while others incur loss.',
    famousQuoteAr:
        'الدُّنْيَا سُوقٌ رَبِحَ فِيهَا قَوْمٌ وَخَسِرَ آخَرُونَ',
    famousQuoteSource: 'Tuhaf al-Uqul',
    accent: AppColors.gold,
  ),
  _ImamProfile(
    order: 11,
    nameEn: 'Imam Hasan al-Askari',
    nameAr: 'الإمام الحسن العسكري ع',
    title: 'Al-Askari — Named after the garrison city of Samarra',
    role: '11th Imam — Son of Imam al-Hadi (AS)',
    bornHijri: '232 AH (846 CE)',
    diedHijri: '260 AH (874 CE)',
    birthplace: 'Madinah or Samarra',
    burialPlace: 'Samarra, Iraq',
    biography:
        'The eleventh Imam, who also lived under strict surveillance in Samarra. He led his community primarily through correspondence due to heavy Abbasid restrictions. He is the father of the 12th Imam, Imam al-Mahdi (AJ). He was martyred by poison at the young age of 28. The Askariyyain shrine in Samarra, destroyed and rebuilt multiple times, houses both his and his father\'s tombs.',
    famousQuote:
        'Piety is an honor, knowledge is a treasure, silence is a light, and the peak of worship is modesty.',
    famousQuoteAr:
        'التَّقْوَى شَرَفٌ وَالْعِلْمُ كَنْزٌ وَالصَّمْتُ نُورٌ',
    famousQuoteSource: 'Bihar al-Anwar',
    accent: AppColors.emeraldBright,
  ),
  _ImamProfile(
    order: 12,
    nameEn: 'Imam Muhammad al-Mahdi',
    nameAr: 'الإمام محمد المهدي عجل الله فرجه',
    title: 'Al-Mahdi — The Guided One, Al-Qa\'im — The One Who Shall Rise',
    role: '12th Imam — Son of Imam al-Askari (AS)',
    bornHijri: '255 AH (869 CE)',
    diedHijri: 'Still alive — in Occultation',
    birthplace: 'Samarra, Iraq',
    burialPlace: 'In Occultation — awaiting divine command',
    biography:
        'The twelfth and final Imam, currently in the Major Occultation (Ghayba al-Kubra) since 329 AH. Shia Muslims believe he is alive and will reappear at the end of times to fill the world with justice after it has been filled with oppression. His birth was concealed to protect him from the Abbasid caliph. He communicated with the Shia community through four deputies during the Minor Occultation.',
    famousQuote:
        'We are not neglectful of your affairs, nor forgetful of your remembrance. Were it not for that, hardships would descend upon you.',
    famousQuoteAr:
        'إِنَّا غَيْرُ مُهْمِلِينَ لِمُرَاعَاتِكُمْ وَلا نَاسِينَ لِذِكْرِكُمْ',
    famousQuoteSource: 'Tawqi\' al-Mahdi, Bihar al-Anwar',
    accent: AppColors.gold,
  ),
];

// ─────────────────────────────────────────────────────────────────────────────
// List Screen
// ─────────────────────────────────────────────────────────────────────────────

class ImamsScreen extends StatefulWidget {
  const ImamsScreen({super.key});

  @override
  State<ImamsScreen> createState() => _ImamsScreenState();
}

class _ImamsScreenState extends State<ImamsScreen> {
  List<_ImamProfile> _masumeen = _kMasumeen;

  @override
  void initState() {
    super.initState();
    _refreshFromRepository();
  }

  Future<void> _refreshFromRepository() async {
    try {
      final models = await ContentRepository.instance.getImams();
      if (!mounted || models.isEmpty) return;
      final sorted = [...models]..sort((a, b) => a.order.compareTo(b.order));
      final converted = sorted.map(_imamFromModel).toList();
      setState(() => _masumeen = converted);
    } catch (_) {
      // Network unavailable — keep bundled data.
    }
  }

  static _ImamProfile _imamFromModel(ImamModel m) => _ImamProfile(
        order: m.order,
        nameEn: m.nameEn,
        nameAr: m.nameAr,
        title: m.title,
        role: m.role,
        bornHijri: m.bornHijri,
        diedHijri: m.diedHijri,
        birthplace: m.birthplace,
        burialPlace: m.burialPlace,
        biography: m.biography,
        famousQuote: m.famousQuote,
        famousQuoteAr: m.famousQuoteAr,
        famousQuoteSource: m.famousQuoteSource,
        accent: m.accent,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deepNavy,
      body: Stack(
        children: [
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
          Positioned(
            top: 0, right: 0,
            child: IgnorePointer(
              child: SizedBox(
                width: 260, height: 260,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [AppColors.gold.withValues(alpha: 0.10), Colors.transparent],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: CustomScrollView(
              slivers: [
                // ── Top bar ───────────────────────────────────────────────
                SliverToBoxAdapter(
                  child: Padding(
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
                            AppLocalizations.of(context).imamsScreenTitle,
                            style: GoogleFonts.lora(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: AppColors.gold,
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // ── Subtitle ──────────────────────────────────────────────
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 16),
                    child: Text(
                      AppLocalizations.of(context).imamsScreenSubtitle,
                      style: TextStyle(
                        color: AppColors.textDim,
                        fontSize: 13,
                        height: 1.5,
                        fontStyle: FontStyle.italic,
                      ),
                    ).animate().fadeIn(duration: 400.ms),
                  ),
                ),

                // ── List ──────────────────────────────────────────────────
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, i) {
                        final imam = _masumeen[i];
                        return _ImamListTile(
                          imam: imam,
                          index: i,
                          onTap: () => _openDetail(context, imam),
                        );
                      },
                      childCount: _masumeen.length,
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

  void _openDetail(BuildContext context, _ImamProfile imam) {
    HapticFeedback.selectionClick();
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => _ImamDetailScreen(imam: imam)),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// List tile
// ─────────────────────────────────────────────────────────────────────────────

class _ImamListTile extends StatelessWidget {
  final _ImamProfile imam;
  final int index;
  final VoidCallback onTap;

  const _ImamListTile({
    required this.imam,
    required this.index,
    required this.onTap,
  });

  String _ordinalLabel(BuildContext context) {
    final t = AppLocalizations.of(context);
    if (imam.order == 0) return 'Prophet';
    if (imam.order == -1) return 'Al-Zahra';
    switch (imam.order) {
      case 1: return t.imamOrdinal1;
      case 2: return t.imamOrdinal2;
      case 3: return t.imamOrdinal3;
      case 4: return t.imamOrdinal4;
      case 5: return t.imamOrdinal5;
      case 6: return t.imamOrdinal6;
      case 7: return t.imamOrdinal7;
      case 8: return t.imamOrdinal8;
      case 9: return t.imamOrdinal9;
      case 10: return t.imamOrdinal10;
      case 11: return t.imamOrdinal11;
      case 12: return t.imamOrdinal12;
      default: return 'Imam ${imam.order}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: imam.accent.withValues(alpha: 0.22),
            width: 0.8,
          ),
        ),
        child: Row(
          children: [
            // Badge circle
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: imam.accent.withValues(alpha: 0.12),
                border: Border.all(
                    color: imam.accent.withValues(alpha: 0.40), width: 1.5),
              ),
              child: Center(
                child: Text(
                  imam.order == 0
                      ? 'ﷺ'
                      : imam.order == -1
                          ? 'ع'
                          : '${imam.order}',
                  style: imam.order == 0
                      ? TextStyle(
                          color: imam.accent,
                          fontSize: 14,
                          fontFamily: 'Arial',
                        )
                      : GoogleFonts.cinzel(
                          color: imam.accent,
                          fontSize: imam.order == -1 ? 18 : 16,
                          fontWeight: FontWeight.w700,
                        ),
                ),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7, vertical: 2),
                        decoration: BoxDecoration(
                          color: imam.accent.withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          _ordinalLabel(context),
                          style: TextStyle(
                            color: imam.accent,
                            fontSize: 9,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 0.8,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    imam.nameEn,
                    style: const TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.1,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    imam.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: AppColors.textDim,
                      fontSize: 11,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios_rounded,
                color: imam.accent.withValues(alpha: 0.5), size: 14),
          ],
        ),
      ).animate(delay: Duration(milliseconds: index * 40))
          .fadeIn(duration: 350.ms)
          .slideX(begin: 0.04, end: 0),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Detail Screen
// ─────────────────────────────────────────────────────────────────────────────

class _ImamDetailScreen extends StatelessWidget {
  final _ImamProfile imam;
  const _ImamDetailScreen({required this.imam});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deepNavy,
      body: Stack(
        children: [
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
          // Accent glow top
          Positioned(
            top: 0, left: 0, right: 0,
            child: IgnorePointer(
              child: SizedBox(
                height: 300,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        imam.accent.withValues(alpha: 0.08),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: CustomScrollView(
              slivers: [
                // ── Top bar ───────────────────────────────────────────────
                SliverToBoxAdapter(
                  child: Padding(
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
                            AppLocalizations.of(context).imamsScreenTitle,
                            style: GoogleFonts.lora(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: AppColors.gold,
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(20, 12, 20, 40),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      // ── Hero section ─────────────────────────────────────
                      _HeroSection(imam: imam).animate().fadeIn(duration: 400.ms),
                      const SizedBox(height: 20),

                      // ── Dates & places ────────────────────────────────────
                      _InfoGrid(imam: imam)
                          .animate()
                          .fadeIn(duration: 400.ms, delay: 60.ms),
                      const SizedBox(height: 16),

                      // ── Biography ─────────────────────────────────────────
                      _SectionCard(
                        icon: Icons.auto_stories_rounded,
                        title: AppLocalizations.of(context).imamSectionBiography,
                        accent: imam.accent,
                        child: Text(
                          imam.biography,
                          style: GoogleFonts.lora(
                            color: AppColors.textPrimary,
                            fontSize: 14.5,
                            height: 1.75,
                          ),
                        ),
                      ).animate().fadeIn(duration: 400.ms, delay: 100.ms),
                      const SizedBox(height: 16),

                      // ── Famous quote ──────────────────────────────────────
                      _QuoteCard(imam: imam)
                          .animate()
                          .fadeIn(duration: 400.ms, delay: 140.ms),
                    ]),
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
// Detail sub-widgets
// ─────────────────────────────────────────────────────────────────────────────

class _HeroSection extends StatelessWidget {
  final _ImamProfile imam;
  const _HeroSection({required this.imam});

  String _ordinalLabel(BuildContext context) {
    final t = AppLocalizations.of(context);
    if (imam.order == 0) return t.imamRoleProphet;
    if (imam.order == -1) return t.imamRoleInfallible;
    switch (imam.order) {
      case 1: return t.imamOrdinal1;
      case 2: return t.imamOrdinal2;
      case 3: return t.imamOrdinal3;
      case 4: return t.imamOrdinal4;
      case 5: return t.imamOrdinal5;
      case 6: return t.imamOrdinal6;
      case 7: return t.imamOrdinal7;
      case 8: return t.imamOrdinal8;
      case 9: return t.imamOrdinal9;
      case 10: return t.imamOrdinal10;
      case 11: return t.imamOrdinal11;
      case 12: return t.imamOrdinal12;
      default: return 'Imam ${imam.order}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Large avatar circle
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: imam.accent.withValues(alpha: 0.12),
            border: Border.all(
                color: imam.accent.withValues(alpha: 0.45), width: 2),
          ),
          child: Center(
            child: Text(
              imam.order == 0
                  ? 'ﷺ'
                  : imam.order == -1
                      ? 'ع'
                      : '${imam.order}',
              style: imam.order == 0
                  ? TextStyle(
                      color: imam.accent,
                      fontSize: 22,
                      fontFamily: 'Arial',
                    )
                  : GoogleFonts.cinzel(
                      color: imam.accent,
                      fontSize: imam.order == -1 ? 26 : 28,
                      fontWeight: FontWeight.w700,
                    ),
            ),
          ),
        ),
        const SizedBox(height: 14),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: imam.accent.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            _ordinalLabel(context).toUpperCase(),
            style: TextStyle(
              color: imam.accent,
              fontSize: 10,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.4,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          imam.nameEn,
          textAlign: TextAlign.center,
          style: GoogleFonts.cinzel(
            color: AppColors.textPrimary,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          imam.nameAr,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: GoogleFonts.amiri(
            color: imam.accent.withValues(alpha: 0.85),
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          imam.title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: AppColors.textDim,
            fontSize: 12,
            fontStyle: FontStyle.italic,
            height: 1.4,
          ),
        ),
      ],
    );
  }
}

class _InfoGrid extends StatelessWidget {
  final _ImamProfile imam;
  const _InfoGrid({required this.imam});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.borderMid),
      ),
      child: Column(
        children: [
          _InfoRow(
              icon: Icons.star_rounded,
              label: AppLocalizations.of(context).imamLabelBorn,
              value: '${imam.bornHijri}  ·  ${imam.birthplace}',
              accent: imam.accent),
          const SizedBox(height: 10),
          _InfoRow(
              icon: Icons.brightness_1_rounded,
              label: imam.order == 12
                  ? AppLocalizations.of(context).imamLabelStatus
                  : AppLocalizations.of(context).imamLabelMartyrdom,
              value: '${imam.diedHijri}  ·  ${imam.burialPlace}',
              accent: imam.accent),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color accent;
  const _InfoRow(
      {required this.icon,
      required this.label,
      required this.value,
      required this.accent});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: accent, size: 14),
        const SizedBox(width: 8),
        Text(
          '$label  ',
          style: TextStyle(
            color: accent,
            fontSize: 11,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.4,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              color: AppColors.textDim,
              fontSize: 11,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}

class _SectionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color accent;
  final Widget child;

  const _SectionCard({
    required this.icon,
    required this.title,
    required this.accent,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.borderMid),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 3, height: 16,
                decoration: BoxDecoration(
                  color: accent,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 8),
              Icon(icon, color: accent, size: 14),
              const SizedBox(width: 6),
              Text(
                title,
                style: TextStyle(
                  color: accent,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.4,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          child,
        ],
      ),
    );
  }
}

class _QuoteCard extends StatelessWidget {
  final _ImamProfile imam;
  const _QuoteCard({required this.imam});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: imam.accent.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: imam.accent.withValues(alpha: 0.25)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Container(
                width: 3, height: 16,
                decoration: BoxDecoration(
                  color: imam.accent,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.format_quote_rounded,
                  color: AppColors.gold, size: 14),
              const SizedBox(width: 6),
              Text(
                AppLocalizations.of(context).imamSectionFamousSaying,
                style: TextStyle(
                  color: imam.accent,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.4,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          // Arabic
          Text(
            imam.famousQuoteAr,
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: GoogleFonts.amiri(
              color: AppColors.textPrimary,
              fontSize: 18,
              height: 1.9,
            ),
          ),
          const SizedBox(height: 14),
          // English
          Text(
            '"${imam.famousQuote}"',
            style: GoogleFonts.lora(
              color: AppColors.textPrimary,
              fontSize: 14,
              height: 1.7,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              '— ${imam.famousQuoteSource}',
              style: TextStyle(
                color: imam.accent.withValues(alpha: 0.7),
                fontSize: 11,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
