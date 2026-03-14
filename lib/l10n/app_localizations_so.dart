// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Somali (`so`).
class AppLocalizationsSo extends AppLocalizations {
  AppLocalizationsSo([String locale = 'so']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Dooro luqaddaada';

  @override
  String get languageSelectSub => 'Waxaad tan dambe ka beddeli kartaa Settings';

  @override
  String get actionContinue => 'Sii wad';

  @override
  String get languageSuggestedHeader => 'La soo jeediyey';

  @override
  String get languageAllHeader => 'Dhammaan luqadaha';

  @override
  String get languageSuggestedBadge => 'La soo jeediyey';

  @override
  String get languageSearchHint => 'Raadi…';

  @override
  String get planBasic => 'Caadi';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Hagid Maalinle ah';

  @override
  String get categorySlot02 => 'Iimaan iyo Kalsooni';

  @override
  String get categorySlot03 => 'Milicsiga Salaadda';

  @override
  String get categorySlot04 => 'Samir iyo Rajo';

  @override
  String get categorySlot05 => 'Dambi Dhaaf Dalbo';

  @override
  String get categorySlot06 => 'Naxariis iyo Daryeel';

  @override
  String get categorySlot07 => 'Xoogga Iimaanka';

  @override
  String get categorySlot08 => 'Qalbi Mahadnaq leh';

  @override
  String get categorySlot09 => 'Ujeeddada Nolosha';

  @override
  String get categorySlot10 => 'Xiriirka Qoyska';

  @override
  String get categorySlot11 => 'Degganaanshaha Gudaha';

  @override
  String get categorySlot12 => 'Xikmadda Nebiga';

  @override
  String get categorySlot13 => 'Akhlaaq Wanaagsan';

  @override
  String get categorySlot14 => 'Ka Hortag Fitnada';

  @override
  String get categorySlot15 => 'Dikri Fiidkii';

  @override
  String get categoryCustom => 'Milicsi Gaar ah';

  @override
  String get dhikrMeaningSubhanallah => 'Alle waa ka nasahan yahay ceeb kasta';

  @override
  String get dhikrMeaningAlhamdulillah => 'Mahad oo dhan Alle ayay u sugnaatay';

  @override
  String get dhikrMeaningAllahuAkbar => 'Alle ayaa ugu weyn';

  @override
  String get quranVerseHeartAtRest =>
      'Hubaal, qalbiyadu xuska Alle ayay ku xasilloonaan.';

  @override
  String get promptHint =>
      'Taabo qayb si aad u hesho hagid Islaami ah iyo milicsi';

  @override
  String get currentLanguage => 'Luqadda hadda jirta';

  @override
  String get settingsLanguage => 'Dejinta luqadda';

  @override
  String get settingsTitle => 'Dejinta';

  @override
  String get chooseLanguage => 'Dooro luqaddaada';

  @override
  String get continueCta => 'Sii wad';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count eray',
      one: '$count eray',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Ikhtiyaarro';

  @override
  String get newCta => 'Cusub';

  @override
  String get actionsTitle => 'Maxaad jeclaan lahayd inaad samayso?';

  @override
  String get copy => 'Nuqul ka samee';

  @override
  String get share => 'La wadaag';

  @override
  String get close => 'Xir';

  @override
  String get copiedToast => 'Waxaa lagu koobiyeeyay clipboard-ka';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Lama samayn karin jawaab cusub';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nMa rabtaa inaad mar kale isku daydo?';
  }

  @override
  String get cancelCta => 'Jooji';

  @override
  String get retryCta => 'Mar kale isku day';

  @override
  String get authTitle => 'Samee akoonkaaga';

  @override
  String get continueAsGuest => 'U sii wad marti ahaan';

  @override
  String get signInGoogle => 'Ku gal Google';

  @override
  String get signInApple => 'Ku gal Apple';

  @override
  String get signInEmail => 'Ku gal Email';

  @override
  String get upgradeWithApple => 'Sii wad Apple';

  @override
  String get mustAccept =>
      'Waa inaad aqbashaa Shuruudaha Adeegga oo aad qirataa Siyaasadda Asturnaanta.';

  @override
  String get termsLabel => 'Waxaan aqbalay Shuruudaha Adeegga';

  @override
  String get privacyLabel => 'Waxaan akhriyey Siyaasadda Asturnaanta';

  @override
  String get marketingOptIn => 'Waxaan oggolahay inaan helo warar iyo dalabyo';

  @override
  String get openTerms => 'Shuruudaha Adeegga';

  @override
  String get openPrivacy => 'Siyaasadda Asturnaanta';

  @override
  String get accountSection => 'Akoon';

  @override
  String get guestMode => 'Habka martida';

  @override
  String get signedIn => 'Waad gashay';

  @override
  String get upgradeHint =>
      'Ku kaydi milicsiyadaada dhammaan qalabka adigoo samaynaya akoon.';

  @override
  String get upgradeWithGoogle => 'Sii wad Google';

  @override
  String get signOut => 'Ka bax';

  @override
  String get snackUpgraded => 'Akoonka waxaa lagu dallacsiiyey Google ✅';

  @override
  String get snackSignedIn => 'Waxaad ku gashay Google ✅';

  @override
  String get snackSignedOut => 'Waad baxday';

  @override
  String get snackSignedInApple => 'Waxaad ku gashay Apple ✅';

  @override
  String get snackSignedInGoogle => 'Waxaad ku gashay Google ✅';

  @override
  String get snackUpgradedApple => 'Akoonka waxaa lagu dallacsiiyey Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Akoonka waxaa lagu dallacsiiyey Google ✅';

  @override
  String get historyTitle => 'Milicsiyadii hore';

  @override
  String get historyOpenCta => 'Milicsiyadii hore';

  @override
  String get historyEmpty => 'Weli ma jiraan milicsiyo la kaydiyey.';

  @override
  String get historyDeleteTitle => 'Milicsigan ma tirtirtaa?';

  @override
  String get historyDeleteBody =>
      'Tani waxay si joogto ah u tirtiraysaa shayga la doortay.';

  @override
  String get deleteCta => 'Tirtir';

  @override
  String get historyButton => 'Milicsiyadii Hore';

  @override
  String get historyEmptyTitle => 'Weli ma jiraan milicsiyo';

  @override
  String get historyEmptyBody =>
      'Marka hore wax samee — waxyaabaha aad kaydisay waxay ka soo muuqan doonaan halkan.';

  @override
  String get historyDelete => 'Tirtir';

  @override
  String get footerTitle => 'Wilaya, Iimaan iyo Sabr';

  @override
  String get footerSubtitle => 'Hal duco mar kasta';

  @override
  String get genericErrorSnack =>
      'Waxbaa khaldamay — fadlan wax yar ka dib mar kale isku day.';

  @override
  String get upgradeAccountCta =>
      'Ku kaydi milicsiyadaada dhammaan qalabka – samee akoon';

  @override
  String get deleteAccount => 'Tirtir akoonka';

  @override
  String get exportData => 'Dhoofso xogtayda';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Deji yara 🐯\nAyara waxay u baahan tahay daqiiqad ka hor tan xigta…';

  @override
  String get rateDailyLimit =>
      'Milicsiyadaadii hadda way dhammaadeen.\nHel milicsiyo badan ama u dallacso Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Waxaad isticmaashay dhammaan milicsiyadaada.\nKu shub dheeraad ama u dallacso Wilaya si aad u sii waddo.';

  @override
  String get rateGraceCreditsExhausted =>
      'Milicsiyadaadii hadda way dhammaadeen.\nHel milicsiyo badan ama u dallacso Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya waxay furaysaa astaamo premium ah, qaybo mustaqbalka ah, iyo calaamad gaar ah.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Milicsiyadaadu hadda waa madhan yihiin. Qorshaha: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Lama hubin karin milicsiyadaada: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Waxbaa qaldamay intii la hubinayey milicsiyadaada.';

  @override
  String get aiFallbackGeneric =>
      'Waxbaa khaldamay — fadlan wax yar ka dib mar kale isku day.';

  @override
  String get limitSectionTitle => 'Milicsiyo';

  @override
  String get limitTodayLabel => 'Isticmaalka';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Milicsiyada hadhay: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Qorshaha: $plan';
  }

  @override
  String get limitLoadingLabel => 'Waa la soo rarayaa…';

  @override
  String get limitLoadingLabelDescription =>
      'Waxa lagu muujiyaa kaarka milicsiyada inta la soo qaadayo tirakoobka isticmaalka.';

  @override
  String get aiLimitTitle => 'Milicsiyo';

  @override
  String get aiLimitSubtitle =>
      'Jawaab kastaa waxay isticmaashaa 1 milicsi. Qorshaha caadiga ahi wuxuu leeyahay milicsiyo bilow ah. Wilaya waxay furaysaa qaybo premium ah waxayna suuragelisaa in lagu shubto dheeraad.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total milicsiyo ayaa la isticmaalay';
  }

  @override
  String get creditsSectionTitle => 'Milicsiyo';

  @override
  String get creditsUsageLabel => 'Isticmaalka';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Milicsiyada hadhay: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Qorshaha: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Waa la soo rarayaa…';

  @override
  String get creditsLoadingLabelDescription =>
      'Waxa la muujiyaa inta la soo qaadayo tirakoobka milicsiyada.';

  @override
  String get creditsTitle => 'Milicsiyo';

  @override
  String get creditsSubtitle =>
      'Jawaab kastaa waxay isticmaashaa 1 milicsi. Qorshaha caadiga ahi wuxuu leeyahay milicsiyo bilow ah. Wilaya waxay furaysaa qaybo premium ah waxayna suuragelisaa in lagu shubto dheeraad.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total milicsiyo ayaa la isticmaalay';
  }

  @override
  String get settingsDeleteTitle => 'Tirtir akoonka';

  @override
  String get settingsDeleteDescription =>
      'Si joogto ah u tirtir akoonkaaga iyo dhammaan xogta la xiriirta.';

  @override
  String get settingsDeleteButtonLabel => 'Tirtir akoonkayga';

  @override
  String get settingsDeleteDialogTitle => 'Akoonka ma tirtiraysaa?';

  @override
  String get settingsDeleteDialogBody =>
      'Tallaabadani waa joogto oo dib looma celin karo.\n\nDhammaan sheekooyinkaaga, taariikhdaada iyo macluumaadka akoonkaaga waa la tirtiri doonaa.';

  @override
  String get settingsDeleteDialogCancel => 'Jooji';

  @override
  String get settingsDeleteDialogConfirm => 'Tirtir';

  @override
  String get settingsFreeLimitUsedTitle =>
      'Milicsiyadii bilowga waa la isticmaalay';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Milicsiyadii bilowga ee qalabkan waa la isticmaalay. U dallacso Wilaya ama iibso milicsiyo dheeraad ah si aad u sii waddo.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Milicsiyadii bilowga waa la isticmaalay';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Milicsiyadii bilowga ee qalabkan waa la isticmaalay. U dallacso Wilaya ama iibso milicsiyo dheeraad ah si aad u sii waddo.';

  @override
  String get deviceBoundError =>
      'Qalabkan hore ayaa loogu xidhay akoon kale. Fadlan ku gal akoonkii asalka ahaa.';

  @override
  String get premiumTitle => 'Habka Wilaya';

  @override
  String get premiumSubtitleBasic => 'Fur khibradda buuxda ee Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Waxaad ku jirtaa Wilaya. Ma u baahan tahay milicsiyo dheeraad ah?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Qorshaha hadda: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Milicsiyo: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Iibsigu hadda ma jiro.';

  @override
  String get premiumSignInToPurchase =>
      'Soo gal si aad u iibsato milicsiyo ama u furto Wilaya.';

  @override
  String get premiumRestorePurchases => 'Soo celi iibsiyada';

  @override
  String get premiumProcessing => 'Waa la farsamaynayaa…';

  @override
  String get premiumRestoreHintTitle =>
      'Horay ma ugu soo iibsatay Wilaya ama milicsiyo qalabkan ama mid kale?';

  @override
  String get premiumRestoreHintBody =>
      'Soo celi iibsiyadaada haddii aanay muuqan.';

  @override
  String get premiumBuyCredits200 => 'Iibso 200 milicsi';

  @override
  String get premiumBuyCredits400 => 'Iibso 400 milicsi';

  @override
  String get premiumBecomePremiumOneTime => 'U dallacso habka Wilaya';

  @override
  String get premiumTopupHint =>
      'Wilaya waxay kuu oggolaanaysaa inaad ku shubato milicsiyo dheeraad ah mar kasta oo aad u baahato.';

  @override
  String get premiumUpgradeCta => 'Dallacsiin';

  @override
  String get premiumRequiredForCategory =>
      'Qaybtan waxaa heli kara oo keliya isticmaalayaasha Wilaya. U dallacso gudaha Settings si aad u furto dhammaan waxyaabaha premium-ka ah.';

  @override
  String get premiumBenefitsBasic =>
      'Fur Wilaya si aad u hesho milicsiyo dheeraad ah, qaybo premium ah, oo aad u sii waddo mar kasta oo aad hagid u baahato.';

  @override
  String get premiumBenefitsPremium =>
      'Waxaad ku jirtaa habka Wilaya. Haddii milicsiyadaadu sii yaraanayaan, ku dar xoogaa dheeraad ah oo sii wad adoon kala go\' lahayn.';

  @override
  String get premiumButtonBecomePremium => 'Fur Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Ku dar 1000 milicsi';

  @override
  String get premiumBadge => 'Wilaya waa firfircoon tahay';

  @override
  String get premiumLoadingStore => 'Store-ka waa la soo rarayaa…';

  @override
  String get premiumProductNotAvailable =>
      'Alaabtani wali kama jirto store-ka. Fadlan mar kale isku day dambe.';

  @override
  String get premiumPurchaseError =>
      'Waxbaa khaldamay intii la iibsanayey. Fadlan mar kale isku day.';

  @override
  String get premiumBuyCredits100 => 'Ku dar 100 milicsi';

  @override
  String get premiumFeatureLocked => 'Fur Wilaya si aad u gasho muuqaalkaan.';

  @override
  String get lockedCategoriesHint =>
      'Qaybo qaar waxaa gaar u ah xubnaha Wilaya. Fur si aad u sahamiso milicsi kasta safarkaaga.';

  @override
  String get freePlanBlockedTitle =>
      'Waxaad isticmaashay milicsiyadii bilowga ahaa';

  @override
  String get freePlanBlockedBody =>
      'Waxaad ku jirtaa qorshaha Standard oo leh milicsiyo bilow ah, waxaadna gaartay xadka. Si aad u sii waddo — oo aad u furto qaybo premium ah — u dallacso Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Hoos ka eeg xulashooyinka Wilaya';

  @override
  String get graceBlockedTitle =>
      'Waxaad isticmaashay milicsiyadii bilowga ahaa';

  @override
  String get graceBlockedBody =>
      'Waxaad ku jirtaa qorshaha Standard oo leh milicsiyo bilow ah, waxaadna gaartay xadka. Si aad u sii waddo — oo aad u furto qaybo premium ah — u dallacso Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Hoos ka eeg xulashooyinka Wilaya';

  @override
  String get rateGuestMustSignIn =>
      'Soo gal si aad u isticmaasho Ayara iyo milicsiyadaada.';

  @override
  String get guestNoCreditsTitle => 'Habka martida';

  @override
  String get guestNoCreditsBody =>
      'Marti ahaan waxaad daalacan kartaa app-ka, laakiin ma isticmaali kartid milicsiyada. Goor dambe gudaha Settings ka gal si aad u isticmaasho milicsiyada oo aad u furto iibsiyada.';

  @override
  String get guestDialogContinue => 'Sii wad';

  @override
  String get guestDialogLoginInstead => 'Balse soo gal';

  @override
  String get optionalLabel => 'ikhtiyaari';

  @override
  String get accountDeleteSuccessTitle => 'Akoonka waa la tirtiray';

  @override
  String get accountDeleteSuccessBody =>
      'Akoonkaaga iyo xogta la xiriirta si guul leh ayaa loo tirtiray.';

  @override
  String get accountDeleteSuccessClose => 'Xir';

  @override
  String get accountDeleteErrorTitle => 'Lama tirtiri karin akoonka';

  @override
  String get accountDeleteErrorClose => 'Haye';

  @override
  String get accountDeleteReauthCancelled =>
      'Dib-u-xaqiijintii waa la joojiyey. Fadlan mar kale soo gal oo dib u isku day tirtirka.';

  @override
  String get accountDeleteReauthRequired =>
      'Tirtirka akoontu wuxuu u baahan yahay gelitaan dhowaan la sameeyey. Fadlan ka bax, mar kale soo gal, dabadeed dib u isku day.';

  @override
  String get settingsDeletePermanentWarning =>
      'Tallaabadani waa joogto oo dib looma celin karo. Dhammaan xogta la xiriirta akoonkaaga waa la tirtiri doonaa.';

  @override
  String get dailyGraceTitle => 'Hagid Maalinle ah';

  @override
  String get dailyGraceScriptureLabel => 'AAYADDA MAANTA';

  @override
  String get dailyGraceSaintLabel => 'SHAKHSIGA TODDOBAADKA';

  @override
  String get dailyGraceReflectionLabel => 'MILICSIGA FIIDKII';

  @override
  String get dailyGraceCopiedToast =>
      'Aayadda waxaa lagu koobiyeeyey clipboard-ka';

  @override
  String get locationConsentLabel =>
      'U oggolow Ayara inay isticmaasho meesha aan joogo si loo helo jihada Qibla iyo waqtiyada salaadda';

  @override
  String get locationConsentHint =>
      'Waxaa loo isticmaalaa oo keliya sifooyinkan. Goobtaada lama wadaago lamana kaydiyo.';

  @override
  String get permissionsSectionTitle => 'Permissions';

  @override
  String get permissionsSectionSubtitle =>
      'Microphone, location, calendar and other device access used by Ayara';

  @override
  String get permissionsNotificationsTitle => 'Notifications';

  @override
  String get permissionsNotificationsSubtitle =>
      'Needed if you want prayer reminders, dhikr reminders, daily reflections and calendar reminders.';

  @override
  String get permissionsLocationTitle => 'Location';

  @override
  String get permissionsLocationSubtitle =>
      'Used for the Qibla compass and accurate prayer times based on where you are. Your location is never shared or stored.';

  @override
  String get permissionsLocationDenied => 'Location access is disabled.';

  @override
  String get permissionsCalendarTitle => 'Phone Calendar';

  @override
  String get permissionsCalendarSubtitle =>
      'Used when you choose to add an Islamic occasion to your phone calendar. Your device may ask for access then.';

  @override
  String get permissionsStatusWhenNeeded => 'When needed';

  @override
  String get askPageTitle => 'Weydii Ayara';

  @override
  String get askPageDescription =>
      'Weydii wax kasta oo ku saabsan iimaan, salaad, nolol, ama ku dhaqanka Islaamka oo hel hagid ku salaysan Qur’aanka iyo waxbarista Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Halkan ku qor su’aashaada…';

  @override
  String get askPageSubmitCta => 'Weydii';

  @override
  String get askPageInputEmptyError => 'Fadlan marka hore qor su’aal.';

  @override
  String get askResultYourQuestion => 'Su’aashaada';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'U jeedda Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Wareeji taleefankaaga ilaa irbadda dahabka ahi kor u jeeddo.\nJihadaas ayaa tilmaamaysa Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Calaamadda GPS-ku waa daciif. Dibedda u bax oo taabo Mar kale isku day.';

  @override
  String get qiblaRetry => 'Mar kale isku day';

  @override
  String get qiblaTitle => 'Jihada Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km ilaa Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Meesha ayaa loo baahan yahay';

  @override
  String get qiblaLocationNeededBody =>
      'U oggolow goobta si Ayara ay u xisaabiso jihada Kacbada ee Makkah meel kasta oo aad joogto.';

  @override
  String get qiblaOpenSettings => 'Fur Settings';

  @override
  String get qiblaCompassLoading => 'Waxa la raadinayaa meesha aad joogto…';

  @override
  String get qiblaTowardMecca => 'Dhanka Makkah';

  @override
  String get prayerTimesTitle => 'Waqtiyada salaadda';

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
  String get prayerTimesLocationNeededTitle => 'Meesha ayaa loo baahan yahay';

  @override
  String get prayerTimesLocationNeededBody =>
      'U oggolow goobta si Ayara ay u xisaabiso waqtiyada salaadda ee saxda ah ee magaaladaada.';

  @override
  String get prayerTimesNextLabel => 'Kan xiga';

  @override
  String get prayerTimesDoneLabel => 'Dhammaatay';

  @override
  String get monthlyPrayerTimesTitle => 'Waqtiyada salaadda ee bisha';

  @override
  String get monthlyPrayerTimesViewButton => 'Daawo bisha oo dhan';

  @override
  String get monthlyPrayerTimesNextMonth => 'Bisha xigta';

  @override
  String get monthlyPrayerTimesDayHeader => 'Maalin';

  @override
  String get sharePrayerTimes => 'La wadaag waqtiyada salaadda';

  @override
  String get notificationsSectionTitle => 'Ogeysiisyada';

  @override
  String get notificationsSectionSubtitle =>
      'Xusuusin salaadeed, dhacdooyin kalandarka & wax kale';

  @override
  String get dailyReflectionReminderTitle => 'Xusuusin Milicsi Maalinle ah';

  @override
  String get dailyReflectionReminderDescription =>
      'Xusuusin maalinle ah oo deggan si aad u furto Ayara oo aad ula xiriirto iimaankaaga.';

  @override
  String get dailyReflectionReminderEnable => 'Daar xusuusinta maalinlaha ah';

  @override
  String get dailyReflectionReminderTimeLabel => 'Waqtiga xusuusinta';

  @override
  String get prayerNotificationsTitle => 'Xusuusinta Salaadda';

  @override
  String get prayerNotificationsDescription =>
      'Hel xusuusin deggan ka hor salaad kasta si aad maalinta oo dhan ugu xirnaato.';

  @override
  String get prayerNotificationsEnable => 'Daar xusuusinta salaadda';

  @override
  String get prayerNotificationsOpenSettings => 'Fur dejinta ogeysiisyada';

  @override
  String get prayerNotificationsDenied => 'Ogeysiisyadu waa dansan yihiin';

  @override
  String get prayerNotificationsDeniedHint =>
      'Tag Settings oo u oggolow ogeysiisyada Ayara si aad u hesho xusuusinta waqtiyada salaadda.';

  @override
  String get notificationsConsentLabel =>
      'U oggolow ogeysiisyada waqtiyada salaadda';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Salaadda Waaberiga';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr waa salaadda subaxa ee Ahl al-Bayt. Imam Ali (AS) wuxuu yiri: Ilaaliya salaadda waaberiga sida aad u ilaalisaan ammaanadiinna ugu qaalisan. Kaca, isdaahiriya, una istaaga Alle hortiisa.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Salaadda Duhurka';

  @override
  String get prayerNotifBodyDhuhr =>
      'Imamyada Ahl al-Bayt waxay qiimeyn jireen daqiiqad kasta oo xus ah. Hakad geli maalintaada, isku dar Dhuhr iyo Asr haddii loo baahdo, qalbigaagana dib ugu celi Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Salaadda Galabtii';

  @override
  String get prayerNotifBodyAsr =>
      'Ilaali salaadda, waayo waa axdiga adiga iyo Allah idin dhex yaal. Waqtiga Asr ayaa yimid — ha u oggolaan inuu dhaafo adoon xusin Allah.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Salaadda Qorrax-dhaca';

  @override
  String get prayerNotifBodyMaghrib =>
      'Qorraxdu way dhacday — waqti Ahl al-Bayt u aqoonsan jireen mid barakaysan oo dua ah. Tuko Maghrib oo gacmahaaga u taag Allah dua ahaan ka hor intaan habeenku bilaaban.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Salaadda Habeenka';

  @override
  String get prayerNotifBodyIsha =>
      'Ku soo afjar maalintaada wehelnimada Allah. Imamyadu waxay ku dhiirrigelin jireen Salat al-Layl ka dib Isha — balse marka hore dhammee Ishaada oo maalinta ku xidh xuskiisa.';

  @override
  String get outOfReflectionsBannerText =>
      'Waxaad isticmaashay dhammaan milicsiyadaada';

  @override
  String get outOfReflectionsBannerCta => 'Hel dheeraad';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Taabo goobada si aad u tiriso';

  @override
  String get dhikrResetButton => 'Dib u bilow';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Waxaad dhamaysay 100 xus oo Allah ah. Ha noqdaan iftiin qalbigaaga u ah.';

  @override
  String get disclaimerTitle => 'Ku saabsan hagidda app-kan';

  @override
  String get disclaimerBody =>
      'Ayara waxay bixisaa milicsiyo Islaami ah, xusuusin, iyo waxyaabo ruuxi ah si ay u taageerto safarkaaga gaarka ah ee iimaanka, iyadoo ku salaysan Qur’aanka iyo waxbarista Ahl al-Bayt. Waxyaabahani waxaa loo bixiyaa ujeeddooyin guud oo macluumaad iyo dhiirrigelin ah oo keliya.\n\nAyara ma beddelayso culimada aqoonta leh.\nHagidda ku jirta app-kan ma aha beddelka caalim Islaami ah oo aqoon leh, marja\', ama macallin ku tababaran culuumta diinta. Diinta Shiicada, hagidda diintu waxay ku dhisan tahay madhabka Ja\'fari ee fiqiga iyo dhaqanka raacitaanka Marja\' nool — faqih aqoon leh oo xukunnadiisu hagaan mu\'miniinta xagga ku dhaqanka diinta. Haddii aad qabto su\'aalo ku saabsan axkaamta diinta, arrimaha xalaasha iyo xaaraanta, ama waajibaadkaaga diineed, fadlan la tasho Marja\' aqoon leh ama caalim ku sugan bulshadaada.\n\nApp-kan ma bixiyo axkaam diineed.\nAyara ma sameyso go\'aanno rasmi ah oo ku saabsan fiqiga ama waajibaadka diinta ee shaqsiga. Wax kasta oo halkan ku jira looma qaadan karo fatwo ama amar diineed oo waajib ah.\n\nMuhiimadda Ahl al-Bayt.\nDiinta Shiicada, Nebi Muxammad ﷺ iyo qoyskiisa daahirka ah — Ahl al-Bayt — waa hagayaasha la aamini karo ee ummadda Islaamka ka dib Qur’aanka. Laba iyo tobanka Imam ee Ahl al-Bayt waa mufassiriinta Ilaahay u doortay ee waxbarista Islaamka. Waxyaabaha ku jira app-kan waxay ka tarjumayaan dhaqankan waxayna isku dayayaan inay si aaminnimo leh u xurmeeyaan.\n\nArrimaha bulshada.\nApp-kan wuxuu doonayaa inuu kugu dhiirrigeliyo inaad ku xirnaato iimaankaaga, isagoo si qoto dheer u qadarinaya doorka muhiimka ah ee masjidkaaga, xarunta Islaamka, iyo bulshadaada diineed. Waxaan kugu dhiirrigelinaynaa inaad la xirnaato oo aad wax ka barato macallimiin aqoon leh oo kuu dhow.';

  @override
  String get disclaimerClose => 'Waan fahmay';

  @override
  String get disclaimerInfoTooltip => 'Ku saabsan hagidda app-kan';

  @override
  String get disclaimerSettingsSubtitle =>
      'Ujeeddooyin macluumaad guud ah oo keliya. Taabo si aad u akhrido faahfaahinta oo dhan.';

  @override
  String get disclaimerSectionHeader => 'Faahfaahin hagid';

  @override
  String get navHome => 'Bogga Hore';

  @override
  String get navReflect => 'Milicso';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get dashboardToday => 'MAANTA';

  @override
  String get dashboardComingUp => 'Soo socda';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'maalmo',
      one: 'maalin',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Gelitaan Degdeg ah';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Hagid';

  @override
  String get quickActionPrayerTimes => 'Waqtiyada Salaadda';

  @override
  String get askAyaraTitle => 'Weydii Ayara';

  @override
  String get askAyaraSubtitle =>
      'Weydii su’aal kasta oo Islaami ah oo hel jawaab xeel dheer oo hagid leh.';

  @override
  String get askAyaraHint => 'tusaale: Waa maxay muhiimadda Ramadan?';

  @override
  String get askAyaraSubmit => 'Weydii';

  @override
  String get wisdomOfTheDayTitle => 'Xikmadda Maanta';

  @override
  String get calendarScreenTitle => 'Kalenderka Islaamka';

  @override
  String get calendarUpcomingOccasions => 'Munaasabadaha Soo Socda';

  @override
  String get calendarOccasionRemindersTitle => 'Xusuusinta Munaasabadaha';

  @override
  String get calendarOccasionRemindersHint =>
      'Waxaa lagu wargelinayaa fiidka ka hor munaasabad kasta';

  @override
  String get calendarNotifPermissionDenied =>
      'Oggolaanshaha ogeysiisyada waa la diiday. Ka daar dejinta qalabkaaga.';

  @override
  String get calendarNoEvents => 'Lama helin dhacdooyin soo socda.';

  @override
  String get calendarAddToPhone => 'Ku dar Taariikhda Taleefanka';

  @override
  String get calendarAddedToPhone => 'Ku daray Taariikhda';

  @override
  String get calendarCountdownToday => 'MAANTA';

  @override
  String get calendarCountdownTomorrow => 'BERRI';

  @override
  String calendarCountdownDays(int days) {
    return '$days maalmood gudahood';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Abr';

  @override
  String get calendarMonthMay => 'May';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Lul';

  @override
  String get calendarMonthAug => 'Ago';

  @override
  String get calendarMonthSep => 'Seb';

  @override
  String get calendarMonthOct => 'Oct';

  @override
  String get calendarMonthNov => 'Nof';

  @override
  String get calendarMonthDec => 'Dis';

  @override
  String get calendarSeasonMuharramEarly =>
      'Maalmaha Muharram — xusuuso Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — maalmo murugo iyo milicsi leh';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — afartan maalmood ee Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Jidka Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — bilowga waxyiga';

  @override
  String get calendarSeasonMidShaban =>
      'Bartamaha Sha\'ban — dhalashada Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — bisha Qur’aanka';

  @override
  String get calendarSeasonGhadir => 'Ciid al-Ghadir Mubarak!';

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
  String get duasScreenTitle => 'Duas & Ziyarat';

  @override
  String get duasSearchHint => 'Raadi duas, ziyarat…';

  @override
  String get duasFilterAll => 'Dhammaan';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas & ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Lama helin duas.';

  @override
  String get duaCategoryDaily => 'Maalinle';

  @override
  String get duaCategoryWeekly => 'Toddobaadle';

  @override
  String get duaCategoryOccasions => 'Munaasabadaha';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Dhalasho';

  @override
  String get eventTypeMartyrdom => 'Shahaado';

  @override
  String get eventTypeOccasion => 'Munaasabad';

  @override
  String get duaCopyTooltip => 'Koobiyeey turjumaadda';

  @override
  String get duaToggleTransliteration => 'Qoraal dhawaaqeed';

  @override
  String get duaToggleTranslation => 'Turjumaad';

  @override
  String get duaAskAiLabel => 'Weydii Ayara inay sharaxdo dua-kan';

  @override
  String get duaAskAiLockedLabel => 'Weydii Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Sharaxaadaha Ayara waxaa heli kara xubnaha Wilaya oo keliya. Ku dallacsi gudaha Settings.';

  @override
  String duaAiComingSoon(String name) {
    return 'Weydii Ayara wax ku saabsan \"$name\" — dhawaan!';
  }

  @override
  String get duaCopiedToast => 'Dua-ga waxaa lagu koobiyeeyay clipboard-ka.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Alle ayaa ugu weyn';

  @override
  String get tasbihAlhamdulillahMeaning =>
      'Mahad oo dhan Alle ayay u sugnaatay';

  @override
  String get tasbihSubhanallahMeaning => 'Alle waa ka nasahan yahay ceeb kasta';

  @override
  String get tasbihResetTooltip => 'Dib u billow';

  @override
  String get tasbihCompleteTitle => 'Tasbih Waa Dhammaatay';

  @override
  String get tasbihCompleteMessage => 'Allah ha aqbalo dikrigaaga.';

  @override
  String get tasbihTapHint => 'Taabo meel kasta si aad u tiriso';

  @override
  String get tasbihatScreenTitle => 'Hagaha Salaadda';

  @override
  String get tasbihatScreenSubtitle => 'TASBIIXDA SALAADDA';

  @override
  String get tasbihatScreenDescription =>
      'Hagitaan buuxa oo ku saabsan tasbiixda la akhriyo inta lagu jiro iyo ka dib salaadaha maalinlaha ah — iyadoo la raacayo dhaqanka Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Waxaa la akhriyaa rakaacada 3aad & 4aad';

  @override
  String get tasbihatArba3Info =>
      'Fiqhiga Shiicada, Tasbiḥāt al-Arbaʿa waxay beddeshaa Suurat al-Faatiha rakaacada 3aad iyo 4aad ee Dhuhr, Asr, Maghrib, iyo Isha. Waa waajib (wājib) in hal mar la akhriyo, waxaana sunno ah (mustaḥabb) in saddex jeer la akhriyo.';

  @override
  String get tasbihatArba3Translation =>
      'Alle waa ka nasahan yahay ceeb kasta · Mahad oo dhan Alle ayay u sugnaatay\nIlaah kale ma jiro aan Alle ahayn · Alle ayaa ugu weyn';

  @override
  String get tasbihatArba3CompleteTitle => 'Akhriyidu Way Dhammaatay';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Allah ha aqbalo salaaddaada — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Taabo ka dib akhris kasta';

  @override
  String get tasbihatZahraSubtitle => 'Ka dib salaad kasta · 100 kuul';

  @override
  String get tasbihatZahraOriginLabel => 'Asal';

  @override
  String get tasbihatZahraHadith =>
      'Marwo Faaduma al-Zahra (sa) waxay Nabiga ﷺ ka codsatay adeegto. Wuxuu yiri: \"Miyaanan ku tusin wax ka khayr badan taas? Akhri Subḥānallāh 33 jeer, Alḥamdulillāh 33 jeer, iyo Allāhu Akbar 34 jeer salaad kasta ka dib. Taasi waxay kuu dhaantaa adeegto.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Jilid 85';

  @override
  String get tasbihatZahraOpenCounter => 'Fur Tiriyaha Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUCOOYINKA LA TALIYEY';

  @override
  String get tasbihatDuasSubtitle => 'Ka dib markaad dhamayso salaaddaada';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Salaad kasta oo faral ah ka dib';

  @override
  String get tasbihatDuaAyatKursiSource => 'Suurat al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Qofkii akhriya Āyat al-Kursī salaad kasta oo faral ah ka dib, wax u dhexeeya isaga iyo jannada ma jiraan marka laga reebo geerida. Imam al-Bāqir (a) wuxuu sheegay inay ka mid tahay aayadaha ugu waaweyn Qur’aanka.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Salaad kasta ka dib · waxay xidhaysaa dhammaan ducooyinka';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Dirista salaanta iyo naxariista Nabiga ﷺ iyo ehelkiisa daahirka ah (Āl Muḥammad) waxaa lagu taliyaa si loogu soo xiro dua kasta. Imam al-Ṣādiq (a) wuxuu yiri: \"Dua kasta way hakataa ilaa aad salawaat u dirto Muḥammad iyo ehelkiisa.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Salaad kasta ka dib · loogu talagalay Imaamka waqtigeenna';

  @override
  String get tasbihatDuaFarajSource =>
      'Waxaa baray Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua loogu talagalay soo noqoshada Imam al-Mahdī (af), Imamkii labaatanaad, oo uu baray aabihiis. Badanaa waxaa akhriya dad badan oo Shia Muslimiin ah kadib salaadda sida camal u ah iimaanka Imam-ka nool.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥda Marwo Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Ka dib Maghrib & Isha · si gaar ah ayaa loogu taliyaa';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) wuxuu sheegay in akhrinta Tasbīḥ al-Zahrā ka dib Isha ka hor hurdada ay ka khayr badan tahay 1000 rakaaco oo salaad sunno ah. Iftiinkeedu wuxuu u kacaa samooyinka.';

  @override
  String get tasbihFatimaGiftPre => 'Hadiyad ka timid Nabiga';

  @override
  String get tasbihFatimaGiftPost => 'waxaa la akhriyaa salaad kasta ka dib';

  @override
  String get prayerTrackerTitle => 'RAAĐRAACA SALAADDA';

  @override
  String get prayerTrackerPrayed => 'La tukaday';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count maalmood oo xiriir ah';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Dhammaan salaadihii maanta waa la tukaday. Allah ha aqbalo.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Maanta waa la dhammeeyey';

  @override
  String get dhikrTrackerNotDoneToday => 'Maanta lama samayn';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count maalmood oo xiriir ah';
  }

  @override
  String get dhikrReminderTitle => 'Xusuusin Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Xusuusin maalinle ah oo deggan si aad u akhrido Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Daar xusuusinta Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Waqtiga xusuusinta';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Xadiiska Maanta';

  @override
  String get hadithLabelArabic => 'CARABI';

  @override
  String get hadithLabelTranslation => 'TARJUMAAD';

  @override
  String get hadithBadge => 'XADIIS';

  @override
  String get hadithShare => 'La Wadaag Xadiiskan';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nIyadoo loo marayo Ayara';
  }

  @override
  String get hadithNavPrevious => 'Hore';

  @override
  String get hadithNavNext => 'Xiga';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Afarta Toban ee aan Qaldamin';

  @override
  String get imamsScreenSubtitle =>
      'Nabiga, Marwo Fatima, iyo Tobanka Imam — hogaamiyeyaasha nadiifka ah ee aan qaldamin ee diinta Shia Toban.';

  @override
  String get imamLabelBorn => 'Dhashay';

  @override
  String get imamLabelMartyrdom => 'Shahaado';

  @override
  String get imamLabelStatus => 'Xaalad';

  @override
  String get imamSectionBiography => 'TAARIIKH NOLOLEED';

  @override
  String get imamSectionFamousSaying => 'HADAL CAAAN AH';

  @override
  String get imamRoleProphet => 'Nabigii Ugu Dambeeyey';

  @override
  String get imamRoleInfallible => 'Aan Gaf lahayn';

  @override
  String get imamOrdinal1 => 'Imamka 1aad';

  @override
  String get imamOrdinal2 => 'Imamka 2aad';

  @override
  String get imamOrdinal3 => 'Imamka 3aad';

  @override
  String get imamOrdinal4 => 'Imamka 4aad';

  @override
  String get imamOrdinal5 => 'Imamka 5aad';

  @override
  String get imamOrdinal6 => 'Imamka 6aad';

  @override
  String get imamOrdinal7 => 'Imamka 7aad';

  @override
  String get imamOrdinal8 => 'Imamka 8aad';

  @override
  String get imamOrdinal9 => 'Imamka 9aad';

  @override
  String get imamOrdinal10 => 'Imamka 10aad';

  @override
  String get imamOrdinal11 => 'Imamka 11aad';

  @override
  String get imamOrdinal12 => 'Imamka 12aad';

  @override
  String get duaAudioScreenTitle => 'Dhagayso Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Dooro dua aad rabto inaad dhagaysato. Taabo tile-ka si aad u shiddo ama u joojiso.';

  @override
  String get duaAudioComingSoonMessage =>
      'Maqalka dua-gan wuxuu iman doonaa cusboonaysiin soo socota.';

  @override
  String get duaAudioClose => 'Xir';

  @override
  String get duaAudioError =>
      'Lama soo rari karin maqalka. Fadlan hubi internet-kaaga.';

  @override
  String get duaAudioMetaTransmittedBy => 'Waxaa soo weriyey';

  @override
  String get duaAudioMetaOccasion => 'Munaasabad';

  @override
  String get duaAudioMetaDuration => 'Muddada';

  @override
  String get quickActionDailyHadith => 'Xadiiska Maanta';

  @override
  String get quickAction14Masumeen => 'Afarta Toban ee aan Qaldamin';

  @override
  String get quickActionListenDuas => 'Dhagayso';

  @override
  String get quickActionTasbihat => 'Hagaha Salaadda';

  @override
  String get pilgrimageSectionTitle => 'Safarka Barakaysan';

  @override
  String get pilgrimageSectionSubtitle =>
      'Hagayaal dhammaystiran oo ku saabsan Hajj & Umrah — socdaalka loo aado Guriga Barakaysan ee Allah ee Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Tiirka Shanaad ee Islaamka';

  @override
  String get hajjCardDescription =>
      'Socdaalka weyn ee sannadlaha ah — waajib hal mar nolosha qof kasta oo Muslim awood leh';

  @override
  String get hajjScreenTitle => 'Hagaha Hajj';

  @override
  String get hajjScreenSubtitle =>
      'Hage tallaabo-tallaabo ah oo ku saabsan socdaalka weyn';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Xajka Yar';

  @override
  String get umrahCardDescription =>
      'Safar ruuxi ah oo aad u qiimo badan oo la samayn karo wakhti kasta oo sanadka ah';

  @override
  String get umrahScreenTitle => 'Hagaha Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Hage tallaabo-tallaabo ah oo ku saabsan socdaalka yar';

  @override
  String get pilgrimageStepsTitle => 'Cibaadooyinka & Tallaabooyinka';

  @override
  String get pilgrimageImportantNotesTitle => 'Qodobo Muhiim ah';

  @override
  String get pilgrimageDuaTitle => 'Dua tan tallaabada';

  @override
  String get pilgrimageJafariNoteTitle => 'Xusuusin Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Dhameystiran';

  @override
  String get pilgrimageMarkDone => 'Sida dhameystiran';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done ka mid ah $total tallaabo';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes daqiiqo';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Xujeyda Shiicada';

  @override
  String get pilgrimageShiaNoteBody =>
      'Booqdayaasha Shia badan ayaa sidoo kale u safra magaalada Madiina si ay u booqdaan Nabiga Muhammad (SAW) ee Masjid al-Nabawi iyo qabriga Jannat al-Baqi. Booqashadani waxay leedahay macne ruuxi ah oo qoto dheer, in kastoo aysan ahayn xafladaha Xajka.';

  @override
  String get hajjIntro =>
      'Xajku waa tiirarka shanaad ee Islaamka, waajib ah hal mar nolosha qof kasta oo Muslim ah oo awood u leh jidh ahaan iyo dhaqaale ahaan. Badanaa booqdayaasha Shia Toban maanta, tani waxay ka dhigan tahay Xajka al-Tamattu\', oo la sameeyo bisha Dhul Hijjah iyada oo la raacayo raadadka Nabiga Ibrahim (AS), wiilkiisa Ismail (AS), iyo Marwo Hajar. Hagahan wuxuu raacayaa qaabka Ja\'fari ee xafladaha, halka booqashada Madiina ay tahay safar qoto dheer oo la jecel yahay ka hor ama ka dib Xajka.';

  @override
  String get umrahIntro =>
      'Umrah waa socdaalka yar ee loo aado Mecca, waxayna kaga duwan tahay Hajj in la samayn karo wakhti kasta oo sanadka ah. Inkastoo aanay waajib ahayn, haddana waxay leedahay ajar ruuxi ah oo aad u weyn, waxaana loo arkaa cibaado aad loo jecel yahay. Waxay la wadaagtaa Hajj dhowr camal, balse way ka gaaban tahay, waxayna ka kooban tahay afar tiir oo waaweyn.';

  @override
  String get voiceInputTitle => 'Codka Gelinta';

  @override
  String get voiceInputMicTitle => 'Mikrofoon';

  @override
  String get voiceInputMicSubtitle =>
      'Hadalkaga ku qor si aad u weydiiso Ayara halkii aad ka qori lahayd.';

  @override
  String get voiceInputMicDenied => 'Gelitaanka mikrofoonka waa la diiday.';

  @override
  String get voiceInputSpeak => 'Hadalku halkii';

  @override
  String get voiceInputListening => 'Dhageysiga…';

  @override
  String get voiceInputPermissionDenied =>
      'Gelitaanka mikrofoonka ayaa loo baahan yahay si loo isticmaalo codka gelinta.';
}
