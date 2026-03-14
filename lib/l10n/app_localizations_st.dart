// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Southern Sotho (`st`).
class AppLocalizationsSt extends AppLocalizations {
  AppLocalizationsSt([String locale = 'st']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Khetha puo ea hao';

  @override
  String get languageSelectSub => 'O ka fetola sena hamorao ho Litlhophiso';

  @override
  String get actionContinue => 'Tsoela pele';

  @override
  String get languageSuggestedHeader => 'Tse khothalletsoang';

  @override
  String get languageAllHeader => 'Lipuo tsohle';

  @override
  String get languageSuggestedBadge => 'E khothalletsoang';

  @override
  String get languageSearchHint => 'Batla…';

  @override
  String get planBasic => 'Tloaelehileng';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Tataiso ea Letsatsi le Letsatsi';

  @override
  String get categorySlot02 => 'Iman le Tšepo';

  @override
  String get categorySlot03 => 'Ho Nahana ka Thapelo';

  @override
  String get categorySlot04 => 'Mamello le Tšepo';

  @override
  String get categorySlot05 => 'Kopa Tšoarelo';

  @override
  String get categorySlot06 => 'Mohau le Kutloelo-bohloko';

  @override
  String get categorySlot07 => 'Matla a Tumelo';

  @override
  String get categorySlot08 => 'Pelo e Tletseng Tebello';

  @override
  String get categorySlot09 => 'Morero oa Bophelo';

  @override
  String get categorySlot10 => 'Maqhama a Lelapa';

  @override
  String get categorySlot11 => 'Khotso ea Ka Hare';

  @override
  String get categorySlot12 => 'Bohlale ba Moprofeta';

  @override
  String get categorySlot13 => 'Boitšoaro bo Botle';

  @override
  String get categorySlot14 => 'Hanela Teko';

  @override
  String get categorySlot15 => 'Dhikr ea Mantsiboea';

  @override
  String get categoryCustom => 'Ho Nahana ha Motho ka Mong';

  @override
  String get dhikrMeaningSubhanallah => 'Khanya e be ho Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Thoriso eohle ke ea Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah o Moholo ka ho Fetisisa';

  @override
  String get quranVerseHeartAtRest =>
      'Kannete, ka ho hopola Allah lipelo li fumana khotso.';

  @override
  String get promptHint =>
      'Tobetsa sehlopha bakeng sa tataiso le ho nahanisisa ha Boislamo';

  @override
  String get currentLanguage => 'Puo ea hajoale';

  @override
  String get settingsLanguage => 'Litlhophiso tsa puo';

  @override
  String get settingsTitle => 'Litlhophiso';

  @override
  String get chooseLanguage => 'Khetha puo ea hao';

  @override
  String get continueCta => 'Tsoela pele';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mantsoe',
      one: '$count lentsoe',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Likhetho';

  @override
  String get newCta => 'Ncha';

  @override
  String get actionsTitle => 'U ka rata ho etsa eng?';

  @override
  String get copy => 'Kopitsa';

  @override
  String get share => 'Arolelana';

  @override
  String get close => 'Koala';

  @override
  String get copiedToast => 'E kopisitsoe ho clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Ha ho khonehe ho hlahisa karabo e ncha';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nNa u batla ho leka hape?';
  }

  @override
  String get cancelCta => 'Hlakola';

  @override
  String get retryCta => 'Leka hape';

  @override
  String get authTitle => 'Theha ak’haonte ea hau';

  @override
  String get continueAsGuest => 'Tsoela pele joalo ka moeti';

  @override
  String get signInGoogle => 'Kena ka Google';

  @override
  String get signInApple => 'Kena ka Apple';

  @override
  String get signInEmail => 'Kena ka Imeile';

  @override
  String get upgradeWithApple => 'Tsoela pele ka Apple';

  @override
  String get mustAccept =>
      'U tlameha ho amohela Melao ea Ts\'ebeletso le ho netefatsa Leano la Lekunutu.';

  @override
  String get termsLabel => 'Ke amohela Melao ea Ts\'ebeletso';

  @override
  String get privacyLabel => 'Ke balile Leano la Lekunutu';

  @override
  String get marketingOptIn => 'Ke lumela ho amohela litaba le litefiso';

  @override
  String get openTerms => 'Melao ea Ts\'ebeletso';

  @override
  String get openPrivacy => 'Leano la Lekunutu';

  @override
  String get accountSection => 'Ak’haonte';

  @override
  String get guestMode => 'Mokhoa oa moeti';

  @override
  String get signedIn => 'O kene';

  @override
  String get upgradeHint =>
      'Boloka menahano ea hau lisebelisoa tsohle ka ho theha ak’haonte.';

  @override
  String get upgradeWithGoogle => 'Tsoela pele ka Google';

  @override
  String get signOut => 'Tsoa';

  @override
  String get snackUpgraded => 'Ak’haonte e ntlafalitsoe ka Google ✅';

  @override
  String get snackSignedIn => 'U kene ka Google ✅';

  @override
  String get snackSignedOut => 'U tsoile';

  @override
  String get snackSignedInApple => 'U kene ka Apple ✅';

  @override
  String get snackSignedInGoogle => 'U kene ka Google ✅';

  @override
  String get snackUpgradedApple => 'Ak’haonte e ntlafalitsoe ka Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Ak’haonte e ntlafalitsoe ka Google ✅';

  @override
  String get historyTitle => 'Menahano e fetileng';

  @override
  String get historyOpenCta => 'Menahano e fetileng';

  @override
  String get historyEmpty => 'Ha ho menahano e bolokiloeng hajoale.';

  @override
  String get historyDeleteTitle => 'Hlakola monahano?';

  @override
  String get historyDeleteBody =>
      'Sena se tla tlosa ntho e khethiloeng ka ho sa feleng.';

  @override
  String get deleteCta => 'Hlakola';

  @override
  String get historyButton => 'Menahano e Fetileng';

  @override
  String get historyEmptyTitle => 'Ha ho menahano hajoale';

  @override
  String get historyEmptyBody =>
      'Hlahisa sengwe pele — lintho tsa hao tse bolokiloeng li tla hlaha mona.';

  @override
  String get historyDelete => 'Hlakola';

  @override
  String get footerTitle => 'Ka Wilaya, Iman le Sabr';

  @override
  String get footerSubtitle => 'Thapelo e le ’ngoe ka nako';

  @override
  String get genericErrorSnack =>
      'Ho bile le phoso — ka kopo leka hape ka motsotsoana.';

  @override
  String get upgradeAccountCta =>
      'Boloka menahano ea hau lisebelisoa tsohle – theha ak’haonte';

  @override
  String get deleteAccount => 'Hlakola ak’haonte';

  @override
  String get exportData => 'Romela kantle dintlha tsa ka';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Phomola hanyane 🐯\nAyara e hloka motsotso pele ho e latelang…';

  @override
  String get rateDailyLimit =>
      'Menahano ea hau e felile hajoale.\nFumana menahano e meng kapa u ntlafatse ho Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'U sebelisitse menahano eohle ea hau.\nEketsa kapa u ntlafatse ho Wilaya hore u tsoele pele.';

  @override
  String get rateGraceCreditsExhausted =>
      'Menahano ea hau e felile hajoale.\nFumana menahano e meng kapa u ntlafatse ho Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya e bula likarolo tsa premium, lihlopha tsa nakong e tlang, le letshwao le ikhethang.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Menahano ea hau e felile hajoale. Moralo: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Ha hoa ka ha khoneha ho hlahloba menahano ea hau: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Ho bile le phoso ha ho ntse ho hlahlojoa menahano ea hau.';

  @override
  String get aiFallbackGeneric =>
      'Ho bile le phoso — ka kopo leka hape ka motsotsoana.';

  @override
  String get limitSectionTitle => 'Menahano';

  @override
  String get limitTodayLabel => 'Tšebeliso';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Menahano e setseng: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Moralo: $plan';
  }

  @override
  String get limitLoadingLabel => 'E ntse e jara…';

  @override
  String get limitLoadingLabelDescription =>
      'E bontšoa kareteng ea menahano ha lipalo-palo tsa tšebeliso li ntse li huloa.';

  @override
  String get aiLimitTitle => 'Menahano';

  @override
  String get aiLimitSubtitle =>
      'Karabo e ’ngoe le e ’ngoe e sebelisa monahano o le mong. Standard e kenyelletsa menahano ea qalo. Wilaya e bula lihlopha tsa premium mme e lumella ho tlatsoa hape.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total menahano e sebelisitsoe';
  }

  @override
  String get creditsSectionTitle => 'Menahano';

  @override
  String get creditsUsageLabel => 'Tšebeliso';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Menahano e setseng: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Moralo: $plan';
  }

  @override
  String get creditsLoadingLabel => 'E ntse e jara…';

  @override
  String get creditsLoadingLabelDescription =>
      'E bontšoa ha lipalo-palo tsa menahano li ntse li huloa.';

  @override
  String get creditsTitle => 'Menahano';

  @override
  String get creditsSubtitle =>
      'Karabo e ’ngoe le e ’ngoe e sebelisa monahano o le mong. Standard e kenyelletsa menahano ea qalo. Wilaya e bula lihlopha tsa premium mme e lumella ho tlatsoa hape.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total menahano e sebelisitsoe';
  }

  @override
  String get settingsDeleteTitle => 'Hlakola ak’haonte';

  @override
  String get settingsDeleteDescription =>
      'Hlakola ak’haonte ea hau le data eohle e amanang le eona ka ho sa feleng.';

  @override
  String get settingsDeleteButtonLabel => 'Hlakola ak’haonte ea ka';

  @override
  String get settingsDeleteDialogTitle => 'Na o batla ho hlakola ak’haonte?';

  @override
  String get settingsDeleteDialogBody =>
      'Ketso ena ke ea ka ho sa feleng ebile e ke ke ea khutlisoa.\n\nLipuisano tsohle tsa hau, nalane le leseli la ak’haonte li tla hlakoloa.';

  @override
  String get settingsDeleteDialogCancel => 'Hlakola';

  @override
  String get settingsDeleteDialogConfirm => 'Hlakola';

  @override
  String get settingsFreeLimitUsedTitle => 'Menahano ea qalo e sebelisitsoe';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Menahano ea qalo bakeng sa sesebelisoa sena e se e sebelisitsoe. Ntlafatsa ho Wilaya kapa reka menahano e meng hore u tsoele pele.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Menahano ea qalo e sebelisitsoe';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Menahano ea qalo bakeng sa sesebelisoa sena e se e sebelisitsoe. Ntlafatsa ho Wilaya kapa reka menahano e meng hore u tsoele pele.';

  @override
  String get deviceBoundError =>
      'Sesebelisoa sena se se se hokahane le ak’haonte e ’ngoe. Ka kopo kena ka ak’haonte ea pele.';

  @override
  String get premiumTitle => 'Mokhoa oa Wilaya';

  @override
  String get premiumSubtitleBasic => 'Bula phihlelo e felletseng ea Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'U se u le ho Wilaya. Na u hloka menahano e meng?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Moralo oa hajoale: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Menahano: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Litheko ha li fumanehe hajoale.';

  @override
  String get premiumSignInToPurchase =>
      'Kena hore u reke menahano kapa u bule Wilaya.';

  @override
  String get premiumRestorePurchases => 'Khutlisa litheko';

  @override
  String get premiumProcessing => 'E ntse e sebetsa…';

  @override
  String get premiumRestoreHintTitle =>
      'Na u se u kile ua reka Wilaya kapa menahano sesebelisoa sena kapa se seng?';

  @override
  String get premiumRestoreHintBody =>
      'Khutlisa litheko tsa hao haeba li sa hlahe.';

  @override
  String get premiumBuyCredits200 => 'Reka menahano e 200';

  @override
  String get premiumBuyCredits400 => 'Reka menahano e 400';

  @override
  String get premiumBecomePremiumOneTime => 'Ntlafatsa ho mokhoa oa Wilaya';

  @override
  String get premiumTopupHint =>
      'Ka Wilaya, o ka eketsa menahano e meng ha u e hloka.';

  @override
  String get premiumUpgradeCta => 'Ntlafatsa';

  @override
  String get premiumRequiredForCategory =>
      'Sehlopha sena se fumaneha feela ho basebelisi ba Wilaya. Ntlafatsa ho Litlhophiso ho bula litaba tsohle tsa premium.';

  @override
  String get premiumBenefitsBasic =>
      'Bula Wilaya ho fumana menahano e eketsehileng, phihlello ho lihlopha tsa premium, le ho tsoela pele neng kapa neng ha o hloka tataiso.';

  @override
  String get premiumBenefitsPremium =>
      'U le mokhoeng oa Wilaya. Haeba li fokola, eketsa menahano e meng \'me u tsoele pele ntle le tšitiso.';

  @override
  String get premiumButtonBecomePremium => 'Bula Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Eketsa menahano e 1000';

  @override
  String get premiumBadge => 'Wilaya e sebetsa';

  @override
  String get premiumLoadingStore => 'E ntse e jara lebenkele…';

  @override
  String get premiumProductNotAvailable =>
      'Sehlahisoa sena ha se so fumanehe ka lebenkeleng. Ka kopo leka hape hamorao.';

  @override
  String get premiumPurchaseError =>
      'Ho bile le phoso ka theko. Ka kopo leka hape.';

  @override
  String get premiumBuyCredits100 => 'Eketsa menahano e 100';

  @override
  String get premiumFeatureLocked => 'Bula Wilaya hore u fihlele karolo ena.';

  @override
  String get lockedCategoriesHint =>
      'Lihlopha tse ling li boloketsoe litho tsa Wilaya. Li bule hore u hlahlobe monahano o mong le o mong tseleng ea hao.';

  @override
  String get freePlanBlockedTitle =>
      'U se u sebelisitse menahano ea hao ea qalo';

  @override
  String get freePlanBlockedBody =>
      'U morerong oa Standard o nang le menahano ea qalo, \'me u fihletse moeli. Ho tsoela pele — le ho bula lihlopha tsa premium — ntlafatsa ho Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'Sheba likhetho tsa Wilaya ka tlase';

  @override
  String get graceBlockedTitle => 'U se u sebelisitse menahano ea hao ea qalo';

  @override
  String get graceBlockedBody =>
      'U morerong oa Standard o nang le menahano ea qalo, \'me u fihletse moeli. Ho tsoela pele — le ho bula lihlopha tsa premium — ntlafatsa ho Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Sheba likhetho tsa Wilaya ka tlase';

  @override
  String get rateGuestMustSignIn =>
      'Kena hore u sebelise Ayara le menahano ea hao.';

  @override
  String get guestNoCreditsTitle => 'Mokhoa oa moeti';

  @override
  String get guestNoCreditsBody =>
      'Joaloka moeti u ka sheba app, empa u ke ke ua sebelisa menahano. Kena hamorao ho Litlhophiso hore u sebelise menahano le ho bula litheko.';

  @override
  String get guestDialogContinue => 'Tsoela pele';

  @override
  String get guestDialogLoginInstead => 'Kena ho e-na le hoo';

  @override
  String get optionalLabel => 'boikhethelo';

  @override
  String get accountDeleteSuccessTitle => 'Ak’haonte e hlakotsoe';

  @override
  String get accountDeleteSuccessBody =>
      'Ak’haonte ea hau le data e amanang le eona li hlakotsoe ka katleho.';

  @override
  String get accountDeleteSuccessClose => 'Koala';

  @override
  String get accountDeleteErrorTitle => 'Ha hoa khoneha ho hlakola ak’haonte';

  @override
  String get accountDeleteErrorClose => 'Ho lokile';

  @override
  String get accountDeleteReauthCancelled =>
      'Ho netefatsa hape ho hlakotsoe. Ka kopo kena hape ebe u leka ho hlakola hape.';

  @override
  String get accountDeleteReauthRequired =>
      'Ho hlakola ak’haonte ho hloka ho kena haufinyane. Ka kopo tsoa, kena hape, ebe u leka hape.';

  @override
  String get settingsDeletePermanentWarning =>
      'Ketso ena ke ea ka ho sa feleng ebile e ke ke ea khutlisoa. Data eohle e amanang le ak’haonte ea hau e tla hlakoloa.';

  @override
  String get dailyGraceTitle => 'Tataiso ea Letsatsi le Letsatsi';

  @override
  String get dailyGraceScriptureLabel => 'TEMANA EA LETSATSI';

  @override
  String get dailyGraceSaintLabel => 'SETSEBI SA BEKE';

  @override
  String get dailyGraceReflectionLabel => 'HO NAGANA HA MANTSIBOEA';

  @override
  String get dailyGraceCopiedToast => 'Temana e kopilitsoe ho clipboard';

  @override
  String get locationConsentLabel =>
      'Lumella Ayara ho sebelisa sebaka sa ka bakeng sa tataiso ea Qibla le linako tsa thapelo';

  @override
  String get locationConsentHint =>
      'E sebelisoa feela bakeng sa likarolo tsena. Sebaka sa hao ha se bolokoe kapa ho arolelanoa.';

  @override
  String get askPageTitle => 'Botsa Ayara';

  @override
  String get askPageDescription =>
      'Botsa ntho efe kapa efe ka tumelo, thapelo, bophelo kapa ts\'ebetso ea Boislamo \'me u fumane tataiso e thehiloeng ho Qur\'an le lithuto tsa Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Ngola potso ea hao mona…';

  @override
  String get askPageSubmitCta => 'Botsa';

  @override
  String get askPageInputEmptyError => 'Ka kopo ngola potso pele.';

  @override
  String get askResultYourQuestion => 'Potso ea hau';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'E shebile Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Potoloha fono ea hau ho fihlela nale ea khauta e supa holimo.\nTataiso eo e supa Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Pontšo ea GPS e fokola. E-ea kantle \'me u tobetse Leka hape.';

  @override
  String get qiblaRetry => 'Leka hape';

  @override
  String get qiblaTitle => 'Tataiso ea Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km ho ea Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Sebaka sea hlokahala';

  @override
  String get qiblaLocationNeededBody =>
      'Lumella phihlello ea sebaka hore Ayara e ka bala tataiso ea Kaaba e Makkah ho tloha moo u leng teng.';

  @override
  String get qiblaOpenSettings => 'Bula Litlhophiso';

  @override
  String get qiblaCompassLoading => 'E ntse e fumana sebaka sa hau…';

  @override
  String get qiblaTowardMecca => 'Ho lebisa Makkah';

  @override
  String get prayerTimesTitle => 'Linako tsa Thapelo';

  @override
  String get prayerTimesFajr => 'Fajr';

  @override
  String get prayerTimesDhuhr => 'Dhuhr';

  @override
  String get prayerTimesAsr => 'Asr';

  @override
  String get prayerTimesMaghrib => 'Maghrib';

  @override
  String get prayerTimesIsha => 'Isha';

  @override
  String get prayerTimesLocationNeededTitle => 'Sebaka sea hlokahala';

  @override
  String get prayerTimesLocationNeededBody =>
      'Lumella phihlello ea sebaka hore Ayara e ka bala linako tse nepahetseng tsa thapelo tsa toropo ea hao.';

  @override
  String get prayerTimesNextLabel => 'E latelang';

  @override
  String get prayerTimesDoneLabel => 'E phethiloe';

  @override
  String get monthlyPrayerTimesTitle => 'Linako tsa Thapelo tsa Khoeli';

  @override
  String get monthlyPrayerTimesViewButton => 'Bona Khoeli e Tletseng';

  @override
  String get monthlyPrayerTimesNextMonth => 'Khoeli e tlang';

  @override
  String get monthlyPrayerTimesDayHeader => 'Letsatsi';

  @override
  String get sharePrayerTimes => 'Arolelana linako tsa thapelo';

  @override
  String get notificationsSectionTitle => 'Litsebiso';

  @override
  String get notificationsSectionSubtitle =>
      'Likhopotso tsa thapelo, liketsahalo tsa khalendara le tse ling';

  @override
  String get dailyReflectionReminderTitle =>
      'Ho Nahana ha Letsatsi le Letsatsi';

  @override
  String get dailyReflectionReminderDescription =>
      'Khopotso e bonolo ea letsatsi le letsatsi ho bula Ayara le ho hokahana le tumelo ea hao.';

  @override
  String get dailyReflectionReminderEnable =>
      'Bulela khopotso ea letsatsi le letsatsi';

  @override
  String get dailyReflectionReminderTimeLabel => 'Nako ea khopotso';

  @override
  String get prayerNotificationsTitle => 'Likhopotso tsa Thapelo';

  @override
  String get prayerNotificationsDescription =>
      'Fumana khopotso e bonolo pele ho nako e \'ngoe le e \'ngoe ea thapelo ho u thusa ho lula u hokahane letsatsi lohle.';

  @override
  String get prayerNotificationsEnable => 'Bulela likhopotso tsa thapelo';

  @override
  String get prayerNotificationsOpenSettings =>
      'Bula litlhophiso tsa litsebiso';

  @override
  String get prayerNotificationsDenied => 'Litsebiso li koetsoe';

  @override
  String get prayerNotificationsDeniedHint =>
      'E-ea ho Litlhophiso \'me u lumelle litsebiso bakeng sa Ayara ho fumana likhopotso tsa linako tsa thapelo.';

  @override
  String get notificationsConsentLabel =>
      'Lumella litsebiso bakeng sa linako tsa thapelo';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Thapelo ea Hoseng';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr ke thapelo ea hoseng ea Ahl al-Bayt. Imam Ali (AS) o itse: Sireletsa thapelo ea hoseng joalo ka ha u sireletsa tšepo ea hau ea bohlokoahali. Tsoha, ipoloke u hloekile, \'me u eme ka pel\'a Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Thapelo ea Motšehare';

  @override
  String get prayerNotifBodyDhuhr =>
      'Ma-Imam a Ahl al-Bayt a ne a ananela motsotso o mong le o mong oa khopotso. Emisa letsatsi la hao hanyane, kopanya Dhuhr le Asr haeba ho hlokahala, \'me u khutlisetse pelo ea hao ho Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Thapelo ea Thapama';

  @override
  String get prayerNotifBodyAsr =>
      'Sireletsa thapelo, hobane ke selekane pakeng tsa hao le Allah. Nako ea Asr e fihlile — u se ke ua e lumella hore e fete ntle le khopotso.';

  @override
  String get prayerNotifTitleMaghrib =>
      '🌇 Maghrib — Thapelo ea Ha Letsatsi le Kena';

  @override
  String get prayerNotifBodyMaghrib =>
      'Letsatsi le liketse — motsotso oo Ahl al-Bayt a neng a o nka o halalela bakeng sa thapelo. Etsa Maghrib \'me u phahamise matsoho a hao ho Allah ka dua pele bosiu bo qala.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Thapelo ea Bosiu';

  @override
  String get prayerNotifBodyIsha =>
      'Qeta letsatsi la hao u le khamphaning ea Allah. Ma-Imam a khothalelitse Salat al-Layl ka mor\'a Isha — empa pele, phethela Isha ea hao \'me u koale letsatsi ka khopotso ea Hae.';

  @override
  String get outOfReflectionsBannerText =>
      'U se u sebelisitse menahano eohle ea hau';

  @override
  String get outOfReflectionsBannerCta => 'Fumana e meng';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tobetsa selikalikoe ho bala';

  @override
  String get dhikrResetButton => 'Seta hape';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'U phethile makhetlo a 100 a ho hopola Allah. A e be leseli la pelo ea hau.';

  @override
  String get disclaimerTitle => 'Mabapi le tataiso ea app ena';

  @override
  String get disclaimerBody =>
      'Ayara e fana ka menahano ea Boislamo, likhopotso le litaba tsa moea ho tšehetsa leeto la hau la tumelo, le thehiloeng ho Qur\'an le lithuto tsa Ahl al-Bayt. Litaba tsena li fanoa feela bakeng sa boitsebiso bo akaretsang le tšusumetso.\n\nAyara ha e nke sebaka sa bo-rasaense ba loketseng.\nTataiso e ka har\'a app ena ha se sebaka sa setsebi sa Boislamo, marja\', kapa tichere e koetlisitsoeng ka thuto ea bolumeli. Boislamong ba Shia, tataiso ea bolumeli e thehiloe sekolong sa molao sa Ja\'fari (fiqh) le moetlong oa ho latela Marja\' ea phelang (mohloli oa ho etsisa) — molao-motheo o loketseng ea tataisang balumeli litabeng tsa bolumeli. Haeba u na le lipotso mabapi le liqeto tsa bolumeli, litaba tsa halal le haram, kapa boikarabelo ba bolumeli ba motho ka mong, ka kopo batla keletso ho Marja\' ea loketseng kapa setsebi sa sechaba sa hao.\n\nApp ena ha e fane ka liqeto tsa bolumeli.\nAyara ha e etse liqeto tse nang le matla litabeng tsa fiqh kapa boikarabelo ba bolumeli ba motho. Ha ho letho mona le lokelang ho nkoa e le fatwa kapa taelo e tlamang ea bolumeli.\n\nBohlokoa ba Ahl al-Bayt.\nBoislamong ba Shia, Moprofeta Muhammad ﷺ le lelapa la hae le hloekisitsoeng — Ahl al-Bayt — ke baetapele ba nang le matla sechabeng sa Boislamo ka mor’a Qur\'an. Ma-Imam a leshome le metso e \'meli a Ahl al-Bayt ke batoloki ba khethiloeng ke Molimo ba lithuto tsa Boislamo. Litaba ka har’a app ena li bontša moetlo oo \'me li leka ho o hlompha ka bots\'epehi.\n\nLitaba tsa sechaba.\nApp ena e reretsoe ho khothatsa ho hokahana ha hao le tumelo, ha e ntse e hlompha ka botebo karolo ea bohlokoa ea mosque ea heno, setsi sa Boislamo le sechaba sa hao sa bolumeli. Re u khothalletsa hore u lule u hokahane \'me u ithute ho matichere a loketseng a haufi le uena.';

  @override
  String get disclaimerClose => 'Ke utloisisa';

  @override
  String get disclaimerInfoTooltip => 'Mabapi le tataiso ea app ena';

  @override
  String get disclaimerSettingsSubtitle =>
      'Bakeng sa boitsebiso bo akaretsang feela. Tobetsa ho bala temoso e felletseng.';

  @override
  String get disclaimerSectionHeader => 'Temoso ka tataiso';

  @override
  String get navHome => 'Lehae';

  @override
  String get navReflect => 'Nahana';

  @override
  String get navDuas => 'Dua';

  @override
  String get navCalendar => 'Khalendara';

  @override
  String get dashboardToday => 'LETSATSI LENA';

  @override
  String get dashboardComingUp => 'Tse tlang';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'matsatsi',
      one: 'letsatsi',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Phihlello e Potlakileng';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Tataiso';

  @override
  String get quickActionPrayerTimes => 'Linako tsa Thapelo';

  @override
  String get askAyaraTitle => 'Botsa Ayara';

  @override
  String get askAyaraSubtitle =>
      'Botsa potso efe kapa efe ea Boislamo \'me u fumane karabo e nahanisisitsoeng hantle e tataisang.';

  @override
  String get askAyaraHint => 'mohl. Bohlokoa ba Ramadan ke bofe?';

  @override
  String get askAyaraSubmit => 'Botsa';

  @override
  String get wisdomOfTheDayTitle => 'Bohlale ba Letsatsi';

  @override
  String get calendarScreenTitle => 'Khalendara ea Boislamo';

  @override
  String get calendarUpcomingOccasions => 'Liketsahalo Tse Tlang';

  @override
  String get calendarOccasionRemindersTitle => 'Likhopotso tsa Ketsahalo';

  @override
  String get calendarOccasionRemindersHint =>
      'Tsebiso mantsiboea pele ho ketsahalo e \'ngoe le e \'ngoe';

  @override
  String get calendarNotifPermissionDenied =>
      'Tumello ea litsebiso e hannoe. E bulele litlhophisong tsa sesebelisoa sa hao.';

  @override
  String get calendarNoEvents => 'Ha ho liketsahalo tse tlang tse fumanoeng.';

  @override
  String get calendarAddToPhone => 'Kenelisa ho Kalenda ea Mohala';

  @override
  String get calendarAddedToPhone => 'E kenelitsoe ho Kalenda';

  @override
  String get calendarCountdownToday => 'LETSATSI LENA';

  @override
  String get calendarCountdownTomorrow => 'HOSANE';

  @override
  String calendarCountdownDays(int days) {
    return 'matsatsing a $days';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Pherekhong';

  @override
  String get calendarMonthFeb => 'Hlakola';

  @override
  String get calendarMonthMar => 'Hlakubele';

  @override
  String get calendarMonthApr => 'Mmesa';

  @override
  String get calendarMonthMay => 'Mots\'eanong';

  @override
  String get calendarMonthJun => 'Phuptjane';

  @override
  String get calendarMonthJul => 'Phupu';

  @override
  String get calendarMonthAug => 'Phato';

  @override
  String get calendarMonthSep => 'Loetse';

  @override
  String get calendarMonthOct => 'Mphalane';

  @override
  String get calendarMonthNov => 'Pulungoana';

  @override
  String get calendarMonthDec => 'Tšitoe';

  @override
  String get calendarSeasonMuharramEarly =>
      'Matsatsi a Muharram — hopola Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — matsatsi a masoabi le ho nahanisisa';

  @override
  String get calendarSeasonArbaeen =>
      'Arbaeen — matsatsi a mashome a mane a Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Tsela e lebang Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — mafube a tšenolo';

  @override
  String get calendarSeasonMidShaban =>
      'Bohareng ba Sha\'ban — letsatsi la tsoalo la Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — khoeli ea Qur\'an';

  @override
  String get calendarSeasonGhadir => 'Eid al-Ghadir Mubarak!';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabi\' al-Awwal';

  @override
  String get hijriMonth4 => 'Rabi\' al-Thani';

  @override
  String get hijriMonth5 => 'Jumada al-Awwal';

  @override
  String get hijriMonth6 => 'Jumada al-Thani';

  @override
  String get hijriMonth7 => 'Rajab';

  @override
  String get hijriMonth8 => 'Sha\'ban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qi\'da';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Dua & Ziyarat';

  @override
  String get duasSearchHint => 'Batla dua, ziyarat…';

  @override
  String get duasFilterAll => 'Tsohle';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dua le ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Ha ho dua e fumanoeng.';

  @override
  String get duaCategoryDaily => 'Letsatsi le letsatsi';

  @override
  String get duaCategoryWeekly => 'Beke le beke';

  @override
  String get duaCategoryOccasions => 'Liketsahalo';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Tsoalo';

  @override
  String get eventTypeMartyrdom => 'Ho bolaoa tumelong';

  @override
  String get eventTypeOccasion => 'Ketsahalo';

  @override
  String get duaCopyTooltip => 'Kopitsa phetolelo';

  @override
  String get duaToggleTransliteration => 'Transliteration';

  @override
  String get duaToggleTranslation => 'Phetolelo';

  @override
  String get duaAskAiLabel => 'Kopa Ayara hore e hlalose dua ena';

  @override
  String get duaAskAiLockedLabel => 'Botsa Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Litlhaloso tsa Ayara li fumaneha ho litho tsa Wilaya. Ntlafatsa ho Litlhophiso.';

  @override
  String duaAiComingSoon(String name) {
    return 'Botsa Ayara ka \"$name\" — e tla haufinyane!';
  }

  @override
  String get duaCopiedToast => 'Dua e kopilitsoe ho clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah o Moholo ka ho Fetisisa';

  @override
  String get tasbihAlhamdulillahMeaning => 'Thoriso eohle ke ea Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Khanya e be ho Allah';

  @override
  String get tasbihResetTooltip => 'Seta hape';

  @override
  String get tasbihCompleteTitle => 'Tasbih e Phethiloe';

  @override
  String get tasbihCompleteMessage => 'Allah a amohele dhikr ea hao.';

  @override
  String get tasbihTapHint => 'Tobetsa kae kapa kae ho bala';

  @override
  String get tasbihatScreenTitle => 'Tataiso ea Thapelo';

  @override
  String get tasbihatScreenSubtitle => 'LITUMISO TSA THAPELO';

  @override
  String get tasbihatScreenDescription =>
      'Tataiso e felletseng ea litumiso tse recitoang nakong le ka mor’a lithapelo tsa letsatsi le letsatsi — ho latela moetlo oa Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'E recitoa rak\'ah ea 3 le ea 4';

  @override
  String get tasbihatArba3Info =>
      'Molaong oa Shia, Tasbiḥāt al-Arbaʿa e nka sebaka sa Surah al-Fatiha rak\'ah ea 3 le ea 4 ea Dhuhr, Asr, Maghrib le Isha. Ho tlamehile (wājib) hore e recitoe hang, ’me ho khothaletsoa (mustaḥabb) hore e recitoe hararo.';

  @override
  String get tasbihatArba3Translation =>
      'Khanya e be ho Allah · Thoriso eohle ke ea Allah\nHa ho molimo ntle le Allah · Allah o Moholo ka ho Fetisisa';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitation e phethiloe';

  @override
  String get tasbihatArba3CompleteMessage => 'Thapelo ea hau e amoheloe — Āmīn';

  @override
  String get tasbihatArba3TapHint =>
      'Tobetsa ka mor’a recitation e ’ngoe le e ’ngoe';

  @override
  String get tasbihatZahraSubtitle =>
      'Ka mor’a thapelo e ’ngoe le e ’ngoe · likhaba tse 100';

  @override
  String get tasbihatZahraOriginLabel => 'Tšimoloho';

  @override
  String get tasbihatZahraHadith =>
      'Mofumahali Fatima al-Zahra (sa) o ile a kopa Moprofeta ﷺ mosebeletsi. A re: \"Na nka se ke ka u tataisetsa ntho e molemo ho feta moo? Reca Subḥānallāh makhetlo a 33, Alḥamdulillāh makhetlo a 33, le Allāhu Akbar makhetlo a 34 ka mor’a thapelo e ’ngoe le e ’ngoe. Ho molemo ho uena ho feta mosebeletsi.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Moq. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Bula Sebali sa Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUĀS TSE KHOTHALLETSOANG';

  @override
  String get tasbihatDuasSubtitle => 'Ka mor’a ho qeta thapelo ea hao';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen =>
      'Ka mor’a thapelo e ’ngoe le e ’ngoe e tlamang';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Mang kapa mang ea recitang Āyat al-Kursī ka mor’a thapelo e ’ngoe le e ’ngoe e tlamang, ha ho letho le emeng pakeng tsa hae le paradeise ntle le lefu. Imam al-Bāqir (a) o itse ke e ’ngoe ea litemana tse khōlō ka ho fetisisa Qur’aneng.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Ka mor’a thapelo e ’ngoe le e ’ngoe · e tiisa dua tsohle';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Ho romela litlhohonolofatso ho Moprofeta ﷺ le lelapa la hae le hloekisitsoeng (Āl Muḥammad) ho khothaletsoa ho tiisa dua e ’ngoe le e ’ngoe. Imam al-Ṣādiq (a) o itse: \"Dua e ’ngoe le e ’ngoe e fanyehoa ho fihlela u romela ṣalawāt ho Muḥammad le lelapa la hae.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Ka mor’a thapelo e ’ngoe le e ’ngoe · bakeng sa Imam oa nako ea rona';

  @override
  String get tasbihatDuaFarajSource => 'E rutile Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua ea ho kopa ponahalo hape ha Imam al-Mahdī (af), Imam oa leshome le metso e \'meli, e rutiloeng ke ntat\'ae. E recitoa letsatsi le letsatsi ke ba tšepahalang ba Shia ka mor’a thapelo e ’ngoe le e ’ngoe e le pontšo ea boinehelo ho Imam ea phelang.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ ea Mofumahali Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Ka mor’a Maghrib le Isha · e khothaletsoa haholo';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) o itse ho recita Tasbīḥ al-Zahrā ka mor’a Isha pele o robala ho molemo ho feta raka\'ah tse 1000 tsa thapelo ea boikhethelo. Leseli la eona le nyolohela maholimong.';

  @override
  String get tasbihFatimaGiftPre => 'Mpho e tsoang ho Moprofeta';

  @override
  String get tasbihFatimaGiftPost =>
      'e recitoa ka mor’a thapelo e ’ngoe le e ’ngoe';

  @override
  String get prayerTrackerTitle => 'SEBELETSI SA THAPELO';

  @override
  String get prayerTrackerPrayed => 'E rapetsoe';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'matsatsi a $count ka tatellano';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Lithapelo tsohle tsa kajeno li phethiloe. Allah a amohele.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'E phethiloe kajeno';

  @override
  String get dhikrTrackerNotDoneToday => 'Ha ea etsoa kajeno';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'matsatsi a $count ka tatellano';
  }

  @override
  String get dhikrReminderTitle => 'Khopotso ea Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Khopotso e bonolo ea letsatsi le letsatsi ea ho recita Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Bulela khopotso ea Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Nako ea khopotso';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith ea Letsatsi';

  @override
  String get hadithLabelArabic => 'SEARABIA';

  @override
  String get hadithLabelTranslation => 'PHEtolelo';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Arolelana Hadith Ena';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nKa Ayara';
  }

  @override
  String get hadithNavPrevious => 'E fetileng';

  @override
  String get hadithNavNext => 'E latelang';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Ba Masumeen ba 14';

  @override
  String get imamsScreenSubtitle =>
      'Moprofeta, Mofumahali Fatima, le Ma-Imam a Leshome le Metso e Mebeli — baetapele ba sa foseng ba Boislamo';

  @override
  String get imamLabelBorn => 'O hlahetse';

  @override
  String get imamLabelMartyrdom => 'Bolaelo ba tumelo';

  @override
  String get imamLabelStatus => 'Boemo';

  @override
  String get imamSectionBiography => 'BIOGRAFI';

  @override
  String get imamSectionFamousSaying => 'POLELO E TSEJOANG';

  @override
  String get imamRoleProphet => 'Moprofeta oa ho qetela';

  @override
  String get imamRoleInfallible => 'Ea sa Foseng';

  @override
  String get imamOrdinal1 => 'Imam oa 1';

  @override
  String get imamOrdinal2 => 'Imam oa 2';

  @override
  String get imamOrdinal3 => 'Imam oa 3';

  @override
  String get imamOrdinal4 => 'Imam oa 4';

  @override
  String get imamOrdinal5 => 'Imam oa 5';

  @override
  String get imamOrdinal6 => 'Imam oa 6';

  @override
  String get imamOrdinal7 => 'Imam oa 7';

  @override
  String get imamOrdinal8 => 'Imam oa 8';

  @override
  String get imamOrdinal9 => 'Imam oa 9';

  @override
  String get imamOrdinal10 => 'Imam oa 10';

  @override
  String get imamOrdinal11 => 'Imam oa 11';

  @override
  String get imamOrdinal12 => 'Imam oa 12';

  @override
  String get duaAudioScreenTitle => 'Mamela Dua';

  @override
  String get duaAudioScreenSubtitle =>
      'Khetha dua eo u batlang ho e mamela. Tobetsa tile ho bapala kapa ho emisa hanyane.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio ea dua ena e tla fumaneha ntlafatsong e tlang.';

  @override
  String get duaAudioClose => 'Koala';

  @override
  String get duaAudioError =>
      'Ha hoa khoneha ho laela audio. Ka kopo hlahloba khokahano ea hao.';

  @override
  String get duaAudioMetaTransmittedBy => 'E fanoe ke';

  @override
  String get duaAudioMetaOccasion => 'Ketsahalo';

  @override
  String get duaAudioMetaDuration => 'Bolelele';

  @override
  String get quickActionDailyHadith => 'Hadith ea Letsatsi';

  @override
  String get quickAction14Masumeen => 'Masumeen ba 14';

  @override
  String get quickActionListenDuas => 'Mamela';

  @override
  String get quickActionTasbihat => 'Tataiso ea Thapelo';

  @override
  String get pilgrimageSectionTitle => 'Leeto le Halalelang';

  @override
  String get pilgrimageSectionSubtitle =>
      'Litataiso tse felletseng tsa Hajj le Umrah — leeto la ho ea Ntlong e Halalelang ea Allah e Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Pilara ea bohlano ea Boislamo';

  @override
  String get hajjCardDescription =>
      'Leeto le leholo la selemo le selemo — le tlamang hanngoe bophelong bakeng sa Momosleme e mong le e mong ea nang le bokhoni';

  @override
  String get hajjScreenTitle => 'Tataiso ea Hajj';

  @override
  String get hajjScreenSubtitle =>
      'Tataiso ea mohato ka mohato ea leeto le leholo';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Leeto le Nyenyane';

  @override
  String get umrahCardDescription =>
      'Leeto la moea le putsang haholo le ka etsoang neng kapa neng nakong ea selemo';

  @override
  String get umrahScreenTitle => 'Tataiso ea Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Tataiso ea mohato ka mohato ea leeto le nyenyane';

  @override
  String get pilgrimageStepsTitle => 'Mekhoa le Mehato';

  @override
  String get pilgrimageImportantNotesTitle => 'Lintlha tsa Bohlokoa';

  @override
  String get pilgrimageDuaTitle => 'Dua bakeng sa mohato ona';

  @override
  String get pilgrimageJafariNoteTitle => 'Tlhahisoleseling ea Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ E phethiloe';

  @override
  String get pilgrimageMarkDone => 'Tlhopha e felile';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done ho $total mehato';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes mets';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Bahajjaji ba Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Bahajjaji ba Shia ka moetlo ba boela ba etela Medina ho etela lebitla la Moprofeta Muhammad ﷺ Masjid al-Nabawi, le mabitla a Ma-Imam Jannat al-Baqi. Maeto ana a na le bohlokoa bo boholo ba moea \'me a nkoa e le karolo ea bohlokoa ea leeto bakeng sa ba bangata ba Shia.';

  @override
  String get hajjIntro =>
      'Hajj ke pilara ea bohlano ea Boislamo, e tlamang hanngoe bophelong bakeng sa Momosleme e mong le e mong ea nang le bokhoni ba \'mele le lichelete. E etsoa khoeling ea Dhul Hijjah \'me e latela mehato ea Moprofeta Ibrahim (AS), mora oa hae Ismail (AS), le Mofumahali Hajar. Bakeng sa Mamoseleme a Shia, Hajj e boela e kenyelletsa tlhohonolofatso e tebileng ea ho etela libaka tsa phomolo tsa Moprofeta ﷺ le Ahlul Bayt Medina.';

  @override
  String get umrahIntro =>
      'Umrah ke leeto le lenyenyane la ho ea Mecca \'me, ho fapana le Hajj, le ka etsoa neng kapa neng ka selemo. Leha le sa tlamahale, le na le moputso o moholo oa moea \'me le nkoa e le ketso ea borapeli e khothaletsoang haholo. Le arolelana mekhoa e meng le Hajj empa le le khuts\'oane, le entsoe ka liketso tse \'nè tse kholo.';
}
