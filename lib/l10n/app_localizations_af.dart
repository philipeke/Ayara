// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class AppLocalizationsAf extends AppLocalizations {
  AppLocalizationsAf([String locale = 'af']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Kies jou taal';

  @override
  String get languageSelectSub => 'Jy kan dit later in Instellings verander';

  @override
  String get actionContinue => 'Gaan voort';

  @override
  String get languageSuggestedHeader => 'Voorgestel';

  @override
  String get languageAllHeader => 'Alle tale';

  @override
  String get languageSuggestedBadge => 'Voorgestel';

  @override
  String get languageSearchHint => 'Soek…';

  @override
  String get planBasic => 'Standaard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Daaglikse Leiding';

  @override
  String get categorySlot02 => 'Iman & Vertroue';

  @override
  String get categorySlot03 => 'Gebedsbesinning';

  @override
  String get categorySlot04 => 'Geduld & Hoop';

  @override
  String get categorySlot05 => 'Soek Vergifnis';

  @override
  String get categorySlot06 => 'Genade & Deernis';

  @override
  String get categorySlot07 => 'Krag van Geloof';

  @override
  String get categorySlot08 => 'Dankbare Hart';

  @override
  String get categorySlot09 => 'Lewensdoel';

  @override
  String get categorySlot10 => 'Familiebande';

  @override
  String get categorySlot11 => 'Innerlike Vrede';

  @override
  String get categorySlot12 => 'Wysheid van die Profeet';

  @override
  String get categorySlot13 => 'Goeie Karakter';

  @override
  String get categorySlot14 => 'Weerstaan Versoeking';

  @override
  String get categorySlot15 => 'Aand-Dhikr';

  @override
  String get categoryCustom => 'Persoonlike Besinning';

  @override
  String get dhikrMeaningSubhanallah => 'Heerlikheid aan Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Alle lof kom Allah toe';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah is die Grootste';

  @override
  String get quranVerseHeartAtRest =>
      'Waarlik, in die gedenking van Allah vind harte rus.';

  @override
  String get promptHint =>
      'Tik op ’n kategorie vir Islamitiese leiding en besinning';

  @override
  String get currentLanguage => 'Huidige taal';

  @override
  String get settingsLanguage => 'Taalinstellings';

  @override
  String get settingsTitle => 'Instellings';

  @override
  String get chooseLanguage => 'Kies jou taal';

  @override
  String get continueCta => 'Gaan voort';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count woorde',
      one: '$count woord',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opsies';

  @override
  String get newCta => 'Nuut';

  @override
  String get actionsTitle => 'Wat wil jy doen?';

  @override
  String get copy => 'Kopieer';

  @override
  String get share => 'Deel';

  @override
  String get close => 'Maak toe';

  @override
  String get copiedToast => 'Na knipbord gekopieer';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Kon nie ’n nuwe antwoord genereer nie';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nWil jy weer probeer?';
  }

  @override
  String get cancelCta => 'Kanselleer';

  @override
  String get retryCta => 'Probeer weer';

  @override
  String get authTitle => 'Skep jou rekening';

  @override
  String get continueAsGuest => 'Gaan voort as gas';

  @override
  String get signInGoogle => 'Meld aan met Google';

  @override
  String get signInApple => 'Meld aan met Apple';

  @override
  String get signInEmail => 'Meld aan met E-pos';

  @override
  String get upgradeWithApple => 'Gaan voort met Apple';

  @override
  String get mustAccept =>
      'Jy moet die Diensvoorwaardes aanvaar en die Privaatheidsbeleid erken.';

  @override
  String get termsLabel => 'Ek aanvaar die Diensvoorwaardes';

  @override
  String get privacyLabel => 'Ek het die Privaatheidsbeleid gelees';

  @override
  String get marketingOptIn => 'Ek stem in om nuus en aanbiedinge te ontvang';

  @override
  String get openTerms => 'Diensvoorwaardes';

  @override
  String get openPrivacy => 'Privaatheidsbeleid';

  @override
  String get accountSection => 'Rekening';

  @override
  String get guestMode => 'Gasmodus';

  @override
  String get signedIn => 'Aangemeld';

  @override
  String get upgradeHint =>
      'Stoor jou besinnings oor verskillende toestelle deur ’n rekening te skep.';

  @override
  String get upgradeWithGoogle => 'Gaan voort met Google';

  @override
  String get signOut => 'Meld af';

  @override
  String get snackUpgraded => 'Rekening met Google opgegradeer ✅';

  @override
  String get snackSignedIn => 'Met Google aangemeld ✅';

  @override
  String get snackSignedOut => 'Afgemeld';

  @override
  String get snackSignedInApple => 'Met Apple aangemeld ✅';

  @override
  String get snackSignedInGoogle => 'Met Google aangemeld ✅';

  @override
  String get snackUpgradedApple => 'Rekening met Apple opgegradeer ✅';

  @override
  String get snackUpgradedGoogle => 'Rekening met Google opgegradeer ✅';

  @override
  String get historyTitle => 'Vorige besinnings';

  @override
  String get historyOpenCta => 'Vorige besinnings';

  @override
  String get historyEmpty => 'Nog geen gestoorde besinnings nie.';

  @override
  String get historyDeleteTitle => 'Skrap besinning?';

  @override
  String get historyDeleteBody => 'Dit sal die gekose item permanent verwyder.';

  @override
  String get deleteCta => 'Skrap';

  @override
  String get historyButton => 'Vorige Besinnings';

  @override
  String get historyEmptyTitle => 'Nog geen besinnings nie';

  @override
  String get historyEmptyBody =>
      'Genereer eers iets — jou gestoorde items sal hier verskyn.';

  @override
  String get historyDelete => 'Skrap';

  @override
  String get footerTitle => 'Met Wilaya, Iman en Sabr';

  @override
  String get footerSubtitle => 'Een gebed op ’n slag';

  @override
  String get genericErrorSnack =>
      'Iets het verkeerd geloop — probeer asseblief weer oor ’n oomblik.';

  @override
  String get upgradeAccountCta =>
      'Stoor jou besinnings oor verskillende toestelle – skep ’n rekening';

  @override
  String get deleteAccount => 'Skrap rekening';

  @override
  String get exportData => 'Voer my data uit';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Rustig nou 🐯\nAyara het ’n oomblik nodig voor die volgende een…';

  @override
  String get rateDailyLimit =>
      'Jy is vir nou uit besinnings.\nKry meer besinnings of gradeer op na Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Jy het al jou besinnings gebruik.\nVul aan of gradeer op na Wilaya om voort te gaan.';

  @override
  String get rateGraceCreditsExhausted =>
      'Jy is vir nou uit besinnings.\nKry meer besinnings of gradeer op na Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya ontsluit premium-funksies, toekomstige kategorieë en ’n spesiale kenteken.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Jou besinnings is tans op. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Kon nie jou besinnings nagaan nie: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Iets het verkeerd geloop terwyl jou besinnings nagegaan is.';

  @override
  String get aiFallbackGeneric =>
      'Iets het verkeerd geloop — probeer asseblief weer oor ’n oomblik.';

  @override
  String get limitSectionTitle => 'Besinnings';

  @override
  String get limitTodayLabel => 'Gebruik';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Oorblywende besinnings: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Laai…';

  @override
  String get limitLoadingLabelDescription =>
      'Wys in die besinningskaart terwyl gebruiksdata verkry word.';

  @override
  String get aiLimitTitle => 'Besinnings';

  @override
  String get aiLimitSubtitle =>
      'Elke antwoord gebruik 1 besinning. Standaard sluit beginner-besinnings in. Wilaya ontsluit premium-kategorieë en maak opvullings moontlik.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total besinnings gebruik';
  }

  @override
  String get creditsSectionTitle => 'Besinnings';

  @override
  String get creditsUsageLabel => 'Gebruik';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Oorblywende besinnings: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Laai…';

  @override
  String get creditsLoadingLabelDescription =>
      'Wys terwyl besinningsdata verkry word.';

  @override
  String get creditsTitle => 'Besinnings';

  @override
  String get creditsSubtitle =>
      'Elke antwoord gebruik 1 besinning. Standaard sluit beginner-besinnings in. Wilaya ontsluit premium-kategorieë en maak opvullings moontlik.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total besinnings gebruik';
  }

  @override
  String get settingsDeleteTitle => 'Skrap rekening';

  @override
  String get settingsDeleteDescription =>
      'Skrap jou rekening en alle verwante data permanent.';

  @override
  String get settingsDeleteButtonLabel => 'Skrap my rekening';

  @override
  String get settingsDeleteDialogTitle => 'Skrap rekening?';

  @override
  String get settingsDeleteDialogBody =>
      'Hierdie handeling is permanent en kan nie ongedaan gemaak word nie.\n\nAl jou kletse, geskiedenis en rekeninginligting sal geskrap word.';

  @override
  String get settingsDeleteDialogCancel => 'Kanselleer';

  @override
  String get settingsDeleteDialogConfirm => 'Skrap';

  @override
  String get settingsFreeLimitUsedTitle => 'Beginner-besinnings gebruik';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Die beginner-besinnings vir hierdie toestel is gebruik. Gradeer op na Wilaya of koop meer besinnings om voort te gaan.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Beginner-besinnings gebruik';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Die beginner-besinnings vir hierdie toestel is gebruik. Gradeer op na Wilaya of koop meer besinnings om voort te gaan.';

  @override
  String get deviceBoundError =>
      'Hierdie toestel is reeds aan ’n ander rekening gekoppel. Meld asseblief aan met die oorspronklike rekening.';

  @override
  String get premiumTitle => 'Wilaya-modus';

  @override
  String get premiumSubtitleBasic => 'Ontsluit die volle Ayara-ervaring.';

  @override
  String get premiumSubtitlePremium =>
      'Jy is op Wilaya. Het jy meer besinnings nodig?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Huidige plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Besinnings: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Aankope is tans nie beskikbaar nie.';

  @override
  String get premiumSignInToPurchase =>
      'Meld aan om besinnings te koop of Wilaya te ontsluit.';

  @override
  String get premiumRestorePurchases => 'Herstel aankope';

  @override
  String get premiumProcessing => 'Verwerk…';

  @override
  String get premiumRestoreHintTitle =>
      'Het jy reeds Wilaya of besinnings op hierdie of ’n ander toestel gekoop?';

  @override
  String get premiumRestoreHintBody =>
      'Herstel jou aankope as dit nie wys nie.';

  @override
  String get premiumBuyCredits200 => 'Koop 200 besinnings';

  @override
  String get premiumBuyCredits400 => 'Koop 400 besinnings';

  @override
  String get premiumBecomePremiumOneTime => 'Gradeer op na Wilaya-modus';

  @override
  String get premiumTopupHint =>
      'Met Wilaya kan jy enige tyd ekstra besinnings byvoeg wanneer jy dit nodig het.';

  @override
  String get premiumUpgradeCta => 'Gradeer op';

  @override
  String get premiumRequiredForCategory =>
      'Hierdie kategorie is slegs vir Wilaya-gebruikers beskikbaar. Gradeer in Instellings op om alle premium-inhoud te ontsluit.';

  @override
  String get premiumBenefitsBasic =>
      'Ontsluit Wilaya om ekstra besinnings te kry, toegang tot premium-kategorieë te hê en voort te gaan wanneer jy leiding nodig het.';

  @override
  String get premiumBenefitsPremium =>
      'Jy is in Wilaya-modus. As jy min raak, voeg ekstra besinnings by en gaan sonder onderbreking voort.';

  @override
  String get premiumButtonBecomePremium => 'Ontsluit Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Voeg 1000 besinnings by';

  @override
  String get premiumBadge => 'Wilaya aktief';

  @override
  String get premiumLoadingStore => 'Laai winkel…';

  @override
  String get premiumProductNotAvailable =>
      'Hierdie produk is nog nie in die winkel beskikbaar nie. Probeer asseblief later weer.';

  @override
  String get premiumPurchaseError =>
      'Iets het met die aankoop verkeerd geloop. Probeer asseblief weer.';

  @override
  String get premiumBuyCredits100 => 'Voeg 100 besinnings by';

  @override
  String get premiumFeatureLocked =>
      'Ontsluit Wilaya om toegang tot hierdie funksie te kry.';

  @override
  String get lockedCategoriesHint =>
      'Sommige kategorieë is vir Wilaya-lede gereserveer. Ontsluit hulle om elke besinning op jou reis te verken.';

  @override
  String get freePlanBlockedTitle => 'Jy het jou beginner-besinnings opgebruik';

  @override
  String get freePlanBlockedBody =>
      'Jy is op die Standaard-plan met beginner-besinnings, en jy het die limiet bereik. Om voort te gaan — en premium-kategorieë te ontsluit — gradeer op na Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Sien Wilaya-opsies hieronder';

  @override
  String get graceBlockedTitle => 'Jy het jou beginner-besinnings opgebruik';

  @override
  String get graceBlockedBody =>
      'Jy is op die Standaard-plan met beginner-besinnings, en jy het die limiet bereik. Om voort te gaan — en premium-kategorieë te ontsluit — gradeer op na Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Sien Wilaya-opsies hieronder';

  @override
  String get rateGuestMustSignIn =>
      'Meld aan om Ayara en jou besinnings te gebruik.';

  @override
  String get guestNoCreditsTitle => 'Gasmodus';

  @override
  String get guestNoCreditsBody =>
      'As gas kan jy deur die app blaai, maar jy kan nie besinnings gebruik nie. Meld later in Instellings aan om besinnings te gebruik en aankope te ontsluit.';

  @override
  String get guestDialogContinue => 'Gaan voort';

  @override
  String get guestDialogLoginInstead => 'Meld eerder aan';

  @override
  String get optionalLabel => 'opsioneel';

  @override
  String get accountDeleteSuccessTitle => 'Rekening geskrap';

  @override
  String get accountDeleteSuccessBody =>
      'Jou rekening en verwante data is suksesvol geskrap.';

  @override
  String get accountDeleteSuccessClose => 'Maak toe';

  @override
  String get accountDeleteErrorTitle => 'Kon nie rekening skrap nie';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Herverifikasie is gekanselleer. Meld asseblief weer aan en probeer die skrapping weer.';

  @override
  String get accountDeleteReauthRequired =>
      'Rekeningskrapping vereis ’n onlangse aanmelding. Meld asseblief af, meld weer aan en probeer weer.';

  @override
  String get settingsDeletePermanentWarning =>
      'Hierdie handeling is permanent en kan nie ongedaan gemaak word nie. Alle data wat met jou rekening geassosieer word, sal geskrap word.';

  @override
  String get dailyGraceTitle => 'Daaglikse Leiding';

  @override
  String get dailyGraceScriptureLabel => 'VERS VAN DIE DAG';

  @override
  String get dailyGraceSaintLabel => 'FIGUUR VAN DIE WEEK';

  @override
  String get dailyGraceReflectionLabel => 'AANDBESINNING';

  @override
  String get dailyGraceCopiedToast => 'Vers na knipbord gekopieer';

  @override
  String get locationConsentLabel =>
      'Laat Ayara toe om my ligging vir Qibla-rigting en gebedstye te gebruik';

  @override
  String get locationConsentHint =>
      'Slegs vir hierdie funksies gebruik. Jou ligging word nooit gedeel of gestoor nie.';

  @override
  String get askPageTitle => 'Vra Ayara';

  @override
  String get askPageDescription =>
      'Vra enigiets oor geloof, gebed, lewe of Islamitiese praktyk en ontvang leiding wat in die Koran en die leringe van die Ahl al-Bayt gegrond is.';

  @override
  String get askPageInputHint => 'Tik jou vraag hier…';

  @override
  String get askPageSubmitCta => 'Vra';

  @override
  String get askPageInputEmptyError => 'Skryf asseblief eers ’n vraag.';

  @override
  String get askResultYourQuestion => 'Jou vraag';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Gerig na Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Draai jou foon totdat die goue naald opwaarts wys.\nDaardie rigting wys na die Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS-sein is swak. Beweeg buitentoe en tik Probeer weer.';

  @override
  String get qiblaRetry => 'Probeer weer';

  @override
  String get qiblaTitle => 'Qibla-rigting';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km na Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Ligging benodig';

  @override
  String get qiblaLocationNeededBody =>
      'Laat liggingtoegang toe sodat Ayara die rigting van die Kaaba in Makkah kan bereken van waar jy ook al is.';

  @override
  String get qiblaOpenSettings => 'Maak Instellings oop';

  @override
  String get qiblaCompassLoading => 'Vind jou posisie…';

  @override
  String get qiblaTowardMecca => 'Na Makkah';

  @override
  String get prayerTimesTitle => 'Gebedstye';

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
  String get prayerTimesLocationNeededTitle => 'Ligging benodig';

  @override
  String get prayerTimesLocationNeededBody =>
      'Laat liggingtoegang toe sodat Ayara akkurate gebedstye vir jou stad kan bereken.';

  @override
  String get prayerTimesNextLabel => 'Volgende';

  @override
  String get prayerTimesDoneLabel => 'Klaar';

  @override
  String get monthlyPrayerTimesTitle => 'Maandelikse Gebedstye';

  @override
  String get monthlyPrayerTimesViewButton => 'Bekyk Volle Maand';

  @override
  String get monthlyPrayerTimesNextMonth => 'Volgende maand';

  @override
  String get monthlyPrayerTimesDayHeader => 'Dag';

  @override
  String get sharePrayerTimes => 'Deel gebedstye';

  @override
  String get notificationsSectionTitle => 'Kennisgewings';

  @override
  String get notificationsSectionSubtitle =>
      'Gebedsherinnerings, kalendergebeurtenisse en meer';

  @override
  String get dailyReflectionReminderTitle => 'Daaglikse Besinning';

  @override
  String get dailyReflectionReminderDescription =>
      '’n Sagte daaglikse herinnering om Ayara oop te maak en met jou geloof te verbind.';

  @override
  String get dailyReflectionReminderEnable => 'Aktiveer daaglikse herinnering';

  @override
  String get dailyReflectionReminderTimeLabel => 'Herinneringstyd';

  @override
  String get prayerNotificationsTitle => 'Gebedsherinnerings';

  @override
  String get prayerNotificationsDescription =>
      'Ontvang ’n sagte herinnering voor elke gebedstyd om jou deur die dag verbind te hou.';

  @override
  String get prayerNotificationsEnable => 'Aktiveer gebedsherinnerings';

  @override
  String get prayerNotificationsOpenSettings =>
      'Maak kennisgewinginstellings oop';

  @override
  String get prayerNotificationsDenied => 'Kennisgewings is gedeaktiveer';

  @override
  String get prayerNotificationsDeniedHint =>
      'Gaan na Instellings en laat kennisgewings vir Ayara toe om gebedstydherinnerings te ontvang.';

  @override
  String get notificationsConsentLabel =>
      'Laat kennisgewings vir gebedstye toe';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Oggendgebed';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr is die gebed van die Ahl al-Bayt se oggende. Imam Ali (AS) het gesê: Bewaak die dagbreekgebed soos jy jou kosbaarste trust bewaak. Staan op, reinig jouself en staan voor Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Middaggebed';

  @override
  String get prayerNotifBodyDhuhr =>
      'Die Imams van die Ahl al-Bayt het elke oomblik van herinnering gekoester. Onderbreek jou dag, kombineer Dhuhr met Asr indien nodig, en bring jou hart terug na Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Namiddaggebed';

  @override
  String get prayerNotifBodyAsr =>
      'Bewaak die gebed, want dit is die verbond tussen jou en Allah. Asr-tyd het aangebreek — moenie dit sonder herinnering laat verbygaan nie.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Sonondergebed';

  @override
  String get prayerNotifBodyMaghrib =>
      'Die son het ondergegaan — ’n oomblik wat die Ahl al-Bayt heilig geag het vir smeking. Verrig Maghrib en hef jou hande tot Allah in dua voordat die nag begin.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Naggebed';

  @override
  String get prayerNotifBodyIsha =>
      'Sluit jou dag af in die geselskap van Allah. Die Imams het Salat al-Layl ná Isha aangemoedig — maar voltooi eers jou Isha en sluit die dag af met Sy gedenking.';

  @override
  String get outOfReflectionsBannerText => 'Jy het al jou besinnings gebruik';

  @override
  String get outOfReflectionsBannerCta => 'Kry meer';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Tik die sirkel om te tel';

  @override
  String get dhikrResetButton => 'Herstel';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Jy het 100 gedenkings van Allah voltooi. Mag dit ’n lig vir jou hart wees.';

  @override
  String get disclaimerTitle => 'Oor hierdie toepassing se leiding';

  @override
  String get disclaimerBody =>
      'Ayara bied Islamitiese besinnings, herinnerings en geestelike inhoud om jou persoonlike geloofsreis te ondersteun, gegrond in die Koran en die leringe van die Ahl al-Bayt. Hierdie inhoud word slegs vir algemene inligtings- en inspirasiedoeleindes aangebied.\n\nAyara vervang nie gekwalifiseerde geleerdheid nie.\nDie leiding in hierdie toepassing is nie ’n plaasvervanger vir ’n geleerde Islamitiese geleerde, marja\', of teologies opgeleide onderwyser nie. In Sjia-Islam is godsdienstige leiding gegrond in die Ja\'fari-regskool (fiqh) en die tradisie om ’n lewende Marja\' (bron van navolging) te volg — ’n gekwalifiseerde regsgeleerde wie se uitsprake gelowiges in hul godsdienstige praktyk lei. As jy vrae het oor godsdienstige uitsprake, halal- en haram-sake, of persoonlike godsdienstige verpligtinge, raadpleeg asseblief ’n gekwalifiseerde Marja\' of ’n geleerde in jou gemeenskap.\n\nHierdie toepassing reik nie godsdienstige uitsprake uit nie.\nAyara maak nie gesaghebbende bepalings oor sake van fiqh of persoonlike godsdienstige verpligtinge nie. Niks hier moet as ’n fatwa of bindende godsdienstige instruksie beskou word nie.\n\nDie sentraliteit van die Ahl al-Bayt.\nIn Sjia-Islam is die Profeet Muhammad ﷺ en sy gesuiwerde huisgesin — die Ahl al-Bayt — die gesaghebbende gidse van die Islamitiese gemeenskap ná die Koran. Die twaalf Imams van die Ahl al-Bayt is die goddelik aangewese vertolkers van Islamitiese leer. Inhoud in hierdie toepassing weerspieël hierdie tradisie en poog om dit getrou te eer.\n\nGemeenskapsake.\nHierdie toepassing beoog om jou betrokkenheid by geloof aan te moedig terwyl dit die belangrike rol van jou plaaslike moskee, Islamitiese sentrum en godsdienstige gemeenskap diep respekteer. Ons moedig jou aan om verbind te bly met en te leer van gekwalifiseerde onderwysers naby jou.';

  @override
  String get disclaimerClose => 'Ek verstaan';

  @override
  String get disclaimerInfoTooltip => 'Oor hierdie toepassing se leiding';

  @override
  String get disclaimerSettingsSubtitle =>
      'Slegs vir algemene inligtingsdoeleindes. Tik om die volledige vrywaring te lees.';

  @override
  String get disclaimerSectionHeader => 'Leidingsvrywaring';

  @override
  String get navHome => 'Tuis';

  @override
  String get navReflect => 'Besin';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get dashboardToday => 'VANDAG';

  @override
  String get dashboardComingUp => 'Kom binnekort';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dae',
      one: 'dag',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Vinnige Toegang';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Leiding';

  @override
  String get quickActionPrayerTimes => 'Gebedstye';

  @override
  String get askAyaraTitle => 'Vra Ayara';

  @override
  String get askAyaraSubtitle =>
      'Vra enige Islamitiese vraag en ontvang ’n deurdagte, begeleide antwoord.';

  @override
  String get askAyaraHint => 'bv. Wat is die betekenis van Ramadan?';

  @override
  String get askAyaraSubmit => 'Vra';

  @override
  String get wisdomOfTheDayTitle => 'Wysheid van die Dag';

  @override
  String get calendarScreenTitle => 'Islamitiese Kalender';

  @override
  String get calendarUpcomingOccasions => 'Komende Geleenthede';

  @override
  String get calendarOccasionRemindersTitle => 'Geleentheidsherinnerings';

  @override
  String get calendarOccasionRemindersHint =>
      'Jy word die aand voor elke geleentheid in kennis gestel';

  @override
  String get calendarNotifPermissionDenied =>
      'Kennisgewingtoestemming geweier. Aktiveer dit in jou toestelinstellings.';

  @override
  String get calendarNoEvents => 'Geen komende geleenthede gevind nie.';

  @override
  String get calendarAddToPhone => 'Voeg by Telefoon Kalender';

  @override
  String get calendarAddedToPhone => 'By Kalender gevoeg';

  @override
  String get calendarCountdownToday => 'VANDAG';

  @override
  String get calendarCountdownTomorrow => 'MÔRE';

  @override
  String calendarCountdownDays(int days) {
    return 'oor $days dae';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mrt';

  @override
  String get calendarMonthApr => 'Apr';

  @override
  String get calendarMonthMay => 'Mei';

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
  String get calendarSeasonMuharramEarly => 'Dae van Muharram — onthou Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — dae van rou en besinning';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — veertig dae van Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Die pad na Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — die dageraad van openbaring';

  @override
  String get calendarSeasonMidShaban =>
      'Middel-Sha\'ban — verjaarsdag van Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan =>
      'Ramadan Mubarak — die maand van die Koran';

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
  String get duasSearchHint => 'Soek duas, ziyarat…';

  @override
  String get duasFilterAll => 'Alles';

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
  String get duasEmpty => 'Geen duas gevind nie.';

  @override
  String get duaCategoryDaily => 'Daagliks';

  @override
  String get duaCategoryWeekly => 'Weekliks';

  @override
  String get duaCategoryOccasions => 'Geleenthede';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Geboorte';

  @override
  String get eventTypeMartyrdom => 'Martelaarskap';

  @override
  String get eventTypeOccasion => 'Geleentheid';

  @override
  String get duaCopyTooltip => 'Kopieer vertaling';

  @override
  String get duaToggleTransliteration => 'Transliterasie';

  @override
  String get duaToggleTranslation => 'Vertaling';

  @override
  String get duaAskAiLabel => 'Vra Ayara om hierdie dua te verduidelik';

  @override
  String get duaAskAiLockedLabel => 'Vra Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayara-verduidelikings is beskikbaar vir Wilaya-lede. Gradeer op in Instellings.';

  @override
  String duaAiComingSoon(String name) {
    return 'Vra Ayara oor \"$name\" — binnekort beskikbaar!';
  }

  @override
  String get duaCopiedToast => 'Dua na knipbord gekopieer.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah is die Grootste';

  @override
  String get tasbihAlhamdulillahMeaning => 'Alle lof behoort aan Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Heerlikheid aan Allah';

  @override
  String get tasbihResetTooltip => 'Herstel';

  @override
  String get tasbihCompleteTitle => 'Tasbih Voltooi';

  @override
  String get tasbihCompleteMessage => 'Mag Allah jou dhikr aanvaar.';

  @override
  String get tasbihTapHint => 'Tik enige plek om te tel';

  @override
  String get tasbihatScreenTitle => 'Gebedsgids';

  @override
  String get tasbihatScreenSubtitle => 'DIE GEBEDSVERHEERLIKINGS';

  @override
  String get tasbihatScreenDescription =>
      '’n Volledige gids tot die verheerlikings wat tydens en ná die daaglikse gebede gelees word — volgens die tradisie van die Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Voorgedra tydens die 3de & 4de rakʿah';

  @override
  String get tasbihatArba3Info =>
      'In Sjia-jurisprudensie vervang die Tasbiḥāt al-Arbaʿa Surah al-Fatiha in die 3de en 4de rakʿah van Dhuhr, Asr, Maghrib en Isha. Dit is verpligtend (wājib) om dit een keer te reciteer, en aanbeveel (mustaḥabb) om dit drie keer te reciteer.';

  @override
  String get tasbihatArba3Translation =>
      'Heerlikheid aan Allah · Alle lof is vir Allah\nDaar is geen god behalwe Allah nie · Allah is die Grootste';

  @override
  String get tasbihatArba3CompleteTitle => 'Voordrag Voltooi';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Mag jou gebed aanvaar word — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Tik na elke voordrag';

  @override
  String get tasbihatZahraSubtitle => 'Na elke gebed · 100 krale';

  @override
  String get tasbihatZahraOriginLabel => 'Oorsprong';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) het die Profeet ﷺ vir ’n dienaar gevra. Hy het gesê: \"Sal ek jou nie na iets beter lei nie? Sê Subḥānallāh 33 keer, Alḥamdulillāh 33 keer, en Allāhu Akbar 34 keer ná elke gebed. Dit is beter vir jou as ’n dienaar.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Deel 85';

  @override
  String get tasbihatZahraOpenCounter => 'Maak Tasbīḥ-teller oop';

  @override
  String get tasbihatDuasTitle => 'AANBEVOLE DUĀS';

  @override
  String get tasbihatDuasSubtitle => 'Nadat jy jou gebed voltooi het';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Na elke verpligte gebed';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Wie Āyat al-Kursī ná elke verpligte gebed reciteer, het niks tussen hom en die Paradys nie behalwe die dood. Imam al-Bāqir (a) het gesê dit is onder die grootste verse in die Koran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen => 'Na elke gebed · verseël alle smekinge';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Dit word aanbeveel om seënbedes oor die Profeet ﷺ en sy gesuiwerde familie (Āl Muḥammad) te stuur om elke dua af te sluit. Imam al-Ṣādiq (a) het gesê: \"Enige dua word opgehou totdat jy ṣalawāt oor Muḥammad en sy familie stuur.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen => 'Na elke gebed · vir die Imam van ons tyd';

  @override
  String get tasbihatDuaFarajSource =>
      'Geleer deur Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      '‘n dua vir die herverskyning van Imam al-Mahdī (af), die twaalfde Imam, geleer deur sy vader. Dit word dikwels deur baie Shia Moslems na gebed opgesê as \'n daad van toewyding aan die lewende Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ van Lady Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Na Maghrib & Isha · veral aanbeveel';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) het gesê dat die voordrag van Tasbīḥ al-Zahrā ná Isha voor slaap beter is as 1000 rakʿahs van vrywillige gebed. Die lig daarvan styg op na die hemele.';

  @override
  String get tasbihFatimaGiftPre => '’n Geskenk van die Profeet';

  @override
  String get tasbihFatimaGiftPost => 'ná elke gebed gereciteer';

  @override
  String get prayerTrackerTitle => 'GEBEDSNASPOORDER';

  @override
  String get prayerTrackerPrayed => 'Gebid';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count dae in ’n ry';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Alle gebede vir vandag is voltooi. Mag Allah dit aanvaar.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Vandag voltooi';

  @override
  String get dhikrTrackerNotDoneToday => 'Nie vandag gedoen nie';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count dae in ’n ry';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ-herinnering';

  @override
  String get dhikrReminderDescription =>
      '’n Sagte daaglikse herinnering om jou Tasbīḥ al-Zahrā (SA) te reciteer.';

  @override
  String get dhikrReminderEnable => 'Aktiveer Tasbīḥ-herinnering';

  @override
  String get dhikrReminderTimeLabel => 'Herinneringstyd';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Daaglikse Hadith';

  @override
  String get hadithLabelArabic => 'ARABIES';

  @override
  String get hadithLabelTranslation => 'VERTALING';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Deel Hierdie Hadith';

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
  String get imamsScreenTitle => 'Die Veertien Onfeilbares';

  @override
  String get imamsScreenSubtitle =>
      'Die Profeet, Mevrou Fatima, en die Twaalf Imams — die gezuiverde en onfeilbare gidse in Twelver Shia Islam';

  @override
  String get imamLabelBorn => 'Gebore';

  @override
  String get imamLabelMartyrdom => 'Martelaarskap';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFIE';

  @override
  String get imamSectionFamousSaying => 'BEKENDE UITSPRAAK';

  @override
  String get imamRoleProphet => 'Die Laaste Profeet';

  @override
  String get imamRoleInfallible => 'Die Onfeilbare';

  @override
  String get imamOrdinal1 => '1ste Imam';

  @override
  String get imamOrdinal2 => '2de Imam';

  @override
  String get imamOrdinal3 => '3de Imam';

  @override
  String get imamOrdinal4 => '4de Imam';

  @override
  String get imamOrdinal5 => '5de Imam';

  @override
  String get imamOrdinal6 => '6de Imam';

  @override
  String get imamOrdinal7 => '7de Imam';

  @override
  String get imamOrdinal8 => '8ste Imam';

  @override
  String get imamOrdinal9 => '9de Imam';

  @override
  String get imamOrdinal10 => '10de Imam';

  @override
  String get imamOrdinal11 => '11de Imam';

  @override
  String get imamOrdinal12 => '12de Imam';

  @override
  String get duaAudioScreenTitle => 'Luister na Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Kies ’n dua om na te luister. Tik op die teël om te speel of te onderbreek.';

  @override
  String get duaAudioComingSoonMessage =>
      'Oudio vir hierdie dua sal in ’n komende opdatering beskikbaar wees.';

  @override
  String get duaAudioClose => 'Maak toe';

  @override
  String get duaAudioError =>
      'Kon nie oudio laai nie. Gaan asseblief jou verbinding na.';

  @override
  String get duaAudioMetaTransmittedBy => 'Oorgelewer deur';

  @override
  String get duaAudioMetaOccasion => 'Geleentheid';

  @override
  String get duaAudioMetaDuration => 'Duur';

  @override
  String get quickActionDailyHadith => 'Daaglikse Hadith';

  @override
  String get quickAction14Masumeen => 'Veertien Onfeilbares';

  @override
  String get quickActionListenDuas => 'Luister';

  @override
  String get quickActionTasbihat => 'Gebedsgids';

  @override
  String get pilgrimageSectionTitle => 'Die Heilige Reis';

  @override
  String get pilgrimageSectionSubtitle =>
      'Volledige gidse tot Hajj & Umrah — die pelgrimstog na die Heilige Huis van Allah in Mekka';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Die Vyfde Pilaar van Islam';

  @override
  String get hajjCardDescription =>
      'Die groot jaarlikse pelgrimstog — een keer in ’n leeftyd verpligtend vir elke bekwame Moslem';

  @override
  String get hajjScreenTitle => 'Hajj-gids';

  @override
  String get hajjScreenSubtitle =>
      'Stap-vir-stap gids tot die groot pelgrimstog';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Die Klein Pelgrimstog';

  @override
  String get umrahCardDescription =>
      '’n Diep lonende geestelike reis wat enige tyd van die jaar onderneem kan word';

  @override
  String get umrahScreenTitle => 'Umrah-gids';

  @override
  String get umrahScreenSubtitle =>
      'Stap-vir-stap gids tot die klein pelgrimstog';

  @override
  String get pilgrimageStepsTitle => 'Rituele & Stappe';

  @override
  String get pilgrimageImportantNotesTitle => 'Belangrike Aantekeninge';

  @override
  String get pilgrimageDuaTitle => 'Dua vir hierdie stap';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari Fiqh Nota';

  @override
  String get pilgrimageComplete => '✓ Voltooid';

  @override
  String get pilgrimageMarkDone => 'Merk as voltooi';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done van $total stappe';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Sjia-pelgrims';

  @override
  String get pilgrimageShiaNoteBody =>
      'Baie Shia pelgrims reis ook na Medina vir ziyarat van die Profeet Muhammad (SAW) by Masjid al-Nabawi en die grafte by Jannat al-Baqi. Hierdie besoeke het diep geestelike betekenis, alhoewel hulle nie self rituele van Hajj is nie.';

  @override
  String get hajjIntro =>
      'Hajj is die vyfde pilaar van Islam, verpligtend een keer in \'n leeftyd vir elke Moslem wat fisies en finansieel in staat is. Vir die meeste Twelver Shia pelgrims vandag beteken dit Hajj al-Tamattu\', uitgevoer in die maand van Dhul Hijjah in die voetspore van Profet Ibrahim (AS), sy seun Ismail (AS), en Mevrou Hajar. Hierdie gids volg die Ja\'fari uiteensetting van die rituele, terwyl ziyarat in Medina \'n diep gekoesterde reis bly voor of na Hajj.';

  @override
  String get umrahIntro =>
      'Umrah is die kleiner pelgrimstog na Mekka en kan, anders as Hajj, enige tyd van die jaar verrig word. Hoewel dit nie verpligtend is nie, dra dit groot geestelike beloning en word dit as ’n sterk aanbevole daad van aanbidding beskou. Dit deel verskeie rituele met Hajj, maar is korter en bestaan uit vier hoofrites.';

  @override
  String get voiceInputTitle => 'Stem Invoer';

  @override
  String get voiceInputMicTitle => 'Mikrofoon';

  @override
  String get voiceInputMicSubtitle =>
      'Praat jou insette om Ask Ayara te vra in plaas van om te tik.';

  @override
  String get voiceInputMicDenied => 'Mikrofoon toegang is geweier.';

  @override
  String get voiceInputSpeak => 'Praat eerder';

  @override
  String get voiceInputListening => 'Luister…';

  @override
  String get voiceInputPermissionDenied =>
      'Mikrofoon toegang is nodig vir stem invoer.';
}
