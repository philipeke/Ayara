import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ace.dart';
import 'app_localizations_af.dart';
import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_as.dart';
import 'app_localizations_az.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bs.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_ceb.dart';
import 'app_localizations_ckb.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ga.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_ha.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_ht.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_ig.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_jv.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_km.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ku.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_lb.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mad.dart';
import 'app_localizations_mg.dart';
import 'app_localizations_min.dart';
import 'app_localizations_mk.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_mt.dart';
import 'app_localizations_my.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_no.dart';
import 'app_localizations_ny.dart';
import 'app_localizations_or.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_ps.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_rw.dart';
import 'app_localizations_si.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_so.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_st.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_ti.dart';
import 'app_localizations_tl.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_uz.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_yo.dart';
import 'app_localizations_yue.dart';
import 'app_localizations_zh.dart';
import 'app_localizations_zu.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ace'),
    Locale('af'),
    Locale('am'),
    Locale('ar'),
    Locale('ar', 'AE'),
    Locale('ar', 'EG'),
    Locale('ar', 'IQ'),
    Locale('ar', 'MA'),
    Locale('ar', 'SA'),
    Locale('as'),
    Locale('az'),
    Locale('bg'),
    Locale('bn'),
    Locale('bs'),
    Locale('ca'),
    Locale('ceb'),
    Locale('ckb'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('de', 'AT'),
    Locale('de', 'CH'),
    Locale('el'),
    Locale('en'),
    Locale('en', 'AU'),
    Locale('en', 'CA'),
    Locale('en', 'GB'),
    Locale('en', 'IE'),
    Locale('en', 'NZ'),
    Locale('en', 'SG'),
    Locale('en', 'US'),
    Locale('es'),
    Locale('es', '419'),
    Locale('es', 'AR'),
    Locale('es', 'CL'),
    Locale('es', 'CO'),
    Locale('es', 'ES'),
    Locale('es', 'MX'),
    Locale('es', 'US'),
    Locale('et'),
    Locale('fa'),
    Locale('fi'),
    Locale('fil'),
    Locale('fr'),
    Locale('fr', 'BE'),
    Locale('fr', 'CA'),
    Locale('fr', 'CH'),
    Locale('ga'),
    Locale('gu'),
    Locale('ha'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('ht'),
    Locale('hu'),
    Locale('hy'),
    Locale('id'),
    Locale('ig'),
    Locale('is'),
    Locale('it'),
    Locale('ja'),
    Locale('jv'),
    Locale('ka'),
    Locale('kk'),
    Locale('km'),
    Locale('kn'),
    Locale('ko'),
    Locale('ku'),
    Locale('ky'),
    Locale('lb'),
    Locale('lo'),
    Locale('lt'),
    Locale('lv'),
    Locale('mad'),
    Locale('mg'),
    Locale('min'),
    Locale('mk'),
    Locale('ml'),
    Locale('mn'),
    Locale('mr'),
    Locale('ms'),
    Locale('mt'),
    Locale('my'),
    Locale('ne'),
    Locale('nl'),
    Locale('no'),
    Locale('ny'),
    Locale('or'),
    Locale('pa'),
    Locale('pl'),
    Locale('ps'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('pt', 'PT'),
    Locale('ro'),
    Locale('rw'),
    Locale('si'),
    Locale('sk'),
    Locale('sl'),
    Locale('so'),
    Locale('sq'),
    Locale('sr'),
    Locale('st'),
    Locale('sv'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('ti'),
    Locale('tl'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('uz'),
    Locale('vi'),
    Locale('yo'),
    Locale('yue'),
    Locale('zh'),
    Locale('zh', 'CN'),
    Locale('zh', 'HK'),
    Locale('zh', 'SG'),
    Locale('zh', 'TW'),
    Locale('zu'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Ayara'**
  String get appTitle;

  /// No description provided for @languageSelectTitle.
  ///
  /// In en, this message translates to:
  /// **'Choose your language'**
  String get languageSelectTitle;

  /// No description provided for @languageSelectSub.
  ///
  /// In en, this message translates to:
  /// **'You can change this later in Settings'**
  String get languageSelectSub;

  /// No description provided for @actionContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get actionContinue;

  /// No description provided for @languageSuggestedHeader.
  ///
  /// In en, this message translates to:
  /// **'Suggested'**
  String get languageSuggestedHeader;

  /// No description provided for @languageAllHeader.
  ///
  /// In en, this message translates to:
  /// **'All languages'**
  String get languageAllHeader;

  /// No description provided for @languageSuggestedBadge.
  ///
  /// In en, this message translates to:
  /// **'Suggested'**
  String get languageSuggestedBadge;

  /// No description provided for @languageSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search…'**
  String get languageSearchHint;

  /// No description provided for @planGrace.
  ///
  /// In en, this message translates to:
  /// **'Standard'**
  String get planGrace;

  /// No description provided for @planBlessed.
  ///
  /// In en, this message translates to:
  /// **'Barakah'**
  String get planBlessed;

  /// No description provided for @categoryDailyGuidance.
  ///
  /// In en, this message translates to:
  /// **'Daily Guidance'**
  String get categoryDailyGuidance;

  /// No description provided for @categoryFaithTrust.
  ///
  /// In en, this message translates to:
  /// **'Iman & Trust'**
  String get categoryFaithTrust;

  /// No description provided for @categoryPrayerReflection.
  ///
  /// In en, this message translates to:
  /// **'Prayer Reflection'**
  String get categoryPrayerReflection;

  /// No description provided for @categoryHopeDifficultTimes.
  ///
  /// In en, this message translates to:
  /// **'Patience Hope'**
  String get categoryHopeDifficultTimes;

  /// No description provided for @categoryForgiveness.
  ///
  /// In en, this message translates to:
  /// **'Seek Forgiveness'**
  String get categoryForgiveness;

  /// No description provided for @categoryLoveCompassion.
  ///
  /// In en, this message translates to:
  /// **'Mercy Compassion'**
  String get categoryLoveCompassion;

  /// No description provided for @categoryStrengthCourage.
  ///
  /// In en, this message translates to:
  /// **'Faith Strength'**
  String get categoryStrengthCourage;

  /// No description provided for @categoryGratitude.
  ///
  /// In en, this message translates to:
  /// **'Grateful Heart'**
  String get categoryGratitude;

  /// No description provided for @categoryPurposeCalling.
  ///
  /// In en, this message translates to:
  /// **'Life Purpose'**
  String get categoryPurposeCalling;

  /// No description provided for @categoryFamilyRelationships.
  ///
  /// In en, this message translates to:
  /// **'Family Ties'**
  String get categoryFamilyRelationships;

  /// No description provided for @categoryPeaceAnxietyRelief.
  ///
  /// In en, this message translates to:
  /// **'Inner Peace'**
  String get categoryPeaceAnxietyRelief;

  /// No description provided for @categoryWisdomOfJesus.
  ///
  /// In en, this message translates to:
  /// **'Prophet Wisdom'**
  String get categoryWisdomOfJesus;

  /// No description provided for @categoryHumilityCharacter.
  ///
  /// In en, this message translates to:
  /// **'Good Character'**
  String get categoryHumilityCharacter;

  /// No description provided for @categoryOvercomingTemptation.
  ///
  /// In en, this message translates to:
  /// **'Resist Temptation'**
  String get categoryOvercomingTemptation;

  /// No description provided for @categoryEveningReflection.
  ///
  /// In en, this message translates to:
  /// **'Evening Dhikr'**
  String get categoryEveningReflection;

  /// No description provided for @categoryCustom.
  ///
  /// In en, this message translates to:
  /// **'Personal Reflection'**
  String get categoryCustom;

  /// No description provided for @dhikrMeaningSubhanallah.
  ///
  /// In en, this message translates to:
  /// **'Glory be to Allah'**
  String get dhikrMeaningSubhanallah;

  /// No description provided for @dhikrMeaningAlhamdulillah.
  ///
  /// In en, this message translates to:
  /// **'All praise is due to Allah'**
  String get dhikrMeaningAlhamdulillah;

  /// No description provided for @dhikrMeaningAllahuAkbar.
  ///
  /// In en, this message translates to:
  /// **'Allah is the Greatest'**
  String get dhikrMeaningAllahuAkbar;

  /// No description provided for @quranVerseHeartAtRest.
  ///
  /// In en, this message translates to:
  /// **'Verily, in the remembrance of Allah do hearts find rest.'**
  String get quranVerseHeartAtRest;

  /// No description provided for @promptHint.
  ///
  /// In en, this message translates to:
  /// **'Tap a category for Islamic guidance and reflection'**
  String get promptHint;

  /// No description provided for @currentLanguage.
  ///
  /// In en, this message translates to:
  /// **'Current language'**
  String get currentLanguage;

  /// No description provided for @settingsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language settings'**
  String get settingsLanguage;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @chooseLanguage.
  ///
  /// In en, this message translates to:
  /// **'Choose your language'**
  String get chooseLanguage;

  /// No description provided for @continueCta.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueCta;

  /// No description provided for @promptDailyGuidance.
  ///
  /// In en, this message translates to:
  /// **'Write a short, practical daily guidance rooted in Shia Islamic faith — grounded in the Quran and the teachings of the Prophet Muhammad and the Ahl al-Bayt. Choose a fresh angle each time: a virtue from Islamic ethics, wisdom from one of the twelve Imams, a teaching from Nahj al-Balagha, or a quiet practice from the Shia tradition. Include one Quran verse (Surah:Ayah) and a 1-2 sentence reflection to carry through the day. Optionally connect it to the Islamic calendar or an important date if relevant.'**
  String get promptDailyGuidance;

  /// No description provided for @promptFaithTrust.
  ///
  /// In en, this message translates to:
  /// **'Write a short Islamic reflection on Iman (faith) and trust in Allah\'s plan (Tawakkul). Root it in the Quran, the example of Prophet Muhammad, and the faith of the Sahaba. Vary the theme each time: trusting Allah during uncertainty, relying on divine wisdom, patience in trials, or quiet perseverance in everyday life. Include one Quran verse and one honest step for today drawn from Islamic spiritual wisdom.'**
  String get promptFaithTrust;

  /// No description provided for @promptPrayerReflection.
  ///
  /// In en, this message translates to:
  /// **'Write a short Islamic prayer reflection rooted in Salah, Dua, or Dhikr. Vary the form each time: a morning or evening remembrance (Adhkar), reflection on the five daily prayers, contemplation of a Quranic verse, or a heartfelt supplication. Include one Quran verse and briefly name the prayer form used.'**
  String get promptPrayerReflection;

  /// No description provided for @promptHopeDifficultTimes.
  ///
  /// In en, this message translates to:
  /// **'Write an Islamic reflection on patience (Sabr) and hope during hardship. Draw from Quranic teachings about trials, the perseverance of the Prophets, and the mercy of Allah in difficult moments. Vary the angle each time. Include one Quran verse and one encouraging perspective from Islamic tradition.'**
  String get promptHopeDifficultTimes;

  /// No description provided for @promptForgiveness.
  ///
  /// In en, this message translates to:
  /// **'Write a wise Islamic reflection about seeking forgiveness (Tawbah) and Allah\'s mercy. Draw from Quranic teachings on repentance, Allah\'s compassion, and the forgiving example of Prophet Muhammad. Vary the theme: turning back to Allah, forgiving others, healing relationships, or believing in Allah\'s mercy after mistakes. Include one Quran verse and one concrete step.'**
  String get promptForgiveness;

  /// No description provided for @promptLoveCompassion.
  ///
  /// In en, this message translates to:
  /// **'Write a short Islamic reflection on mercy (Rahmah) and compassion in everyday life. Draw from the example of Prophet Muhammad, the concept of Ihsan (excellence), and Islamic teachings on kindness to family, neighbors, and the vulnerable. Include one Quran verse and one small act of compassion to practice today.'**
  String get promptLoveCompassion;

  /// No description provided for @promptStrengthCourage.
  ///
  /// In en, this message translates to:
  /// **'Write an Islamic reflection on faith-based strength and courage. Draw from examples of the Prophets, the early Muslim community, and believers who remained firm in hardship. Vary the theme each time: courage through faith, strength in prayer, trust in Allah during fear, or resilience in difficulty. Include one Quran verse and a short supplication or phrase of remembrance.'**
  String get promptStrengthCourage;

  /// No description provided for @promptGratitude.
  ///
  /// In en, this message translates to:
  /// **'Write an Islamic reflection on gratitude (Shukr) toward Allah. Root it in Quranic teaching and prophetic tradition. Vary the angle: gratitude in hardship, appreciating small blessings, beginning the day with praise of Allah, or recognizing Allah\'s guidance in daily life. Include one Quran verse and one gratitude practice.'**
  String get promptGratitude;

  /// No description provided for @promptPurposeCalling.
  ///
  /// In en, this message translates to:
  /// **'Write an Islamic reflection on life\'s purpose in worshipping Allah and living righteously. Draw from Quranic teachings about purpose, serving others, and using one\'s gifts for good. Vary the theme each time: serving family and community, seeking guidance through Istikhara, living with intention, or finding meaning in ordinary work. Include one Quran verse and two reflective questions.'**
  String get promptPurposeCalling;

  /// No description provided for @promptFamilyRelationships.
  ///
  /// In en, this message translates to:
  /// **'Write wise Islamic guidance on family and relationships rooted in Quranic teaching and the example of Prophet Muhammad. Vary the theme each time: kindness in family life, patience in conflict, honoring parents, raising children in faith, or strengthening marriage. Include one Quran verse and one relational practice to try.'**
  String get promptFamilyRelationships;

  /// No description provided for @promptPeaceAnxietyRelief.
  ///
  /// In en, this message translates to:
  /// **'Write a calming Islamic reflection about finding inner peace through remembrance of Allah (Dhikr) and trust in His plan. Draw from Quranic teachings about tranquility of the heart, prayer, and surrender to Allah\'s will. Vary the approach each time and include one Quran verse and one simple grounding practice from Islamic tradition.'**
  String get promptPeaceAnxietyRelief;

  /// No description provided for @promptWisdomOfJesus.
  ///
  /// In en, this message translates to:
  /// **'Write a short piece of wisdom from the Prophets as taught in Islam. Draw from the Quran or Hadith and briefly explain how Islamic scholars have understood the teaching. Vary the topic each time: character, patience, humility, faith, or daily conduct. Include a Quranic verse or Hadith reference and one practical application.'**
  String get promptWisdomOfJesus;

  /// No description provided for @promptHumilityCharacter.
  ///
  /// In en, this message translates to:
  /// **'Write an Islamic reflection on humility (Tawadhu) and good character (Akhlaq). Draw from Quranic teachings, the example of Prophet Muhammad, and the tradition of Islamic character development. Vary the theme: humility in leadership, admitting mistakes, treating others with respect, or growing spiritually through self-reflection. Include one Quran verse and one habit to practice.'**
  String get promptHumilityCharacter;

  /// No description provided for @promptOvercomingTemptation.
  ///
  /// In en, this message translates to:
  /// **'Write an Islamic reflection on resisting temptation and staying on the straight path. Draw from Quranic guidance, remembrance of Allah (Dhikr), prayer (Salah), and examples of believers who overcame struggles. Vary the angle each time. Include one Quran verse and one practical strategy for the next 24 hours.'**
  String get promptOvercomingTemptation;

  /// No description provided for @promptEveningReflection.
  ///
  /// In en, this message translates to:
  /// **'Write a peaceful Islamic evening reflection rooted in the tradition of evening remembrance (Adhkar al-Masaa\'). Encourage gratitude, self-reflection (Muhasabah), and trust in Allah before rest. Include 3–5 short reflection prompts about the day, a brief closing supplication, and one Quran verse.'**
  String get promptEveningReflection;

  /// No description provided for @wordCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one {{count} word} other {{count} words}}'**
  String wordCount(num count);

  /// No description provided for @optionsCta.
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get optionsCta;

  /// No description provided for @newCta.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get newCta;

  /// No description provided for @actionsTitle.
  ///
  /// In en, this message translates to:
  /// **'What would you like to do?'**
  String get actionsTitle;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @copiedToast.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get copiedToast;

  /// Email / share subject line including the category label.
  ///
  /// In en, this message translates to:
  /// **'Ayara — {category}'**
  String shareSubject(String category);

  /// No description provided for @regenerateErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t generate a new reply'**
  String get regenerateErrorTitle;

  /// Shown when regenerating an AI answer fails.
  ///
  /// In en, this message translates to:
  /// **'{error}\n\nDo you want to try again?'**
  String regenerateErrorBody(String error);

  /// No description provided for @cancelCta.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelCta;

  /// No description provided for @retryCta.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get retryCta;

  /// No description provided for @authTitle.
  ///
  /// In en, this message translates to:
  /// **'Create your account'**
  String get authTitle;

  /// No description provided for @continueAsGuest.
  ///
  /// In en, this message translates to:
  /// **'Continue as guest'**
  String get continueAsGuest;

  /// No description provided for @signInGoogle.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Google'**
  String get signInGoogle;

  /// No description provided for @signInApple.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Apple'**
  String get signInApple;

  /// No description provided for @signInEmail.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Email'**
  String get signInEmail;

  /// No description provided for @upgradeWithApple.
  ///
  /// In en, this message translates to:
  /// **'Continue with Apple'**
  String get upgradeWithApple;

  /// No description provided for @mustAccept.
  ///
  /// In en, this message translates to:
  /// **'You must accept the Terms and acknowledge the Privacy Policy.'**
  String get mustAccept;

  /// No description provided for @termsLabel.
  ///
  /// In en, this message translates to:
  /// **'I accept the Terms of Service'**
  String get termsLabel;

  /// No description provided for @privacyLabel.
  ///
  /// In en, this message translates to:
  /// **'I have read the Privacy Policy'**
  String get privacyLabel;

  /// No description provided for @marketingOptIn.
  ///
  /// In en, this message translates to:
  /// **'I agree to receive news and offers'**
  String get marketingOptIn;

  /// No description provided for @openTerms.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get openTerms;

  /// No description provided for @openPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get openPrivacy;

  /// No description provided for @accountSection.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get accountSection;

  /// No description provided for @guestMode.
  ///
  /// In en, this message translates to:
  /// **'Guest mode'**
  String get guestMode;

  /// No description provided for @signedIn.
  ///
  /// In en, this message translates to:
  /// **'Signed in'**
  String get signedIn;

  /// No description provided for @upgradeHint.
  ///
  /// In en, this message translates to:
  /// **'Save your reflections across devices by creating an account.'**
  String get upgradeHint;

  /// No description provided for @upgradeWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get upgradeWithGoogle;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signOut;

  /// No description provided for @snackUpgraded.
  ///
  /// In en, this message translates to:
  /// **'Account upgraded with Google ✅'**
  String get snackUpgraded;

  /// No description provided for @snackSignedIn.
  ///
  /// In en, this message translates to:
  /// **'Signed in with Google ✅'**
  String get snackSignedIn;

  /// No description provided for @snackSignedOut.
  ///
  /// In en, this message translates to:
  /// **'Signed out'**
  String get snackSignedOut;

  /// No description provided for @snackSignedInApple.
  ///
  /// In en, this message translates to:
  /// **'Signed in with Apple ✅'**
  String get snackSignedInApple;

  /// No description provided for @snackSignedInGoogle.
  ///
  /// In en, this message translates to:
  /// **'Signed in with Google ✅'**
  String get snackSignedInGoogle;

  /// No description provided for @snackUpgradedApple.
  ///
  /// In en, this message translates to:
  /// **'Account upgraded with Apple ✅'**
  String get snackUpgradedApple;

  /// No description provided for @snackUpgradedGoogle.
  ///
  /// In en, this message translates to:
  /// **'Account upgraded with Google ✅'**
  String get snackUpgradedGoogle;

  /// No description provided for @historyTitle.
  ///
  /// In en, this message translates to:
  /// **'Previous reflections'**
  String get historyTitle;

  /// No description provided for @historyOpenCta.
  ///
  /// In en, this message translates to:
  /// **'Previous reflections'**
  String get historyOpenCta;

  /// No description provided for @historyEmpty.
  ///
  /// In en, this message translates to:
  /// **'No saved reflections yet.'**
  String get historyEmpty;

  /// No description provided for @historyDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete reflection?'**
  String get historyDeleteTitle;

  /// No description provided for @historyDeleteBody.
  ///
  /// In en, this message translates to:
  /// **'This will permanently remove the selected item.'**
  String get historyDeleteBody;

  /// No description provided for @deleteCta.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get deleteCta;

  /// No description provided for @historyButton.
  ///
  /// In en, this message translates to:
  /// **'Previous Reflections'**
  String get historyButton;

  /// No description provided for @historyEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No reflections yet'**
  String get historyEmptyTitle;

  /// No description provided for @historyEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Generate something first — your saved items will appear here.'**
  String get historyEmptyBody;

  /// No description provided for @historyDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get historyDelete;

  /// No description provided for @footerTitle.
  ///
  /// In en, this message translates to:
  /// **'With Iman, sabr and rahma.'**
  String get footerTitle;

  /// No description provided for @footerSubtitle.
  ///
  /// In en, this message translates to:
  /// **'One step at a time.'**
  String get footerSubtitle;

  /// No description provided for @genericErrorSnack.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong — please try again in a moment.'**
  String get genericErrorSnack;

  /// No description provided for @upgradeAccountCta.
  ///
  /// In en, this message translates to:
  /// **'Save your reflections across devices – create an account'**
  String get upgradeAccountCta;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get deleteAccount;

  /// No description provided for @exportData.
  ///
  /// In en, this message translates to:
  /// **'Export my data'**
  String get exportData;

  /// Label before showing the internal Firebase UID.
  ///
  /// In en, this message translates to:
  /// **'UID: {uid}'**
  String userUidLabel(String uid);

  /// No description provided for @rateLocalThrottle.
  ///
  /// In en, this message translates to:
  /// **'Easy tiger 🐯\nAI needs a moment before the next one…'**
  String get rateLocalThrottle;

  /// No description provided for @rateDailyLimit.
  ///
  /// In en, this message translates to:
  /// **'You\'re out of reflections for now.\nGet more reflections or upgrade to Barakah.'**
  String get rateDailyLimit;

  /// No description provided for @rateCreditsExhausted.
  ///
  /// In en, this message translates to:
  /// **'You\'ve used all your reflections.\nTop up or upgrade to Barakah to continue.'**
  String get rateCreditsExhausted;

  /// No description provided for @rateGraceReflectionsExhausted.
  ///
  /// In en, this message translates to:
  /// **'You\'re out of reflections for now.\nGet more reflections or upgrade to Barakah.'**
  String get rateGraceReflectionsExhausted;

  /// No description provided for @rateReflectionsExhausted.
  ///
  /// In en, this message translates to:
  /// **'You\'ve used all your reflections.\nTop up or upgrade to Barakah to continue.'**
  String get rateReflectionsExhausted;

  /// No description provided for @blessedDescription.
  ///
  /// In en, this message translates to:
  /// **'Barakah unlocks premium features, future categories, and a special badge.'**
  String get blessedDescription;

  /// No description provided for @championDescription.
  ///
  /// In en, this message translates to:
  /// **'Barakah unlocks premium features, future categories, and a special badge.'**
  String get championDescription;

  /// Shown when the user's reflections are exhausted but the reason is generic.
  ///
  /// In en, this message translates to:
  /// **'Your reflections are empty right now. Plan: {plan}.'**
  String ratePlanExhausted(String plan);

  /// Shown when the callable function returns an error message.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t check your reflections: {message}'**
  String rateCheckFailed(String message);

  /// No description provided for @rateCheckGenericError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong while checking your reflections.'**
  String get rateCheckGenericError;

  /// No description provided for @aiFallbackGeneric.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong — please try again in a moment.'**
  String get aiFallbackGeneric;

  /// No description provided for @limitSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Reflections'**
  String get limitSectionTitle;

  /// No description provided for @limitTodayLabel.
  ///
  /// In en, this message translates to:
  /// **'Usage'**
  String get limitTodayLabel;

  /// No description provided for @limitCreditsLabel.
  ///
  /// In en, this message translates to:
  /// **'Remaining reflections: {credits}'**
  String limitCreditsLabel(Object credits);

  /// Shows the current subscription plan name.
  ///
  /// In en, this message translates to:
  /// **'Plan: {plan}'**
  String limitPlanLabel(String plan);

  /// No description provided for @limitLoadingLabel.
  ///
  /// In en, this message translates to:
  /// **'Loading…'**
  String get limitLoadingLabel;

  /// No description provided for @limitLoadingLabelDescription.
  ///
  /// In en, this message translates to:
  /// **'Shown in reflections card while usage stats are being fetched.'**
  String get limitLoadingLabelDescription;

  /// No description provided for @aiLimitTitle.
  ///
  /// In en, this message translates to:
  /// **'Reflections'**
  String get aiLimitTitle;

  /// No description provided for @aiLimitSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Each response uses 1 reflection. Standard includes starter reflections. Barakah unlocks premium categories and enables top-ups.'**
  String get aiLimitSubtitle;

  /// No description provided for @aiLimitProgressLabel.
  ///
  /// In en, this message translates to:
  /// **'{used} / {total} reflections used'**
  String aiLimitProgressLabel(Object used, Object total);

  /// No description provided for @reflectionsSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Reflections'**
  String get reflectionsSectionTitle;

  /// No description provided for @reflectionsUsageLabel.
  ///
  /// In en, this message translates to:
  /// **'Usage'**
  String get reflectionsUsageLabel;

  /// No description provided for @reflectionsRemainingLabel.
  ///
  /// In en, this message translates to:
  /// **'Remaining reflections: {reflections}'**
  String reflectionsRemainingLabel(Object reflections);

  /// Shows the current plan name.
  ///
  /// In en, this message translates to:
  /// **'Plan: {plan}'**
  String reflectionsPlanLabel(String plan);

  /// No description provided for @reflectionsLoadingLabel.
  ///
  /// In en, this message translates to:
  /// **'Loading…'**
  String get reflectionsLoadingLabel;

  /// No description provided for @reflectionsLoadingLabelDescription.
  ///
  /// In en, this message translates to:
  /// **'Shown while reflection stats are being fetched.'**
  String get reflectionsLoadingLabelDescription;

  /// No description provided for @reflectionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Reflections'**
  String get reflectionsTitle;

  /// No description provided for @reflectionsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Each response uses 1 reflection. Standard includes starter reflections. Barakah unlocks premium categories and enables top-ups.'**
  String get reflectionsSubtitle;

  /// No description provided for @reflectionsProgressLabel.
  ///
  /// In en, this message translates to:
  /// **'{used} / {total} reflections used'**
  String reflectionsProgressLabel(Object used, Object total);

  /// No description provided for @settingsDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get settingsDeleteTitle;

  /// No description provided for @settingsDeleteDescription.
  ///
  /// In en, this message translates to:
  /// **'Permanently delete your account and all associated data.'**
  String get settingsDeleteDescription;

  /// No description provided for @settingsDeleteButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'Delete my account'**
  String get settingsDeleteButtonLabel;

  /// No description provided for @settingsDeleteDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete account?'**
  String get settingsDeleteDialogTitle;

  /// No description provided for @settingsDeleteDialogBody.
  ///
  /// In en, this message translates to:
  /// **'This action is permanent and cannot be undone.\n\nAll your chats, history and account information will be deleted.'**
  String get settingsDeleteDialogBody;

  /// No description provided for @settingsDeleteDialogCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get settingsDeleteDialogCancel;

  /// No description provided for @settingsDeleteDialogConfirm.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get settingsDeleteDialogConfirm;

  /// No description provided for @settingsFreeLimitUsedTitle.
  ///
  /// In en, this message translates to:
  /// **'Starter reflections used'**
  String get settingsFreeLimitUsedTitle;

  /// No description provided for @settingsFreeLimitUsedDescription.
  ///
  /// In en, this message translates to:
  /// **'The starter reflections for this device have been used. Upgrade to Barakah or buy more reflections to continue.'**
  String get settingsFreeLimitUsedDescription;

  /// No description provided for @settingsStarterReflectionsUsedTitle.
  ///
  /// In en, this message translates to:
  /// **'Starter reflections used'**
  String get settingsStarterReflectionsUsedTitle;

  /// No description provided for @settingsStarterReflectionsUsedDescription.
  ///
  /// In en, this message translates to:
  /// **'The starter reflections for this device have been used. Upgrade to Barakah or buy more reflections to continue.'**
  String get settingsStarterReflectionsUsedDescription;

  /// No description provided for @deviceBoundError.
  ///
  /// In en, this message translates to:
  /// **'This device is already linked to another account. Please sign in with the original account.'**
  String get deviceBoundError;

  /// No description provided for @premiumTitle.
  ///
  /// In en, this message translates to:
  /// **'Barakah mode'**
  String get premiumTitle;

  /// No description provided for @premiumSubtitleBasic.
  ///
  /// In en, this message translates to:
  /// **'Unlock the full Ayara experience.'**
  String get premiumSubtitleBasic;

  /// No description provided for @premiumSubtitleChampion.
  ///
  /// In en, this message translates to:
  /// **'You\'re Barakah. Need more reflections?'**
  String get premiumSubtitleChampion;

  /// No description provided for @premiumCurrentPlan.
  ///
  /// In en, this message translates to:
  /// **'Current plan: {plan}'**
  String premiumCurrentPlan(Object plan);

  /// No description provided for @premiumCreditsStatus.
  ///
  /// In en, this message translates to:
  /// **'Reflections: {remaining} / {total}'**
  String premiumCreditsStatus(Object remaining, Object total);

  /// No description provided for @premiumPurchasesUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Purchases are not available right now.'**
  String get premiumPurchasesUnavailable;

  /// No description provided for @premiumSignInToPurchase.
  ///
  /// In en, this message translates to:
  /// **'Sign in to buy reflections or unlock Barakah.'**
  String get premiumSignInToPurchase;

  /// No description provided for @premiumRestorePurchases.
  ///
  /// In en, this message translates to:
  /// **'Restore purchases'**
  String get premiumRestorePurchases;

  /// No description provided for @premiumProcessing.
  ///
  /// In en, this message translates to:
  /// **'Processing…'**
  String get premiumProcessing;

  /// No description provided for @premiumRestoreHintTitle.
  ///
  /// In en, this message translates to:
  /// **'Already purchased Barakah or reflections on this device or another one?'**
  String get premiumRestoreHintTitle;

  /// No description provided for @premiumRestoreHintBody.
  ///
  /// In en, this message translates to:
  /// **'Restore your purchases if they\'re not showing up.'**
  String get premiumRestoreHintBody;

  /// No description provided for @premiumBuyCredits200.
  ///
  /// In en, this message translates to:
  /// **'Buy 200 reflections'**
  String get premiumBuyCredits200;

  /// No description provided for @premiumBuyCredits400.
  ///
  /// In en, this message translates to:
  /// **'Buy 400 reflections'**
  String get premiumBuyCredits400;

  /// No description provided for @premiumBecomeChampionOneTime.
  ///
  /// In en, this message translates to:
  /// **'Upgrade to Barakah mode'**
  String get premiumBecomeChampionOneTime;

  /// No description provided for @premiumChampionHint.
  ///
  /// In en, this message translates to:
  /// **'As Barakah, you can top up with extra reflections whenever you need.'**
  String get premiumChampionHint;

  /// No description provided for @premiumUpgradeCta.
  ///
  /// In en, this message translates to:
  /// **'Upgrade'**
  String get premiumUpgradeCta;

  /// No description provided for @premiumRequiredForCategory.
  ///
  /// In en, this message translates to:
  /// **'This category is only available for Barakah users. Upgrade in Settings to unlock all premium content.'**
  String get premiumRequiredForCategory;

  /// No description provided for @premiumBenefitsBasic.
  ///
  /// In en, this message translates to:
  /// **'Unlock Barakah to get extra reflections, access premium categories, and continue whenever you need guidance.'**
  String get premiumBenefitsBasic;

  /// No description provided for @premiumBenefitsChampion.
  ///
  /// In en, this message translates to:
  /// **'You\'re in Barakah mode. If you\'re running low, add some extra reflections and continue without interruptions.'**
  String get premiumBenefitsChampion;

  /// No description provided for @premiumButtonBecomeChampion.
  ///
  /// In en, this message translates to:
  /// **'Unlock Barakah'**
  String get premiumButtonBecomeChampion;

  /// No description provided for @premiumButtonTopup1000.
  ///
  /// In en, this message translates to:
  /// **'Add 1000 reflections'**
  String get premiumButtonTopup1000;

  /// No description provided for @premiumChampionBadge.
  ///
  /// In en, this message translates to:
  /// **'Barakah active'**
  String get premiumChampionBadge;

  /// No description provided for @premiumLoadingStore.
  ///
  /// In en, this message translates to:
  /// **'Loading store…'**
  String get premiumLoadingStore;

  /// No description provided for @blessedTitle.
  ///
  /// In en, this message translates to:
  /// **'Barakah mode'**
  String get blessedTitle;

  /// No description provided for @blessedSubtitleGrace.
  ///
  /// In en, this message translates to:
  /// **'Unlock the full Ayara experience.'**
  String get blessedSubtitleGrace;

  /// No description provided for @blessedSubtitleBlessed.
  ///
  /// In en, this message translates to:
  /// **'You\'re Barakah. Need more reflections?'**
  String get blessedSubtitleBlessed;

  /// No description provided for @blessedCurrentPlan.
  ///
  /// In en, this message translates to:
  /// **'Current plan: {plan}'**
  String blessedCurrentPlan(Object plan);

  /// No description provided for @blessedReflectionsStatus.
  ///
  /// In en, this message translates to:
  /// **'Reflections: {remaining} / {total}'**
  String blessedReflectionsStatus(Object remaining, Object total);

  /// No description provided for @blessedPurchasesUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Purchases are not available right now.'**
  String get blessedPurchasesUnavailable;

  /// No description provided for @blessedProductNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'This product isn\'t available in the store yet. Please try again later.'**
  String get blessedProductNotAvailable;

  /// No description provided for @blessedPurchaseError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong with the purchase. Please try again.'**
  String get blessedPurchaseError;

  /// No description provided for @blessedSignInToPurchase.
  ///
  /// In en, this message translates to:
  /// **'Sign in to buy reflections or unlock Barakah.'**
  String get blessedSignInToPurchase;

  /// No description provided for @blessedRestorePurchases.
  ///
  /// In en, this message translates to:
  /// **'Restore purchases'**
  String get blessedRestorePurchases;

  /// No description provided for @blessedProcessing.
  ///
  /// In en, this message translates to:
  /// **'Processing…'**
  String get blessedProcessing;

  /// No description provided for @blessedRestoreHintTitle.
  ///
  /// In en, this message translates to:
  /// **'Already purchased Barakah or reflections on this device or another one?'**
  String get blessedRestoreHintTitle;

  /// No description provided for @blessedRestoreHintBody.
  ///
  /// In en, this message translates to:
  /// **'Restore your purchases if they\'re not showing up.'**
  String get blessedRestoreHintBody;

  /// No description provided for @blessedBuyReflections100.
  ///
  /// In en, this message translates to:
  /// **'Add 100 reflections'**
  String get blessedBuyReflections100;

  /// No description provided for @blessedBuyReflections200.
  ///
  /// In en, this message translates to:
  /// **'Buy 200 reflections'**
  String get blessedBuyReflections200;

  /// No description provided for @blessedBuyReflections400.
  ///
  /// In en, this message translates to:
  /// **'Buy 400 reflections'**
  String get blessedBuyReflections400;

  /// No description provided for @blessedBecomeBlessedOneTime.
  ///
  /// In en, this message translates to:
  /// **'Upgrade to Barakah'**
  String get blessedBecomeBlessedOneTime;

  /// No description provided for @blessedTopupHint.
  ///
  /// In en, this message translates to:
  /// **'As Barakah, you can top up with extra reflections whenever you need.'**
  String get blessedTopupHint;

  /// No description provided for @blessedUpgradeCta.
  ///
  /// In en, this message translates to:
  /// **'Upgrade'**
  String get blessedUpgradeCta;

  /// No description provided for @blessedRequiredForCategory.
  ///
  /// In en, this message translates to:
  /// **'This category is only available for Barakah users. Upgrade in Settings to unlock all premium content.'**
  String get blessedRequiredForCategory;

  /// No description provided for @blessedFeatureLocked.
  ///
  /// In en, this message translates to:
  /// **'Unlock Barakah to access this feature.'**
  String get blessedFeatureLocked;

  /// No description provided for @lockedCategoriesHint.
  ///
  /// In en, this message translates to:
  /// **'Some categories are reserved for Barakah members. Unlock them to explore every reflection on your journey.'**
  String get lockedCategoriesHint;

  /// No description provided for @blessedBenefitsGrace.
  ///
  /// In en, this message translates to:
  /// **'Unlock Barakah to get extra reflections, access premium categories, and continue whenever you need guidance.'**
  String get blessedBenefitsGrace;

  /// No description provided for @blessedBenefitsBlessed.
  ///
  /// In en, this message translates to:
  /// **'You\'re in Barakah mode. If you\'re running low, add some extra reflections and continue without interruptions.'**
  String get blessedBenefitsBlessed;

  /// No description provided for @blessedButtonBecomeBlessed.
  ///
  /// In en, this message translates to:
  /// **'Unlock Barakah'**
  String get blessedButtonBecomeBlessed;

  /// No description provided for @blessedButtonTopup1000.
  ///
  /// In en, this message translates to:
  /// **'Add 1000 reflections'**
  String get blessedButtonTopup1000;

  /// No description provided for @blessedBadge.
  ///
  /// In en, this message translates to:
  /// **'Barakah active'**
  String get blessedBadge;

  /// No description provided for @blessedLoadingStore.
  ///
  /// In en, this message translates to:
  /// **'Loading store…'**
  String get blessedLoadingStore;

  /// No description provided for @freePlanBlockedTitle.
  ///
  /// In en, this message translates to:
  /// **'You\'ve used up your starter reflections'**
  String get freePlanBlockedTitle;

  /// No description provided for @freePlanBlockedBody.
  ///
  /// In en, this message translates to:
  /// **'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Barakah.'**
  String get freePlanBlockedBody;

  /// No description provided for @freePlanBlockedCtaGoPremium.
  ///
  /// In en, this message translates to:
  /// **'See Barakah options below'**
  String get freePlanBlockedCtaGoPremium;

  /// No description provided for @graceBlockedTitle.
  ///
  /// In en, this message translates to:
  /// **'You\'ve used up your starter reflections'**
  String get graceBlockedTitle;

  /// No description provided for @graceBlockedBody.
  ///
  /// In en, this message translates to:
  /// **'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Barakah.'**
  String get graceBlockedBody;

  /// No description provided for @graceBlockedCtaGoBlessed.
  ///
  /// In en, this message translates to:
  /// **'See Barakah options below'**
  String get graceBlockedCtaGoBlessed;

  /// No description provided for @rateGuestMustSignIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in to use Ayara and your reflections.'**
  String get rateGuestMustSignIn;

  /// No description provided for @guestNoCreditsTitle.
  ///
  /// In en, this message translates to:
  /// **'Guest mode'**
  String get guestNoCreditsTitle;

  /// No description provided for @guestNoCreditsBody.
  ///
  /// In en, this message translates to:
  /// **'As a guest you can browse the app, but you can\'t use reflections. Log in later in Settings to use reflections and unlock purchases.'**
  String get guestNoCreditsBody;

  /// No description provided for @guestNoReflectionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Guest mode'**
  String get guestNoReflectionsTitle;

  /// No description provided for @guestNoReflectionsBody.
  ///
  /// In en, this message translates to:
  /// **'As a guest you can browse the app, but you can\'t use reflections. Log in later in Settings to use reflections and unlock purchases.'**
  String get guestNoReflectionsBody;

  /// No description provided for @guestDialogContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get guestDialogContinue;

  /// No description provided for @guestDialogLoginInstead.
  ///
  /// In en, this message translates to:
  /// **'Log in instead'**
  String get guestDialogLoginInstead;

  /// No description provided for @optionalLabel.
  ///
  /// In en, this message translates to:
  /// **'optional'**
  String get optionalLabel;

  /// No description provided for @accountDeleteSuccessTitle.
  ///
  /// In en, this message translates to:
  /// **'Account deleted'**
  String get accountDeleteSuccessTitle;

  /// No description provided for @accountDeleteSuccessBody.
  ///
  /// In en, this message translates to:
  /// **'Your account and associated data have been deleted successfully.'**
  String get accountDeleteSuccessBody;

  /// No description provided for @accountDeleteSuccessClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get accountDeleteSuccessClose;

  /// No description provided for @accountDeleteErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Could not delete account'**
  String get accountDeleteErrorTitle;

  /// No description provided for @accountDeleteErrorClose.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get accountDeleteErrorClose;

  /// No description provided for @accountDeleteReauthCancelled.
  ///
  /// In en, this message translates to:
  /// **'Re-authentication was cancelled. Please sign in again and retry deletion.'**
  String get accountDeleteReauthCancelled;

  /// No description provided for @accountDeleteReauthRequired.
  ///
  /// In en, this message translates to:
  /// **'Account deletion requires a recent login. Please sign out, sign in again, and retry.'**
  String get accountDeleteReauthRequired;

  /// No description provided for @settingsDeletePermanentWarning.
  ///
  /// In en, this message translates to:
  /// **'This action is permanent and cannot be undone. All data associated with your account will be deleted.'**
  String get settingsDeletePermanentWarning;

  /// No description provided for @dailyGraceTitle.
  ///
  /// In en, this message translates to:
  /// **'Daily Guidance'**
  String get dailyGraceTitle;

  /// No description provided for @dailyGraceScriptureLabel.
  ///
  /// In en, this message translates to:
  /// **'VERSE OF THE DAY'**
  String get dailyGraceScriptureLabel;

  /// No description provided for @dailyGraceSaintLabel.
  ///
  /// In en, this message translates to:
  /// **'SCHOLAR OF THE WEEK'**
  String get dailyGraceSaintLabel;

  /// No description provided for @dailyGraceReflectionLabel.
  ///
  /// In en, this message translates to:
  /// **'EVENING REFLECTION'**
  String get dailyGraceReflectionLabel;

  /// No description provided for @dailyGraceCopiedToast.
  ///
  /// In en, this message translates to:
  /// **'Verse copied to clipboard'**
  String get dailyGraceCopiedToast;

  /// No description provided for @dailyScripture0Text.
  ///
  /// In en, this message translates to:
  /// **'Indeed, the righteous will be among gardens and rivers, in a seat of honor near a Mighty King.'**
  String get dailyScripture0Text;

  /// No description provided for @dailyScripture0Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 54:54-55'**
  String get dailyScripture0Ref;

  /// No description provided for @dailyScripture1Text.
  ///
  /// In en, this message translates to:
  /// **'And We have not sent you, [O Muhammad], except as a mercy to the worlds.'**
  String get dailyScripture1Text;

  /// No description provided for @dailyScripture1Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 21:107'**
  String get dailyScripture1Ref;

  /// No description provided for @dailyScripture2Text.
  ///
  /// In en, this message translates to:
  /// **'Is not Allah sufficient for His servant? Yet they frighten you with others besides Him.'**
  String get dailyScripture2Text;

  /// No description provided for @dailyScripture2Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 39:36'**
  String get dailyScripture2Ref;

  /// No description provided for @dailyScripture3Text.
  ///
  /// In en, this message translates to:
  /// **'Perhaps you hate something and it is good for you; and perhaps you love something and it is bad for you. And Allah knows, while you know not.'**
  String get dailyScripture3Text;

  /// No description provided for @dailyScripture3Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 2:216'**
  String get dailyScripture3Ref;

  /// No description provided for @dailyScripture4Text.
  ///
  /// In en, this message translates to:
  /// **'Indeed, Allah is with the patient ones.'**
  String get dailyScripture4Text;

  /// No description provided for @dailyScripture4Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 2:153'**
  String get dailyScripture4Ref;

  /// No description provided for @dailyScripture5Text.
  ///
  /// In en, this message translates to:
  /// **'So remember Me; I will remember you. And be grateful to Me and do not deny Me.'**
  String get dailyScripture5Text;

  /// No description provided for @dailyScripture5Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 2:152'**
  String get dailyScripture5Ref;

  /// No description provided for @dailyScripture6Text.
  ///
  /// In en, this message translates to:
  /// **'Indeed, the most noble of you in the sight of Allah is the most righteous of you.'**
  String get dailyScripture6Text;

  /// No description provided for @dailyScripture6Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 49:13'**
  String get dailyScripture6Ref;

  /// No description provided for @dailyScripture7Text.
  ///
  /// In en, this message translates to:
  /// **'And your Lord has decreed that you worship none but Him, and that you be dutiful to your parents.'**
  String get dailyScripture7Text;

  /// No description provided for @dailyScripture7Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 17:23'**
  String get dailyScripture7Ref;

  /// No description provided for @dailyScripture8Text.
  ///
  /// In en, this message translates to:
  /// **'Verily, with hardship comes ease.'**
  String get dailyScripture8Text;

  /// No description provided for @dailyScripture8Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 94:6'**
  String get dailyScripture8Ref;

  /// No description provided for @dailyScripture9Text.
  ///
  /// In en, this message translates to:
  /// **'And He is with you wherever you are. And Allah, of what you do, is Seeing.'**
  String get dailyScripture9Text;

  /// No description provided for @dailyScripture9Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 57:4'**
  String get dailyScripture9Ref;

  /// No description provided for @dailyScripture10Text.
  ///
  /// In en, this message translates to:
  /// **'Allah does not burden a soul beyond that it can bear.'**
  String get dailyScripture10Text;

  /// No description provided for @dailyScripture10Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 2:286'**
  String get dailyScripture10Ref;

  /// No description provided for @dailyScripture11Text.
  ///
  /// In en, this message translates to:
  /// **'And whoever relies upon Allah — then He is sufficient for him.'**
  String get dailyScripture11Text;

  /// No description provided for @dailyScripture11Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 65:3'**
  String get dailyScripture11Ref;

  /// No description provided for @dailyScripture12Text.
  ///
  /// In en, this message translates to:
  /// **'My mercy encompasses all things.'**
  String get dailyScripture12Text;

  /// No description provided for @dailyScripture12Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 7:156'**
  String get dailyScripture12Ref;

  /// No description provided for @dailyScripture13Text.
  ///
  /// In en, this message translates to:
  /// **'And when My servants ask you about Me — indeed I am near. I respond to the supplicant when he calls upon Me.'**
  String get dailyScripture13Text;

  /// No description provided for @dailyScripture13Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 2:186'**
  String get dailyScripture13Ref;

  /// No description provided for @dailyScripture14Text.
  ///
  /// In en, this message translates to:
  /// **'Whoever does righteousness, whether male or female, while being a believer — We will surely cause him to live a good life.'**
  String get dailyScripture14Text;

  /// No description provided for @dailyScripture14Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 16:97'**
  String get dailyScripture14Ref;

  /// No description provided for @dailyScripture15Text.
  ///
  /// In en, this message translates to:
  /// **'Indeed, Allah will not change the condition of a people until they change what is in themselves.'**
  String get dailyScripture15Text;

  /// No description provided for @dailyScripture15Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 13:11'**
  String get dailyScripture15Ref;

  /// No description provided for @dailyScripture16Text.
  ///
  /// In en, this message translates to:
  /// **'So do not weaken and do not grieve, and you will be superior if you are true believers.'**
  String get dailyScripture16Text;

  /// No description provided for @dailyScripture16Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 3:139'**
  String get dailyScripture16Ref;

  /// No description provided for @dailyScripture17Text.
  ///
  /// In en, this message translates to:
  /// **'O My servants who have transgressed against themselves, do not despair of the mercy of Allah. Indeed, Allah forgives all sins.'**
  String get dailyScripture17Text;

  /// No description provided for @dailyScripture17Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 39:53'**
  String get dailyScripture17Ref;

  /// No description provided for @dailyScripture18Text.
  ///
  /// In en, this message translates to:
  /// **'And whoever fears Allah — He will make for him a way out, and will provide for him from where he does not expect.'**
  String get dailyScripture18Text;

  /// No description provided for @dailyScripture18Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 65:2-3'**
  String get dailyScripture18Ref;

  /// No description provided for @dailyScripture19Text.
  ///
  /// In en, this message translates to:
  /// **'Do not lose hope in the mercy of Allah.'**
  String get dailyScripture19Text;

  /// No description provided for @dailyScripture19Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 12:87'**
  String get dailyScripture19Ref;

  /// No description provided for @dailyScripture20Text.
  ///
  /// In en, this message translates to:
  /// **'And We have certainly made the Quran easy to remember. So is there anyone who will be mindful?'**
  String get dailyScripture20Text;

  /// No description provided for @dailyScripture20Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 54:17'**
  String get dailyScripture20Ref;

  /// No description provided for @dailyScripture21Text.
  ///
  /// In en, this message translates to:
  /// **'And He found you lost and guided you.'**
  String get dailyScripture21Text;

  /// No description provided for @dailyScripture21Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 93:7'**
  String get dailyScripture21Ref;

  /// No description provided for @dailyScripture22Text.
  ///
  /// In en, this message translates to:
  /// **'And your Lord says: Call upon Me; I will respond to you.'**
  String get dailyScripture22Text;

  /// No description provided for @dailyScripture22Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 40:60'**
  String get dailyScripture22Ref;

  /// No description provided for @dailyScripture23Text.
  ///
  /// In en, this message translates to:
  /// **'And We have certainly honored the children of Adam.'**
  String get dailyScripture23Text;

  /// No description provided for @dailyScripture23Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 17:70'**
  String get dailyScripture23Ref;

  /// No description provided for @dailyScripture24Text.
  ///
  /// In en, this message translates to:
  /// **'And seek help through patience and prayer.'**
  String get dailyScripture24Text;

  /// No description provided for @dailyScripture24Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 2:45'**
  String get dailyScripture24Ref;

  /// No description provided for @dailyScripture25Text.
  ///
  /// In en, this message translates to:
  /// **'Whoever does an atom\'s weight of good will see it.'**
  String get dailyScripture25Text;

  /// No description provided for @dailyScripture25Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 99:7'**
  String get dailyScripture25Ref;

  /// No description provided for @dailyScripture26Text.
  ///
  /// In en, this message translates to:
  /// **'Unquestionably, the help of Allah is near.'**
  String get dailyScripture26Text;

  /// No description provided for @dailyScripture26Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 2:214'**
  String get dailyScripture26Ref;

  /// No description provided for @dailyScripture27Text.
  ///
  /// In en, this message translates to:
  /// **'And whoever is grateful — his gratitude is only for the benefit of himself.'**
  String get dailyScripture27Text;

  /// No description provided for @dailyScripture27Ref.
  ///
  /// In en, this message translates to:
  /// **'Quran 31:12'**
  String get dailyScripture27Ref;

  /// No description provided for @dailyReflection0.
  ///
  /// In en, this message translates to:
  /// **'As this day closes, consider one moment where Allah\'s mercy was evident.'**
  String get dailyReflection0;

  /// No description provided for @dailyReflection1.
  ///
  /// In en, this message translates to:
  /// **'Bring before Allah whatever weighed on your heart today.'**
  String get dailyReflection1;

  /// No description provided for @dailyReflection2.
  ///
  /// In en, this message translates to:
  /// **'Name one blessing from this day and express gratitude to Allah.'**
  String get dailyReflection2;

  /// No description provided for @dailyReflection3.
  ///
  /// In en, this message translates to:
  /// **'Rest in the knowledge that you are held in Allah\'s infinite care.'**
  String get dailyReflection3;

  /// No description provided for @dailyReflection4.
  ///
  /// In en, this message translates to:
  /// **'Reflect on where you felt called to show compassion and kindness today.'**
  String get dailyReflection4;

  /// No description provided for @dailyReflection5.
  ///
  /// In en, this message translates to:
  /// **'Let go of what you cannot control and trust in Allah\'s perfect plan.'**
  String get dailyReflection5;

  /// No description provided for @dailyReflection6.
  ///
  /// In en, this message translates to:
  /// **'As the day draws to a close, receive peace in remembrance of Allah.'**
  String get dailyReflection6;

  /// No description provided for @dailyReflection7.
  ///
  /// In en, this message translates to:
  /// **'Consider how you honored your prayers today, and thank Allah for each one.'**
  String get dailyReflection7;

  /// No description provided for @dailyReflection8.
  ///
  /// In en, this message translates to:
  /// **'Reflect on a moment where patience (Sabr) guided your actions today.'**
  String get dailyReflection8;

  /// No description provided for @dailyReflection9.
  ///
  /// In en, this message translates to:
  /// **'Ask forgiveness for any shortcoming today — Allah\'s mercy is boundless.'**
  String get dailyReflection9;

  /// No description provided for @dailyReflection10.
  ///
  /// In en, this message translates to:
  /// **'Name one person you showed kindness to today and make dua for them.'**
  String get dailyReflection10;

  /// No description provided for @dailyReflection11.
  ///
  /// In en, this message translates to:
  /// **'Sit with gratitude: what did Allah provide today that you did not ask for?'**
  String get dailyReflection11;

  /// No description provided for @dailyReflection12.
  ///
  /// In en, this message translates to:
  /// **'Reflect on a verse from the Quran that speaks to where you are right now.'**
  String get dailyReflection12;

  /// No description provided for @dailyReflection13.
  ///
  /// In en, this message translates to:
  /// **'Consider how you used your time today — and offer tomorrow to Allah.'**
  String get dailyReflection13;

  /// No description provided for @dailyReflection14.
  ///
  /// In en, this message translates to:
  /// **'Rest knowing that whatever hardship came today, Allah was with you through it.'**
  String get dailyReflection14;

  /// No description provided for @dailyReflection15.
  ///
  /// In en, this message translates to:
  /// **'Think of one way you served your family or community today for Allah\'s sake.'**
  String get dailyReflection15;

  /// No description provided for @dailyReflection16.
  ///
  /// In en, this message translates to:
  /// **'As night falls, make Tawbah — Allah loves those who turn back to Him.'**
  String get dailyReflection16;

  /// No description provided for @dailyReflection17.
  ///
  /// In en, this message translates to:
  /// **'Reflect on the beauty Allah placed in your day, however small.'**
  String get dailyReflection17;

  /// No description provided for @dailyReflection18.
  ///
  /// In en, this message translates to:
  /// **'Consider what you learned today and how it draws you closer to Allah.'**
  String get dailyReflection18;

  /// No description provided for @dailyReflection19.
  ///
  /// In en, this message translates to:
  /// **'Let the day\'s worries rest with Allah — He carries what you cannot.'**
  String get dailyReflection19;

  /// No description provided for @dailyReflection20.
  ///
  /// In en, this message translates to:
  /// **'Think of a moment today where you could have chosen better, and learn from it gently.'**
  String get dailyReflection20;

  /// No description provided for @dailyReflection21.
  ///
  /// In en, this message translates to:
  /// **'Make dua for those who are struggling — your prayer is a gift to them.'**
  String get dailyReflection21;

  /// No description provided for @dailyReflection22.
  ///
  /// In en, this message translates to:
  /// **'Recall a blessing you often overlook and take a moment to thank Allah for it.'**
  String get dailyReflection22;

  /// No description provided for @dailyReflection23.
  ///
  /// In en, this message translates to:
  /// **'Reflect on your intentions today — were they for Allah? Tomorrow, begin again.'**
  String get dailyReflection23;

  /// No description provided for @dailyReflection24.
  ///
  /// In en, this message translates to:
  /// **'As the night quiets, listen for Allah\'s nearness in the stillness.'**
  String get dailyReflection24;

  /// No description provided for @dailyReflection25.
  ///
  /// In en, this message translates to:
  /// **'Consider where you found strength today — that strength is from Allah.'**
  String get dailyReflection25;

  /// No description provided for @dailyReflection26.
  ///
  /// In en, this message translates to:
  /// **'Name one thing you will do tomorrow, for Allah\'s sake, that you did not do today.'**
  String get dailyReflection26;

  /// No description provided for @dailyReflection27.
  ///
  /// In en, this message translates to:
  /// **'As you prepare for rest, entrust your soul to Allah — He is the best of guardians.'**
  String get dailyReflection27;

  /// No description provided for @dailyRoleModel0.
  ///
  /// In en, this message translates to:
  /// **'Prophet Muhammad ﷺ'**
  String get dailyRoleModel0;

  /// No description provided for @dailyRoleModel1.
  ///
  /// In en, this message translates to:
  /// **'Abu Bakr as-Siddiq (RA)'**
  String get dailyRoleModel1;

  /// No description provided for @dailyRoleModel2.
  ///
  /// In en, this message translates to:
  /// **'Umar ibn al-Khattab (RA)'**
  String get dailyRoleModel2;

  /// No description provided for @dailyRoleModel3.
  ///
  /// In en, this message translates to:
  /// **'Uthman ibn Affan (RA)'**
  String get dailyRoleModel3;

  /// No description provided for @dailyRoleModel4.
  ///
  /// In en, this message translates to:
  /// **'Ali ibn Abi Talib (RA)'**
  String get dailyRoleModel4;

  /// No description provided for @dailyRoleModel5.
  ///
  /// In en, this message translates to:
  /// **'Khadijah bint Khuwaylid (RA)'**
  String get dailyRoleModel5;

  /// No description provided for @dailyRoleModel6.
  ///
  /// In en, this message translates to:
  /// **'Aisha bint Abi Bakr (RA)'**
  String get dailyRoleModel6;

  /// No description provided for @dailyRoleModel7.
  ///
  /// In en, this message translates to:
  /// **'Fatimah az-Zahra (RA)'**
  String get dailyRoleModel7;

  /// No description provided for @dailyRoleModel8.
  ///
  /// In en, this message translates to:
  /// **'Bilal ibn Rabah (RA)'**
  String get dailyRoleModel8;

  /// No description provided for @dailyRoleModel9.
  ///
  /// In en, this message translates to:
  /// **'Salman al-Farisi (RA)'**
  String get dailyRoleModel9;

  /// No description provided for @dailyRoleModel10.
  ///
  /// In en, this message translates to:
  /// **'Abu Hurairah (RA)'**
  String get dailyRoleModel10;

  /// No description provided for @dailyRoleModel11.
  ///
  /// In en, this message translates to:
  /// **'Abdullah ibn Abbas (RA)'**
  String get dailyRoleModel11;

  /// No description provided for @dailyRoleModel12.
  ///
  /// In en, this message translates to:
  /// **'Abdullah ibn Masud (RA)'**
  String get dailyRoleModel12;

  /// No description provided for @dailyRoleModel13.
  ///
  /// In en, this message translates to:
  /// **'Muadh ibn Jabal (RA)'**
  String get dailyRoleModel13;

  /// No description provided for @dailyRoleModel14.
  ///
  /// In en, this message translates to:
  /// **'Musab ibn Umayr (RA)'**
  String get dailyRoleModel14;

  /// No description provided for @dailyRoleModel15.
  ///
  /// In en, this message translates to:
  /// **'Sumayya bint Khabbab (RA)'**
  String get dailyRoleModel15;

  /// No description provided for @dailyRoleModel16.
  ///
  /// In en, this message translates to:
  /// **'Ammar ibn Yasir (RA)'**
  String get dailyRoleModel16;

  /// No description provided for @dailyRoleModel17.
  ///
  /// In en, this message translates to:
  /// **'Umm Salamah (RA)'**
  String get dailyRoleModel17;

  /// No description provided for @dailyRoleModel18.
  ///
  /// In en, this message translates to:
  /// **'Khalid ibn al-Walid (RA)'**
  String get dailyRoleModel18;

  /// No description provided for @dailyRoleModel19.
  ///
  /// In en, this message translates to:
  /// **'Zayd ibn Thabit (RA)'**
  String get dailyRoleModel19;

  /// No description provided for @dailyRoleModel20.
  ///
  /// In en, this message translates to:
  /// **'Hafsah bint Umar (RA)'**
  String get dailyRoleModel20;

  /// No description provided for @dailyRoleModel21.
  ///
  /// In en, this message translates to:
  /// **'Umar ibn Abd al-Aziz (RH)'**
  String get dailyRoleModel21;

  /// No description provided for @dailyRoleModel22.
  ///
  /// In en, this message translates to:
  /// **'Imam Abu Hanifa (RH)'**
  String get dailyRoleModel22;

  /// No description provided for @dailyRoleModel23.
  ///
  /// In en, this message translates to:
  /// **'Imam Malik ibn Anas (RH)'**
  String get dailyRoleModel23;

  /// No description provided for @dailyRoleModel24.
  ///
  /// In en, this message translates to:
  /// **'Imam Ja\'far al-Sadiq (AS)'**
  String get dailyRoleModel24;

  /// No description provided for @dailyRoleModel25.
  ///
  /// In en, this message translates to:
  /// **'Imam Ahmad ibn Hanbal (RH)'**
  String get dailyRoleModel25;

  /// No description provided for @dailyRoleModel26.
  ///
  /// In en, this message translates to:
  /// **'Imam al-Bukhari (RH)'**
  String get dailyRoleModel26;

  /// No description provided for @dailyRoleModel27.
  ///
  /// In en, this message translates to:
  /// **'Imam Muslim (RH)'**
  String get dailyRoleModel27;

  /// No description provided for @dailyRoleModel28.
  ///
  /// In en, this message translates to:
  /// **'Imam al-Tirmidhi (RH)'**
  String get dailyRoleModel28;

  /// No description provided for @dailyRoleModel29.
  ///
  /// In en, this message translates to:
  /// **'Al-Ghazali (RH)'**
  String get dailyRoleModel29;

  /// No description provided for @dailyRoleModel30.
  ///
  /// In en, this message translates to:
  /// **'Ibn al-Qayyim al-Jawziyya (RH)'**
  String get dailyRoleModel30;

  /// No description provided for @dailyRoleModel31.
  ///
  /// In en, this message translates to:
  /// **'Ibn Taymiyya (RH)'**
  String get dailyRoleModel31;

  /// No description provided for @dailyRoleModel32.
  ///
  /// In en, this message translates to:
  /// **'Al-Nawawi (RH)'**
  String get dailyRoleModel32;

  /// No description provided for @dailyRoleModel33.
  ///
  /// In en, this message translates to:
  /// **'Ibn Hajar al-Asqalani (RH)'**
  String get dailyRoleModel33;

  /// No description provided for @dailyRoleModel34.
  ///
  /// In en, this message translates to:
  /// **'Ibn Kathir (RH)'**
  String get dailyRoleModel34;

  /// No description provided for @dailyRoleModel35.
  ///
  /// In en, this message translates to:
  /// **'Al-Tabari (RH)'**
  String get dailyRoleModel35;

  /// No description provided for @dailyRoleModel36.
  ///
  /// In en, this message translates to:
  /// **'Sufyan al-Thawri (RH)'**
  String get dailyRoleModel36;

  /// No description provided for @dailyRoleModel37.
  ///
  /// In en, this message translates to:
  /// **'Fakhr al-Din al-Razi (RH)'**
  String get dailyRoleModel37;

  /// No description provided for @dailyRoleModel38.
  ///
  /// In en, this message translates to:
  /// **'Ibn Sina (RH)'**
  String get dailyRoleModel38;

  /// No description provided for @dailyRoleModel39.
  ///
  /// In en, this message translates to:
  /// **'Al-Biruni (RH)'**
  String get dailyRoleModel39;

  /// No description provided for @dailyRoleModel40.
  ///
  /// In en, this message translates to:
  /// **'Ibn Rushd (RH)'**
  String get dailyRoleModel40;

  /// No description provided for @dailyRoleModel41.
  ///
  /// In en, this message translates to:
  /// **'Ibn Khaldun (RH)'**
  String get dailyRoleModel41;

  /// No description provided for @dailyRoleModel42.
  ///
  /// In en, this message translates to:
  /// **'Ibn Battuta (RH)'**
  String get dailyRoleModel42;

  /// No description provided for @dailyRoleModel43.
  ///
  /// In en, this message translates to:
  /// **'Prophet Ibrahim (AS)'**
  String get dailyRoleModel43;

  /// No description provided for @dailyRoleModel44.
  ///
  /// In en, this message translates to:
  /// **'Prophet Musa (AS)'**
  String get dailyRoleModel44;

  /// No description provided for @dailyRoleModel45.
  ///
  /// In en, this message translates to:
  /// **'Prophet Isa (AS)'**
  String get dailyRoleModel45;

  /// No description provided for @dailyRoleModel46.
  ///
  /// In en, this message translates to:
  /// **'Prophet Yusuf (AS)'**
  String get dailyRoleModel46;

  /// No description provided for @dailyRoleModel47.
  ///
  /// In en, this message translates to:
  /// **'Prophet Dawud (AS)'**
  String get dailyRoleModel47;

  /// No description provided for @dailyRoleModel48.
  ///
  /// In en, this message translates to:
  /// **'Prophet Sulayman (AS)'**
  String get dailyRoleModel48;

  /// No description provided for @dailyRoleModel49.
  ///
  /// In en, this message translates to:
  /// **'Prophet Nuh (AS)'**
  String get dailyRoleModel49;

  /// No description provided for @dailyRoleModel50.
  ///
  /// In en, this message translates to:
  /// **'Prophet Yunus (AS)'**
  String get dailyRoleModel50;

  /// No description provided for @dailyRoleModel51.
  ///
  /// In en, this message translates to:
  /// **'Prophet Ayub (AS)'**
  String get dailyRoleModel51;

  /// No description provided for @dailyRoleModel52.
  ///
  /// In en, this message translates to:
  /// **'Ruqayyah bint Muhammad (RA)'**
  String get dailyRoleModel52;

  /// No description provided for @dailyRoleModel53.
  ///
  /// In en, this message translates to:
  /// **'Zainab bint Muhammad (RA)'**
  String get dailyRoleModel53;

  /// No description provided for @dailyRoleModel54.
  ///
  /// In en, this message translates to:
  /// **'Hassan ibn Ali (RA)'**
  String get dailyRoleModel54;

  /// No description provided for @dailyRoleModel55.
  ///
  /// In en, this message translates to:
  /// **'Hussain ibn Ali (RA)'**
  String get dailyRoleModel55;

  /// No description provided for @dailyRoleModel56.
  ///
  /// In en, this message translates to:
  /// **'Jafar ibn Abi Talib (RA)'**
  String get dailyRoleModel56;

  /// No description provided for @dailyRoleModel57.
  ///
  /// In en, this message translates to:
  /// **'Abu Dharr al-Ghifari (RA)'**
  String get dailyRoleModel57;

  /// No description provided for @dailyRoleModel58.
  ///
  /// In en, this message translates to:
  /// **'Talha ibn Ubaydullah (RA)'**
  String get dailyRoleModel58;

  /// No description provided for @dailyRoleModel59.
  ///
  /// In en, this message translates to:
  /// **'Az-Zubayr ibn al-Awwam (RA)'**
  String get dailyRoleModel59;

  /// No description provided for @locationConsentLabel.
  ///
  /// In en, this message translates to:
  /// **'Allow Ayara to use my location for Qibla direction and prayer times'**
  String get locationConsentLabel;

  /// No description provided for @locationConsentHint.
  ///
  /// In en, this message translates to:
  /// **'Used only for these features. Your location is never shared or stored.'**
  String get locationConsentHint;

  /// No description provided for @askPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Ask Ayara'**
  String get askPageTitle;

  /// No description provided for @askPageDescription.
  ///
  /// In en, this message translates to:
  /// **'Ask anything about faith, prayer, life, or Islamic practice and receive guidance rooted in the Quran and the teachings of the Ahl al-Bayt.'**
  String get askPageDescription;

  /// No description provided for @askPageInputHint.
  ///
  /// In en, this message translates to:
  /// **'Type your question here…'**
  String get askPageInputHint;

  /// No description provided for @askPageSubmitCta.
  ///
  /// In en, this message translates to:
  /// **'Ask'**
  String get askPageSubmitCta;

  /// No description provided for @askPageInputEmptyError.
  ///
  /// In en, this message translates to:
  /// **'Please write a question first.'**
  String get askPageInputEmptyError;

  /// No description provided for @askResultYourQuestion.
  ///
  /// In en, this message translates to:
  /// **'Your question'**
  String get askResultYourQuestion;

  /// No description provided for @guidancePageTitle.
  ///
  /// In en, this message translates to:
  /// **'Prayer & Guidance'**
  String get guidancePageTitle;

  /// No description provided for @qiblaFacingMecca.
  ///
  /// In en, this message translates to:
  /// **'Facing Makkah'**
  String get qiblaFacingMecca;

  /// No description provided for @qiblaCompassInstruction.
  ///
  /// In en, this message translates to:
  /// **'Rotate your phone until the gold needle points upward.\nThat direction points to the Qibla (Makkah).'**
  String get qiblaCompassInstruction;

  /// No description provided for @qiblaGpsUnavailableBody.
  ///
  /// In en, this message translates to:
  /// **'GPS signal is weak. Move outdoors and tap Retry.'**
  String get qiblaGpsUnavailableBody;

  /// No description provided for @qiblaRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get qiblaRetry;

  /// No description provided for @qiblaTitle.
  ///
  /// In en, this message translates to:
  /// **'Qibla Direction'**
  String get qiblaTitle;

  /// No description provided for @qiblaDistanceLabel.
  ///
  /// In en, this message translates to:
  /// **'{km} km to Makkah'**
  String qiblaDistanceLabel(String km);

  /// No description provided for @qiblaLocationNeededTitle.
  ///
  /// In en, this message translates to:
  /// **'Location required'**
  String get qiblaLocationNeededTitle;

  /// No description provided for @qiblaLocationNeededBody.
  ///
  /// In en, this message translates to:
  /// **'Allow location access so Ayara can calculate the direction of the Kaaba in Makkah from wherever you are.'**
  String get qiblaLocationNeededBody;

  /// No description provided for @qiblaOpenSettings.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get qiblaOpenSettings;

  /// No description provided for @qiblaCompassLoading.
  ///
  /// In en, this message translates to:
  /// **'Finding your position…'**
  String get qiblaCompassLoading;

  /// No description provided for @qiblaTowardMecca.
  ///
  /// In en, this message translates to:
  /// **'Toward Makkah'**
  String get qiblaTowardMecca;

  /// No description provided for @prayerTimesTitle.
  ///
  /// In en, this message translates to:
  /// **'Prayer Times'**
  String get prayerTimesTitle;

  /// No description provided for @prayerTimesFajr.
  ///
  /// In en, this message translates to:
  /// **'Fajr'**
  String get prayerTimesFajr;

  /// No description provided for @prayerTimesDhuhr.
  ///
  /// In en, this message translates to:
  /// **'Dhuhr'**
  String get prayerTimesDhuhr;

  /// No description provided for @prayerTimesAsr.
  ///
  /// In en, this message translates to:
  /// **'Asr'**
  String get prayerTimesAsr;

  /// No description provided for @prayerTimesMaghrib.
  ///
  /// In en, this message translates to:
  /// **'Maghrib'**
  String get prayerTimesMaghrib;

  /// No description provided for @prayerTimesIsha.
  ///
  /// In en, this message translates to:
  /// **'Isha'**
  String get prayerTimesIsha;

  /// No description provided for @prayerTimesLocationNeededTitle.
  ///
  /// In en, this message translates to:
  /// **'Location required'**
  String get prayerTimesLocationNeededTitle;

  /// No description provided for @prayerTimesLocationNeededBody.
  ///
  /// In en, this message translates to:
  /// **'Allow location access so Ayara can calculate accurate prayer times for your city.'**
  String get prayerTimesLocationNeededBody;

  /// No description provided for @prayerTimesNextLabel.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get prayerTimesNextLabel;

  /// No description provided for @prayerTimesDoneLabel.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get prayerTimesDoneLabel;

  /// No description provided for @monthlyPrayerTimesTitle.
  ///
  /// In en, this message translates to:
  /// **'Monthly Prayer Times'**
  String get monthlyPrayerTimesTitle;

  /// No description provided for @monthlyPrayerTimesViewButton.
  ///
  /// In en, this message translates to:
  /// **'View Full Month'**
  String get monthlyPrayerTimesViewButton;

  /// No description provided for @monthlyPrayerTimesNextMonth.
  ///
  /// In en, this message translates to:
  /// **'Next month'**
  String get monthlyPrayerTimesNextMonth;

  /// No description provided for @monthlyPrayerTimesDayHeader.
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get monthlyPrayerTimesDayHeader;

  /// No description provided for @sharePrayerTimes.
  ///
  /// In en, this message translates to:
  /// **'Share prayer times'**
  String get sharePrayerTimes;

  /// No description provided for @prayerNotificationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Prayer Reminders'**
  String get prayerNotificationsTitle;

  /// No description provided for @prayerNotificationsDescription.
  ///
  /// In en, this message translates to:
  /// **'Receive a gentle reminder before each prayer time to help you stay connected throughout the day.'**
  String get prayerNotificationsDescription;

  /// No description provided for @prayerNotificationsEnable.
  ///
  /// In en, this message translates to:
  /// **'Enable prayer reminders'**
  String get prayerNotificationsEnable;

  /// No description provided for @prayerNotificationsOpenSettings.
  ///
  /// In en, this message translates to:
  /// **'Open notification settings'**
  String get prayerNotificationsOpenSettings;

  /// No description provided for @prayerNotificationsDenied.
  ///
  /// In en, this message translates to:
  /// **'Notifications are disabled'**
  String get prayerNotificationsDenied;

  /// No description provided for @prayerNotificationsDeniedHint.
  ///
  /// In en, this message translates to:
  /// **'Go to Settings and allow notifications for Ayara to receive prayer time reminders.'**
  String get prayerNotificationsDeniedHint;

  /// No description provided for @notificationsConsentLabel.
  ///
  /// In en, this message translates to:
  /// **'Allow notifications for prayer times'**
  String get notificationsConsentLabel;

  /// No description provided for @prayerNotifTitleFajr.
  ///
  /// In en, this message translates to:
  /// **'🌅 Fajr — Dawn Prayer'**
  String get prayerNotifTitleFajr;

  /// No description provided for @prayerNotifBodyFajr.
  ///
  /// In en, this message translates to:
  /// **'The best of prayers is the dawn prayer. Rise, purify yourself, and stand before Allah.'**
  String get prayerNotifBodyFajr;

  /// No description provided for @prayerNotifTitleDhuhr.
  ///
  /// In en, this message translates to:
  /// **'☀️ Dhuhr — Midday Prayer'**
  String get prayerNotifTitleDhuhr;

  /// No description provided for @prayerNotifBodyDhuhr.
  ///
  /// In en, this message translates to:
  /// **'Pause your day and return to Allah. Dhuhr prayer time has arrived.'**
  String get prayerNotifBodyDhuhr;

  /// No description provided for @prayerNotifTitleAsr.
  ///
  /// In en, this message translates to:
  /// **'🌤️ Asr — Afternoon Prayer'**
  String get prayerNotifTitleAsr;

  /// No description provided for @prayerNotifBodyAsr.
  ///
  /// In en, this message translates to:
  /// **'Guard the middle prayer. Asr time has come — do not let it pass.'**
  String get prayerNotifBodyAsr;

  /// No description provided for @prayerNotifTitleMaghrib.
  ///
  /// In en, this message translates to:
  /// **'🌇 Maghrib — Sunset Prayer'**
  String get prayerNotifTitleMaghrib;

  /// No description provided for @prayerNotifBodyMaghrib.
  ///
  /// In en, this message translates to:
  /// **'The sun has set. Offer Maghrib and be grateful to Allah for this day.'**
  String get prayerNotifBodyMaghrib;

  /// No description provided for @prayerNotifTitleIsha.
  ///
  /// In en, this message translates to:
  /// **'🌙 Isha — Night Prayer'**
  String get prayerNotifTitleIsha;

  /// No description provided for @prayerNotifBodyIsha.
  ///
  /// In en, this message translates to:
  /// **'End your day with remembrance of Allah. Hayya \'alal falah — come to success.'**
  String get prayerNotifBodyIsha;

  /// No description provided for @outOfReflectionsBannerText.
  ///
  /// In en, this message translates to:
  /// **'You\'ve used all your reflections'**
  String get outOfReflectionsBannerText;

  /// No description provided for @outOfReflectionsBannerCta.
  ///
  /// In en, this message translates to:
  /// **'Get more'**
  String get outOfReflectionsBannerCta;

  /// No description provided for @dhikrPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Dhikr'**
  String get dhikrPageTitle;

  /// No description provided for @dhikrTapToCount.
  ///
  /// In en, this message translates to:
  /// **'Tap the circle to count'**
  String get dhikrTapToCount;

  /// No description provided for @dhikrResetButton.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get dhikrResetButton;

  /// No description provided for @dhikrComplete.
  ///
  /// In en, this message translates to:
  /// **'Masha\'Allah'**
  String get dhikrComplete;

  /// No description provided for @dhikrCompleteMessage.
  ///
  /// In en, this message translates to:
  /// **'You have completed 99 remembrances of Allah. May they be a light for your heart.'**
  String get dhikrCompleteMessage;

  /// No description provided for @disclaimerTitle.
  ///
  /// In en, this message translates to:
  /// **'About this app\'s guidance'**
  String get disclaimerTitle;

  /// No description provided for @disclaimerBody.
  ///
  /// In en, this message translates to:
  /// **'Ayara provides Islamic reflections, reminders, and spiritual content to support your personal journey of faith. This content is offered for general informational and inspirational purposes only.\n\nAyara does not replace qualified scholarship.\nThe guidance in this app is not a substitute for a learned Islamic scholar, imam, mufti, or theologically trained teacher. If you have questions about religious rulings, halal and haram matters, or personal religious obligations, please seek advice from a qualified religious authority in your community.\n\nThis app does not issue religious rulings.\nAyara does not make authoritative determinations on matters of fiqh (Islamic jurisprudence) or personal religious obligations. Nothing here should be treated as a fatwa or binding religious instruction.\n\nScholarly interpretations vary.\nIslam encompasses a rich diversity of traditions, schools of thought (madhabs), and scholarly opinions. Content in this app reflects general perspectives and may not represent every tradition or school equally.\n\nCommunity matters.\nThis app aims to encourage your engagement with faith traditions while deeply respecting the vital role of your local mosque, imam, and religious community. We encourage you to stay connected with and learn from qualified teachers near you.'**
  String get disclaimerBody;

  /// No description provided for @disclaimerClose.
  ///
  /// In en, this message translates to:
  /// **'I understand'**
  String get disclaimerClose;

  /// No description provided for @disclaimerInfoTooltip.
  ///
  /// In en, this message translates to:
  /// **'About this app\'s guidance'**
  String get disclaimerInfoTooltip;

  /// No description provided for @disclaimerSettingsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'For general informational purposes only. Tap to read the full disclaimer.'**
  String get disclaimerSettingsSubtitle;

  /// No description provided for @disclaimerSectionHeader.
  ///
  /// In en, this message translates to:
  /// **'Guidance disclaimer'**
  String get disclaimerSectionHeader;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ace',
    'af',
    'am',
    'ar',
    'as',
    'az',
    'bg',
    'bn',
    'bs',
    'ca',
    'ceb',
    'ckb',
    'cs',
    'da',
    'de',
    'el',
    'en',
    'es',
    'et',
    'fa',
    'fi',
    'fil',
    'fr',
    'ga',
    'gu',
    'ha',
    'he',
    'hi',
    'hr',
    'ht',
    'hu',
    'hy',
    'id',
    'ig',
    'is',
    'it',
    'ja',
    'jv',
    'ka',
    'kk',
    'km',
    'kn',
    'ko',
    'ku',
    'ky',
    'lb',
    'lo',
    'lt',
    'lv',
    'mad',
    'mg',
    'min',
    'mk',
    'ml',
    'mn',
    'mr',
    'ms',
    'mt',
    'my',
    'ne',
    'nl',
    'no',
    'ny',
    'or',
    'pa',
    'pl',
    'ps',
    'pt',
    'ro',
    'rw',
    'si',
    'sk',
    'sl',
    'so',
    'sq',
    'sr',
    'st',
    'sv',
    'sw',
    'ta',
    'te',
    'th',
    'ti',
    'tl',
    'tr',
    'uk',
    'ur',
    'uz',
    'vi',
    'yo',
    'yue',
    'zh',
    'zu',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'ar':
      {
        switch (locale.countryCode) {
          case 'AE':
            return AppLocalizationsArAe();
          case 'EG':
            return AppLocalizationsArEg();
          case 'IQ':
            return AppLocalizationsArIq();
          case 'MA':
            return AppLocalizationsArMa();
          case 'SA':
            return AppLocalizationsArSa();
        }
        break;
      }
    case 'de':
      {
        switch (locale.countryCode) {
          case 'AT':
            return AppLocalizationsDeAt();
          case 'CH':
            return AppLocalizationsDeCh();
        }
        break;
      }
    case 'en':
      {
        switch (locale.countryCode) {
          case 'AU':
            return AppLocalizationsEnAu();
          case 'CA':
            return AppLocalizationsEnCa();
          case 'GB':
            return AppLocalizationsEnGb();
          case 'IE':
            return AppLocalizationsEnIe();
          case 'NZ':
            return AppLocalizationsEnNz();
          case 'SG':
            return AppLocalizationsEnSg();
          case 'US':
            return AppLocalizationsEnUs();
        }
        break;
      }
    case 'es':
      {
        switch (locale.countryCode) {
          case '419':
            return AppLocalizationsEs419();
          case 'AR':
            return AppLocalizationsEsAr();
          case 'CL':
            return AppLocalizationsEsCl();
          case 'CO':
            return AppLocalizationsEsCo();
          case 'ES':
            return AppLocalizationsEsEs();
          case 'MX':
            return AppLocalizationsEsMx();
          case 'US':
            return AppLocalizationsEsUs();
        }
        break;
      }
    case 'fr':
      {
        switch (locale.countryCode) {
          case 'BE':
            return AppLocalizationsFrBe();
          case 'CA':
            return AppLocalizationsFrCa();
          case 'CH':
            return AppLocalizationsFrCh();
        }
        break;
      }
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
          case 'PT':
            return AppLocalizationsPtPt();
        }
        break;
      }
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CN':
            return AppLocalizationsZhCn();
          case 'HK':
            return AppLocalizationsZhHk();
          case 'SG':
            return AppLocalizationsZhSg();
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ace':
      return AppLocalizationsAce();
    case 'af':
      return AppLocalizationsAf();
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'as':
      return AppLocalizationsAs();
    case 'az':
      return AppLocalizationsAz();
    case 'bg':
      return AppLocalizationsBg();
    case 'bn':
      return AppLocalizationsBn();
    case 'bs':
      return AppLocalizationsBs();
    case 'ca':
      return AppLocalizationsCa();
    case 'ceb':
      return AppLocalizationsCeb();
    case 'ckb':
      return AppLocalizationsCkb();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'et':
      return AppLocalizationsEt();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'ga':
      return AppLocalizationsGa();
    case 'gu':
      return AppLocalizationsGu();
    case 'ha':
      return AppLocalizationsHa();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'ht':
      return AppLocalizationsHt();
    case 'hu':
      return AppLocalizationsHu();
    case 'hy':
      return AppLocalizationsHy();
    case 'id':
      return AppLocalizationsId();
    case 'ig':
      return AppLocalizationsIg();
    case 'is':
      return AppLocalizationsIs();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'jv':
      return AppLocalizationsJv();
    case 'ka':
      return AppLocalizationsKa();
    case 'kk':
      return AppLocalizationsKk();
    case 'km':
      return AppLocalizationsKm();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ku':
      return AppLocalizationsKu();
    case 'ky':
      return AppLocalizationsKy();
    case 'lb':
      return AppLocalizationsLb();
    case 'lo':
      return AppLocalizationsLo();
    case 'lt':
      return AppLocalizationsLt();
    case 'lv':
      return AppLocalizationsLv();
    case 'mad':
      return AppLocalizationsMad();
    case 'mg':
      return AppLocalizationsMg();
    case 'min':
      return AppLocalizationsMin();
    case 'mk':
      return AppLocalizationsMk();
    case 'ml':
      return AppLocalizationsMl();
    case 'mn':
      return AppLocalizationsMn();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'mt':
      return AppLocalizationsMt();
    case 'my':
      return AppLocalizationsMy();
    case 'ne':
      return AppLocalizationsNe();
    case 'nl':
      return AppLocalizationsNl();
    case 'no':
      return AppLocalizationsNo();
    case 'ny':
      return AppLocalizationsNy();
    case 'or':
      return AppLocalizationsOr();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'ps':
      return AppLocalizationsPs();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'rw':
      return AppLocalizationsRw();
    case 'si':
      return AppLocalizationsSi();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'so':
      return AppLocalizationsSo();
    case 'sq':
      return AppLocalizationsSq();
    case 'sr':
      return AppLocalizationsSr();
    case 'st':
      return AppLocalizationsSt();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'ti':
      return AppLocalizationsTi();
    case 'tl':
      return AppLocalizationsTl();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'uz':
      return AppLocalizationsUz();
    case 'vi':
      return AppLocalizationsVi();
    case 'yo':
      return AppLocalizationsYo();
    case 'yue':
      return AppLocalizationsYue();
    case 'zh':
      return AppLocalizationsZh();
    case 'zu':
      return AppLocalizationsZu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
