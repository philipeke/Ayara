// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Valitse kielesi';

  @override
  String get languageSelectSub => 'Voit muuttaa tämän myöhemmin asetuksissa';

  @override
  String get actionContinue => 'Jatka';

  @override
  String get languageSuggestedHeader => 'Suositeltu';

  @override
  String get languageAllHeader => 'Kaikki kielet';

  @override
  String get languageSuggestedBadge => 'Suositeltu';

  @override
  String get languageSearchHint => 'Hae…';

  @override
  String get planBasic => 'Standardi';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Päivittäinen ohjaus';

  @override
  String get categorySlot02 => 'Iman ja luottamus';

  @override
  String get categorySlot03 => 'Rukouksen pohdinta';

  @override
  String get categorySlot04 => 'Kärsivällisyys ja toivo';

  @override
  String get categorySlot05 => 'Etsi anteeksiantoa';

  @override
  String get categorySlot06 => 'Armo ja myötätunto';

  @override
  String get categorySlot07 => 'Uskon voima';

  @override
  String get categorySlot08 => 'Kiitollinen sydän';

  @override
  String get categorySlot09 => 'Elämän tarkoitus';

  @override
  String get categorySlot10 => 'Perhesiteet';

  @override
  String get categorySlot11 => 'Sisäinen rauha';

  @override
  String get categorySlot12 => 'Profeetan viisaus';

  @override
  String get categorySlot13 => 'Hyvä luonne';

  @override
  String get categorySlot14 => 'Vastusta kiusausta';

  @override
  String get categorySlot15 => 'Iltadhikr';

  @override
  String get categoryCustom => 'Henkilökohtainen pohdinta';

  @override
  String get dhikrMeaningSubhanallah => 'Kunnia Allahille';

  @override
  String get dhikrMeaningAlhamdulillah => 'Kaikki ylistys kuuluu Allahille';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah on suurin';

  @override
  String get quranVerseHeartAtRest =>
      'Totisesti, Allahin muistamisessa sydämet löytävät levon.';

  @override
  String get promptHint =>
      'Napauta kategoriaa islamilaista ohjausta ja pohdintaa varten';

  @override
  String get currentLanguage => 'Nykyinen kieli';

  @override
  String get settingsLanguage => 'Kieliasetukset';

  @override
  String get settingsTitle => 'Asetukset';

  @override
  String get chooseLanguage => 'Valitse kielesi';

  @override
  String get continueCta => 'Jatka';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sanaa',
      one: '$count sana',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Vaihtoehdot';

  @override
  String get newCta => 'Uusi';

  @override
  String get actionsTitle => 'Mitä haluaisit tehdä?';

  @override
  String get copy => 'Kopioi';

  @override
  String get share => 'Jaa';

  @override
  String get close => 'Sulje';

  @override
  String get copiedToast => 'Kopioitu leikepöydälle';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Uutta vastausta ei voitu luoda';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nHaluatko yrittää uudelleen?';
  }

  @override
  String get cancelCta => 'Peruuta';

  @override
  String get retryCta => 'Yritä uudelleen';

  @override
  String get authTitle => 'Luo tilisi';

  @override
  String get continueAsGuest => 'Jatka vieraana';

  @override
  String get signInGoogle => 'Kirjaudu sisään Googlella';

  @override
  String get signInApple => 'Kirjaudu sisään Applella';

  @override
  String get signInEmail => 'Kirjaudu sisään sähköpostilla';

  @override
  String get upgradeWithApple => 'Jatka Applella';

  @override
  String get mustAccept =>
      'Sinun on hyväksyttävä ehdot ja vahvistettava tietosuojakäytäntö.';

  @override
  String get termsLabel => 'Hyväksyn palveluehdot';

  @override
  String get privacyLabel => 'Olen lukenut tietosuojakäytännön';

  @override
  String get marketingOptIn => 'Suostun vastaanottamaan uutisia ja tarjouksia';

  @override
  String get openTerms => 'Palveluehdot';

  @override
  String get openPrivacy => 'Tietosuojakäytäntö';

  @override
  String get accountSection => 'Tili';

  @override
  String get guestMode => 'Vierastila';

  @override
  String get signedIn => 'Kirjautunut sisään';

  @override
  String get upgradeHint => 'Tallenna pohdintasi eri laitteille luomalla tili.';

  @override
  String get upgradeWithGoogle => 'Jatka Googlella';

  @override
  String get signOut => 'Kirjaudu ulos';

  @override
  String get snackUpgraded => 'Tili päivitetty Googlella ✅';

  @override
  String get snackSignedIn => 'Kirjauduttu sisään Googlella ✅';

  @override
  String get snackSignedOut => 'Kirjauduttu ulos';

  @override
  String get snackSignedInApple => 'Kirjauduttu sisään Applella ✅';

  @override
  String get snackSignedInGoogle => 'Kirjauduttu sisään Googlella ✅';

  @override
  String get snackUpgradedApple => 'Tili päivitetty Applella ✅';

  @override
  String get snackUpgradedGoogle => 'Tili päivitetty Googlella ✅';

  @override
  String get historyTitle => 'Aiemmat pohdinnat';

  @override
  String get historyOpenCta => 'Aiemmat pohdinnat';

  @override
  String get historyEmpty => 'Tallennettuja pohdintoja ei vielä ole.';

  @override
  String get historyDeleteTitle => 'Poistetaanko pohdinta?';

  @override
  String get historyDeleteBody => 'Tämä poistaa valitun kohteen pysyvästi.';

  @override
  String get deleteCta => 'Poista';

  @override
  String get historyButton => 'Aiemmat pohdinnat';

  @override
  String get historyEmptyTitle => 'Ei vielä pohdintoja';

  @override
  String get historyEmptyBody =>
      'Luo jotain ensin — tallennetut kohteesi näkyvät täällä.';

  @override
  String get historyDelete => 'Poista';

  @override
  String get footerTitle => 'Wilayan, Imanin ja Sabrin kanssa';

  @override
  String get footerSubtitle => 'Yksi rukous kerrallaan';

  @override
  String get genericErrorSnack =>
      'Jokin meni pieleen — yritä hetken kuluttua uudelleen.';

  @override
  String get upgradeAccountCta =>
      'Tallenna pohdintasi eri laitteille – luo tili';

  @override
  String get deleteAccount => 'Poista tili';

  @override
  String get exportData => 'Vie tietoni';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Rauhallisesti 🐯\nAyara tarvitsee hetken ennen seuraavaa…';

  @override
  String get rateDailyLimit =>
      'Pohdintasi ovat nyt loppu.\nHanki lisää pohdintoja tai päivitä Wilayaan.';

  @override
  String get rateCreditsExhausted =>
      'Olet käyttänyt kaikki pohdintasi.\nLataa lisää tai päivitä Wilayaan jatkaaksesi.';

  @override
  String get rateGraceCreditsExhausted =>
      'Pohdintasi ovat nyt loppu.\nHanki lisää pohdintoja tai päivitä Wilayaan.';

  @override
  String get premiumDescription =>
      'Wilaya avaa premium-ominaisuudet, tulevat kategoriat ja विशेषisen merkin.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Pohdintasi ovat nyt tyhjät. Suunnitelma: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Pohdintojasi ei voitu tarkistaa: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Jokin meni pieleen tarkistettaessa pohdintojasi.';

  @override
  String get aiFallbackGeneric =>
      'Jokin meni pieleen — yritä hetken kuluttua uudelleen.';

  @override
  String get limitSectionTitle => 'Pohdinnat';

  @override
  String get limitTodayLabel => 'Käyttö';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Jäljellä olevat pohdinnat: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Suunnitelma: $plan';
  }

  @override
  String get limitLoadingLabel => 'Ladataan…';

  @override
  String get limitLoadingLabelDescription =>
      'Näytetään pohdintakortissa, kun käyttötilastoja haetaan.';

  @override
  String get aiLimitTitle => 'Pohdinnat';

  @override
  String get aiLimitSubtitle =>
      'Jokainen vastaus käyttää yhden pohdinnan. Standardi sisältää aloituspohdinnat. Wilaya avaa premium-kategoriat ja mahdollistaa lisätäytöt.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total pohdintaa käytetty';
  }

  @override
  String get creditsSectionTitle => 'Pohdinnat';

  @override
  String get creditsUsageLabel => 'Käyttö';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Jäljellä olevat pohdinnat: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Suunnitelma: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Ladataan…';

  @override
  String get creditsLoadingLabelDescription =>
      'Näytetään, kun pohdintatilastoja haetaan.';

  @override
  String get creditsTitle => 'Pohdinnat';

  @override
  String get creditsSubtitle =>
      'Jokainen vastaus käyttää yhden pohdinnan. Standardi sisältää aloituspohdinnat. Wilaya avaa premium-kategoriat ja mahdollistaa lisätäytöt.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total pohdintaa käytetty';
  }

  @override
  String get settingsDeleteTitle => 'Poista tili';

  @override
  String get settingsDeleteDescription =>
      'Poista tilisi ja kaikki siihen liittyvät tiedot pysyvästi.';

  @override
  String get settingsDeleteButtonLabel => 'Poista tilini';

  @override
  String get settingsDeleteDialogTitle => 'Poistetaanko tili?';

  @override
  String get settingsDeleteDialogBody =>
      'Tämä toimenpide on pysyvä eikä sitä voi perua.\n\nKaikki keskustelusi, historiasi ja tilitietosi poistetaan.';

  @override
  String get settingsDeleteDialogCancel => 'Peruuta';

  @override
  String get settingsDeleteDialogConfirm => 'Poista';

  @override
  String get settingsFreeLimitUsedTitle => 'Aloituspohdinnat käytetty';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Tämän laitteen aloituspohdinnat on käytetty. Päivitä Wilayaan tai osta lisää pohdintoja jatkaaksesi.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Aloituspohdinnat käytetty';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Tämän laitteen aloituspohdinnat on käytetty. Päivitä Wilayaan tai osta lisää pohdintoja jatkaaksesi.';

  @override
  String get deviceBoundError =>
      'Tämä laite on jo liitetty toiseen tiliin. Kirjaudu sisään alkuperäisellä tilillä.';

  @override
  String get premiumTitle => 'Wilaya-tila';

  @override
  String get premiumSubtitleBasic => 'Avaa koko Ayara-kokemus.';

  @override
  String get premiumSubtitlePremium =>
      'Olet Wilaya-tilassa. Tarvitsetko lisää pohdintoja?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Nykyinen suunnitelma: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Pohdinnat: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Ostot eivät ole tällä hetkellä saatavilla.';

  @override
  String get premiumSignInToPurchase =>
      'Kirjaudu sisään ostaaksesi pohdintoja tai avataksesi Wilayan.';

  @override
  String get premiumRestorePurchases => 'Palauta ostot';

  @override
  String get premiumProcessing => 'Käsitellään…';

  @override
  String get premiumRestoreHintTitle =>
      'Oletko jo ostanut Wilayan tai pohdintoja tällä tai toisella laitteella?';

  @override
  String get premiumRestoreHintBody => 'Palauta ostoksesi, jos ne eivät näy.';

  @override
  String get premiumBuyCredits200 => 'Osta 200 pohdintaa';

  @override
  String get premiumBuyCredits400 => 'Osta 400 pohdintaa';

  @override
  String get premiumBecomePremiumOneTime => 'Päivitä Wilaya-tilaan';

  @override
  String get premiumTopupHint =>
      'Wilayan kanssa voit lisätä ylimääräisiä pohdintoja aina kun tarvitset.';

  @override
  String get premiumUpgradeCta => 'Päivitä';

  @override
  String get premiumRequiredForCategory =>
      'Tämä kategoria on saatavilla միայն Wilaya-käyttäjille. Päivitä asetuksissa avataksesi kaiken premium-sisällön.';

  @override
  String get premiumBenefitsBasic =>
      'Avaa Wilaya saadaksesi lisää pohdintoja, pääsyn premium-kategorioihin ja jatkaaksesi aina kun tarvitset ohjausta.';

  @override
  String get premiumBenefitsPremium =>
      'Olet Wilaya-tilassa. Jos pohdinnat ovat vähissä, lisää niitä ja jatka ilman keskeytyksiä.';

  @override
  String get premiumButtonBecomePremium => 'Avaa Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Lisää 1000 pohdintaa';

  @override
  String get premiumBadge => 'Wilaya aktiivinen';

  @override
  String get premiumLoadingStore => 'Ladataan kauppaa…';

  @override
  String get premiumProductNotAvailable =>
      'Tätä tuotetta ei ole vielä saatavilla kaupassa. Yritä myöhemmin uudelleen.';

  @override
  String get premiumPurchaseError =>
      'Oston kanssa tapahtui virhe. Yritä uudelleen.';

  @override
  String get premiumBuyCredits100 => 'Lisää 100 pohdintaa';

  @override
  String get premiumFeatureLocked =>
      'Avaa Wilaya saadaksesi tämän ominaisuuden käyttöön.';

  @override
  String get lockedCategoriesHint =>
      'Jotkin kategoriat on varattu Wilaya-jäsenille. Avaa ne tutkiaksesi kaikkia matkasi pohdintoja.';

  @override
  String get freePlanBlockedTitle => 'Olet käyttänyt aloituspohdintasi';

  @override
  String get freePlanBlockedBody =>
      'Olet Standardi-suunnitelmassa aloituspohdinnoilla ja olet saavuttanut rajan. Jatkaaksesi — ja avataksesi premium-kategoriat — päivitä Wilayaan.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Katso Wilaya-vaihtoehdot alta';

  @override
  String get graceBlockedTitle => 'Olet käyttänyt aloituspohdintasi';

  @override
  String get graceBlockedBody =>
      'Olet Standardi-suunnitelmassa aloituspohdinnoilla ja olet saavuttanut rajan. Jatkaaksesi — ja avataksesi premium-kategoriat — päivitä Wilayaan.';

  @override
  String get graceBlockedCtaGoPremium => 'Katso Wilaya-vaihtoehdot alta';

  @override
  String get rateGuestMustSignIn =>
      'Kirjaudu sisään käyttääksesi Ayaraa ja pohdintojasi.';

  @override
  String get guestNoCreditsTitle => 'Vierastila';

  @override
  String get guestNoCreditsBody =>
      'Vieraana voit selata sovellusta, mutta et voi käyttää pohdintoja. Kirjaudu myöhemmin asetuksissa käyttääksesi pohdintoja ja avataksesi ostot.';

  @override
  String get guestDialogContinue => 'Jatka';

  @override
  String get guestDialogLoginInstead => 'Kirjaudu sisään sen sijaan';

  @override
  String get optionalLabel => 'valinnainen';

  @override
  String get accountDeleteSuccessTitle => 'Tili poistettu';

  @override
  String get accountDeleteSuccessBody =>
      'Tilisi ja siihen liittyvät tiedot on poistettu onnistuneesti.';

  @override
  String get accountDeleteSuccessClose => 'Sulje';

  @override
  String get accountDeleteErrorTitle => 'Tiliä ei voitu poistaa';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Uudelleentodennus peruutettiin. Kirjaudu uudelleen sisään ja yritä poistoa uudelleen.';

  @override
  String get accountDeleteReauthRequired =>
      'Tilin poistaminen vaatii tuoreen kirjautumisen. Kirjaudu ulos, kirjaudu uudelleen sisään ja yritä uudelleen.';

  @override
  String get settingsDeletePermanentWarning =>
      'Tämä toimenpide on pysyvä eikä sitä voi perua. Kaikki tiliisi liittyvät tiedot poistetaan.';

  @override
  String get dailyGraceTitle => 'Päivittäinen ohjaus';

  @override
  String get dailyGraceScriptureLabel => 'PÄIVÄN JAKEE';

  @override
  String get dailyGraceSaintLabel => 'VIIKKO KUVASTA';

  @override
  String get dailyGraceReflectionLabel => 'ILTAPOHDINTA';

  @override
  String get dailyGraceCopiedToast => 'Jae kopioitu leikepöydälle';

  @override
  String get locationConsentLabel =>
      'Salli Ayaran käyttää sijaintiani Qibla-suunnan ja rukousaikojen laskemiseen';

  @override
  String get locationConsentHint =>
      'Käytetään vain näihin ominaisuuksiin. Sijaintiasi ei koskaan jaeta eikä tallenneta.';

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
  String get askPageTitle => 'Kysy Ayaralta';

  @override
  String get askPageDescription =>
      'Kysy mitä tahansa uskosta, rukouksesta, elämästä tai islamilaisesta käytännöstä ja saat ohjausta, joka pohjautuu Koraaniin ja Ahl al-Baytin opetuksiin.';

  @override
  String get askPageInputHint => 'Kirjoita kysymyksesi tähän…';

  @override
  String get askPageSubmitCta => 'Kysy';

  @override
  String get askPageInputEmptyError => 'Kirjoita ensin kysymys.';

  @override
  String get askResultYourQuestion => 'Kysymyksesi';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Kohti Mekkaa';

  @override
  String get qiblaCompassInstruction =>
      'Käännä puhelintasi, kunnes kultainen neula osoittaa ylöspäin.\nSe suunta osoittaa kohti Qiblaa (Mekkaa).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS-signaali on heikko. Mene ulos ja napauta Yritä uudelleen.';

  @override
  String get qiblaRetry => 'Yritä uudelleen';

  @override
  String get qiblaTitle => 'Qibla-suunta';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km Mekkaan';
  }

  @override
  String get qiblaLocationNeededTitle => 'Sijainti vaaditaan';

  @override
  String get qiblaLocationNeededBody =>
      'Salli sijainnin käyttö, jotta Ayara voi laskea Kaaban suunnan Mekassa missä tahansa oletkin.';

  @override
  String get qiblaOpenSettings => 'Avaa asetukset';

  @override
  String get qiblaCompassLoading => 'Paikkaasi etsitään…';

  @override
  String get qiblaTowardMecca => 'Kohti Mekkaa';

  @override
  String get prayerTimesTitle => 'Rukousajat';

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
  String get prayerTimesLocationNeededTitle => 'Sijainti vaaditaan';

  @override
  String get prayerTimesLocationNeededBody =>
      'Salli sijainnin käyttö, jotta Ayara voi laskea tarkat rukousajat kaupungillesi.';

  @override
  String get prayerTimesNextLabel => 'Seuraava';

  @override
  String get prayerTimesDoneLabel => 'Valmis';

  @override
  String get monthlyPrayerTimesTitle => 'Kuukausittaiset rukousajat';

  @override
  String get monthlyPrayerTimesViewButton => 'Näytä koko kuukausi';

  @override
  String get monthlyPrayerTimesNextMonth => 'Seuraava kuukausi';

  @override
  String get monthlyPrayerTimesDayHeader => 'Päivä';

  @override
  String get sharePrayerTimes => 'Jaa rukousajat';

  @override
  String get notificationsSectionTitle => 'Ilmoitukset';

  @override
  String get notificationsSectionSubtitle =>
      'Rukousmuistutukset, kalenteritapahtumat ja muuta';

  @override
  String get dailyReflectionReminderTitle => 'Päivittäinen pohdinta';

  @override
  String get dailyReflectionReminderDescription =>
      'Lempeä päivittäinen muistutus avata Ayara ja olla yhteydessä uskoosi.';

  @override
  String get dailyReflectionReminderEnable =>
      'Ota päivittäinen muistutus käyttöön';

  @override
  String get dailyReflectionReminderTimeLabel => 'Muistutuksen aika';

  @override
  String get prayerNotificationsTitle => 'Rukousmuistutukset';

  @override
  String get prayerNotificationsDescription =>
      'Saat lempeän muistutuksen ennen jokaista rukousaikaa, jotta pysyt yhteydessä koko päivän.';

  @override
  String get prayerNotificationsEnable => 'Ota rukousmuistutukset käyttöön';

  @override
  String get prayerNotificationsOpenSettings => 'Avaa ilmoitusasetukset';

  @override
  String get prayerNotificationsDenied => 'Ilmoitukset ovat pois käytöstä';

  @override
  String get prayerNotificationsDeniedHint =>
      'Mene asetuksiin ja salli Ayaralle ilmoitukset saadaksesi muistutuksia rukousajoista.';

  @override
  String get notificationsConsentLabel => 'Salli ilmoitukset rukousajoista';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Aamun rukous';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr on Ahl al-Baytin aamurukous. Imam Ali (AS) sanoi: Varjelkaa aamunkoiton rukousta kuten varjelisitte arvokkainta luottamustanne. Nouskaa, puhdistautukaa ja seiskää Allahin edessä.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Keskipäivän rukous';

  @override
  String get prayerNotifBodyDhuhr =>
      'Ahl al-Baytin imaamit arvostivat jokaista muistamisen hetkeä. Pysäytä päiväsi hetkeksi, yhdistä Dhuhr Asriin tarvittaessa ja palauta sydämesi Allahin luo.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Iltapäivän rukous';

  @override
  String get prayerNotifBodyAsr =>
      'Varjelkaa rukousta, sillä se on liitto sinun ja Allahin välillä. Asrin aika on tullut — älä anna sen mennä ilman muistamista.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Auringonlaskun rukous';

  @override
  String get prayerNotifBodyMaghrib =>
      'Aurinko on laskenut — hetki, jota Ahl al-Bayt piti pyhänä dua’lle. Suorita Maghrib ja nosta kätesi Allahille rukoukseen ennen yön alkamista.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Yörukous';

  @override
  String get prayerNotifBodyIsha =>
      'Päätä päiväsi Allahin seurassa. Imaamit rohkaisivat Salat al-Layliin Ishan jälkeen — mutta ensin suorita Isha ja päätä päivä Hänen muistamiseensa.';

  @override
  String get outOfReflectionsBannerText => 'Olet käyttänyt kaikki pohdintasi';

  @override
  String get outOfReflectionsBannerCta => 'Hanki lisää';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Napauta ympyrää laskeaksesi';

  @override
  String get dhikrResetButton => 'Nollaa';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Olet suorittanut 100 Allahin muistamista. Olkoon ne valona sydämellesi.';

  @override
  String get disclaimerTitle => 'Tietoa tämän sovelluksen ohjauksesta';

  @override
  String get disclaimerBody =>
      'Ayara tarjoaa islamilaisia pohdintoja, muistutuksia ja hengellistä sisältöä tukemaan henkilökohtaista uskonmatkaasi, Koraaniin ja Ahl al-Baytin opetuksiin perustuen. Tämä sisältö tarjotaan vain yleisiin tiedollisiin ja inspiroiviin tarkoituksiin.\n\nAyara ei korvaa pätevää uskonnollista oppineisuutta.\nTämän sovelluksen ohjaus ei korvaa oppinutta islamilaista tutkijaa, marja’ta tai teologisesti koulutettua opettajaa. Shia-islamissa uskonnollinen ohjaus perustuu ja’farilaiseen oikeusoppiin (fiqh) ja perinteeseen seurata elävää Marja’ta (jäljittelyn lähdettä) — pätevää juristia, jonka ratkaisut ohjaavat uskovia uskonnollisessa käytännössä. Jos sinulla on հարցումներ uskonnollisista säädöksistä, halal- ja haram-asioista tai henkilökohtaisista uskonnollisista velvollisuuksista, pyydä neuvoa pätevältä Marja’lta tai yhteisösi tutkijalta.\n\nTämä sovellus ei anna uskonnollisia säädöksiä.\nAyara ei tee sitovia ratkaisuja fiqh-asioissa tai henkilökohtaisissa uskonnollisissa velvollisuuksissa. Mitään täällä ei tule pitää fatwana tai sitovana uskonnollisena ohjeena.\n\nAhl al-Baytin keskeisyys.\nShia-islamissa profeetta Muhammad ﷺ ja hänen puhdas perheensä — Ahl al-Bayt — ovat islamilaisen yhteisön auktoritatiiviset oppaat Koraanin jälkeen. Ahl al-Baytin kaksitoista imaamia ovat jumalallisesti nimitettyjä islamilaisen opetuksen tulkitsijoita. Tämän sovelluksen sisältö heijastaa tätä perinnettä ja pyrkii kunnioittamaan sitä uskollisesti.\n\nYhteisön merkitys.\nTämä sovellus pyrkii rohkaisemaan yhteyttäsi uskoon samalla syvästi kunnioittaen paikallisen moskeijasi, islamilaisen keskuksesi ja uskonnollisen yhteisösi tärkeää roolia. Kannustamme sinua pysymään yhteydessä lähistölläsi oleviin päteviin opettajiin ja oppimaan heiltä.';

  @override
  String get disclaimerClose => 'Ymmärrän';

  @override
  String get disclaimerInfoTooltip => 'Tietoa tämän sovelluksen ohjauksesta';

  @override
  String get disclaimerSettingsSubtitle =>
      'Vain yleisiin tiedollisiin tarkoituksiin. Napauta lukeaksesi koko vastuuvapauslausekkeen.';

  @override
  String get disclaimerSectionHeader => 'Ohjauksen vastuuvapauslauseke';

  @override
  String get navHome => 'Koti';

  @override
  String get navReflect => 'Pohdi';

  @override
  String get navDuas => 'Duat';

  @override
  String get navCalendar => 'Kalenteri';

  @override
  String get dashboardToday => 'TÄNÄÄN';

  @override
  String get dashboardComingUp => 'Tulossa';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'päivää',
      one: 'päivä',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Pikavalinnat';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Ohjaus';

  @override
  String get quickActionPrayerTimes => 'Rukousajat';

  @override
  String get askAyaraTitle => 'Kysy Ayaralta';

  @override
  String get askAyaraSubtitle =>
      'Esitä mikä tahansa islamilainen kysymys ja saat harkitun, ohjaavan vastauksen.';

  @override
  String get askAyaraHint => 'esim. Mikä on Ramadanin merkitys?';

  @override
  String get askAyaraSubmit => 'Kysy';

  @override
  String get wisdomOfTheDayTitle => 'Päivän viisaus';

  @override
  String get calendarScreenTitle => 'Islamilainen kalenteri';

  @override
  String get calendarUpcomingOccasions => 'Tulevat tapahtumat';

  @override
  String get calendarOccasionRemindersTitle => 'Tapahtumamuistutukset';

  @override
  String get calendarOccasionRemindersHint =>
      'Ilmoitus lähetetään tapahtumaa edeltävänä iltana';

  @override
  String get calendarNotifPermissionDenied =>
      'Ilmoituslupa evättiin. Ota se käyttöön laitteen asetuksissa.';

  @override
  String get calendarNoEvents => 'Tulevia tapahtumia ei löytynyt.';

  @override
  String get calendarAddToPhone => 'Lisää puhelimen kalenteriin';

  @override
  String get calendarAddedToPhone => 'Lisätty kalenteriin';

  @override
  String get calendarCountdownToday => 'TÄNÄÄN';

  @override
  String get calendarCountdownTomorrow => 'HUOMENNA';

  @override
  String calendarCountdownDays(int days) {
    return '$days päivän kuluttua';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'tammi';

  @override
  String get calendarMonthFeb => 'helmi';

  @override
  String get calendarMonthMar => 'maalis';

  @override
  String get calendarMonthApr => 'huhti';

  @override
  String get calendarMonthMay => 'touko';

  @override
  String get calendarMonthJun => 'kesä';

  @override
  String get calendarMonthJul => 'heinä';

  @override
  String get calendarMonthAug => 'elo';

  @override
  String get calendarMonthSep => 'syys';

  @override
  String get calendarMonthOct => 'loka';

  @override
  String get calendarMonthNov => 'marras';

  @override
  String get calendarMonthDec => 'joulu';

  @override
  String get calendarSeasonMuharramEarly =>
      'Muharramin päivät — muista Karbalaa';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — surun ja pohdinnan päivät';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — Husaynin neljäkymmentä päivää';

  @override
  String get calendarSeasonRoadToArbaeen => 'Tie Arbaeeniin';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — ilmoituksen aamunkoitto';

  @override
  String get calendarSeasonMidShaban =>
      'Sha\'banin puoliväli — Imam al-Mahdin (AJ) syntymäpäivä';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — Koraanin kuukausi';

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
  String get duasScreenTitle => 'Duat ja Ziyarat';

  @override
  String get duasSearchHint => 'Hae duia, ziyarateja…';

  @override
  String get duasFilterAll => 'Kaikki';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duaa ja ziyarattia',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Duaa ei löytynyt.';

  @override
  String get duaCategoryDaily => 'Päivittäin';

  @override
  String get duaCategoryWeekly => 'Viikoittain';

  @override
  String get duaCategoryOccasions => 'Tapahtumat';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Syntymä';

  @override
  String get eventTypeMartyrdom => 'Marttyyrikuolema';

  @override
  String get eventTypeOccasion => 'Tapahtuma';

  @override
  String get duaCopyTooltip => 'Kopioi käännös';

  @override
  String get duaToggleTransliteration => 'Translitterointi';

  @override
  String get duaToggleTranslation => 'Käännös';

  @override
  String get duaAskAiLabel => 'Pyydä Ayaraa selittämään tämä dua';

  @override
  String get duaAskAiLockedLabel => 'Kysy Ayaralta (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Ayaran selitykset ovat saatavilla Wilaya-jäsenille. Päivitä asetuksissa.';

  @override
  String duaAiComingSoon(String name) {
    return 'Kysy Ayaralta \"$name\" — tulossa pian!';
  }

  @override
  String get duaCopiedToast => 'Dua kopioitu leikepöydälle.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah on suurin';

  @override
  String get tasbihAlhamdulillahMeaning => 'Kaikki ylistys kuuluu Allahille';

  @override
  String get tasbihSubhanallahMeaning => 'Kunnia Allahille';

  @override
  String get tasbihResetTooltip => 'Nollaa';

  @override
  String get tasbihCompleteTitle => 'Tasbih valmis';

  @override
  String get tasbihCompleteMessage => 'Allah hyväksyköön dhikrisi.';

  @override
  String get tasbihTapHint => 'Napauta missä tahansa laskeaksesi';

  @override
  String get tasbihatScreenTitle => 'Rukousopas';

  @override
  String get tasbihatScreenSubtitle => 'RUKOUKSEN YLISTYKSET';

  @override
  String get tasbihatScreenDescription =>
      'Täydellinen opas niihin ylistyksiin, joita lausutaan päivittäisten rukousten aikana ja niiden jälkeen — Ahl al-Baytin perinteen mukaisesti.';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Lausutaan 3. ja 4. rakʿahissa';

  @override
  String get tasbihatArba3Info =>
      'Shiialaisessa oikeusopissa Tasbiḥāt al-Arbaʿa korvaa Suura al-Fatihan Dhuhrin, Asrin, Maghribin ja Ishan 3. ja 4. rakʿahissa. Sen lausuminen kerran on pakollista (wājib), ja kolme kertaa lausuminen on suositeltua (mustaḥabb).';

  @override
  String get tasbihatArba3Translation =>
      'Kunnia Allahille · Kaikki ylistys kuuluu Allahille\nEi ole muuta jumalaa kuin Allah · Allah on suurin';

  @override
  String get tasbihatArba3CompleteTitle => 'Lausuminen valmis';

  @override
  String get tasbihatArba3CompleteMessage => 'Hyväksyttäköön rukouksesi — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Napauta jokaisen lausumisen jälkeen';

  @override
  String get tasbihatZahraSubtitle => 'Jokaisen rukouksen jälkeen · 100 helmeä';

  @override
  String get tasbihatZahraOriginLabel => 'Alkuperä';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) pyysi Profeettaa ﷺ antamaan hänelle palvelijan. Hän sanoi: \"Enkö ohjaisi sinua johonkin parempaan? Lausu Subḥānallāh 33 kertaa, Alḥamdulillāh 33 kertaa ja Allāhu Akbar 34 kertaa jokaisen rukouksen jälkeen. Se on sinulle parempi kuin palvelija.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, osa 85';

  @override
  String get tasbihatZahraOpenCounter => 'Avaa Tasbīḥ-laskuri';

  @override
  String get tasbihatDuasTitle => 'SUOSITELLUT DUAT';

  @override
  String get tasbihatDuasSubtitle => 'Kun olet suorittanut rukouksesi';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen =>
      'Jokaisen pakollisen rukouksen jälkeen';

  @override
  String get tasbihatDuaAyatKursiSource => 'Suura al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Joka lausuu Āyat al-Kursīn jokaisen pakollisen rukouksen jälkeen, hänen ja paratiisin välissä ei ole mitään muuta kuin kuolema. Imam al-Bāqir (a) sanoi sen olevan yksi Koraanin suurimmista jakeista.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Jokaisen rukouksen jälkeen · sinetöi kaikki rukoukset';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Siunausten lähettäminen Profeetalle ﷺ ja hänen puhtaalle perheelleen (Āl Muḥammad) on suositeltua jokaisen duan sinetöimiseksi. Imam al-Ṣādiq (a) sanoi: \"Jokainen dua on pidätettynä, kunnes lähetät ṣalawāt Muhammadille ja hänen perheelleen.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Jokaisen rukouksen jälkeen · aikamme Imaamille';

  @override
  String get tasbihatDuaFarajSource => 'Imam al-Ḥasan al-ʿAskarīn (a) opettama';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua Imam al-Mahdīn (af) uudelleen ilmestymiseksi, opettanut hänen isänsä. Sitä rukoillaan usein monien shialaismuslimien toimesta rukouksen jälkeen, osoituksena omistautumisesta elävälle Imamille.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Lady Fāṭiman Tasbīḥ';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Maghribin ja Ishan jälkeen · erityisen suositeltu';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) sanoi, että Tasbīḥ al-Zahrān lausuminen Ishan jälkeen ennen nukkumista on parempi kuin 1000 rakʿahia vapaaehtoista rukousta. Sen valo nousee taivaisiin.';

  @override
  String get tasbihFatimaGiftPre => 'Lahja Profeetalta';

  @override
  String get tasbihFatimaGiftPost => 'lausutaan jokaisen rukouksen jälkeen';

  @override
  String get prayerTrackerTitle => 'RUKOUSSEURANTA';

  @override
  String get prayerTrackerPrayed => 'Rukoiltu';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count päivän putki';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Kaikki rukoukset suoritettu tänään. Allah hyväksyköön.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Suoritettu tänään';

  @override
  String get dhikrTrackerNotDoneToday => 'Ei tehty tänään';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count päivän putki';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ-muistutus';

  @override
  String get dhikrReminderDescription =>
      'Lempeä päivittäinen muistutus lausua Tasbīḥ al-Zahrāsi (SA).';

  @override
  String get dhikrReminderEnable => 'Ota Tasbīḥ-muistutus käyttöön';

  @override
  String get dhikrReminderTimeLabel => 'Muistutuksen aika';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Päivän hadith';

  @override
  String get hadithLabelArabic => 'ARABIA';

  @override
  String get hadithLabelTranslation => 'KÄÄNNÖS';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Jaa tämä hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyaran kautta';
  }

  @override
  String get hadithNavPrevious => 'Edellinen';

  @override
  String get hadithNavNext => 'Seuraava';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Neljätoista virheetöntä';

  @override
  String get imamsScreenSubtitle =>
      'Profeetta, Lady Fatima ja kaksitoista Imamia — puhdistetut ja virheettömät oppaat kaksitoista shialaisuudessa';

  @override
  String get imamLabelBorn => 'Syntynyt';

  @override
  String get imamLabelMartyrdom => 'Marttyyrikuolema';

  @override
  String get imamLabelStatus => 'Asema';

  @override
  String get imamSectionBiography => 'ELÄMÄNKERTA';

  @override
  String get imamSectionFamousSaying => 'KUULUISA SANONTA';

  @override
  String get imamRoleProphet => 'Viimeinen profeetta';

  @override
  String get imamRoleInfallible => 'Erehtymätön';

  @override
  String get imamOrdinal1 => '1. imaami';

  @override
  String get imamOrdinal2 => '2. imaami';

  @override
  String get imamOrdinal3 => '3. imaami';

  @override
  String get imamOrdinal4 => '4. imaami';

  @override
  String get imamOrdinal5 => '5. imaami';

  @override
  String get imamOrdinal6 => '6. imaami';

  @override
  String get imamOrdinal7 => '7. imaami';

  @override
  String get imamOrdinal8 => '8. imaami';

  @override
  String get imamOrdinal9 => '9. imaami';

  @override
  String get imamOrdinal10 => '10. imaami';

  @override
  String get imamOrdinal11 => '11. imaami';

  @override
  String get imamOrdinal12 => '12. imaami';

  @override
  String get duaAudioScreenTitle => 'Kuuntele duia';

  @override
  String get duaAudioScreenSubtitle =>
      'Valitse dua kuunneltavaksi. Napauta korttia toistaaksesi tai keskeyttääksesi.';

  @override
  String get duaAudioComingSoonMessage =>
      'Tämän duan ääni tulee saataville tulevassa päivityksessä.';

  @override
  String get duaAudioClose => 'Sulje';

  @override
  String get duaAudioError =>
      'Äänen lataaminen epäonnistui. Tarkista yhteytesi.';

  @override
  String get duaAudioMetaTransmittedBy => 'Välittänyt';

  @override
  String get duaAudioMetaOccasion => 'Tapahtuma';

  @override
  String get duaAudioMetaDuration => 'Kesto';

  @override
  String get quickActionDailyHadith => 'Päivän hadith';

  @override
  String get quickAction14Masumeen => 'Neljätoista virheetöntä';

  @override
  String get quickActionListenDuas => 'Kuuntele';

  @override
  String get quickActionTasbihat => 'Rukousopas';

  @override
  String get pilgrimageSectionTitle => 'Pyhä matka';

  @override
  String get pilgrimageSectionSubtitle =>
      'Täydelliset oppaat Hajjille ja Umrahiin — pyhiinvaellus Allahin pyhään taloon Mekassa';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Islamin viides pylväs';

  @override
  String get hajjCardDescription =>
      'Suuri vuosittainen pyhiinvaellus — pakollinen kerran elämässä jokaiselle kykenevälle muslimille';

  @override
  String get hajjScreenTitle => 'Hajj-opas';

  @override
  String get hajjScreenSubtitle =>
      'Vaiheittainen opas suureen pyhiinvaellukseen';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Pienempi pyhiinvaellus';

  @override
  String get umrahCardDescription =>
      'Syvästi palkitseva hengellinen matka, joka voidaan suorittaa milloin tahansa vuoden aikana';

  @override
  String get umrahScreenTitle => 'Umrah-opas';

  @override
  String get umrahScreenSubtitle =>
      'Vaiheittainen opas pienempään pyhiinvaellukseen';

  @override
  String get pilgrimageStepsTitle => 'Rituaalit ja vaiheet';

  @override
  String get pilgrimageImportantNotesTitle => 'Tärkeitä huomioita';

  @override
  String get pilgrimageDuaTitle => 'Dua tälle vaiheelle';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari-fiqh huomautus';

  @override
  String get pilgrimageComplete => '✓ Valmis';

  @override
  String get pilgrimageMarkDone => 'Merkitse valmiiksi';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done $total vaiheesta';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Shiialaiset pyhiinvaeltajat';

  @override
  String get pilgrimageShiaNoteBody =>
      'Monet shialaiset pyhiinvaeltajat matkustavat myös Medinaan Profeetta Muhammad (SAW) ziyaratille Masjid al-Nabawissa ja haudoille Jannat al-Baqissa. Nämä vierailut kantavat syvää hengellistä merkitystä, vaikka ne eivät itsessään ole Hajj-rituaaleja.';

  @override
  String get hajjIntro =>
      'Hajj on islamin viides pylväs, pakollinen kerran elämässä jokaiselle muslimille, joka on fyysisesti ja taloudellisesti kykenevä. Useimmille kaksitoista shialaisille pyhiinvaeltajille tänään tämä tarkoittaa Hajj al-Tamattu\' -matkaa, joka suoritetaan Dhul Hijjah -kuussa Profeetta Ibrahimin (AS), hänen poikansa Ismailin (AS) ja Lady Hajarin jalanjäljissä. Tämä opas seuraa Ja\'fari-rituaalien kaavaa, kun taas ziyarat Medinassa pysyy syvästi rakastettuna matkana ennen tai jälkeen Hajj\'in.';

  @override
  String get umrahIntro =>
      'Umrah on pienempi pyhiinvaellus Mekkaan, ja toisin kuin Hajj, sen voi suorittaa mihin aikaan vuodesta tahansa. Vaikka se ei ole pakollinen, sillä on valtava hengellinen palkinto ja sitä pidetään erittäin suositeltuna palvonnan tekona. Se jakaa useita rituaaleja Hajjin kanssa, mutta on lyhyempi ja koostuu neljästä pääriitistä.';

  @override
  String get voiceInputTitle => 'Äänisyöttö';

  @override
  String get voiceInputMicTitle => 'Mikrofoni';

  @override
  String get voiceInputMicSubtitle =>
      'Puhu syötteesi Ask Ayara -toimintoon sen sijaan, että kirjoittaisit.';

  @override
  String get voiceInputMicDenied => 'Mikrofonin käyttöoikeus evättiin.';

  @override
  String get voiceInputSpeak => 'Puhu sen sijaan';

  @override
  String get voiceInputListening => 'Kuuntelee…';

  @override
  String get voiceInputPermissionDenied =>
      'Mikrofonin käyttöoikeus on tarpeen äänisyöttöä varten.';
}
