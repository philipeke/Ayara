// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Velg språk';

  @override
  String get languageSelectSub => 'Du kan endre dette senere i Innstillinger';

  @override
  String get actionContinue => 'Fortsett';

  @override
  String get languageSuggestedHeader => 'Foreslått';

  @override
  String get languageAllHeader => 'Alle språk';

  @override
  String get languageSuggestedBadge => 'Foreslått';

  @override
  String get languageSearchHint => 'Søk…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Daglig veiledning';

  @override
  String get categorySlot02 => 'Iman og tillit';

  @override
  String get categorySlot03 => 'Bønnerefeksjon';

  @override
  String get categorySlot04 => 'Tålmodighet og håp';

  @override
  String get categorySlot05 => 'Søk tilgivelse';

  @override
  String get categorySlot06 => 'Nåde og medfølelse';

  @override
  String get categorySlot07 => 'Tro og styrke';

  @override
  String get categorySlot08 => 'Takknemlig hjerte';

  @override
  String get categorySlot09 => 'Livets mening';

  @override
  String get categorySlot10 => 'Familiebånd';

  @override
  String get categorySlot11 => 'Indre fred';

  @override
  String get categorySlot12 => 'Profetens visdom';

  @override
  String get categorySlot13 => 'God karakter';

  @override
  String get categorySlot14 => 'Motstand mot fristelse';

  @override
  String get categorySlot15 => 'Kveldsdhikr';

  @override
  String get categoryCustom => 'Personlig refleksjon';

  @override
  String get dhikrMeaningSubhanallah => 'Ære være Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'All pris tilhører Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah er den største';

  @override
  String get quranVerseHeartAtRest =>
      'Sannelig, i erindringen av Allah finner hjertene ro.';

  @override
  String get promptHint =>
      'Trykk på en kategori for islamsk veiledning og refleksjon';

  @override
  String get currentLanguage => 'Gjeldende språk';

  @override
  String get settingsLanguage => 'Språkinnstillinger';

  @override
  String get settingsTitle => 'Innstillinger';

  @override
  String get chooseLanguage => 'Velg språk';

  @override
  String get continueCta => 'Fortsett';

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
  String get optionsCta => 'Alternativer';

  @override
  String get newCta => 'Ny';

  @override
  String get actionsTitle => 'Hva vil du gjøre?';

  @override
  String get copy => 'Kopier';

  @override
  String get share => 'Del';

  @override
  String get close => 'Lukk';

  @override
  String get copiedToast => 'Kopiert til utklippstavlen';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Kunne ikke generere et nytt svar';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nVil du prøve igjen?';
  }

  @override
  String get cancelCta => 'Avbryt';

  @override
  String get retryCta => 'Prøv igjen';

  @override
  String get authTitle => 'Opprett konto';

  @override
  String get continueAsGuest => 'Fortsett som gjest';

  @override
  String get signInGoogle => 'Logg inn med Google';

  @override
  String get signInApple => 'Logg inn med Apple';

  @override
  String get signInEmail => 'Logg inn med e-post';

  @override
  String get upgradeWithApple => 'Fortsett med Apple';

  @override
  String get mustAccept =>
      'Du må godta vilkårene og bekrefte personvernreglene.';

  @override
  String get termsLabel => 'Jeg godtar bruksvilkårene';

  @override
  String get privacyLabel => 'Jeg har lest personvernreglene';

  @override
  String get marketingOptIn => 'Jeg samtykker til å motta nyheter og tilbud';

  @override
  String get openTerms => 'Bruksvilkår';

  @override
  String get openPrivacy => 'Personvernregler';

  @override
  String get accountSection => 'Konto';

  @override
  String get guestMode => 'Gjestmodus';

  @override
  String get signedIn => 'Innlogget';

  @override
  String get upgradeHint =>
      'Lagre refleksjonene dine på tvers av enheter ved å opprette en konto.';

  @override
  String get upgradeWithGoogle => 'Fortsett med Google';

  @override
  String get signOut => 'Logg ut';

  @override
  String get snackUpgraded => 'Konto oppgradert med Google ✅';

  @override
  String get snackSignedIn => 'Logget inn med Google ✅';

  @override
  String get snackSignedOut => 'Logget ut';

  @override
  String get snackSignedInApple => 'Logget inn med Apple ✅';

  @override
  String get snackSignedInGoogle => 'Logget inn med Google ✅';

  @override
  String get snackUpgradedApple => 'Konto oppgradert med Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Konto oppgradert med Google ✅';

  @override
  String get historyTitle => 'Tidligere refleksjoner';

  @override
  String get historyOpenCta => 'Tidligere refleksjoner';

  @override
  String get historyEmpty => 'Ingen lagrede refleksjoner ennå.';

  @override
  String get historyDeleteTitle => 'Slette refleksjon?';

  @override
  String get historyDeleteBody =>
      'Dette vil permanent fjerne det valgte elementet.';

  @override
  String get deleteCta => 'Slett';

  @override
  String get historyButton => 'Tidligere refleksjoner';

  @override
  String get historyEmptyTitle => 'Ingen refleksjoner ennå';

  @override
  String get historyEmptyBody =>
      'Generer noe først – de lagrede elementene dine vises her.';

  @override
  String get historyDelete => 'Slett';

  @override
  String get footerTitle => 'Med Wilaya, Iman og Sabr';

  @override
  String get footerSubtitle => 'Én bønn av gangen';

  @override
  String get genericErrorSnack => 'Noe gikk galt – prøv igjen om et øyeblikk.';

  @override
  String get upgradeAccountCta =>
      'Lagre refleksjonene dine på tvers av enheter – opprett en konto';

  @override
  String get deleteAccount => 'Slett konto';

  @override
  String get exportData => 'Eksporter dataene mine';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Rolig i stolen 🐯\nAyara trenger et øyeblikk før den neste…';

  @override
  String get rateDailyLimit =>
      'Du har brukt opp refleksjonene for nå.\nFå flere refleksjoner eller oppgrader til Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Du har brukt alle refleksjonene dine.\nFyll på eller oppgrader til Wilaya for å fortsette.';

  @override
  String get rateGraceCreditsExhausted =>
      'Du har brukt opp refleksjonene for nå.\nFå flere refleksjoner eller oppgrader til Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya låser opp premiumfunksjoner, fremtidige kategorier og et spesielt merke.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Refleksjonene dine er tomme akkurat nå. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Kunne ikke sjekke refleksjonene dine: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Noe gikk galt under kontroll av refleksjonene dine.';

  @override
  String get aiFallbackGeneric => 'Noe gikk galt – prøv igjen om et øyeblikk.';

  @override
  String get limitSectionTitle => 'Refleksjoner';

  @override
  String get limitTodayLabel => 'Bruk';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Gjenværende refleksjoner: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Laster…';

  @override
  String get limitLoadingLabelDescription =>
      'Vises på refleksjonskortet mens bruksstatistikk hentes.';

  @override
  String get aiLimitTitle => 'Refleksjoner';

  @override
  String get aiLimitSubtitle =>
      'Hvert svar bruker 1 refleksjon. Standard inkluderer startrefleksjoner. Wilaya låser opp premiumkategorier og muliggjør påfyll.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total refleksjoner brukt';
  }

  @override
  String get creditsSectionTitle => 'Refleksjoner';

  @override
  String get creditsUsageLabel => 'Bruk';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Gjenværende refleksjoner: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Laster…';

  @override
  String get creditsLoadingLabelDescription =>
      'Vises mens refleksjonsstatistikk hentes.';

  @override
  String get creditsTitle => 'Refleksjoner';

  @override
  String get creditsSubtitle =>
      'Hvert svar bruker 1 refleksjon. Standard inkluderer startrefleksjoner. Wilaya låser opp premiumkategorier og muliggjør påfyll.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total refleksjoner brukt';
  }

  @override
  String get settingsDeleteTitle => 'Slett konto';

  @override
  String get settingsDeleteDescription =>
      'Slett kontoen din og alle tilknyttede data permanent.';

  @override
  String get settingsDeleteButtonLabel => 'Slett kontoen min';

  @override
  String get settingsDeleteDialogTitle => 'Slette konto?';

  @override
  String get settingsDeleteDialogBody =>
      'Denne handlingen er permanent og kan ikke angres.\n\nAlle samtaler, historikk og kontoinformasjon vil bli slettet.';

  @override
  String get settingsDeleteDialogCancel => 'Avbryt';

  @override
  String get settingsDeleteDialogConfirm => 'Slett';

  @override
  String get settingsFreeLimitUsedTitle => 'Startrefleksjoner brukt opp';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Startrefleksjonene for denne enheten er brukt opp. Oppgrader til Wilaya eller kjøp flere refleksjoner for å fortsette.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Startrefleksjoner brukt opp';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Startrefleksjonene for denne enheten er brukt opp. Oppgrader til Wilaya eller kjøp flere refleksjoner for å fortsette.';

  @override
  String get deviceBoundError =>
      'Denne enheten er allerede koblet til en annen konto. Vennligst logg inn med den opprinnelige kontoen.';

  @override
  String get premiumTitle => 'Wilaya-modus';

  @override
  String get premiumSubtitleBasic => 'Lås opp den fulle Ayara-opplevelsen.';

  @override
  String get premiumSubtitlePremium =>
      'Du er på Wilaya. Trenger du flere refleksjoner?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Gjeldende plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Refleksjoner: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Kjøp er ikke tilgjengelig akkurat nå.';

  @override
  String get premiumSignInToPurchase =>
      'Logg inn for å kjøpe refleksjoner eller låse opp Wilaya.';

  @override
  String get premiumRestorePurchases => 'Gjenopprett kjøp';

  @override
  String get premiumProcessing => 'Behandler…';

  @override
  String get premiumRestoreHintTitle =>
      'Har du allerede kjøpt Wilaya eller refleksjoner på denne eller en annen enhet?';

  @override
  String get premiumRestoreHintBody =>
      'Gjenopprett kjøpene dine hvis de ikke vises.';

  @override
  String get premiumBuyCredits200 => 'Kjøp 200 refleksjoner';

  @override
  String get premiumBuyCredits400 => 'Kjøp 400 refleksjoner';

  @override
  String get premiumBecomePremiumOneTime => 'Oppgrader til Wilaya-modus';

  @override
  String get premiumTopupHint =>
      'Med Wilaya kan du fylle på med ekstra refleksjoner når du trenger det.';

  @override
  String get premiumUpgradeCta => 'Oppgrader';

  @override
  String get premiumRequiredForCategory =>
      'Denne kategorien er kun tilgjengelig for Wilaya-brukere. Oppgrader i Innstillinger for å låse opp alt premiuminnhold.';

  @override
  String get premiumBenefitsBasic =>
      'Lås opp Wilaya for å få ekstra refleksjoner, tilgang til premiumkategorier og fortsette når du trenger veiledning.';

  @override
  String get premiumBenefitsPremium =>
      'Du er i Wilaya-modus. Hvis du begynner å gå tom, legg til ekstra refleksjoner og fortsett uten avbrudd.';

  @override
  String get premiumButtonBecomePremium => 'Lås opp Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Legg til 1000 refleksjoner';

  @override
  String get premiumBadge => 'Wilaya aktiv';

  @override
  String get premiumLoadingStore => 'Laster butikk…';

  @override
  String get premiumProductNotAvailable =>
      'Dette produktet er ikke tilgjengelig i butikken ennå. Prøv igjen senere.';

  @override
  String get premiumPurchaseError => 'Noe gikk galt med kjøpet. Prøv igjen.';

  @override
  String get premiumBuyCredits100 => 'Legg til 100 refleksjoner';

  @override
  String get premiumFeatureLocked =>
      'Lås opp Wilaya for å få tilgang til denne funksjonen.';

  @override
  String get lockedCategoriesHint =>
      'Noen kategorier er forbeholdt Wilaya-medlemmer. Lås dem opp for å utforske alle refleksjoner på din reise.';

  @override
  String get freePlanBlockedTitle => 'Du har brukt opp startrefleksjonene dine';

  @override
  String get freePlanBlockedBody =>
      'Du er på Standard-planen med startrefleksjoner, og du har nådd grensen. For å fortsette – og låse opp premiumkategorier – oppgrader til Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Se Wilaya-alternativer nedenfor';

  @override
  String get graceBlockedTitle => 'Du har brukt opp startrefleksjonene dine';

  @override
  String get graceBlockedBody =>
      'Du er på Standard-planen med startrefleksjoner, og du har nådd grensen. For å fortsette – og låse opp premiumkategorier – oppgrader til Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Se Wilaya-alternativer nedenfor';

  @override
  String get rateGuestMustSignIn =>
      'Logg inn for å bruke Ayara og refleksjonene dine.';

  @override
  String get guestNoCreditsTitle => 'Gjestmodus';

  @override
  String get guestNoCreditsBody =>
      'Som gjest kan du bla i appen, men du kan ikke bruke refleksjoner. Logg inn senere i Innstillinger for å bruke refleksjoner og låse opp kjøp.';

  @override
  String get guestDialogContinue => 'Fortsett';

  @override
  String get guestDialogLoginInstead => 'Logg inn i stedet';

  @override
  String get optionalLabel => 'valgfritt';

  @override
  String get accountDeleteSuccessTitle => 'Konto slettet';

  @override
  String get accountDeleteSuccessBody =>
      'Kontoen din og tilknyttede data er slettet.';

  @override
  String get accountDeleteSuccessClose => 'Lukk';

  @override
  String get accountDeleteErrorTitle => 'Kunne ikke slette konto';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Ny autentisering ble avbrutt. Logg inn igjen og prøv å slette på nytt.';

  @override
  String get accountDeleteReauthRequired =>
      'Sletting av konto krever nylig innlogging. Logg ut, logg inn igjen og prøv på nytt.';

  @override
  String get settingsDeletePermanentWarning =>
      'Denne handlingen er permanent og kan ikke angres. Alle data tilknyttet kontoen din vil bli slettet.';

  @override
  String get dailyGraceTitle => 'Daglig veiledning';

  @override
  String get dailyGraceScriptureLabel => 'DAGENS VERS';

  @override
  String get dailyGraceSaintLabel => 'UKENS FIGUR';

  @override
  String get dailyGraceReflectionLabel => 'KVELDSREFLEKSJON';

  @override
  String get dailyGraceCopiedToast => 'Vers kopiert til utklippstavlen';

  @override
  String get locationConsentLabel =>
      'Tillat Ayara å bruke min posisjon for Qibla-retning og bønnetider';

  @override
  String get locationConsentHint =>
      'Brukes kun til disse funksjonene. Posisjonen din deles eller lagres aldri.';

  @override
  String get askPageTitle => 'Spør Ayara';

  @override
  String get askPageDescription =>
      'Spør om hva som helst om tro, bønn, livet eller islamsk praksis og motta veiledning forankret i Koranen og Ahl al-Bayts lære.';

  @override
  String get askPageInputHint => 'Skriv spørsmålet ditt her…';

  @override
  String get askPageSubmitCta => 'Spør';

  @override
  String get askPageInputEmptyError => 'Vennligst skriv et spørsmål først.';

  @override
  String get askResultYourQuestion => 'Ditt spørsmål';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Vender mot Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Roter telefonen til gullnålen peker oppover.\nDen retningen peker mot Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS-signalet er svakt. Gå utendørs og trykk Prøv igjen.';

  @override
  String get qiblaRetry => 'Prøv igjen';

  @override
  String get qiblaTitle => 'Qibla-retning';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km til Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Posisjon kreves';

  @override
  String get qiblaLocationNeededBody =>
      'Tillat posisjonstilgang slik at Ayara kan beregne retningen til Kaaba i Makkah fra der du er.';

  @override
  String get qiblaOpenSettings => 'Åpne innstillinger';

  @override
  String get qiblaCompassLoading => 'Finner din posisjon…';

  @override
  String get qiblaTowardMecca => 'Mot Makkah';

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
  String get prayerTimesLocationNeededTitle => 'Posisjon kreves';

  @override
  String get prayerTimesLocationNeededBody =>
      'Tillat posisjonstilgang slik at Ayara kan beregne nøyaktige bønnetider for din by.';

  @override
  String get prayerTimesNextLabel => 'Neste';

  @override
  String get prayerTimesDoneLabel => 'Ferdig';

  @override
  String get monthlyPrayerTimesTitle => 'Månedlige bønnetider';

  @override
  String get monthlyPrayerTimesViewButton => 'Vis hele måneden';

  @override
  String get monthlyPrayerTimesNextMonth => 'Neste måned';

  @override
  String get monthlyPrayerTimesDayHeader => 'Dag';

  @override
  String get sharePrayerTimes => 'Del bønnetider';

  @override
  String get notificationsSectionTitle => 'Varsler';

  @override
  String get notificationsSectionSubtitle =>
      'Bønnepåminnelser, kalenderbegivenheter og mer';

  @override
  String get dailyReflectionReminderTitle => 'Daglig refleksjon';

  @override
  String get dailyReflectionReminderDescription =>
      'En mild daglig påminnelse om å åpne Ayara og koble deg til troen din.';

  @override
  String get dailyReflectionReminderEnable => 'Aktiver daglig påminnelse';

  @override
  String get dailyReflectionReminderTimeLabel => 'Påminnelsestid';

  @override
  String get prayerNotificationsTitle => 'Bønnepåminnelser';

  @override
  String get prayerNotificationsDescription =>
      'Motta en mild påminnelse før hver bønnetid for å hjelpe deg å holde deg tilkoblet gjennom dagen.';

  @override
  String get prayerNotificationsEnable => 'Aktiver bønnepåminnelser';

  @override
  String get prayerNotificationsOpenSettings => 'Åpne varselinnstillinger';

  @override
  String get prayerNotificationsDenied => 'Varsler er deaktivert';

  @override
  String get prayerNotificationsDeniedHint =>
      'Gå til Innstillinger og tillat varsler for Ayara for å motta bønnetidspåminnelser.';

  @override
  String get notificationsConsentLabel => 'Tillat varsler for bønnetider';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Morgenbønn';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr er Ahl al-Bayts morgenbønn. Imam Ali (AS) sa: Vokt morgenbønnen som du vogter din mest dyrebare tillit. Stå opp, rens deg selv og stå for Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Middagsbønn';

  @override
  String get prayerNotifBodyDhuhr =>
      'Ahl al-Bayts imamer verdsatte hvert øyeblikk av erindring. Gjør en pause i dagen, kombiner Dhuhr med Asr om nødvendig, og vend hjertet ditt tilbake til Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Ettermiddagsbønn';

  @override
  String get prayerNotifBodyAsr =>
      'Vokt bønnen, for den er pakten mellom deg og Allah. Asr-tiden har kommet – la den ikke gå uten erindring.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Solnedgangsbønn';

  @override
  String get prayerNotifBodyMaghrib =>
      'Solen har gått ned – et øyeblikk Ahl al-Bayt holdt hellig for bønn. Gjennomfør Maghrib og åpne hendene dine mot Allah i dua før natten begynner.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Nattbønn';

  @override
  String get prayerNotifBodyIsha =>
      'Avslutt dagen i Allahs selskap. Imamene oppmuntret til Salat al-Layl etter Isha – men fullfør først Isha og avslutt dagen med Hans erindring.';

  @override
  String get outOfReflectionsBannerText =>
      'Du har brukt alle refleksjonene dine';

  @override
  String get outOfReflectionsBannerCta => 'Få mer';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Trykk på sirkelen for å telle';

  @override
  String get dhikrResetButton => 'Tilbakestill';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Du har fullført 100 ihukommelser av Allah. Måtte de være et lys for ditt hjerte.';

  @override
  String get disclaimerTitle => 'Om denne appens veiledning';

  @override
  String get disclaimerBody =>
      'Ayara gir islamske refleksjoner, påminnelser og åndelig innhold for å støtte din personlige trosreise, forankret i Koranen og Ahl al-Bayts lære. Dette innholdet tilbys kun til generell informasjon og inspirasjon.\n\nAyara erstatter ikke kvalifisert lærdom.\nVeiledningen i denne appen er ikke en erstatning for en lærd islamsk lærd, marja\', eller teologisk utdannet lærer. I sjiaislam er religiøs veiledning forankret i Ja\'fari-rettsskolen (fiqh) og tradisjonen med å følge en levende Marja\' (etterligningskilde) – en kvalifisert jurist hvis avgjørelser veileder troende i religiøs praksis. Hvis du har spørsmål om religiøse regler, halal- og haramspørsmål, eller personlige religiøse plikter, vennligst søk råd fra en kvalifisert Marja\' eller en lærd i ditt lokalsamfunn.\n\nDenne appen utsteder ikke religiøse dommer.\nAyara tar ikke autoritative avgjørelser om fiqh-spørsmål eller personlige religiøse plikter. Ingenting her skal behandles som en fatwa eller bindende religiøs instruks.\n\nAhl al-Bayts sentrale rolle.\nI sjiaislam er profeten Muhammad ﷺ og hans rensede husstand – Ahl al-Bayt – de autoritative guidene for det islamske samfunnet etter Koranen. De tolv imamene i Ahl al-Bayt er de guddommelig utpekte tolkerne av islamsk lære. Innholdet i denne appen gjenspeiler denne tradisjonen og søker å hedre den trofast.\n\nFellesskap er viktig.\nDenne appen har som mål å oppmuntre ditt engasjement med troen, samtidig som den dypt respekterer den avgjørende rollen til din lokale moské, islamske senter og religiøse samfunn. Vi oppfordrer deg til å holde kontakten med og lære fra kvalifiserte lærere nær deg.';

  @override
  String get disclaimerClose => 'Jeg forstår';

  @override
  String get disclaimerInfoTooltip => 'Om denne appens veiledning';

  @override
  String get disclaimerSettingsSubtitle =>
      'Kun til generell informasjon. Trykk for å lese hele ansvarsfraskrivelsen.';

  @override
  String get disclaimerSectionHeader => 'Ansvarsfraskrivelse for veiledning';

  @override
  String get navHome => 'Hjem';

  @override
  String get navReflect => 'Reflekter';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get dashboardToday => 'I DAG';

  @override
  String get dashboardComingUp => 'Kommer opp';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dager',
      one: 'dag',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Hurtigtilgang';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Veiledning';

  @override
  String get quickActionPrayerTimes => 'Bønnetider';

  @override
  String get askAyaraTitle => 'Spør Ayara';

  @override
  String get askAyaraSubtitle =>
      'Still et islamsk spørsmål og få et gjennomtenkt, veiledet svar.';

  @override
  String get askAyaraHint => 'f.eks. Hva er betydningen av Ramadan?';

  @override
  String get askAyaraSubmit => 'Spør';

  @override
  String get wisdomOfTheDayTitle => 'Dagens visdom';

  @override
  String get calendarScreenTitle => 'Islamsk kalender';

  @override
  String get calendarUpcomingOccasions => 'Kommende anledninger';

  @override
  String get calendarOccasionRemindersTitle => 'Anledningspåminnelser';

  @override
  String get calendarOccasionRemindersHint =>
      'Varsles kvelden før hver anledning';

  @override
  String get calendarNotifPermissionDenied =>
      'Varselstillatelse nektet. Aktiver det i enhetsinnstillingene.';

  @override
  String get calendarNoEvents => 'Ingen kommende arrangementer funnet.';

  @override
  String get calendarAddToPhone => 'Legg til i telefonkalender';

  @override
  String get calendarAddedToPhone => 'Lagt til kalender';

  @override
  String get calendarCountdownToday => 'I DAG';

  @override
  String get calendarCountdownTomorrow => 'I MORGEN';

  @override
  String calendarCountdownDays(int days) {
    return 'om $days dager';
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
  String get calendarMonthMay => 'Mai';

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
  String get calendarMonthDec => 'Des';

  @override
  String get calendarSeasonMuharramEarly => 'Muharrams dager — husk Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — dager med sorg og refleksjon';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — førti dager av Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Veien til Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — åpenbaringens daggry';

  @override
  String get calendarSeasonMidShaban =>
      'Midten av Sha\'ban — Imam al-Mahdis (AJ) fødselsdag';

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
  String get duasScreenTitle => 'Duas og Ziyarat';

  @override
  String get duasSearchHint => 'Søk duas, ziyarat…';

  @override
  String get duasFilterAll => 'Alle';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas og ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Ingen duas funnet.';

  @override
  String get duaCategoryDaily => 'Daglig';

  @override
  String get duaCategoryWeekly => 'Ukentlig';

  @override
  String get duaCategoryOccasions => 'Anledninger';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Fødsel';

  @override
  String get eventTypeMartyrdom => 'Martyrium';

  @override
  String get eventTypeOccasion => 'Anledning';

  @override
  String get duaCopyTooltip => 'Kopier oversettelse';

  @override
  String get duaToggleTransliteration => 'Translitterasjon';

  @override
  String get duaToggleTranslation => 'Oversettelse';

  @override
  String get duaAskAiLabel => 'Be Ayara forklare denne duaen';

  @override
  String get duaAskAiLockedLabel => 'Spør Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara-forklaringer er tilgjengelige for Wilaya-medlemmer. Oppgrader i Innstillinger.';

  @override
  String duaAiComingSoon(String name) {
    return 'Spør Ayara om \"$name\" — kommer snart!';
  }

  @override
  String get duaCopiedToast => 'Dua kopiert til utklippstavlen.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah er den største';

  @override
  String get tasbihAlhamdulillahMeaning => 'All pris tilhører Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Ære være Allah';

  @override
  String get tasbihResetTooltip => 'Tilbakestill';

  @override
  String get tasbihCompleteTitle => 'Tasbih fullført';

  @override
  String get tasbihCompleteMessage => 'Måtte Allah ta imot din dhikr.';

  @override
  String get tasbihTapHint => 'Trykk hvor som helst for å telle';

  @override
  String get tasbihatScreenTitle => 'Bønneguide';

  @override
  String get tasbihatScreenSubtitle => 'BØNNENS LOVPRISNINGER';

  @override
  String get tasbihatScreenDescription =>
      'En komplett guide til lovprisningene som resiteres under og etter de daglige bønnene – etter Ahl al-Bayts (a) tradisjon.';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Resiteres under 3. og 4. rakʿah';

  @override
  String get tasbihatArba3Info =>
      'I sjia-rettsvitenskap erstatter Tasbiḥāt al-Arbaʿa Surah al-Fatiha i 3. og 4. rakʿah av Dhuhr, Asr, Maghrib og Isha. Det er obligatorisk (wājib) å resitere det én gang, og anbefalt (mustaḥabb) å resitere det tre ganger.';

  @override
  String get tasbihatArba3Translation =>
      'Ære være Allah · All pris tilhører Allah\nDet er ingen gud uten Allah · Allah er den største';

  @override
  String get tasbihatArba3CompleteTitle => 'Resitasjon fullført';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Måtte bønnen din bli mottatt — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Trykk etter hver resitasjon';

  @override
  String get tasbihatZahraSubtitle => 'Etter hver bønn · 100 perler';

  @override
  String get tasbihatZahraOriginLabel => 'Opprinnelse';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) ba Profeten ﷺ om en tjener. Han sa: \"Skal jeg ikke veilede deg til noe bedre? Resiter Subḥānallāh 33 ganger, Alḥamdulillāh 33 ganger og Allāhu Akbar 34 ganger etter hver bønn. Det er bedre for deg enn en tjener.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, bind 85';

  @override
  String get tasbihatZahraOpenCounter => 'Åpne Tasbīḥ-teller';

  @override
  String get tasbihatDuasTitle => 'ANBEFALTE DUĀER';

  @override
  String get tasbihatDuasSubtitle => 'Etter fullført bønn';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Etter hver obligatorisk bønn';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Den som resiterer Āyat al-Kursī etter hver obligatorisk bønn, det er ingenting mellom ham og paradis unntatt døden. Imam al-Bāqir (a) sa det er blant de største versene i Koranen.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Etter hver bønn · forsegler alle bønner';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Å sende hilsener til Profeten ﷺ og hans rensede familie (Āl Muḥammad) anbefales for å besegle hver dua. Imam al-Ṣādiq (a) sa: \"Enhver dua er suspendert til du sender ṣalawāt til Muḥammad og hans familie.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen => 'Etter hver bønn · for vår tids Imam';

  @override
  String get tasbihatDuaFarajSource => 'Lært av Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'En dua for gjenoppståelsen av Imam al-Mahdī (af), den tolvte imamen, undervist av hans far. Den blir ofte resitert av mange shia-muslimer etter bønn som en handling av hengivenhet til den levende imamen.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Lady Fāṭimas Tasbīḥ';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Etter Maghrib og Isha · spesielt anbefalt';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) sa at å resitere Tasbīḥ al-Zahrā etter Isha før man sover er bedre enn 1000 rakʿahs frivillig bønn. Dens lys stiger til himmelen.';

  @override
  String get tasbihFatimaGiftPre => 'En gave fra Profeten';

  @override
  String get tasbihFatimaGiftPost => 'resiteres etter hver bønn';

  @override
  String get prayerTrackerTitle => 'BØNNESPORЕР';

  @override
  String get prayerTrackerPrayed => 'Bedt';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count dagers rekke';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Alle bønner fullført i dag. Måtte Allah ta imot.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Fullført i dag';

  @override
  String get dhikrTrackerNotDoneToday => 'Ikke gjort i dag';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count dagers rekke';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ-påminnelse';

  @override
  String get dhikrReminderDescription =>
      'En mild daglig påminnelse om å resitere Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Aktiver Tasbīḥ-påminnelse';

  @override
  String get dhikrReminderTimeLabel => 'Påminnelsestid';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Dagens hadith';

  @override
  String get hadithLabelArabic => 'ARABISK';

  @override
  String get hadithLabelTranslation => 'OVERSETTELSE';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Del denne hadithen';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Forrige';

  @override
  String get hadithNavNext => 'Neste';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'De Fjorten Ufeilbarlige';

  @override
  String get imamsScreenSubtitle =>
      'Profeten, Lady Fatima, og de Tolv Imamene — de rensede og ufeilbarlige veiledere i tolvte shia-islam';

  @override
  String get imamLabelBorn => 'Født';

  @override
  String get imamLabelMartyrdom => 'Martyrium';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFI';

  @override
  String get imamSectionFamousSaying => 'KJENT SITAT';

  @override
  String get imamRoleProphet => 'Den siste Profeten';

  @override
  String get imamRoleInfallible => 'Den ufeilbarlige';

  @override
  String get imamOrdinal1 => '1. Imam';

  @override
  String get imamOrdinal2 => '2. Imam';

  @override
  String get imamOrdinal3 => '3. Imam';

  @override
  String get imamOrdinal4 => '4. Imam';

  @override
  String get imamOrdinal5 => '5. Imam';

  @override
  String get imamOrdinal6 => '6. Imam';

  @override
  String get imamOrdinal7 => '7. Imam';

  @override
  String get imamOrdinal8 => '8. Imam';

  @override
  String get imamOrdinal9 => '9. Imam';

  @override
  String get imamOrdinal10 => '10. Imam';

  @override
  String get imamOrdinal11 => '11. Imam';

  @override
  String get imamOrdinal12 => '12. Imam';

  @override
  String get duaAudioScreenTitle => 'Lytt til duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Velg en dua å lytte til. Trykk på flisen for å spille av eller pause.';

  @override
  String get duaAudioComingSoonMessage =>
      'Lyd for denne duaen vil være tilgjengelig i en kommende oppdatering.';

  @override
  String get duaAudioClose => 'Lukk';

  @override
  String get duaAudioError => 'Kunne ikke laste lyd. Sjekk tilkoblingen din.';

  @override
  String get duaAudioMetaTransmittedBy => 'Overlevert av';

  @override
  String get duaAudioMetaOccasion => 'Anledning';

  @override
  String get duaAudioMetaDuration => 'Varighet';

  @override
  String get quickActionDailyHadith => 'Dagens hadith';

  @override
  String get quickAction14Masumeen => 'Fjorten Ufeilbarlige';

  @override
  String get quickActionListenDuas => 'Lytt';

  @override
  String get quickActionTasbihat => 'Bønneguide';

  @override
  String get pilgrimageSectionTitle => 'Den hellige reisen';

  @override
  String get pilgrimageSectionSubtitle =>
      'Komplette guider til Hajj og Umrah — pilegrimsreisen til Allahs hellige hus i Mekka';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Islams femte søyle';

  @override
  String get hajjCardDescription =>
      'Den store årlige pilegrimsreisen — obligatorisk én gang i livet for enhver muslim som er i stand til det';

  @override
  String get hajjScreenTitle => 'Hajj-guide';

  @override
  String get hajjScreenSubtitle =>
      'Trinn-for-trinn guide til den store pilegrimsreisen';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Den mindre pilegrimsreisen';

  @override
  String get umrahCardDescription =>
      'En dypt berikende åndelig reise som kan gjennomføres når som helst på året';

  @override
  String get umrahScreenTitle => 'Umrah-guide';

  @override
  String get umrahScreenSubtitle =>
      'Trinn-for-trinn guide til den mindre pilegrimsreisen';

  @override
  String get pilgrimageStepsTitle => 'Ritualer og trinn';

  @override
  String get pilgrimageImportantNotesTitle => 'Viktige merknader';

  @override
  String get pilgrimageDuaTitle => 'Dua for dette trinnet';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari fiqh-notat';

  @override
  String get pilgrimageComplete => '✓ Fullført';

  @override
  String get pilgrimageMarkDone => 'Merk som fullført';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done av $total trinn';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes minutter';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Sjia-pilegrimer';

  @override
  String get pilgrimageShiaNoteBody =>
      'Mange shia-pilgrimer reiser også til Medina for ziyarat av Profeten Muhammad (SAW) ved Masjid al-Nabawi og gravene ved Jannat al-Baqi. Disse besøkene har dyp åndelig betydning, selv om de ikke i seg selv er riter av Hajj.';

  @override
  String get hajjIntro =>
      'Hajj er den femte søylen i islam, obligatorisk én gang i livet for hver muslim som er fysisk og økonomisk i stand. For de fleste tolvte shia-pilgrimer i dag betyr dette Hajj al-Tamattu\', utført i måneden Dhul Hijjah i fotsporene til Profeten Ibrahim (AS), hans sønn Ismail (AS), og Lady Hajar. Denne guiden følger Ja\'fari-oversikten over ritene, mens ziyarat i Medina forblir en dypt kjær reise før eller etter Hajj.';

  @override
  String get umrahIntro =>
      'Umrah er den mindre pilegrimsreisen til Mekka og kan, i motsetning til Hajj, gjennomføres når som helst på året. Selv om den ikke er obligatorisk, gir den enorm åndelig belønning og regnes som en høyt anbefalt tilbedelseshandling. Den deler flere ritualer med Hajj, men er kortere og består av fire hovedriter.';

  @override
  String get voiceInputTitle => 'Talende inndata';

  @override
  String get voiceInputMicTitle => 'Mikrofon';

  @override
  String get voiceInputMicSubtitle =>
      'Snakk din inndata til Ask Ayara i stedet for å skrive.';

  @override
  String get voiceInputMicDenied => 'Mikrofontilgang ble nektet.';

  @override
  String get voiceInputSpeak => 'Snakk i stedet';

  @override
  String get voiceInputListening => 'Lytter…';

  @override
  String get voiceInputPermissionDenied =>
      'Mikrofontilgang er nødvendig for talende inndata.';
}
