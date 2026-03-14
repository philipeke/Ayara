// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Kies je taal';

  @override
  String get languageSelectSub => 'Je kunt dit later wijzigen in Instellingen';

  @override
  String get actionContinue => 'Doorgaan';

  @override
  String get languageSuggestedHeader => 'Aanbevolen';

  @override
  String get languageAllHeader => 'Alle talen';

  @override
  String get languageSuggestedBadge => 'Aanbevolen';

  @override
  String get languageSearchHint => 'Zoeken…';

  @override
  String get planBasic => 'Standaard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Dagelijkse begeleiding';

  @override
  String get categorySlot02 => 'Iman & Vertrouwen';

  @override
  String get categorySlot03 => 'Reflectie op gebed';

  @override
  String get categorySlot04 => 'Geduld en hoop';

  @override
  String get categorySlot05 => 'Vraag om vergeving';

  @override
  String get categorySlot06 => 'Barmhartigheid en mededogen';

  @override
  String get categorySlot07 => 'Kracht van het geloof';

  @override
  String get categorySlot08 => 'Dankbaar hart';

  @override
  String get categorySlot09 => 'Doel van het leven';

  @override
  String get categorySlot10 => 'Familiebanden';

  @override
  String get categorySlot11 => 'Innerlijke rust';

  @override
  String get categorySlot12 => 'Wijsheid van de Profeet';

  @override
  String get categorySlot13 => 'Goed karakter';

  @override
  String get categorySlot14 => 'Weersta verleiding';

  @override
  String get categorySlot15 => 'Avond-dhikr';

  @override
  String get categoryCustom => 'Persoonlijke reflectie';

  @override
  String get dhikrMeaningSubhanallah => 'Glorie zij Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Alle lof komt Allah toe';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah is de Grootste';

  @override
  String get quranVerseHeartAtRest =>
      'Voorwaar, in de gedachte aan Allah vinden harten rust.';

  @override
  String get promptHint =>
      'Tik op een categorie voor islamitische begeleiding en reflectie';

  @override
  String get currentLanguage => 'Huidige taal';

  @override
  String get settingsLanguage => 'Taalinstellingen';

  @override
  String get settingsTitle => 'Instellingen';

  @override
  String get chooseLanguage => 'Kies je taal';

  @override
  String get continueCta => 'Doorgaan';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count woorden',
      one: '$count woord',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opties';

  @override
  String get newCta => 'Nieuw';

  @override
  String get actionsTitle => 'Wat wil je doen?';

  @override
  String get copy => 'Kopiëren';

  @override
  String get share => 'Delen';

  @override
  String get close => 'Sluiten';

  @override
  String get copiedToast => 'Gekopieerd naar klembord';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Kon geen nieuw antwoord genereren';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nWil je het opnieuw proberen?';
  }

  @override
  String get cancelCta => 'Annuleren';

  @override
  String get retryCta => 'Opnieuw proberen';

  @override
  String get authTitle => 'Maak je account aan';

  @override
  String get continueAsGuest => 'Doorgaan als gast';

  @override
  String get signInGoogle => 'Inloggen met Google';

  @override
  String get signInApple => 'Inloggen met Apple';

  @override
  String get signInEmail => 'Inloggen met e-mail';

  @override
  String get upgradeWithApple => 'Doorgaan met Apple';

  @override
  String get mustAccept =>
      'Je moet de Servicevoorwaarden accepteren en het Privacybeleid erkennen.';

  @override
  String get termsLabel => 'Ik accepteer de Servicevoorwaarden';

  @override
  String get privacyLabel => 'Ik heb het Privacybeleid gelezen';

  @override
  String get marketingOptIn =>
      'Ik ga akkoord met het ontvangen van nieuws en aanbiedingen';

  @override
  String get openTerms => 'Servicevoorwaarden';

  @override
  String get openPrivacy => 'Privacybeleid';

  @override
  String get accountSection => 'Account';

  @override
  String get guestMode => 'Gastmodus';

  @override
  String get signedIn => 'Ingelogd';

  @override
  String get upgradeHint =>
      'Bewaar je reflecties op al je apparaten door een account aan te maken.';

  @override
  String get upgradeWithGoogle => 'Doorgaan met Google';

  @override
  String get signOut => 'Uitloggen';

  @override
  String get snackUpgraded => 'Account geüpgraded met Google ✅';

  @override
  String get snackSignedIn => 'Ingelogd met Google ✅';

  @override
  String get snackSignedOut => 'Uitgelogd';

  @override
  String get snackSignedInApple => 'Ingelogd met Apple ✅';

  @override
  String get snackSignedInGoogle => 'Ingelogd met Google ✅';

  @override
  String get snackUpgradedApple => 'Account geüpgraded met Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Account geüpgraded met Google ✅';

  @override
  String get historyTitle => 'Eerdere reflecties';

  @override
  String get historyOpenCta => 'Eerdere reflecties';

  @override
  String get historyEmpty => 'Nog geen opgeslagen reflecties.';

  @override
  String get historyDeleteTitle => 'Reflectie verwijderen?';

  @override
  String get historyDeleteBody =>
      'Dit verwijdert het geselecteerde item permanent.';

  @override
  String get deleteCta => 'Verwijderen';

  @override
  String get historyButton => 'Eerdere reflecties';

  @override
  String get historyEmptyTitle => 'Nog geen reflecties';

  @override
  String get historyEmptyBody =>
      'Genereer eerst iets — je opgeslagen items verschijnen hier.';

  @override
  String get historyDelete => 'Verwijderen';

  @override
  String get footerTitle => 'Met Wilaya, Iman en Sabr';

  @override
  String get footerSubtitle => 'Eén gebed tegelijk';

  @override
  String get genericErrorSnack =>
      'Er ging iets mis — probeer het zo meteen opnieuw.';

  @override
  String get upgradeAccountCta =>
      'Bewaar je reflecties op al je apparaten – maak een account aan';

  @override
  String get deleteAccount => 'Account verwijderen';

  @override
  String get exportData => 'Mijn gegevens exporteren';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Rustig aan 🐯\nAyara heeft even tijd nodig voor de volgende…';

  @override
  String get rateDailyLimit =>
      'Je reflecties zijn voorlopig op.\nKrijg meer reflecties of upgrade naar Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Je hebt al je reflecties gebruikt.\nVul aan of upgrade naar Wilaya om door te gaan.';

  @override
  String get rateGraceCreditsExhausted =>
      'Je reflecties zijn voorlopig op.\nKrijg meer reflecties of upgrade naar Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya ontgrendelt premiumfuncties, toekomstige categorieën en een speciale badge.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Je reflecties zijn nu op. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Kon je reflecties niet controleren: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Er ging iets mis bij het controleren van je reflecties.';

  @override
  String get aiFallbackGeneric =>
      'Er ging iets mis — probeer het zo meteen opnieuw.';

  @override
  String get limitSectionTitle => 'Reflecties';

  @override
  String get limitTodayLabel => 'Gebruik';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Resterende reflecties: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Laden…';

  @override
  String get limitLoadingLabelDescription =>
      'Wordt getoond in de reflectiekaart terwijl gebruiksstatistieken worden opgehaald.';

  @override
  String get aiLimitTitle => 'Reflecties';

  @override
  String get aiLimitSubtitle =>
      'Elk antwoord gebruikt 1 reflectie. Standaard bevat startreflecties. Wilaya ontgrendelt premiumcategorieën en maakt opwaarderen mogelijk.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflecties gebruikt';
  }

  @override
  String get creditsSectionTitle => 'Reflecties';

  @override
  String get creditsUsageLabel => 'Gebruik';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Resterende reflecties: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Laden…';

  @override
  String get creditsLoadingLabelDescription =>
      'Wordt getoond terwijl reflectiestatistieken worden opgehaald.';

  @override
  String get creditsTitle => 'Reflecties';

  @override
  String get creditsSubtitle =>
      'Elk antwoord gebruikt 1 reflectie. Standaard bevat startreflecties. Wilaya ontgrendelt premiumcategorieën en maakt opwaarderen mogelijk.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflecties gebruikt';
  }

  @override
  String get settingsDeleteTitle => 'Account verwijderen';

  @override
  String get settingsDeleteDescription =>
      'Verwijder je account en alle gekoppelde gegevens permanent.';

  @override
  String get settingsDeleteButtonLabel => 'Mijn account verwijderen';

  @override
  String get settingsDeleteDialogTitle => 'Account verwijderen?';

  @override
  String get settingsDeleteDialogBody =>
      'Deze actie is permanent en kan niet ongedaan worden gemaakt.\n\nAl je chats, geschiedenis en accountinformatie worden verwijderd.';

  @override
  String get settingsDeleteDialogCancel => 'Annuleren';

  @override
  String get settingsDeleteDialogConfirm => 'Verwijderen';

  @override
  String get settingsFreeLimitUsedTitle => 'Startreflecties gebruikt';

  @override
  String get settingsFreeLimitUsedDescription =>
      'De startreflecties voor dit apparaat zijn gebruikt. Upgrade naar Wilaya of koop meer reflecties om door te gaan.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Startreflecties gebruikt';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'De startreflecties voor dit apparaat zijn gebruikt. Upgrade naar Wilaya of koop meer reflecties om door te gaan.';

  @override
  String get deviceBoundError =>
      'Dit apparaat is al gekoppeld aan een ander account. Log in met het oorspronkelijke account.';

  @override
  String get premiumTitle => 'Wilaya-modus';

  @override
  String get premiumSubtitleBasic => 'Ontgrendel de volledige Ayara-ervaring.';

  @override
  String get premiumSubtitlePremium =>
      'Je gebruikt Wilaya. Meer reflecties nodig?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Huidig plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflecties: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Aankopen zijn nu niet beschikbaar.';

  @override
  String get premiumSignInToPurchase =>
      'Log in om reflecties te kopen of Wilaya te ontgrendelen.';

  @override
  String get premiumRestorePurchases => 'Aankopen herstellen';

  @override
  String get premiumProcessing => 'Verwerken…';

  @override
  String get premiumRestoreHintTitle =>
      'Heb je Wilaya of reflecties al gekocht op dit apparaat of een ander apparaat?';

  @override
  String get premiumRestoreHintBody =>
      'Herstel je aankopen als ze niet worden weergegeven.';

  @override
  String get premiumBuyCredits200 => 'Koop 200 reflecties';

  @override
  String get premiumBuyCredits400 => 'Koop 400 reflecties';

  @override
  String get premiumBecomePremiumOneTime => 'Upgrade naar Wilaya-modus';

  @override
  String get premiumTopupHint =>
      'Met Wilaya kun je extra reflecties opwaarderen wanneer je ze nodig hebt.';

  @override
  String get premiumUpgradeCta => 'Upgraden';

  @override
  String get premiumRequiredForCategory =>
      'Deze categorie is alleen beschikbaar voor Wilaya-gebruikers. Upgrade in Instellingen om alle premiuminhoud te ontgrendelen.';

  @override
  String get premiumBenefitsBasic =>
      'Ontgrendel Wilaya om extra reflecties te krijgen, toegang tot premiumcategorieën te krijgen en door te gaan wanneer je begeleiding nodig hebt.';

  @override
  String get premiumBenefitsPremium =>
      'Je zit in Wilaya-modus. Als je bijna op bent, voeg extra reflecties toe en ga verder zonder onderbrekingen.';

  @override
  String get premiumButtonBecomePremium => 'Ontgrendel Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Voeg 1000 reflecties toe';

  @override
  String get premiumBadge => 'Wilaya actief';

  @override
  String get premiumLoadingStore => 'Winkel laden…';

  @override
  String get premiumProductNotAvailable =>
      'Dit product is nog niet beschikbaar in de winkel. Probeer het later opnieuw.';

  @override
  String get premiumPurchaseError =>
      'Er ging iets mis met de aankoop. Probeer het opnieuw.';

  @override
  String get premiumBuyCredits100 => 'Voeg 100 reflecties toe';

  @override
  String get premiumFeatureLocked =>
      'Ontgrendel Wilaya om deze functie te gebruiken.';

  @override
  String get lockedCategoriesHint =>
      'Sommige categorieën zijn gereserveerd voor Wilaya-leden. Ontgrendel ze om elke reflectie op je reis te verkennen.';

  @override
  String get freePlanBlockedTitle => 'Je hebt je startreflecties gebruikt';

  @override
  String get freePlanBlockedBody =>
      'Je gebruikt het Standaard-plan met startreflecties en hebt de limiet bereikt. Om door te gaan — en premiumcategorieën te ontgrendelen — upgrade je naar Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Bekijk hieronder de Wilaya-opties';

  @override
  String get graceBlockedTitle => 'Je hebt je startreflecties gebruikt';

  @override
  String get graceBlockedBody =>
      'Je gebruikt het Standaard-plan met startreflecties en hebt de limiet bereikt. Om door te gaan — en premiumcategorieën te ontgrendelen — upgrade je naar Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Bekijk hieronder de Wilaya-opties';

  @override
  String get rateGuestMustSignIn =>
      'Log in om Ayara en je reflecties te gebruiken.';

  @override
  String get guestNoCreditsTitle => 'Gastmodus';

  @override
  String get guestNoCreditsBody =>
      'Als gast kun je de app bekijken, maar je kunt geen reflecties gebruiken. Log later in via Instellingen om reflecties te gebruiken en aankopen te ontgrendelen.';

  @override
  String get guestDialogContinue => 'Doorgaan';

  @override
  String get guestDialogLoginInstead => 'In plaats daarvan inloggen';

  @override
  String get optionalLabel => 'optioneel';

  @override
  String get accountDeleteSuccessTitle => 'Account verwijderd';

  @override
  String get accountDeleteSuccessBody =>
      'Je account en gekoppelde gegevens zijn succesvol verwijderd.';

  @override
  String get accountDeleteSuccessClose => 'Sluiten';

  @override
  String get accountDeleteErrorTitle => 'Kon account niet verwijderen';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Opnieuw authenticeren is geannuleerd. Log opnieuw in en probeer het verwijderen opnieuw.';

  @override
  String get accountDeleteReauthRequired =>
      'Voor het verwijderen van het account is een recente login vereist. Log uit, log opnieuw in en probeer het opnieuw.';

  @override
  String get settingsDeletePermanentWarning =>
      'Deze actie is permanent en kan niet ongedaan worden gemaakt. Alle gegevens die aan je account zijn gekoppeld worden verwijderd.';

  @override
  String get dailyGraceTitle => 'Dagelijkse begeleiding';

  @override
  String get dailyGraceScriptureLabel => 'VERZ VAN DE DAG';

  @override
  String get dailyGraceSaintLabel => 'GELEERDE VAN DE WEEK';

  @override
  String get dailyGraceReflectionLabel => 'AVONDREFLECTIE';

  @override
  String get dailyGraceCopiedToast => 'Vers gekopieerd naar klembord';

  @override
  String get locationConsentLabel =>
      'Sta Ayara toe mijn locatie te gebruiken voor de Kibla-richting en gebedstijden';

  @override
  String get locationConsentHint =>
      'Alleen gebruikt voor deze functies. Je locatie wordt nooit gedeeld of opgeslagen.';

  @override
  String get askPageTitle => 'Vraag Ayara';

  @override
  String get askPageDescription =>
      'Stel elke vraag over geloof, gebed, leven of islamitische praktijk en ontvang begeleiding die geworteld is in de Koran en de leer van de Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Typ je vraag hier…';

  @override
  String get askPageSubmitCta => 'Vraag';

  @override
  String get askPageInputEmptyError => 'Schrijf eerst een vraag.';

  @override
  String get askResultYourQuestion => 'Jouw vraag';

  @override
  String get guidancePageTitle => 'Kibla';

  @override
  String get qiblaFacingMecca => 'Gericht naar Mekka';

  @override
  String get qiblaCompassInstruction =>
      'Draai je telefoon totdat de gouden naald omhoog wijst.\nDie richting wijst naar de Kibla (Mekka).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS-signaal is zwak. Ga naar buiten en tik op Opnieuw proberen.';

  @override
  String get qiblaRetry => 'Opnieuw proberen';

  @override
  String get qiblaTitle => 'Kibla-richting';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km naar Mekka';
  }

  @override
  String get qiblaLocationNeededTitle => 'Locatie vereist';

  @override
  String get qiblaLocationNeededBody =>
      'Sta locatietoegang toe zodat Ayara de richting van de Ka\'aba in Mekka kan berekenen vanaf waar je bent.';

  @override
  String get qiblaOpenSettings => 'Instellingen openen';

  @override
  String get qiblaCompassLoading => 'Je positie bepalen…';

  @override
  String get qiblaTowardMecca => 'Richting Mekka';

  @override
  String get prayerTimesTitle => 'Gebedstijden';

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
  String get prayerTimesLocationNeededTitle => 'Locatie vereist';

  @override
  String get prayerTimesLocationNeededBody =>
      'Sta locatietoegang toe zodat Ayara nauwkeurige gebedstijden voor jouw stad kan berekenen.';

  @override
  String get prayerTimesNextLabel => 'Volgende';

  @override
  String get prayerTimesDoneLabel => 'Klaar';

  @override
  String get monthlyPrayerTimesTitle => 'Maandelijkse gebedstijden';

  @override
  String get monthlyPrayerTimesViewButton => 'Volledige maand bekijken';

  @override
  String get monthlyPrayerTimesNextMonth => 'Volgende maand';

  @override
  String get monthlyPrayerTimesDayHeader => 'Dag';

  @override
  String get sharePrayerTimes => 'Gebedstijden delen';

  @override
  String get notificationsSectionTitle => 'Meldingen';

  @override
  String get notificationsSectionSubtitle =>
      'Gebedsherinneringen, agenda-evenementen en meer';

  @override
  String get dailyReflectionReminderTitle => 'Dagelijkse reflectie';

  @override
  String get dailyReflectionReminderDescription =>
      'Een zachte dagelijkse herinnering om Ayara te openen en je met je geloof te verbinden.';

  @override
  String get dailyReflectionReminderEnable =>
      'Dagelijkse herinnering inschakelen';

  @override
  String get dailyReflectionReminderTimeLabel => 'Tijd van herinnering';

  @override
  String get prayerNotificationsTitle => 'Gebedsherinneringen';

  @override
  String get prayerNotificationsDescription =>
      'Ontvang een zachte herinnering vóór elke gebedstijd om je de hele dag verbonden te houden.';

  @override
  String get prayerNotificationsEnable => 'Gebedsherinneringen inschakelen';

  @override
  String get prayerNotificationsOpenSettings => 'Meldingsinstellingen openen';

  @override
  String get prayerNotificationsDenied => 'Meldingen zijn uitgeschakeld';

  @override
  String get prayerNotificationsDeniedHint =>
      'Ga naar Instellingen en sta meldingen voor Ayara toe om herinneringen voor gebedstijden te ontvangen.';

  @override
  String get notificationsConsentLabel => 'Sta meldingen voor gebedstijden toe';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Ochtendgebed';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr is het gebed van de ochtenden van de Ahl al-Bayt. Imam Ali (AS) zei: Bewaak het ochtendgebed zoals je je kostbaarste toevertrouwen bewaakt. Sta op, reinig jezelf en sta voor Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Middaggebed';

  @override
  String get prayerNotifBodyDhuhr =>
      'De Imams van de Ahl al-Bayt hechtten grote waarde aan elk moment van herinnering. Pauzeer je dag, combineer Dhuhr met Asr indien nodig, en richt je hart opnieuw op Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Namiddaggebed';

  @override
  String get prayerNotifBodyAsr =>
      'Bewaar het gebed, want het is het verbond tussen jou en Allah. Het is tijd voor Asr — laat het niet voorbijgaan zonder herinnering.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Zonsondergangsgebed';

  @override
  String get prayerNotifBodyMaghrib =>
      'De zon is ondergegaan — een moment dat de Ahl al-Bayt heilig achtten voor smeekbeden. Verricht Maghrib en hef je handen op naar Allah in dua voordat de nacht begint.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Nachtgebed';

  @override
  String get prayerNotifBodyIsha =>
      'Sluit je dag af in het gezelschap van Allah. De Imams moedigden Salat al-Layl na Isha aan — maar voltooi eerst je Isha en sluit de dag af met Zijn herinnering.';

  @override
  String get outOfReflectionsBannerText => 'Je hebt al je reflecties gebruikt';

  @override
  String get outOfReflectionsBannerCta => 'Meer krijgen';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tik op de cirkel om te tellen';

  @override
  String get dhikrResetButton => 'Resetten';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Je hebt 100 herinneringen aan Allah voltooid. Mogen zij een licht zijn voor je hart.';

  @override
  String get disclaimerTitle => 'Over de begeleiding in deze app';

  @override
  String get disclaimerBody =>
      'Ayara biedt islamitische reflecties, herinneringen en spirituele inhoud om je persoonlijke geloofsreis te ondersteunen, geworteld in de Koran en de leer van de Ahl al-Bayt. Deze inhoud wordt uitsluitend aangeboden voor algemene informatieve en inspirerende doeleinden.\n\nAyara vervangt geen gekwalificeerde geleerden.\nDe begeleiding in deze app is geen vervanging voor een geleerde islamitische wetenschapper, marja\', of theologisch opgeleide docent. In de sjiitische islam is religieuze begeleiding geworteld in de Ja\'fari-school van jurisprudentie (fiqh) en in de traditie van het volgen van een levende Marja\' (bron van navolging) — een gekwalificeerde jurist wiens uitspraken gelovigen leiden in de religieuze praktijk. Als je vragen hebt over religieuze uitspraken, halal- en haram-zaken, of persoonlijke religieuze verplichtingen, vraag dan advies aan een gekwalificeerde Marja\' of een geleerde in je gemeenschap.\n\nDeze app geeft geen religieuze uitspraken.\nAyara doet geen gezaghebbende uitspraken over zaken van fiqh of persoonlijke religieuze verplichtingen. Niets hier mag worden behandeld als een fatwa of bindende religieuze instructie.\n\nDe centrale plaats van de Ahl al-Bayt.\nIn de sjiitische islam zijn de Profeet Mohammed ﷺ en zijn gezuiverde huisgezin — de Ahl al-Bayt — de gezaghebbende gidsen van de islamitische gemeenschap na de Koran. De twaalf Imams van de Ahl al-Bayt zijn de goddelijk aangestelde uitleggers van de islamitische leer. De inhoud in deze app weerspiegelt die traditie en probeert die trouw te eren.\n\nDe rol van de gemeenschap.\nDeze app wil je aanmoedigen om je geloof te verdiepen, terwijl ze de vitale rol van je lokale moskee, islamitisch centrum en religieuze gemeenschap diep respecteert. We moedigen je aan verbonden te blijven met en te leren van gekwalificeerde leraren bij jou in de buurt.';

  @override
  String get disclaimerClose => 'Ik begrijp het';

  @override
  String get disclaimerInfoTooltip => 'Over de begeleiding in deze app';

  @override
  String get disclaimerSettingsSubtitle =>
      'Alleen voor algemene informatieve doeleinden. Tik om de volledige disclaimer te lezen.';

  @override
  String get disclaimerSectionHeader => 'Disclaimer over begeleiding';

  @override
  String get navHome => 'Home';

  @override
  String get navReflect => 'Reflecteer';

  @override
  String get navDuas => 'Dua\'s';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get dashboardToday => 'VANDAAG';

  @override
  String get dashboardComingUp => 'Binnenkort';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dagen',
      one: 'dag',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Snelle toegang';

  @override
  String get quickActionQibla => 'Kibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Begeleiding';

  @override
  String get quickActionPrayerTimes => 'Gebedstijden';

  @override
  String get askAyaraTitle => 'Vraag Ayara';

  @override
  String get askAyaraSubtitle =>
      'Stel elke islamitische vraag en ontvang een doordacht, begeleidend antwoord.';

  @override
  String get askAyaraHint => 'bijv. Wat is de betekenis van Ramadan?';

  @override
  String get askAyaraSubmit => 'Vraag';

  @override
  String get wisdomOfTheDayTitle => 'Wijsheid van de dag';

  @override
  String get calendarScreenTitle => 'Islamitische kalender';

  @override
  String get calendarUpcomingOccasions => 'Aankomende gelegenheden';

  @override
  String get calendarOccasionRemindersTitle =>
      'Herinneringen voor gelegenheden';

  @override
  String get calendarOccasionRemindersHint =>
      'Melding op de avond vóór elke gelegenheid';

  @override
  String get calendarNotifPermissionDenied =>
      'Meldingstoestemming geweigerd. Schakel dit in via de instellingen van je apparaat.';

  @override
  String get calendarNoEvents => 'Geen aankomende evenementen gevonden.';

  @override
  String get calendarAddToPhone => 'Toevoegen aan Telefoon Kalender';

  @override
  String get calendarAddedToPhone => 'Toegevoegd aan Kalender';

  @override
  String get calendarCountdownToday => 'VANDAAG';

  @override
  String get calendarCountdownTomorrow => 'MORGEN';

  @override
  String calendarCountdownDays(int days) {
    return 'over $days dagen';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'jan';

  @override
  String get calendarMonthFeb => 'feb';

  @override
  String get calendarMonthMar => 'mrt';

  @override
  String get calendarMonthApr => 'apr';

  @override
  String get calendarMonthMay => 'mei';

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
  String get calendarSeasonMuharramEarly =>
      'Dagen van Muharram — gedenk Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — dagen van rouw en reflectie';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — veertig dagen van Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'De weg naar Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — de dageraad van openbaring';

  @override
  String get calendarSeasonMidShaban =>
      'Midden Sha\'ban — verjaardag van Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — de maand van de Koran';

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
  String get duasScreenTitle => 'Dua\'s & Ziyarat';

  @override
  String get duasSearchHint => 'Zoek dua\'s, ziyarat…';

  @override
  String get duasFilterAll => 'Alle';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dua\'s & ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Geen dua\'s gevonden.';

  @override
  String get duaCategoryDaily => 'Dagelijks';

  @override
  String get duaCategoryWeekly => 'Wekelijks';

  @override
  String get duaCategoryOccasions => 'Gelegenheden';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Geboorte';

  @override
  String get eventTypeMartyrdom => 'Martelaarschap';

  @override
  String get eventTypeOccasion => 'Gelegenheid';

  @override
  String get duaCopyTooltip => 'Vertaling kopiëren';

  @override
  String get duaToggleTransliteration => 'Transliteratie';

  @override
  String get duaToggleTranslation => 'Vertaling';

  @override
  String get duaAskAiLabel => 'Vraag Ayara om deze dua uit te leggen';

  @override
  String get duaAskAiLockedLabel => 'Vraag Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara-uitleg is beschikbaar voor Wilaya-leden. Upgrade in Instellingen.';

  @override
  String duaAiComingSoon(String name) {
    return 'Vraag Ayara over \"$name\" — binnenkort beschikbaar!';
  }

  @override
  String get duaCopiedToast => 'Dua gekopieerd naar klembord.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah is de Grootste';

  @override
  String get tasbihAlhamdulillahMeaning => 'Alle lof behoort aan Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Glorie zij Allah';

  @override
  String get tasbihResetTooltip => 'Resetten';

  @override
  String get tasbihCompleteTitle => 'Tasbih voltooid';

  @override
  String get tasbihCompleteMessage => 'Moge Allah je dhikr aanvaarden.';

  @override
  String get tasbihTapHint => 'Tik ergens om te tellen';

  @override
  String get tasbihatScreenTitle => 'Gebedsgids';

  @override
  String get tasbihatScreenSubtitle => 'DE VERHEERLIJKINGEN VAN HET GEBED';

  @override
  String get tasbihatScreenDescription =>
      'Een volledige gids voor de verheerlijkingen die tijdens en na de dagelijkse gebeden worden gereciteerd — volgens de traditie van de Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Gereciteerd in de 3e & 4e rakʿah';

  @override
  String get tasbihatArba3Info =>
      'In de sjiitische jurisprudentie vervangt Tasbiḥāt al-Arbaʿa de Surah al-Fatiha in de 3e en 4e rakʿah van Dhuhr, Asr, Maghrib en Isha. Het is verplicht (wājib) om het eenmaal te reciteren, en aanbevolen (mustaḥabb) om het driemaal te reciteren.';

  @override
  String get tasbihatArba3Translation =>
      'Glorie zij Allah · Alle lof is voor Allah\nEr is geen god behalve Allah · Allah is de Grootste';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitatie voltooid';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Moge je gebed worden aanvaard — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tik na elke recitatie';

  @override
  String get tasbihatZahraSubtitle => 'Na elk gebed · 100 kralen';

  @override
  String get tasbihatZahraOriginLabel => 'Oorsprong';

  @override
  String get tasbihatZahraHadith =>
      'Vrouwe Fatima al-Zahra (sa) vroeg de Profeet ﷺ om een dienaar. Hij zei: \"Zal ik je niet iets beters leren? Zeg Subḥānallāh 33 keer, Alḥamdulillāh 33 keer en Allāhu Akbar 34 keer na elk gebed. Dat is beter voor jou dan een dienaar.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, deel 85';

  @override
  String get tasbihatZahraOpenCounter => 'Open Tasbīḥ-teller';

  @override
  String get tasbihatDuasTitle => 'AANBEVOLEN DUA\'S';

  @override
  String get tasbihatDuasSubtitle => 'Na het voltooien van je gebed';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Na elk verplicht gebed';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Wie Āyat al-Kursī reciteert na elk verplicht gebed, wordt door niets van het paradijs gescheiden behalve de dood. Imam al-Bāqir (a) zei dat het een van de grootste verzen in de Koran is.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Na elk gebed · verzegelt alle smeekbeden';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Het zenden van zegeningen over de Profeet ﷺ en zijn gezuiverde familie (Āl Muḥammad) wordt aanbevolen om elke dua te bezegelen. Imam al-Ṣādiq (a) zei: \"Elke dua blijft opgeschort totdat je ṣalawāt zendt over Muḥammad en zijn familie.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Na elk gebed · voor de Imam van onze tijd';

  @override
  String get tasbihatDuaFarajSource =>
      'Geleerd door Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Een dua voor de verschijning van Imam al-Mahdī (af), de twaalfde Imam, onderwezen door zijn vader. Dagelijks gereciteerd door sjiitische gelovigen na elk gebed als een daad van toewijding aan de levende Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ van Vrouwe Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Na Maghrib & Isha · bijzonder aanbevolen';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) zei dat het reciteren van Tasbīḥ al-Zahrā na Isha vóór het slapen beter is dan 1000 rakʿahs vrijwillig gebed. Het licht ervan stijgt op naar de hemelen.';

  @override
  String get tasbihFatimaGiftPre => 'Een geschenk van de Profeet';

  @override
  String get tasbihFatimaGiftPost => 'gereciteerd na elk gebed';

  @override
  String get prayerTrackerTitle => 'GEBEDSTRACKER';

  @override
  String get prayerTrackerPrayed => 'Gebeden';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count dagen op rij';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Alle gebeden voor vandaag zijn voltooid. Moge Allah ze aanvaarden.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Vandaag voltooid';

  @override
  String get dhikrTrackerNotDoneToday => 'Vandaag niet gedaan';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count dagen op rij';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ-herinnering';

  @override
  String get dhikrReminderDescription =>
      'Een zachte dagelijkse herinnering om je Tasbīḥ al-Zahrā (SA) te reciteren.';

  @override
  String get dhikrReminderEnable => 'Tasbīḥ-herinnering inschakelen';

  @override
  String get dhikrReminderTimeLabel => 'Tijd van herinnering';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Dagelijkse hadith';

  @override
  String get hadithLabelArabic => 'ARABISCH';

  @override
  String get hadithLabelTranslation => 'VERTALING';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Deel deze hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'Vorige';

  @override
  String get hadithNavNext => 'Volgende';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'De 14 Ma\'sumeen';

  @override
  String get imamsScreenSubtitle =>
      'De Profeet, Vrouwe Fatima en de Twaalf Imams — de onfeilbare gidsen van de islam';

  @override
  String get imamLabelBorn => 'Geboren';

  @override
  String get imamLabelMartyrdom => 'Martelaarschap';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFIE';

  @override
  String get imamSectionFamousSaying => 'BEKENDE UITSPRAAK';

  @override
  String get imamRoleProphet => 'De Laatste Profeet';

  @override
  String get imamRoleInfallible => 'De Onfeilbare';

  @override
  String get imamOrdinal1 => '1e Imam';

  @override
  String get imamOrdinal2 => '2e Imam';

  @override
  String get imamOrdinal3 => '3e Imam';

  @override
  String get imamOrdinal4 => '4e Imam';

  @override
  String get imamOrdinal5 => '5e Imam';

  @override
  String get imamOrdinal6 => '6e Imam';

  @override
  String get imamOrdinal7 => '7e Imam';

  @override
  String get imamOrdinal8 => '8e Imam';

  @override
  String get imamOrdinal9 => '9e Imam';

  @override
  String get imamOrdinal10 => '10e Imam';

  @override
  String get imamOrdinal11 => '11e Imam';

  @override
  String get imamOrdinal12 => '12e Imam';

  @override
  String get duaAudioScreenTitle => 'Luister naar dua\'s';

  @override
  String get duaAudioScreenSubtitle =>
      'Selecteer een dua om te beluisteren. Tik op de tegel om af te spelen of te pauzeren.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio voor deze dua zal beschikbaar zijn in een komende update.';

  @override
  String get duaAudioClose => 'Sluiten';

  @override
  String get duaAudioError => 'Kon audio niet laden. Controleer je verbinding.';

  @override
  String get duaAudioMetaTransmittedBy => 'Overgeleverd door';

  @override
  String get duaAudioMetaOccasion => 'Gelegenheid';

  @override
  String get duaAudioMetaDuration => 'Duur';

  @override
  String get quickActionDailyHadith => 'Dagelijkse hadith';

  @override
  String get quickAction14Masumeen => '14 Ma\'sumeen';

  @override
  String get quickActionListenDuas => 'Luisteren';

  @override
  String get quickActionTasbihat => 'Gebedsgids';

  @override
  String get pilgrimageSectionTitle => 'De Heilige Reis';

  @override
  String get pilgrimageSectionSubtitle =>
      'Volledige gidsen voor Hadj en Umrah — de bedevaart naar het Heilige Huis van Allah in Mekka';

  @override
  String get hajjCardTitle => 'Hadj';

  @override
  String get hajjCardSubtitle => 'De vijfde zuil van de islam';

  @override
  String get hajjCardDescription =>
      'De grote jaarlijkse bedevaart — één keer in het leven verplicht voor elke moslim die daartoe in staat is';

  @override
  String get hajjScreenTitle => 'Hadj-gids';

  @override
  String get hajjScreenSubtitle => 'Stapsgewijze gids voor de grote bedevaart';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'De kleine bedevaart';

  @override
  String get umrahCardDescription =>
      'Een diep belonende spirituele reis die op elk moment van het jaar kan worden verricht';

  @override
  String get umrahScreenTitle => 'Umrah-gids';

  @override
  String get umrahScreenSubtitle =>
      'Stapsgewijze gids voor de kleine bedevaart';

  @override
  String get pilgrimageStepsTitle => 'Rituelen & stappen';

  @override
  String get pilgrimageImportantNotesTitle => 'Belangrijke opmerkingen';

  @override
  String get pilgrimageDuaTitle => 'Dua voor deze stap';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Opmerking';

  @override
  String get pilgrimageComplete => '✓ Voltooid';

  @override
  String get pilgrimageMarkDone => 'Markeer als voltooid';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done van $total stappen';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Sjiitische pelgrims';

  @override
  String get pilgrimageShiaNoteBody =>
      'Sjiitische pelgrims reizen traditioneel ook naar Medina om het graf van de Profeet Mohammed ﷺ in Masjid al-Nabawi te bezoeken, evenals de graven van de Imams in Jannat al-Baqi. Deze bezoeken hebben een enorme spirituele betekenis en worden voor de meeste sjiitische moslims beschouwd als een integraal onderdeel van de reis.';

  @override
  String get hajjIntro =>
      'Hadj is de vijfde zuil van de islam, één keer in het leven verplicht voor elke moslim die fysiek en financieel in staat is. Het wordt verricht in de maand Dhul Hijjah en volgt de voetsporen van Profeet Ibrahim (AS), zijn zoon Ismail (AS) en Vrouwe Hajar. Voor sjiitische moslims omvat Hadj ook de diepe zegen van het bezoeken van de rustplaatsen van de Profeet ﷺ en de Ahlul Bayt in Medina.';

  @override
  String get umrahIntro =>
      'Umrah is de kleine bedevaart naar Mekka en kan, in tegenstelling tot Hadj, op elk moment van het jaar worden verricht. Hoewel het niet verplicht is, brengt het een immense spirituele beloning met zich mee en wordt het beschouwd als een sterk aanbevolen daad van aanbidding. Het deelt verschillende rituelen met Hadj, maar is korter en bestaat uit vier hoofdriten.';
}
