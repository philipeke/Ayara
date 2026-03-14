// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Alege-ți limba';

  @override
  String get languageSelectSub => 'Poți modifica aceasta mai târziu în Setări';

  @override
  String get actionContinue => 'Continuă';

  @override
  String get languageSuggestedHeader => 'Sugerate';

  @override
  String get languageAllHeader => 'Toate limbile';

  @override
  String get languageSuggestedBadge => 'Sugerată';

  @override
  String get languageSearchHint => 'Caută…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Îndrumarea Zilei';

  @override
  String get categorySlot02 => 'Credință și Încredere';

  @override
  String get categorySlot03 => 'Reflecție asupra Rugăciunii';

  @override
  String get categorySlot04 => 'Răbdare și Speranță';

  @override
  String get categorySlot05 => 'Căutarea Iertării';

  @override
  String get categorySlot06 => 'Milă și Compasiune';

  @override
  String get categorySlot07 => 'Credință și Putere';

  @override
  String get categorySlot08 => 'Inimă Recunoscătoare';

  @override
  String get categorySlot09 => 'Scopul Vieții';

  @override
  String get categorySlot10 => 'Legaturi Familiale';

  @override
  String get categorySlot11 => 'Pace Interioară';

  @override
  String get categorySlot12 => 'Înțelepciunea Profetului';

  @override
  String get categorySlot13 => 'Caracter Bun';

  @override
  String get categorySlot14 => 'Rezistență la Ispită';

  @override
  String get categorySlot15 => 'Dhikr Seara';

  @override
  String get categoryCustom => 'Reflecție Personală';

  @override
  String get dhikrMeaningSubhanallah => 'Slavă lui Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Toate laudele se cuvin lui Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah este Cel mai Mare';

  @override
  String get quranVerseHeartAtRest =>
      'Cu adevărat, în amintirea lui Allah se odihnesc inimile.';

  @override
  String get promptHint =>
      'Atinge o categorie pentru îndrumarea și reflecția islamică';

  @override
  String get currentLanguage => 'Limba curentă';

  @override
  String get settingsLanguage => 'Setări limbă';

  @override
  String get settingsTitle => 'Setări';

  @override
  String get chooseLanguage => 'Alege-ți limba';

  @override
  String get continueCta => 'Continuă';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cuvinte',
      one: '$count cuvânt',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opțiuni';

  @override
  String get newCta => 'Nou';

  @override
  String get actionsTitle => 'Ce ai dori să faci?';

  @override
  String get copy => 'Copiază';

  @override
  String get share => 'Distribuie';

  @override
  String get close => 'Închide';

  @override
  String get copiedToast => 'Copiat în clipboard';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Nu s-a putut genera un răspuns nou';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nDorești să încerci din nou?';
  }

  @override
  String get cancelCta => 'Anulează';

  @override
  String get retryCta => 'Încearcă din nou';

  @override
  String get authTitle => 'Creează-ți contul';

  @override
  String get continueAsGuest => 'Continuă ca oaspete';

  @override
  String get signInGoogle => 'Conectează-te cu Google';

  @override
  String get signInApple => 'Conectează-te cu Apple';

  @override
  String get signInEmail => 'Conectează-te cu Email';

  @override
  String get upgradeWithApple => 'Continuă cu Apple';

  @override
  String get mustAccept =>
      'Trebuie să accepți Termenii și să recunoști Politica de Confidențialitate.';

  @override
  String get termsLabel => 'Accept Termenii de Utilizare';

  @override
  String get privacyLabel => 'Am citit Politica de Confidențialitate';

  @override
  String get marketingOptIn => 'Sunt de acord să primesc știri și oferte';

  @override
  String get openTerms => 'Termenii de Utilizare';

  @override
  String get openPrivacy => 'Politica de Confidențialitate';

  @override
  String get accountSection => 'Cont';

  @override
  String get guestMode => 'Mod oaspete';

  @override
  String get signedIn => 'Conectat';

  @override
  String get upgradeHint =>
      'Salvează-ți reflecțiile pe mai multe dispozitive creând un cont.';

  @override
  String get upgradeWithGoogle => 'Continuă cu Google';

  @override
  String get signOut => 'Deconectare';

  @override
  String get snackUpgraded => 'Cont actualizat cu Google ✅';

  @override
  String get snackSignedIn => 'Conectat cu Google ✅';

  @override
  String get snackSignedOut => 'Deconectat';

  @override
  String get snackSignedInApple => 'Conectat cu Apple ✅';

  @override
  String get snackSignedInGoogle => 'Conectat cu Google ✅';

  @override
  String get snackUpgradedApple => 'Cont actualizat cu Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Cont actualizat cu Google ✅';

  @override
  String get historyTitle => 'Reflecții anterioare';

  @override
  String get historyOpenCta => 'Reflecții anterioare';

  @override
  String get historyEmpty => 'Nicio reflecție salvată încă.';

  @override
  String get historyDeleteTitle => 'Ștergere reflecție?';

  @override
  String get historyDeleteBody =>
      'Aceasta va elimina permanent elementul selectat.';

  @override
  String get deleteCta => 'Șterge';

  @override
  String get historyButton => 'Reflecții Anterioare';

  @override
  String get historyEmptyTitle => 'Nicio reflecție încă';

  @override
  String get historyEmptyBody =>
      'Generează ceva mai întâi — elementele tale salvate vor apărea aici.';

  @override
  String get historyDelete => 'Șterge';

  @override
  String get footerTitle => 'Cu Wilaya, Iman și Sabr';

  @override
  String get footerSubtitle => 'Una rugăciune la o dată';

  @override
  String get genericErrorSnack =>
      'Ceva a mers prost — te rugăm să încerci din nou în câteva momente.';

  @override
  String get upgradeAccountCta =>
      'Salvează-ți reflecțiile pe mai multe dispozitive – creează un cont';

  @override
  String get deleteAccount => 'Șterge contul';

  @override
  String get exportData => 'Exportă-mi datele';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Ușor acolo 🐯\nAyara are nevoie de o clipă înainte de următoarea…';

  @override
  String get rateDailyLimit =>
      'Ți-au terminat reflecțiile pentru acum.\nObține mai multe reflecții sau upgrade la Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Ți-ai folosit toate reflecțiile.\nRe-aprovizionează-te sau upgrade la Wilaya pentru a continua.';

  @override
  String get rateGraceCreditsExhausted =>
      'Ți-au terminat reflecțiile pentru acum.\nObține mai multe reflecții sau upgrade la Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya deblochează funcții premium, categorii viitoare și un ecuson special.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Reflecțiile tale sunt goale chiar acum. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Nu s-a putut verifica reflecțiile tale: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Ceva a mers prost la verificarea reflecțiilor tale.';

  @override
  String get aiFallbackGeneric =>
      'Ceva a mers prost — te rugăm să încerci din nou în câteva momente.';

  @override
  String get limitSectionTitle => 'Reflecții';

  @override
  String get limitTodayLabel => 'Utilizare';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Reflecții rămase: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Se încarcă…';

  @override
  String get limitLoadingLabelDescription =>
      'Afișat în cardul reflecțiilor în timp ce statisticile de utilizare sunt aduse.';

  @override
  String get aiLimitTitle => 'Reflecții';

  @override
  String get aiLimitSubtitle =>
      'Fiecare răspuns folosește 1 reflecție. Standard include reflecții de început. Wilaya deblochează categorii premium și permite re-aprovizionări.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflecții folosite';
  }

  @override
  String get creditsSectionTitle => 'Reflecții';

  @override
  String get creditsUsageLabel => 'Utilizare';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Reflecții rămase: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Se încarcă…';

  @override
  String get creditsLoadingLabelDescription =>
      'Afișat în timp ce statisticile de reflecție sunt aduse.';

  @override
  String get creditsTitle => 'Reflecții';

  @override
  String get creditsSubtitle =>
      'Fiecare răspuns folosește 1 reflecție. Standard include reflecții de început. Wilaya deblochează categorii premium și permite re-aprovizionări.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflecții folosite';
  }

  @override
  String get settingsDeleteTitle => 'Șterge contul';

  @override
  String get settingsDeleteDescription =>
      'Șterge permanent contul și toate datele asociate.';

  @override
  String get settingsDeleteButtonLabel => 'Șterge contul meu';

  @override
  String get settingsDeleteDialogTitle => 'Ștergere cont?';

  @override
  String get settingsDeleteDialogBody =>
      'Această acțiune este permanentă și nu poate fi anulată.\n\nToate conversațiile, istoricul și informațiile contului vor fi șterse.';

  @override
  String get settingsDeleteDialogCancel => 'Anulează';

  @override
  String get settingsDeleteDialogConfirm => 'Șterge';

  @override
  String get settingsFreeLimitUsedTitle => 'Reflecții de început folosite';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Reflecțiile de început pentru acest dispozitiv au fost folosite. Upgrade la Wilaya sau cumpără mai multe reflecții pentru a continua.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Reflecții de început folosite';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Reflecțiile de început pentru acest dispozitiv au fost folosite. Upgrade la Wilaya sau cumpără mai multe reflecții pentru a continua.';

  @override
  String get deviceBoundError =>
      'Acest dispozitiv este deja legat de alt cont. Te rugăm să te conectezi cu contul original.';

  @override
  String get premiumTitle => 'Modul Wilaya';

  @override
  String get premiumSubtitleBasic => 'Deblochează experiența completă Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Ești pe Wilaya. Ai nevoie de mai multe reflecții?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plan curent: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflecții: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Achizițiile nu sunt disponibile chiar acum.';

  @override
  String get premiumSignInToPurchase =>
      'Conectează-te pentru a cumpăra reflecții sau a debloca Wilaya.';

  @override
  String get premiumRestorePurchases => 'Restaurează achizițiile';

  @override
  String get premiumProcessing => 'Se procesează…';

  @override
  String get premiumRestoreHintTitle =>
      'Ai cumpărat deja Wilaya sau reflecții pe acest dispozitiv sau pe altul?';

  @override
  String get premiumRestoreHintBody => 'Restaurează achizițiile dacă nu apar.';

  @override
  String get premiumBuyCredits200 => 'Cumpără 200 reflecții';

  @override
  String get premiumBuyCredits400 => 'Cumpără 400 reflecții';

  @override
  String get premiumBecomePremiumOneTime => 'Upgrade la modul Wilaya';

  @override
  String get premiumTopupHint =>
      'Cu Wilaya, poți re-aproviziona cu reflecții suplimentare oricând ai nevoie.';

  @override
  String get premiumUpgradeCta => 'Upgrade';

  @override
  String get premiumRequiredForCategory =>
      'Această categorie este disponibilă doar pentru utilizatorii Wilaya. Upgrade-ază în Setări pentru a debloca tot conținutul premium.';

  @override
  String get premiumBenefitsBasic =>
      'Deblochează Wilaya pentru a obține reflecții suplimentare, acces la categorii premium și continuă oricând ai nevoie de îndrumări.';

  @override
  String get premiumBenefitsPremium =>
      'Ești în modul Wilaya. Dacă îți rămân puține reflecții, adaugă-ți extra reflecții și continuă fără întreruperi.';

  @override
  String get premiumButtonBecomePremium => 'Deblochează Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Adaugă 1000 reflecții';

  @override
  String get premiumBadge => 'Wilaya activ';

  @override
  String get premiumLoadingStore => 'Se încarcă magazinul…';

  @override
  String get premiumProductNotAvailable =>
      'Acest produs nu este încă disponibil în magazin. Te rugăm să încerci din nou mai târziu.';

  @override
  String get premiumPurchaseError =>
      'Ceva a mers prost cu achiziția. Te rugăm să încerci din nou.';

  @override
  String get premiumBuyCredits100 => 'Adaugă 100 reflecții';

  @override
  String get premiumFeatureLocked =>
      'Deblochează Wilaya pentru a accesa această funcție.';

  @override
  String get lockedCategoriesHint =>
      'Unele categorii sunt rezervate pentru membrii Wilaya. Deblochează-le pentru a explora fiecare reflecție pe călătoria ta.';

  @override
  String get freePlanBlockedTitle => 'Ți-ai epuizat reflecțiile de început';

  @override
  String get freePlanBlockedBody =>
      'Ești pe planul Standard cu reflecții de început și ai atins limita. Pentru a continua — și a debloca categorii premium — upgrade la Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Vezi opțiunile Wilaya mai jos';

  @override
  String get graceBlockedTitle => 'Ți-ai epuizat reflecțiile de început';

  @override
  String get graceBlockedBody =>
      'Ești pe planul Standard cu reflecții de început și ai atins limita. Pentru a continua — și a debloca categorii premium — upgrade la Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Vezi opțiunile Wilaya mai jos';

  @override
  String get rateGuestMustSignIn =>
      'Conectează-te pentru a folosi Ayara și reflecțiile tale.';

  @override
  String get guestNoCreditsTitle => 'Modul oaspete';

  @override
  String get guestNoCreditsBody =>
      'Ca oaspete poți naviga prin aplicație, dar nu poți folosi reflecții. Conectează-te mai târziu în Setări pentru a folosi reflecții și a debloca achizițiile.';

  @override
  String get guestDialogContinue => 'Continuă';

  @override
  String get guestDialogLoginInstead => 'Conectează-te în schimb';

  @override
  String get optionalLabel => 'opțional';

  @override
  String get accountDeleteSuccessTitle => 'Cont șters';

  @override
  String get accountDeleteSuccessBody =>
      'Contul și datele asociate au fost șterse cu succes.';

  @override
  String get accountDeleteSuccessClose => 'Închide';

  @override
  String get accountDeleteErrorTitle => 'Nu s-a putut șterge contul';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Re-autentificarea a fost anulată. Te rugăm să te conectezi din nou și să reîncerci ștergerea.';

  @override
  String get accountDeleteReauthRequired =>
      'Ștergerea contului necesită o conectare recentă. Te rugăm să te deconectezi, să te conectezi din nou și să reîncerci.';

  @override
  String get settingsDeletePermanentWarning =>
      'Această acțiune este permanentă și nu poate fi anulată. Toate datele asociate contului tău vor fi șterse.';

  @override
  String get dailyGraceTitle => 'Îndrumarea Zilei';

  @override
  String get dailyGraceScriptureLabel => 'VERSUL ZILEI';

  @override
  String get dailyGraceSaintLabel => 'FIGURA SĂPTĂMÂNII';

  @override
  String get dailyGraceReflectionLabel => 'REFLECȚIE SEARA';

  @override
  String get dailyGraceCopiedToast => 'Versul copiat în clipboard';

  @override
  String get locationConsentLabel =>
      'Permite Ayara să-mi folosească locația pentru direcția Qiblei și orele rugăciunilor';

  @override
  String get locationConsentHint =>
      'Folosit doar pentru aceste funcții. Locația ta nu este niciodată distribuită sau stocată.';

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
  String get askPageTitle => 'Întreabă Ayara';

  @override
  String get askPageDescription =>
      'Întreabă orice despre credință, rugăciune, viață sau practică islamică și primește îndrumări înrădăcinate în Coran și învățăturile Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Tastează-ți întrebarea aici…';

  @override
  String get askPageSubmitCta => 'Întreabă';

  @override
  String get askPageInputEmptyError =>
      'Te rugăm să scrii o întrebare mai întâi.';

  @override
  String get askResultYourQuestion => 'Întrebarea ta';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Spre Mecca';

  @override
  String get qiblaCompassInstruction =>
      'Rotește telefonul până când acul de aur indică în sus.\nAcea direcție arată spre Qibla (Mecca).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Semnalul GPS este slab. Ieși afară și atinge Reîncercă.';

  @override
  String get qiblaRetry => 'Reîncercă';

  @override
  String get qiblaTitle => 'Direcția Qiblei';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km până la Mecca';
  }

  @override
  String get qiblaLocationNeededTitle => 'Locație necesară';

  @override
  String get qiblaLocationNeededBody =>
      'Permite accesul la locație pentru ca Ayara să calculeze direcția Kaabei din Mecca de oriunde ești.';

  @override
  String get qiblaOpenSettings => 'Deschide Setări';

  @override
  String get qiblaCompassLoading => 'Se găsește poziția ta…';

  @override
  String get qiblaTowardMecca => 'Spre Mecca';

  @override
  String get prayerTimesTitle => 'Orele Rugăciunilor';

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
  String get prayerTimesLocationNeededTitle => 'Locație necesară';

  @override
  String get prayerTimesLocationNeededBody =>
      'Permite accesul la locație pentru ca Ayara să calculeze orele rugăciunilor corecte pentru orașul tău.';

  @override
  String get prayerTimesNextLabel => 'Următoare';

  @override
  String get prayerTimesDoneLabel => 'Gata';

  @override
  String get monthlyPrayerTimesTitle => 'Orele Rugăciunilor Lunare';

  @override
  String get monthlyPrayerTimesViewButton => 'Vizualizează Luna Completă';

  @override
  String get monthlyPrayerTimesNextMonth => 'Luna viitoare';

  @override
  String get monthlyPrayerTimesDayHeader => 'Zi';

  @override
  String get sharePrayerTimes => 'Distribuie orele rugăciunilor';

  @override
  String get notificationsSectionTitle => 'Notificări';

  @override
  String get notificationsSectionSubtitle =>
      'Reamintiri de rugăciuni, evenimente din calendar și altele';

  @override
  String get dailyReflectionReminderTitle => 'Reflecție Zilnică';

  @override
  String get dailyReflectionReminderDescription =>
      'Un reamintitor zilnic ușor pentru a deschide Ayara și a te conecta cu credința ta.';

  @override
  String get dailyReflectionReminderEnable => 'Activează reamintitorul zilnic';

  @override
  String get dailyReflectionReminderTimeLabel => 'Ora reamintitorului';

  @override
  String get prayerNotificationsTitle => 'Reamintitori de Rugăciuni';

  @override
  String get prayerNotificationsDescription =>
      'Primește un reamintitor ușor înainte de fiecare ore de rugăciune pentru a rămâne conectat pe tot parcursul zilei.';

  @override
  String get prayerNotificationsEnable => 'Activează reamintitori de rugăciuni';

  @override
  String get prayerNotificationsOpenSettings => 'Deschide setări notificări';

  @override
  String get prayerNotificationsDenied => 'Notificările sunt dezactivate';

  @override
  String get prayerNotificationsDeniedHint =>
      'Mergi în Setări și permite notificările pentru Ayara pentru a primi reamintitori de ore de rugăciuni.';

  @override
  String get notificationsConsentLabel =>
      'Permite notificări pentru orele rugăciunilor';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Rugăciunea Zorii';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr este rugăciunea dimineții Ahl al-Bayt. Imam Ali (AS) a spus: Păzește rugăciunea zorii ca pe cea mai prețioasă comoară. Ridică-te, purifică-te și stai în fața lui Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Rugăciunea Amiezii';

  @override
  String get prayerNotifBodyDhuhr =>
      'Imamii Ahl al-Bayt au pretupit fiecare moment de amintire. Opreşte ziua, combină Dhuhr cu Asr dacă este nevoie și întoarce inima spre Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Rugăciunea După-Amiezii';

  @override
  String get prayerNotifBodyAsr =>
      'Păzește rugăciunea, pentru că ea este legământul dintre tine și Allah. A venit ora Asr — nu o lăsa să treacă fără amintire.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Rugăciunea Apusului';

  @override
  String get prayerNotifBodyMaghrib =>
      'Soarele a apus — un moment pe care Ahl al-Bayt l-au considerat sacru pentru supplicație. Oferă Maghrib și deschide mâinile spre Allah în dua înainte ca noaptea să înceapă.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Rugăciunea Nopții';

  @override
  String get prayerNotifBodyIsha =>
      'Încheie ziua în compania lui Allah. Imamii au încurajat Salat al-Layl după Isha — dar mai întâi, completează Isha și încheia ziua cu amintirea Lui.';

  @override
  String get outOfReflectionsBannerText => 'Ți-ai folosit toate reflecțiile';

  @override
  String get outOfReflectionsBannerCta => 'Obține mai multe';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Atinge cercul pentru a număra';

  @override
  String get dhikrResetButton => 'Resetare';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Ai completat 100 de amintiri ale lui Allah. Fie ca ele să fie o lumină pentru inima ta.';

  @override
  String get disclaimerTitle => 'Despre îndrumarea acestei aplicații';

  @override
  String get disclaimerBody =>
      'Ayara oferă reflecții islamice, reamintitori și conținut spiritual pentru a suporta călătoria personală de credință, înrădăcinate în Coran și învățăturile Ahl al-Bayt. Acest conținut este oferit doar în scopuri informative și inspiraționale generale.\n\nAyara nu înlocuiește erudția calificată.\nÎndrumarea din această aplicație nu este înlocuitor pentru un învățător islamic doct, marja\', sau profesor cu pregătire teologică. În islamul Shia, îndrumarea religioasă este înrădăcinată în școala de jurisprudență Ja\'fari (fiqh) și tradițiile de urmărire a unui Marja\' viu (sursă de emulare) — un jurist calificat ale cărui hotărâri îi ghidează pe credincioși în practica religioasă. Dacă ai întrebări despre hotărâri religioase, probleme halal și haram sau obligații religioase personale, te rugăm să ceri sfatul unui Marja\' calificat sau unui cărturar din comunitatea ta.\n\nAceastă aplicație nu emite hotărâri religioase.\nAyara nu face determinări autoritare privind probleme de fiqh sau obligații religioase personale. Nimic aici nu trebuie tratat ca fatwa sau instrucție religioasă obligatorie.\n\nCentralitatea Ahl al-Bayt.\nÎn islamul Shia, Profetul Muhammad ﷺ și casa lui purificată — Ahl al-Bayt — sunt ghizii autoritari ai comunității islamice după Coran. Cei doisprezece Imami ai Ahl al-Bayt sunt interpretatorii divin numiți ai învățăturii islamice. Conținutul din această aplicație reflectă această tradiție și urmărește să o onorez cu credință.\n\nProbleme comunitare.\nAceastă aplicație urmărește să încurajeze angajamentul tău cu credința respectând profund rolul vital al moscheii tale locale, al centrului islamic și al comunității religioase. Te încurajez să rămâi conectat și să înveți de la profesori calificați lângă tine.';

  @override
  String get disclaimerClose => 'Înțeleg';

  @override
  String get disclaimerInfoTooltip => 'Despre îndrumarea acestei aplicații';

  @override
  String get disclaimerSettingsSubtitle =>
      'Doar în scopuri informative generale. Atinge pentru a citi avertismentul complet.';

  @override
  String get disclaimerSectionHeader => 'Avertisment privind îndrumarea';

  @override
  String get navHome => 'Acasă';

  @override
  String get navReflect => 'Reflectează';

  @override
  String get navDuas => 'Duas';

  @override
  String get navCalendar => 'Calendar';

  @override
  String get dashboardToday => 'ASTAZI';

  @override
  String get dashboardComingUp => 'Se apropie';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'zile',
      one: 'zi',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Acces Rapid';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Îndrumări';

  @override
  String get quickActionPrayerTimes => 'Orele Rugăciunilor';

  @override
  String get askAyaraTitle => 'Întreabă Ayara';

  @override
  String get askAyaraSubtitle =>
      'Întreabă orice întrebare islamică și primește un răspuns gândit și ghidat.';

  @override
  String get askAyaraHint => 'ex. Care este semnificația Ramadanului?';

  @override
  String get askAyaraSubmit => 'Întreabă';

  @override
  String get wisdomOfTheDayTitle => 'Înțelepciunea Zilei';

  @override
  String get calendarScreenTitle => 'Calendarul Islamic';

  @override
  String get calendarUpcomingOccasions => 'Ocazii Viitoare';

  @override
  String get calendarOccasionRemindersTitle => 'Reamintitori de Ocazii';

  @override
  String get calendarOccasionRemindersHint =>
      'Notificat seara înainte de fiecare ocazie';

  @override
  String get calendarNotifPermissionDenied =>
      'Permisiunea de notificare negată. Activează-o în setările dispozitivului.';

  @override
  String get calendarNoEvents => 'Niciun eveniment viitor găsit.';

  @override
  String get calendarAddToPhone => 'Adaugă în Calendarul Telefonului';

  @override
  String get calendarAddedToPhone => 'Adăugat în Calendar';

  @override
  String get calendarCountdownToday => 'ASTAZI';

  @override
  String get calendarCountdownTomorrow => 'MÂINE';

  @override
  String calendarCountdownDays(int days) {
    return 'în $days zile';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Ian';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Apr';

  @override
  String get calendarMonthMay => 'Mai';

  @override
  String get calendarMonthJun => 'Iun';

  @override
  String get calendarMonthJul => 'Iul';

  @override
  String get calendarMonthAug => 'Aug';

  @override
  String get calendarMonthSep => 'Sep';

  @override
  String get calendarMonthOct => 'Oct';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dec';

  @override
  String get calendarSeasonMuharramEarly =>
      'Zilele Muharram — amintire Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — zile de doliu și reflecție';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — patruzeci de zile ale Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Drumul către Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — zori revelației';

  @override
  String get calendarSeasonMidShaban =>
      'Jumătatea Sha\'ban — ziua de naștere a Imamului al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — luna Coranului';

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
  String get duasScreenTitle => 'Duas și Ziyarat';

  @override
  String get duasSearchHint => 'Caută duas, ziyarat…';

  @override
  String get duasFilterAll => 'Toate';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duas și ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Nicio dua găsită.';

  @override
  String get duaCategoryDaily => 'Zilnică';

  @override
  String get duaCategoryWeekly => 'Săptămânală';

  @override
  String get duaCategoryOccasions => 'Ocazii';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Naștere';

  @override
  String get eventTypeMartyrdom => 'Martiraj';

  @override
  String get eventTypeOccasion => 'Ocazie';

  @override
  String get duaCopyTooltip => 'Copiază traducerea';

  @override
  String get duaToggleTransliteration => 'Transliterare';

  @override
  String get duaToggleTranslation => 'Traducere';

  @override
  String get duaAskAiLabel => 'Cere Ayara să explice această dua';

  @override
  String get duaAskAiLockedLabel => 'Cere Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Explicațiile Ayara sunt disponibile pentru membrii Wilaya. Upgrade în Setări.';

  @override
  String duaAiComingSoon(String name) {
    return 'Cere Ayara despre \"$name\" — în curând!';
  }

  @override
  String get duaCopiedToast => 'Dua copiată în clipboard.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah este Cel mai Mare';

  @override
  String get tasbihAlhamdulillahMeaning => 'Toate laudele se cuvin lui Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Slavă lui Allah';

  @override
  String get tasbihResetTooltip => 'Resetare';

  @override
  String get tasbihCompleteTitle => 'Tasbih Completat';

  @override
  String get tasbihCompleteMessage => 'Fie ca Allah să accepte dhikrul tău.';

  @override
  String get tasbihTapHint => 'Atinge oriunde pentru a număra';

  @override
  String get tasbihatScreenTitle => 'Ghid de Rugăciune';

  @override
  String get tasbihatScreenSubtitle => 'GLORIFICĂRILE RUGĂCIUNILOR';

  @override
  String get tasbihatScreenDescription =>
      'Un ghid complet al glorificărilor recitate în și după rugăciunile zilnice — urmând tradițiile Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recitată în al 3-lea și al 4-lea rakʿah';

  @override
  String get tasbihatArba3Info =>
      'În jurisprudența Shia, Tasbiḥāt al-Arbaʿa înlocuiește Surah al-Fatiha în al 3-lea și al 4-lea rakʿah al Dhuhr, Asr, Maghrib și Isha. Este obligator (wājib) să o recitezi o dată și recomandabil (mustaḥabb) să o recitezi de trei ori.';

  @override
  String get tasbihatArba3Translation =>
      'Slavă lui Allah · Toate laudele pentru Allah\nNu este divinitate decât Allah · Allah este Cel mai Mare';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitare Completă';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Fie ca rugăciunea ta să fie acceptată — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Atinge după fiecare recitare';

  @override
  String get tasbihatZahraSubtitle => 'După fiecare rugăciune · 100 de margele';

  @override
  String get tasbihatZahraOriginLabel => 'Origine';

  @override
  String get tasbihatZahraHadith =>
      'Lady Fatima al-Zahra (sa) i-a cerut Profetului ﷺ un servitor. El a spus: \"Nu ți-ar fi mai bine să-ți arăt ceva mai bun? Recită Subḥānallāh de 33 de ori, Alḥamdulillāh de 33 de ori și Allāhu Akbar de 34 de ori după fiecare rugăciune. Asta este mai bună pentru tine decât un servitor.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Vol. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Deschide Contor Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUAS RECOMANDATE';

  @override
  String get tasbihatDuasSubtitle => 'După completarea rugăciunilor';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'După fiecare rugăciune obligatorie';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Oricine recită Āyat al-Kursī după fiecare rugăciune obligatorie, nimic nu se interpune între el și paradis decât moartea. Imamul al-Bāqir (a) a spus că este printre versurile cele mai mari din Coran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'După fiecare rugăciune · sigilează toate supplicațiile';

  @override
  String get tasbihatDuaSalawatSource => 'Imamul al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Trimiterea de salutații Profetului ﷺ și familiei sale purificată (Āl Muḥammad) este recomandată pentru a sigila fiecare dua. Imamul al-Ṣādiq (a) a spus: \"Orice dua este suspendată până nu trimi ṣalawāt asupra Muḥammad și familiei lui.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'După fiecare rugăciune · pentru Imamul timpului nostru';

  @override
  String get tasbihatDuaFarajSource =>
      'Predat de Imamul al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'O dua pentru reapariția Imamului al-Mahdī (af), al doisprezecelea Imam, învățată de tatăl său. Este adesea recitată de mulți musulmani șiiți după rugăciune ca un act de devoțiune față de Imamului viu.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ al Doamnei Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'După Maghrib și Isha · special recomandat';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imamul al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imamul al-Bāqir (a) a spus că recitarea Tasbīḥ al-Zahrā după Isha înainte de culcare este mai bună decât 1000 de rakʿahs de rugăciune opțională. Lumina lui se urcă la ceruri.';

  @override
  String get tasbihFatimaGiftPre => 'Un dar de la Profet';

  @override
  String get tasbihFatimaGiftPost => 'recitat după fiecare rugăciune';

  @override
  String get prayerTrackerTitle => 'URMĂRITOR DE RUGĂCIUNI';

  @override
  String get prayerTrackerPrayed => 'S-a rugat';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count rând de zile';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Toate rugăciunile completate astazi. Fie ca Allah să accepte.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Completat astazi';

  @override
  String get dhikrTrackerNotDoneToday => 'Nu s-a făcut astazi';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count rând de zile';
  }

  @override
  String get dhikrReminderTitle => 'Reamintitor Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Un reamintitor zilnic ușor pentru a recita Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Activează reamintitorul Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Ora reamintitorului';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith Zilei';

  @override
  String get hadithLabelArabic => 'ARABĂ';

  @override
  String get hadithLabelTranslation => 'TRADUCERE';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Distribuie Acest Hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nPrin Ayara';
  }

  @override
  String get hadithNavPrevious => 'Anterior';

  @override
  String get hadithNavNext => 'Următoare';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Cei Paisprezece Infallibili';

  @override
  String get imamsScreenSubtitle =>
      'Profetul, Doamna Fatima și Cei Doisprezece Imami — călăuzitorii purificați și infailibili în Islamul șiiților de Twelver';

  @override
  String get imamLabelBorn => 'Născut';

  @override
  String get imamLabelMartyrdom => 'Martiraj';

  @override
  String get imamLabelStatus => 'Statut';

  @override
  String get imamSectionBiography => 'BIOGRAFIE';

  @override
  String get imamSectionFamousSaying => 'CUVÂNT FAIMOS';

  @override
  String get imamRoleProphet => 'Profetul Final';

  @override
  String get imamRoleInfallible => 'Infailibul';

  @override
  String get imamOrdinal1 => '1-ul Imam';

  @override
  String get imamOrdinal2 => '2-ul Imam';

  @override
  String get imamOrdinal3 => '3-ul Imam';

  @override
  String get imamOrdinal4 => '4-ul Imam';

  @override
  String get imamOrdinal5 => '5-ul Imam';

  @override
  String get imamOrdinal6 => '6-ul Imam';

  @override
  String get imamOrdinal7 => '7-ul Imam';

  @override
  String get imamOrdinal8 => '8-ul Imam';

  @override
  String get imamOrdinal9 => '9-ul Imam';

  @override
  String get imamOrdinal10 => '10-ul Imam';

  @override
  String get imamOrdinal11 => '11-ul Imam';

  @override
  String get imamOrdinal12 => '12-ul Imam';

  @override
  String get duaAudioScreenTitle => 'Ascultă Duas';

  @override
  String get duaAudioScreenSubtitle =>
      'Selectează o dua pentru a asculta. Atinge plăcuța pentru a reda sau pausa.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio pentru această dua va fi disponibil în o actualizare viitoare.';

  @override
  String get duaAudioClose => 'Închide';

  @override
  String get duaAudioError =>
      'Nu s-a putut încărca audio. Te rugăm să verifi conexiunea.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmis de';

  @override
  String get duaAudioMetaOccasion => 'Ocazie';

  @override
  String get duaAudioMetaDuration => 'Durată';

  @override
  String get quickActionDailyHadith => 'Hadith Zilei';

  @override
  String get quickAction14Masumeen => 'Cei Paisprezece Infallibili';

  @override
  String get quickActionListenDuas => 'Ascultă';

  @override
  String get quickActionTasbihat => 'Ghid de Rugăciune';

  @override
  String get pilgrimageSectionTitle => 'Călătoria Sacră';

  @override
  String get pilgrimageSectionSubtitle =>
      'Ghiduri complete pentru Hajj și Umrah — pelerinajul la Casa Sfântă a lui Allah în Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Al Cincilea Stâlp al Islamului';

  @override
  String get hajjCardDescription =>
      'Marele pelerinaj anual — obligatoriu o dată în viață pentru fiecare musulman capabil';

  @override
  String get hajjScreenTitle => 'Ghid Hajj';

  @override
  String get hajjScreenSubtitle => 'Ghid pas cu pas pentru marele pelerinaj';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Pelerinajul Minor';

  @override
  String get umrahCardDescription =>
      'O călătorie spiritual profund de recompensă care poate fi efectuată oricând din an';

  @override
  String get umrahScreenTitle => 'Ghid Umrah';

  @override
  String get umrahScreenSubtitle => 'Ghid pas cu pas pentru pelerinajul minor';

  @override
  String get pilgrimageStepsTitle => 'Ritualuri și Pași';

  @override
  String get pilgrimageImportantNotesTitle => 'Note Importante';

  @override
  String get pilgrimageDuaTitle => 'Dua pentru acest pas';

  @override
  String get pilgrimageJafariNoteTitle => 'Notă de Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Complet';

  @override
  String get pilgrimageMarkDone => 'Marchează ca complet';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done din $total pași';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Pelerini Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Mulți pelerini șiiți călătoresc de asemenea la Medina pentru ziyaratul Profetului Muhammad (SAW) la Masjid al-Nabawi și la mormintele din Jannat al-Baqi. Aceste vizite au o semnificație spirituală profundă, deși nu sunt ele însele rite de Hajj.';

  @override
  String get hajjIntro =>
      'Hajj este al cincilea pilon al Islamului, obligatoriu o dată în viață pentru fiecare musulman care este fizic și financiar capabil. Pentru cei mai mulți pelerini șiiți de Twelver de astăzi, aceasta înseamnă Hajj al-Tamattu\', efectuat în luna Dhul Hijjah pe urmele Profetului Ibrahim (AS), fiul său Ismail (AS) și Doamna Hajar. Acest ghid urmează conturul Ja\'fari al riturilor, în timp ce ziyaratul în Medina rămâne o călătorie profund prețuită înainte sau după Hajj.';

  @override
  String get umrahIntro =>
      'Umrah este pelerinajul minor la Mecca și, spre deosebire de Hajj, poate fi efectuat oricând din an. Deși nu este obligatoriu, poartă o recompensă spirituală enormă și este considerat un act de cult foarte recomandat. Împărtășește mai ritualuri cu Hajj dar este mai scurt, constând din patru ritualuri principale.';

  @override
  String get voiceInputTitle => 'Introducere vocală';

  @override
  String get voiceInputMicTitle => 'Microfon';

  @override
  String get voiceInputMicSubtitle =>
      'Vorbește-ți inputul pentru a întreba Ayara în loc să scrii.';

  @override
  String get voiceInputMicDenied => 'Accesul la microfon a fost refuzat.';

  @override
  String get voiceInputSpeak => 'Vorbește în loc';

  @override
  String get voiceInputListening => 'Ascultând…';

  @override
  String get voiceInputPermissionDenied =>
      'Accesul la microfon este necesar pentru introducerea vocală.';
}
