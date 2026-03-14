// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Valige oma keel';

  @override
  String get languageSelectSub => 'Saate seda hiljem muuta Seadetes';

  @override
  String get actionContinue => 'Jätka';

  @override
  String get languageSuggestedHeader => 'Soovitatud';

  @override
  String get languageAllHeader => 'Kõik keeled';

  @override
  String get languageSuggestedBadge => 'Soovitatud';

  @override
  String get languageSearchHint => 'Otsing…';

  @override
  String get planBasic => 'Standardne';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Igapäevane juhendamine';

  @override
  String get categorySlot02 => 'Iman ja usaldus';

  @override
  String get categorySlot03 => 'Palve peegeldus';

  @override
  String get categorySlot04 => 'Kannatuste ja lootus';

  @override
  String get categorySlot05 => 'Pea andestust';

  @override
  String get categorySlot06 => 'Halastus ja kaastunne';

  @override
  String get categorySlot07 => 'Usk ja tugevus';

  @override
  String get categorySlot08 => 'Tänulik süda';

  @override
  String get categorySlot09 => 'Elu eesmärk';

  @override
  String get categorySlot10 => 'Perekonna sidemed';

  @override
  String get categorySlot11 => 'Sisemine rahu';

  @override
  String get categorySlot12 => 'Profeetuse tarkus';

  @override
  String get categorySlot13 => 'Head iseloomuomadused';

  @override
  String get categorySlot14 => 'Pea vastu kiusatusele';

  @override
  String get categorySlot15 => 'Õhtune Dhikr';

  @override
  String get categoryCustom => 'Isiklik peegeldus';

  @override
  String get dhikrMeaningSubhanallah => 'Kiitus Allahile';

  @override
  String get dhikrMeaningAlhamdulillah => 'Kogu kiitus kuulub Allahile';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah on suurim';

  @override
  String get quranVerseHeartAtRest =>
      'Tõepoolest, Allahi mälestamises leiavad südamed rahakesi.';

  @override
  String get promptHint =>
      'Puudutage kategooriat Islami juhendamise ja peegelduse saamiseks';

  @override
  String get currentLanguage => 'Praegune keel';

  @override
  String get settingsLanguage => 'Keeleseaded';

  @override
  String get settingsTitle => 'Seaded';

  @override
  String get chooseLanguage => 'Valige oma keel';

  @override
  String get continueCta => 'Jätka';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sõna',
      one: '$count sõna',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Valikud';

  @override
  String get newCta => 'Uus';

  @override
  String get actionsTitle => 'Mida soovite teha?';

  @override
  String get copy => 'Kopeeri';

  @override
  String get share => 'Jaga';

  @override
  String get close => 'Sulge';

  @override
  String get copiedToast => 'Kopeeritud lõikelauale';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Ei saanud luua uut vastust';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nKas soovite proovida uuesti?';
  }

  @override
  String get cancelCta => 'Tühista';

  @override
  String get retryCta => 'Proovige uuesti';

  @override
  String get authTitle => 'Looge oma konto';

  @override
  String get continueAsGuest => 'Jätka külalise ajal';

  @override
  String get signInGoogle => 'Logige sisse Google\'i abil';

  @override
  String get signInApple => 'Logige sisse Apple\'i abil';

  @override
  String get signInEmail => 'Logige sisse e-posti abil';

  @override
  String get upgradeWithApple => 'Jätka Apple\'iga';

  @override
  String get mustAccept =>
      'Peate nõustuma Tingimustega ja tunnistama Privaatsuspoliitika.';

  @override
  String get termsLabel => 'Nõustun Teenuse tingimustega';

  @override
  String get privacyLabel => 'Olen lugenud privaatsuspoliitikat';

  @override
  String get marketingOptIn => 'Nõustun uudiste ja pakkumiste saamisega';

  @override
  String get openTerms => 'Teenuse tingimused';

  @override
  String get openPrivacy => 'Privaatsuspoliitika';

  @override
  String get accountSection => 'Konto';

  @override
  String get guestMode => 'Külalise režiim';

  @override
  String get signedIn => 'Sisse logitud';

  @override
  String get upgradeHint =>
      'Salvestage oma peegeldused seadmete vahel, luues konto.';

  @override
  String get upgradeWithGoogle => 'Jätka Google\'iga';

  @override
  String get signOut => 'Logi välja';

  @override
  String get snackUpgraded => 'Konto uuendatud Google\'iga ✅';

  @override
  String get snackSignedIn => 'Sisse logitud Google\'i abil ✅';

  @override
  String get snackSignedOut => 'Välja logitud';

  @override
  String get snackSignedInApple => 'Sisse logitud Apple\'iga ✅';

  @override
  String get snackSignedInGoogle => 'Sisse logitud Google\'i abil ✅';

  @override
  String get snackUpgradedApple => 'Konto uuendatud Apple\'iga ✅';

  @override
  String get snackUpgradedGoogle => 'Konto uuendatud Google\'iga ✅';

  @override
  String get historyTitle => 'Eelmised peegeldused';

  @override
  String get historyOpenCta => 'Eelmised peegeldused';

  @override
  String get historyEmpty => 'Salvestatud peegeldusi pole veel.';

  @override
  String get historyDeleteTitle => 'Kustutada peegeldus?';

  @override
  String get historyDeleteBody => 'See eemaldab valitud kirje jäädavalt.';

  @override
  String get deleteCta => 'Kustuta';

  @override
  String get historyButton => 'Eelmised peegeldused';

  @override
  String get historyEmptyTitle => 'Peegeldusi pole veel';

  @override
  String get historyEmptyBody =>
      'Looge midagi esmalt — teie salvestatud üksused ilmuvad siia.';

  @override
  String get historyDelete => 'Kustuta';

  @override
  String get footerTitle => 'Wilayaga, Imaniga ja Sabrga';

  @override
  String get footerSubtitle => 'Üks palve korraga';

  @override
  String get genericErrorSnack =>
      'Midagi läks valesti — palun proovige hetke pärast uuesti.';

  @override
  String get upgradeAccountCta =>
      'Salvestage oma peegeldused seadmete vahel – looge konto';

  @override
  String get deleteAccount => 'Kustutage konto';

  @override
  String get exportData => 'Ekspordi minu andmed';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Lihtsalt kindlasti 🐯\nAyaral on vaja hetk aega enne järgmist…';

  @override
  String get rateDailyLimit =>
      'Praegu olete peegelduste väljas.\nHankige rohkem peegeldusi või uuendage Wilayale.';

  @override
  String get rateCreditsExhausted =>
      'Olete kasutanud kõik oma peegeldused.\nTäiendage või uuendage Wilayale, et jätkata.';

  @override
  String get rateGraceCreditsExhausted =>
      'Praegu olete peegelduste väljas.\nHankige rohkem peegeldusi või uuendage Wilayale.';

  @override
  String get premiumDescription =>
      'Wilaya avab lisafunktsioonid, tulevased kategooriad ja spetsiaalse märgi.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Teie peegeldused on praegu tühjad. Plaan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Ei saanud teie peegeldusi kontrollida: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Midagi läks valesti teie peegelduste kontrollimisel.';

  @override
  String get aiFallbackGeneric =>
      'Midagi läks valesti — palun proovige hetke pärast uuesti.';

  @override
  String get limitSectionTitle => 'Peegeldused';

  @override
  String get limitTodayLabel => 'Kasutamine';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Ülejäänud peegeldused: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plaan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Laadimiseks…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'Peegeldused';

  @override
  String get aiLimitSubtitle =>
      'Iga vastus kasutab 1 peegeldust. Standardne sisaldab alustava peegeldusi. Wilaya avab premium kategooriad ja võimaldab täiendusi.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total peegeldused kasutatud';
  }

  @override
  String get creditsSectionTitle => 'Peegeldused';

  @override
  String get creditsUsageLabel => 'Kasutamine';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Ülejäänud peegeldused: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plaan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Laadimiseks…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'Peegeldused';

  @override
  String get creditsSubtitle =>
      'Iga vastus kasutab 1 peegeldust. Standardne sisaldab alustava peegeldusi. Wilaya avab premium kategooriad ja võimaldab täiendusi.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total peegeldused kasutatud';
  }

  @override
  String get settingsDeleteTitle => 'Kustutage konto';

  @override
  String get settingsDeleteDescription =>
      'Kustutage jäädavalt oma konto ja kõik seotud andmed.';

  @override
  String get settingsDeleteButtonLabel => 'Kustutage minu konto';

  @override
  String get settingsDeleteDialogTitle => 'Kustutada konto?';

  @override
  String get settingsDeleteDialogBody =>
      'See toiming on jäädav ja seda ei saa võtta tagasi.\n\nKõik teie vestlused, ajalugu ja kontoteavet kustutatakse.';

  @override
  String get settingsDeleteDialogCancel => 'Tühista';

  @override
  String get settingsDeleteDialogConfirm => 'Kustuta';

  @override
  String get settingsFreeLimitUsedTitle => 'Alustava peegeldused kasutatud';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Selle seadme alustava peegeldused on kasutatud. Uuendage Wilayale või ostke rohkem peegeldusi, et jätkata.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Alustava peegeldused kasutatud';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Selle seadme alustava peegeldused on kasutatud. Uuendage Wilayale või ostke rohkem peegeldusi, et jätkata.';

  @override
  String get deviceBoundError =>
      'See seade on juba seotud teise kontoga. Logige sisse algse kontoga.';

  @override
  String get premiumTitle => 'Wilaya režiim';

  @override
  String get premiumSubtitleBasic => 'Avage täielik Ayara kogemus.';

  @override
  String get premiumSubtitlePremium =>
      'Olete Wilaya sisse logitud. Kas vajate rohkem peegeldusi?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Praegune plaan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Peegeldused: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Ostud ei ole hetkel saadaval.';

  @override
  String get premiumSignInToPurchase =>
      'Logige sisse, et osta peegeldusi või avada Wilaya.';

  @override
  String get premiumRestorePurchases => 'Taastage ostud';

  @override
  String get premiumProcessing => 'Töötlemine…';

  @override
  String get premiumRestoreHintTitle =>
      'Kas olete juba ostnud Wilaya või peegeldusi sellel seadmel või muul?';

  @override
  String get premiumRestoreHintBody =>
      'Taastage oma ostud, kui neid ei kuvata.';

  @override
  String get premiumBuyCredits200 => 'Ostke 200 peegeldust';

  @override
  String get premiumBuyCredits400 => 'Ostke 400 peegeldust';

  @override
  String get premiumBecomePremiumOneTime => 'Uuendage Wilaya režiimile';

  @override
  String get premiumTopupHint =>
      'Wilayaga saate täiendada lisakooditega, kui vaja.';

  @override
  String get premiumUpgradeCta => 'Uuendus';

  @override
  String get premiumRequiredForCategory =>
      'See kategooria on saadaval ainult Wilaya kasutajatele. Avage Seadetes, et avada kõik premium sisu.';

  @override
  String get premiumBenefitsBasic =>
      'Avage Wilaya, et saada lisakooditeid, pääseda premium kategooriatele ja jätkata, kui teil on vaja juhendamist.';

  @override
  String get premiumBenefitsPremium =>
      'Olete Wilaya režiimis. Kui teil on vähevõimalusi, lisage lisakooditeid ja jätkake ilma katkestusteta.';

  @override
  String get premiumButtonBecomePremium => 'Avage Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Lisage 1000 peegeldust';

  @override
  String get premiumBadge => 'Wilaya aktiivne';

  @override
  String get premiumLoadingStore => 'Poele laadimiseks…';

  @override
  String get premiumProductNotAvailable =>
      'See toode ei ole praegu poes saadaval. Palun proovige hiljem uuesti.';

  @override
  String get premiumPurchaseError =>
      'Ostumisel läks midagi valesti. Palun proovige uuesti.';

  @override
  String get premiumBuyCredits100 => 'Lisage 100 peegeldust';

  @override
  String get premiumFeatureLocked =>
      'Avage Wilaya selle funktsiooni kasutamiseks.';

  @override
  String get lockedCategoriesHint =>
      'Mõned kategooriad on reserveeritud Wilaya liikmetele. Avage need, et uurida iga peegeldust oma teekonna ajal.';

  @override
  String get freePlanBlockedTitle => 'Olete kasutanud oma alustava peegeldused';

  @override
  String get freePlanBlockedBody =>
      'Olete standardsel plaanil alustava peegeldunud ja olete saavutanud piiri. Et jätkata — ja avada premium kategooriad — uuendage Wilayale.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Vaadake allpool Wilaya valikuid';

  @override
  String get graceBlockedTitle => 'Olete kasutanud oma alustava peegeldused';

  @override
  String get graceBlockedBody =>
      'Olete standardsel plaanil alustava peegeldunud ja olete saavutanud piiri. Et jätkata — ja avada premium kategooriad — uuendage Wilayale.';

  @override
  String get graceBlockedCtaGoPremium => 'Vaadake allpool Wilaya valikuid';

  @override
  String get rateGuestMustSignIn =>
      'Logige Ayarasse ja kasutage oma peegeldusi.';

  @override
  String get guestNoCreditsTitle => 'Külalise režiim';

  @override
  String get guestNoCreditsBody =>
      'Külalise ajal saate rakendust sirvida, kuid te ei saa kasutada peegeldusi. Logige hiljem sisse Seadetes, et kasutada peegeldusi ja avada ostud.';

  @override
  String get guestDialogContinue => 'Jätka';

  @override
  String get guestDialogLoginInstead => 'Logige sisse';

  @override
  String get optionalLabel => 'valikuline';

  @override
  String get accountDeleteSuccessTitle => 'Konto kustutatud';

  @override
  String get accountDeleteSuccessBody =>
      'Teie konto ja seotud andmed on edukalt kustutatud.';

  @override
  String get accountDeleteSuccessClose => 'Sulge';

  @override
  String get accountDeleteErrorTitle => 'Ei saanud konto kustutada';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Taasautentimine tühistati. Palun logige sisse uuesti ja proovige kustutamist uuesti.';

  @override
  String get accountDeleteReauthRequired =>
      'Konto kustutamine nõuab hiljutist sisselogimist. Palun logige välja, logige sisse uuesti ja proovige kustutamist uuesti.';

  @override
  String get settingsDeletePermanentWarning =>
      'See toiming on jäädav ja seda ei saa võtta tagasi. Kõik teie kontoga seotud andmed kustutatakse.';

  @override
  String get dailyGraceTitle => 'Igapäevane juhendamine';

  @override
  String get dailyGraceScriptureLabel => 'PÄEVA VÄRSUS';

  @override
  String get dailyGraceSaintLabel => 'NÄDALAKUJUTIS';

  @override
  String get dailyGraceReflectionLabel => 'ÕHTUNE PEEGELDUS';

  @override
  String get dailyGraceCopiedToast => 'Värsus kopeeritud lõikelauale';

  @override
  String get locationConsentLabel =>
      'Luba Ayaral kasutada minu asukohta Qibla suuna ja palveaja jaoks';

  @override
  String get locationConsentHint =>
      'Kasutatakse ainult nende funktsioonide jaoks. Teie asukohta ei jagatakse ega salvestata.';

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
  String get askPageTitle => 'Küsige Ayaralt';

  @override
  String get askPageDescription =>
      'Küsige midagi usust, pöörumisest, elust või islami praktikast ja saate juhendust Koraani ja Ahl al-Bayti õpetuste põhjal.';

  @override
  String get askPageInputHint => 'Kirjutage oma küsimus siia…';

  @override
  String get askPageSubmitCta => 'Küsige';

  @override
  String get askPageInputEmptyError => 'Palun kirjutage esmalt küsimus.';

  @override
  String get askResultYourQuestion => 'Teie küsimus';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Mekkah suunas';

  @override
  String get qiblaCompassInstruction =>
      'Pöörake oma telefoni, kuni kuldne nõel näitab ülespoole.\nSee suund näitab Qiblale (Mekkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS signaal on nõrk. Minge väljapoole ja puudutage Proovige uuesti.';

  @override
  String get qiblaRetry => 'Proovige uuesti';

  @override
  String get qiblaTitle => 'Qibla suund';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km Mekkahuni';
  }

  @override
  String get qiblaLocationNeededTitle => 'Asukoht vajalik';

  @override
  String get qiblaLocationNeededBody =>
      'Luba asukoha juurdepääs, et Ayara saaks arvutada Kaaba suunda Mekkah asukohast, kus te olete.';

  @override
  String get qiblaOpenSettings => 'Avage seaded';

  @override
  String get qiblaCompassLoading => 'Leian teie asukohta…';

  @override
  String get qiblaTowardMecca => 'Mekkah poole';

  @override
  String get prayerTimesTitle => 'Palveajad';

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
  String get prayerTimesLocationNeededTitle => 'Asukoht vajalik';

  @override
  String get prayerTimesLocationNeededBody =>
      'Luba asukoha juurdepääs, et Ayara saaks arvutada teie linna jaoks täpseid palveaegu.';

  @override
  String get prayerTimesNextLabel => 'Järgmine';

  @override
  String get prayerTimesDoneLabel => 'Tehtud';

  @override
  String get monthlyPrayerTimesTitle => 'Kuu palveajad';

  @override
  String get monthlyPrayerTimesViewButton => 'Vaadake kogu kuud';

  @override
  String get monthlyPrayerTimesNextMonth => 'Järgmine kuu';

  @override
  String get monthlyPrayerTimesDayHeader => 'Päev';

  @override
  String get sharePrayerTimes => 'Jaga palveaegu';

  @override
  String get notificationsSectionTitle => 'Teatised';

  @override
  String get notificationsSectionSubtitle =>
      'Palveemeinde, kalenderisündmused ja muud';

  @override
  String get dailyReflectionReminderTitle => 'Igapäevane peegeldus';

  @override
  String get dailyReflectionReminderDescription =>
      'Leebe igapäevane meeldetuletus, et avada Ayara ja ühenduda oma usuga.';

  @override
  String get dailyReflectionReminderEnable => 'Luba igapäevane meeldetuletus';

  @override
  String get dailyReflectionReminderTimeLabel => 'Meeldetuletuse aeg';

  @override
  String get prayerNotificationsTitle => 'Palveemeinde';

  @override
  String get prayerNotificationsDescription =>
      'Saate leebe meeldetuletuse enne iga palveaega, et jääda kogu päeva jooksul seotud.';

  @override
  String get prayerNotificationsEnable => 'Luba palveemeinde';

  @override
  String get prayerNotificationsOpenSettings => 'Avage teatiste seaded';

  @override
  String get prayerNotificationsDenied => 'Teatised on keelatud';

  @override
  String get prayerNotificationsDeniedHint =>
      'Minge Seadetes ja lubage Ayarale teatised, et saada palveaja meeldetuletus.';

  @override
  String get notificationsConsentLabel => 'Luba teatised palveaegade jaoks';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — koidupalve';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr on Ahl al-Bayti hommikute palve. Imam Ali (AS) ütles: \"Kaitse koidupalve, nagu kaitseksid oma kõige väärtuslikumat usaldust. Ärka, puhasta ennast ja seisa Allahi ees.\"';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — keskpäevane palve';

  @override
  String get prayerNotifBodyDhuhr =>
      'Ahl al-Bayti imaamid hindasid iga mäletamishetke. Pea kinni oma päevast, ühenda Dhuhr Asriga, kui vaja, ja tagasta oma süda Allahile.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — pärastlõunane palve';

  @override
  String get prayerNotifBodyAsr =>
      'Kaitse palvet, sest see on leping teie ja Allahi vahel. Asr aeg on tulnud — ärge lase sellel mööduda mäletamata.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — loojangpalve';

  @override
  String get prayerNotifBodyMaghrib =>
      'Päike on loojang läinud — hetk, mida Ahl al-Bayt pidas pühaks palve jaoks. Palu Maghrib ja ava oma käed Allahile dua jaoks enne, kui öö algab.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — öised palve';

  @override
  String get prayerNotifBodyIsha =>
      'Lõpeta oma päev Allahi seltsis. Imaamid julgustasid Salat al-Layl-i pärast Ishat — kuid esmalt lõpeta oma Isha ja sulge päev tema mäletamisega.';

  @override
  String get outOfReflectionsBannerText =>
      'Olete kasutanud kõik oma peegeldused';

  @override
  String get outOfReflectionsBannerCta => 'Hankige rohkem';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Puudutage ringi, et lugeda';

  @override
  String get dhikrResetButton => 'Lähtesta';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Olete täitnud 100 Allahi mäletamist. Võib olla need valgus teie südamele.';

  @override
  String get disclaimerTitle => 'Selle rakenduse juhenduse kohta';

  @override
  String get disclaimerBody =>
      'Ayara pakub islami peegeldusi, meeldetuletusi ja vaimseid sisu, et toetada teie isiklikku usukalastust, mis põhineb Koraani ja Ahl al-Bayti õpetustel. See sisu on esitatud ainult üldise teabeandmise ja inspiratsiooniga eesmärgil.\n\nAyara ei asenda pädevaid õpetajaid.\nSelle rakenduse juhendus ei asenda õppinud islam õpetajat, marjaʿa või teoloogiliselt koolitatud õpetajat. Shia islams põhineb religiooosne juhendus Jaʿfari õigusteaduse koolil (fiqh) ja elava Marjaʿ (emulatsiooni allikas) järgimise traditsionil — pädev jurist, kelle otsused juhendavad uskujaid religiooossetes praktikas. Kui teil on küsimusi religiooossete otsuste, halaal ja haram asjade või isiklike religiooossete kohustuste kohta, palun pöörduge pädevate Marjaʿ või teadlase poole teie kogukonnnas.\n\nSee rakendus ei anna religiooosseid otsuseid.\nAyara ei tee autoritaarseid määrusi fiqhi või isiklike religiooossete kohustuste asjade kohta. Midagi siin ei tohiks käsitada fatvana ega köitva religiooosses juhisena.\n\nAhl al-Bayti tsentrallus.\nShia islams peetakse Profeetit Muhammadi ﷺ ja tema puhtaid leibkonda — Ahl al-Bayta — islami kogukonna autoritaarsete juhidena Koraani järel. Ahl al-Bayti kaksteist imaami on islami õpetuse jumaliku tõlgendajad. Selle rakenduse sisu peegeldab seda traditsiooni ja püüab seda truult tunnustada.\n\nKogukonna küsimused.\nSee rakendus eesmärk julgustada teie usuga seotust, kuigi sellega kaasneb sügav austus teie kohase mošee, islami keskuse ja religiooosse kogukonna tähtsa rolli vastu. Julgustame teid jäämaks seotud ja õppimast pädevate õpetajate juures teie lähedal.';

  @override
  String get disclaimerClose => 'Saan aru';

  @override
  String get disclaimerInfoTooltip => 'Selle rakenduse juhenduse kohta';

  @override
  String get disclaimerSettingsSubtitle =>
      'Ainult üldise teabeandmise eesmärgil. Puudutage täieliku vastuotstarbe lugema.';

  @override
  String get disclaimerSectionHeader => 'Juhenduse vastuotstarve';

  @override
  String get navHome => 'Kodu';

  @override
  String get navReflect => 'Peegeldus';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get dashboardToday => 'TÄNA';

  @override
  String get dashboardComingUp => 'Tulevad';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'päeva',
      one: 'päev',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Kiire juurdepääs';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Juhendamine';

  @override
  String get quickActionPrayerTimes => 'Palveajad';

  @override
  String get askAyaraTitle => 'Küsige Ayaralt';

  @override
  String get askAyaraSubtitle =>
      'Küsige iga islam küsimust ja saate mõtleval, juhendatun vastuse.';

  @override
  String get askAyaraHint => 'nt Mis on Ramadaani tähtsus?';

  @override
  String get askAyaraSubmit => 'Küsige';

  @override
  String get wisdomOfTheDayTitle => 'Päeva tarkus';

  @override
  String get calendarScreenTitle => 'Islami kalender';

  @override
  String get calendarUpcomingOccasions => 'Tulevad sündmused';

  @override
  String get calendarOccasionRemindersTitle => 'Sündmuste meeldetuletused';

  @override
  String get calendarOccasionRemindersHint => 'Teate õhtul enne iga sündmust';

  @override
  String get calendarNotifPermissionDenied =>
      'Teatiste luba keelatud. Lubage see oma seadme seadetes.';

  @override
  String get calendarNoEvents => 'Tulevasi sündmusi ei leitud.';

  @override
  String get calendarAddToPhone => 'Lisa telefoni kalendrisse';

  @override
  String get calendarAddedToPhone => 'Lisatud kalendrisse';

  @override
  String get calendarCountdownToday => 'TÄNA';

  @override
  String get calendarCountdownTomorrow => 'HOMME';

  @override
  String calendarCountdownDays(int days) {
    return '$days päeva pärast';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jaan';

  @override
  String get calendarMonthFeb => 'Veeb';

  @override
  String get calendarMonthMar => 'Mär';

  @override
  String get calendarMonthApr => 'Apr';

  @override
  String get calendarMonthMay => 'Mai';

  @override
  String get calendarMonthJun => 'Juun';

  @override
  String get calendarMonthJul => 'Juul';

  @override
  String get calendarMonthAug => 'Aug';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Okt';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dets';

  @override
  String get calendarSeasonMuharramEarly => 'Muharram päevad — meenuta Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — leina ja peegelduse päevad';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — Husayni nelikümmend päeva';

  @override
  String get calendarSeasonRoadToArbaeen => 'Tee Arbaeenil';

  @override
  String get calendarSeasonMabath => 'Mabʿath Mubarak — ilmutuse koit';

  @override
  String get calendarSeasonMidShaban =>
      'Shaʿbani keskpaik — Imam al-Mahdi sünnipaev (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — Koraani kuu';

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
  String get hijriMonth8 => 'Shaʿban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qiʿda';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String get duasScreenTitle => 'Duas ja Ziyarat';

  @override
  String get duasSearchHint => 'Otsige duas, ziyarata…';

  @override
  String get duasFilterAll => 'Kõik';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas ja ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Duas leitud pole.';

  @override
  String get duaCategoryDaily => 'Igapäevane';

  @override
  String get duaCategoryWeekly => 'Nädalalane';

  @override
  String get duaCategoryOccasions => 'Sündmused';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Sünd';

  @override
  String get eventTypeMartyrdom => 'Märterlus';

  @override
  String get eventTypeOccasion => 'Sündmus';

  @override
  String get duaCopyTooltip => 'Kopeeri tõlge';

  @override
  String get duaToggleTransliteration => 'Transliteratsioon';

  @override
  String get duaToggleTranslation => 'Tõlge';

  @override
  String get duaAskAiLabel => 'Paluge Ayaral seda duat selgitada';

  @override
  String get duaAskAiLockedLabel => 'Paluge Ayaral (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara seletused on saadaval Wilaya liikmetele. Uuendage Seadetes.';

  @override
  String duaAiComingSoon(String name) {
    return 'Paluge Ayaral \"$name\" kohta — varsti tuleb!';
  }

  @override
  String get duaCopiedToast => 'Dua kopeeritud lõikelauale.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah on suurim';

  @override
  String get tasbihAlhamdulillahMeaning => 'Kogu kiitus kuulub Allahile';

  @override
  String get tasbihSubhanallahMeaning => 'Kiitus Allahile';

  @override
  String get tasbihResetTooltip => 'Lähtesta';

  @override
  String get tasbihCompleteTitle => 'Tasbih lõpetatud';

  @override
  String get tasbihCompleteMessage => 'Võib Allah aktsepteerida teie dhikr.';

  @override
  String get tasbihTapHint => 'Puudutage igal pool lugema';

  @override
  String get tasbihatScreenTitle => 'Palve juhend';

  @override
  String get tasbihatScreenSubtitle => 'PALVE GLORIFIKATSIOONID';

  @override
  String get tasbihatScreenDescription =>
      'Täielik juhend palve ajal ja järel retsiteeritud glorifikatsioonidele — Ahl al-Bayti (a) traditsiooni järgi.';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Retsiteeritud 3. ja 4. rakʿah ajal';

  @override
  String get tasbihatArba3Info =>
      'Shia õiguseteaduses asendab Tasbiḥāt al-Arbaʿa Surah al-Fatiha 3. ja 4. rakʿah puhul Dhuhr, Asr, Maghrib ja Isha puhul. See on kohustuslik (wājib) retsiteerida üks kord ja soovituslik (mustaḥabb) kolm korda.';

  @override
  String get tasbihatArba3Translation =>
      'Kiitus Allahile · Kogu kiitus kuulub Allahile\nEi ole jumalat peale Allahi · Allah on suurim';

  @override
  String get tasbihatArba3CompleteTitle => 'Retsiteerimine lõpetatud';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Võib teie palve saada aktsepteeritud — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Puudutage pärast iga retsiteerimist';

  @override
  String get tasbihatZahraSubtitle => 'Pärast iga palvet · 100 helmest';

  @override
  String get tasbihatZahraOriginLabel => 'Päritolu';

  @override
  String get tasbihatZahraHadith =>
      'Pühä Fatima al-Zahra (sa) küsis profeetilt ﷺ teenijat. Ta ütles: \"Kas ma ei juhata sind paremale asjale? Retsiteeri pärast iga palvet Subḥānallāh 33 korda, Alḥamdulillāh 33 korda ja Allāhu Akbar 34 korda. See on sulle parem kui teenija.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Ava Tasbīḥ loendur';

  @override
  String get tasbihatDuasTitle => 'SOOVITATUD DUĀD';

  @override
  String get tasbihatDuasSubtitle => 'Pärast palve lõpetamist';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Pärast iga kohustuslikku palvet';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Kes retsiteerib Āyat al-Kursī pärast iga kohustuslikku palvet, ei seisa midagi tema ja paradiisi vahel, välja arvatud surm. Imam al-Bāqir (a) ütles, et see on Koraani suurimaid värseid.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen => 'Pärast iga palvet · suleb kõik palved';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Tervendustamine profeetile ﷺ ja tema puhtale perekonnale (Āl Muḥammad) on soovituslik iga dua sulgemiseks. Imam al-Ṣādiq (a) ütles: \"Iga palve on peatatud, kuni te saata salutatsioone Muḥammadile ja tema perekonnale.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen => 'Pärast iga palvet · meie aja imaamile';

  @override
  String get tasbihatDuaFarajSource => 'Õpetanud Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua Imam al-Mahdī (af) taasilmumise jaoks, kaheteistkümnes Imam, õpetatud tema isa poolt. Seda loetakse sageli paljude šiiitide seas pärast palvet, kui akti pühendumiseks elavale Imamile.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Pühä Fāṭima Tasbīḥ';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Pärast Maghrib ja Isha · eriti soovituslik';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) ütles, et Tasbīḥ al-Zahrā retsiteerimine pärast Ishat enne magamaminekut on parem kui 1000 valikulise palve rakʿah. Selle valgus tõuseb taevasse.';

  @override
  String get tasbihFatimaGiftPre => 'Kingitus profeetilt';

  @override
  String get tasbihFatimaGiftPost => 'retsiteeritud pärast iga palvet';

  @override
  String get prayerTrackerTitle => 'PALVE JÄLGIJA';

  @override
  String get prayerTrackerPrayed => 'Palvetatud';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count päevane jada';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Kõik palved täidetud täna. Võib Allah aktsepteerida.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Täidetud täna';

  @override
  String get dhikrTrackerNotDoneToday => 'Pole täna tehtud';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count päevane jada';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ meeldetuletus';

  @override
  String get dhikrReminderDescription =>
      'Leebe igapäevane meeldetuletus Tasbīḥ al-Zahrā (SA) retsiteerimiseks.';

  @override
  String get dhikrReminderEnable => 'Luba Tasbīḥ meeldetuletus';

  @override
  String get dhikrReminderTimeLabel => 'Meeldetuletuse aeg';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Päeva hadith';

  @override
  String get hadithLabelArabic => 'ARAABIA';

  @override
  String get hadithLabelTranslation => 'TÕLGE';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Jaga seda hadithit';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Eelmine';

  @override
  String get hadithNavNext => 'Järgmine';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Neliteist Tõrgeteta';

  @override
  String get imamsScreenSubtitle =>
      'Prohvet, proua Fatima ja Kaksteist Imamit — puhastatud ja tõrgeteta juhid kaheteistkümnendas šiiitlikus islami suunas';

  @override
  String get imamLabelBorn => 'Sündinud';

  @override
  String get imamLabelMartyrdom => 'Märterlus';

  @override
  String get imamLabelStatus => 'Staatus';

  @override
  String get imamSectionBiography => 'ELULUGU';

  @override
  String get imamSectionFamousSaying => 'KUULUS ÜTLEMINE';

  @override
  String get imamRoleProphet => 'Viimane prófeet';

  @override
  String get imamRoleInfallible => 'Puutumatu';

  @override
  String get imamOrdinal1 => '1. imam';

  @override
  String get imamOrdinal2 => '2. imam';

  @override
  String get imamOrdinal3 => '3. imam';

  @override
  String get imamOrdinal4 => '4. imam';

  @override
  String get imamOrdinal5 => '5. imam';

  @override
  String get imamOrdinal6 => '6. imam';

  @override
  String get imamOrdinal7 => '7. imam';

  @override
  String get imamOrdinal8 => '8. imam';

  @override
  String get imamOrdinal9 => '9. imam';

  @override
  String get imamOrdinal10 => '10. imam';

  @override
  String get imamOrdinal11 => '11. imam';

  @override
  String get imamOrdinal12 => '12. imam';

  @override
  String get duaAudioScreenTitle => 'Kuula duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Valige dua kuulamaks. Puudutage pailki taasesituse või pausi jaoks.';

  @override
  String get duaAudioComingSoonMessage =>
      'Selle dua helivõte on saadaval tuleval versiooniuuenduste ajal.';

  @override
  String get duaAudioClose => 'Sulge';

  @override
  String get duaAudioError =>
      'Ei saanud heliga laadida. Palun kontrollige oma ühendust.';

  @override
  String get duaAudioMetaTransmittedBy => 'Edastatud';

  @override
  String get duaAudioMetaOccasion => 'Sündmus';

  @override
  String get duaAudioMetaDuration => 'Kestus';

  @override
  String get quickActionDailyHadith => 'Päeva hadith';

  @override
  String get quickAction14Masumeen => 'Neliteist Tõrgeteta';

  @override
  String get quickActionListenDuas => 'Kuula';

  @override
  String get quickActionTasbihat => 'Palve juhend';

  @override
  String get pilgrimageSectionTitle => 'Pühade teekond';

  @override
  String get pilgrimageSectionSubtitle =>
      'Täielikud juhendid hajjile ja umrahile — palverännakud Allahi pühale majale Mekkah';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Islami viies sammas';

  @override
  String get hajjCardDescription =>
      'Suurepärane aastane palverännak — iga abikelva moslem peab üks kord elus';

  @override
  String get hajjScreenTitle => 'Hajj juhend';

  @override
  String get hajjScreenSubtitle =>
      'Samm-sammult juhend suurepärasele palveränakule';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Väiksem palverännak';

  @override
  String get umrahCardDescription =>
      'Sügavalt rahuldav vaimne teekond, mida saab teha aastaringselt';

  @override
  String get umrahScreenTitle => 'Umrah juhend';

  @override
  String get umrahScreenSubtitle =>
      'Samm-sammult juhend väiksemale palveränakule';

  @override
  String get pilgrimageStepsTitle => 'Rituaalid ja sammud';

  @override
  String get pilgrimageImportantNotesTitle => 'Olulised märkused';

  @override
  String get pilgrimageDuaTitle => 'Dua selle sammu jaoks';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari fiqh\'i märkus';

  @override
  String get pilgrimageComplete => '✓ Täidetud';

  @override
  String get pilgrimageMarkDone => 'Märgi lõpetatuks';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done $total sammust';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Shia palverännikud';

  @override
  String get pilgrimageShiaNoteBody =>
      'Paljud šiiitlikud palverändurid reisivad ka Medinasse Prohvet Muhammad (SAW) ziyarat\'iks Masjid al-Nabawis ja haudadele Jannat al-Baqis. Need külastused omavad sügavat vaimset tähendust, kuigi need ei ole ise Hajj\'i rituaalid.';

  @override
  String get hajjIntro =>
      'Hajj on islami viies sammas, kohustuslik üks kord elus igaühele, kes on füüsiliselt ja rahaliselt võimeline. Enamiku kaheteistkümnenda šiiitliku palveränduri jaoks tähendab see Hajj al-Tamattu\', mis toimub Dhul Hijjah kuul Prohvet Ibrahim (AS), tema poja Ismaili (AS) ja proua Hajara jälgedes. See juhend järgib Ja\'fari rituaalide ülesehitust, samas kui ziyarat Medinas jääb sügavalt hinnatud teekonnaks enne või pärast Hajj\'i.';

  @override
  String get umrahIntro =>
      'Umrah on väiksem palverännak Mekkah ja erinevalt hajjist saab seda teha aastaringselt. Kuigi see ei ole kohustuslik, kannab see suurt vaimset tasu ja peetakse väga soovituslikuks jumalikus teenuseks. See jagab mitmeid rituaale hajjiga, kuid on lühem, koosnevad neljast peamisest riitusest';

  @override
  String get voiceInputTitle => 'Häälsisend';

  @override
  String get voiceInputMicTitle => 'Mikrofon';

  @override
  String get voiceInputMicSubtitle =>
      'Räägi oma sisend Ask Ayara asemel, et mitte kirjutada.';

  @override
  String get voiceInputMicDenied => 'Mikrofoni juurdepääs on keelatud.';

  @override
  String get voiceInputSpeak => 'Räägi asemel';

  @override
  String get voiceInputListening => 'Kuulan…';

  @override
  String get voiceInputPermissionDenied =>
      'Mikrofoni juurdepääs on vajalik häälsisendi jaoks.';
}
