// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Välj ditt språk';

  @override
  String get languageSelectSub => 'Du kan ändra detta senare i Inställningar';

  @override
  String get actionContinue => 'Fortsätt';

  @override
  String get languageSuggestedHeader => 'Rekommenderad';

  @override
  String get languageAllHeader => 'Alla språk';

  @override
  String get languageSuggestedBadge => 'Rekommenderad';

  @override
  String get languageSearchHint => 'Sök…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Daglig vägledning';

  @override
  String get categorySlot02 => 'Tro & tillit';

  @override
  String get categorySlot03 => 'Bönereflektion';

  @override
  String get categorySlot04 => 'Tålamod & hopp';

  @override
  String get categorySlot05 => 'Söka förlåtelse';

  @override
  String get categorySlot06 => 'Barmhärtighet & medkänsla';

  @override
  String get categorySlot07 => 'Tro & styrka';

  @override
  String get categorySlot08 => 'Tacksamt hjärta';

  @override
  String get categorySlot09 => 'Livets syfte';

  @override
  String get categorySlot10 => 'Familjeband';

  @override
  String get categorySlot11 => 'Inre fred';

  @override
  String get categorySlot12 => 'Profetisk visdom';

  @override
  String get categorySlot13 => 'God karaktär';

  @override
  String get categorySlot14 => 'Motstå frestelse';

  @override
  String get categorySlot15 => 'Kvällsdhikr';

  @override
  String get categoryCustom => 'Personlig reflektion';

  @override
  String get dhikrMeaningSubhanallah => 'Ära vare Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'All ära tillhör Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah är den största';

  @override
  String get quranVerseHeartAtRest =>
      'Sannerligen, i Allahs påminnelse finner hjärten ro.';

  @override
  String get promptHint =>
      'Tryck på en kategori för islamisk vägledning och reflektion';

  @override
  String get currentLanguage => 'Aktuellt språk';

  @override
  String get settingsLanguage => 'Språkinställningar';

  @override
  String get settingsTitle => 'Inställningar';

  @override
  String get chooseLanguage => 'Välj ditt språk';

  @override
  String get continueCta => 'Fortsätt';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ord',
      one: '$count ord',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Alternativ';

  @override
  String get newCta => 'Ny';

  @override
  String get actionsTitle => 'Vad vill du göra?';

  @override
  String get copy => 'Kopiera';

  @override
  String get share => 'Dela';

  @override
  String get close => 'Stäng';

  @override
  String get copiedToast => 'Kopierad till urklipp';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Kunde inte generera ett nytt svar';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nVill du försöka igen?';
  }

  @override
  String get cancelCta => 'Avbryt';

  @override
  String get retryCta => 'Försök igen';

  @override
  String get authTitle => 'Skapa ditt konto';

  @override
  String get continueAsGuest => 'Fortsätt som gäst';

  @override
  String get signInGoogle => 'Logga in med Google';

  @override
  String get signInApple => 'Logga in med Apple';

  @override
  String get signInEmail => 'Logga in med e-post';

  @override
  String get upgradeWithApple => 'Fortsätt med Apple';

  @override
  String get mustAccept =>
      'Du måste acceptera villkoren och godkänna sekretesspolicyn.';

  @override
  String get termsLabel => 'Jag accepterar användarvillkoren';

  @override
  String get privacyLabel => 'Jag har läst sekretesspolicyn';

  @override
  String get marketingOptIn =>
      'Jag samtycker till att motta nyheter och erbjudanden';

  @override
  String get openTerms => 'Användarvillkor';

  @override
  String get openPrivacy => 'Sekretesspolicy';

  @override
  String get accountSection => 'Konto';

  @override
  String get guestMode => 'Gästläge';

  @override
  String get signedIn => 'Inloggad';

  @override
  String get upgradeHint =>
      'Spara dina reflektioner på flera enheter genom att skapa ett konto.';

  @override
  String get upgradeWithGoogle => 'Fortsätt med Google';

  @override
  String get signOut => 'Logga ut';

  @override
  String get snackUpgraded => 'Konto uppgraderat med Google ✅';

  @override
  String get snackSignedIn => 'Inloggad med Google ✅';

  @override
  String get snackSignedOut => 'Utloggad';

  @override
  String get snackSignedInApple => 'Inloggad med Apple ✅';

  @override
  String get snackSignedInGoogle => 'Inloggad med Google ✅';

  @override
  String get snackUpgradedApple => 'Konto uppgraderat med Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Konto uppgraderat med Google ✅';

  @override
  String get historyTitle => 'Tidigare reflektioner';

  @override
  String get historyOpenCta => 'Tidigare reflektioner';

  @override
  String get historyEmpty => 'Inga sparade reflektioner än.';

  @override
  String get historyDeleteTitle => 'Radera reflektion?';

  @override
  String get historyDeleteBody =>
      'Detta raderar permanentligen det valda objektet.';

  @override
  String get deleteCta => 'Radera';

  @override
  String get historyButton => 'Tidigare reflektioner';

  @override
  String get historyEmptyTitle => 'Inga reflektioner än';

  @override
  String get historyEmptyBody =>
      'Generera något först — dina sparade objekt visas här.';

  @override
  String get historyDelete => 'Radera';

  @override
  String get footerTitle => 'Med Wilaya, Iman och Sabr';

  @override
  String get footerSubtitle => 'En bön i taget';

  @override
  String get genericErrorSnack => 'Något gick fel — försök igen om en stund.';

  @override
  String get upgradeAccountCta =>
      'Spara dina reflektioner på flera enheter – skapa ett konto';

  @override
  String get deleteAccount => 'Radera konto';

  @override
  String get exportData => 'Exportera mina data';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Det är gott själv 🐯\nAyara behöver en stund innan nästa…';

  @override
  String get rateDailyLimit =>
      'Du är slut på reflektioner för nu.\nFå fler reflektioner eller uppgradera till Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Du har använt alla dina reflektioner.\nFyll på eller uppgradera till Wilaya för att fortsätta.';

  @override
  String get rateGraceCreditsExhausted =>
      'Du är slut på reflektioner för nu.\nFå fler reflektioner eller uppgradera till Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya låser upp premiumfunktioner, framtida kategorier och en speciell badge.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Dina reflektioner är tomma just nu. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Kunde inte kontrollera dina reflektioner: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Något gick fel när dina reflektioner kontrollerades.';

  @override
  String get aiFallbackGeneric => 'Något gick fel — försök igen om en stund.';

  @override
  String get limitSectionTitle => 'Reflektioner';

  @override
  String get limitTodayLabel => 'Användning';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Återstående reflektioner: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Läser in…';

  @override
  String get limitLoadingLabelDescription =>
      'Visas i reflektionskort medan användningsstatistik hämtas.';

  @override
  String get aiLimitTitle => 'Reflektioner';

  @override
  String get aiLimitSubtitle =>
      'Varje svar använder 1 reflektion. Standard inkluderar startreflektioner. Wilaya låser upp premiumkategorier och möjliggör påfyllning.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflektioner använt';
  }

  @override
  String get creditsSectionTitle => 'Reflektioner';

  @override
  String get creditsUsageLabel => 'Användning';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Återstående reflektioner: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Läser in…';

  @override
  String get creditsLoadingLabelDescription =>
      'Visas medan reflektionsstatistik hämtas.';

  @override
  String get creditsTitle => 'Reflektioner';

  @override
  String get creditsSubtitle =>
      'Varje svar använder 1 reflektion. Standard inkluderar startreflektioner. Wilaya låser upp premiumkategorier och möjliggör påfyllning.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflektioner använt';
  }

  @override
  String get settingsDeleteTitle => 'Radera konto';

  @override
  String get settingsDeleteDescription =>
      'Radera ditt konto och all tillhörande data permanent.';

  @override
  String get settingsDeleteButtonLabel => 'Radera mitt konto';

  @override
  String get settingsDeleteDialogTitle => 'Radera konto?';

  @override
  String get settingsDeleteDialogBody =>
      'Denna åtgärd är permanent och kan inte ångras.\n\nAlla dina chattes, historik och kontoinformation raderas.';

  @override
  String get settingsDeleteDialogCancel => 'Avbryt';

  @override
  String get settingsDeleteDialogConfirm => 'Radera';

  @override
  String get settingsFreeLimitUsedTitle => 'Startreflektioner använt';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Startreflektionerna för denna enhet har använts. Uppgradera till Wilaya eller köp fler reflektioner för att fortsätta.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Startreflektioner använt';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Startreflektionerna för denna enhet har använts. Uppgradera till Wilaya eller köp fler reflektioner för att fortsätta.';

  @override
  String get deviceBoundError =>
      'Denna enhet är redan länkad till ett annat konto. Logga in med det ursprungliga kontot.';

  @override
  String get premiumTitle => 'Wilaya-läge';

  @override
  String get premiumSubtitleBasic => 'Lås upp Ayara-upplevelsen fullt ut.';

  @override
  String get premiumSubtitlePremium =>
      'Du är på Wilaya. Behöver du fler reflektioner?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Aktuell plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflektioner: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Köp är inte tillgängliga just nu.';

  @override
  String get premiumSignInToPurchase =>
      'Logga in för att köpa reflektioner eller låsa upp Wilaya.';

  @override
  String get premiumRestorePurchases => 'Återställ köp';

  @override
  String get premiumProcessing => 'Bearbetar…';

  @override
  String get premiumRestoreHintTitle =>
      'Redan köpt Wilaya eller reflektioner på denna enhet eller en annan?';

  @override
  String get premiumRestoreHintBody => 'Återställ dina köp om de inte visas.';

  @override
  String get premiumBuyCredits200 => 'Köp 200 reflektioner';

  @override
  String get premiumBuyCredits400 => 'Köp 400 reflektioner';

  @override
  String get premiumBecomePremiumOneTime => 'Uppgradera till Wilaya-läge';

  @override
  String get premiumTopupHint =>
      'Med Wilaya kan du fylla på med extra reflektioner närhelst du behöver.';

  @override
  String get premiumUpgradeCta => 'Uppgradera';

  @override
  String get premiumRequiredForCategory =>
      'Denna kategori är endast tillgänglig för Wilaya-användare. Uppgradera i Inställningar för att låsa upp allt premiuminnehål.';

  @override
  String get premiumBenefitsBasic =>
      'Lås upp Wilaya för att få extra reflektioner, få tillgång till premiumkategorier och fortsätta närhelst du behöver vägledning.';

  @override
  String get premiumBenefitsPremium =>
      'Du är i Wilaya-läge. Om du börjar få slut, lägg till extra reflektioner och fortsätt utan avbrott.';

  @override
  String get premiumButtonBecomePremium => 'Lås upp Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Lägg till 1000 reflektioner';

  @override
  String get premiumBadge => 'Wilaya aktiv';

  @override
  String get premiumLoadingStore => 'Läser in butik…';

  @override
  String get premiumProductNotAvailable =>
      'Denna produkt är inte tillgänglig i butiken än. Försök igen senare.';

  @override
  String get premiumPurchaseError => 'Något gick fel med köpet. Försök igen.';

  @override
  String get premiumBuyCredits100 => 'Lägg till 100 reflektioner';

  @override
  String get premiumFeatureLocked =>
      'Lås upp Wilaya för att få tillgång till denna funktion.';

  @override
  String get lockedCategoriesHint =>
      'Vissa kategorier är reserverade för Wilaya-medlemmar. Lås upp dem för att utforska varje reflektion på din resa.';

  @override
  String get freePlanBlockedTitle => 'Du har använt upp dina startreflektioner';

  @override
  String get freePlanBlockedBody =>
      'Du är på Standard-planen med startreflektioner och du har nått gränsen. För att fortsätta — och låsa upp premiumkategorier — uppgradera till Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Se Wilaya-alternativ nedan';

  @override
  String get graceBlockedTitle => 'Du har använt upp dina startreflektioner';

  @override
  String get graceBlockedBody =>
      'Du är på Standard-planen med startreflektioner och du har nått gränsen. För att fortsätta — och låsa upp premiumkategorier — uppgradera till Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Se Wilaya-alternativ nedan';

  @override
  String get rateGuestMustSignIn =>
      'Logga in för att använda Ayara och dina reflektioner.';

  @override
  String get guestNoCreditsTitle => 'Gästläge';

  @override
  String get guestNoCreditsBody =>
      'Som gäst kan du bläddra i appen, men du kan inte använda reflektioner. Logga in senare i Inställningar för att använda reflektioner och låsa upp köp.';

  @override
  String get guestDialogContinue => 'Fortsätt';

  @override
  String get guestDialogLoginInstead => 'Logga in istället';

  @override
  String get optionalLabel => 'valfritt';

  @override
  String get accountDeleteSuccessTitle => 'Konto borttaget';

  @override
  String get accountDeleteSuccessBody =>
      'Ditt konto och tillhörande data har raderats framgångsrikt.';

  @override
  String get accountDeleteSuccessClose => 'Stäng';

  @override
  String get accountDeleteErrorTitle => 'Kunde inte radera konto';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Omautentisering avbröts. Logga in igen och försök radera igen.';

  @override
  String get accountDeleteReauthRequired =>
      'Kontoborttagning kräver en nyligen genomförd inloggning. Logga ut, logga in igen och försök igen.';

  @override
  String get settingsDeletePermanentWarning =>
      'Denna åtgärd är permanent och kan inte ångras. All data kopplad till ditt konto raderas.';

  @override
  String get dailyGraceTitle => 'Daglig vägledning';

  @override
  String get dailyGraceScriptureLabel => 'DAGENS VERS';

  @override
  String get dailyGraceSaintLabel => 'VECKANS FIGUR';

  @override
  String get dailyGraceReflectionLabel => 'KVÄLLSREFLEKTION';

  @override
  String get dailyGraceCopiedToast => 'Vers kopierad till urklipp';

  @override
  String get locationConsentLabel =>
      'Tillåt Ayara att använda min plats för Qibla-riktning och bönetider';

  @override
  String get locationConsentHint =>
      'Används endast för dessa funktioner. Din plats delas aldrig eller lagras.';

  @override
  String get askPageTitle => 'Fråga Ayara';

  @override
  String get askPageDescription =>
      'Fråga något om tro, bön, liv eller islamisk praktik och få vägledning rotad i Koranen och lärornas från Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Skriv din fråga här…';

  @override
  String get askPageSubmitCta => 'Fråga';

  @override
  String get askPageInputEmptyError => 'Skriv en fråga först.';

  @override
  String get askResultYourQuestion => 'Din fråga';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Vetter mot Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Rotera din telefon tills den gyllene nålen pekar uppåt.\nDen riktningen pekar mot Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS-signalen är svag. Gå utomhus och tryck på Försök igen.';

  @override
  String get qiblaRetry => 'Försök igen';

  @override
  String get qiblaTitle => 'Qibla-riktning';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km till Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Plats krävs';

  @override
  String get qiblaLocationNeededBody =>
      'Tillåt platsåtkomst så att Ayara kan beräkna riktningen till Kaaba i Makkah från var du än är.';

  @override
  String get qiblaOpenSettings => 'Öppna inställningar';

  @override
  String get qiblaCompassLoading => 'Hittar din position…';

  @override
  String get qiblaTowardMecca => 'Mot Makkah';

  @override
  String get prayerTimesTitle => 'Bönetider';

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
  String get prayerTimesLocationNeededTitle => 'Plats krävs';

  @override
  String get prayerTimesLocationNeededBody =>
      'Tillåt platsåtkomst så att Ayara kan beräkna exakta bönetider för din stad.';

  @override
  String get prayerTimesNextLabel => 'Nästa';

  @override
  String get prayerTimesDoneLabel => 'Klart';

  @override
  String get monthlyPrayerTimesTitle => 'Månatliga bönetider';

  @override
  String get monthlyPrayerTimesViewButton => 'Visa hela månaden';

  @override
  String get monthlyPrayerTimesNextMonth => 'Nästa månad';

  @override
  String get monthlyPrayerTimesDayHeader => 'Dag';

  @override
  String get sharePrayerTimes => 'Dela bönetider';

  @override
  String get notificationsSectionTitle => 'Aviseringar';

  @override
  String get notificationsSectionSubtitle =>
      'Bönemeddelanden, kalenderhändelser & mer';

  @override
  String get dailyReflectionReminderTitle => 'Daglig reflektion';

  @override
  String get dailyReflectionReminderDescription =>
      'En skonsam daglig påminnelse om att öppna Ayara och ansluta till din tro.';

  @override
  String get dailyReflectionReminderEnable => 'Aktivera daglig påminnelse';

  @override
  String get dailyReflectionReminderTimeLabel => 'Påminnelsetid';

  @override
  String get prayerNotificationsTitle => 'Bönemeddelanden';

  @override
  String get prayerNotificationsDescription =>
      'Få en skonsam påminnelse innan varje bönetid för att hjälpa dig att förbli ansluten under dagen.';

  @override
  String get prayerNotificationsEnable => 'Aktivera bönemeddelanden';

  @override
  String get prayerNotificationsOpenSettings => 'Öppna aviseringsinställningar';

  @override
  String get prayerNotificationsDenied => 'Aviseringar är inaktiverade';

  @override
  String get prayerNotificationsDeniedHint =>
      'Gå till Inställningar och tillåt aviseringar för Ayara för att ta emot bönemeddelanden.';

  @override
  String get notificationsConsentLabel => 'Tillåt aviseringar för bönetider';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Gryningsbönen';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr är Ahl al-Bayts bönemorgon. Imam Ali (AS) sa: Vårda gryningsbönen som du skyddar din mest värdefulla sak. Stå upp, rena dig själv och stå inför Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Middagsbönen';

  @override
  String get prayerNotifBodyDhuhr =>
      'Imamerna från Ahl al-Bayt värderade varje stund av påminnelse. Pausa din dag, kombinera Dhuhr med Asr om det behövs, och återvänd ditt hjärta till Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Eftermiddagsbönen';

  @override
  String get prayerNotifBodyAsr =>
      'Vårda bönen, ty den är förbundet mellan dig och Allah. Asr-tiden är här — låt den inte gå förbi utan påminnelse.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Solnedgångsbönen';

  @override
  String get prayerNotifBodyMaghrib =>
      'Solen har gått ned — en stund som Ahl al-Bayt höll heligt för bön. Ofra Maghrib och öppna dina händer för Allah i dua innan natten börjar.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Nattbönen';

  @override
  String get prayerNotifBodyIsha =>
      'Avsluta din dag i sällskap med Allah. Imamerna uppmuntrade Salat al-Layl efter Isha — men först, slutför din Isha och avsluta dagen med Hans påminnelse.';

  @override
  String get outOfReflectionsBannerText =>
      'Du har använt alla dina reflektioner';

  @override
  String get outOfReflectionsBannerCta => 'Få fler';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tryck på cirkeln för att räkna';

  @override
  String get dhikrResetButton => 'Återställ';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Du har slutfört 100 påminnelser till Allah. Må de vara ett ljus för ditt hjärta.';

  @override
  String get disclaimerTitle => 'Om denna apps vägledning';

  @override
  String get disclaimerBody =>
      'Ayara tillhandahåller islamiska reflektioner, påminnelser och andligt innehål för att stödja din personliga trosresa, rotad i Koranen och lärordan från Ahl al-Bayt. Detta innehål erbjuds endast för allmänna informations- och inspirationsändamål.\n\nAyara ersätter inte kvalificerad lärdhet.\nVägledningen i denna app är inte ett substitut för en lärd islamisk lärd, marja\', eller teologiskt utbildad lärare. I shiaislam är religiös vägledning rotad i Ja\'fari-skolan för juridik (fiqh) och traditionen att följa en levande Marja\' (emuleringskälla) — en kvalificerad jurist vars domar vägleder troende i religiös praktik. Om du har frågor om religiösa domar, halal och haram-frågor, eller personliga religiösa skyldigheter, ber vi dig att söka råd från en kvalificerad Marja\' eller en lärd i din gemenskap.\n\nDenna app utfärdar inte religiösa domar.\nAyara gör inga auktoritativa bestämmelser om fiqh-frågor eller personliga religiösa skyldigheter. Ingenting här bör behandlas som en fatwa eller bindande religiös instruktion.\n\nAhl al-Bayts centralitet.\nI shiaislam är Profeten Muhammad ﷺ och hans rengjorda hushål — Ahl al-Bayt — de auktoritativa ledarna för Islams gemenskap efter Koranen. De tolv Imamerna från Ahl al-Bayt är de gudomligt utsedda tolkarna av islamisk lärdhet. Innehåll i denna app återspeglar denna tradition och strävar efter att hedra den troget.\n\nGemenskap är viktigt.\nDenna app syftar till att uppmuntra ditt engagemang med tron samtidigt som det djupt respekterar den vitala rollen för din lokala moské, islamiska centrum och religiösa gemenskap. Vi uppmuntrar dig att förbli ansluten till och lära av kvalificerade lärare nära dig.';

  @override
  String get disclaimerClose => 'Jag förstår';

  @override
  String get disclaimerInfoTooltip => 'Om denna apps vägledning';

  @override
  String get disclaimerSettingsSubtitle =>
      'Endast för allmän information. Tryck för att läsa hela ansvarsfriskrivningen.';

  @override
  String get disclaimerSectionHeader => 'Vägledningsansvarsfriskrivning';

  @override
  String get navHome => 'Hem';

  @override
  String get navReflect => 'Reflektera';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get dashboardToday => 'IDAG';

  @override
  String get dashboardComingUp => 'Kommer snart';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dagar',
      one: 'dag',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Snabbåtkomst';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Vägledning';

  @override
  String get quickActionPrayerTimes => 'Bönetider';

  @override
  String get askAyaraTitle => 'Fråga Ayara';

  @override
  String get askAyaraSubtitle =>
      'Ställ en islamisk fråga och få ett genomtänkt, vägledd svar.';

  @override
  String get askAyaraHint => 't.ex. Vad är betydelsen av Ramadan?';

  @override
  String get askAyaraSubmit => 'Fråga';

  @override
  String get wisdomOfTheDayTitle => 'Dagens visdom';

  @override
  String get calendarScreenTitle => 'Islamisk kalender';

  @override
  String get calendarUpcomingOccasions => 'Kommande tillfällen';

  @override
  String get calendarOccasionRemindersTitle => 'Påminnelser för tillfällen';

  @override
  String get calendarOccasionRemindersHint =>
      'Underrättad kvällen före varje tillfälle';

  @override
  String get calendarNotifPermissionDenied =>
      'Aviseringsbehörighet nekad. Aktivera den i dina enhetsinställningar.';

  @override
  String get calendarNoEvents => 'Inga kommande evenemang hittades.';

  @override
  String get calendarAddToPhone => 'Lägg till i telefonens kalender';

  @override
  String get calendarAddedToPhone => 'Tillagd i kalendern';

  @override
  String get calendarCountdownToday => 'IDAG';

  @override
  String get calendarCountdownTomorrow => 'IMORGON';

  @override
  String calendarCountdownDays(int days) {
    return 'om $days dagar';
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
  String get calendarMonthApr => 'Apr';

  @override
  String get calendarMonthMay => 'Maj';

  @override
  String get calendarMonthJun => 'Jun';

  @override
  String get calendarMonthJul => 'Jul';

  @override
  String get calendarMonthAug => 'Aug';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Okt';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dec';

  @override
  String get calendarSeasonMuharramEarly =>
      'Muharrams dagar — kom ihåg Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — dagar av sorg och reflektion';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — fyrtio dagar av Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Vägen till Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — uppenbaringens gryning';

  @override
  String get calendarSeasonMidShaban =>
      'Sha\'bans mitt — Imam al-Mahdi\'s (AJ) födelsedag';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — Koranens månad';

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
  String get duasScreenTitle => 'Duas & Ziyarat';

  @override
  String get duasSearchHint => 'Sök duas, ziyarat…';

  @override
  String get duasFilterAll => 'Alla';

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
  String get duasEmpty => 'Inga duas hittades.';

  @override
  String get duaCategoryDaily => 'Dagligt';

  @override
  String get duaCategoryWeekly => 'Veckovis';

  @override
  String get duaCategoryOccasions => 'Tillfällen';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Födelsedag';

  @override
  String get eventTypeMartyrdom => 'Martyrium';

  @override
  String get eventTypeOccasion => 'Tillfälle';

  @override
  String get duaCopyTooltip => 'Kopiera översättning';

  @override
  String get duaToggleTransliteration => 'Translitterering';

  @override
  String get duaToggleTranslation => 'Översättning';

  @override
  String get duaAskAiLabel => 'Fråga Ayara att förklara denna dua';

  @override
  String get duaAskAiLockedLabel => 'Fråga Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara-förklaringar är tillgängliga för Wilaya-medlemmar. Uppgradera i Inställningar.';

  @override
  String duaAiComingSoon(String name) {
    return 'Fråga Ayara om \"$name\" — kommer snart!';
  }

  @override
  String get duaCopiedToast => 'Dua kopierad till urklipp.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah är den största';

  @override
  String get tasbihAlhamdulillahMeaning => 'All ära tillhör Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Ära vare Allah';

  @override
  String get tasbihResetTooltip => 'Återställ';

  @override
  String get tasbihCompleteTitle => 'Tasbih slutfört';

  @override
  String get tasbihCompleteMessage => 'Må Allah acceptera din dhikr.';

  @override
  String get tasbihTapHint => 'Tryck var som helst för att räkna';

  @override
  String get tasbihatScreenTitle => 'Bönevägledning';

  @override
  String get tasbihatScreenSubtitle => 'BÖNEÄRAN';

  @override
  String get tasbihatScreenDescription =>
      'En komplett vägledning till äran som reciteras under och efter de dagliga bönerna — enligt Ahl al-Bayts (a) tradition.';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Reciterad under den 3:e och 4:e rakʿah';

  @override
  String get tasbihatArba3Info =>
      'I shia-juridik ersätter Tasbiḥāt al-Arbaʿa Surah al-Fatiha i den 3:e och 4:e rakʿah av Dhuhr, Asr, Maghrib och Isha. Det är obligatoriskt (wājib) att reciteras en gång och rekommenderas (mustaḥabb) att reciteras tre gånger.';

  @override
  String get tasbihatArba3Translation =>
      'Ära vare Allah · All ära tillhör Allah\nDet finns ingen gud utom Allah · Allah är den största';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitation slutförd';

  @override
  String get tasbihatArba3CompleteMessage => 'Må din bön accepteras — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tryck efter varje recitation';

  @override
  String get tasbihatZahraSubtitle => 'Efter varje bön · 100 pärlor';

  @override
  String get tasbihatZahraOriginLabel => 'Ursprung';

  @override
  String get tasbihatZahraHadith =>
      'Fru Fatima al-Zahra (sa) bad Profeten ﷺ om en tjänare. Han sa: \"Ska jag inte vägleda dig till något bättre? Reciterar Subḥānallāh 33 gånger, Alḥamdulillāh 33 gånger och Allāhu Akbar 34 gånger efter varje bön. Det är bättre för dig än en tjänare.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Öppna Tasbīḥ-räknare';

  @override
  String get tasbihatDuasTitle => 'REKOMMENDERAD DUAS';

  @override
  String get tasbihatDuasSubtitle => 'Efter att du slutfört din bön';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Efter varje obligatorisk bön';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Den som reciterar Āyat al-Kursī efter varje obligatorisk bön, ingenting står mellan honom och paradiset utom döden. Imam al-Bāqir (a) sa att det är bland de största verserna i Koranen.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen => 'Efter varje bön · förseglar alla böner';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Att sända hälsningar till Profeten ﷺ och hans rengjorda familj (Āl Muḥammad) rekommenderas för att försegla varje dua. Imam al-Ṣādiq (a) sa: \"Någon dua är upphängd tills du sänder ṣalawāt på Muḥammad och hans familj.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen => 'Efter varje bön · för Imamens av vår tid';

  @override
  String get tasbihatDuaFarajSource =>
      'Undervisad av Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'En dua för återkomsten av Imam al-Mahdī (af), den tolfte imamen, undervisad av hans far. Den reciteras ofta av många shiamuslimer efter bön som en handling av hängivenhet till den levande imamen.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ för Fru Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Efter Maghrib & Isha · särskilt rekommenderad';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) sa att recitation av Tasbīḥ al-Zahrā efter Isha före sömn är bättre än 1000 rakʿahs av valfri bön. Dess ljus stiger till himlen.';

  @override
  String get tasbihFatimaGiftPre => 'En gåva från Profeten';

  @override
  String get tasbihFatimaGiftPost => 'reciterad efter varje bön';

  @override
  String get prayerTrackerTitle => 'BÖNEÖVERVAKNING';

  @override
  String get prayerTrackerPrayed => 'Bad';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count dagars serie';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Alla böner slutförda idag. Må Allah acceptera.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Slutförd idag';

  @override
  String get dhikrTrackerNotDoneToday => 'Inte gjord idag';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count dagars serie';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ-påminnelse';

  @override
  String get dhikrReminderDescription =>
      'En skonsam daglig påminnelse om att reciterar din Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Aktivera Tasbīḥ-påminnelse';

  @override
  String get dhikrReminderTimeLabel => 'Påminnelsetid';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Daglig hadith';

  @override
  String get hadithLabelArabic => 'ARABISK';

  @override
  String get hadithLabelTranslation => 'ÖVERSÄTTNING';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Dela denna hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Föregående';

  @override
  String get hadithNavNext => 'Nästa';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'De Fjorton Ofelbara';

  @override
  String get imamsScreenSubtitle =>
      'Profeten, Lady Fatima och de Tolfte Imamerna — de renade och ofelbara vägledarna inom Tolfte Shia Islam';

  @override
  String get imamLabelBorn => 'Född';

  @override
  String get imamLabelMartyrdom => 'Martyrium';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFI';

  @override
  String get imamSectionFamousSaying => 'FAMOUS SAYING';

  @override
  String get imamRoleProphet => 'Den sista Profeten';

  @override
  String get imamRoleInfallible => 'Den felöse';

  @override
  String get imamOrdinal1 => '1:e Imamen';

  @override
  String get imamOrdinal2 => '2:e Imamen';

  @override
  String get imamOrdinal3 => '3:e Imamen';

  @override
  String get imamOrdinal4 => '4:e Imamen';

  @override
  String get imamOrdinal5 => '5:e Imamen';

  @override
  String get imamOrdinal6 => '6:e Imamen';

  @override
  String get imamOrdinal7 => '7:e Imamen';

  @override
  String get imamOrdinal8 => '8:e Imamen';

  @override
  String get imamOrdinal9 => '9:e Imamen';

  @override
  String get imamOrdinal10 => '10:e Imamen';

  @override
  String get imamOrdinal11 => '11:e Imamen';

  @override
  String get imamOrdinal12 => '12:e Imamen';

  @override
  String get duaAudioScreenTitle => 'Lyssna på Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Välj en dua att lyssna på. Tryck på panelen för att spela eller pausa.';

  @override
  String get duaAudioComingSoonMessage =>
      'Ljud för denna dua blir tillgänglig i en kommande uppdatering.';

  @override
  String get duaAudioClose => 'Stäng';

  @override
  String get duaAudioError =>
      'Kunde inte ladda ljud. Kontrollera din anslutning.';

  @override
  String get duaAudioMetaTransmittedBy => 'Överförd av';

  @override
  String get duaAudioMetaOccasion => 'Tillfälle';

  @override
  String get duaAudioMetaDuration => 'Varaktighet';

  @override
  String get quickActionDailyHadith => 'Daglig hadith';

  @override
  String get quickAction14Masumeen => 'Fjorton Ofelbara';

  @override
  String get quickActionListenDuas => 'Lyssna';

  @override
  String get quickActionTasbihat => 'Bönevägledning';

  @override
  String get pilgrimageSectionTitle => 'Den heliga resan';

  @override
  String get pilgrimageSectionSubtitle =>
      'Kompletta guider till Hajj & Umrah — pilgrimage till Allahs heliga hus i Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Islams femte pelare';

  @override
  String get hajjCardDescription =>
      'Den stora årliga pilgrimage — obligatorisk en gång i livet för varje kapabel muslim';

  @override
  String get hajjScreenTitle => 'Hajj-vägledning';

  @override
  String get hajjScreenSubtitle =>
      'Steg-för-steg-vägledning till den stora pilgrimage';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Den mindre pilgrimage';

  @override
  String get umrahCardDescription =>
      'En djupt givande andlig resa som kan genomföras när som helst under året';

  @override
  String get umrahScreenTitle => 'Umrah-vägledning';

  @override
  String get umrahScreenSubtitle =>
      'Steg-för-steg-vägledning till den mindre pilgrimage';

  @override
  String get pilgrimageStepsTitle => 'Ritualer & steg';

  @override
  String get pilgrimageImportantNotesTitle => 'Viktiga anteckningar';

  @override
  String get pilgrimageDuaTitle => 'Dua för detta steg';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh-not';

  @override
  String get pilgrimageComplete => '✓ Komplett';

  @override
  String get pilgrimageMarkDone => 'Markera som slutförd';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done av $total steg';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Shia-pilgrimer';

  @override
  String get pilgrimageShiaNoteBody =>
      'Många shiapilgrimer reser också till Medina för ziyarat av Profeten Muhammad (SAW) vid Masjid al-Nabawi och gravarna vid Jannat al-Baqi. Dessa besök bär djup andlig betydelse, även om de inte själva är riter av Hajj.';

  @override
  String get hajjIntro =>
      'Hajj är den femte pelaren av Islam, obligatorisk en gång i livet för varje muslim som är fysiskt och ekonomiskt kapabel. För de flesta Tolfte shiapilgrimer idag innebär detta Hajj al-Tamattu\', utförd i månaden Dhul Hijjah i fotspåren av Profeten Ibrahim (AS), hans son Ismail (AS) och Lady Hajar. Denna guide följer Ja\'fari-ramverket för riterna, medan ziyarat i Medina förblir en djupt älskad resa före eller efter Hajj.';

  @override
  String get umrahIntro =>
      'Umrah är den mindre pilgrimage till Mecca och kan, till skillnad från Hajj, genomföras när som helst på året. Även om det inte är obligatoriskt, bär det enorm andlig belöning och anses vara en mycket rekommenderad akthandling. Det delar flera ritualer med Hajj men är kortare, bestående av fyra huvudritualer.';

  @override
  String get voiceInputTitle => 'Röstinmatning';

  @override
  String get voiceInputMicTitle => 'Mikrofon';

  @override
  String get voiceInputMicSubtitle =>
      'Tala din inmatning till Ask Ayara istället för att skriva.';

  @override
  String get voiceInputMicDenied => 'Mikrofonåtkomst nekades.';

  @override
  String get voiceInputSpeak => 'Tala istället';

  @override
  String get voiceInputListening => 'Lyssnar…';

  @override
  String get voiceInputPermissionDenied =>
      'Mikrofonåtkomst krävs för röstinmatning.';
}
