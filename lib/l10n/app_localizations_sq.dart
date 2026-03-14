// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Zgjidh gjuhën tënde';

  @override
  String get languageSelectSub => 'Këtë mund ta ndryshosh më vonë te Cilësimet';

  @override
  String get actionContinue => 'Vazhdo';

  @override
  String get languageSuggestedHeader => 'Të sugjeruara';

  @override
  String get languageAllHeader => 'Të gjitha gjuhët';

  @override
  String get languageSuggestedBadge => 'E sugjeruar';

  @override
  String get languageSearchHint => 'Kërko…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Udhëzim i përditshëm';

  @override
  String get categorySlot02 => 'Iman dhe besim';

  @override
  String get categorySlot03 => 'Reflektim mbi namazin';

  @override
  String get categorySlot04 => 'Durim dhe shpresë';

  @override
  String get categorySlot05 => 'Kërko falje';

  @override
  String get categorySlot06 => 'Mëshirë dhe dhembshuri';

  @override
  String get categorySlot07 => 'Forca e besimit';

  @override
  String get categorySlot08 => 'Zemër mirënjohëse';

  @override
  String get categorySlot09 => 'Qëllimi i jetës';

  @override
  String get categorySlot10 => 'Lidhjet familjare';

  @override
  String get categorySlot11 => 'Qetësi e brendshme';

  @override
  String get categorySlot12 => 'Urtësia e Profetit';

  @override
  String get categorySlot13 => 'Karakter i mirë';

  @override
  String get categorySlot14 => 'Rezisto tundimit';

  @override
  String get categorySlot15 => 'Dhikr i mbrëmjes';

  @override
  String get categoryCustom => 'Reflektim personal';

  @override
  String get dhikrMeaningSubhanallah => 'Lavdi Allahut';

  @override
  String get dhikrMeaningAlhamdulillah =>
      'I gjithë falënderimi i takon Allahut';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allahu është Më i Madhi';

  @override
  String get quranVerseHeartAtRest =>
      'Vërtet, me përmendjen e Allahut zemrat gjejnë qetësi.';

  @override
  String get promptHint => 'Prek një kategori për udhëzim islam dhe reflektim';

  @override
  String get currentLanguage => 'Gjuha aktuale';

  @override
  String get settingsLanguage => 'Cilësimet e gjuhës';

  @override
  String get settingsTitle => 'Cilësimet';

  @override
  String get chooseLanguage => 'Zgjidh gjuhën tënde';

  @override
  String get continueCta => 'Vazhdo';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fjalë',
      one: '$count fjalë',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opsione';

  @override
  String get newCta => 'I ri';

  @override
  String get actionsTitle => 'Çfarë do të dëshiroje të bëje?';

  @override
  String get copy => 'Kopjo';

  @override
  String get share => 'Ndaje';

  @override
  String get close => 'Mbyll';

  @override
  String get copiedToast => 'U kopjua në kujtesën e përkohshme';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Nuk u krijua dot një përgjigje e re';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nA dëshiron të provosh përsëri?';
  }

  @override
  String get cancelCta => 'Anulo';

  @override
  String get retryCta => 'Provo përsëri';

  @override
  String get authTitle => 'Krijo llogarinë tënde';

  @override
  String get continueAsGuest => 'Vazhdo si mysafir';

  @override
  String get signInGoogle => 'Hyr me Google';

  @override
  String get signInApple => 'Hyr me Apple';

  @override
  String get signInEmail => 'Hyr me Email';

  @override
  String get upgradeWithApple => 'Vazhdo me Apple';

  @override
  String get mustAccept =>
      'Duhet të pranosh Kushtet e Shërbimit dhe të njohësh Politikën e Privatësisë.';

  @override
  String get termsLabel => 'Pranoj Kushtet e Shërbimit';

  @override
  String get privacyLabel => 'Kam lexuar Politikën e Privatësisë';

  @override
  String get marketingOptIn => 'Pranoj të marr lajme dhe oferta';

  @override
  String get openTerms => 'Kushtet e Shërbimit';

  @override
  String get openPrivacy => 'Politika e Privatësisë';

  @override
  String get accountSection => 'Llogaria';

  @override
  String get guestMode => 'Mënyra mysafir';

  @override
  String get signedIn => 'I identifikuar';

  @override
  String get upgradeHint =>
      'Ruaji reflektimet e tua në pajisje të ndryshme duke krijuar një llogari.';

  @override
  String get upgradeWithGoogle => 'Vazhdo me Google';

  @override
  String get signOut => 'Dil';

  @override
  String get snackUpgraded => 'Llogaria u përmirësua me Google ✅';

  @override
  String get snackSignedIn => 'U identifikove me Google ✅';

  @override
  String get snackSignedOut => 'U ç\'identifikove';

  @override
  String get snackSignedInApple => 'U identifikove me Apple ✅';

  @override
  String get snackSignedInGoogle => 'U identifikove me Google ✅';

  @override
  String get snackUpgradedApple => 'Llogaria u përmirësua me Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Llogaria u përmirësua me Google ✅';

  @override
  String get historyTitle => 'Reflektime të mëparshme';

  @override
  String get historyOpenCta => 'Reflektime të mëparshme';

  @override
  String get historyEmpty => 'Nuk ka ende reflektime të ruajtura.';

  @override
  String get historyDeleteTitle => 'Të fshihet reflektimi?';

  @override
  String get historyDeleteBody =>
      'Kjo do ta heqë përgjithmonë artikullin e përzgjedhur.';

  @override
  String get deleteCta => 'Fshi';

  @override
  String get historyButton => 'Reflektime të Mëparshme';

  @override
  String get historyEmptyTitle => 'Nuk ka ende reflektime';

  @override
  String get historyEmptyBody =>
      'Gjenero diçka më parë — artikujt e ruajtur do të shfaqen këtu.';

  @override
  String get historyDelete => 'Fshi';

  @override
  String get footerTitle => 'Me Wilaya, Iman dhe Sabr';

  @override
  String get footerSubtitle => 'Një lutje në të njëjtën kohë';

  @override
  String get genericErrorSnack =>
      'Diçka shkoi keq — të lutem provo përsëri pas pak.';

  @override
  String get upgradeAccountCta =>
      'Ruaji reflektimet e tua në pajisje të ndryshme – krijo një llogari';

  @override
  String get deleteAccount => 'Fshi llogarinë';

  @override
  String get exportData => 'Eksporto të dhënat e mia';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Qetësohu pak 🐯\nAyara ka nevojë për një çast para tjetrës…';

  @override
  String get rateDailyLimit =>
      'Për momentin nuk ke më reflektime.\nMerr më shumë reflektime ose kalo në Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'I ke përdorur të gjitha reflektimet e tua.\nShto më shumë ose kalo në Wilaya për të vazhduar.';

  @override
  String get rateGraceCreditsExhausted =>
      'Për momentin nuk ke më reflektime.\nMerr më shumë reflektime ose kalo në Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya zhbllokon veçori premium, kategori të ardhshme dhe një distinktiv të veçantë.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Reflektimet e tua janë bosh tani. Plani: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Nuk u kontrolluan dot reflektimet e tua: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Diçka shkoi keq gjatë kontrollit të reflektimeve të tua.';

  @override
  String get aiFallbackGeneric =>
      'Diçka shkoi keq — të lutem provo përsëri pas pak.';

  @override
  String get limitSectionTitle => 'Reflektime';

  @override
  String get limitTodayLabel => 'Përdorimi';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Reflektime të mbetura: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plani: $plan';
  }

  @override
  String get limitLoadingLabel => 'Duke u ngarkuar…';

  @override
  String get limitLoadingLabelDescription =>
      'Shfaqet në kartën e reflektimeve ndërsa po merren statistikat e përdorimit.';

  @override
  String get aiLimitTitle => 'Reflektime';

  @override
  String get aiLimitSubtitle =>
      'Çdo përgjigje përdor 1 reflektim. Standard përfshin reflektime fillestare. Wilaya zhbllokon kategori premium dhe mundëson rimbushje.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total reflektime të përdorura';
  }

  @override
  String get creditsSectionTitle => 'Reflektime';

  @override
  String get creditsUsageLabel => 'Përdorimi';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Reflektime të mbetura: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plani: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Duke u ngarkuar…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shfaqet ndërsa po merren statistikat e reflektimeve.';

  @override
  String get creditsTitle => 'Reflektime';

  @override
  String get creditsSubtitle =>
      'Çdo përgjigje përdor 1 reflektim. Standard përfshin reflektime fillestare. Wilaya zhbllokon kategori premium dhe mundëson rimbushje.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total reflektime të përdorura';
  }

  @override
  String get settingsDeleteTitle => 'Fshi llogarinë';

  @override
  String get settingsDeleteDescription =>
      'Fshi përgjithmonë llogarinë tënde dhe të gjitha të dhënat e lidhura me të.';

  @override
  String get settingsDeleteButtonLabel => 'Fshi llogarinë time';

  @override
  String get settingsDeleteDialogTitle => 'Të fshihet llogaria?';

  @override
  String get settingsDeleteDialogBody =>
      'Ky veprim është i përhershëm dhe nuk mund të zhbëhet.\n\nTë gjitha bisedat, historia dhe informacionet e llogarisë do të fshihen.';

  @override
  String get settingsDeleteDialogCancel => 'Anulo';

  @override
  String get settingsDeleteDialogConfirm => 'Fshi';

  @override
  String get settingsFreeLimitUsedTitle => 'Reflektimet fillestare u përdorën';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Reflektimet fillestare për këtë pajisje janë përdorur. Kalo në Wilaya ose bli më shumë reflektime për të vazhduar.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Reflektimet fillestare u përdorën';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Reflektimet fillestare për këtë pajisje janë përdorur. Kalo në Wilaya ose bli më shumë reflektime për të vazhduar.';

  @override
  String get deviceBoundError =>
      'Kjo pajisje është tashmë e lidhur me një llogari tjetër. Të lutem hyr me llogarinë origjinale.';

  @override
  String get premiumTitle => 'Mënyra Wilaya';

  @override
  String get premiumSubtitleBasic => 'Zhblloko përvojën e plotë të Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Je në Wilaya. Të duhen më shumë reflektime?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Plani aktual: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Reflektime: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Blerjet nuk janë të disponueshme tani.';

  @override
  String get premiumSignInToPurchase =>
      'Identifikohu për të blerë reflektime ose për të zhbllokuar Wilaya.';

  @override
  String get premiumRestorePurchases => 'Rikthe blerjet';

  @override
  String get premiumProcessing => 'Duke u përpunuar…';

  @override
  String get premiumRestoreHintTitle =>
      'E ke blerë tashmë Wilaya ose reflektime në këtë pajisje ose në një tjetër?';

  @override
  String get premiumRestoreHintBody => 'Rikthe blerjet nëse nuk po shfaqen.';

  @override
  String get premiumBuyCredits200 => 'Bli 200 reflektime';

  @override
  String get premiumBuyCredits400 => 'Bli 400 reflektime';

  @override
  String get premiumBecomePremiumOneTime => 'Kalo në mënyrën Wilaya';

  @override
  String get premiumTopupHint =>
      'Me Wilaya, mund të shtosh reflektime shtesë sa herë të duhen.';

  @override
  String get premiumUpgradeCta => 'Përmirëso';

  @override
  String get premiumRequiredForCategory =>
      'Kjo kategori është e disponueshme vetëm për përdoruesit e Wilaya. Përmirëso te Cilësimet për të zhbllokuar gjithë përmbajtjen premium.';

  @override
  String get premiumBenefitsBasic =>
      'Zhblloko Wilaya për të marrë reflektime shtesë, qasje në kategori premium dhe për të vazhduar sa herë që ke nevojë për udhëzim.';

  @override
  String get premiumBenefitsPremium =>
      'Je në mënyrën Wilaya. Nëse po të mbarojnë, shto disa reflektime të tjera dhe vazhdo pa ndërprerje.';

  @override
  String get premiumButtonBecomePremium => 'Zhblloko Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Shto 1000 reflektime';

  @override
  String get premiumBadge => 'Wilaya aktive';

  @override
  String get premiumLoadingStore => 'Duke ngarkuar dyqanin…';

  @override
  String get premiumProductNotAvailable =>
      'Ky produkt nuk është ende i disponueshëm në dyqan. Të lutem provo përsëri më vonë.';

  @override
  String get premiumPurchaseError =>
      'Diçka shkoi keq me blerjen. Të lutem provo përsëri.';

  @override
  String get premiumBuyCredits100 => 'Shto 100 reflektime';

  @override
  String get premiumFeatureLocked =>
      'Zhblloko Wilaya për të hyrë në këtë veçori.';

  @override
  String get lockedCategoriesHint =>
      'Disa kategori janë të rezervuara për anëtarët e Wilaya. Zhbllokoji për të eksploruar çdo reflektim në rrugëtimin tënd.';

  @override
  String get freePlanBlockedTitle =>
      'I ke përdorur reflektimet e tua fillestare';

  @override
  String get freePlanBlockedBody =>
      'Je në planin Standard me reflektime fillestare dhe e ke arritur kufirin. Për të vazhduar — dhe për të zhbllokuar kategoritë premium — kalo në Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Shih opsionet e Wilaya më poshtë';

  @override
  String get graceBlockedTitle => 'I ke përdorur reflektimet e tua fillestare';

  @override
  String get graceBlockedBody =>
      'Je në planin Standard me reflektime fillestare dhe e ke arritur kufirin. Për të vazhduar — dhe për të zhbllokuar kategoritë premium — kalo në Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Shih opsionet e Wilaya më poshtë';

  @override
  String get rateGuestMustSignIn =>
      'Identifikohu për të përdorur Ayara dhe reflektimet e tua.';

  @override
  String get guestNoCreditsTitle => 'Mënyra mysafir';

  @override
  String get guestNoCreditsBody =>
      'Si mysafir mund ta shfletosh aplikacionin, por nuk mund të përdorësh reflektime. Hyr më vonë te Cilësimet për të përdorur reflektime dhe për të zhbllokuar blerjet.';

  @override
  String get guestDialogContinue => 'Vazhdo';

  @override
  String get guestDialogLoginInstead => 'Identifikohu në vend të kësaj';

  @override
  String get optionalLabel => 'opsionale';

  @override
  String get accountDeleteSuccessTitle => 'Llogaria u fshi';

  @override
  String get accountDeleteSuccessBody =>
      'Llogaria jote dhe të dhënat e lidhura me të u fshinë me sukses.';

  @override
  String get accountDeleteSuccessClose => 'Mbyll';

  @override
  String get accountDeleteErrorTitle => 'Nuk u fshi dot llogaria';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Ri-autentikimi u anulua. Të lutem hyr përsëri dhe provo sërish fshirjen.';

  @override
  String get accountDeleteReauthRequired =>
      'Fshirja e llogarisë kërkon një hyrje të fundit. Të lutem dil, hyr përsëri dhe provo sërish.';

  @override
  String get settingsDeletePermanentWarning =>
      'Ky veprim është i përhershëm dhe nuk mund të zhbëhet. Të gjitha të dhënat e lidhura me llogarinë tënde do të fshihen.';

  @override
  String get dailyGraceTitle => 'Udhëzim i përditshëm';

  @override
  String get dailyGraceScriptureLabel => 'AJETI I DITËS';

  @override
  String get dailyGraceSaintLabel => 'DIJETARI I JAVËS';

  @override
  String get dailyGraceReflectionLabel => 'REFLEKTIMI I MBRËMJES';

  @override
  String get dailyGraceCopiedToast => 'Ajeti u kopjua në kujtesën e përkohshme';

  @override
  String get locationConsentLabel =>
      'Lejo Ayara të përdorë vendndodhjen time për drejtimin e Kiblas dhe kohët e namazit';

  @override
  String get locationConsentHint =>
      'Përdoret vetëm për këto veçori. Vendndodhja jote nuk ndahet dhe nuk ruhet kurrë.';

  @override
  String get askPageTitle => 'Pyet Ayaran';

  @override
  String get askPageDescription =>
      'Pyet për çdo gjë rreth besimit, namazit, jetës ose praktikës islame dhe merr udhëzim të mbështetur në Kuran dhe në mësimet e Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Shkruaj pyetjen tënde këtu…';

  @override
  String get askPageSubmitCta => 'Pyet';

  @override
  String get askPageInputEmptyError =>
      'Të lutem shkruaj fillimisht një pyetje.';

  @override
  String get askResultYourQuestion => 'Pyetja jote';

  @override
  String get guidancePageTitle => 'Kibla';

  @override
  String get qiblaFacingMecca => 'Drejt Mekës';

  @override
  String get qiblaCompassInstruction =>
      'Rrotullo telefonin derisa gjilpëra e artë të tregojë lart.\nAi drejtim tregon Kiblan (Mekën).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Sinjali GPS është i dobët. Dil jashtë dhe prek Provo përsëri.';

  @override
  String get qiblaRetry => 'Provo përsëri';

  @override
  String get qiblaTitle => 'Drejtimi i Kiblas';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km deri në Mekë';
  }

  @override
  String get qiblaLocationNeededTitle => 'Kërkohet vendndodhja';

  @override
  String get qiblaLocationNeededBody =>
      'Lejo qasjen në vendndodhje që Ayara të llogarisë drejtimin e Qabes në Mekë nga vendi ku ndodhesh.';

  @override
  String get qiblaOpenSettings => 'Hap Cilësimet';

  @override
  String get qiblaCompassLoading => 'Po gjejmë pozicionin tënd…';

  @override
  String get qiblaTowardMecca => 'Nga Mekës';

  @override
  String get prayerTimesTitle => 'Kohët e namazit';

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
  String get prayerTimesLocationNeededTitle => 'Kërkohet vendndodhja';

  @override
  String get prayerTimesLocationNeededBody =>
      'Lejo qasjen në vendndodhje që Ayara të llogarisë kohët e sakta të namazit për qytetin tënd.';

  @override
  String get prayerTimesNextLabel => 'Tjetra';

  @override
  String get prayerTimesDoneLabel => 'Përfunduar';

  @override
  String get monthlyPrayerTimesTitle => 'Kohët mujore të namazit';

  @override
  String get monthlyPrayerTimesViewButton => 'Shiko muajin e plotë';

  @override
  String get monthlyPrayerTimesNextMonth => 'Muaji tjetër';

  @override
  String get monthlyPrayerTimesDayHeader => 'Dita';

  @override
  String get sharePrayerTimes => 'Ndaj kohët e namazit';

  @override
  String get notificationsSectionTitle => 'Njoftime';

  @override
  String get notificationsSectionSubtitle =>
      'Përkujtesa për namaz, ngjarje kalendari dhe më shumë';

  @override
  String get dailyReflectionReminderTitle => 'Reflektim i përditshëm';

  @override
  String get dailyReflectionReminderDescription =>
      'Një përkujtues i butë i përditshëm për të hapur Ayara dhe për t’u lidhur me besimin tënd.';

  @override
  String get dailyReflectionReminderEnable => 'Aktivizo përkujtuesin ditor';

  @override
  String get dailyReflectionReminderTimeLabel => 'Koha e përkujtuesit';

  @override
  String get prayerNotificationsTitle => 'Përkujtesa për namaz';

  @override
  String get prayerNotificationsDescription =>
      'Merr një përkujtues të butë para çdo kohe namazi për të të ndihmuar të qëndrosh i lidhur gjatë gjithë ditës.';

  @override
  String get prayerNotificationsEnable => 'Aktivizo përkujtuesit e namazit';

  @override
  String get prayerNotificationsOpenSettings => 'Hap cilësimet e njoftimeve';

  @override
  String get prayerNotificationsDenied => 'Njoftimet janë çaktivizuar';

  @override
  String get prayerNotificationsDeniedHint =>
      'Shko te Cilësimet dhe lejo njoftimet për Ayara që të marrësh përkujtesa për kohët e namazit.';

  @override
  String get notificationsConsentLabel => 'Lejo njoftime për kohët e namazit';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Namazi i agimit';

  @override
  String get prayerNotifBodyFajr =>
      'Fajri është namazi i mëngjeseve të Ahl al-Bayt. Imam Aliu (AS) tha: Ruaje namazin e agimit ashtu siç ruan amanetin tënd më të çmuar. Çohu, pastrohu dhe qëndro para Allahut.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Namazi i mesditës';

  @override
  String get prayerNotifBodyDhuhr =>
      'Imamët e Ahl al-Bayt e çmonin çdo çast të përmendjes. Ndalo pak ditën tënde, bashko Dhuhr me Asr nëse duhet, dhe ktheje zemrën tënde te Allahu.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Namazi i pasdites';

  @override
  String get prayerNotifBodyAsr =>
      'Ruaje namazin, sepse ai është marrëveshja mes teje dhe Allahut. Koha e Asrit ka ardhur — mos e lër të kalojë pa përmendje.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Namazi i perëndimit';

  @override
  String get prayerNotifBodyMaghrib =>
      'Dielli ka perënduar — një çast që Ahl al-Bayt e mbanin të shenjtë për lutje. Fal Maghribin dhe ngriji duart drejt Allahut në dua para se të fillojë nata.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Namazi i natës';

  @override
  String get prayerNotifBodyIsha =>
      'Përfundoje ditën në shoqërinë e Allahut. Imamët e inkurajonin Salat al-Layl pas Ishas — por më parë përfundo Ishan dhe mbylle ditën me përmendjen e Tij.';

  @override
  String get outOfReflectionsBannerText =>
      'I ke përdorur të gjitha reflektimet e tua';

  @override
  String get outOfReflectionsBannerCta => 'Merr më shumë';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Prek rrethin për të numëruar';

  @override
  String get dhikrResetButton => 'Rivendos';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Ke përfunduar 100 përmendje të Allahut. Le të jenë dritë për zemrën tënde.';

  @override
  String get disclaimerTitle => 'Rreth udhëzimit të kësaj aplikacioni';

  @override
  String get disclaimerBody =>
      'Ayara ofron reflektime islame, përkujtesa dhe përmbajtje shpirtërore për të mbështetur udhëtimin tënd personal të besimit, të rrënjosur në Kuran dhe në mësimet e Ahl al-Bayt. Kjo përmbajtje ofrohet vetëm për qëllime të përgjithshme informative dhe frymëzuese.\n\nAyara nuk zëvendëson dijen e kualifikuar.\nUdhëzimi në këtë aplikacion nuk është zëvendësim për një dijetar islam të ditur, marja\' apo mësues të trajnuar teologjikisht. Në islamin shiit, udhëzimi fetar është i rrënjosur në shkollën ja\'farite të jurisprudencës (fiqh) dhe në traditën e ndjekjes së një Marja\' të gjallë (burim imitimi) — një jurist i kualifikuar, vendimet e të cilit udhëheqin besimtarët në praktikën fetare. Nëse ke pyetje rreth vendimeve fetare, çështjeve halal dhe haram, ose detyrimeve të tua personale fetare, kërko këshillë nga një Marja\' i kualifikuar ose një dijetar në komunitetin tënd.\n\nKy aplikacion nuk jep vendime fetare.\nAyara nuk bën përcaktime autoritative për çështje të fiqhut ose detyrimeve personale fetare. Asgjë këtu nuk duhet trajtuar si fetva ose si udhëzim fetar detyrues.\n\nQendërsia e Ahl al-Bayt.\nNë islamin shiit, Profeti Muhamed ﷺ dhe familja e tij e pastruar — Ahl al-Bayt — janë udhëzuesit autoritativë të komunitetit islam pas Kuranit. Dymbëdhjetë Imamët e Ahl al-Bayt janë interpretuesit e caktuar hyjnisht të mësimit islam. Përmbajtja në këtë aplikacion pasqyron atë traditë dhe përpiqet ta nderojë me besnikëri.\n\nRëndësia e komunitetit.\nKy aplikacion synon të inkurajojë lidhjen tënde me fenë, duke respektuar thellësisht rolin jetik të xhamisë tënde lokale, qendrës islame dhe komunitetit tënd fetar. Të inkurajojmë të qëndrosh i lidhur dhe të mësosh nga mësues të kualifikuar pranë teje.';

  @override
  String get disclaimerClose => 'E kuptoj';

  @override
  String get disclaimerInfoTooltip => 'Rreth udhëzimit të kësaj aplikacioni';

  @override
  String get disclaimerSettingsSubtitle =>
      'Vetëm për qëllime të përgjithshme informative. Prek për të lexuar sqarimin e plotë.';

  @override
  String get disclaimerSectionHeader => 'Sqarim mbi udhëzimin';

  @override
  String get navHome => 'Kreu';

  @override
  String get navReflect => 'Reflekto';

  @override
  String get navDuas => 'Dua';

  @override
  String get navCalendar => 'Kalendari';

  @override
  String get dashboardToday => 'SOT';

  @override
  String get dashboardComingUp => 'Së shpejti';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ditë',
      one: 'ditë',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Qasje e shpejtë';

  @override
  String get quickActionQibla => 'Kibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Udhëzim';

  @override
  String get quickActionPrayerTimes => 'Kohët e namazit';

  @override
  String get askAyaraTitle => 'Pyet Ayaran';

  @override
  String get askAyaraSubtitle =>
      'Bëj çdo pyetje islame dhe merr një përgjigje të menduar mirë dhe udhëzuese.';

  @override
  String get askAyaraHint => 'p.sh. Cila është domethënia e Ramazanit?';

  @override
  String get askAyaraSubmit => 'Pyet';

  @override
  String get wisdomOfTheDayTitle => 'Urtësia e ditës';

  @override
  String get calendarScreenTitle => 'Kalendari islam';

  @override
  String get calendarUpcomingOccasions => 'Ngjarje të ardhshme';

  @override
  String get calendarOccasionRemindersTitle => 'Përkujtesa për raste';

  @override
  String get calendarOccasionRemindersHint =>
      'Njoftim mbrëmjen përpara çdo rasti';

  @override
  String get calendarNotifPermissionDenied =>
      'Leja për njoftime u refuzua. Aktivizoje te cilësimet e pajisjes tënde.';

  @override
  String get calendarNoEvents => 'Nuk u gjetën ngjarje të ardhshme.';

  @override
  String get calendarAddToPhone => 'Shto në Kalendari të Telefonit';

  @override
  String get calendarAddedToPhone => 'Shtuar në Kalendari';

  @override
  String get calendarCountdownToday => 'SOT';

  @override
  String get calendarCountdownTomorrow => 'NESËR';

  @override
  String calendarCountdownDays(int days) {
    return 'pas $days ditësh';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Shk';

  @override
  String get calendarMonthMar => 'Mar';

  @override
  String get calendarMonthApr => 'Pri';

  @override
  String get calendarMonthMay => 'Maj';

  @override
  String get calendarMonthJun => 'Qer';

  @override
  String get calendarMonthJul => 'Kor';

  @override
  String get calendarMonthAug => 'Gus';

  @override
  String get calendarMonthSep => 'Sht';

  @override
  String get calendarMonthOct => 'Tet';

  @override
  String get calendarMonthNov => 'Nën';

  @override
  String get calendarMonthDec => 'Dhj';

  @override
  String get calendarSeasonMuharramEarly =>
      'Ditët e Muharramit — kujto Karbalanë';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate => 'Muharram — ditë zie dhe reflektimi';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — dyzet ditët e Husaynit';

  @override
  String get calendarSeasonRoadToArbaeen => 'Rruga drejt Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — agimi i shpalljes';

  @override
  String get calendarSeasonMidShaban =>
      'Mes i Sha\'banit — ditëlindja e Imamit al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — muaji i Kuranit';

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
  String get duasSearchHint => 'Kërko dua, ziyarat…';

  @override
  String get duasFilterAll => 'Të gjitha';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dua & ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Nuk u gjetën dua.';

  @override
  String get duaCategoryDaily => 'Ditore';

  @override
  String get duaCategoryWeekly => 'Javore';

  @override
  String get duaCategoryOccasions => 'Raste';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Lindje';

  @override
  String get eventTypeMartyrdom => 'Martirizim';

  @override
  String get eventTypeOccasion => 'Rast';

  @override
  String get duaCopyTooltip => 'Kopjo përkthimin';

  @override
  String get duaToggleTransliteration => 'Transliterim';

  @override
  String get duaToggleTranslation => 'Përkthim';

  @override
  String get duaAskAiLabel => 'Kërkoji Ayarës të shpjegojë këtë dua';

  @override
  String get duaAskAiLockedLabel => 'Pyet Ayaran (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Shpjegimet e Ayarës janë të disponueshme për anëtarët e Wilaya. Përmirëso te Cilësimet.';

  @override
  String duaAiComingSoon(String name) {
    return 'Pyet Ayaran për \"$name\" — së shpejti!';
  }

  @override
  String get duaCopiedToast => 'Dua u kopjua në kujtesën e përkohshme.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allahu është Më i Madhi';

  @override
  String get tasbihAlhamdulillahMeaning =>
      'I gjithë falënderimi i takon Allahut';

  @override
  String get tasbihSubhanallahMeaning => 'Lavdi Allahut';

  @override
  String get tasbihResetTooltip => 'Rivendos';

  @override
  String get tasbihCompleteTitle => 'Tasbih i përfunduar';

  @override
  String get tasbihCompleteMessage => 'Allahu e pranoftë dhikrin tënd.';

  @override
  String get tasbihTapHint => 'Prek kudo për të numëruar';

  @override
  String get tasbihatScreenTitle => 'Udhëzues i namazit';

  @override
  String get tasbihatScreenSubtitle => 'LARTËSIMET E NAMAZIT';

  @override
  String get tasbihatScreenDescription =>
      'Një udhëzues i plotë për lartësimet që recitohen gjatë dhe pas namazeve ditore — sipas traditës së Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recitohet në rekatin e 3-të dhe të 4-t';

  @override
  String get tasbihatArba3Info =>
      'Në jurisprudencën shiite, Tasbiḥāt al-Arbaʿa zëvendëson Surah al-Fatiha në rekatin e 3-të dhe të 4-t të Dhuhr, Asr, Maghrib dhe Isha. Është e detyrueshme (wājib) të recitohet një herë dhe e rekomanduar (mustaḥabb) të recitohet tri herë.';

  @override
  String get tasbihatArba3Translation =>
      'Lavdi Allahut · I gjithë falënderimi i takon Allahut\nNuk ka zot tjetër përveç Allahut · Allahu është Më i Madhi';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitimi përfundoi';

  @override
  String get tasbihatArba3CompleteMessage => 'Namazi yt u pranoftë — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Prek pas çdo recitimi';

  @override
  String get tasbihatZahraSubtitle => 'Pas çdo namazi · 100 kokrra';

  @override
  String get tasbihatZahraOriginLabel => 'Origjina';

  @override
  String get tasbihatZahraHadith =>
      'Zonja Fatima al-Zahra (sa) i kërkoi Profetit ﷺ një shërbëtor. Ai tha: \"A të mos të udhëzoj drejt diçkaje më të mirë? Thuaj Subḥānallāh 33 herë, Alḥamdulillāh 33 herë dhe Allāhu Akbar 34 herë pas çdo namazi. Kjo është më e mirë për ty sesa një shërbëtor.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, vëll. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Hap numëruesin e Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUA TË REKOMANDUARA';

  @override
  String get tasbihatDuasSubtitle => 'Pasi të përfundosh namazin tënd';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Pas çdo namazi të detyrueshëm';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Kush reciton Āyat al-Kursī pas çdo namazi të detyrueshëm, asgjë nuk qëndron mes tij dhe xhenetit përveç vdekjes. Imam al-Bāqir (a) tha se ai është ndër ajetet më të mëdha në Kuran.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Pas çdo namazi · vulos të gjitha dua-të';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Dërgimi i bekimeve mbi Profetin ﷺ dhe familjen e tij të pastër (Āl Muḥammad) rekomandohet për të vulosur çdo dua. Imam al-Ṣādiq (a) tha: \"Çdo dua mbetet pezull derisa të dërgosh ṣalawāt mbi Muhamedin dhe familjen e tij.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen => 'Pas çdo namazi · për Imamin e kohës sonë';

  @override
  String get tasbihatDuaFarajSource =>
      'Mësuar nga Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Një dua për shfaqjen e Imam al-Mahdit (af), Imamit të dymbëdhjetë, e mësuar nga babai i tij. Recytohet çdo ditë nga besimtarët shiitë pas çdo namazi si akt përkushtimi ndaj Imamit të gjallë.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ i Zonjës Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Pas Maghribit dhe Ishasë · veçanërisht e rekomanduar';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) tha se recitimi i Tasbīḥ al-Zahrā pas Ishasë para gjumit është më i mirë se 1000 rekate namaz vullnetar. Drita e tij ngjitet në qiell.';

  @override
  String get tasbihFatimaGiftPre => 'Një dhuratë nga Profeti';

  @override
  String get tasbihFatimaGiftPost => 'recitohet pas çdo namazi';

  @override
  String get prayerTrackerTitle => 'NDJEKËSI I NAMAZIT';

  @override
  String get prayerTrackerPrayed => 'U fal';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count ditë radhazi';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Të gjitha namazet e sotme janë përfunduar. Allahu i pranoftë.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Përfunduar sot';

  @override
  String get dhikrTrackerNotDoneToday => 'Nuk u bë sot';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count ditë radhazi';
  }

  @override
  String get dhikrReminderTitle => 'Përkujtues për Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Një përkujtues i butë ditor për të recituar Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Aktivizo përkujtuesin e Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Koha e përkujtuesit';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadithi i ditës';

  @override
  String get hadithLabelArabic => 'ARABISHT';

  @override
  String get hadithLabelTranslation => 'PËRKTHIMI';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Ndaje këtë hadith';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nPërmes Ayara';
  }

  @override
  String get hadithNavPrevious => 'I mëparshmi';

  @override
  String get hadithNavNext => 'Tjetri';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '14 Ma\'sumeen';

  @override
  String get imamsScreenSubtitle =>
      'Profeti, Zonja Fatima dhe Dymbëdhjetë Imamët — udhëheqësit e pagabueshëm të islamit';

  @override
  String get imamLabelBorn => 'Lindur';

  @override
  String get imamLabelMartyrdom => 'Martirizimi';

  @override
  String get imamLabelStatus => 'Statusi';

  @override
  String get imamSectionBiography => 'BIOGRAFIA';

  @override
  String get imamSectionFamousSaying => 'THËNIE E NJOHUR';

  @override
  String get imamRoleProphet => 'Profeti i Fundit';

  @override
  String get imamRoleInfallible => 'I pagabueshmi';

  @override
  String get imamOrdinal1 => 'Imami i 1-rë';

  @override
  String get imamOrdinal2 => 'Imami i 2-të';

  @override
  String get imamOrdinal3 => 'Imami i 3-të';

  @override
  String get imamOrdinal4 => 'Imami i 4-t';

  @override
  String get imamOrdinal5 => 'Imami i 5-të';

  @override
  String get imamOrdinal6 => 'Imami i 6-të';

  @override
  String get imamOrdinal7 => 'Imami i 7-të';

  @override
  String get imamOrdinal8 => 'Imami i 8-të';

  @override
  String get imamOrdinal9 => 'Imami i 9-të';

  @override
  String get imamOrdinal10 => 'Imami i 10-të';

  @override
  String get imamOrdinal11 => 'Imami i 11-të';

  @override
  String get imamOrdinal12 => 'Imami i 12-të';

  @override
  String get duaAudioScreenTitle => 'Dëgjo dua';

  @override
  String get duaAudioScreenSubtitle =>
      'Zgjidh një dua për ta dëgjuar. Prek pllakëzën për ta luajtur ose ndalur.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio për këtë dua do të jetë i disponueshëm në një përditësim të ardhshëm.';

  @override
  String get duaAudioClose => 'Mbyll';

  @override
  String get duaAudioError =>
      'Nuk u ngarkua dot audio. Kontrollo lidhjen tënde.';

  @override
  String get duaAudioMetaTransmittedBy => 'Transmetuar nga';

  @override
  String get duaAudioMetaOccasion => 'Rast';

  @override
  String get duaAudioMetaDuration => 'Kohëzgjatja';

  @override
  String get quickActionDailyHadith => 'Hadithi i ditës';

  @override
  String get quickAction14Masumeen => '14 Ma\'sumeen';

  @override
  String get quickActionListenDuas => 'Dëgjo';

  @override
  String get quickActionTasbihat => 'Udhëzues i namazit';

  @override
  String get pilgrimageSectionTitle => 'Udhëtimi i Shenjtë';

  @override
  String get pilgrimageSectionSubtitle =>
      'Udhëzues të plotë për Haxhin dhe Umren — pelegrinazhi drejt Shtëpisë së Shenjtë të Allahut në Mekë';

  @override
  String get hajjCardTitle => 'Haxh';

  @override
  String get hajjCardSubtitle => 'Shtylla e pestë e Islamit';

  @override
  String get hajjCardDescription =>
      'Pelegrinazhi i madh vjetor — i detyrueshëm një herë në jetë për çdo mysliman që ka mundësi';

  @override
  String get hajjScreenTitle => 'Udhëzues për Haxhin';

  @override
  String get hajjScreenSubtitle =>
      'Udhëzues hap pas hapi për pelegrinazhin e madh';

  @override
  String get umrahCardTitle => 'Umre';

  @override
  String get umrahCardSubtitle => 'Pelegrinazhi i vogël';

  @override
  String get umrahCardDescription =>
      'Një udhëtim shpirtëror thellësisht shpërblyes që mund të kryhet në çdo kohë të vitit';

  @override
  String get umrahScreenTitle => 'Udhëzues për Umren';

  @override
  String get umrahScreenSubtitle =>
      'Udhëzues hap pas hapi për pelegrinazhin e vogël';

  @override
  String get pilgrimageStepsTitle => 'Ritet & Hapat';

  @override
  String get pilgrimageImportantNotesTitle => 'Shënime të rëndësishme';

  @override
  String get pilgrimageDuaTitle => 'Dua për këtë hap';

  @override
  String get pilgrimageJafariNoteTitle => 'Shënim mbi Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ E plotë';

  @override
  String get pilgrimageMarkDone => 'Shëno si të përfunduar';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done nga $total hapa';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes min';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Pelegrinët shiitë';

  @override
  String get pilgrimageShiaNoteBody =>
      'Pelegrinët shiitë tradicionalisht udhëtojnë gjithashtu në Medinë për të vizituar varrin e Profetit Muhamed ﷺ në Masjid al-Nabawi dhe varret e Imamëve në Jannat al-Baqi. Këto vizita mbartin rëndësi të jashtëzakonshme shpirtërore dhe konsiderohen pjesë thelbësore e udhëtimit për shumicën e myslimanëve shiitë.';

  @override
  String get hajjIntro =>
      'Haxhi është shtylla e pestë e Islamit, i detyrueshëm një herë në jetë për çdo mysliman që është fizikisht dhe financiarisht i aftë. Kryhet në muajin Dhul Hijjah dhe ndjek gjurmët e Profetit Ibrahim (AS), djalit të tij Ismail (AS) dhe Zonjës Haxher. Për myslimanët shiitë, Haxhi përfshin gjithashtu bekimin e thellë të vizitës së vendeve të prehjes së Profetit ﷺ dhe Ahlul Bayt në Medinë.';

  @override
  String get umrahIntro =>
      'Umra është pelegrinazhi i vogël në Mekë dhe, ndryshe nga Haxhi, mund të kryhet në çdo kohë të vitit. Megjithëse nuk është e detyrueshme, ajo mbart shpërblim të madh shpirtëror dhe konsiderohet një akt adhurimi shumë i rekomanduar. Ajo ndan disa rite me Haxhin, por është më e shkurtër dhe përbëhet nga katër rite kryesore.';
}
