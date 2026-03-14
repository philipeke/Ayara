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

  /// No description provided for @planBasic.
  ///
  /// In en, this message translates to:
  /// **'Standard'**
  String get planBasic;

  /// No description provided for @planPremium.
  ///
  /// In en, this message translates to:
  /// **'Wilaya'**
  String get planPremium;

  /// No description provided for @categorySlot01.
  ///
  /// In en, this message translates to:
  /// **'Daily Guidance'**
  String get categorySlot01;

  /// No description provided for @categorySlot02.
  ///
  /// In en, this message translates to:
  /// **'Iman & Trust'**
  String get categorySlot02;

  /// No description provided for @categorySlot03.
  ///
  /// In en, this message translates to:
  /// **'Prayer Reflection'**
  String get categorySlot03;

  /// No description provided for @categorySlot04.
  ///
  /// In en, this message translates to:
  /// **'Patience Hope'**
  String get categorySlot04;

  /// No description provided for @categorySlot05.
  ///
  /// In en, this message translates to:
  /// **'Seek Forgiveness'**
  String get categorySlot05;

  /// No description provided for @categorySlot06.
  ///
  /// In en, this message translates to:
  /// **'Mercy Compassion'**
  String get categorySlot06;

  /// No description provided for @categorySlot07.
  ///
  /// In en, this message translates to:
  /// **'Faith Strength'**
  String get categorySlot07;

  /// No description provided for @categorySlot08.
  ///
  /// In en, this message translates to:
  /// **'Grateful Heart'**
  String get categorySlot08;

  /// No description provided for @categorySlot09.
  ///
  /// In en, this message translates to:
  /// **'Life Purpose'**
  String get categorySlot09;

  /// No description provided for @categorySlot10.
  ///
  /// In en, this message translates to:
  /// **'Family Ties'**
  String get categorySlot10;

  /// No description provided for @categorySlot11.
  ///
  /// In en, this message translates to:
  /// **'Inner Peace'**
  String get categorySlot11;

  /// No description provided for @categorySlot12.
  ///
  /// In en, this message translates to:
  /// **'Prophet Wisdom'**
  String get categorySlot12;

  /// No description provided for @categorySlot13.
  ///
  /// In en, this message translates to:
  /// **'Good Character'**
  String get categorySlot13;

  /// No description provided for @categorySlot14.
  ///
  /// In en, this message translates to:
  /// **'Resist Temptation'**
  String get categorySlot14;

  /// No description provided for @categorySlot15.
  ///
  /// In en, this message translates to:
  /// **'Evening Dhikr'**
  String get categorySlot15;

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
  /// **'With Wilaya, Iman and Sabr'**
  String get footerTitle;

  /// No description provided for @footerSubtitle.
  ///
  /// In en, this message translates to:
  /// **'One prayer at a time'**
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
  /// **'Easy tiger 🐯\nAyara needs a moment before the next one…'**
  String get rateLocalThrottle;

  /// No description provided for @rateDailyLimit.
  ///
  /// In en, this message translates to:
  /// **'You\'re out of reflections for now.\nGet more reflections or upgrade to Wilaya.'**
  String get rateDailyLimit;

  /// No description provided for @rateCreditsExhausted.
  ///
  /// In en, this message translates to:
  /// **'You\'ve used all your reflections.\nTop up or upgrade to Wilaya to continue.'**
  String get rateCreditsExhausted;

  /// No description provided for @rateGraceCreditsExhausted.
  ///
  /// In en, this message translates to:
  /// **'You\'re out of reflections for now.\nGet more reflections or upgrade to Wilaya.'**
  String get rateGraceCreditsExhausted;

  /// No description provided for @premiumDescription.
  ///
  /// In en, this message translates to:
  /// **'Wilaya unlocks premium features, future categories, and a special badge.'**
  String get premiumDescription;

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
  /// **'Each response uses 1 reflection. Standard includes starter reflections. Wilaya unlocks premium categories and enables top-ups.'**
  String get aiLimitSubtitle;

  /// No description provided for @aiLimitProgressLabel.
  ///
  /// In en, this message translates to:
  /// **'{used} / {total} reflections used'**
  String aiLimitProgressLabel(Object used, Object total);

  /// No description provided for @creditsSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Reflections'**
  String get creditsSectionTitle;

  /// No description provided for @creditsUsageLabel.
  ///
  /// In en, this message translates to:
  /// **'Usage'**
  String get creditsUsageLabel;

  /// No description provided for @creditsRemainingLabel.
  ///
  /// In en, this message translates to:
  /// **'Remaining reflections: {reflections}'**
  String creditsRemainingLabel(Object reflections);

  /// Shows the current plan name.
  ///
  /// In en, this message translates to:
  /// **'Plan: {plan}'**
  String creditsPlanLabel(String plan);

  /// No description provided for @creditsLoadingLabel.
  ///
  /// In en, this message translates to:
  /// **'Loading…'**
  String get creditsLoadingLabel;

  /// No description provided for @creditsLoadingLabelDescription.
  ///
  /// In en, this message translates to:
  /// **'Shown while reflection stats are being fetched.'**
  String get creditsLoadingLabelDescription;

  /// No description provided for @creditsTitle.
  ///
  /// In en, this message translates to:
  /// **'Reflections'**
  String get creditsTitle;

  /// No description provided for @creditsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Each response uses 1 reflection. Standard includes starter reflections. Wilaya unlocks premium categories and enables top-ups.'**
  String get creditsSubtitle;

  /// No description provided for @creditsProgressLabel.
  ///
  /// In en, this message translates to:
  /// **'{used} / {total} reflections used'**
  String creditsProgressLabel(Object used, Object total);

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
  /// **'The starter reflections for this device have been used. Upgrade to Wilaya or buy more reflections to continue.'**
  String get settingsFreeLimitUsedDescription;

  /// No description provided for @settingsStarterCreditsUsedTitle.
  ///
  /// In en, this message translates to:
  /// **'Starter reflections used'**
  String get settingsStarterCreditsUsedTitle;

  /// No description provided for @settingsStarterCreditsUsedDescription.
  ///
  /// In en, this message translates to:
  /// **'The starter reflections for this device have been used. Upgrade to Wilaya or buy more reflections to continue.'**
  String get settingsStarterCreditsUsedDescription;

  /// No description provided for @deviceBoundError.
  ///
  /// In en, this message translates to:
  /// **'This device is already linked to another account. Please sign in with the original account.'**
  String get deviceBoundError;

  /// No description provided for @premiumTitle.
  ///
  /// In en, this message translates to:
  /// **'Wilaya mode'**
  String get premiumTitle;

  /// No description provided for @premiumSubtitleBasic.
  ///
  /// In en, this message translates to:
  /// **'Unlock the full Ayara experience.'**
  String get premiumSubtitleBasic;

  /// No description provided for @premiumSubtitlePremium.
  ///
  /// In en, this message translates to:
  /// **'You\'re on Wilaya. Need more reflections?'**
  String get premiumSubtitlePremium;

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
  /// **'Sign in to buy reflections or unlock Wilaya.'**
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
  /// **'Already purchased Wilaya or reflections on this device or another one?'**
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

  /// No description provided for @premiumBecomePremiumOneTime.
  ///
  /// In en, this message translates to:
  /// **'Upgrade to Wilaya mode'**
  String get premiumBecomePremiumOneTime;

  /// No description provided for @premiumTopupHint.
  ///
  /// In en, this message translates to:
  /// **'With Wilaya, you can top up with extra reflections whenever you need.'**
  String get premiumTopupHint;

  /// No description provided for @premiumUpgradeCta.
  ///
  /// In en, this message translates to:
  /// **'Upgrade'**
  String get premiumUpgradeCta;

  /// No description provided for @premiumRequiredForCategory.
  ///
  /// In en, this message translates to:
  /// **'This category is only available for Wilaya users. Upgrade in Settings to unlock all premium content.'**
  String get premiumRequiredForCategory;

  /// No description provided for @premiumBenefitsBasic.
  ///
  /// In en, this message translates to:
  /// **'Unlock Wilaya to get extra reflections, access premium categories, and continue whenever you need guidance.'**
  String get premiumBenefitsBasic;

  /// No description provided for @premiumBenefitsPremium.
  ///
  /// In en, this message translates to:
  /// **'You\'re in Wilaya mode. If you\'re running low, add some extra reflections and continue without interruptions.'**
  String get premiumBenefitsPremium;

  /// No description provided for @premiumButtonBecomePremium.
  ///
  /// In en, this message translates to:
  /// **'Unlock Wilaya'**
  String get premiumButtonBecomePremium;

  /// No description provided for @premiumButtonTopup1000.
  ///
  /// In en, this message translates to:
  /// **'Add 1000 reflections'**
  String get premiumButtonTopup1000;

  /// No description provided for @premiumBadge.
  ///
  /// In en, this message translates to:
  /// **'Wilaya active'**
  String get premiumBadge;

  /// No description provided for @premiumLoadingStore.
  ///
  /// In en, this message translates to:
  /// **'Loading store…'**
  String get premiumLoadingStore;

  /// No description provided for @premiumProductNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'This product isn\'t available in the store yet. Please try again later.'**
  String get premiumProductNotAvailable;

  /// No description provided for @premiumPurchaseError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong with the purchase. Please try again.'**
  String get premiumPurchaseError;

  /// No description provided for @premiumBuyCredits100.
  ///
  /// In en, this message translates to:
  /// **'Add 100 reflections'**
  String get premiumBuyCredits100;

  /// No description provided for @premiumFeatureLocked.
  ///
  /// In en, this message translates to:
  /// **'Unlock Wilaya to access this feature.'**
  String get premiumFeatureLocked;

  /// No description provided for @lockedCategoriesHint.
  ///
  /// In en, this message translates to:
  /// **'Some categories are reserved for Wilaya members. Unlock them to explore every reflection on your journey.'**
  String get lockedCategoriesHint;

  /// No description provided for @freePlanBlockedTitle.
  ///
  /// In en, this message translates to:
  /// **'You\'ve used up your starter reflections'**
  String get freePlanBlockedTitle;

  /// No description provided for @freePlanBlockedBody.
  ///
  /// In en, this message translates to:
  /// **'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Wilaya.'**
  String get freePlanBlockedBody;

  /// No description provided for @freePlanBlockedCtaGoPremium.
  ///
  /// In en, this message translates to:
  /// **'See Wilaya options below'**
  String get freePlanBlockedCtaGoPremium;

  /// No description provided for @graceBlockedTitle.
  ///
  /// In en, this message translates to:
  /// **'You\'ve used up your starter reflections'**
  String get graceBlockedTitle;

  /// No description provided for @graceBlockedBody.
  ///
  /// In en, this message translates to:
  /// **'You\'re on the Standard plan with starter reflections, and you\'ve reached the limit. To continue — and unlock premium categories — upgrade to Wilaya.'**
  String get graceBlockedBody;

  /// No description provided for @graceBlockedCtaGoPremium.
  ///
  /// In en, this message translates to:
  /// **'See Wilaya options below'**
  String get graceBlockedCtaGoPremium;

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
  /// **'Qibla'**
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

  /// No description provided for @notificationsSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notificationsSectionTitle;

  /// No description provided for @notificationsSectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Prayer reminders, calendar events & more'**
  String get notificationsSectionSubtitle;

  /// No description provided for @dailyReflectionReminderTitle.
  ///
  /// In en, this message translates to:
  /// **'Daily Reflection'**
  String get dailyReflectionReminderTitle;

  /// No description provided for @dailyReflectionReminderDescription.
  ///
  /// In en, this message translates to:
  /// **'A gentle daily reminder to open Ayara and connect with your faith.'**
  String get dailyReflectionReminderDescription;

  /// No description provided for @dailyReflectionReminderEnable.
  ///
  /// In en, this message translates to:
  /// **'Enable daily reminder'**
  String get dailyReflectionReminderEnable;

  /// No description provided for @dailyReflectionReminderTimeLabel.
  ///
  /// In en, this message translates to:
  /// **'Reminder time'**
  String get dailyReflectionReminderTimeLabel;

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
  /// **'Fajr is the prayer of the Ahl al-Bayt\'s mornings. Imam Ali (AS) said: Guard the dawn prayer as you guard your most precious trust. Rise, purify yourself, and stand before Allah.'**
  String get prayerNotifBodyFajr;

  /// No description provided for @prayerNotifTitleDhuhr.
  ///
  /// In en, this message translates to:
  /// **'☀️ Dhuhr — Midday Prayer'**
  String get prayerNotifTitleDhuhr;

  /// No description provided for @prayerNotifBodyDhuhr.
  ///
  /// In en, this message translates to:
  /// **'The Imams of the Ahl al-Bayt prized every moment of remembrance. Pause your day, combine Dhuhr with Asr if needed, and return your heart to Allah.'**
  String get prayerNotifBodyDhuhr;

  /// No description provided for @prayerNotifTitleAsr.
  ///
  /// In en, this message translates to:
  /// **'🌤️ Asr — Afternoon Prayer'**
  String get prayerNotifTitleAsr;

  /// No description provided for @prayerNotifBodyAsr.
  ///
  /// In en, this message translates to:
  /// **'Guard the prayer, for it is the covenant between you and Allah. Asr time has come — do not let it pass without remembrance.'**
  String get prayerNotifBodyAsr;

  /// No description provided for @prayerNotifTitleMaghrib.
  ///
  /// In en, this message translates to:
  /// **'🌇 Maghrib — Sunset Prayer'**
  String get prayerNotifTitleMaghrib;

  /// No description provided for @prayerNotifBodyMaghrib.
  ///
  /// In en, this message translates to:
  /// **'The sun has set — a moment the Ahl al-Bayt held sacred for supplication. Offer Maghrib and open your hands to Allah in dua before the night begins.'**
  String get prayerNotifBodyMaghrib;

  /// No description provided for @prayerNotifTitleIsha.
  ///
  /// In en, this message translates to:
  /// **'🌙 Isha — Night Prayer'**
  String get prayerNotifTitleIsha;

  /// No description provided for @prayerNotifBodyIsha.
  ///
  /// In en, this message translates to:
  /// **'End your day in the company of Allah. The Imams encouraged Salat al-Layl after Isha — but first, complete your Isha and close the day with His remembrance.'**
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
  /// **'You have completed 100 remembrances of Allah. May they be a light for your heart.'**
  String get dhikrCompleteMessage;

  /// No description provided for @disclaimerTitle.
  ///
  /// In en, this message translates to:
  /// **'About this app\'s guidance'**
  String get disclaimerTitle;

  /// No description provided for @disclaimerBody.
  ///
  /// In en, this message translates to:
  /// **'Ayara provides Islamic reflections, reminders, and spiritual content to support your personal journey of faith, rooted in the Quran and the teachings of the Ahl al-Bayt. This content is offered for general informational and inspirational purposes only.\n\nAyara does not replace qualified scholarship.\nThe guidance in this app is not a substitute for a learned Islamic scholar, marja\', or theologically trained teacher. In Shia Islam, religious guidance is rooted in the Ja\'fari school of jurisprudence (fiqh) and the tradition of following a living Marja\' (source of emulation) — a qualified jurist whose rulings guide believers in religious practice. If you have questions about religious rulings, halal and haram matters, or personal religious obligations, please seek advice from a qualified Marja\' or a scholar in your community.\n\nThis app does not issue religious rulings.\nAyara does not make authoritative determinations on matters of fiqh or personal religious obligations. Nothing here should be treated as a fatwa or binding religious instruction.\n\nThe centrality of the Ahl al-Bayt.\nIn Shia Islam, the Prophet Muhammad ﷺ and his purified household — the Ahl al-Bayt — are the authoritative guides of the Islamic community after the Quran. The twelve Imams of the Ahl al-Bayt are the divinely appointed interpreters of Islamic teaching. Content in this app reflects this tradition and seeks to honour it faithfully.\n\nCommunity matters.\nThis app aims to encourage your engagement with faith while deeply respecting the vital role of your local mosque, Islamic centre, and religious community. We encourage you to stay connected with and learn from qualified teachers near you.'**
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

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navReflect.
  ///
  /// In en, this message translates to:
  /// **'Reflect'**
  String get navReflect;

  /// No description provided for @navDuas.
  ///
  /// In en, this message translates to:
  /// **'Duas'**
  String get navDuas;

  /// No description provided for @navCalendar.
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get navCalendar;

  /// No description provided for @dashboardToday.
  ///
  /// In en, this message translates to:
  /// **'TODAY'**
  String get dashboardToday;

  /// No description provided for @dashboardComingUp.
  ///
  /// In en, this message translates to:
  /// **'Coming up'**
  String get dashboardComingUp;

  /// No description provided for @dashboardDaysUnit.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one {day} other {days}}'**
  String dashboardDaysUnit(num count);

  /// No description provided for @dashboardQuickAccess.
  ///
  /// In en, this message translates to:
  /// **'Quick Access'**
  String get dashboardQuickAccess;

  /// No description provided for @quickActionQibla.
  ///
  /// In en, this message translates to:
  /// **'Qibla'**
  String get quickActionQibla;

  /// No description provided for @quickActionDhikr.
  ///
  /// In en, this message translates to:
  /// **'Dhikr'**
  String get quickActionDhikr;

  /// No description provided for @quickActionDailyGrace.
  ///
  /// In en, this message translates to:
  /// **'Guidance'**
  String get quickActionDailyGrace;

  /// No description provided for @quickActionPrayerTimes.
  ///
  /// In en, this message translates to:
  /// **'Prayer Times'**
  String get quickActionPrayerTimes;

  /// No description provided for @askAyaraTitle.
  ///
  /// In en, this message translates to:
  /// **'Ask Ayara'**
  String get askAyaraTitle;

  /// No description provided for @askAyaraSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Ask any Islamic question and receive a thoughtful, guided answer.'**
  String get askAyaraSubtitle;

  /// No description provided for @askAyaraHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. What is the significance of Ramadan?'**
  String get askAyaraHint;

  /// No description provided for @askAyaraSubmit.
  ///
  /// In en, this message translates to:
  /// **'Ask'**
  String get askAyaraSubmit;

  /// No description provided for @wisdomOfTheDayTitle.
  ///
  /// In en, this message translates to:
  /// **'Wisdom of the Day'**
  String get wisdomOfTheDayTitle;

  /// No description provided for @calendarScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Islamic Calendar'**
  String get calendarScreenTitle;

  /// No description provided for @calendarUpcomingOccasions.
  ///
  /// In en, this message translates to:
  /// **'Upcoming Occasions'**
  String get calendarUpcomingOccasions;

  /// No description provided for @calendarOccasionRemindersTitle.
  ///
  /// In en, this message translates to:
  /// **'Occasion Reminders'**
  String get calendarOccasionRemindersTitle;

  /// No description provided for @calendarOccasionRemindersHint.
  ///
  /// In en, this message translates to:
  /// **'Notified the evening before each occasion'**
  String get calendarOccasionRemindersHint;

  /// No description provided for @calendarNotifPermissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Notification permission denied. Enable it in your device settings.'**
  String get calendarNotifPermissionDenied;

  /// No description provided for @calendarNoEvents.
  ///
  /// In en, this message translates to:
  /// **'No upcoming events found.'**
  String get calendarNoEvents;

  /// No description provided for @calendarAddToPhone.
  ///
  /// In en, this message translates to:
  /// **'Add to Phone Calendar'**
  String get calendarAddToPhone;

  /// No description provided for @calendarAddedToPhone.
  ///
  /// In en, this message translates to:
  /// **'Added to Calendar'**
  String get calendarAddedToPhone;

  /// No description provided for @calendarCountdownToday.
  ///
  /// In en, this message translates to:
  /// **'TODAY'**
  String get calendarCountdownToday;

  /// No description provided for @calendarCountdownTomorrow.
  ///
  /// In en, this message translates to:
  /// **'TOMORROW'**
  String get calendarCountdownTomorrow;

  /// No description provided for @calendarCountdownDays.
  ///
  /// In en, this message translates to:
  /// **'in {days} days'**
  String calendarCountdownDays(int days);

  /// No description provided for @calendarAH.
  ///
  /// In en, this message translates to:
  /// **'AH'**
  String get calendarAH;

  /// No description provided for @calendarMonthJan.
  ///
  /// In en, this message translates to:
  /// **'Jan'**
  String get calendarMonthJan;

  /// No description provided for @calendarMonthFeb.
  ///
  /// In en, this message translates to:
  /// **'Feb'**
  String get calendarMonthFeb;

  /// No description provided for @calendarMonthMar.
  ///
  /// In en, this message translates to:
  /// **'Mar'**
  String get calendarMonthMar;

  /// No description provided for @calendarMonthApr.
  ///
  /// In en, this message translates to:
  /// **'Apr'**
  String get calendarMonthApr;

  /// No description provided for @calendarMonthMay.
  ///
  /// In en, this message translates to:
  /// **'May'**
  String get calendarMonthMay;

  /// No description provided for @calendarMonthJun.
  ///
  /// In en, this message translates to:
  /// **'Jun'**
  String get calendarMonthJun;

  /// No description provided for @calendarMonthJul.
  ///
  /// In en, this message translates to:
  /// **'Jul'**
  String get calendarMonthJul;

  /// No description provided for @calendarMonthAug.
  ///
  /// In en, this message translates to:
  /// **'Aug'**
  String get calendarMonthAug;

  /// No description provided for @calendarMonthSep.
  ///
  /// In en, this message translates to:
  /// **'Sep'**
  String get calendarMonthSep;

  /// No description provided for @calendarMonthOct.
  ///
  /// In en, this message translates to:
  /// **'Oct'**
  String get calendarMonthOct;

  /// No description provided for @calendarMonthNov.
  ///
  /// In en, this message translates to:
  /// **'Nov'**
  String get calendarMonthNov;

  /// No description provided for @calendarMonthDec.
  ///
  /// In en, this message translates to:
  /// **'Dec'**
  String get calendarMonthDec;

  /// No description provided for @calendarSeasonMuharramEarly.
  ///
  /// In en, this message translates to:
  /// **'Days of Muharram — remember Karbala'**
  String get calendarSeasonMuharramEarly;

  /// No description provided for @calendarSeasonAshura.
  ///
  /// In en, this message translates to:
  /// **'Ashura — Ya Husayn (AS)'**
  String get calendarSeasonAshura;

  /// No description provided for @calendarSeasonMuharramLate.
  ///
  /// In en, this message translates to:
  /// **'Muharram — days of mourning and reflection'**
  String get calendarSeasonMuharramLate;

  /// No description provided for @calendarSeasonArbaeen.
  ///
  /// In en, this message translates to:
  /// **'Arbaeen — forty days of Husayn'**
  String get calendarSeasonArbaeen;

  /// No description provided for @calendarSeasonRoadToArbaeen.
  ///
  /// In en, this message translates to:
  /// **'The road to Arbaeen'**
  String get calendarSeasonRoadToArbaeen;

  /// No description provided for @calendarSeasonMabath.
  ///
  /// In en, this message translates to:
  /// **'Mab\'ath Mubarak — the dawn of revelation'**
  String get calendarSeasonMabath;

  /// No description provided for @calendarSeasonMidShaban.
  ///
  /// In en, this message translates to:
  /// **'Mid-Sha\'ban — birthday of Imam al-Mahdi (AJ)'**
  String get calendarSeasonMidShaban;

  /// No description provided for @calendarSeasonRamadan.
  ///
  /// In en, this message translates to:
  /// **'Ramadan Mubarak — the month of the Quran'**
  String get calendarSeasonRamadan;

  /// No description provided for @calendarSeasonGhadir.
  ///
  /// In en, this message translates to:
  /// **'Eid al-Ghadir Mubarak!'**
  String get calendarSeasonGhadir;

  /// No description provided for @hijriMonth1.
  ///
  /// In en, this message translates to:
  /// **'Muharram'**
  String get hijriMonth1;

  /// No description provided for @hijriMonth2.
  ///
  /// In en, this message translates to:
  /// **'Safar'**
  String get hijriMonth2;

  /// No description provided for @hijriMonth3.
  ///
  /// In en, this message translates to:
  /// **'Rabi\' al-Awwal'**
  String get hijriMonth3;

  /// No description provided for @hijriMonth4.
  ///
  /// In en, this message translates to:
  /// **'Rabi\' al-Thani'**
  String get hijriMonth4;

  /// No description provided for @hijriMonth5.
  ///
  /// In en, this message translates to:
  /// **'Jumada al-Awwal'**
  String get hijriMonth5;

  /// No description provided for @hijriMonth6.
  ///
  /// In en, this message translates to:
  /// **'Jumada al-Thani'**
  String get hijriMonth6;

  /// No description provided for @hijriMonth7.
  ///
  /// In en, this message translates to:
  /// **'Rajab'**
  String get hijriMonth7;

  /// No description provided for @hijriMonth8.
  ///
  /// In en, this message translates to:
  /// **'Sha\'ban'**
  String get hijriMonth8;

  /// No description provided for @hijriMonth9.
  ///
  /// In en, this message translates to:
  /// **'Ramadan'**
  String get hijriMonth9;

  /// No description provided for @hijriMonth10.
  ///
  /// In en, this message translates to:
  /// **'Shawwal'**
  String get hijriMonth10;

  /// No description provided for @hijriMonth11.
  ///
  /// In en, this message translates to:
  /// **'Dhu al-Qi\'da'**
  String get hijriMonth11;

  /// No description provided for @hijriMonth12.
  ///
  /// In en, this message translates to:
  /// **'Dhu al-Hijja'**
  String get hijriMonth12;

  /// No description provided for @duasScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Duas & Ziyarat'**
  String get duasScreenTitle;

  /// No description provided for @duasSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search duas, ziyarat…'**
  String get duasSearchHint;

  /// No description provided for @duasFilterAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get duasFilterAll;

  /// No description provided for @duasCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one {{count} dua} other {{count} duas & ziyarat}}'**
  String duasCount(int count);

  /// No description provided for @duasEmpty.
  ///
  /// In en, this message translates to:
  /// **'No duas found.'**
  String get duasEmpty;

  /// No description provided for @duaCategoryDaily.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get duaCategoryDaily;

  /// No description provided for @duaCategoryWeekly.
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get duaCategoryWeekly;

  /// No description provided for @duaCategoryOccasions.
  ///
  /// In en, this message translates to:
  /// **'Occasions'**
  String get duaCategoryOccasions;

  /// No description provided for @duaCategoryZiyarat.
  ///
  /// In en, this message translates to:
  /// **'Ziyarat'**
  String get duaCategoryZiyarat;

  /// No description provided for @duaCategoryTasbih.
  ///
  /// In en, this message translates to:
  /// **'Tasbih'**
  String get duaCategoryTasbih;

  /// No description provided for @eventTypeBirth.
  ///
  /// In en, this message translates to:
  /// **'Birth'**
  String get eventTypeBirth;

  /// No description provided for @eventTypeMartyrdom.
  ///
  /// In en, this message translates to:
  /// **'Martyrdom'**
  String get eventTypeMartyrdom;

  /// No description provided for @eventTypeOccasion.
  ///
  /// In en, this message translates to:
  /// **'Occasion'**
  String get eventTypeOccasion;

  /// No description provided for @duaCopyTooltip.
  ///
  /// In en, this message translates to:
  /// **'Copy translation'**
  String get duaCopyTooltip;

  /// No description provided for @duaToggleTransliteration.
  ///
  /// In en, this message translates to:
  /// **'Transliteration'**
  String get duaToggleTransliteration;

  /// No description provided for @duaToggleTranslation.
  ///
  /// In en, this message translates to:
  /// **'Translation'**
  String get duaToggleTranslation;

  /// No description provided for @duaAskAiLabel.
  ///
  /// In en, this message translates to:
  /// **'Ask Ayara to explain this dua'**
  String get duaAskAiLabel;

  /// No description provided for @duaAskAiLockedLabel.
  ///
  /// In en, this message translates to:
  /// **'Ask Ayara (Wilaya)'**
  String get duaAskAiLockedLabel;

  /// No description provided for @duaAiLockedMessage.
  ///
  /// In en, this message translates to:
  /// **'Ayara explanations are available for Wilaya members. Upgrade in Settings.'**
  String get duaAiLockedMessage;

  /// No description provided for @duaAiComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Ask Ayara about \"{name}\" — coming soon!'**
  String duaAiComingSoon(String name);

  /// No description provided for @duaCopiedToast.
  ///
  /// In en, this message translates to:
  /// **'Dua copied to clipboard.'**
  String get duaCopiedToast;

  /// No description provided for @tasbihAllahuAkbarMeaning.
  ///
  /// In en, this message translates to:
  /// **'Allah is the Greatest'**
  String get tasbihAllahuAkbarMeaning;

  /// No description provided for @tasbihAlhamdulillahMeaning.
  ///
  /// In en, this message translates to:
  /// **'All praise belongs to Allah'**
  String get tasbihAlhamdulillahMeaning;

  /// No description provided for @tasbihSubhanallahMeaning.
  ///
  /// In en, this message translates to:
  /// **'Glory be to Allah'**
  String get tasbihSubhanallahMeaning;

  /// No description provided for @tasbihResetTooltip.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get tasbihResetTooltip;

  /// No description provided for @tasbihCompleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Tasbih Complete'**
  String get tasbihCompleteTitle;

  /// No description provided for @tasbihCompleteMessage.
  ///
  /// In en, this message translates to:
  /// **'May Allah accept your dhikr.'**
  String get tasbihCompleteMessage;

  /// No description provided for @tasbihTapHint.
  ///
  /// In en, this message translates to:
  /// **'Tap anywhere to count'**
  String get tasbihTapHint;

  /// No description provided for @tasbihatScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Prayer Guide'**
  String get tasbihatScreenTitle;

  /// No description provided for @tasbihatScreenSubtitle.
  ///
  /// In en, this message translates to:
  /// **'THE PRAYER GLORIFICATIONS'**
  String get tasbihatScreenSubtitle;

  /// No description provided for @tasbihatScreenDescription.
  ///
  /// In en, this message translates to:
  /// **'A complete guide to the glorifications recited during and after the daily prayers — following the tradition of the Ahl al-Bayt (a).'**
  String get tasbihatScreenDescription;

  /// No description provided for @tasbihatArba3Title.
  ///
  /// In en, this message translates to:
  /// **'TASBIḤĀT AL-ARBAʿA'**
  String get tasbihatArba3Title;

  /// No description provided for @tasbihatArba3Subtitle.
  ///
  /// In en, this message translates to:
  /// **'Recited during the 3rd & 4th rakʿah'**
  String get tasbihatArba3Subtitle;

  /// No description provided for @tasbihatArba3Info.
  ///
  /// In en, this message translates to:
  /// **'In Shia jurisprudence, the Tasbiḥāt al-Arbaʿa replaces Surah al-Fatiha in the 3rd and 4th rakʿah of Dhuhr, Asr, Maghrib, and Isha. It is obligatory (wājib) to recite it once, and recommended (mustaḥabb) to recite it three times.'**
  String get tasbihatArba3Info;

  /// No description provided for @tasbihatArba3Translation.
  ///
  /// In en, this message translates to:
  /// **'Glory be to Allah · All praise is for Allah\nThere is no god but Allah · Allah is the Greatest'**
  String get tasbihatArba3Translation;

  /// No description provided for @tasbihatArba3CompleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Recitation Complete'**
  String get tasbihatArba3CompleteTitle;

  /// No description provided for @tasbihatArba3CompleteMessage.
  ///
  /// In en, this message translates to:
  /// **'May your prayer be accepted — Āmīn'**
  String get tasbihatArba3CompleteMessage;

  /// No description provided for @tasbihatArba3TapHint.
  ///
  /// In en, this message translates to:
  /// **'Tap after each recitation'**
  String get tasbihatArba3TapHint;

  /// No description provided for @tasbihatZahraSubtitle.
  ///
  /// In en, this message translates to:
  /// **'After every prayer · 100 beads'**
  String get tasbihatZahraSubtitle;

  /// No description provided for @tasbihatZahraOriginLabel.
  ///
  /// In en, this message translates to:
  /// **'Origin'**
  String get tasbihatZahraOriginLabel;

  /// No description provided for @tasbihatZahraHadith.
  ///
  /// In en, this message translates to:
  /// **'Lady Fatima al-Zahra (sa) asked the Prophet ﷺ for a servant. He said: \"Shall I not guide you to something better? Recite Subḥānallāh 33 times, Alḥamdulillāh 33 times, and Allāhu Akbar 34 times after every prayer. That is better for you than a servant.\"'**
  String get tasbihatZahraHadith;

  /// No description provided for @tasbihatZahraHadithSource.
  ///
  /// In en, this message translates to:
  /// **'— Bihar al-Anwār, Vol. 85'**
  String get tasbihatZahraHadithSource;

  /// No description provided for @tasbihatZahraOpenCounter.
  ///
  /// In en, this message translates to:
  /// **'Open Tasbīḥ Counter'**
  String get tasbihatZahraOpenCounter;

  /// No description provided for @tasbihatDuasTitle.
  ///
  /// In en, this message translates to:
  /// **'RECOMMENDED DUĀS'**
  String get tasbihatDuasTitle;

  /// No description provided for @tasbihatDuasSubtitle.
  ///
  /// In en, this message translates to:
  /// **'After completing your prayer'**
  String get tasbihatDuasSubtitle;

  /// No description provided for @tasbihatDuaAyatKursiTitle.
  ///
  /// In en, this message translates to:
  /// **'Āyat al-Kursī'**
  String get tasbihatDuaAyatKursiTitle;

  /// No description provided for @tasbihatDuaAyatKursiWhen.
  ///
  /// In en, this message translates to:
  /// **'After every obligatory prayer'**
  String get tasbihatDuaAyatKursiWhen;

  /// No description provided for @tasbihatDuaAyatKursiSource.
  ///
  /// In en, this message translates to:
  /// **'Surah al-Baqarah 2:255'**
  String get tasbihatDuaAyatKursiSource;

  /// No description provided for @tasbihatDuaAyatKursiNote.
  ///
  /// In en, this message translates to:
  /// **'Whoever recites Āyat al-Kursī after every obligatory prayer, nothing stands between him and paradise except death. Imam al-Bāqir (a) said it is among the greatest verses in the Quran.'**
  String get tasbihatDuaAyatKursiNote;

  /// No description provided for @tasbihatDuaSalawatTitle.
  ///
  /// In en, this message translates to:
  /// **'Ṣalawāt'**
  String get tasbihatDuaSalawatTitle;

  /// No description provided for @tasbihatDuaSalawatWhen.
  ///
  /// In en, this message translates to:
  /// **'After every prayer · seals all supplications'**
  String get tasbihatDuaSalawatWhen;

  /// No description provided for @tasbihatDuaSalawatSource.
  ///
  /// In en, this message translates to:
  /// **'Imam al-Ṣādiq (a) — Al-Kāfī'**
  String get tasbihatDuaSalawatSource;

  /// No description provided for @tasbihatDuaSalawatNote.
  ///
  /// In en, this message translates to:
  /// **'Sending salutations upon the Prophet ﷺ and his purified family (Āl Muḥammad) is recommended to seal every dua. Imam al-Ṣādiq (a) said: \"Any dua is suspended until you send ṣalawāt upon Muḥammad and his family.\"'**
  String get tasbihatDuaSalawatNote;

  /// No description provided for @tasbihatDuaFarajTitle.
  ///
  /// In en, this message translates to:
  /// **'Duʿā al-Faraj'**
  String get tasbihatDuaFarajTitle;

  /// No description provided for @tasbihatDuaFarajWhen.
  ///
  /// In en, this message translates to:
  /// **'After every prayer · for the Imam of our time'**
  String get tasbihatDuaFarajWhen;

  /// No description provided for @tasbihatDuaFarajSource.
  ///
  /// In en, this message translates to:
  /// **'Taught by Imam al-Ḥasan al-ʿAskarī (a)'**
  String get tasbihatDuaFarajSource;

  /// No description provided for @tasbihatDuaFarajNote.
  ///
  /// In en, this message translates to:
  /// **'A dua for the reappearance of Imam al-Mahdī (af), the twelfth Imam, taught by his father. Recited daily by the Shia faithful after every prayer as an act of devotion to the living Imam.'**
  String get tasbihatDuaFarajNote;

  /// No description provided for @tasbihatDuaTasbihFatimaTitle.
  ///
  /// In en, this message translates to:
  /// **'Tasbīḥ of Lady Fāṭima'**
  String get tasbihatDuaTasbihFatimaTitle;

  /// No description provided for @tasbihatDuaTasbihFatimaWhen.
  ///
  /// In en, this message translates to:
  /// **'After Maghrib & Isha · especially recommended'**
  String get tasbihatDuaTasbihFatimaWhen;

  /// No description provided for @tasbihatDuaTasbihFatimaSource.
  ///
  /// In en, this message translates to:
  /// **'Imam al-Bāqir (a) — Biḥār al-Anwār'**
  String get tasbihatDuaTasbihFatimaSource;

  /// No description provided for @tasbihatDuaTasbihFatimaNote.
  ///
  /// In en, this message translates to:
  /// **'Imam al-Bāqir (a) said that reciting Tasbīḥ al-Zahrā after Isha before sleeping is better than 1000 rakʿahs of optional prayer. Its light ascends to the heavens.'**
  String get tasbihatDuaTasbihFatimaNote;

  /// No description provided for @tasbihFatimaGiftPre.
  ///
  /// In en, this message translates to:
  /// **'A gift from the Prophet'**
  String get tasbihFatimaGiftPre;

  /// No description provided for @tasbihFatimaGiftPost.
  ///
  /// In en, this message translates to:
  /// **'recited after every prayer'**
  String get tasbihFatimaGiftPost;

  /// No description provided for @prayerTrackerTitle.
  ///
  /// In en, this message translates to:
  /// **'PRAYER TRACKER'**
  String get prayerTrackerTitle;

  /// No description provided for @prayerTrackerPrayed.
  ///
  /// In en, this message translates to:
  /// **'Prayed'**
  String get prayerTrackerPrayed;

  /// No description provided for @prayerTrackerDayStreak.
  ///
  /// In en, this message translates to:
  /// **'{count} day streak'**
  String prayerTrackerDayStreak(int count);

  /// No description provided for @prayerTrackerAllComplete.
  ///
  /// In en, this message translates to:
  /// **'All prayers completed today. May Allah accept.'**
  String get prayerTrackerAllComplete;

  /// No description provided for @dhikrTrackerTitle.
  ///
  /// In en, this message translates to:
  /// **'TASBĪḤ AL-ZAHRĀ'**
  String get dhikrTrackerTitle;

  /// No description provided for @dhikrTrackerCompletedToday.
  ///
  /// In en, this message translates to:
  /// **'Completed today'**
  String get dhikrTrackerCompletedToday;

  /// No description provided for @dhikrTrackerNotDoneToday.
  ///
  /// In en, this message translates to:
  /// **'Not done today'**
  String get dhikrTrackerNotDoneToday;

  /// No description provided for @dhikrTrackerDayStreak.
  ///
  /// In en, this message translates to:
  /// **'{count} day streak'**
  String dhikrTrackerDayStreak(int count);

  /// No description provided for @dhikrReminderTitle.
  ///
  /// In en, this message translates to:
  /// **'Tasbīḥ Reminder'**
  String get dhikrReminderTitle;

  /// No description provided for @dhikrReminderDescription.
  ///
  /// In en, this message translates to:
  /// **'A gentle daily reminder to recite your Tasbīḥ al-Zahrā (SA).'**
  String get dhikrReminderDescription;

  /// No description provided for @dhikrReminderEnable.
  ///
  /// In en, this message translates to:
  /// **'Enable Tasbīḥ reminder'**
  String get dhikrReminderEnable;

  /// No description provided for @dhikrReminderTimeLabel.
  ///
  /// In en, this message translates to:
  /// **'Reminder time'**
  String get dhikrReminderTimeLabel;

  /// No description provided for @prayerTrackerProgress.
  ///
  /// In en, this message translates to:
  /// **'{done} / {total}'**
  String prayerTrackerProgress(int done, int total);

  /// No description provided for @hadithScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Daily Hadith'**
  String get hadithScreenTitle;

  /// No description provided for @hadithLabelArabic.
  ///
  /// In en, this message translates to:
  /// **'ARABIC'**
  String get hadithLabelArabic;

  /// No description provided for @hadithLabelTranslation.
  ///
  /// In en, this message translates to:
  /// **'TRANSLATION'**
  String get hadithLabelTranslation;

  /// No description provided for @hadithBadge.
  ///
  /// In en, this message translates to:
  /// **'HADITH'**
  String get hadithBadge;

  /// No description provided for @hadithShare.
  ///
  /// In en, this message translates to:
  /// **'Share This Hadith'**
  String get hadithShare;

  /// No description provided for @hadithShareText.
  ///
  /// In en, this message translates to:
  /// **'\"{text}\"\n\n— {imam}\n{source}\n\nVia Ayara'**
  String hadithShareText(String text, String imam, String source);

  /// No description provided for @hadithNavPrevious.
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get hadithNavPrevious;

  /// No description provided for @hadithNavNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get hadithNavNext;

  /// No description provided for @hadithCounter.
  ///
  /// In en, this message translates to:
  /// **'{current} / {total}'**
  String hadithCounter(int current, int total);

  /// No description provided for @imamsScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'The 14 Masumeen'**
  String get imamsScreenTitle;

  /// No description provided for @imamsScreenSubtitle.
  ///
  /// In en, this message translates to:
  /// **'The Prophet, Lady Fatima, and the Twelve Imams — the infallible guides of Islam'**
  String get imamsScreenSubtitle;

  /// No description provided for @imamLabelBorn.
  ///
  /// In en, this message translates to:
  /// **'Born'**
  String get imamLabelBorn;

  /// No description provided for @imamLabelMartyrdom.
  ///
  /// In en, this message translates to:
  /// **'Martyrdom'**
  String get imamLabelMartyrdom;

  /// No description provided for @imamLabelStatus.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get imamLabelStatus;

  /// No description provided for @imamSectionBiography.
  ///
  /// In en, this message translates to:
  /// **'BIOGRAPHY'**
  String get imamSectionBiography;

  /// No description provided for @imamSectionFamousSaying.
  ///
  /// In en, this message translates to:
  /// **'FAMOUS SAYING'**
  String get imamSectionFamousSaying;

  /// No description provided for @imamRoleProphet.
  ///
  /// In en, this message translates to:
  /// **'The Final Prophet'**
  String get imamRoleProphet;

  /// No description provided for @imamRoleInfallible.
  ///
  /// In en, this message translates to:
  /// **'The Infallible'**
  String get imamRoleInfallible;

  /// No description provided for @imamOrdinal1.
  ///
  /// In en, this message translates to:
  /// **'1st Imam'**
  String get imamOrdinal1;

  /// No description provided for @imamOrdinal2.
  ///
  /// In en, this message translates to:
  /// **'2nd Imam'**
  String get imamOrdinal2;

  /// No description provided for @imamOrdinal3.
  ///
  /// In en, this message translates to:
  /// **'3rd Imam'**
  String get imamOrdinal3;

  /// No description provided for @imamOrdinal4.
  ///
  /// In en, this message translates to:
  /// **'4th Imam'**
  String get imamOrdinal4;

  /// No description provided for @imamOrdinal5.
  ///
  /// In en, this message translates to:
  /// **'5th Imam'**
  String get imamOrdinal5;

  /// No description provided for @imamOrdinal6.
  ///
  /// In en, this message translates to:
  /// **'6th Imam'**
  String get imamOrdinal6;

  /// No description provided for @imamOrdinal7.
  ///
  /// In en, this message translates to:
  /// **'7th Imam'**
  String get imamOrdinal7;

  /// No description provided for @imamOrdinal8.
  ///
  /// In en, this message translates to:
  /// **'8th Imam'**
  String get imamOrdinal8;

  /// No description provided for @imamOrdinal9.
  ///
  /// In en, this message translates to:
  /// **'9th Imam'**
  String get imamOrdinal9;

  /// No description provided for @imamOrdinal10.
  ///
  /// In en, this message translates to:
  /// **'10th Imam'**
  String get imamOrdinal10;

  /// No description provided for @imamOrdinal11.
  ///
  /// In en, this message translates to:
  /// **'11th Imam'**
  String get imamOrdinal11;

  /// No description provided for @imamOrdinal12.
  ///
  /// In en, this message translates to:
  /// **'12th Imam'**
  String get imamOrdinal12;

  /// No description provided for @duaAudioScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Listen to Duas'**
  String get duaAudioScreenTitle;

  /// No description provided for @duaAudioScreenSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Select a dua to listen. Tap the tile to play or pause.'**
  String get duaAudioScreenSubtitle;

  /// No description provided for @duaAudioComingSoonMessage.
  ///
  /// In en, this message translates to:
  /// **'Audio for this dua will be available in an upcoming update.'**
  String get duaAudioComingSoonMessage;

  /// No description provided for @duaAudioClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get duaAudioClose;

  /// No description provided for @duaAudioError.
  ///
  /// In en, this message translates to:
  /// **'Could not load audio. Please check your connection.'**
  String get duaAudioError;

  /// No description provided for @duaAudioMetaTransmittedBy.
  ///
  /// In en, this message translates to:
  /// **'Transmitted by'**
  String get duaAudioMetaTransmittedBy;

  /// No description provided for @duaAudioMetaOccasion.
  ///
  /// In en, this message translates to:
  /// **'Occasion'**
  String get duaAudioMetaOccasion;

  /// No description provided for @duaAudioMetaDuration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get duaAudioMetaDuration;

  /// No description provided for @quickActionDailyHadith.
  ///
  /// In en, this message translates to:
  /// **'Daily Hadith'**
  String get quickActionDailyHadith;

  /// No description provided for @quickAction14Masumeen.
  ///
  /// In en, this message translates to:
  /// **'14 Masumeen'**
  String get quickAction14Masumeen;

  /// No description provided for @quickActionListenDuas.
  ///
  /// In en, this message translates to:
  /// **'Listen'**
  String get quickActionListenDuas;

  /// No description provided for @quickActionTasbihat.
  ///
  /// In en, this message translates to:
  /// **'Prayer Guide'**
  String get quickActionTasbihat;

  /// No description provided for @pilgrimageSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'The Sacred Journey'**
  String get pilgrimageSectionTitle;

  /// No description provided for @pilgrimageSectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Complete guides to Hajj & Umrah — the pilgrimage to the Holy House of Allah in Mecca'**
  String get pilgrimageSectionSubtitle;

  /// No description provided for @hajjCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Hajj'**
  String get hajjCardTitle;

  /// No description provided for @hajjCardSubtitle.
  ///
  /// In en, this message translates to:
  /// **'The Fifth Pillar of Islam'**
  String get hajjCardSubtitle;

  /// No description provided for @hajjCardDescription.
  ///
  /// In en, this message translates to:
  /// **'The grand annual pilgrimage — obligatory once in a lifetime for every able Muslim'**
  String get hajjCardDescription;

  /// No description provided for @hajjScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Hajj Guide'**
  String get hajjScreenTitle;

  /// No description provided for @hajjScreenSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Step-by-step guide to the grand pilgrimage'**
  String get hajjScreenSubtitle;

  /// No description provided for @umrahCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Umrah'**
  String get umrahCardTitle;

  /// No description provided for @umrahCardSubtitle.
  ///
  /// In en, this message translates to:
  /// **'The Lesser Pilgrimage'**
  String get umrahCardSubtitle;

  /// No description provided for @umrahCardDescription.
  ///
  /// In en, this message translates to:
  /// **'A deeply rewarding spiritual journey that can be performed at any time of year'**
  String get umrahCardDescription;

  /// No description provided for @umrahScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Umrah Guide'**
  String get umrahScreenTitle;

  /// No description provided for @umrahScreenSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Step-by-step guide to the lesser pilgrimage'**
  String get umrahScreenSubtitle;

  /// No description provided for @pilgrimageStepsTitle.
  ///
  /// In en, this message translates to:
  /// **'Rituals & Steps'**
  String get pilgrimageStepsTitle;

  /// No description provided for @pilgrimageImportantNotesTitle.
  ///
  /// In en, this message translates to:
  /// **'Important Notes'**
  String get pilgrimageImportantNotesTitle;

  /// No description provided for @pilgrimageDuaTitle.
  ///
  /// In en, this message translates to:
  /// **'Dua for this step'**
  String get pilgrimageDuaTitle;

  /// No description provided for @pilgrimageJafariNoteTitle.
  ///
  /// In en, this message translates to:
  /// **'Ja\'fari Fiqh Note'**
  String get pilgrimageJafariNoteTitle;

  /// No description provided for @pilgrimageComplete.
  ///
  /// In en, this message translates to:
  /// **'✓ Complete'**
  String get pilgrimageComplete;

  /// No description provided for @pilgrimageMarkDone.
  ///
  /// In en, this message translates to:
  /// **'Mark as complete'**
  String get pilgrimageMarkDone;

  /// No description provided for @pilgrimageProgress.
  ///
  /// In en, this message translates to:
  /// **'{done} of {total} steps'**
  String pilgrimageProgress(int done, int total);

  /// No description provided for @pilgrimageReadTime.
  ///
  /// In en, this message translates to:
  /// **'~{minutes} min'**
  String pilgrimageReadTime(int minutes);

  /// No description provided for @pilgrimageShiaNoteTitle.
  ///
  /// In en, this message translates to:
  /// **'Shia Pilgrims'**
  String get pilgrimageShiaNoteTitle;

  /// No description provided for @pilgrimageShiaNoteBody.
  ///
  /// In en, this message translates to:
  /// **'Shia pilgrims traditionally also travel to Medina to visit the tomb of the Prophet Muhammad (SAW) at Masjid al-Nabawi, and the graves of the Imams at Jannat al-Baqi. These visits carry immense spiritual significance and are considered an integral part of the journey for most Shia Muslims.'**
  String get pilgrimageShiaNoteBody;

  /// No description provided for @hajjIntro.
  ///
  /// In en, this message translates to:
  /// **'Hajj is the fifth pillar of Islam, obligatory once in a lifetime for every Muslim who is physically and financially able. Performed in the month of Dhul Hijjah, it retraces the footsteps of Prophet Ibrahim (AS), his son Ismail (AS), and Lady Hajar. For Shia Muslims, Hajj also includes the profound blessing of visiting the resting places of the Prophet (SAW) and the Ahlul Bayt in Medina.'**
  String get hajjIntro;

  /// No description provided for @umrahIntro.
  ///
  /// In en, this message translates to:
  /// **'Umrah is the lesser pilgrimage to Mecca and, unlike Hajj, can be performed at any time of the year. While not obligatory, it carries immense spiritual reward and is considered a highly recommended act of worship. It shares several rituals with Hajj but is shorter, consisting of four main rites.'**
  String get umrahIntro;
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
