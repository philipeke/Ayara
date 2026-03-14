// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Vælg dit sprog';

  @override
  String get languageSelectSub => 'Du kan ændre dette senere i Indstillinger';

  @override
  String get actionContinue => 'Fortsæt';

  @override
  String get languageSuggestedHeader => 'Foreslået';

  @override
  String get languageAllHeader => 'Alle sprog';

  @override
  String get languageSuggestedBadge => 'Foreslået';

  @override
  String get languageSearchHint => 'Søg…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Daglig vejledning';

  @override
  String get categorySlot02 => 'Iman og tillid';

  @override
  String get categorySlot03 => 'Refleksion over bøn';

  @override
  String get categorySlot04 => 'Tålmodighed og håb';

  @override
  String get categorySlot05 => 'Søg tilgivelse';

  @override
  String get categorySlot06 => 'Barmhjertighed og medfølelse';

  @override
  String get categorySlot07 => 'Troens styrke';

  @override
  String get categorySlot08 => 'Taknemmeligt hjerte';

  @override
  String get categorySlot09 => 'Livets formål';

  @override
  String get categorySlot10 => 'Familiebånd';

  @override
  String get categorySlot11 => 'Indre fred';

  @override
  String get categorySlot12 => 'Profetens visdom';

  @override
  String get categorySlot13 => 'God karakter';

  @override
  String get categorySlot14 => 'Modstå fristelse';

  @override
  String get categorySlot15 => 'Aften-dhikr';

  @override
  String get categoryCustom => 'Personlig refleksion';

  @override
  String get dhikrMeaningSubhanallah => 'Ære være Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Al lovprisning tilkommer Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah er den største';

  @override
  String get quranVerseHeartAtRest =>
      'Sandelig, ved Allahs ihukommelse finder hjerter ro.';

  @override
  String get promptHint =>
      'Tryk på en kategori for islamisk vejledning og refleksion';

  @override
  String get currentLanguage => 'Nuværende sprog';

  @override
  String get settingsLanguage => 'Sprogindstillinger';

  @override
  String get settingsTitle => 'Indstillinger';

  @override
  String get chooseLanguage => 'Vælg dit sprog';

  @override
  String get continueCta => 'Fortsæt';

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
  String get optionsCta => 'Valgmuligheder';

  @override
  String get newCta => 'Ny';

  @override
  String get actionsTitle => 'Hvad vil du gerne gøre?';

  @override
  String get copy => 'Kopiér';

  @override
  String get share => 'Del';

  @override
  String get close => 'Luk';

  @override
  String get copiedToast => 'Kopieret til udklipsholder';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Kunne ikke generere et nyt svar';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nVil du prøve igen?';
  }

  @override
  String get cancelCta => 'Annuller';

  @override
  String get retryCta => 'Prøv igen';

  @override
  String get authTitle => 'Opret din konto';

  @override
  String get continueAsGuest => 'Fortsæt som gæst';

  @override
  String get signInGoogle => 'Log ind med Google';

  @override
  String get signInApple => 'Log ind med Apple';

  @override
  String get signInEmail => 'Log ind med e-mail';

  @override
  String get upgradeWithApple => 'Fortsæt med Apple';

  @override
  String get mustAccept =>
      'Du skal acceptere vilkårene og anerkende privatlivspolitikken.';

  @override
  String get termsLabel => 'Jeg accepterer servicevilkårene';

  @override
  String get privacyLabel => 'Jeg har læst privatlivspolitikken';

  @override
  String get marketingOptIn => 'Jeg accepterer at modtage nyheder og tilbud';

  @override
  String get openTerms => 'Servicevilkår';

  @override
  String get openPrivacy => 'Privatlivspolitik';

  @override
  String get accountSection => 'Konto';

  @override
  String get guestMode => 'Gæstetilstand';

  @override
  String get signedIn => 'Logget ind';

  @override
  String get upgradeHint =>
      'Gem dine refleksioner på tværs af enheder ved at oprette en konto.';

  @override
  String get upgradeWithGoogle => 'Fortsæt med Google';

  @override
  String get signOut => 'Log ud';

  @override
  String get snackUpgraded => 'Konto opgraderet med Google ✅';

  @override
  String get snackSignedIn => 'Logget ind med Google ✅';

  @override
  String get snackSignedOut => 'Logget ud';

  @override
  String get snackSignedInApple => 'Logget ind med Apple ✅';

  @override
  String get snackSignedInGoogle => 'Logget ind med Google ✅';

  @override
  String get snackUpgradedApple => 'Konto opgraderet med Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Konto opgraderet med Google ✅';

  @override
  String get historyTitle => 'Tidligere refleksioner';

  @override
  String get historyOpenCta => 'Tidligere refleksioner';

  @override
  String get historyEmpty => 'Ingen gemte refleksioner endnu.';

  @override
  String get historyDeleteTitle => 'Slet refleksion?';

  @override
  String get historyDeleteBody =>
      'Dette vil permanent fjerne det valgte element.';

  @override
  String get deleteCta => 'Slet';

  @override
  String get historyButton => 'Tidligere refleksioner';

  @override
  String get historyEmptyTitle => 'Ingen refleksioner endnu';

  @override
  String get historyEmptyBody =>
      'Generér noget først — dine gemte elementer vises her.';

  @override
  String get historyDelete => 'Slet';

  @override
  String get footerTitle => 'Med Wilaya, Iman og Sabr';

  @override
  String get footerSubtitle => 'Én bøn ad gangen';

  @override
  String get genericErrorSnack => 'Noget gik galt — prøv igen om et øjeblik.';

  @override
  String get upgradeAccountCta =>
      'Gem dine refleksioner på tværs af enheder – opret en konto';

  @override
  String get deleteAccount => 'Slet konto';

  @override
  String get exportData => 'Eksportér mine data';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Rolig nu 🐯\nAyara har brug for et øjeblik før den næste…';

  @override
  String get rateDailyLimit =>
      'Du er løbet tør for refleksioner lige nu.\nFå flere refleksioner eller opgradér til Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Du har brugt alle dine refleksioner.\nFyld op eller opgradér til Wilaya for at fortsætte.';

  @override
  String get rateGraceCreditsExhausted =>
      'Du er løbet tør for refleksioner lige nu.\nFå flere refleksioner eller opgradér til Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya låser op for premiumfunktioner, fremtidige kategorier og et særligt badge.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Dine refleksioner er tomme lige nu. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Kunne ikke kontrollere dine refleksioner: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Noget gik galt under kontrollen af dine refleksioner.';

  @override
  String get aiFallbackGeneric => 'Noget gik galt — prøv igen om et øjeblik.';

  @override
  String get limitSectionTitle => 'Refleksioner';

  @override
  String get limitTodayLabel => 'Brug';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Tilbageværende refleksioner: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Indlæser…';

  @override
  String get limitLoadingLabelDescription =>
      'Vises i refleksionskortet, mens brugsstatistik hentes.';

  @override
  String get aiLimitTitle => 'Refleksioner';

  @override
  String get aiLimitSubtitle =>
      'Hvert svar bruger 1 refleksion. Standard inkluderer startrefleksioner. Wilaya låser premiumkategorier op og gør opfyldning mulig.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total refleksioner brugt';
  }

  @override
  String get creditsSectionTitle => 'Refleksioner';

  @override
  String get creditsUsageLabel => 'Brug';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Tilbageværende refleksioner: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Indlæser…';

  @override
  String get creditsLoadingLabelDescription =>
      'Vises mens refleksionsstatistik hentes.';

  @override
  String get creditsTitle => 'Refleksioner';

  @override
  String get creditsSubtitle =>
      'Hvert svar bruger 1 refleksion. Standard inkluderer startrefleksioner. Wilaya låser premiumkategorier op og gør opfyldning mulig.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total refleksioner brugt';
  }

  @override
  String get settingsDeleteTitle => 'Slet konto';

  @override
  String get settingsDeleteDescription =>
      'Slet permanent din konto og alle tilknyttede data.';

  @override
  String get settingsDeleteButtonLabel => 'Slet min konto';

  @override
  String get settingsDeleteDialogTitle => 'Slet konto?';

  @override
  String get settingsDeleteDialogBody =>
      'Denne handling er permanent og kan ikke fortrydes.\n\nAlle dine chats, din historik og dine kontooplysninger bliver slettet.';

  @override
  String get settingsDeleteDialogCancel => 'Annuller';

  @override
  String get settingsDeleteDialogConfirm => 'Slet';

  @override
  String get settingsFreeLimitUsedTitle => 'Startrefleksioner brugt';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Startrefleksionerne for denne enhed er brugt. Opgradér til Wilaya eller køb flere refleksioner for at fortsætte.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Startrefleksioner brugt';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Startrefleksionerne for denne enhed er brugt. Opgradér til Wilaya eller køb flere refleksioner for at fortsætte.';

  @override
  String get deviceBoundError =>
      'Denne enhed er allerede knyttet til en anden konto. Log venligst ind med den oprindelige konto.';

  @override
  String get premiumTitle => 'Wilaya-tilstand';

  @override
  String get premiumSubtitleBasic => 'Lås op for den fulde Ayara-oplevelse.';

  @override
  String get premiumSubtitlePremium =>
      'Du er på Wilaya. Har du brug for flere refleksioner?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Nuværende plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Refleksioner: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Køb er ikke tilgængelige lige nu.';

  @override
  String get premiumSignInToPurchase =>
      'Log ind for at købe refleksioner eller låse Wilaya op.';

  @override
  String get premiumRestorePurchases => 'Gendan køb';

  @override
  String get premiumProcessing => 'Behandler…';

  @override
  String get premiumRestoreHintTitle =>
      'Har du allerede købt Wilaya eller refleksioner på denne eller en anden enhed?';

  @override
  String get premiumRestoreHintBody => 'Gendan dine køb, hvis de ikke vises.';

  @override
  String get premiumBuyCredits200 => 'Køb 200 refleksioner';

  @override
  String get premiumBuyCredits400 => 'Køb 400 refleksioner';

  @override
  String get premiumBecomePremiumOneTime => 'Opgradér til Wilaya-tilstand';

  @override
  String get premiumTopupHint =>
      'Med Wilaya kan du fylde op med ekstra refleksioner, når du har brug for det.';

  @override
  String get premiumUpgradeCta => 'Opgradér';

  @override
  String get premiumRequiredForCategory =>
      'Denne kategori er kun tilgængelig for Wilaya-brugere. Opgradér i Indstillinger for at låse alt premiumindhold op.';

  @override
  String get premiumBenefitsBasic =>
      'Lås Wilaya op for at få ekstra refleksioner, adgang til premiumkategorier og mulighed for at fortsætte, når du har brug for vejledning.';

  @override
  String get premiumBenefitsPremium =>
      'Du er i Wilaya-tilstand. Hvis du er ved at løbe tør, så tilføj nogle ekstra refleksioner og fortsæt uden afbrydelser.';

  @override
  String get premiumButtonBecomePremium => 'Lås Wilaya op';

  @override
  String get premiumButtonTopup1000 => 'Tilføj 1000 refleksioner';

  @override
  String get premiumBadge => 'Wilaya aktiv';

  @override
  String get premiumLoadingStore => 'Indlæser butik…';

  @override
  String get premiumProductNotAvailable =>
      'Dette produkt er ikke tilgængeligt i butikken endnu. Prøv igen senere.';

  @override
  String get premiumPurchaseError => 'Noget gik galt med købet. Prøv igen.';

  @override
  String get premiumBuyCredits100 => 'Tilføj 100 refleksioner';

  @override
  String get premiumFeatureLocked =>
      'Lås Wilaya op for at få adgang til denne funktion.';

  @override
  String get lockedCategoriesHint =>
      'Nogle kategorier er reserveret til Wilaya-medlemmer. Lås dem op for at udforske alle refleksioner på din rejse.';

  @override
  String get freePlanBlockedTitle => 'Du har brugt dine startrefleksioner';

  @override
  String get freePlanBlockedBody =>
      'Du er på Standard-planen med startrefleksioner, og du har nået grænsen. For at fortsætte — og låse premiumkategorier op — skal du opgradere til Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Se Wilaya-mulighederne nedenfor';

  @override
  String get graceBlockedTitle => 'Du har brugt dine startrefleksioner';

  @override
  String get graceBlockedBody =>
      'Du er på Standard-planen med startrefleksioner, og du har nået grænsen. For at fortsætte — og låse premiumkategorier op — skal du opgradere til Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Se Wilaya-mulighederne nedenfor';

  @override
  String get rateGuestMustSignIn =>
      'Log ind for at bruge Ayara og dine refleksioner.';

  @override
  String get guestNoCreditsTitle => 'Gæstetilstand';

  @override
  String get guestNoCreditsBody =>
      'Som gæst kan du gennemse appen, men du kan ikke bruge refleksioner. Log ind senere i Indstillinger for at bruge refleksioner og låse køb op.';

  @override
  String get guestDialogContinue => 'Fortsæt';

  @override
  String get guestDialogLoginInstead => 'Log ind i stedet';

  @override
  String get optionalLabel => 'valgfrit';

  @override
  String get accountDeleteSuccessTitle => 'Konto slettet';

  @override
  String get accountDeleteSuccessBody =>
      'Din konto og tilknyttede data er blevet slettet.';

  @override
  String get accountDeleteSuccessClose => 'Luk';

  @override
  String get accountDeleteErrorTitle => 'Kunne ikke slette konto';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Genbekræftelse blev annulleret. Log venligst ind igen og prøv at slette kontoen på ny.';

  @override
  String get accountDeleteReauthRequired =>
      'Sletning af konto kræver et nyligt login. Log ud, log ind igen og prøv derefter på ny.';

  @override
  String get settingsDeletePermanentWarning =>
      'Denne handling er permanent og kan ikke fortrydes. Alle data knyttet til din konto bliver slettet.';

  @override
  String get dailyGraceTitle => 'Daglig vejledning';

  @override
  String get dailyGraceScriptureLabel => 'DAGENS VERSET';

  @override
  String get dailyGraceSaintLabel => 'UGENS FIGUR';

  @override
  String get dailyGraceReflectionLabel => 'AFTENREFLEKSION';

  @override
  String get dailyGraceCopiedToast => 'Vers kopieret til udklipsholder';

  @override
  String get locationConsentLabel =>
      'Tillad Ayara at bruge min placering til Qibla-retning og bønnetider';

  @override
  String get locationConsentHint =>
      'Bruges kun til disse funktioner. Din placering deles eller gemmes aldrig.';

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
  String get askPageTitle => 'Spørg Ayara';

  @override
  String get askPageDescription =>
      'Spørg om alt vedrørende tro, bøn, livet eller islamisk praksis og modtag vejledning med rødder i Koranen og Ahl al-Bayts lære.';

  @override
  String get askPageInputHint => 'Skriv dit spørgsmål her…';

  @override
  String get askPageSubmitCta => 'Spørg';

  @override
  String get askPageInputEmptyError => 'Skriv venligst et spørgsmål først.';

  @override
  String get askResultYourQuestion => 'Dit spørgsmål';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Vendt mod Mekka';

  @override
  String get qiblaCompassInstruction =>
      'Drej din telefon, indtil den gyldne nål peger opad.\nDen retning peger mod Qibla (Mekka).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS-signalet er svagt. Gå udenfor og tryk på Prøv igen.';

  @override
  String get qiblaRetry => 'Prøv igen';

  @override
  String get qiblaTitle => 'Qibla-retning';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km til Mekka';
  }

  @override
  String get qiblaLocationNeededTitle => 'Placering kræves';

  @override
  String get qiblaLocationNeededBody =>
      'Tillad adgang til placering, så Ayara kan beregne retningen til Kaaba i Mekka fra hvor end du er.';

  @override
  String get qiblaOpenSettings => 'Åbn Indstillinger';

  @override
  String get qiblaCompassLoading => 'Finder din position…';

  @override
  String get qiblaTowardMecca => 'Mod Mekka';

  @override
  String get prayerTimesTitle => 'Bønnetider';

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
  String get prayerTimesLocationNeededTitle => 'Placering kræves';

  @override
  String get prayerTimesLocationNeededBody =>
      'Tillad adgang til placering, så Ayara kan beregne præcise bønnetider for din by.';

  @override
  String get prayerTimesNextLabel => 'Næste';

  @override
  String get prayerTimesDoneLabel => 'Færdig';

  @override
  String get monthlyPrayerTimesTitle => 'Månedlige bønnetider';

  @override
  String get monthlyPrayerTimesViewButton => 'Se hele måneden';

  @override
  String get monthlyPrayerTimesNextMonth => 'Næste måned';

  @override
  String get monthlyPrayerTimesDayHeader => 'Dag';

  @override
  String get sharePrayerTimes => 'Del bønnetider';

  @override
  String get notificationsSectionTitle => 'Notifikationer';

  @override
  String get notificationsSectionSubtitle =>
      'Påmindelser om bøn, kalenderbegivenheder og mere';

  @override
  String get dailyReflectionReminderTitle => 'Daglig refleksion';

  @override
  String get dailyReflectionReminderDescription =>
      'En blid daglig påmindelse om at åbne Ayara og forbinde dig med din tro.';

  @override
  String get dailyReflectionReminderEnable => 'Aktivér daglig påmindelse';

  @override
  String get dailyReflectionReminderTimeLabel => 'Tidspunkt for påmindelse';

  @override
  String get prayerNotificationsTitle => 'Bønnepåmindelser';

  @override
  String get prayerNotificationsDescription =>
      'Modtag en blid påmindelse før hver bønnetid for at hjælpe dig med at forblive forbundet hele dagen.';

  @override
  String get prayerNotificationsEnable => 'Aktivér bønnepåmindelser';

  @override
  String get prayerNotificationsOpenSettings =>
      'Åbn notifikationsindstillinger';

  @override
  String get prayerNotificationsDenied => 'Notifikationer er deaktiveret';

  @override
  String get prayerNotificationsDeniedHint =>
      'Gå til Indstillinger og tillad notifikationer for Ayara for at modtage påmindelser om bønnetider.';

  @override
  String get notificationsConsentLabel =>
      'Tillad notifikationer for bønnetider';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Morgenbøn';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr er Ahl al-Bayts morgenbøn. Imam Ali (AS) sagde: Vogt daggryets bøn, som du vogter din mest dyrebare tillid. Stå op, rens dig selv og stå foran Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Middagsbøn';

  @override
  String get prayerNotifBodyDhuhr =>
      'Ahl al-Bayts imamer værdsatte hvert øjeblik af ihukommelse. Sæt din dag på pause, kombiner Dhuhr med Asr om nødvendigt, og vend dit hjerte tilbage til Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Eftermiddagsbøn';

  @override
  String get prayerNotifBodyAsr =>
      'Vogt bønnen, for den er pagten mellem dig og Allah. Asr-tiden er kommet — lad den ikke gå uden ihukommelse.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Solnedgangsbøn';

  @override
  String get prayerNotifBodyMaghrib =>
      'Solen er gået ned — et øjeblik Ahl al-Bayt holdt helligt til bøn. Udfør Maghrib og løft dine hænder til Allah i dua, før natten begynder.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Aftenbøn';

  @override
  String get prayerNotifBodyIsha =>
      'Afslut din dag i Allahs selskab. Imamerne opmuntrede til Salat al-Layl efter Isha — men først skal du fuldføre din Isha og afslutte dagen med Hans ihukommelse.';

  @override
  String get outOfReflectionsBannerText =>
      'Du har brugt alle dine refleksioner';

  @override
  String get outOfReflectionsBannerCta => 'Få flere';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tryk på cirklen for at tælle';

  @override
  String get dhikrResetButton => 'Nulstil';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Du har fuldført 100 ihukommelser af Allah. Må de være et lys for dit hjerte.';

  @override
  String get disclaimerTitle => 'Om denne apps vejledning';

  @override
  String get disclaimerBody =>
      'Ayara tilbyder islamiske refleksioner, påmindelser og spirituelt indhold for at støtte din personlige trosrejse, med rødder i Koranen og Ahl al-Bayts lære. Dette indhold tilbydes kun til generelle informations- og inspirationsformål.\n\nAyara erstatter ikke kvalificeret lærdom.\nVejledningen i denne app er ikke en erstatning for en lærd islamisk lærer, marja\' eller teologisk uddannet underviser. I shiaislam er religiøs vejledning forankret i den ja\'faritiske skole inden for retslære (fiqh) og traditionen med at følge en levende marja\' (efterligningskilde) — en kvalificeret jurist, hvis afgørelser vejleder troende i religiøs praksis. Hvis du har spørgsmål om religiøse afgørelser, halal- og haram-forhold eller personlige religiøse forpligtelser, bør du søge råd hos en kvalificeret marja\' eller en lærd i dit lokalsamfund.\n\nDenne app udsteder ikke religiøse afgørelser.\nAyara foretager ikke autoritative afgørelser om fiqh eller personlige religiøse forpligtelser. Intet her bør behandles som en fatwa eller bindende religiøs instruktion.\n\nAhl al-Bayts centralitet.\nI shiaislam er profeten Muhammad ﷺ og hans rensede husstand — Ahl al-Bayt — de autoritative vejledere for det islamiske fællesskab efter Koranen. De tolv imamer fra Ahl al-Bayt er de guddommeligt udpegede fortolkere af islamisk lære. Indholdet i denne app afspejler denne tradition og søger at ære den trofast.\n\nFællesskabets betydning.\nDenne app har til formål at opmuntre din forbindelse til troen, samtidig med at den dybt respekterer den vigtige rolle, som din lokale moské, dit islamiske center og dit religiøse fællesskab spiller. Vi opfordrer dig til at holde kontakt med og lære af kvalificerede lærere i nærheden af dig.';

  @override
  String get disclaimerClose => 'Jeg forstår';

  @override
  String get disclaimerInfoTooltip => 'Om denne apps vejledning';

  @override
  String get disclaimerSettingsSubtitle =>
      'Kun til generelle informationsformål. Tryk for at læse hele ansvarsfraskrivelsen.';

  @override
  String get disclaimerSectionHeader => 'Ansvarsfraskrivelse om vejledning';

  @override
  String get navHome => 'Hjem';

  @override
  String get navReflect => 'Reflektér';

  @override
  String get navDuas => 'Duaer';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get dashboardToday => 'I DAG';

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
      other: 'dage',
      one: 'dag',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Hurtig adgang';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Vejledning';

  @override
  String get quickActionPrayerTimes => 'Bønnetider';

  @override
  String get askAyaraTitle => 'Spørg Ayara';

  @override
  String get askAyaraSubtitle =>
      'Stil ethvert islamisk spørgsmål og modtag et gennemtænkt, vejledende svar.';

  @override
  String get askAyaraHint => 'f.eks. Hvad er betydningen af Ramadan?';

  @override
  String get askAyaraSubmit => 'Spørg';

  @override
  String get wisdomOfTheDayTitle => 'Dagens visdom';

  @override
  String get calendarScreenTitle => 'Islamisk kalender';

  @override
  String get calendarUpcomingOccasions => 'Kommende begivenheder';

  @override
  String get calendarOccasionRemindersTitle => 'Påmindelser om begivenheder';

  @override
  String get calendarOccasionRemindersHint =>
      'Notificeres aftenen før hver begivenhed';

  @override
  String get calendarNotifPermissionDenied =>
      'Tilladelse til notifikationer blev afvist. Aktivér det i dine enhedsindstillinger.';

  @override
  String get calendarNoEvents => 'Ingen kommende begivenheder fundet.';

  @override
  String get calendarAddToPhone => 'Tilføj til telefonkalender';

  @override
  String get calendarAddedToPhone => 'Tilføjet til kalender';

  @override
  String get calendarCountdownToday => 'I DAG';

  @override
  String get calendarCountdownTomorrow => 'I MORGEN';

  @override
  String calendarCountdownDays(int days) {
    return 'om $days dage';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'jan';

  @override
  String get calendarMonthFeb => 'feb';

  @override
  String get calendarMonthMar => 'mar';

  @override
  String get calendarMonthApr => 'apr';

  @override
  String get calendarMonthMay => 'maj';

  @override
  String get calendarMonthJun => 'jun';

  @override
  String get calendarMonthJul => 'jul';

  @override
  String get calendarMonthAug => 'aug';

  @override
  String get calendarMonthSep => 'sep';

  @override
  String get calendarMonthOct => 'okt';

  @override
  String get calendarMonthNov => 'nov';

  @override
  String get calendarMonthDec => 'dec';

  @override
  String get calendarSeasonMuharramEarly => 'Dagene i Muharram — husk Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — dage med sorg og refleksion';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — fyrre dage for Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Vejen til Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — åbenbaringens daggry';

  @override
  String get calendarSeasonMidShaban =>
      'Midt i Sha\'ban — Imam al-Mahdis (AJ) fødselsdag';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — Koranens måned';

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
  String get duasScreenTitle => 'Duaer og Ziyarat';

  @override
  String get duasSearchHint => 'Søg i duaer, ziyarat…';

  @override
  String get duasFilterAll => 'Alle';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duaer og ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Ingen duaer fundet.';

  @override
  String get duaCategoryDaily => 'Daglig';

  @override
  String get duaCategoryWeekly => 'Ugentlig';

  @override
  String get duaCategoryOccasions => 'Begivenheder';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Fødsel';

  @override
  String get eventTypeMartyrdom => 'Martyrium';

  @override
  String get eventTypeOccasion => 'Begivenhed';

  @override
  String get duaCopyTooltip => 'Kopiér oversættelse';

  @override
  String get duaToggleTransliteration => 'Translitteration';

  @override
  String get duaToggleTranslation => 'Oversættelse';

  @override
  String get duaAskAiLabel => 'Bed Ayara om at forklare denne dua';

  @override
  String get duaAskAiLockedLabel => 'Spørg Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayaras forklaringer er tilgængelige for Wilaya-medlemmer. Opgradér i Indstillinger.';

  @override
  String duaAiComingSoon(String name) {
    return 'Spørg Ayara om \"$name\" — kommer snart!';
  }

  @override
  String get duaCopiedToast => 'Dua kopieret til udklipsholder.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah er den største';

  @override
  String get tasbihAlhamdulillahMeaning => 'Al lovprisning tilkommer Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Ære være Allah';

  @override
  String get tasbihResetTooltip => 'Nulstil';

  @override
  String get tasbihCompleteTitle => 'Tasbih fuldført';

  @override
  String get tasbihCompleteMessage => 'Må Allah acceptere din dhikr.';

  @override
  String get tasbihTapHint => 'Tryk hvor som helst for at tælle';

  @override
  String get tasbihatScreenTitle => 'Bønneguide';

  @override
  String get tasbihatScreenSubtitle => 'BØNNENS LOVPRISNINGER';

  @override
  String get tasbihatScreenDescription =>
      'En komplet guide til de lovprisninger, der reciteres under og efter de daglige bønner — i overensstemmelse med Ahl al-Bayts tradition (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Reciteres i 3. og 4. rakʿah';

  @override
  String get tasbihatArba3Info =>
      'I shia-jurisprudens erstatter Tasbiḥāt al-Arbaʿa Surah al-Fatiha i 3. og 4. rakʿah i Dhuhr, Asr, Maghrib og Isha. Det er obligatorisk (wājib) at recitere det én gang, og anbefalet (mustaḥabb) at recitere det tre gange.';

  @override
  String get tasbihatArba3Translation =>
      'Ære være Allah · Al lovprisning tilkommer Allah\nDer er ingen gud undtagen Allah · Allah er den største';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitation fuldført';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Må din bøn blive accepteret — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tryk efter hver recitation';

  @override
  String get tasbihatZahraSubtitle => 'Efter hver bøn · 100 perler';

  @override
  String get tasbihatZahraOriginLabel => 'Oprindelse';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) bad Profeten ﷺ om en tjener. Han sagde: \"Skal jeg ikke vise dig noget bedre? Recitér Subḥānallāh 33 gange, Alḥamdulillāh 33 gange og Allāhu Akbar 34 gange efter hver bøn. Det er bedre for dig end en tjener.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, bind 85';

  @override
  String get tasbihatZahraOpenCounter => 'Åbn Tasbīḥ-tæller';

  @override
  String get tasbihatDuasTitle => 'ANBEFALEDE DUĀS';

  @override
  String get tasbihatDuasSubtitle => 'Efter du har fuldført din bøn';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Efter hver obligatorisk bøn';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Den, der reciterer Āyat al-Kursī efter hver obligatorisk bøn, har intet mellem sig og paradiset undtagen døden. Imam al-Bāqir (a) sagde, at det er blandt Koranens største vers.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen => 'Efter hver bøn · forsegler alle bønner';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Det er anbefalet at sende velsignelser over Profeten ﷺ og hans rensede familie (Āl Muḥammad) for at forsegle enhver dua. Imam al-Ṣādiq (a) sagde: \"Enhver dua er suspenderet, indtil du sender ṣalawāt over Muḥammad og hans familie.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen => 'Efter hver bøn · for vores tids Imam';

  @override
  String get tasbihatDuaFarajSource => 'Lært af Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'En dua for genkomsten af Imam al-Mahdī (af), den tolvte Imam, undervist af hans far. Den reciteres ofte af mange shia-muslimer efter bøn som en handling af hengivenhed til den levende Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Lady Fāṭimas Tasbīḥ';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Efter Maghrib og Isha · særligt anbefalet';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) sagde, at recitation af Tasbīḥ al-Zahrā efter Isha før søvn er bedre end 1000 rakʿahs frivillig bøn. Dets lys stiger op til himlene.';

  @override
  String get tasbihFatimaGiftPre => 'En gave fra Profeten';

  @override
  String get tasbihFatimaGiftPost => 'reciteres efter hver bøn';

  @override
  String get prayerTrackerTitle => 'BØNNETRACKER';

  @override
  String get prayerTrackerPrayed => 'Bedt';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count dages stime';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Alle bønner fuldført i dag. Må Allah acceptere.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Fuldført i dag';

  @override
  String get dhikrTrackerNotDoneToday => 'Ikke gjort i dag';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count dages stime';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ-påmindelse';

  @override
  String get dhikrReminderDescription =>
      'En blid daglig påmindelse om at recitere din Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Aktivér Tasbīḥ-påmindelse';

  @override
  String get dhikrReminderTimeLabel => 'Tidspunkt for påmindelse';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Dagens hadith';

  @override
  String get hadithLabelArabic => 'ARABISK';

  @override
  String get hadithLabelTranslation => 'OVERSÆTTELSE';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Del denne hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Forrige';

  @override
  String get hadithNavNext => 'Næste';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'De Fjorten Ufejlbarlige';

  @override
  String get imamsScreenSubtitle =>
      'Profeten, Frue Fatima og de Tolv Imamer — de rensede og ufejlbarlige vejledere i tolvte shia-islam';

  @override
  String get imamLabelBorn => 'Født';

  @override
  String get imamLabelMartyrdom => 'Martyrium';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFI';

  @override
  String get imamSectionFamousSaying => 'BERØMT UDSAGN';

  @override
  String get imamRoleProphet => 'Den sidste profet';

  @override
  String get imamRoleInfallible => 'Den ufejlbarlige';

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
  String get duaAudioScreenTitle => 'Lyt til duaer';

  @override
  String get duaAudioScreenSubtitle =>
      'Vælg en dua at lytte til. Tryk på feltet for at afspille eller sætte på pause.';

  @override
  String get duaAudioComingSoonMessage =>
      'Lyd til denne dua vil være tilgængelig i en kommende opdatering.';

  @override
  String get duaAudioClose => 'Luk';

  @override
  String get duaAudioError =>
      'Kunne ikke indlæse lyd. Tjek venligst din forbindelse.';

  @override
  String get duaAudioMetaTransmittedBy => 'Overleveret af';

  @override
  String get duaAudioMetaOccasion => 'Begivenhed';

  @override
  String get duaAudioMetaDuration => 'Varighed';

  @override
  String get quickActionDailyHadith => 'Dagens hadith';

  @override
  String get quickAction14Masumeen => 'Fjorten Ufejlbarlige';

  @override
  String get quickActionListenDuas => 'Lyt';

  @override
  String get quickActionTasbihat => 'Bønneguide';

  @override
  String get pilgrimageSectionTitle => 'Den hellige rejse';

  @override
  String get pilgrimageSectionSubtitle =>
      'Komplette guider til Hajj og Umrah — pilgrimsrejsen til Allahs hellige hus i Mekka';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Islams femte søjle';

  @override
  String get hajjCardDescription =>
      'Den store årlige pilgrimsrejse — obligatorisk én gang i livet for enhver muslim, der er i stand til det';

  @override
  String get hajjScreenTitle => 'Hajj-guide';

  @override
  String get hajjScreenSubtitle =>
      'Trin-for-trin-guide til den store pilgrimsrejse';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Den mindre pilgrimsrejse';

  @override
  String get umrahCardDescription =>
      'En dybt givende spirituel rejse, som kan udføres på ethvert tidspunkt af året';

  @override
  String get umrahScreenTitle => 'Umrah-guide';

  @override
  String get umrahScreenSubtitle =>
      'Trin-for-trin-guide til den mindre pilgrimsrejse';

  @override
  String get pilgrimageStepsTitle => 'Ritualer og trin';

  @override
  String get pilgrimageImportantNotesTitle => 'Vigtige bemærkninger';

  @override
  String get pilgrimageDuaTitle => 'Dua til dette trin';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Bemærkning';

  @override
  String get pilgrimageComplete => '✓ Fuldført';

  @override
  String get pilgrimageMarkDone => 'Marker som fuldført';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done af $total trin';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Shia-pilgrimme';

  @override
  String get pilgrimageShiaNoteBody =>
      'Mange shia-pilgrimme rejser også til Medina for ziyarat af Profeten Muhammad (SAW) ved Masjid al-Nabawi og gravene ved Jannat al-Baqi. Disse besøg bærer dyb åndelig betydning, selvom de ikke i sig selv er Hajj-ritualer.';

  @override
  String get hajjIntro =>
      'Hajj er den femte søjle i islam, obligatorisk én gang i livet for hver muslim, der er fysisk og økonomisk i stand. For de fleste tolvte shia-pilgrimme i dag betyder dette Hajj al-Tamattu\', udført i måneden Dhul Hijjah i fodsporene på Profet Ibrahim (AS), hans søn Ismail (AS) og Frue Hajar. Denne guide følger Ja\'fari-oversigten over ritualerne, mens ziyarat i Medina forbliver en dybt værdsat rejse før eller efter Hajj.';

  @override
  String get umrahIntro =>
      'Umrah er den mindre pilgrimsrejse til Mekka og kan, i modsætning til Hajj, udføres på ethvert tidspunkt af året. Selvom den ikke er obligatorisk, bærer den enorm spirituel belønning og anses for en stærkt anbefalet tilbedelseshandling. Den deler flere ritualer med Hajj, men er kortere og består af fire hovedritualer.';

  @override
  String get voiceInputTitle => 'Stemmesvar';

  @override
  String get voiceInputMicTitle => 'Mikrofon';

  @override
  String get voiceInputMicSubtitle =>
      'Tal dit input til Ask Ayara i stedet for at skrive.';

  @override
  String get voiceInputMicDenied => 'Adgang til mikrofonen blev nægtet.';

  @override
  String get voiceInputSpeak => 'Tal i stedet';

  @override
  String get voiceInputListening => 'Lytter…';

  @override
  String get voiceInputPermissionDenied =>
      'Adgang til mikrofonen er nødvendig for stemmesvar.';
}
