// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Wybierz swój język';

  @override
  String get languageSelectSub => 'Możesz to później zmienić w Ustawieniach';

  @override
  String get actionContinue => 'Kontynuuj';

  @override
  String get languageSuggestedHeader => 'Sugerowane';

  @override
  String get languageAllHeader => 'Wszystkie języki';

  @override
  String get languageSuggestedBadge => 'Sugerowane';

  @override
  String get languageSearchHint => 'Szukaj…';

  @override
  String get planBasic => 'Standard';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Codzienne wskazówki';

  @override
  String get categorySlot02 => 'Iman i zaufanie';

  @override
  String get categorySlot03 => 'Refleksja nad modlitwą';

  @override
  String get categorySlot04 => 'Cierpliwość i nadzieja';

  @override
  String get categorySlot05 => 'Szukaj przebaczenia';

  @override
  String get categorySlot06 => 'Miłosierdzie i współczucie';

  @override
  String get categorySlot07 => 'Siła wiary';

  @override
  String get categorySlot08 => 'Wdzięczne serce';

  @override
  String get categorySlot09 => 'Cel życia';

  @override
  String get categorySlot10 => 'Więzi rodzinne';

  @override
  String get categorySlot11 => 'Wewnętrzny spokój';

  @override
  String get categorySlot12 => 'Mądrość Proroka';

  @override
  String get categorySlot13 => 'Dobry charakter';

  @override
  String get categorySlot14 => 'Opieraj się pokusie';

  @override
  String get categorySlot15 => 'Wieczorny dhikr';

  @override
  String get categoryCustom => 'Osobista refleksja';

  @override
  String get dhikrMeaningSubhanallah => 'Chwała Allahowi';

  @override
  String get dhikrMeaningAlhamdulillah => 'Wszelka chwała należy do Allaha';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah jest Największy';

  @override
  String get quranVerseHeartAtRest =>
      'Zaprawdę, w pamięci o Allahu serca znajdują spokój.';

  @override
  String get promptHint =>
      'Dotknij kategorii, aby otrzymać islamskie wskazówki i refleksję';

  @override
  String get currentLanguage => 'Obecny język';

  @override
  String get settingsLanguage => 'Ustawienia języka';

  @override
  String get settingsTitle => 'Ustawienia';

  @override
  String get chooseLanguage => 'Wybierz swój język';

  @override
  String get continueCta => 'Kontynuuj';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count słowa',
      many: '$count słów',
      few: '$count słowa',
      one: '$count słowo',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Opcje';

  @override
  String get newCta => 'Nowe';

  @override
  String get actionsTitle => 'Co chcesz zrobić?';

  @override
  String get copy => 'Kopiuj';

  @override
  String get share => 'Udostępnij';

  @override
  String get close => 'Zamknij';

  @override
  String get copiedToast => 'Skopiowano do schowka';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle =>
      'Nie udało się wygenerować nowej odpowiedzi';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nCzy chcesz spróbować ponownie?';
  }

  @override
  String get cancelCta => 'Anuluj';

  @override
  String get retryCta => 'Spróbuj ponownie';

  @override
  String get authTitle => 'Utwórz swoje konto';

  @override
  String get continueAsGuest => 'Kontynuuj jako gość';

  @override
  String get signInGoogle => 'Zaloguj się przez Google';

  @override
  String get signInApple => 'Zaloguj się przez Apple';

  @override
  String get signInEmail => 'Zaloguj się przez e-mail';

  @override
  String get upgradeWithApple => 'Kontynuuj przez Apple';

  @override
  String get mustAccept =>
      'Musisz zaakceptować Warunki korzystania i potwierdzić Politykę prywatności.';

  @override
  String get termsLabel => 'Akceptuję Warunki korzystania';

  @override
  String get privacyLabel => 'Przeczytałem(-am) Politykę prywatności';

  @override
  String get marketingOptIn =>
      'Wyrażam zgodę na otrzymywanie wiadomości i ofert';

  @override
  String get openTerms => 'Warunki korzystania';

  @override
  String get openPrivacy => 'Polityka prywatności';

  @override
  String get accountSection => 'Konto';

  @override
  String get guestMode => 'Tryb gościa';

  @override
  String get signedIn => 'Zalogowano';

  @override
  String get upgradeHint =>
      'Zapisuj swoje refleksje na wszystkich urządzeniach, tworząc konto.';

  @override
  String get upgradeWithGoogle => 'Kontynuuj przez Google';

  @override
  String get signOut => 'Wyloguj się';

  @override
  String get snackUpgraded => 'Konto ulepszone przez Google ✅';

  @override
  String get snackSignedIn => 'Zalogowano przez Google ✅';

  @override
  String get snackSignedOut => 'Wylogowano';

  @override
  String get snackSignedInApple => 'Zalogowano przez Apple ✅';

  @override
  String get snackSignedInGoogle => 'Zalogowano przez Google ✅';

  @override
  String get snackUpgradedApple => 'Konto ulepszone przez Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Konto ulepszone przez Google ✅';

  @override
  String get historyTitle => 'Poprzednie refleksje';

  @override
  String get historyOpenCta => 'Poprzednie refleksje';

  @override
  String get historyEmpty => 'Nie ma jeszcze zapisanych refleksji.';

  @override
  String get historyDeleteTitle => 'Usunąć refleksję?';

  @override
  String get historyDeleteBody => 'To trwale usunie wybrany element.';

  @override
  String get deleteCta => 'Usuń';

  @override
  String get historyButton => 'Poprzednie refleksje';

  @override
  String get historyEmptyTitle => 'Brak refleksji';

  @override
  String get historyEmptyBody =>
      'Najpierw coś wygeneruj — zapisane elementy pojawią się tutaj.';

  @override
  String get historyDelete => 'Usuń';

  @override
  String get footerTitle => 'Z Wilaya, Iman i Sabr';

  @override
  String get footerSubtitle => 'Jedna modlitwa naraz';

  @override
  String get genericErrorSnack =>
      'Coś poszło nie tak — spróbuj ponownie za chwilę.';

  @override
  String get upgradeAccountCta =>
      'Zapisuj swoje refleksje na wszystkich urządzeniach – utwórz konto';

  @override
  String get deleteAccount => 'Usuń konto';

  @override
  String get exportData => 'Eksportuj moje dane';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Spokojnie 🐯\nAyara potrzebuje chwili przed następną odpowiedzią…';

  @override
  String get rateDailyLimit =>
      'Na razie skończyły Ci się refleksje.\nZdobądź więcej refleksji lub przejdź na Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Wykorzystałeś(-aś) wszystkie swoje refleksje.\nDoładuj konto lub przejdź na Wilaya, aby kontynuować.';

  @override
  String get rateGraceCreditsExhausted =>
      'Na razie skończyły Ci się refleksje.\nZdobądź więcej refleksji lub przejdź na Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya odblokowuje funkcje premium, przyszłe kategorie i specjalną odznakę.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Twoje refleksje są teraz wyczerpane. Plan: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Nie udało się sprawdzić Twoich refleksji: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Coś poszło nie tak podczas sprawdzania Twoich refleksji.';

  @override
  String get aiFallbackGeneric =>
      'Coś poszło nie tak — spróbuj ponownie za chwilę.';

  @override
  String get limitSectionTitle => 'Refleksje';

  @override
  String get limitTodayLabel => 'Użycie';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Pozostałe refleksje: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get limitLoadingLabel => 'Ładowanie…';

  @override
  String get limitLoadingLabelDescription =>
      'Wyświetlane na karcie refleksji podczas pobierania statystyk użycia.';

  @override
  String get aiLimitTitle => 'Refleksje';

  @override
  String get aiLimitSubtitle =>
      'Każda odpowiedź zużywa 1 refleksję. Standard zawiera refleksje startowe. Wilaya odblokowuje kategorie premium i umożliwia doładowania.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total wykorzystanych refleksji';
  }

  @override
  String get creditsSectionTitle => 'Refleksje';

  @override
  String get creditsUsageLabel => 'Użycie';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Pozostałe refleksje: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Ładowanie…';

  @override
  String get creditsLoadingLabelDescription =>
      'Wyświetlane podczas pobierania statystyk refleksji.';

  @override
  String get creditsTitle => 'Refleksje';

  @override
  String get creditsSubtitle =>
      'Każda odpowiedź zużywa 1 refleksję. Standard zawiera refleksje startowe. Wilaya odblokowuje kategorie premium i umożliwia doładowania.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total wykorzystanych refleksji';
  }

  @override
  String get settingsDeleteTitle => 'Usuń konto';

  @override
  String get settingsDeleteDescription =>
      'Trwale usuń swoje konto i wszystkie powiązane dane.';

  @override
  String get settingsDeleteButtonLabel => 'Usuń moje konto';

  @override
  String get settingsDeleteDialogTitle => 'Usunąć konto?';

  @override
  String get settingsDeleteDialogBody =>
      'To działanie jest trwałe i nie można go cofnąć.\n\nWszystkie Twoje czaty, historia i informacje o koncie zostaną usunięte.';

  @override
  String get settingsDeleteDialogCancel => 'Anuluj';

  @override
  String get settingsDeleteDialogConfirm => 'Usuń';

  @override
  String get settingsFreeLimitUsedTitle => 'Refleksje startowe wykorzystane';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Refleksje startowe dla tego urządzenia zostały wykorzystane. Przejdź na Wilaya lub kup więcej refleksji, aby kontynuować.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Refleksje startowe wykorzystane';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Refleksje startowe dla tego urządzenia zostały wykorzystane. Przejdź na Wilaya lub kup więcej refleksji, aby kontynuować.';

  @override
  String get deviceBoundError =>
      'To urządzenie jest już połączone z innym kontem. Zaloguj się na pierwotne konto.';

  @override
  String get premiumTitle => 'Tryb Wilaya';

  @override
  String get premiumSubtitleBasic => 'Odblokuj pełne doświadczenie Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Korzystasz z Wilaya. Potrzebujesz więcej refleksji?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Obecny plan: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Refleksje: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Zakupy nie są obecnie dostępne.';

  @override
  String get premiumSignInToPurchase =>
      'Zaloguj się, aby kupić refleksje lub odblokować Wilaya.';

  @override
  String get premiumRestorePurchases => 'Przywróć zakupy';

  @override
  String get premiumProcessing => 'Przetwarzanie…';

  @override
  String get premiumRestoreHintTitle =>
      'Czy kupiłeś(-aś) już Wilaya lub refleksje na tym lub innym urządzeniu?';

  @override
  String get premiumRestoreHintBody =>
      'Przywróć swoje zakupy, jeśli się nie wyświetlają.';

  @override
  String get premiumBuyCredits200 => 'Kup 200 refleksji';

  @override
  String get premiumBuyCredits400 => 'Kup 400 refleksji';

  @override
  String get premiumBecomePremiumOneTime => 'Przejdź na tryb Wilaya';

  @override
  String get premiumTopupHint =>
      'Z Wilaya możesz doładować dodatkowe refleksje zawsze, gdy ich potrzebujesz.';

  @override
  String get premiumUpgradeCta => 'Ulepsz';

  @override
  String get premiumRequiredForCategory =>
      'Ta kategoria jest dostępna tylko dla użytkowników Wilaya. Przejdź do Ustawień, aby odblokować całą zawartość premium.';

  @override
  String get premiumBenefitsBasic =>
      'Odblokuj Wilaya, aby otrzymać dodatkowe refleksje, dostęp do kategorii premium i możliwość kontynuowania zawsze, gdy potrzebujesz wskazówek.';

  @override
  String get premiumBenefitsPremium =>
      'Jesteś w trybie Wilaya. Jeśli zaczyna Ci brakować refleksji, dodaj kolejne i kontynuuj bez przerw.';

  @override
  String get premiumButtonBecomePremium => 'Odblokuj Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Dodaj 1000 refleksji';

  @override
  String get premiumBadge => 'Wilaya aktywna';

  @override
  String get premiumLoadingStore => 'Ładowanie sklepu…';

  @override
  String get premiumProductNotAvailable =>
      'Ten produkt nie jest jeszcze dostępny w sklepie. Spróbuj ponownie później.';

  @override
  String get premiumPurchaseError =>
      'Coś poszło nie tak podczas zakupu. Spróbuj ponownie.';

  @override
  String get premiumBuyCredits100 => 'Dodaj 100 refleksji';

  @override
  String get premiumFeatureLocked =>
      'Odblokuj Wilaya, aby uzyskać dostęp do tej funkcji.';

  @override
  String get lockedCategoriesHint =>
      'Niektóre kategorie są zarezerwowane dla członków Wilaya. Odblokuj je, aby odkrywać każdą refleksję na swojej drodze.';

  @override
  String get freePlanBlockedTitle =>
      'Wykorzystałeś(-aś) swoje refleksje startowe';

  @override
  String get freePlanBlockedBody =>
      'Korzystasz z planu Standard z refleksjami startowymi i osiągnąłeś(-aś) limit. Aby kontynuować — i odblokować kategorie premium — przejdź na Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Zobacz opcje Wilaya poniżej';

  @override
  String get graceBlockedTitle => 'Wykorzystałeś(-aś) swoje refleksje startowe';

  @override
  String get graceBlockedBody =>
      'Korzystasz z planu Standard z refleksjami startowymi i osiągnąłeś(-aś) limit. Aby kontynuować — i odblokować kategorie premium — przejdź na Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Zobacz opcje Wilaya poniżej';

  @override
  String get rateGuestMustSignIn =>
      'Zaloguj się, aby korzystać z Ayara i swoich refleksji.';

  @override
  String get guestNoCreditsTitle => 'Tryb gościa';

  @override
  String get guestNoCreditsBody =>
      'Jako gość możesz przeglądać aplikację, ale nie możesz używać refleksji. Zaloguj się później w Ustawieniach, aby korzystać z refleksji i odblokować zakupy.';

  @override
  String get guestDialogContinue => 'Kontynuuj';

  @override
  String get guestDialogLoginInstead => 'Zaloguj się zamiast tego';

  @override
  String get optionalLabel => 'opcjonalnie';

  @override
  String get accountDeleteSuccessTitle => 'Konto usunięte';

  @override
  String get accountDeleteSuccessBody =>
      'Twoje konto i powiązane dane zostały pomyślnie usunięte.';

  @override
  String get accountDeleteSuccessClose => 'Zamknij';

  @override
  String get accountDeleteErrorTitle => 'Nie udało się usunąć konta';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Ponowna autoryzacja została anulowana. Zaloguj się ponownie i spróbuj jeszcze raz usunąć konto.';

  @override
  String get accountDeleteReauthRequired =>
      'Usunięcie konta wymaga niedawnego logowania. Wyloguj się, zaloguj ponownie i spróbuj jeszcze raz.';

  @override
  String get settingsDeletePermanentWarning =>
      'To działanie jest trwałe i nie można go cofnąć. Wszystkie dane powiązane z Twoim kontem zostaną usunięte.';

  @override
  String get dailyGraceTitle => 'Codzienne wskazówki';

  @override
  String get dailyGraceScriptureLabel => 'WERSET DNIA';

  @override
  String get dailyGraceSaintLabel => 'FIGURA TYGODNIA';

  @override
  String get dailyGraceReflectionLabel => 'WIECZORNA REFLEKSJA';

  @override
  String get dailyGraceCopiedToast => 'Werset skopiowano do schowka';

  @override
  String get locationConsentLabel =>
      'Zezwól Ayara na użycie mojej lokalizacji dla kierunku Kibla i godzin modlitw';

  @override
  String get locationConsentHint =>
      'Używane tylko do tych funkcji. Twoja lokalizacja nigdy nie jest udostępniana ani zapisywana.';

  @override
  String get askPageTitle => 'Zapytaj Ayarę';

  @override
  String get askPageDescription =>
      'Zapytaj o cokolwiek związanego z wiarą, modlitwą, życiem lub praktyką islamu i otrzymaj wskazówki zakorzenione w Koranie i naukach Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Wpisz tutaj swoje pytanie…';

  @override
  String get askPageSubmitCta => 'Zapytaj';

  @override
  String get askPageInputEmptyError => 'Najpierw napisz pytanie.';

  @override
  String get askResultYourQuestion => 'Twoje pytanie';

  @override
  String get guidancePageTitle => 'Kibla';

  @override
  String get qiblaFacingMecca => 'Skierowane ku Mekce';

  @override
  String get qiblaCompassInstruction =>
      'Obróć telefon, aż złota igła będzie wskazywać do góry.\nTen kierunek wskazuje Kibla (Mekkę).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Sygnał GPS jest słaby. Wyjdź na zewnątrz i stuknij Spróbuj ponownie.';

  @override
  String get qiblaRetry => 'Spróbuj ponownie';

  @override
  String get qiblaTitle => 'Kierunek Kibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km do Mekki';
  }

  @override
  String get qiblaLocationNeededTitle => 'Wymagana lokalizacja';

  @override
  String get qiblaLocationNeededBody =>
      'Zezwól na dostęp do lokalizacji, aby Ayara mogła obliczyć kierunek Kaaby w Mekce z miejsca, w którym się znajdujesz.';

  @override
  String get qiblaOpenSettings => 'Otwórz Ustawienia';

  @override
  String get qiblaCompassLoading => 'Ustalanie Twojej pozycji…';

  @override
  String get qiblaTowardMecca => 'W stronę Mekki';

  @override
  String get prayerTimesTitle => 'Godziny modlitw';

  @override
  String get prayerTimesFajr => 'Fadżr';

  @override
  String get prayerTimesDhuhr => 'Zuhr';

  @override
  String get prayerTimesAsr => 'Asr';

  @override
  String get prayerTimesMaghrib => 'Maghrib';

  @override
  String get prayerTimesIsha => 'Isza';

  @override
  String get prayerTimesLocationNeededTitle => 'Wymagana lokalizacja';

  @override
  String get prayerTimesLocationNeededBody =>
      'Zezwól na dostęp do lokalizacji, aby Ayara mogła obliczyć dokładne godziny modlitw dla Twojego miasta.';

  @override
  String get prayerTimesNextLabel => 'Następna';

  @override
  String get prayerTimesDoneLabel => 'Gotowe';

  @override
  String get monthlyPrayerTimesTitle => 'Miesięczne godziny modlitw';

  @override
  String get monthlyPrayerTimesViewButton => 'Zobacz cały miesiąc';

  @override
  String get monthlyPrayerTimesNextMonth => 'Następny miesiąc';

  @override
  String get monthlyPrayerTimesDayHeader => 'Dzień';

  @override
  String get sharePrayerTimes => 'Udostępnij godziny modlitw';

  @override
  String get notificationsSectionTitle => 'Powiadomienia';

  @override
  String get notificationsSectionSubtitle =>
      'Przypomnienia o modlitwach, wydarzenia z kalendarza i więcej';

  @override
  String get dailyReflectionReminderTitle => 'Codzienna refleksja';

  @override
  String get dailyReflectionReminderDescription =>
      'Łagodne codzienne przypomnienie, aby otworzyć Ayarę i połączyć się ze swoją wiarą.';

  @override
  String get dailyReflectionReminderEnable => 'Włącz codzienne przypomnienie';

  @override
  String get dailyReflectionReminderTimeLabel => 'Godzina przypomnienia';

  @override
  String get prayerNotificationsTitle => 'Przypomnienia o modlitwie';

  @override
  String get prayerNotificationsDescription =>
      'Otrzymuj łagodne przypomnienie przed każdą godziną modlitwy, aby pomagało Ci to pozostać duchowo skupionym przez cały dzień.';

  @override
  String get prayerNotificationsEnable => 'Włącz przypomnienia o modlitwie';

  @override
  String get prayerNotificationsOpenSettings => 'Otwórz ustawienia powiadomień';

  @override
  String get prayerNotificationsDenied => 'Powiadomienia są wyłączone';

  @override
  String get prayerNotificationsDeniedHint =>
      'Przejdź do Ustawień i zezwól na powiadomienia dla Ayary, aby otrzymywać przypomnienia o godzinach modlitw.';

  @override
  String get notificationsConsentLabel =>
      'Zezwól na powiadomienia o godzinach modlitw';

  @override
  String get prayerNotifTitleFajr => '🌅 Fadżr — Modlitwa o świcie';

  @override
  String get prayerNotifBodyFajr =>
      'Fadżr jest modlitwą poranków Ahl al-Bayt. Imam Ali (AS) powiedział: Strzeż modlitwy o świcie tak, jak strzeżesz swojego najcenniejszego depozytu. Wstań, oczyść się i stań przed Allahem.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Zuhr — Modlitwa południowa';

  @override
  String get prayerNotifBodyDhuhr =>
      'Imamowie Ahl al-Bayt cenili każdą chwilę pamięci o Allahu. Zatrzymaj swój dzień, połącz Zuhr z Asr, jeśli trzeba, i zwróć swoje serce ku Allahowi.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Modlitwa popołudniowa';

  @override
  String get prayerNotifBodyAsr =>
      'Strzeż modlitwy, bo jest ona przymierzem między tobą a Allahem. Nadszedł czas Asr — nie pozwól mu minąć bez pamięci o Allahu.';

  @override
  String get prayerNotifTitleMaghrib =>
      '🌇 Maghrib — Modlitwa o zachodzie słońca';

  @override
  String get prayerNotifBodyMaghrib =>
      'Słońce zaszło — to chwila, którą Ahl al-Bayt uważali za świętą dla błagania. Odpraw Maghrib i wznieś ręce do Allaha w dua, zanim zapadnie noc.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isza — Modlitwa nocna';

  @override
  String get prayerNotifBodyIsha =>
      'Zakończ swój dzień w obecności Allaha. Imamowie zachęcali do Salat al-Layl po Isza — ale najpierw ukończ Iszę i zamknij dzień pamięcią o Nim.';

  @override
  String get outOfReflectionsBannerText =>
      'Wykorzystałeś(-aś) wszystkie swoje refleksje';

  @override
  String get outOfReflectionsBannerCta => 'Zdobądź więcej';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Dotknij koła, aby liczyć';

  @override
  String get dhikrResetButton => 'Resetuj';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Ukończyłeś(-aś) 100 wspomnień o Allahu. Niech będą światłem dla Twojego serca.';

  @override
  String get disclaimerTitle => 'O wskazówkach w tej aplikacji';

  @override
  String get disclaimerBody =>
      'Ayara dostarcza islamskie refleksje, przypomnienia i treści duchowe, aby wspierać Twoją osobistą drogę wiary, zakorzenioną w Koranie i naukach Ahl al-Bayt. Treści te są oferowane wyłącznie w celach ogólnoinformacyjnych i inspirujących.\n\nAyara nie zastępuje wykwalifikowanych uczonych.\nWskazówki w tej aplikacji nie zastępują uczonego islamskiego, marja\' ani nauczyciela wykształconego teologicznie. W szyickim islamie przewodnictwo religijne opiera się na szkole prawa dżafaryckiego (fiqh) i tradycji podążania za żyjącym Marja\' (źródłem naśladowania) — wykwalifikowanym jurystą, którego orzeczenia prowadzą wierzących w praktyce religijnej. Jeśli masz pytania dotyczące orzeczeń religijnych, spraw halal i haram albo osobistych obowiązków religijnych, zasięgnij porady u wykwalifikowanego Marja\' lub uczonego w swojej społeczności.\n\nTa aplikacja nie wydaje orzeczeń religijnych.\nAyara nie wydaje autorytatywnych rozstrzygnięć w sprawach fiqh ani osobistych obowiązków religijnych. Nic tutaj nie powinno być traktowane jako fatwa ani wiążąca instrukcja religijna.\n\nCentralne znaczenie Ahl al-Bayt.\nW szyickim islamie Prorok Muhammad ﷺ i jego oczyszczona rodzina — Ahl al-Bayt — są autorytatywnymi przewodnikami wspólnoty islamskiej po Koranie. Dwunastu Imamów Ahl al-Bayt to bosko wyznaczeni interpretatorzy nauki islamu. Treści w tej aplikacji odzwierciedlają tę tradycję i starają się wiernie ją szanować.\n\nZnaczenie wspólnoty.\nTa aplikacja ma zachęcać do pogłębiania Twojej relacji z wiarą, z głębokim poszanowaniem istotnej roli Twojego lokalnego meczetu, centrum islamskiego i wspólnoty religijnej. Zachęcamy Cię do utrzymywania więzi z wykwalifikowanymi nauczycielami w Twojej okolicy i uczenia się od nich.';

  @override
  String get disclaimerClose => 'Rozumiem';

  @override
  String get disclaimerInfoTooltip => 'O wskazówkach w tej aplikacji';

  @override
  String get disclaimerSettingsSubtitle =>
      'Wyłącznie do ogólnych celów informacyjnych. Dotknij, aby przeczytać pełne zastrzeżenie.';

  @override
  String get disclaimerSectionHeader => 'Zastrzeżenie dotyczące wskazówek';

  @override
  String get navHome => 'Strona główna';

  @override
  String get navReflect => 'Refleksja';

  @override
  String get navDuas => 'Dua';

  @override
  String get navCalendar => 'Kalendarz';

  @override
  String get dashboardToday => 'DZIŚ';

  @override
  String get dashboardComingUp => 'Nadchodzące';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dni',
      many: 'dni',
      few: 'dni',
      one: 'dzień',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Szybki dostęp';

  @override
  String get quickActionQibla => 'Kibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Wskazówki';

  @override
  String get quickActionPrayerTimes => 'Godziny modlitw';

  @override
  String get askAyaraTitle => 'Zapytaj Ayarę';

  @override
  String get askAyaraSubtitle =>
      'Zadaj dowolne pytanie islamiczne i otrzymaj przemyślaną, prowadzącą odpowiedź.';

  @override
  String get askAyaraHint => 'np. Jakie jest znaczenie Ramadanu?';

  @override
  String get askAyaraSubmit => 'Zapytaj';

  @override
  String get wisdomOfTheDayTitle => 'Mądrość dnia';

  @override
  String get calendarScreenTitle => 'Kalendarz islamski';

  @override
  String get calendarUpcomingOccasions => 'Nadchodzące okazje';

  @override
  String get calendarOccasionRemindersTitle => 'Przypomnienia o okazjach';

  @override
  String get calendarOccasionRemindersHint =>
      'Powiadomienie wieczorem przed każdą okazją';

  @override
  String get calendarNotifPermissionDenied =>
      'Brak zgody na powiadomienia. Włącz je w ustawieniach urządzenia.';

  @override
  String get calendarNoEvents =>
      'Nie znaleziono żadnych nadchodzących wydarzeń.';

  @override
  String get calendarAddToPhone => 'Dodaj do kalendarza telefonu';

  @override
  String get calendarAddedToPhone => 'Dodano do kalendarza';

  @override
  String get calendarCountdownToday => 'DZIŚ';

  @override
  String get calendarCountdownTomorrow => 'JUTRO';

  @override
  String calendarCountdownDays(int days) {
    return 'za $days dni';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'sty';

  @override
  String get calendarMonthFeb => 'lut';

  @override
  String get calendarMonthMar => 'mar';

  @override
  String get calendarMonthApr => 'kwi';

  @override
  String get calendarMonthMay => 'maj';

  @override
  String get calendarMonthJun => 'cze';

  @override
  String get calendarMonthJul => 'lip';

  @override
  String get calendarMonthAug => 'sie';

  @override
  String get calendarMonthSep => 'wrz';

  @override
  String get calendarMonthOct => 'paź';

  @override
  String get calendarMonthNov => 'lis';

  @override
  String get calendarMonthDec => 'gru';

  @override
  String get calendarSeasonMuharramEarly =>
      'Dni Muharramu — pamiętaj o Karbali';

  @override
  String get calendarSeasonAshura => 'Aszura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate => 'Muharram — dni żałoby i refleksji';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — czterdzieści dni Husajna';

  @override
  String get calendarSeasonRoadToArbaeen => 'Droga do Arbaeen';

  @override
  String get calendarSeasonMabath => 'Mab\'ath Mubarak — świt objawienia';

  @override
  String get calendarSeasonMidShaban =>
      'Połowa Sha\'banu — urodziny Imama al-Mahdiego (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — miesiąc Koranu';

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
  String get hijriMonth7 => 'Radżab';

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
  String get duasScreenTitle => 'Dua i Ziyarat';

  @override
  String get duasSearchHint => 'Szukaj dua, ziyarat…';

  @override
  String get duasFilterAll => 'Wszystkie';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dua i ziyarat',
      many: '$count dua i ziyarat',
      few: '$count dua i ziyarat',
      one: '$count dua',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Nie znaleziono dua.';

  @override
  String get duaCategoryDaily => 'Codzienne';

  @override
  String get duaCategoryWeekly => 'Tygodniowe';

  @override
  String get duaCategoryOccasions => 'Okazje';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Narodziny';

  @override
  String get eventTypeMartyrdom => 'Męczeństwo';

  @override
  String get eventTypeOccasion => 'Okazja';

  @override
  String get duaCopyTooltip => 'Kopiuj tłumaczenie';

  @override
  String get duaToggleTransliteration => 'Transliteracja';

  @override
  String get duaToggleTranslation => 'Tłumaczenie';

  @override
  String get duaAskAiLabel => 'Poproś Ayarę o wyjaśnienie tej dua';

  @override
  String get duaAskAiLockedLabel => 'Zapytaj Ayarę (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Wyjaśnienia Ayary są dostępne dla członków Wilaya. Ulepsz plan w Ustawieniach.';

  @override
  String duaAiComingSoon(String name) {
    return 'Zapytaj Ayarę o „$name” — wkrótce!';
  }

  @override
  String get duaCopiedToast => 'Dua skopiowana do schowka.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah jest Największy';

  @override
  String get tasbihAlhamdulillahMeaning => 'Wszelka chwała należy do Allaha';

  @override
  String get tasbihSubhanallahMeaning => 'Chwała Allahowi';

  @override
  String get tasbihResetTooltip => 'Resetuj';

  @override
  String get tasbihCompleteTitle => 'Tasbih ukończony';

  @override
  String get tasbihCompleteMessage => 'Niech Allah przyjmie Twój dhikr.';

  @override
  String get tasbihTapHint => 'Dotknij w dowolnym miejscu, aby liczyć';

  @override
  String get tasbihatScreenTitle => 'Przewodnik po modlitwie';

  @override
  String get tasbihatScreenSubtitle => 'UWIELBIENIA MODLITWY';

  @override
  String get tasbihatScreenDescription =>
      'Kompletny przewodnik po uwielbieniach recytowanych podczas i po codziennych modlitwach — zgodnie z tradycją Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Recytowane w 3. i 4. rakʿah';

  @override
  String get tasbihatArba3Info =>
      'W szyickim fiqh Tasbiḥāt al-Arbaʿa zastępuje Surah al-Fatiha w 3. i 4. rakʿah modlitw Dhuhr, Asr, Maghrib i Isha. Obowiązkowe (wājib) jest wyrecytowanie ich raz, a zalecane (mustaḥabb) — trzy razy.';

  @override
  String get tasbihatArba3Translation =>
      'Chwała Allahowi · Wszelka chwała należy do Allaha\nNie ma boga poza Allahem · Allah jest Największy';

  @override
  String get tasbihatArba3CompleteTitle => 'Recytacja ukończona';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Niech Twoja modlitwa zostanie przyjęta — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Dotknij po każdej recytacji';

  @override
  String get tasbihatZahraSubtitle => 'Po każdej modlitwie · 100 koralików';

  @override
  String get tasbihatZahraOriginLabel => 'Pochodzenie';

  @override
  String get tasbihatZahraHadith =>
      'Pani Fatima al-Zahra (sa) poprosiła Proroka ﷺ o służącego. Powiedział: „Czy nie mam wskazać ci czegoś lepszego? Powiedz Subḥānallāh 33 razy, Alḥamdulillāh 33 razy i Allāhu Akbar 34 razy po każdej modlitwie. To jest dla ciebie lepsze niż służący.”';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, t. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Otwórz licznik Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'ZALECANE DUA';

  @override
  String get tasbihatDuasSubtitle => 'Po ukończeniu modlitwy';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Po każdej obowiązkowej modlitwie';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Kto recytuje Āyat al-Kursī po każdej obowiązkowej modlitwie, tego od raju oddziela już tylko śmierć. Imam al-Bāqir (a) powiedział, że jest to jeden z największych wersetów Koranu.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Po każdej modlitwie · pieczętuje wszystkie dua';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Wysyłanie błogosławieństw na Proroka ﷺ i jego oczyszczoną rodzinę (Āl Muḥammad) jest zalecane, by pieczętować każdą dua. Imam al-Ṣādiq (a) powiedział: „Każda dua pozostaje zawieszona, dopóki nie wyślesz ṣalawāt na Muhammada i jego rodzinę.”';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Po każdej modlitwie · za Imama naszych czasów';

  @override
  String get tasbihatDuaFarajSource =>
      'Przekazana przez Imama al-Ḥasana al-ʿAskarīego (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Dua za ponowne pojawienie się Imama al-Mahdī (af), dwunastego Imama, nauczona przez jego ojca. Często recytowana przez wielu szyickich muzułmanów po modlitwie jako akt oddania żyjącemu Imamowi.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ Pani Fāṭimy';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Po Maghrib i Isha · szczególnie zalecane';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) powiedział, że recytowanie Tasbīḥ al-Zahrā po Isha przed snem jest lepsze niż 1000 rakʿah modlitwy dobrowolnej. Jego światło wznosi się do niebios.';

  @override
  String get tasbihFatimaGiftPre => 'Dar od Proroka';

  @override
  String get tasbihFatimaGiftPost => 'recytowany po każdej modlitwie';

  @override
  String get prayerTrackerTitle => 'ŚLEDZENIE MODLITW';

  @override
  String get prayerTrackerPrayed => 'Odmówiono';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count dni z rzędu';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Wszystkie modlitwy na dziś zostały ukończone. Niech Allah je przyjmie.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Ukończone dziś';

  @override
  String get dhikrTrackerNotDoneToday => 'Nie zrobiono dziś';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count dni z rzędu';
  }

  @override
  String get dhikrReminderTitle => 'Przypomnienie o Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Łagodne codzienne przypomnienie, by recytować Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Włącz przypomnienie o Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Godzina przypomnienia';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Codzienny hadis';

  @override
  String get hadithLabelArabic => 'ARABSKI';

  @override
  String get hadithLabelTranslation => 'TŁUMACZENIE';

  @override
  String get hadithBadge => 'HADIS';

  @override
  String get hadithShare => 'Udostępnij ten hadis';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nPrzez Ayara';
  }

  @override
  String get hadithNavPrevious => 'Poprzedni';

  @override
  String get hadithNavNext => 'Następny';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Czternastu Niewinnych';

  @override
  String get imamsScreenSubtitle =>
      'Prorok, Pani Fatima i Dwunastu Imamów — oczyszczeni i niewinni przewodnicy w szyickim islamie dwunastkowym';

  @override
  String get imamLabelBorn => 'Urodzony';

  @override
  String get imamLabelMartyrdom => 'Męczeństwo';

  @override
  String get imamLabelStatus => 'Status';

  @override
  String get imamSectionBiography => 'BIOGRAFIA';

  @override
  String get imamSectionFamousSaying => 'ZNANE POWIEDZENIE';

  @override
  String get imamRoleProphet => 'Ostatni Prorok';

  @override
  String get imamRoleInfallible => 'Nieomylny';

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
  String get duaAudioScreenTitle => 'Słuchaj dua';

  @override
  String get duaAudioScreenSubtitle =>
      'Wybierz dua do odsłuchania. Dotknij kafelka, aby odtworzyć lub wstrzymać.';

  @override
  String get duaAudioComingSoonMessage =>
      'Audio dla tej dua będzie dostępne w nadchodzącej aktualizacji.';

  @override
  String get duaAudioClose => 'Zamknij';

  @override
  String get duaAudioError =>
      'Nie udało się załadować audio. Sprawdź swoje połączenie.';

  @override
  String get duaAudioMetaTransmittedBy => 'Przekazane przez';

  @override
  String get duaAudioMetaOccasion => 'Okazja';

  @override
  String get duaAudioMetaDuration => 'Czas trwania';

  @override
  String get quickActionDailyHadith => 'Codzienny hadis';

  @override
  String get quickAction14Masumeen => 'Czternastu Niewinnych';

  @override
  String get quickActionListenDuas => 'Słuchaj';

  @override
  String get quickActionTasbihat => 'Przewodnik po modlitwie';

  @override
  String get pilgrimageSectionTitle => 'Święta podróż';

  @override
  String get pilgrimageSectionSubtitle =>
      'Kompletne przewodniki po Hadżdżu i Umrze — pielgrzymce do Świętego Domu Allaha w Mekce';

  @override
  String get hajjCardTitle => 'Hadżdż';

  @override
  String get hajjCardSubtitle => 'Piąty filar islamu';

  @override
  String get hajjCardDescription =>
      'Wielka coroczna pielgrzymka — obowiązkowa raz w życiu dla każdego muzułmanina, który jest w stanie ją odbyć';

  @override
  String get hajjScreenTitle => 'Przewodnik po Hadżdżu';

  @override
  String get hajjScreenSubtitle =>
      'Przewodnik krok po kroku po wielkiej pielgrzymce';

  @override
  String get umrahCardTitle => 'Umra';

  @override
  String get umrahCardSubtitle => 'Mniejsza pielgrzymka';

  @override
  String get umrahCardDescription =>
      'Głęboko nagradzająca podróż duchowa, którą można odbyć o każdej porze roku';

  @override
  String get umrahScreenTitle => 'Przewodnik po Umrze';

  @override
  String get umrahScreenSubtitle =>
      'Przewodnik krok po kroku po mniejszej pielgrzymce';

  @override
  String get pilgrimageStepsTitle => 'Obrzędy i kroki';

  @override
  String get pilgrimageImportantNotesTitle => 'Ważne uwagi';

  @override
  String get pilgrimageDuaTitle => 'Dua na ten krok';

  @override
  String get pilgrimageJafariNoteTitle => 'Notatka Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Zakończono';

  @override
  String get pilgrimageMarkDone => 'Oznacz jako ukończone';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done z $total kroków';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes minut';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Szyiccy pielgrzymi';

  @override
  String get pilgrimageShiaNoteBody =>
      'Wielu szyickich pielgrzymów podróżuje również do Medyny, aby odwiedzić Proroka Muhammada (SAW) w Masjid al-Nabawi oraz groby w Jannat al-Baqi. Te wizyty mają głębokie znaczenie duchowe, chociaż same w sobie nie są rytuałami Hajj.';

  @override
  String get hajjIntro =>
      'Hajj jest piątą kolumną islamu, obowiązkowy raz w życiu dla każdego muzułmanina, który jest fizycznie i finansowo zdolny. Dla większości szyickich pielgrzymów dwunastkowych oznacza to Hajj al-Tamattu\', wykonywany w miesiącu Dhul Hijjah, w ślad za Prorokiem Ibrahimem (AS), jego synem Ismailem (AS) i Panią Hajar. Ten przewodnik podąża za ja\'faryjskim zarysem rytuałów, podczas gdy ziyarat w Medynie pozostaje głęboko cenioną podróżą przed lub po Hajj.';

  @override
  String get umrahIntro =>
      'Umra jest mniejszą pielgrzymką do Mekki i, w przeciwieństwie do Hadżdżu, może być odbyta o każdej porze roku. Choć nie jest obowiązkowa, niesie ogromną nagrodę duchową i jest uznawana za wysoce zalecany akt czci. Dzieli kilka rytuałów z Hadżdżem, ale jest krótsza i składa się z czterech głównych obrzędów.';

  @override
  String get voiceInputTitle => 'Wprowadzenie głosowe';

  @override
  String get voiceInputMicTitle => 'Mikrofon';

  @override
  String get voiceInputMicSubtitle =>
      'Mów swoje zapytanie do Ask Ayara zamiast pisać.';

  @override
  String get voiceInputMicDenied => 'Dostęp do mikrofonu został odrzucony.';

  @override
  String get voiceInputSpeak => 'Mów zamiast';

  @override
  String get voiceInputListening => 'Słucham…';

  @override
  String get voiceInputPermissionDenied =>
      'Dostęp do mikrofonu jest wymagany do wprowadzenia głosowego.';
}
