// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Válassz nyelvet';

  @override
  String get languageSelectSub => 'Ezt később a Beállításokban módosíthatod';

  @override
  String get actionContinue => 'Folytatás';

  @override
  String get languageSuggestedHeader => 'Javasolt';

  @override
  String get languageAllHeader => 'Összes nyelv';

  @override
  String get languageSuggestedBadge => 'Javasolt';

  @override
  String get languageSearchHint => 'Keresés…';

  @override
  String get planBasic => 'Alap';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Napi útmutatás';

  @override
  String get categorySlot02 => 'Iman és bizalom';

  @override
  String get categorySlot03 => 'Ima-elmélkedés';

  @override
  String get categorySlot04 => 'Türelem és remény';

  @override
  String get categorySlot05 => 'Bocsánatkérés';

  @override
  String get categorySlot06 => 'Irgalom és együttérzés';

  @override
  String get categorySlot07 => 'Hit és erő';

  @override
  String get categorySlot08 => 'Hálás szív';

  @override
  String get categorySlot09 => 'Az élet célja';

  @override
  String get categorySlot10 => 'Családi kötelékek';

  @override
  String get categorySlot11 => 'Belső béke';

  @override
  String get categorySlot12 => 'Prófétai bölcsesség';

  @override
  String get categorySlot13 => 'Jó jellem';

  @override
  String get categorySlot14 => 'Kísértés ellenállása';

  @override
  String get categorySlot15 => 'Esti Dhikr';

  @override
  String get categoryCustom => 'Személyes elmélkedés';

  @override
  String get dhikrMeaningSubhanallah => 'Dicsőség Allahnak';

  @override
  String get dhikrMeaningAlhamdulillah => 'Minden dicsőség Allahé';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah a legnagyobb';

  @override
  String get quranVerseHeartAtRest =>
      'Bizony, Allah emlékezetében nyugalmat lel a szív.';

  @override
  String get promptHint =>
      'Érintj meg egy kategóriát iszlám útmutatásért és elmélkedésért';

  @override
  String get currentLanguage => 'Jelenlegi nyelv';

  @override
  String get settingsLanguage => 'Nyelvbeállítások';

  @override
  String get settingsTitle => 'Beállítások';

  @override
  String get chooseLanguage => 'Válassz nyelvet';

  @override
  String get continueCta => 'Folytatás';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count szó',
      one: '$count szó',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Lehetőségek';

  @override
  String get newCta => 'Új';

  @override
  String get actionsTitle => 'Mit szeretnél tenni?';

  @override
  String get copy => 'Másolás';

  @override
  String get share => 'Megosztás';

  @override
  String get close => 'Bezárás';

  @override
  String get copiedToast => 'Vágólapra másolva';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Nem sikerült új választ generálni';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nSzeretnéd újra próbálni?';
  }

  @override
  String get cancelCta => 'Mégse';

  @override
  String get retryCta => 'Újra próbálom';

  @override
  String get authTitle => 'Hozd létre a fiókodat';

  @override
  String get continueAsGuest => 'Folytatás vendégként';

  @override
  String get signInGoogle => 'Bejelentkezés Google-lal';

  @override
  String get signInApple => 'Bejelentkezés Apple-lel';

  @override
  String get signInEmail => 'Bejelentkezés e-maillel';

  @override
  String get upgradeWithApple => 'Folytatás Apple-lel';

  @override
  String get mustAccept =>
      'El kell fogadnod a Feltételeket és tudomásul kell venned az Adatvédelmi irányelveket.';

  @override
  String get termsLabel => 'Elfogadom a Szolgáltatási feltételeket';

  @override
  String get privacyLabel => 'Elolvastam az Adatvédelmi irányelveket';

  @override
  String get marketingOptIn => 'Hozzájárulok hírek és ajánlatok fogadásához';

  @override
  String get openTerms => 'Szolgáltatási feltételek';

  @override
  String get openPrivacy => 'Adatvédelmi irányelvek';

  @override
  String get accountSection => 'Fiók';

  @override
  String get guestMode => 'Vendég mód';

  @override
  String get signedIn => 'Bejelentkezve';

  @override
  String get upgradeHint =>
      'Mentsd el elmélkedéseidet eszközök között egy fiók létrehozásával.';

  @override
  String get upgradeWithGoogle => 'Folytatás Google-lal';

  @override
  String get signOut => 'Kijelentkezés';

  @override
  String get snackUpgraded => 'Fiók frissítve Google-lal ✅';

  @override
  String get snackSignedIn => 'Bejelentkezve Google-lal ✅';

  @override
  String get snackSignedOut => 'Kijelentkezve';

  @override
  String get snackSignedInApple => 'Bejelentkezve Apple-lel ✅';

  @override
  String get snackSignedInGoogle => 'Bejelentkezve Google-lal ✅';

  @override
  String get snackUpgradedApple => 'Fiók frissítve Apple-lel ✅';

  @override
  String get snackUpgradedGoogle => 'Fiók frissítve Google-lal ✅';

  @override
  String get historyTitle => 'Korábbi elmélkedések';

  @override
  String get historyOpenCta => 'Korábbi elmélkedések';

  @override
  String get historyEmpty => 'Még nincsenek mentett elmélkedések.';

  @override
  String get historyDeleteTitle => 'Törlöd az elmélkedést?';

  @override
  String get historyDeleteBody =>
      'Ez véglegesen eltávolítja a kiválasztott elemet.';

  @override
  String get deleteCta => 'Törlés';

  @override
  String get historyButton => 'Korábbi elmélkedések';

  @override
  String get historyEmptyTitle => 'Még nincsenek elmélkedések';

  @override
  String get historyEmptyBody =>
      'Először generálj valamit — a mentett elemek itt fognak megjelenni.';

  @override
  String get historyDelete => 'Törlés';

  @override
  String get footerTitle => 'Wilayával, Imannal és Sabrral';

  @override
  String get footerSubtitle => 'Egy imával egyszerre';

  @override
  String get genericErrorSnack =>
      'Valami hiba történt — kérlek, próbáld újra egy pillanat múlva.';

  @override
  String get upgradeAccountCta =>
      'Mentsd el elmélkedéseidet eszközök között – hozz létre egy fiókot';

  @override
  String get deleteAccount => 'Fiók törlése';

  @override
  String get exportData => 'Adataim exportálása';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Lassan a testtel 🐯\nAz Ayarának szüksége van egy kis időre a következő előtt…';

  @override
  String get rateDailyLimit =>
      'Elfogytak az elmélkedéseid mára.\nSzerezz több elmélkedést, vagy frissíts Wilayára.';

  @override
  String get rateCreditsExhausted =>
      'Felhasználtad az összes elmélkedésedet.\nTölts fel, vagy frissíts Wilayára a folytatáshoz.';

  @override
  String get rateGraceCreditsExhausted =>
      'Elfogytak az elmélkedéseid mára.\nSzerezz több elmélkedést, vagy frissíts Wilayára.';

  @override
  String get premiumDescription =>
      'A Wilaya prémium funkciókat, jövőbeli kategóriákat és egy különleges jelvényt old fel.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Az elmélkedéseid jelenleg kifogytak. Csomag: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Nem sikerült ellenőrizni az elmélkedéseidet: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Valami hiba történt az elmélkedések ellenőrzése közben.';

  @override
  String get aiFallbackGeneric =>
      'Valami hiba történt — kérlek, próbáld újra egy pillanat múlva.';

  @override
  String get limitSectionTitle => 'Elmélkedések';

  @override
  String get limitTodayLabel => 'Használat';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Fennmaradó elmélkedések: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Csomag: $plan';
  }

  @override
  String get limitLoadingLabel => 'Betöltés…';

  @override
  String get limitLoadingLabelDescription =>
      'Az elmélkedések kártyán jelenik meg, miközben a használati adatok betöltődnek.';

  @override
  String get aiLimitTitle => 'Elmélkedések';

  @override
  String get aiLimitSubtitle =>
      'Minden válasz 1 elmélkedést használ. Az Alap csomag kezdő elmélkedéseket tartalmaz. A Wilaya prémium kategóriákat old fel és lehetővé teszi a feltöltést.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total elmélkedés felhasználva';
  }

  @override
  String get creditsSectionTitle => 'Elmélkedések';

  @override
  String get creditsUsageLabel => 'Használat';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Fennmaradó elmélkedések: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Csomag: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Betöltés…';

  @override
  String get creditsLoadingLabelDescription =>
      'Megjelenik, miközben az elmélkedési adatok betöltődnek.';

  @override
  String get creditsTitle => 'Elmélkedések';

  @override
  String get creditsSubtitle =>
      'Minden válasz 1 elmélkedést használ. Az Alap csomag kezdő elmélkedéseket tartalmaz. A Wilaya prémium kategóriákat old fel és lehetővé teszi a feltöltést.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total elmélkedés felhasználva';
  }

  @override
  String get settingsDeleteTitle => 'Fiók törlése';

  @override
  String get settingsDeleteDescription =>
      'Véglegesen törli a fiókodat és az összes kapcsolódó adatot.';

  @override
  String get settingsDeleteButtonLabel => 'Fiókom törlése';

  @override
  String get settingsDeleteDialogTitle => 'Törlöd a fiókot?';

  @override
  String get settingsDeleteDialogBody =>
      'Ez a művelet végleges és nem vonható vissza.\n\nAz összes csevegésed, előzményed és fiókadatod törlődik.';

  @override
  String get settingsDeleteDialogCancel => 'Mégse';

  @override
  String get settingsDeleteDialogConfirm => 'Törlés';

  @override
  String get settingsFreeLimitUsedTitle => 'Kezdő elmélkedések felhasználva';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Ezen az eszközön a kezdő elmélkedések felhasználásra kerültek. Frissíts Wilayára, vagy vásárolj több elmélkedést a folytatáshoz.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Kezdő elmélkedések felhasználva';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Ezen az eszközön a kezdő elmélkedések felhasználásra kerültek. Frissíts Wilayára, vagy vásárolj több elmélkedést a folytatáshoz.';

  @override
  String get deviceBoundError =>
      'Ez az eszköz már egy másik fiókhoz van kapcsolva. Kérlek, jelentkezz be az eredeti fiókkal.';

  @override
  String get premiumTitle => 'Wilaya mód';

  @override
  String get premiumSubtitleBasic => 'Fedezd fel a teljes Ayara élményt.';

  @override
  String get premiumSubtitlePremium =>
      'Wilaya csomagod van. Több elmélkedésre van szükséged?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Jelenlegi csomag: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Elmélkedések: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'A vásárlások jelenleg nem elérhetők.';

  @override
  String get premiumSignInToPurchase =>
      'Jelentkezz be elmélkedések vásárlásához vagy a Wilaya feloldásához.';

  @override
  String get premiumRestorePurchases => 'Vásárlások visszaállítása';

  @override
  String get premiumProcessing => 'Feldolgozás…';

  @override
  String get premiumRestoreHintTitle =>
      'Már vásároltál Wilayát vagy elmélkedéseket ezen vagy egy másik eszközön?';

  @override
  String get premiumRestoreHintBody =>
      'Állítsd vissza a vásárlásaidat, ha nem jelennek meg.';

  @override
  String get premiumBuyCredits200 => '200 elmélkedés vásárlása';

  @override
  String get premiumBuyCredits400 => '400 elmélkedés vásárlása';

  @override
  String get premiumBecomePremiumOneTime => 'Frissítés Wilaya módra';

  @override
  String get premiumTopupHint =>
      'A Wilayával szükség esetén bármikor feltöltheted a további elmélkedéseket.';

  @override
  String get premiumUpgradeCta => 'Frissítés';

  @override
  String get premiumRequiredForCategory =>
      'Ez a kategória csak Wilaya felhasználók számára érhető el. A prémium tartalom feloldásához frissíts a Beállításokban.';

  @override
  String get premiumBenefitsBasic =>
      'Nyisd fel a Wilayát extra elmélkedésekért, prémium kategóriákhoz való hozzáférésért, és folytathatod, amikor útmutatásra van szükséged.';

  @override
  String get premiumBenefitsPremium =>
      'Wilaya módban vagy. Ha kevés van, adj hozzá extra elmélkedéseket és folytasd megszakítás nélkül.';

  @override
  String get premiumButtonBecomePremium => 'Wilaya feloldása';

  @override
  String get premiumButtonTopup1000 => '1000 elmélkedés hozzáadása';

  @override
  String get premiumBadge => 'Wilaya aktív';

  @override
  String get premiumLoadingStore => 'Bolt betöltése…';

  @override
  String get premiumProductNotAvailable =>
      'Ez a termék még nem érhető el a boltban. Kérlek, próbáld újra később.';

  @override
  String get premiumPurchaseError =>
      'Valami hiba történt a vásárlás során. Kérlek, próbáld újra.';

  @override
  String get premiumBuyCredits100 => '100 elmélkedés hozzáadása';

  @override
  String get premiumFeatureLocked =>
      'Nyisd fel a Wilayát ennek a funkciónak az eléréséhez.';

  @override
  String get lockedCategoriesHint =>
      'Néhány kategória Wilaya tagok számára van fenntartva. Oldozd fel őket, hogy minden elmélkedést felfedezz az utadon.';

  @override
  String get freePlanBlockedTitle => 'Felhasználtad a kezdő elmélkedéseidet';

  @override
  String get freePlanBlockedBody =>
      'Alap csomagban vagy kezdő elmélkedésekkel, és elérted a korlátot. A folytatáshoz — és a prémium kategóriák feloldásához — frissíts Wilayára.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Lásd a Wilaya lehetőségeket alább';

  @override
  String get graceBlockedTitle => 'Felhasználtad a kezdő elmélkedéseidet';

  @override
  String get graceBlockedBody =>
      'Alap csomagban vagy kezdő elmélkedésekkel, és elérted a korlátot. A folytatáshoz — és a prémium kategóriák feloldásához — frissíts Wilayára.';

  @override
  String get graceBlockedCtaGoPremium => 'Lásd a Wilaya lehetőségeket alább';

  @override
  String get rateGuestMustSignIn =>
      'Jelentkezz be az Ayara és az elmélkedések használatához.';

  @override
  String get guestNoCreditsTitle => 'Vendég mód';

  @override
  String get guestNoCreditsBody =>
      'Vendégként böngészhetsz az alkalmazásban, de nem használhatsz elmélkedéseket. Jelentkezz be később a Beállításokban az elmélkedések használatához és a vásárlások feloldásához.';

  @override
  String get guestDialogContinue => 'Folytatás';

  @override
  String get guestDialogLoginInstead => 'Inkább bejelentkezés';

  @override
  String get optionalLabel => 'opcionális';

  @override
  String get accountDeleteSuccessTitle => 'Fiók törölve';

  @override
  String get accountDeleteSuccessBody =>
      'A fiókod és a kapcsolódó adatok sikeresen törölve lettek.';

  @override
  String get accountDeleteSuccessClose => 'Bezárás';

  @override
  String get accountDeleteErrorTitle => 'Nem sikerült törölni a fiókot';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Az újbóli hitelesítés megszakadt. Kérlek, jelentkezz be újra, és próbáld meg a törlést.';

  @override
  String get accountDeleteReauthRequired =>
      'A fiók törléséhez közeli bejelentkezés szükséges. Kérlek, jelentkezz ki, jelentkezz be újra, és próbáld meg a törlést.';

  @override
  String get settingsDeletePermanentWarning =>
      'Ez a művelet végleges és nem vonható vissza. A fiókodhoz tartozó összes adat törlődik.';

  @override
  String get dailyGraceTitle => 'Napi útmutatás';

  @override
  String get dailyGraceScriptureLabel => 'A NAP VERSE';

  @override
  String get dailyGraceSaintLabel => 'A HÉT TUDÓSA';

  @override
  String get dailyGraceReflectionLabel => 'ESTI ELMÉLKEDÉS';

  @override
  String get dailyGraceCopiedToast => 'Vers a vágólapra másolva';

  @override
  String get locationConsentLabel =>
      'Az Ayara használhassa a helyzetemet a Qibla irányhoz és az imaidőkhöz';

  @override
  String get locationConsentHint =>
      'Csak ezekhez a funkciókhoz használva. A helyzeted soha nem kerül megosztásra vagy tárolásra.';

  @override
  String get askPageTitle => 'Kérdezd Ayarát';

  @override
  String get askPageDescription =>
      'Kérdezz bármit a hitről, imáról, életről vagy iszlám gyakorlatról, és kapj útmutatást a Koránban és az Ahl al-Bayt tanításaiban gyökerezve.';

  @override
  String get askPageInputHint => 'Írd ide a kérdésedet…';

  @override
  String get askPageSubmitCta => 'Kérdezés';

  @override
  String get askPageInputEmptyError => 'Kérlek, először írj egy kérdést.';

  @override
  String get askResultYourQuestion => 'A te kérdésed';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Mekka felé nézve';

  @override
  String get qiblaCompassInstruction =>
      'Forgasd a telefonod, amíg az arany tű felfelé mutat.\nEz az irány mutat a Qibla (Mekka) felé.';

  @override
  String get qiblaGpsUnavailableBody =>
      'A GPS jel gyenge. Menj ki a szabadba, és érintsd meg az Újra gombot.';

  @override
  String get qiblaRetry => 'Újra';

  @override
  String get qiblaTitle => 'Qibla irány';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km Mekkától';
  }

  @override
  String get qiblaLocationNeededTitle => 'Helymeghatározás szükséges';

  @override
  String get qiblaLocationNeededBody =>
      'Engedélyezd a helymeghatározást, hogy az Ayara ki tudja számítani a Kába irányát Mekkában bárhonnan, ahol vagy.';

  @override
  String get qiblaOpenSettings => 'Beállítások megnyitása';

  @override
  String get qiblaCompassLoading => 'Pozíció meghatározása…';

  @override
  String get qiblaTowardMecca => 'Mekka felé';

  @override
  String get prayerTimesTitle => 'Imaidők';

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
  String get prayerTimesLocationNeededTitle => 'Helymeghatározás szükséges';

  @override
  String get prayerTimesLocationNeededBody =>
      'Engedélyezd a helymeghatározást, hogy az Ayara pontos imaidőket tudjon kiszámítani a városodhoz.';

  @override
  String get prayerTimesNextLabel => 'Következő';

  @override
  String get prayerTimesDoneLabel => 'Kész';

  @override
  String get monthlyPrayerTimesTitle => 'Havi imaidők';

  @override
  String get monthlyPrayerTimesViewButton => 'Teljes hónap megtekintése';

  @override
  String get monthlyPrayerTimesNextMonth => 'Következő hónap';

  @override
  String get monthlyPrayerTimesDayHeader => 'Nap';

  @override
  String get sharePrayerTimes => 'Imaidők megosztása';

  @override
  String get notificationsSectionTitle => 'Értesítések';

  @override
  String get notificationsSectionSubtitle =>
      'Ima emlékeztetők, naptári események és egyebek';

  @override
  String get dailyReflectionReminderTitle => 'Napi elmélkedés';

  @override
  String get dailyReflectionReminderDescription =>
      'Egy szelíd napi emlékeztető, hogy nyisd meg az Ayarát és kapcsolódj a hited felé.';

  @override
  String get dailyReflectionReminderEnable => 'Napi emlékeztető engedélyezése';

  @override
  String get dailyReflectionReminderTimeLabel => 'Emlékeztető ideje';

  @override
  String get prayerNotificationsTitle => 'Ima emlékeztetők';

  @override
  String get prayerNotificationsDescription =>
      'Kapj szelíd emlékeztetőt minden ima előtt, hogy egész nap kapcsolatban maradj.';

  @override
  String get prayerNotificationsEnable => 'Ima emlékeztetők engedélyezése';

  @override
  String get prayerNotificationsOpenSettings =>
      'Értesítési beállítások megnyitása';

  @override
  String get prayerNotificationsDenied => 'Az értesítések le vannak tiltva';

  @override
  String get prayerNotificationsDeniedHint =>
      'Menj a Beállításokba, és engedélyezd az értesítéseket az Ayarának az imaidő emlékeztetők fogadásához.';

  @override
  String get notificationsConsentLabel =>
      'Értesítések engedélyezése az imaidőkhöz';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Hajnali ima';

  @override
  String get prayerNotifBodyFajr =>
      'A Fajr az Ahl al-Bayt reggeleinek imája. Imam Ali (AS) mondta: Őrizd a hajnali imát, ahogy a legértékesebb bizalmad őrzöd. Kelj fel, tisztulj meg, és állj Allah elé.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Déli ima';

  @override
  String get prayerNotifBodyDhuhr =>
      'Az Ahl al-Bayt Imámjai minden emlékezés pillanatát becsülték. Szakítsd meg a napodat, szükség esetén kombináld a Dhuhrt az Asrral, és adj vissza szívedet Allahnak.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Délutáni ima';

  @override
  String get prayerNotifBodyAsr =>
      'Őrizd az imát, mert ez a szövetség közted és Allah között. Elérkezett az Asr ideje — ne hagyd elmúlni emlékezés nélkül.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Naplementei ima';

  @override
  String get prayerNotifBodyMaghrib =>
      'Leáldozott a nap — egy pillanat, amelyet az Ahl al-Bayt szentnek tartott a könyörgésre. Végezd el a Maghribot és nyisd ki kezedet Allahnak duában, mielőtt az éjszaka kezdődik.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Éjszakai ima';

  @override
  String get prayerNotifBodyIsha =>
      'Zárd a napodat Allah társaságában. Az Imámok bátorították a Salat al-Laylt az Isha után — de először fejezd be az Ishat, és zárd a napot az Ő emlékezetével.';

  @override
  String get outOfReflectionsBannerText =>
      'Felhasználtad az összes elmélkedésedet';

  @override
  String get outOfReflectionsBannerCta => 'Szerezz többet';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Érintsd meg a kört a számoláshoz';

  @override
  String get dhikrResetButton => 'Visszaállítás';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Elvégezted Allah 100 emlékezését. Legyen ez fény a szívednek.';

  @override
  String get disclaimerTitle => 'Az alkalmazás útmutatásáról';

  @override
  String get disclaimerBody =>
      'Az Ayara iszlám elmélkedéseket, emlékeztetőket és spirituális tartalmakat nyújt személyes hited útjának támogatásához, a Koránban és az Ahl al-Bayt tanításaiban gyökerezve. Ez a tartalom kizárólag általános tájékoztatási és inspirációs célokra készült.\n\nAz Ayara nem helyettesíti a képzett tudósokat.\nAz alkalmazásban található útmutatás nem helyettesíti a tanult iszlám tudóst, marja\'t vagy teológiailag képzett tanárt. A síita iszlámban a vallási útmutatás a dzsafari jogtudományi iskolán (fiqh) és egy élő Marja\' (utánzás forrása) követésének hagyományán alapul — egy képzett jogász, akinek döntései irányítják a hívőket a vallási gyakorlatban. Ha kérdéseid vannak vallási döntésekkel, halal és haram kérdésekkel, vagy személyes vallási kötelezettségekkel kapcsolatban, kérlek, kérj tanácsot egy képzett Marja\'tól vagy egy tudóstól a közösségedben.\n\nEz az alkalmazás nem ad ki vallási döntéseket.\nAz Ayara nem tesz tekintélyes megállapításokat a fiqh vagy a személyes vallási kötelezettségek kérdéseiben. Semmi sem kezelendő fatwaként vagy kötelező érvényű vallási utasításként.\n\nAz Ahl al-Bayt központi szerepe.\nA síita iszlámban Mohamed Próféta ﷺ és megtisztított háznépe — az Ahl al-Bayt — az iszlám közösség tekintélyes vezetői a Korán után. Az Ahl al-Bayt tizenkét Imámja az iszlám tanítás istenileg kijelölt értelmezői. Az alkalmazás tartalma ezt a hagyományt tükrözi és igyekszik azt hűen tisztelni.\n\nA közösség számít.\nEz az alkalmazás arra törekszik, hogy ösztönözze a hittel való kapcsolatodat, miközben mélyen tiszteli a helyi mecset, iszlám központ és vallási közösség létfontosságú szerepét. Bátorítunk, hogy maradj kapcsolatban és tanulj a közeledben lévő képzett tanároktól.';

  @override
  String get disclaimerClose => 'Értem';

  @override
  String get disclaimerInfoTooltip => 'Az alkalmazás útmutatásáról';

  @override
  String get disclaimerSettingsSubtitle =>
      'Kizárólag általános tájékoztatási célokra. Érintsd meg a teljes jogi nyilatkozat olvasásához.';

  @override
  String get disclaimerSectionHeader => 'Útmutatási nyilatkozat';

  @override
  String get navHome => 'Főoldal';

  @override
  String get navReflect => 'Elmélkedés';

  @override
  String get navDuas => 'Duák';

  @override
  String get navCalendar => 'Naptár';

  @override
  String get dashboardToday => 'MA';

  @override
  String get dashboardComingUp => 'Közelgő';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nap',
      one: 'nap',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Gyors hozzáférés';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Útmutatás';

  @override
  String get quickActionPrayerTimes => 'Imaidők';

  @override
  String get askAyaraTitle => 'Kérdezd Ayarát';

  @override
  String get askAyaraSubtitle =>
      'Tegyél fel bármilyen iszlám kérdést, és kapj átgondolt, irányított választ.';

  @override
  String get askAyaraHint => 'pl. Mi a Ramadán jelentősége?';

  @override
  String get askAyaraSubmit => 'Kérdezés';

  @override
  String get wisdomOfTheDayTitle => 'A nap bölcsessége';

  @override
  String get calendarScreenTitle => 'Iszlám naptár';

  @override
  String get calendarUpcomingOccasions => 'Közelgő alkalmak';

  @override
  String get calendarOccasionRemindersTitle => 'Alkalom emlékeztetők';

  @override
  String get calendarOccasionRemindersHint =>
      'Értesítés az egyes alkalmak előestéjén';

  @override
  String get calendarNotifPermissionDenied =>
      'Értesítési engedély megtagadva. Engedélyezd az eszköz beállításaiban.';

  @override
  String get calendarNoEvents => 'Nem találhatók közelgő események.';

  @override
  String get calendarAddToPhone => 'Hozzáadás a telefon naptárához';

  @override
  String get calendarAddedToPhone => 'Hozzáadva a naptárhoz';

  @override
  String get calendarCountdownToday => 'MA';

  @override
  String get calendarCountdownTomorrow => 'HOLNAP';

  @override
  String calendarCountdownDays(int days) {
    return '$days nap múlva';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Jan';

  @override
  String get calendarMonthFeb => 'Feb';

  @override
  String get calendarMonthMar => 'Már';

  @override
  String get calendarMonthApr => 'Ápr';

  @override
  String get calendarMonthMay => 'Máj';

  @override
  String get calendarMonthJun => 'Jún';

  @override
  String get calendarMonthJul => 'Júl';

  @override
  String get calendarMonthAug => 'Aug';

  @override
  String get calendarMonthSep => 'Szep';

  @override
  String get calendarMonthOct => 'Okt';

  @override
  String get calendarMonthNov => 'Nov';

  @override
  String get calendarMonthDec => 'Dec';

  @override
  String get calendarSeasonMuharramEarly =>
      'Muharram napjai — emlékezzünk Karbalára';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — a gyász és elmélkedés napjai';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — Husayn negyven napja';

  @override
  String get calendarSeasonRoadToArbaeen => 'Az út Arbaeen felé';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — a kinyilatkoztatás hajnala';

  @override
  String get calendarSeasonMidShaban =>
      'Sha\'ban közepe — Imam al-Mahdi (AJ) születésnapja';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — a Korán hónapja';

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
  String get duasScreenTitle => 'Duák és Ziyarat';

  @override
  String get duasSearchHint => 'Keresés duák, ziyarat…';

  @override
  String get duasFilterAll => 'Mind';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dua és ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Nem találhatók duák.';

  @override
  String get duaCategoryDaily => 'Napi';

  @override
  String get duaCategoryWeekly => 'Heti';

  @override
  String get duaCategoryOccasions => 'Alkalmak';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Születés';

  @override
  String get eventTypeMartyrdom => 'Vértanúság';

  @override
  String get eventTypeOccasion => 'Alkalom';

  @override
  String get duaCopyTooltip => 'Fordítás másolása';

  @override
  String get duaToggleTransliteration => 'Átírás';

  @override
  String get duaToggleTranslation => 'Fordítás';

  @override
  String get duaAskAiLabel => 'Kérj magyarázatot Ayarától erről a duáról';

  @override
  String get duaAskAiLockedLabel => 'Kérdezd Ayarát (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Az Ayara magyarázatok Wilaya tagok számára érhetők el. Frissíts a Beállításokban.';

  @override
  String duaAiComingSoon(String name) {
    return 'Kérdezd Ayarát a következőről: \"$name\" — hamarosan!';
  }

  @override
  String get duaCopiedToast => 'Dua a vágólapra másolva.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah a legnagyobb';

  @override
  String get tasbihAlhamdulillahMeaning => 'Minden dicsőség Allahé';

  @override
  String get tasbihSubhanallahMeaning => 'Dicsőség Allahnak';

  @override
  String get tasbihResetTooltip => 'Visszaállítás';

  @override
  String get tasbihCompleteTitle => 'Tasbih befejezve';

  @override
  String get tasbihCompleteMessage => 'Fogadja el Allah a dhikredet.';

  @override
  String get tasbihTapHint => 'Érintsd meg bárhol a számoláshoz';

  @override
  String get tasbihatScreenTitle => 'Ima útmutató';

  @override
  String get tasbihatScreenSubtitle => 'AZ IMA DICSŐÍTÉSEI';

  @override
  String get tasbihatScreenDescription =>
      'Teljes útmutató a napi imák alatt és után mondott dicsőítésekhez — az Ahl al-Bayt (a) hagyományát követve.';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'A 3. és 4. rakʿahban mondva';

  @override
  String get tasbihatArba3Info =>
      'A síita jogtudomány szerint a Tasbiḥāt al-Arbaʿa helyettesíti az al-Fatiha szúrát a Dhuhr, Asr, Maghrib és Isha 3. és 4. rakʿahjában. Egyszer mondása kötelező (wājib), háromszori mondása pedig ajánlott (mustaḥabb).';

  @override
  String get tasbihatArba3Translation =>
      'Dicsőség Allahnak · Minden dicsőség Allahé\nNincs más isten csak Allah · Allah a legnagyobb';

  @override
  String get tasbihatArba3CompleteTitle => 'Recitáció befejezve';

  @override
  String get tasbihatArba3CompleteMessage => 'Fogadtassék el az imád — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Érintsd meg minden recitáció után';

  @override
  String get tasbihatZahraSubtitle => 'Minden ima után · 100 gyöngy';

  @override
  String get tasbihatZahraOriginLabel => 'Eredet';

  @override
  String get tasbihatZahraHadith =>
      'Fatima al-Zahra (sa) úrnő egy szolgát kért a Prófétától ﷺ. Ő azt mondta: \"Nem mutatok neked valami jobbat? Mondj Subḥānallāht 33-szor, Alḥamdulillāht 33-szor és Allāhu Akbart 34-szer minden ima után. Ez jobb neked egy szolgánál.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, 85. kötet';

  @override
  String get tasbihatZahraOpenCounter => 'Tasbīḥ számláló megnyitása';

  @override
  String get tasbihatDuasTitle => 'AJÁNLOTT DUÁK';

  @override
  String get tasbihatDuasSubtitle => 'Az ima befejezése után';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Minden kötelező ima után';

  @override
  String get tasbihatDuaAyatKursiSource => 'Al-Baqarah szúra 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Aki minden kötelező ima után mondja az Āyat al-Kursīt, semmi sem áll közte és a paradicsom között, csak a halál. Imam al-Bāqir (a) azt mondta, ez a Korán egyik legnagyobb verse.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Minden ima után · minden könyörgést lezár';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'A Próféta ﷺ és megtisztított családja (Āl Muḥammad) üdvözlése ajánlott minden dua lezárásához. Imam al-Ṣādiq (a) mondta: \"Minden dua felfüggesztett, amíg nem küldesz ṣalawāt Muḥammadra és családjára.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen => 'Minden ima után · korunk Imámjáért';

  @override
  String get tasbihatDuaFarajSource => 'Imam al-Ḥasan al-ʿAskarī (a) tanítása';

  @override
  String get tasbihatDuaFarajNote =>
      'Egy dua Imam al-Mahdī (af), a tizenkettedik Imám megjelenéséért, amelyet édesapja tanított. A síita hívők naponta mondják minden ima után a jelenlevő Imám iránt érzett odaadás jeleként.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Lady Fāṭima Tasbīḥja';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Maghrib és Isha után · különösen ajánlott';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) mondta, hogy a Tasbīḥ al-Zahrā mondása Isha után alvás előtt jobb, mint 1000 rakʿah önkéntes ima. Fénye felszáll az égbe.';

  @override
  String get tasbihFatimaGiftPre => 'A Próféta ajándéka';

  @override
  String get tasbihFatimaGiftPost => 'minden ima után mondva';

  @override
  String get prayerTrackerTitle => 'IMA KÖVETŐ';

  @override
  String get prayerTrackerPrayed => 'Imádkoztam';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count napos sorozat';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Minden ima elvégezve ma. Fogadja el Allah.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Ma elvégezve';

  @override
  String get dhikrTrackerNotDoneToday => 'Ma még nem elvégezve';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count napos sorozat';
  }

  @override
  String get dhikrReminderTitle => 'Tasbīḥ emlékeztető';

  @override
  String get dhikrReminderDescription =>
      'Egy szelíd napi emlékeztető a Tasbīḥ al-Zahrā (SA) mondásához.';

  @override
  String get dhikrReminderEnable => 'Tasbīḥ emlékeztető engedélyezése';

  @override
  String get dhikrReminderTimeLabel => 'Emlékeztető ideje';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Napi Hadith';

  @override
  String get hadithLabelArabic => 'ARAB';

  @override
  String get hadithLabelTranslation => 'FORDÍTÁS';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Hadith megosztása';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyara közvetítésével';
  }

  @override
  String get hadithNavPrevious => 'Előző';

  @override
  String get hadithNavNext => 'Következő';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'A 14 Maszúm';

  @override
  String get imamsScreenSubtitle =>
      'A Próféta, Fatima úrnő és a Tizenkét Imám — az iszlám tévedhetetlen vezetői';

  @override
  String get imamLabelBorn => 'Született';

  @override
  String get imamLabelMartyrdom => 'Vértanúság';

  @override
  String get imamLabelStatus => 'Státusz';

  @override
  String get imamSectionBiography => 'ÉLETRAJZ';

  @override
  String get imamSectionFamousSaying => 'HÍRNEVES MONDÁS';

  @override
  String get imamRoleProphet => 'Az utolsó Próféta';

  @override
  String get imamRoleInfallible => 'A tévedhetetlen';

  @override
  String get imamOrdinal1 => '1. Imám';

  @override
  String get imamOrdinal2 => '2. Imám';

  @override
  String get imamOrdinal3 => '3. Imám';

  @override
  String get imamOrdinal4 => '4. Imám';

  @override
  String get imamOrdinal5 => '5. Imám';

  @override
  String get imamOrdinal6 => '6. Imám';

  @override
  String get imamOrdinal7 => '7. Imám';

  @override
  String get imamOrdinal8 => '8. Imám';

  @override
  String get imamOrdinal9 => '9. Imám';

  @override
  String get imamOrdinal10 => '10. Imám';

  @override
  String get imamOrdinal11 => '11. Imám';

  @override
  String get imamOrdinal12 => '12. Imám';

  @override
  String get duaAudioScreenTitle => 'Duák hallgatása';

  @override
  String get duaAudioScreenSubtitle =>
      'Válassz egy duát a hallgatáshoz. Érintsd meg a csempét a lejátszáshoz vagy szüneteltetéshez.';

  @override
  String get duaAudioComingSoonMessage =>
      'Ennek a duának a hanganyaga egy következő frissítésben lesz elérhető.';

  @override
  String get duaAudioClose => 'Bezárás';

  @override
  String get duaAudioError =>
      'Nem sikerült betölteni a hanganyagot. Kérlek, ellenőrizd a kapcsolatot.';

  @override
  String get duaAudioMetaTransmittedBy => 'Közvetítette';

  @override
  String get duaAudioMetaOccasion => 'Alkalom';

  @override
  String get duaAudioMetaDuration => 'Időtartam';

  @override
  String get quickActionDailyHadith => 'Napi Hadith';

  @override
  String get quickAction14Masumeen => '14 Maszúm';

  @override
  String get quickActionListenDuas => 'Hallgatás';

  @override
  String get quickActionTasbihat => 'Ima útmutató';

  @override
  String get pilgrimageSectionTitle => 'A szent zarándoklat';

  @override
  String get pilgrimageSectionSubtitle =>
      'Teljes útmutatók a Hajjhoz és Umrahhoz — a zarándoklat Allah Szent Házához Mekkában';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Az iszlám ötödik pillére';

  @override
  String get hajjCardDescription =>
      'A nagy éves zarándoklat — minden képes muszlim számára egyszer kötelező az életben';

  @override
  String get hajjScreenTitle => 'Hajj útmutató';

  @override
  String get hajjScreenSubtitle =>
      'Lépésről lépésre útmutató a nagy zarándoklathoz';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'A kisebb zarándoklat';

  @override
  String get umrahCardDescription =>
      'Egy mélyen jutalmazó spirituális utazás, amely az év bármely szakában elvégezhető';

  @override
  String get umrahScreenTitle => 'Umrah útmutató';

  @override
  String get umrahScreenSubtitle =>
      'Lépésről lépésre útmutató a kisebb zarándoklathoz';

  @override
  String get pilgrimageStepsTitle => 'Szertartások és lépések';

  @override
  String get pilgrimageImportantNotesTitle => 'Fontos megjegyzések';

  @override
  String get pilgrimageDuaTitle => 'Dua ehhez a lépéshez';

  @override
  String get pilgrimageJafariNoteTitle => 'Ja\'fari fiqh megjegyzés';

  @override
  String get pilgrimageComplete => '✓ Kész';

  @override
  String get pilgrimageMarkDone => 'Jelöld meg befejezettnek';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done a $total lépésből';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes perc';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Síita zarándokok';

  @override
  String get pilgrimageShiaNoteBody =>
      'A síita zarándokok hagyományosan Medinába is utaznak, hogy meglátogassák Mohamed Próféta (SAW) sírját a Masjid al-Nabawinál, és az Imámok sírjait a Jannat al-Baqinál. Ezek a látogatások hatalmas spirituális jelentőséggel bírnak és a legtöbb síita muszlim számára az utazás szerves részének tekintendők.';

  @override
  String get hajjIntro =>
      'A Hajj az iszlám ötödik pillére, amely egyszer kötelező minden fizikailag és anyagilag képes muszlim számára az életben. A Dhul Hijjah hónapban elvégezve, Ibrahim próféta (AS), fia Ismail (AS) és Hajar úrnő nyomdokait követi. A síita muszlimok számára a Hajj magában foglalja a Próféta (SAW) és az Ahlul Bayt medinai nyughelyeinek meglátogatásának mélységes áldását is.';

  @override
  String get umrahIntro =>
      'Az Umrah a kisebb zarándoklat Mekkába, és a Hajjtól eltérően az év bármely szakában elvégezhető. Bár nem kötelező, hatalmas spirituális jutalommal jár és rendkívül ajánlott imádati cselekedetnek tekintendő. Több szertartást oszt meg a Hajjal, de rövidebb, és négy fő rituáléból áll.';
}
