// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Виберіть свою мову';

  @override
  String get languageSelectSub => 'Пізніше це можна змінити в Налаштуваннях';

  @override
  String get actionContinue => 'Продовжити';

  @override
  String get languageSuggestedHeader => 'Рекомендовані';

  @override
  String get languageAllHeader => 'Усі мови';

  @override
  String get languageSuggestedBadge => 'Рекомендовано';

  @override
  String get languageSearchHint => 'Пошук…';

  @override
  String get planBasic => 'Стандарт';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Щоденне наставлення';

  @override
  String get categorySlot02 => 'Іман і довіра';

  @override
  String get categorySlot03 => 'Роздуми про молитву';

  @override
  String get categorySlot04 => 'Терпіння і надія';

  @override
  String get categorySlot05 => 'Проси прощення';

  @override
  String get categorySlot06 => 'Милість і співчуття';

  @override
  String get categorySlot07 => 'Сила віри';

  @override
  String get categorySlot08 => 'Вдячне серце';

  @override
  String get categorySlot09 => 'Сенс життя';

  @override
  String get categorySlot10 => 'Сімейні зв’язки';

  @override
  String get categorySlot11 => 'Внутрішній спокій';

  @override
  String get categorySlot12 => 'Мудрість Пророка';

  @override
  String get categorySlot13 => 'Добра вдача';

  @override
  String get categorySlot14 => 'Протистояти спокусі';

  @override
  String get categorySlot15 => 'Вечірній зікр';

  @override
  String get categoryCustom => 'Особисті роздуми';

  @override
  String get dhikrMeaningSubhanallah => 'Слава Аллаху';

  @override
  String get dhikrMeaningAlhamdulillah => 'Уся хвала належить Аллаху';

  @override
  String get dhikrMeaningAllahuAkbar => 'Аллах — Найвеличніший';

  @override
  String get quranVerseHeartAtRest =>
      'Воістину, у згадуванні Аллаха серця знаходять спокій.';

  @override
  String get promptHint =>
      'Торкніться категорії для ісламського наставлення й роздумів';

  @override
  String get currentLanguage => 'Поточна мова';

  @override
  String get settingsLanguage => 'Налаштування мови';

  @override
  String get settingsTitle => 'Налаштування';

  @override
  String get chooseLanguage => 'Виберіть свою мову';

  @override
  String get continueCta => 'Продовжити';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count слова',
      many: '$count слів',
      few: '$count слова',
      one: '$count слово',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Параметри';

  @override
  String get newCta => 'Нове';

  @override
  String get actionsTitle => 'Що ви хочете зробити?';

  @override
  String get copy => 'Копіювати';

  @override
  String get share => 'Поділитися';

  @override
  String get close => 'Закрити';

  @override
  String get copiedToast => 'Скопійовано в буфер обміну';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Не вдалося створити нову відповідь';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nХочете спробувати ще раз?';
  }

  @override
  String get cancelCta => 'Скасувати';

  @override
  String get retryCta => 'Спробувати ще раз';

  @override
  String get authTitle => 'Створіть свій обліковий запис';

  @override
  String get continueAsGuest => 'Продовжити як гість';

  @override
  String get signInGoogle => 'Увійти через Google';

  @override
  String get signInApple => 'Увійти через Apple';

  @override
  String get signInEmail => 'Увійти через Email';

  @override
  String get upgradeWithApple => 'Продовжити з Apple';

  @override
  String get mustAccept =>
      'Ви повинні прийняти Умови використання та підтвердити Політику конфіденційності.';

  @override
  String get termsLabel => 'Я приймаю Умови використання';

  @override
  String get privacyLabel =>
      'Я ознайомився(-лася) з Політикою конфіденційності';

  @override
  String get marketingOptIn => 'Я погоджуюся отримувати новини та пропозиції';

  @override
  String get openTerms => 'Умови використання';

  @override
  String get openPrivacy => 'Політика конфіденційності';

  @override
  String get accountSection => 'Обліковий запис';

  @override
  String get guestMode => 'Режим гостя';

  @override
  String get signedIn => 'Ви ввійшли';

  @override
  String get upgradeHint =>
      'Зберігайте свої роздуми на всіх пристроях, створивши обліковий запис.';

  @override
  String get upgradeWithGoogle => 'Продовжити з Google';

  @override
  String get signOut => 'Вийти';

  @override
  String get snackUpgraded => 'Обліковий запис оновлено через Google ✅';

  @override
  String get snackSignedIn => 'Вхід через Google ✅';

  @override
  String get snackSignedOut => 'Ви вийшли';

  @override
  String get snackSignedInApple => 'Вхід через Apple ✅';

  @override
  String get snackSignedInGoogle => 'Вхід через Google ✅';

  @override
  String get snackUpgradedApple => 'Обліковий запис оновлено через Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Обліковий запис оновлено через Google ✅';

  @override
  String get historyTitle => 'Попередні роздуми';

  @override
  String get historyOpenCta => 'Попередні роздуми';

  @override
  String get historyEmpty => 'Поки що немає збережених роздумів.';

  @override
  String get historyDeleteTitle => 'Видалити роздум?';

  @override
  String get historyDeleteBody =>
      'Цю дію неможливо скасувати — вибраний елемент буде видалено назавжди.';

  @override
  String get deleteCta => 'Видалити';

  @override
  String get historyButton => 'Попередні роздуми';

  @override
  String get historyEmptyTitle => 'Поки що немає роздумів';

  @override
  String get historyEmptyBody =>
      'Спочатку щось згенеруйте — ваші збережені елементи з’являться тут.';

  @override
  String get historyDelete => 'Видалити';

  @override
  String get footerTitle => 'З Wilaya, Іманом і Сабром';

  @override
  String get footerSubtitle => 'Одна молитва за раз';

  @override
  String get genericErrorSnack =>
      'Щось пішло не так — спробуйте ще раз за мить.';

  @override
  String get upgradeAccountCta =>
      'Зберігайте свої роздуми на всіх пристроях – створіть обліковий запис';

  @override
  String get deleteAccount => 'Видалити обліковий запис';

  @override
  String get exportData => 'Експортувати мої дані';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Спокійніше 🐯\nAyara потребує хвилину перед наступною відповіддю…';

  @override
  String get rateDailyLimit =>
      'Наразі ваші роздуми закінчилися.\nОтримайте більше роздумів або перейдіть на Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Ви використали всі свої роздуми.\nПоповніть баланс або перейдіть на Wilaya, щоб продовжити.';

  @override
  String get rateGraceCreditsExhausted =>
      'Наразі ваші роздуми закінчилися.\nОтримайте більше роздумів або перейдіть на Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya відкриває преміум-функції, майбутні категорії та особливий значок.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Ваші роздуми зараз вичерпані. План: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Не вдалося перевірити ваші роздуми: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Під час перевірки ваших роздумів сталася помилка.';

  @override
  String get aiFallbackGeneric =>
      'Щось пішло не так — спробуйте ще раз за мить.';

  @override
  String get limitSectionTitle => 'Роздуми';

  @override
  String get limitTodayLabel => 'Використання';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Залишок роздумів: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'План: $plan';
  }

  @override
  String get limitLoadingLabel => 'Завантаження…';

  @override
  String get limitLoadingLabelDescription =>
      'Показується на картці роздумів під час отримання статистики використання.';

  @override
  String get aiLimitTitle => 'Роздуми';

  @override
  String get aiLimitSubtitle =>
      'Кожна відповідь використовує 1 роздум. Стандарт включає стартові роздуми. Wilaya відкриває преміум-категорії та дозволяє поповнення.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total роздумів використано';
  }

  @override
  String get creditsSectionTitle => 'Роздуми';

  @override
  String get creditsUsageLabel => 'Використання';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Залишок роздумів: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'План: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Завантаження…';

  @override
  String get creditsLoadingLabelDescription =>
      'Показується, поки завантажується статистика роздумів.';

  @override
  String get creditsTitle => 'Роздуми';

  @override
  String get creditsSubtitle =>
      'Кожна відповідь використовує 1 роздум. Стандарт включає стартові роздуми. Wilaya відкриває преміум-категорії та дозволяє поповнення.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total роздумів використано';
  }

  @override
  String get settingsDeleteTitle => 'Видалити обліковий запис';

  @override
  String get settingsDeleteDescription =>
      'Назавжди видалити ваш обліковий запис і всі пов’язані дані.';

  @override
  String get settingsDeleteButtonLabel => 'Видалити мій обліковий запис';

  @override
  String get settingsDeleteDialogTitle => 'Видалити обліковий запис?';

  @override
  String get settingsDeleteDialogBody =>
      'Ця дія є незворотною.\n\nУсі ваші чати, історія та дані облікового запису будуть видалені.';

  @override
  String get settingsDeleteDialogCancel => 'Скасувати';

  @override
  String get settingsDeleteDialogConfirm => 'Видалити';

  @override
  String get settingsFreeLimitUsedTitle => 'Стартові роздуми використано';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Стартові роздуми для цього пристрою вже використано. Перейдіть на Wilaya або придбайте більше роздумів, щоб продовжити.';

  @override
  String get settingsStarterCreditsUsedTitle => 'Стартові роздуми використано';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Стартові роздуми для цього пристрою вже використано. Перейдіть на Wilaya або придбайте більше роздумів, щоб продовжити.';

  @override
  String get deviceBoundError =>
      'Цей пристрій уже прив’язаний до іншого облікового запису. Будь ласка, увійдіть через початковий обліковий запис.';

  @override
  String get premiumTitle => 'Режим Wilaya';

  @override
  String get premiumSubtitleBasic => 'Відкрийте повний досвід Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'У вас активовано Wilaya. Потрібно більше роздумів?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Поточний план: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Роздуми: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Покупки зараз недоступні.';

  @override
  String get premiumSignInToPurchase =>
      'Увійдіть, щоб купувати роздуми або відкрити Wilaya.';

  @override
  String get premiumRestorePurchases => 'Відновити покупки';

  @override
  String get premiumProcessing => 'Обробка…';

  @override
  String get premiumRestoreHintTitle =>
      'Ви вже купували Wilaya або роздуми на цьому чи іншому пристрої?';

  @override
  String get premiumRestoreHintBody =>
      'Відновіть свої покупки, якщо вони не відображаються.';

  @override
  String get premiumBuyCredits200 => 'Купити 200 роздумів';

  @override
  String get premiumBuyCredits400 => 'Купити 400 роздумів';

  @override
  String get premiumBecomePremiumOneTime => 'Перейти на режим Wilaya';

  @override
  String get premiumTopupHint =>
      'З Wilaya ви можете поповнювати додаткові роздуми будь-коли, коли вам це потрібно.';

  @override
  String get premiumUpgradeCta => 'Оновити';

  @override
  String get premiumRequiredForCategory =>
      'Ця категорія доступна лише користувачам Wilaya. Оновіть план у Налаштуваннях, щоб відкрити весь преміум-вміст.';

  @override
  String get premiumBenefitsBasic =>
      'Відкрийте Wilaya, щоб отримати додаткові роздуми, доступ до преміум-категорій і можливість продовжувати, коли вам потрібне наставлення.';

  @override
  String get premiumBenefitsPremium =>
      'Ви в режимі Wilaya. Якщо роздуми закінчуються, додайте ще й продовжуйте без перерв.';

  @override
  String get premiumButtonBecomePremium => 'Відкрити Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Додати 1000 роздумів';

  @override
  String get premiumBadge => 'Wilaya активна';

  @override
  String get premiumLoadingStore => 'Завантаження магазину…';

  @override
  String get premiumProductNotAvailable =>
      'Цей продукт ще недоступний у магазині. Спробуйте пізніше.';

  @override
  String get premiumPurchaseError =>
      'Під час покупки сталася помилка. Спробуйте ще раз.';

  @override
  String get premiumBuyCredits100 => 'Додати 100 роздумів';

  @override
  String get premiumFeatureLocked =>
      'Відкрийте Wilaya, щоб скористатися цією функцією.';

  @override
  String get lockedCategoriesHint =>
      'Деякі категорії зарезервовані для учасників Wilaya. Відкрийте їх, щоб дослідити кожен роздум на своєму шляху.';

  @override
  String get freePlanBlockedTitle => 'Ви використали стартові роздуми';

  @override
  String get freePlanBlockedBody =>
      'Ви перебуваєте на стандартному плані зі стартовими роздумами й досягли ліміту. Щоб продовжити — і відкрити преміум-категорії — перейдіть на Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Перегляньте варіанти Wilaya нижче';

  @override
  String get graceBlockedTitle => 'Ви використали стартові роздуми';

  @override
  String get graceBlockedBody =>
      'Ви перебуваєте на стандартному плані зі стартовими роздумами й досягли ліміту. Щоб продовжити — і відкрити преміум-категорії — перейдіть на Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Перегляньте варіанти Wilaya нижче';

  @override
  String get rateGuestMustSignIn =>
      'Увійдіть, щоб користуватися Ayara і своїми роздумами.';

  @override
  String get guestNoCreditsTitle => 'Режим гостя';

  @override
  String get guestNoCreditsBody =>
      'Як гість ви можете переглядати застосунок, але не можете використовувати роздуми. Увійдіть пізніше в Налаштуваннях, щоб користуватися роздумами й відкрити покупки.';

  @override
  String get guestDialogContinue => 'Продовжити';

  @override
  String get guestDialogLoginInstead => 'Увійти натомість';

  @override
  String get optionalLabel => 'необов’язково';

  @override
  String get accountDeleteSuccessTitle => 'Обліковий запис видалено';

  @override
  String get accountDeleteSuccessBody =>
      'Ваш обліковий запис і пов’язані з ним дані успішно видалені.';

  @override
  String get accountDeleteSuccessClose => 'Закрити';

  @override
  String get accountDeleteErrorTitle => 'Не вдалося видалити обліковий запис';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Повторну автентифікацію скасовано. Будь ласка, увійдіть знову та повторіть видалення.';

  @override
  String get accountDeleteReauthRequired =>
      'Для видалення облікового запису потрібен нещодавній вхід. Вийдіть, увійдіть знову й повторіть спробу.';

  @override
  String get settingsDeletePermanentWarning =>
      'Ця дія є незворотною. Усі дані, пов’язані з вашим обліковим записом, буде видалено.';

  @override
  String get dailyGraceTitle => 'Щоденне наставлення';

  @override
  String get dailyGraceScriptureLabel => 'АЯТ ДНЯ';

  @override
  String get dailyGraceSaintLabel => 'ФІГУРА ТИЖНЯ';

  @override
  String get dailyGraceReflectionLabel => 'ВЕЧІРНІ РОЗДУМИ';

  @override
  String get dailyGraceCopiedToast => 'Аят скопійовано в буфер обміну';

  @override
  String get locationConsentLabel =>
      'Дозвольте Ayara використовувати мою локацію для напряму кибли й часу молитви';

  @override
  String get locationConsentHint =>
      'Використовується лише для цих функцій. Ваша локація ніколи не передається і не зберігається.';

  @override
  String get askPageTitle => 'Запитайте Ayara';

  @override
  String get askPageDescription =>
      'Поставте будь-яке питання про віру, молитву, життя чи ісламську практику та отримайте наставлення, засноване на Кур’ані й ученнях Ахл аль-Байта.';

  @override
  String get askPageInputHint => 'Введіть своє питання тут…';

  @override
  String get askPageSubmitCta => 'Запитати';

  @override
  String get askPageInputEmptyError => 'Будь ласка, спочатку напишіть питання.';

  @override
  String get askResultYourQuestion => 'Ваше питання';

  @override
  String get guidancePageTitle => 'Кибла';

  @override
  String get qiblaFacingMecca => 'У напрямку Меки';

  @override
  String get qiblaCompassInstruction =>
      'Поверніть телефон, доки золота стрілка не вкаже вгору.\nЦей напрямок указує на киблу (Мека).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS-сигнал слабкий. Вийдіть надвір і натисніть «Спробувати знову».';

  @override
  String get qiblaRetry => 'Спробувати знову';

  @override
  String get qiblaTitle => 'Напрямок кибли';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km км до Меки';
  }

  @override
  String get qiblaLocationNeededTitle => 'Потрібна локація';

  @override
  String get qiblaLocationNeededBody =>
      'Дозвольте доступ до геолокації, щоб Ayara могла обчислити напрямок Кааби в Меці з того місця, де ви перебуваєте.';

  @override
  String get qiblaOpenSettings => 'Відкрити налаштування';

  @override
  String get qiblaCompassLoading => 'Визначається ваше місцезнаходження…';

  @override
  String get qiblaTowardMecca => 'У бік Меки';

  @override
  String get prayerTimesTitle => 'Часи молитви';

  @override
  String get prayerTimesFajr => 'Фаджр';

  @override
  String get prayerTimesDhuhr => 'Зухр';

  @override
  String get prayerTimesAsr => 'Аср';

  @override
  String get prayerTimesMaghrib => 'Магриб';

  @override
  String get prayerTimesIsha => 'Іша';

  @override
  String get prayerTimesLocationNeededTitle => 'Потрібна локація';

  @override
  String get prayerTimesLocationNeededBody =>
      'Дозвольте доступ до геолокації, щоб Ayara могла обчислити точний час молитви для вашого міста.';

  @override
  String get prayerTimesNextLabel => 'Наступна';

  @override
  String get prayerTimesDoneLabel => 'Готово';

  @override
  String get monthlyPrayerTimesTitle => 'Місячний час молитви';

  @override
  String get monthlyPrayerTimesViewButton => 'Переглянути весь місяць';

  @override
  String get monthlyPrayerTimesNextMonth => 'Наступний місяць';

  @override
  String get monthlyPrayerTimesDayHeader => 'День';

  @override
  String get sharePrayerTimes => 'Поділитися часами молитви';

  @override
  String get notificationsSectionTitle => 'Сповіщення';

  @override
  String get notificationsSectionSubtitle =>
      'Нагадування про молитви, події календаря та інше';

  @override
  String get dailyReflectionReminderTitle => 'Щоденні роздуми';

  @override
  String get dailyReflectionReminderDescription =>
      'Ніжне щоденне нагадування відкрити Ayara та знову наблизитися до своєї віри.';

  @override
  String get dailyReflectionReminderEnable => 'Увімкнути щоденне нагадування';

  @override
  String get dailyReflectionReminderTimeLabel => 'Час нагадування';

  @override
  String get prayerNotificationsTitle => 'Нагадування про молитви';

  @override
  String get prayerNotificationsDescription =>
      'Отримуйте м’яке нагадування перед кожною молитвою, щоб залишатися духовно зосередженими протягом дня.';

  @override
  String get prayerNotificationsEnable => 'Увімкнути нагадування про молитви';

  @override
  String get prayerNotificationsOpenSettings =>
      'Відкрити налаштування сповіщень';

  @override
  String get prayerNotificationsDenied => 'Сповіщення вимкнені';

  @override
  String get prayerNotificationsDeniedHint =>
      'Перейдіть у Налаштування і дозвольте сповіщення для Ayara, щоб отримувати нагадування про час молитви.';

  @override
  String get notificationsConsentLabel =>
      'Дозволити сповіщення про час молитви';

  @override
  String get prayerNotifTitleFajr => '🌅 Фаджр — світанкова молитва';

  @override
  String get prayerNotifBodyFajr =>
      'Фаджр — це молитва ранку Ахл аль-Байта. Імам Алі (AS) сказав: Бережіть світанкову молитву так, як бережете свою найціннішу довірену річ. Встаньте, очистьтеся і станьте перед Аллахом.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Зухр — полуденна молитва';

  @override
  String get prayerNotifBodyDhuhr =>
      'Імами Ахл аль-Байта цінували кожну мить поминання. Зробіть паузу в середині дня, за потреби об’єднайте Зухр з Асром і знову поверніть своє серце до Аллаха.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Аср — післяобідня молитва';

  @override
  String get prayerNotifBodyAsr =>
      'Бережіть молитву, адже вона є завітом між вами й Аллахом. Час Асра настав — не дайте йому минути без згадування.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Магриб — молитва заходу сонця';

  @override
  String get prayerNotifBodyMaghrib =>
      'Сонце зайшло — це мить, яку Ахл аль-Байт вважав священною для дуа. Звершіть Магриб і підніміть руки до Аллаха в дуа перед початком ночі.';

  @override
  String get prayerNotifTitleIsha => '🌙 Іша — нічна молитва';

  @override
  String get prayerNotifBodyIsha =>
      'Завершіть свій день у товаристві Аллаха. Імами заохочували до Салат аль-Лайль після Іші — але спочатку звершіть Ішу і закрийте день Його згадуванням.';

  @override
  String get outOfReflectionsBannerText => 'Ви використали всі свої роздуми';

  @override
  String get outOfReflectionsBannerCta => 'Отримати більше';

  @override
  String get dhikrPageTitle => 'Зікр';

  @override
  String get dhikrTapToCount => 'Торкніться кола, щоб рахувати';

  @override
  String get dhikrResetButton => 'Скинути';

  @override
  String get dhikrComplete => 'Машаллах';

  @override
  String get dhikrCompleteMessage =>
      'Ви завершили 100 згадувань Аллаха. Нехай вони стануть світлом для вашого серця.';

  @override
  String get disclaimerTitle => 'Про настанови в цьому застосунку';

  @override
  String get disclaimerBody =>
      'Ayara надає ісламські роздуми, нагадування та духовний зміст, щоб підтримати ваш особистий шлях віри, вкорінений у Кур’ані та вченнях Ахл аль-Байта. Цей зміст пропонується лише з загальноінформаційною та надихаючою метою.\n\nAyara не замінює кваліфіковану вченість.\nНастанови в цьому застосунку не є заміною вченого ісламського богослова, марджа\' або теологічно підготовленого вчителя. У шиїтському ісламі релігійне керівництво ґрунтується на джафаритській школі фікху та традиції наслідування живого Марджа\'а (джерела наслідування) — кваліфікованого правознавця, чиї рішення спрямовують віруючих у релігійній практиці. Якщо у вас є питання щодо релігійних постанов, халяль і харам або особистих релігійних обов’язків, зверніться за порадою до кваліфікованого Марджа\'а або вченого у вашій громаді.\n\nЦей застосунок не видає релігійних рішень.\nAyara не ухвалює авторитетних рішень у питаннях фікху чи особистих релігійних обов’язків. Ніщо тут не слід сприймати як фетву чи обов’язкову релігійну вказівку.\n\nЦентральність Ахл аль-Байта.\nУ шиїтському ісламі Пророк Мухаммад ﷺ і його очищений дім — Ахл аль-Байт — є авторитетними провідниками ісламської громади після Кур’ану. Дванадцять Імамів Ахл аль-Байта — це божественно призначені тлумачі ісламського вчення. Зміст у цьому застосунку відображає цю традицію й прагне вірно її вшанувати.\n\nЗначення громади.\nЦей застосунок прагне заохочувати ваше єднання з вірою, глибоко поважаючи життєво важливу роль вашої місцевої мечеті, ісламського центру та релігійної громади. Ми заохочуємо вас залишатися на зв’язку й навчатися у кваліфікованих учителів поблизу вас.';

  @override
  String get disclaimerClose => 'Я розумію';

  @override
  String get disclaimerInfoTooltip => 'Про настанови в цьому застосунку';

  @override
  String get disclaimerSettingsSubtitle =>
      'Лише для загальноінформаційних цілей. Натисніть, щоб прочитати повне застереження.';

  @override
  String get disclaimerSectionHeader => 'Застереження щодо настанов';

  @override
  String get navHome => 'Головна';

  @override
  String get navReflect => 'Роздуми';

  @override
  String get navDuas => 'Дуа';

  @override
  String get navCalendar => 'Календар';

  @override
  String get dashboardToday => 'СЬОГОДНІ';

  @override
  String get dashboardComingUp => 'Незабаром';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'дня',
      many: 'днів',
      few: 'дні',
      one: 'день',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Швидкий доступ';

  @override
  String get quickActionQibla => 'Кибла';

  @override
  String get quickActionDhikr => 'Зікр';

  @override
  String get quickActionDailyGrace => 'Наставлення';

  @override
  String get quickActionPrayerTimes => 'Часи молитви';

  @override
  String get askAyaraTitle => 'Питај Ayara';

  @override
  String get askAyaraSubtitle =>
      'Поставте будь-яке ісламське питання й отримайте вдумливу, спрямовану відповідь.';

  @override
  String get askAyaraHint => 'напр. Яке значення має Рамадан?';

  @override
  String get askAyaraSubmit => 'Запитати';

  @override
  String get wisdomOfTheDayTitle => 'Мудрість дня';

  @override
  String get calendarScreenTitle => 'Ісламський календар';

  @override
  String get calendarUpcomingOccasions => 'Майбутні події';

  @override
  String get calendarOccasionRemindersTitle => 'Нагадування про події';

  @override
  String get calendarOccasionRemindersHint =>
      'Сповіщення надходитиме ввечері напередодні кожної події';

  @override
  String get calendarNotifPermissionDenied =>
      'Дозвіл на сповіщення відхилено. Увімкніть його в налаштуваннях пристрою.';

  @override
  String get calendarNoEvents => 'Найближчих подій не знайдено.';

  @override
  String get calendarAddToPhone => 'Додати до календаря телефону';

  @override
  String get calendarAddedToPhone => 'Додано до календаря';

  @override
  String get calendarCountdownToday => 'СЬОГОДНІ';

  @override
  String get calendarCountdownTomorrow => 'ЗАВТРА';

  @override
  String calendarCountdownDays(int days) {
    return 'через $days днів';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Січ';

  @override
  String get calendarMonthFeb => 'Лют';

  @override
  String get calendarMonthMar => 'Бер';

  @override
  String get calendarMonthApr => 'Кві';

  @override
  String get calendarMonthMay => 'Тра';

  @override
  String get calendarMonthJun => 'Чер';

  @override
  String get calendarMonthJul => 'Лип';

  @override
  String get calendarMonthAug => 'Сер';

  @override
  String get calendarMonthSep => 'Вер';

  @override
  String get calendarMonthOct => 'Жов';

  @override
  String get calendarMonthNov => 'Лис';

  @override
  String get calendarMonthDec => 'Гру';

  @override
  String get calendarSeasonMuharramEarly => 'Дні Мухаррама — згадайте Кербелу';

  @override
  String get calendarSeasonAshura => 'Ашура — Я Хусейн (AS)';

  @override
  String get calendarSeasonMuharramLate => 'Мухаррам — дні жалоби й роздумів';

  @override
  String get calendarSeasonArbaeen => 'Арбаїн — сорок днів Хусейна';

  @override
  String get calendarSeasonRoadToArbaeen => 'Шлях до Арбаїну';

  @override
  String get calendarSeasonMabath => 'Маб\'ас мубарак — світанок об’явлення';

  @override
  String get calendarSeasonMidShaban =>
      'Середина Ша\'бана — день народження Імама аль-Махді (AJ)';

  @override
  String get calendarSeasonRamadan => 'Рамадан мубарак — місяць Кур’ану';

  @override
  String get calendarSeasonGhadir => 'Ід аль-Гадір мубарак!';

  @override
  String get hijriMonth1 => 'Мухаррам';

  @override
  String get hijriMonth2 => 'Сафар';

  @override
  String get hijriMonth3 => 'Рабі аль-Авваль';

  @override
  String get hijriMonth4 => 'Рабі аль-Тані';

  @override
  String get hijriMonth5 => 'Джумада аль-Авваль';

  @override
  String get hijriMonth6 => 'Джумада аль-Тані';

  @override
  String get hijriMonth7 => 'Раджаб';

  @override
  String get hijriMonth8 => 'Ша\'бан';

  @override
  String get hijriMonth9 => 'Рамадан';

  @override
  String get hijriMonth10 => 'Шавваль';

  @override
  String get hijriMonth11 => 'Зу аль-Кі\'да';

  @override
  String get hijriMonth12 => 'Зу аль-Хіджа';

  @override
  String get duasScreenTitle => 'Дуа та зійарат';

  @override
  String get duasSearchHint => 'Пошук дуа, зійарат…';

  @override
  String get duasFilterAll => 'Усі';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дуа',
      many: '$count дуа та зійаратів',
      few: '$count дуа',
      one: '$count дуа',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Дуа не знайдено.';

  @override
  String get duaCategoryDaily => 'Щоденні';

  @override
  String get duaCategoryWeekly => 'Щотижневі';

  @override
  String get duaCategoryOccasions => 'Події';

  @override
  String get duaCategoryZiyarat => 'Зійарат';

  @override
  String get duaCategoryTasbih => 'Тасбіх';

  @override
  String get eventTypeBirth => 'Народження';

  @override
  String get eventTypeMartyrdom => 'Мучеництво';

  @override
  String get eventTypeOccasion => 'Подія';

  @override
  String get duaCopyTooltip => 'Скопіювати переклад';

  @override
  String get duaToggleTransliteration => 'Транслітерація';

  @override
  String get duaToggleTranslation => 'Переклад';

  @override
  String get duaAskAiLabel => 'Попросіть Ayara пояснити цю дуа';

  @override
  String get duaAskAiLockedLabel => 'Питај Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Пояснення Ayara доступні для учасників Wilaya. Оновіть план у Налаштуваннях.';

  @override
  String duaAiComingSoon(String name) {
    return 'Питај Ayara про «$name» — незабаром!';
  }

  @override
  String get duaCopiedToast => 'Дуа скопійовано в буфер обміну.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Аллах — Найвеличніший';

  @override
  String get tasbihAlhamdulillahMeaning => 'Уся хвала належить Аллаху';

  @override
  String get tasbihSubhanallahMeaning => 'Слава Аллаху';

  @override
  String get tasbihResetTooltip => 'Скинути';

  @override
  String get tasbihCompleteTitle => 'Тасбіх завершено';

  @override
  String get tasbihCompleteMessage => 'Нехай Аллах прийме ваш зікр.';

  @override
  String get tasbihTapHint => 'Торкніться будь-де, щоб рахувати';

  @override
  String get tasbihatScreenTitle => 'Посібник із молитви';

  @override
  String get tasbihatScreenSubtitle => 'ПРОСЛАВЛЕННЯ МОЛИТВИ';

  @override
  String get tasbihatScreenDescription =>
      'Повний посібник із прославлень, які читаються під час і після щоденних молитов — згідно з традицією Ахл аль-Байта (a).';

  @override
  String get tasbihatArba3Title => 'ТАСБИХАТ АЛЬ-АРБАʿА';

  @override
  String get tasbihatArba3Subtitle => 'Читається в 3-му й 4-му рак’аті';

  @override
  String get tasbihatArba3Info =>
      'У шиїтському фікху Тасбихат аль-Арбаʿа замінює суру аль-Фатіха в 3-му й 4-му рак’аті Зухру, Асру, Магрибу та Іші. Обов’язково (ваджиб) прочитати її один раз, а рекомендовано (мустахаб) — три рази.';

  @override
  String get tasbihatArba3Translation =>
      'Слава Аллаху · Уся хвала належить Аллаху\nНемає бога, крім Аллаха · Аллах — Найвеличніший';

  @override
  String get tasbihatArba3CompleteTitle => 'Читання завершено';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Нехай ваша молитва буде прийнята — Амін';

  @override
  String get tasbihatArba3TapHint => 'Торкайтеся після кожного читання';

  @override
  String get tasbihatZahraSubtitle => 'Після кожної молитви · 100 намистин';

  @override
  String get tasbihatZahraOriginLabel => 'Походження';

  @override
  String get tasbihatZahraHadith =>
      'Пані Фатіма аль-Захра (sa) попросила Пророка ﷺ про слугу. Він сказав: «Чи не вказати тобі на щось краще? Після кожної молитви промовляй Субханаллах 33 рази, Альхамдулиллях 33 рази і Аллаху Акбар 34 рази. Це краще для тебе, ніж слуга.»';

  @override
  String get tasbihatZahraHadithSource => '— Біхар аль-Анвар, том 85';

  @override
  String get tasbihatZahraOpenCounter => 'Відкрити лічильник тасбіху';

  @override
  String get tasbihatDuasTitle => 'РЕКОМЕНДОВАНІ ДУА';

  @override
  String get tasbihatDuasSubtitle => 'Після завершення вашої молитви';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Аят аль-Курсі';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Після кожної обов’язкової молитви';

  @override
  String get tasbihatDuaAyatKursiSource => 'Сура аль-Бакара 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Хто читає Аят аль-Курсі після кожної обов’язкової молитви, того від Раю не відділяє нічого, крім смерті. Імам аль-Бакір (a) сказав, що це один із найвеличніших аятів у Кур’ані.';

  @override
  String get tasbihatDuaSalawatTitle => 'Салават';

  @override
  String get tasbihatDuaSalawatWhen =>
      'Після кожної молитви · завершує всі дуа';

  @override
  String get tasbihatDuaSalawatSource => 'Імам аль-Садік (a) — Аль-Кафі';

  @override
  String get tasbihatDuaSalawatNote =>
      'Надсилання благословення Пророку ﷺ і його чистій родині (Аль Мухаммад) рекомендоване як завершення кожної дуа. Імам аль-Садік (a) сказав: «Кожна дуа залишається призупиненою, поки ти не надішлеш салават Мухаммаду та його родині.»';

  @override
  String get tasbihatDuaFarajTitle => 'Дуа аль-Фарадж';

  @override
  String get tasbihatDuaFarajWhen =>
      'Після кожної молитви · за Імама нашого часу';

  @override
  String get tasbihatDuaFarajSource => 'Навчав Імам аль-Хасан аль-Аскарі (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Дуа для повторного з\'явлення імама аль-Махді (аф), дванадцятого імама, навчена його батьком. Її часто читають багато шиїтських мусульман після молитви як акт відданості живому імаму.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Тасбіх пані Фатіми';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Після Магрибу та Іші · особливо рекомендовано';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Імам аль-Бакір (a) — Біхар аль-Анвар';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Імам аль-Бакір (a) сказав, що читання Тасбіх аль-Захра після Іші перед сном краще, ніж 1000 рак’атів добровільної молитви. Його світло підноситься до небес.';

  @override
  String get tasbihFatimaGiftPre => 'Дар від Пророка';

  @override
  String get tasbihFatimaGiftPost => 'читається після кожної молитви';

  @override
  String get prayerTrackerTitle => 'ВІДСТЕЖЕННЯ МОЛИТВИ';

  @override
  String get prayerTrackerPrayed => 'Помолився/лася';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count днів поспіль';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Усі молитви на сьогодні завершені. Нехай Аллах прийме.';

  @override
  String get dhikrTrackerTitle => 'ТАСБІХ АЛЬ-ЗАХРА';

  @override
  String get dhikrTrackerCompletedToday => 'Завершено сьогодні';

  @override
  String get dhikrTrackerNotDoneToday => 'Сьогодні не виконано';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count днів поспіль';
  }

  @override
  String get dhikrReminderTitle => 'Нагадування про тасбіх';

  @override
  String get dhikrReminderDescription =>
      'Ніжне щоденне нагадування читати ваш Тасбіх аль-Захра (SA).';

  @override
  String get dhikrReminderEnable => 'Увімкнути нагадування про тасбіх';

  @override
  String get dhikrReminderTimeLabel => 'Час нагадування';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Хадис дня';

  @override
  String get hadithLabelArabic => 'АРАБСЬКОЮ';

  @override
  String get hadithLabelTranslation => 'ПЕРЕКЛАД';

  @override
  String get hadithBadge => 'ХАДИС';

  @override
  String get hadithShare => 'Поділитися цим хадисом';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nЧерез Ayara';
  }

  @override
  String get hadithNavPrevious => 'Попередній';

  @override
  String get hadithNavNext => 'Наступний';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'Чотирнадцять Непомильних';

  @override
  String get imamsScreenSubtitle =>
      'Пророк, пані Фатіма та Дванадцять імамів — очищені та непомильні провідники в дванадцятому шиїзмі';

  @override
  String get imamLabelBorn => 'Народився';

  @override
  String get imamLabelMartyrdom => 'Мучеництво';

  @override
  String get imamLabelStatus => 'Статус';

  @override
  String get imamSectionBiography => 'БІОГРАФІЯ';

  @override
  String get imamSectionFamousSaying => 'ВІДОМИЙ ВИСЛІВ';

  @override
  String get imamRoleProphet => 'Останній Пророк';

  @override
  String get imamRoleInfallible => 'Безгрішний';

  @override
  String get imamOrdinal1 => '1-й Імам';

  @override
  String get imamOrdinal2 => '2-й Імам';

  @override
  String get imamOrdinal3 => '3-й Імам';

  @override
  String get imamOrdinal4 => '4-й Імам';

  @override
  String get imamOrdinal5 => '5-й Імам';

  @override
  String get imamOrdinal6 => '6-й Імам';

  @override
  String get imamOrdinal7 => '7-й Імам';

  @override
  String get imamOrdinal8 => '8-й Імам';

  @override
  String get imamOrdinal9 => '9-й Імам';

  @override
  String get imamOrdinal10 => '10-й Імам';

  @override
  String get imamOrdinal11 => '11-й Імам';

  @override
  String get imamOrdinal12 => '12-й Імам';

  @override
  String get duaAudioScreenTitle => 'Слухати дуа';

  @override
  String get duaAudioScreenSubtitle =>
      'Оберіть дуа для прослуховування. Торкніться плитки, щоб відтворити або призупинити.';

  @override
  String get duaAudioComingSoonMessage =>
      'Аудіо для цієї дуа буде доступне в наступному оновленні.';

  @override
  String get duaAudioClose => 'Закрити';

  @override
  String get duaAudioError =>
      'Не вдалося завантажити аудіо. Перевірте з’єднання.';

  @override
  String get duaAudioMetaTransmittedBy => 'Передано';

  @override
  String get duaAudioMetaOccasion => 'Подія';

  @override
  String get duaAudioMetaDuration => 'Тривалість';

  @override
  String get quickActionDailyHadith => 'Хадис дня';

  @override
  String get quickAction14Masumeen => 'Чотирнадцять Непомильних';

  @override
  String get quickActionListenDuas => 'Слухати';

  @override
  String get quickActionTasbihat => 'Посібник із молитви';

  @override
  String get pilgrimageSectionTitle => 'Священна подорож';

  @override
  String get pilgrimageSectionSubtitle =>
      'Повні путівники з хаджу та умри — паломництва до Священного Дому Аллаха в Меці';

  @override
  String get hajjCardTitle => 'Хадж';

  @override
  String get hajjCardSubtitle => 'П’ятий стовп ісламу';

  @override
  String get hajjCardDescription =>
      'Велике щорічне паломництво — обов’язкове раз у житті для кожного мусульманина, який має можливість';

  @override
  String get hajjScreenTitle => 'Посібник із хаджу';

  @override
  String get hajjScreenSubtitle => 'Покроковий путівник великого паломництва';

  @override
  String get umrahCardTitle => 'Умра';

  @override
  String get umrahCardSubtitle => 'Мале паломництво';

  @override
  String get umrahCardDescription =>
      'Глибоко благословенна духовна подорож, яку можна звершити в будь-яку пору року';

  @override
  String get umrahScreenTitle => 'Посібник з умри';

  @override
  String get umrahScreenSubtitle => 'Покроковий путівник малого паломництва';

  @override
  String get pilgrimageStepsTitle => 'Обряди та кроки';

  @override
  String get pilgrimageImportantNotesTitle => 'Важливі примітки';

  @override
  String get pilgrimageDuaTitle => 'Дуа для цього кроку';

  @override
  String get pilgrimageJafariNoteTitle => 'Примітка до фікху Джафірі';

  @override
  String get pilgrimageComplete => '✓ Завершено';

  @override
  String get pilgrimageMarkDone => 'Позначити як завершене';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done з $total кроків';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes хв';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Шиїтські паломники';

  @override
  String get pilgrimageShiaNoteBody =>
      'Багато шиїтських паломників також подорожують до Медини для зійарата Пророка Мухаммада (САВ) в Масджид аль-Набаві та могил у Джаннат аль-Бакі. Ці відвідування мають глибоке духовне значення, хоча самі по собі не є ритуалами Хаджу.';

  @override
  String get hajjIntro =>
      'Хадж — це п\'ята колона ісламу, обов\'язкова один раз у житті для кожного мусульманина, який фізично та фінансово здатний. Для більшості шиїтських паломників сьогодні це означає Хадж аль-Таматту\', який проводиться в місяці Дхуль-Хіджжа слідами пророка Ібрагім (АС), його сина Ісмаїла (АС) та пані Хаджар. Цей посібник слідує джафаритському опису ритуалів, в той час як зійарат у Медині залишається глибоко шанованою подорожжю перед або після Хаджу.';

  @override
  String get umrahIntro =>
      'Умра — це мале паломництво до Меки, і, на відміну від хаджу, її можна звершувати в будь-який час року. Хоча вона не є обов’язковою, вона приносить величезну духовну нагороду й вважається дуже рекомендованим актом поклоніння. Вона має кілька спільних обрядів із хаджем, але є коротшою і складається з чотирьох головних ритуалів.';

  @override
  String get voiceInputTitle => 'Голосовий ввід';

  @override
  String get voiceInputMicTitle => 'Мікрофон';

  @override
  String get voiceInputMicSubtitle =>
      'Говоріть своє запитання до Ask Ayara замість того, щоб друкувати.';

  @override
  String get voiceInputMicDenied => 'Доступ до мікрофону був відхилений.';

  @override
  String get voiceInputSpeak => 'Говорити замість';

  @override
  String get voiceInputListening => 'Слухаю…';

  @override
  String get voiceInputPermissionDenied =>
      'Для голосового вводу потрібен доступ до мікрофону.';
}
