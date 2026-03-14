// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Изберете своя език';

  @override
  String get languageSelectSub =>
      'Можете да промените това по-късно в Настройки';

  @override
  String get actionContinue => 'Продължи';

  @override
  String get languageSuggestedHeader => 'Препоръчани';

  @override
  String get languageAllHeader => 'Всички езици';

  @override
  String get languageSuggestedBadge => 'Препоръчани';

  @override
  String get languageSearchHint => 'Търсене…';

  @override
  String get planBasic => 'Стандартен';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Ежедневно напътствие';

  @override
  String get categorySlot02 => 'Иман и доверие';

  @override
  String get categorySlot03 => 'Размисъл за молитвата';

  @override
  String get categorySlot04 => 'Търпение и надежда';

  @override
  String get categorySlot05 => 'Търси прошка';

  @override
  String get categorySlot06 => 'Милост и състрадание';

  @override
  String get categorySlot07 => 'Сила на вярата';

  @override
  String get categorySlot08 => 'Благодарно сърце';

  @override
  String get categorySlot09 => 'Смисъл на живота';

  @override
  String get categorySlot10 => 'Семейни връзки';

  @override
  String get categorySlot11 => 'Вътрешен мир';

  @override
  String get categorySlot12 => 'Мъдростта на Пророка';

  @override
  String get categorySlot13 => 'Добър характер';

  @override
  String get categorySlot14 => 'Устоявай на изкушението';

  @override
  String get categorySlot15 => 'Вечерен зикр';

  @override
  String get categoryCustom => 'Личен размисъл';

  @override
  String get dhikrMeaningSubhanallah => 'Пречист е Аллах';

  @override
  String get dhikrMeaningAlhamdulillah => 'Цялата хвала принадлежи на Аллах';

  @override
  String get dhikrMeaningAllahuAkbar => 'Аллах е Най-велик';

  @override
  String get quranVerseHeartAtRest =>
      'Наистина, със споменаването на Аллах сърцата намират покой.';

  @override
  String get promptHint =>
      'Докоснете категория за ислямско напътствие и размисъл';

  @override
  String get currentLanguage => 'Текущ език';

  @override
  String get settingsLanguage => 'Езикови настройки';

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get chooseLanguage => 'Изберете своя език';

  @override
  String get continueCta => 'Продължи';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count думи',
      one: '$count дума',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Опции';

  @override
  String get newCta => 'Ново';

  @override
  String get actionsTitle => 'Какво бихте искали да направите?';

  @override
  String get copy => 'Копирай';

  @override
  String get share => 'Сподели';

  @override
  String get close => 'Затвори';

  @override
  String get copiedToast => 'Копирано в клипборда';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Неуспешно генериране на нов отговор';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nИскате ли да опитате отново?';
  }

  @override
  String get cancelCta => 'Отказ';

  @override
  String get retryCta => 'Опитай отново';

  @override
  String get authTitle => 'Създайте своя акаунт';

  @override
  String get continueAsGuest => 'Продължи като гост';

  @override
  String get signInGoogle => 'Влез с Google';

  @override
  String get signInApple => 'Влез с Apple';

  @override
  String get signInEmail => 'Влез с имейл';

  @override
  String get upgradeWithApple => 'Продължи с Apple';

  @override
  String get mustAccept =>
      'Трябва да приемете Условията и да потвърдите Политиката за поверителност.';

  @override
  String get termsLabel => 'Приемам Общите условия';

  @override
  String get privacyLabel => 'Прочетох Политиката за поверителност';

  @override
  String get marketingOptIn => 'Съгласявам се да получавам новини и оферти';

  @override
  String get openTerms => 'Общи условия';

  @override
  String get openPrivacy => 'Политика за поверителност';

  @override
  String get accountSection => 'Акаунт';

  @override
  String get guestMode => 'Режим гост';

  @override
  String get signedIn => 'Вписан';

  @override
  String get upgradeHint =>
      'Запазвайте своите размисли на всички устройства, като създадете акаунт.';

  @override
  String get upgradeWithGoogle => 'Продължи с Google';

  @override
  String get signOut => 'Изход';

  @override
  String get snackUpgraded => 'Акаунтът е надграден с Google ✅';

  @override
  String get snackSignedIn => 'Влязохте с Google ✅';

  @override
  String get snackSignedOut => 'Излязохте';

  @override
  String get snackSignedInApple => 'Влязохте с Apple ✅';

  @override
  String get snackSignedInGoogle => 'Влязохте с Google ✅';

  @override
  String get snackUpgradedApple => 'Акаунтът е надграден с Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Акаунтът е надграден с Google ✅';

  @override
  String get historyTitle => 'Предишни размисли';

  @override
  String get historyOpenCta => 'Предишни размисли';

  @override
  String get historyEmpty => 'Все още няма запазени размисли.';

  @override
  String get historyDeleteTitle => 'Изтриване на размисъла?';

  @override
  String get historyDeleteBody => 'Това ще премахне избрания елемент завинаги.';

  @override
  String get deleteCta => 'Изтрий';

  @override
  String get historyButton => 'Предишни размисли';

  @override
  String get historyEmptyTitle => 'Все още няма размисли';

  @override
  String get historyEmptyBody =>
      'Първо създайте нещо — запазените ви елементи ще се появят тук.';

  @override
  String get historyDelete => 'Изтрий';

  @override
  String get footerTitle => 'С Wilaya, Iman и Sabr';

  @override
  String get footerSubtitle => 'Една молитва наведнъж';

  @override
  String get genericErrorSnack =>
      'Нещо се обърка — моля, опитайте отново след малко.';

  @override
  String get upgradeAccountCta =>
      'Запазвайте размислите си на всички устройства – създайте акаунт';

  @override
  String get deleteAccount => 'Изтрий акаунта';

  @override
  String get exportData => 'Експортирай моите данни';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Спокойно 🐯\nAyara има нужда от момент преди следващото…';

  @override
  String get rateDailyLimit =>
      'Засега нямате повече размисли.\nВземете още размисли или надградете до Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Използвахте всичките си размисли.\nЗаредете още или надградете до Wilaya, за да продължите.';

  @override
  String get rateGraceCreditsExhausted =>
      'Засега нямате повече размисли.\nВземете още размисли или надградете до Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya отключва премиум функции, бъдещи категории и специална значка.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Размислите ви са изчерпани в момента. План: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Неуспешна проверка на размислите ви: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Нещо се обърка при проверката на размислите ви.';

  @override
  String get aiFallbackGeneric =>
      'Нещо се обърка — моля, опитайте отново след малко.';

  @override
  String get limitSectionTitle => 'Размисли';

  @override
  String get limitTodayLabel => 'Използване';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Оставащи размисли: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'План: $plan';
  }

  @override
  String get limitLoadingLabel => 'Зареждане…';

  @override
  String get limitLoadingLabelDescription =>
      'Показва се в картата за размисли, докато се извлича статистика за използване.';

  @override
  String get aiLimitTitle => 'Размисли';

  @override
  String get aiLimitSubtitle =>
      'Всеки отговор използва 1 размисъл. Стандартният план включва начални размисли. Wilaya отключва премиум категории и позволява допълнително зареждане.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total използвани размисли';
  }

  @override
  String get creditsSectionTitle => 'Размисли';

  @override
  String get creditsUsageLabel => 'Използване';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Оставащи размисли: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'План: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Зареждане…';

  @override
  String get creditsLoadingLabelDescription =>
      'Показва се, докато се извлича статистика за размислите.';

  @override
  String get creditsTitle => 'Размисли';

  @override
  String get creditsSubtitle =>
      'Всеки отговор използва 1 размисъл. Стандартният план включва начални размисли. Wilaya отключва премиум категории и позволява допълнително зареждане.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total използвани размисли';
  }

  @override
  String get settingsDeleteTitle => 'Изтриване на акаунт';

  @override
  String get settingsDeleteDescription =>
      'Изтрийте завинаги своя акаунт и всички свързани данни.';

  @override
  String get settingsDeleteButtonLabel => 'Изтрий моя акаунт';

  @override
  String get settingsDeleteDialogTitle => 'Да се изтрие ли акаунтът?';

  @override
  String get settingsDeleteDialogBody =>
      'Това действие е окончателно и не може да бъде отменено.\n\nВсички ваши чатове, история и информация за акаунта ще бъдат изтрити.';

  @override
  String get settingsDeleteDialogCancel => 'Отказ';

  @override
  String get settingsDeleteDialogConfirm => 'Изтрий';

  @override
  String get settingsFreeLimitUsedTitle => 'Началните размисли са използвани';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Началните размисли за това устройство са използвани. Надградете до Wilaya или купете още размисли, за да продължите.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Началните размисли са използвани';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Началните размисли за това устройство са използвани. Надградете до Wilaya или купете още размисли, за да продължите.';

  @override
  String get deviceBoundError =>
      'Това устройство вече е свързано с друг акаунт. Моля, влезте с първоначалния акаунт.';

  @override
  String get premiumTitle => 'Режим Wilaya';

  @override
  String get premiumSubtitleBasic => 'Отключете пълното изживяване с Ayara.';

  @override
  String get premiumSubtitlePremium =>
      'Вие сте с Wilaya. Имате нужда от още размисли?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Текущ план: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Размисли: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Покупките не са налични в момента.';

  @override
  String get premiumSignInToPurchase =>
      'Влезте, за да купите размисли или да отключите Wilaya.';

  @override
  String get premiumRestorePurchases => 'Възстанови покупки';

  @override
  String get premiumProcessing => 'Обработва се…';

  @override
  String get premiumRestoreHintTitle =>
      'Вече сте купили Wilaya или размисли на това устройство или на друго?';

  @override
  String get premiumRestoreHintBody =>
      'Възстановете покупките си, ако не се показват.';

  @override
  String get premiumBuyCredits200 => 'Купи 200 размисли';

  @override
  String get premiumBuyCredits400 => 'Купи 400 размисли';

  @override
  String get premiumBecomePremiumOneTime => 'Надгради до режим Wilaya';

  @override
  String get premiumTopupHint =>
      'С Wilaya можете да добавяте допълнителни размисли винаги когато имате нужда.';

  @override
  String get premiumUpgradeCta => 'Надгради';

  @override
  String get premiumRequiredForCategory =>
      'Тази категория е достъпна само за потребители на Wilaya. Надградете в Настройки, за да отключите цялото премиум съдържание.';

  @override
  String get premiumBenefitsBasic =>
      'Отключете Wilaya, за да получите допълнителни размисли, достъп до премиум категории и да продължите винаги, когато имате нужда от напътствие.';

  @override
  String get premiumBenefitsPremium =>
      'Вие сте в режим Wilaya. Ако размислите ви привършват, добавете още и продължете без прекъсване.';

  @override
  String get premiumButtonBecomePremium => 'Отключи Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Добави 1000 размисли';

  @override
  String get premiumBadge => 'Wilaya е активна';

  @override
  String get premiumLoadingStore => 'Зареждане на магазина…';

  @override
  String get premiumProductNotAvailable =>
      'Този продукт все още не е наличен в магазина. Моля, опитайте по-късно.';

  @override
  String get premiumPurchaseError =>
      'Нещо се обърка при покупката. Моля, опитайте отново.';

  @override
  String get premiumBuyCredits100 => 'Добави 100 размисли';

  @override
  String get premiumFeatureLocked =>
      'Отключете Wilaya за достъп до тази функция.';

  @override
  String get lockedCategoriesHint =>
      'Някои категории са запазени за членовете на Wilaya. Отключете ги, за да разгледате всеки размисъл по своя път.';

  @override
  String get freePlanBlockedTitle => 'Използвахте началните си размисли';

  @override
  String get freePlanBlockedBody =>
      'Вие сте на Стандартния план с начални размисли и сте достигнали лимита. За да продължите — и да отключите премиум категории — надградете до Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Вижте опциите за Wilaya по-долу';

  @override
  String get graceBlockedTitle => 'Използвахте началните си размисли';

  @override
  String get graceBlockedBody =>
      'Вие сте на Стандартния план с начални размисли и сте достигнали лимита. За да продължите — и да отключите премиум категории — надградете до Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Вижте опциите за Wilaya по-долу';

  @override
  String get rateGuestMustSignIn =>
      'Влезте, за да използвате Ayara и своите размисли.';

  @override
  String get guestNoCreditsTitle => 'Режим гост';

  @override
  String get guestNoCreditsBody =>
      'Като гост можете да разглеждате приложението, но не можете да използвате размисли. Влезте по-късно от Настройки, за да използвате размисли и да отключите покупки.';

  @override
  String get guestDialogContinue => 'Продължи';

  @override
  String get guestDialogLoginInstead => 'Влез вместо това';

  @override
  String get optionalLabel => 'по желание';

  @override
  String get accountDeleteSuccessTitle => 'Акаунтът е изтрит';

  @override
  String get accountDeleteSuccessBody =>
      'Вашият акаунт и свързаните с него данни бяха изтрити успешно.';

  @override
  String get accountDeleteSuccessClose => 'Затвори';

  @override
  String get accountDeleteErrorTitle => 'Акаунтът не можа да бъде изтрит';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Повторното удостоверяване беше отменено. Моля, влезте отново и опитайте пак да изтриете акаунта.';

  @override
  String get accountDeleteReauthRequired =>
      'Изтриването на акаунта изисква скорошно влизане. Моля, излезте, влезте отново и опитайте пак.';

  @override
  String get settingsDeletePermanentWarning =>
      'Това действие е окончателно и не може да бъде отменено. Всички данни, свързани с вашия акаунт, ще бъдат изтрити.';

  @override
  String get dailyGraceTitle => 'Ежедневно напътствие';

  @override
  String get dailyGraceScriptureLabel => 'СТИХ НА ДЕНЯ';

  @override
  String get dailyGraceSaintLabel => 'УЧЕН НА СЕДМИЦАТА';

  @override
  String get dailyGraceReflectionLabel => 'ВЕЧЕРЕН РАЗМИСЪЛ';

  @override
  String get dailyGraceCopiedToast => 'Стихът е копиран в клипборда';

  @override
  String get locationConsentLabel =>
      'Позволи на Ayara да използва местоположението ми за посоката на Кибла и времената за молитва';

  @override
  String get locationConsentHint =>
      'Използва се само за тези функции. Местоположението ви никога не се споделя и не се съхранява.';

  @override
  String get askPageTitle => 'Попитай Ayara';

  @override
  String get askPageDescription =>
      'Попитайте каквото и да е за вярата, молитвата, живота или ислямската практика и получете напътствие, основано на Корана и ученията на Ахл ал-Байт.';

  @override
  String get askPageInputHint => 'Напишете въпроса си тук…';

  @override
  String get askPageSubmitCta => 'Попитай';

  @override
  String get askPageInputEmptyError => 'Моля, първо напишете въпрос.';

  @override
  String get askResultYourQuestion => 'Вашият въпрос';

  @override
  String get guidancePageTitle => 'Кибла';

  @override
  String get qiblaFacingMecca => 'С лице към Мекка';

  @override
  String get qiblaCompassInstruction =>
      'Завъртете телефона си, докато златната стрелка сочи нагоре.\nТази посока сочи към Кибла (Мекка).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS сигналът е слаб. Излезте навън и докоснете „Опитай отново“.';

  @override
  String get qiblaRetry => 'Опитай отново';

  @override
  String get qiblaTitle => 'Посока на Кибла';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km км до Мекка';
  }

  @override
  String get qiblaLocationNeededTitle => 'Нужно е местоположение';

  @override
  String get qiblaLocationNeededBody =>
      'Разрешете достъп до местоположението, за да може Ayara да изчисли посоката на Кааба в Мекка, където и да се намирате.';

  @override
  String get qiblaOpenSettings => 'Отвори Настройки';

  @override
  String get qiblaCompassLoading => 'Намиране на позицията ви…';

  @override
  String get qiblaTowardMecca => 'Към Мекка';

  @override
  String get prayerTimesTitle => 'Времена за молитва';

  @override
  String get prayerTimesFajr => 'Фаджр';

  @override
  String get prayerTimesDhuhr => 'Зухр';

  @override
  String get prayerTimesAsr => 'Аср';

  @override
  String get prayerTimesMaghrib => 'Магриб';

  @override
  String get prayerTimesIsha => 'Иша';

  @override
  String get prayerTimesLocationNeededTitle => 'Нужно е местоположение';

  @override
  String get prayerTimesLocationNeededBody =>
      'Разрешете достъп до местоположението, за да може Ayara да изчисли точните времена за молитва за вашия град.';

  @override
  String get prayerTimesNextLabel => 'Следваща';

  @override
  String get prayerTimesDoneLabel => 'Готово';

  @override
  String get monthlyPrayerTimesTitle => 'Месечни времена за молитва';

  @override
  String get monthlyPrayerTimesViewButton => 'Виж целия месец';

  @override
  String get monthlyPrayerTimesNextMonth => 'Следващ месец';

  @override
  String get monthlyPrayerTimesDayHeader => 'Ден';

  @override
  String get sharePrayerTimes => 'Сподели времената за молитва';

  @override
  String get notificationsSectionTitle => 'Известия';

  @override
  String get notificationsSectionSubtitle =>
      'Напомняния за молитва, събития в календара и още';

  @override
  String get dailyReflectionReminderTitle => 'Ежедневен размисъл';

  @override
  String get dailyReflectionReminderDescription =>
      'Нежно ежедневно напомняне да отворите Ayara и да се свържете с вярата си.';

  @override
  String get dailyReflectionReminderEnable => 'Включи ежедневно напомняне';

  @override
  String get dailyReflectionReminderTimeLabel => 'Час на напомняне';

  @override
  String get prayerNotificationsTitle => 'Напомняния за молитва';

  @override
  String get prayerNotificationsDescription =>
      'Получавайте нежно напомняне преди всяко време за молитва, за да останете свързани през целия ден.';

  @override
  String get prayerNotificationsEnable => 'Включи напомняния за молитва';

  @override
  String get prayerNotificationsOpenSettings =>
      'Отвори настройките за известия';

  @override
  String get prayerNotificationsDenied => 'Известията са изключени';

  @override
  String get prayerNotificationsDeniedHint =>
      'Отидете в Настройки и разрешете известията за Ayara, за да получавате напомняния за времената за молитва.';

  @override
  String get notificationsConsentLabel =>
      'Разреши известия за времената за молитва';

  @override
  String get prayerNotifTitleFajr => '🌅 Фаджр — Сутрешна молитва';

  @override
  String get prayerNotifBodyFajr =>
      'Фаджр е молитвата на утрините на Ахл ал-Байт. Имам Али (AS) каза: Пази утринната молитва така, както пазиш най-ценния си аманат. Стани, пречисти се и застани пред Аллах.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Зухр — Обедна молитва';

  @override
  String get prayerNotifBodyDhuhr =>
      'Имамите от Ахл ал-Байт ценяха всеки миг на споменаване. Спри деня си, съчети Зухр с Аср при нужда и върни сърцето си към Аллах.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Аср — Следобедна молитва';

  @override
  String get prayerNotifBodyAsr =>
      'Пази молитвата, защото тя е заветът между теб и Аллах. Настъпи времето за Аср — не го оставяй да премине без споменаване.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Магриб — Залезна молитва';

  @override
  String get prayerNotifBodyMaghrib =>
      'Слънцето залезе — миг, който Ахл ал-Байт почитаха като свещен за молба. Извърши Магриб и вдигни ръце към Аллах в дуа, преди да започне нощта.';

  @override
  String get prayerNotifTitleIsha => '🌙 Иша — Нощна молитва';

  @override
  String get prayerNotifBodyIsha =>
      'Завърши деня си в близостта на Аллах. Имамите насърчаваха Салат ал-Лайл след Иша — но първо извърши своята Иша и завърши деня със споменаването Му.';

  @override
  String get outOfReflectionsBannerText => 'Използвахте всичките си размисли';

  @override
  String get outOfReflectionsBannerCta => 'Вземи още';

  @override
  String get dhikrPageTitle => 'Зикр';

  @override
  String get dhikrTapToCount => 'Докоснете кръга, за да броите';

  @override
  String get dhikrResetButton => 'Нулирай';

  @override
  String get dhikrComplete => 'МашаАллах';

  @override
  String get dhikrCompleteMessage =>
      'Завършихте 100 споменавания на Аллах. Нека бъдат светлина за сърцето ви.';

  @override
  String get disclaimerTitle => 'За напътствието в това приложение';

  @override
  String get disclaimerBody =>
      'Ayara предоставя ислямски размисли, напомняния и духовно съдържание в подкрепа на вашето лично пътуване във вярата, основано на Корана и ученията на Ахл ал-Байт. Това съдържание се предлага само за обща информативна и вдъхновяваща цел.\n\nAyara не замества квалифицираната религиозна ученост.\nНапътствието в това приложение не е заместител на квалифициран ислямски учен, марджа\' или теологично обучен учител. В шиитския ислям религиозното напътствие се основава на джафаритската школа по юриспруденция (фикх) и на традицията да се следва жив марджа\' (източник на подражание) — квалифициран юрист, чиито постановления насочват вярващите в религиозната практика. Ако имате въпроси относно религиозни постановления, халал и харам въпроси или лични религиозни задължения, моля, потърсете съвет от квалифициран марджа\' или учен във вашата общност.\n\nТова приложение не издава религиозни постановления.\nAyara не прави авторитетни определения по въпроси на фикх или лични религиозни задължения. Нищо тук не трябва да се приема като фетва или обвързващо религиозно указание.\n\nЦентралното място на Ахл ал-Байт.\nВ шиитския ислям Пророк Мухаммад ﷺ и неговото пречистено семейство — Ахл ал-Байт — са авторитетните водачи на ислямската общност след Корана. Дванадесетте имами от Ахл ал-Байт са божествено назначените тълкуватели на ислямското учение. Съдържанието в това приложение отразява тази традиция и се стреми да я почете вярно.\n\nОбщностни въпроси.\nТова приложение има за цел да насърчи ангажираността ви с вярата, като същевременно дълбоко уважава жизненоважната роля на вашата местна джамия, ислямски център и религиозна общност. Насърчаваме ви да поддържате връзка и да се учите от квалифицирани учители близо до вас.';

  @override
  String get disclaimerClose => 'Разбирам';

  @override
  String get disclaimerInfoTooltip => 'За напътствието в това приложение';

  @override
  String get disclaimerSettingsSubtitle =>
      'Само за обща информационна цел. Докоснете, за да прочетете пълния отказ от отговорност.';

  @override
  String get disclaimerSectionHeader => 'Отказ от отговорност за напътствието';

  @override
  String get navHome => 'Начало';

  @override
  String get navReflect => 'Размисъл';

  @override
  String get navDuas => 'Дуа';

  @override
  String get navCalendar => 'Календар';

  @override
  String get dashboardToday => 'ДНЕС';

  @override
  String get dashboardComingUp => 'Предстои';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'дни',
      one: 'ден',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Бърз достъп';

  @override
  String get quickActionQibla => 'Кибла';

  @override
  String get quickActionDhikr => 'Зикр';

  @override
  String get quickActionDailyGrace => 'Напътствие';

  @override
  String get quickActionPrayerTimes => 'Времена за молитва';

  @override
  String get askAyaraTitle => 'Попитай Ayara';

  @override
  String get askAyaraSubtitle =>
      'Задайте всеки ислямски въпрос и получете обмислен, насочващ отговор.';

  @override
  String get askAyaraHint => 'напр. Какво е значението на Рамадан?';

  @override
  String get askAyaraSubmit => 'Попитай';

  @override
  String get wisdomOfTheDayTitle => 'Мъдрост за деня';

  @override
  String get calendarScreenTitle => 'Ислямски календар';

  @override
  String get calendarUpcomingOccasions => 'Предстоящи събития';

  @override
  String get calendarOccasionRemindersTitle => 'Напомняния за събития';

  @override
  String get calendarOccasionRemindersHint =>
      'Известяване вечерта преди всяко събитие';

  @override
  String get calendarNotifPermissionDenied =>
      'Разрешението за известия е отказано. Активирайте го в настройките на устройството си.';

  @override
  String get calendarNoEvents => 'Не са намерени предстоящи събития.';

  @override
  String get calendarAddToPhone => 'До��ави в телефонния календар';

  @override
  String get calendarAddedToPhone => 'Добавено в календара';

  @override
  String get calendarCountdownToday => 'ДНЕС';

  @override
  String get calendarCountdownTomorrow => 'УТРЕ';

  @override
  String calendarCountdownDays(int days) {
    return 'след $days дни';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'яну';

  @override
  String get calendarMonthFeb => 'фев';

  @override
  String get calendarMonthMar => 'мар';

  @override
  String get calendarMonthApr => 'апр';

  @override
  String get calendarMonthMay => 'май';

  @override
  String get calendarMonthJun => 'юни';

  @override
  String get calendarMonthJul => 'юли';

  @override
  String get calendarMonthAug => 'авг';

  @override
  String get calendarMonthSep => 'сеп';

  @override
  String get calendarMonthOct => 'окт';

  @override
  String get calendarMonthNov => 'ное';

  @override
  String get calendarMonthDec => 'дек';

  @override
  String get calendarSeasonMuharramEarly => 'Дни на Мухаррам — помни Кербала';

  @override
  String get calendarSeasonAshura => 'Ашура — Я Хусейн (AS)';

  @override
  String get calendarSeasonMuharramLate => 'Мухаррам — дни на скръб и размисъл';

  @override
  String get calendarSeasonArbaeen => 'Арбаин — четиридесет дни на Хусейн';

  @override
  String get calendarSeasonRoadToArbaeen => 'Пътят към Арбаин';

  @override
  String get calendarSeasonMabath =>
      'Благословен Маб\'ат — зората на откровението';

  @override
  String get calendarSeasonMidShaban =>
      'Средата на Ша\'бан — рожден ден на Имам ал-Махди (AJ)';

  @override
  String get calendarSeasonRamadan => 'Рамадан мубарак — месецът на Корана';

  @override
  String get calendarSeasonGhadir => 'Честит Ид ал-Гадир!';

  @override
  String get hijriMonth1 => 'Мухаррам';

  @override
  String get hijriMonth2 => 'Сафар';

  @override
  String get hijriMonth3 => 'Раби ал-Аввал';

  @override
  String get hijriMonth4 => 'Раби ал-Тани';

  @override
  String get hijriMonth5 => 'Джумада ал-Ула';

  @override
  String get hijriMonth6 => 'Джумада ал-Тания';

  @override
  String get hijriMonth7 => 'Раджаб';

  @override
  String get hijriMonth8 => 'Ша\'бан';

  @override
  String get hijriMonth9 => 'Рамадан';

  @override
  String get hijriMonth10 => 'Шаввал';

  @override
  String get hijriMonth11 => 'Зу ал-Ка\'да';

  @override
  String get hijriMonth12 => 'Зу ал-Хиджа';

  @override
  String get duasScreenTitle => 'Дуа и зиярат';

  @override
  String get duasSearchHint => 'Търси дуа, зиярат…';

  @override
  String get duasFilterAll => 'Всички';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дуа и зиярат',
      one: '$count дуа',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Не са намерени дуа.';

  @override
  String get duaCategoryDaily => 'Ежедневни';

  @override
  String get duaCategoryWeekly => 'Седмични';

  @override
  String get duaCategoryOccasions => 'Поводи';

  @override
  String get duaCategoryZiyarat => 'Зиярат';

  @override
  String get duaCategoryTasbih => 'Тасбих';

  @override
  String get eventTypeBirth => 'Раждане';

  @override
  String get eventTypeMartyrdom => 'Мъченичество';

  @override
  String get eventTypeOccasion => 'Събитие';

  @override
  String get duaCopyTooltip => 'Копирай превода';

  @override
  String get duaToggleTransliteration => 'Транслитерация';

  @override
  String get duaToggleTranslation => 'Превод';

  @override
  String get duaAskAiLabel => 'Помоли Ayara да обясни тази дуа';

  @override
  String get duaAskAiLockedLabel => 'Попитай Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Обясненията на Ayara са достъпни за членовете на Wilaya. Надградете от Настройки.';

  @override
  String duaAiComingSoon(String name) {
    return 'Попитай Ayara за „$name“ — скоро!';
  }

  @override
  String get duaCopiedToast => 'Дуа е копирана в клипборда.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Аллах е Най-велик';

  @override
  String get tasbihAlhamdulillahMeaning => 'Цялата хвала принадлежи на Аллах';

  @override
  String get tasbihSubhanallahMeaning => 'Пречист е Аллах';

  @override
  String get tasbihResetTooltip => 'Нулирай';

  @override
  String get tasbihCompleteTitle => 'Тасбихът е завършен';

  @override
  String get tasbihCompleteMessage => 'Нека Аллах приеме вашия зикр.';

  @override
  String get tasbihTapHint => 'Докоснете навсякъде, за да броите';

  @override
  String get tasbihatScreenTitle => 'Наръчник за молитвата';

  @override
  String get tasbihatScreenSubtitle => 'ПРОСЛАВЯНИЯТА В МОЛИТВАТА';

  @override
  String get tasbihatScreenDescription =>
      'Пълен наръчник за прославянията, произнасяни по време и след ежедневните молитви — според традицията на Ахл ал-Байт (a).';

  @override
  String get tasbihatArba3Title => 'ТАСБИХАТ АЛ-АРБАА';

  @override
  String get tasbihatArba3Subtitle =>
      'Рецитира се по време на 3-тия и 4-тия рак\'ах';

  @override
  String get tasbihatArba3Info =>
      'В шиитската юриспруденция Тасбихат ал-Арбаа замества сура ал-Фатиха в 3-тия и 4-тия рак\'ах на Зухр, Аср, Магриб и Иша. Задължително (уаджиб) е да се рецитира веднъж, а препоръчително (мустахаб) — три пъти.';

  @override
  String get tasbihatArba3Translation =>
      'Пречист е Аллах · Цялата хвала е за Аллах\nНяма друг бог освен Аллах · Аллах е Най-велик';

  @override
  String get tasbihatArba3CompleteTitle => 'Рецитацията е завършена';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Нека молитвата ви бъде приета — Амин';

  @override
  String get tasbihatArba3TapHint => 'Докосвайте след всяка рецитация';

  @override
  String get tasbihatZahraSubtitle => 'След всяка молитва · 100 зърна';

  @override
  String get tasbihatZahraOriginLabel => 'Произход';

  @override
  String get tasbihatZahraHadith =>
      'Госпожа Фатима ал-Захра (sa) помолила Пророка ﷺ за слуга. Той казал: „Да не те насоча ли към нещо по-добро? Казвай Субханаллах 33 пъти, Алхамдулиллях 33 пъти и Аллаху Акбар 34 пъти след всяка молитва. Това е по-добро за теб от слуга.“';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwar, т. 85';

  @override
  String get tasbihatZahraOpenCounter => 'Отвори брояча за тасбих';

  @override
  String get tasbihatDuasTitle => 'ПРЕПОРЪЧИТЕЛНИ ДУА';

  @override
  String get tasbihatDuasSubtitle => 'След като завършите молитвата си';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Аят ал-Курси';

  @override
  String get tasbihatDuaAyatKursiWhen => 'След всяка задължителна молитва';

  @override
  String get tasbihatDuaAyatKursiSource => 'Сура ал-Бакара 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Който рецитира Аят ал-Курси след всяка задължителна молитва, нищо не стои между него и рая, освен смъртта. Имам ал-Бакир (a) казал, че това е сред най-великите айати в Корана.';

  @override
  String get tasbihatDuaSalawatTitle => 'Салават';

  @override
  String get tasbihatDuaSalawatWhen =>
      'След всяка молитва · запечатва всички молби';

  @override
  String get tasbihatDuaSalawatSource => 'Имам ал-Садик (a) — Al-Kafi';

  @override
  String get tasbihatDuaSalawatNote =>
      'Изпращането на благословии върху Пророка ﷺ и неговото пречистено семейство (Aal Muhammad) е препоръчително за завършване на всяка дуа. Имам ал-Садик (a) казал: „Всяка дуа остава задържана, докато не изпратите салават върху Мухаммад и неговото семейство.“';

  @override
  String get tasbihatDuaFarajTitle => 'Дуа ал-Фарадж';

  @override
  String get tasbihatDuaFarajWhen =>
      'След всяка молитва · за Имама на нашето време';

  @override
  String get tasbihatDuaFarajSource =>
      'Преподадена от Имам ал-Хасан ал-Аскари (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Дуа за повторната поява на Имам ал-Махди (af), дванадесетия Имам, преподадена от неговия баща. Рецитира се ежедневно от шиитските вярващи след всяка молитва като израз на преданост към живия Имам.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Тасбихът на госпожа Фатима';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'След Магриб и Иша · особено препоръчително';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Имам ал-Бакир (a) — Bihar al-Anwar';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Имам ал-Бакир (a) казал, че рецитирането на Тасбих ал-Захра след Иша преди сън е по-добро от 1000 рак\'а допълнителна молитва. Неговата светлина се издига към небесата.';

  @override
  String get tasbihFatimaGiftPre => 'Дар от Пророка';

  @override
  String get tasbihFatimaGiftPost => 'рецитира се след всяка молитва';

  @override
  String get prayerTrackerTitle => 'ПРОСЛЕДЯВАНЕ НА МОЛИТВАТА';

  @override
  String get prayerTrackerPrayed => 'Отслужена';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count дни поредица';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Всички молитви за днес са завършени. Нека Аллах приеме.';

  @override
  String get dhikrTrackerTitle => 'ТАСБИХ АЛ-ЗАХРА';

  @override
  String get dhikrTrackerCompletedToday => 'Завършен днес';

  @override
  String get dhikrTrackerNotDoneToday => 'Не е направен днес';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count дни поредица';
  }

  @override
  String get dhikrReminderTitle => 'Напомняне за тасбих';

  @override
  String get dhikrReminderDescription =>
      'Нежно ежедневно напомняне да рецитирате своя Тасбих ал-Захра (SA).';

  @override
  String get dhikrReminderEnable => 'Включи напомняне за тасбих';

  @override
  String get dhikrReminderTimeLabel => 'Час на напомняне';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Ежедневен хадис';

  @override
  String get hadithLabelArabic => 'АРАБСКИ';

  @override
  String get hadithLabelTranslation => 'ПРЕВОД';

  @override
  String get hadithBadge => 'ХАДИС';

  @override
  String get hadithShare => 'Сподели този хадис';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nЧрез Ayara';
  }

  @override
  String get hadithNavPrevious => 'Предишен';

  @override
  String get hadithNavNext => 'Следващ';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '14-те Масумеен';

  @override
  String get imamsScreenSubtitle =>
      'Пророкът, госпожа Фатима и дванадесетте Имами — безгрешните водачи на исляма';

  @override
  String get imamLabelBorn => 'Роден';

  @override
  String get imamLabelMartyrdom => 'Мъченичество';

  @override
  String get imamLabelStatus => 'Статус';

  @override
  String get imamSectionBiography => 'БИОГРАФИЯ';

  @override
  String get imamSectionFamousSaying => 'ИЗВЕСТНО ИЗРЕЧЕНИЕ';

  @override
  String get imamRoleProphet => 'Последният Пророк';

  @override
  String get imamRoleInfallible => 'Безгрешният';

  @override
  String get imamOrdinal1 => '1-ви Имам';

  @override
  String get imamOrdinal2 => '2-ри Имам';

  @override
  String get imamOrdinal3 => '3-ти Имам';

  @override
  String get imamOrdinal4 => '4-ти Имам';

  @override
  String get imamOrdinal5 => '5-ти Имам';

  @override
  String get imamOrdinal6 => '6-ти Имам';

  @override
  String get imamOrdinal7 => '7-ми Имам';

  @override
  String get imamOrdinal8 => '8-ми Имам';

  @override
  String get imamOrdinal9 => '9-ти Имам';

  @override
  String get imamOrdinal10 => '10-ти Имам';

  @override
  String get imamOrdinal11 => '11-ти Имам';

  @override
  String get imamOrdinal12 => '12-ти Имам';

  @override
  String get duaAudioScreenTitle => 'Слушай дуа';

  @override
  String get duaAudioScreenSubtitle =>
      'Изберете дуа за слушане. Докоснете плочката за пускане или пауза.';

  @override
  String get duaAudioComingSoonMessage =>
      'Аудиото за тази дуа ще бъде налично в следваща актуализация.';

  @override
  String get duaAudioClose => 'Затвори';

  @override
  String get duaAudioError =>
      'Аудиото не можа да се зареди. Моля, проверете връзката си.';

  @override
  String get duaAudioMetaTransmittedBy => 'Предадено от';

  @override
  String get duaAudioMetaOccasion => 'Повод';

  @override
  String get duaAudioMetaDuration => 'Продължителност';

  @override
  String get quickActionDailyHadith => 'Ежедневен хадис';

  @override
  String get quickAction14Masumeen => '14 Масумеен';

  @override
  String get quickActionListenDuas => 'Слушай';

  @override
  String get quickActionTasbihat => 'Наръчник за молитвата';

  @override
  String get pilgrimageSectionTitle => 'Свещеното пътуване';

  @override
  String get pilgrimageSectionSubtitle =>
      'Пълни ръководства за Хадж и Умра — поклонението до Свещения дом на Аллах в Мека';

  @override
  String get hajjCardTitle => 'Хадж';

  @override
  String get hajjCardSubtitle => 'Петият стълб на исляма';

  @override
  String get hajjCardDescription =>
      'Великото годишно поклонение — задължително веднъж в живота за всеки способен мюсюлманин';

  @override
  String get hajjScreenTitle => 'Наръчник за Хадж';

  @override
  String get hajjScreenSubtitle =>
      'Ръководство стъпка по стъпка за великото поклонение';

  @override
  String get umrahCardTitle => 'Умра';

  @override
  String get umrahCardSubtitle => 'Малкото поклонение';

  @override
  String get umrahCardDescription =>
      'Дълбоко възнаграждаващо духовно пътуване, което може да се извърши по всяко време на годината';

  @override
  String get umrahScreenTitle => 'Наръчник за Умра';

  @override
  String get umrahScreenSubtitle =>
      'Ръководство стъпка по стъпка за малкото поклонение';

  @override
  String get pilgrimageStepsTitle => 'Ритуали и стъпки';

  @override
  String get pilgrimageImportantNotesTitle => 'Важни бележки';

  @override
  String get pilgrimageDuaTitle => 'Дуа за тази стъпка';

  @override
  String get pilgrimageJafariNoteTitle => 'Забележка по Джафари Фикх';

  @override
  String get pilgrimageComplete => '✓ Завършено';

  @override
  String get pilgrimageMarkDone => 'Маркирай като завършено';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done от $total стъпки';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes мин';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Шиитски поклонници';

  @override
  String get pilgrimageShiaNoteBody =>
      'Шиитските поклонници традиционно пътуват и до Медина, за да посетят гроба на Пророка Мухаммад (SAW) в Масджид ал-Набауи и гробовете на Имамите в Джаннат ал-Баки. Тези посещения носят огромно духовно значение и се считат за неразделна част от пътуването за повечето шиитски мюсюлмани.';

  @override
  String get hajjIntro =>
      'Хадж е петият стълб на исляма, задължителен веднъж в живота за всеки мюсюлманин, който е физически и финансово способен. Извършва се през месец Зул-Хиджа и проследява стъпките на Пророк Ибрахим (AS), неговия син Исмаил (AS) и госпожа Хаджар. За шиитските мюсюлмани Хадж включва и дълбоката благословия да посетят местата на покой на Пророка (SAW) и Ахлул Байт в Медина.';

  @override
  String get umrahIntro =>
      'Умра е малкото поклонение до Мека и, за разлика от Хадж, може да се извърши по всяко време на годината. Макар да не е задължителна, тя носи огромна духовна награда и се счита за силно препоръчителен акт на поклонение. Тя споделя няколко ритуала с Хадж, но е по-кратка и се състои от четири основни обреда.';
}
