// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Macedonian (`mk`).
class AppLocalizationsMk extends AppLocalizations {
  AppLocalizationsMk([String locale = 'mk']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Изберете го вашиот јазик';

  @override
  String get languageSelectSub =>
      'Ова може да го промените подоцна во Поставки';

  @override
  String get actionContinue => 'Продолжи';

  @override
  String get languageSuggestedHeader => 'Предложени';

  @override
  String get languageAllHeader => 'Сите јазици';

  @override
  String get languageSuggestedBadge => 'Предложено';

  @override
  String get languageSearchHint => 'Пребарај…';

  @override
  String get planBasic => 'Стандард';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Дневно водство';

  @override
  String get categorySlot02 => 'Иман и доверба';

  @override
  String get categorySlot03 => 'Размислување за молитвата';

  @override
  String get categorySlot04 => 'Трпение и надеж';

  @override
  String get categorySlot05 => 'Барај прошка';

  @override
  String get categorySlot06 => 'Милост и сочувство';

  @override
  String get categorySlot07 => 'Сила на верата';

  @override
  String get categorySlot08 => 'Благодарно срце';

  @override
  String get categorySlot09 => 'Смисла на животот';

  @override
  String get categorySlot10 => 'Семејни врски';

  @override
  String get categorySlot11 => 'Внатрешен мир';

  @override
  String get categorySlot12 => 'Мудрост на Пратеникот';

  @override
  String get categorySlot13 => 'Добар карактер';

  @override
  String get categorySlot14 => 'Одолеј на искушението';

  @override
  String get categorySlot15 => 'Вечерен зикр';

  @override
  String get categoryCustom => 'Лично размислување';

  @override
  String get dhikrMeaningSubhanallah => 'Слава му на Аллах';

  @override
  String get dhikrMeaningAlhamdulillah =>
      'Сета благодарност му припаѓа на Аллах';

  @override
  String get dhikrMeaningAllahuAkbar => 'Аллах е Најголем';

  @override
  String get quranVerseHeartAtRest =>
      'Навистина, со спомнувањето на Аллах срцата наоѓаат мир.';

  @override
  String get promptHint =>
      'Допрете категорија за исламско водство и размислување';

  @override
  String get currentLanguage => 'Тековен јазик';

  @override
  String get settingsLanguage => 'Јазични поставки';

  @override
  String get settingsTitle => 'Поставки';

  @override
  String get chooseLanguage => 'Изберете го вашиот јазик';

  @override
  String get continueCta => 'Продолжи';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count зборови',
      one: '$count збор',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Опции';

  @override
  String get newCta => 'Ново';

  @override
  String get actionsTitle => 'Што би сакале да направите?';

  @override
  String get copy => 'Копирај';

  @override
  String get share => 'Сподели';

  @override
  String get close => 'Затвори';

  @override
  String get copiedToast => 'Копирано во привремената меморија';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Не можевме да создадеме нов одговор';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nДали сакате да се обидете повторно?';
  }

  @override
  String get cancelCta => 'Откажи';

  @override
  String get retryCta => 'Обиди се повторно';

  @override
  String get authTitle => 'Создајте ја вашата сметка';

  @override
  String get continueAsGuest => 'Продолжи како гостин';

  @override
  String get signInGoogle => 'Најави се со Google';

  @override
  String get signInApple => 'Најави се со Apple';

  @override
  String get signInEmail => 'Најави се со е-пошта';

  @override
  String get upgradeWithApple => 'Продолжи со Apple';

  @override
  String get mustAccept =>
      'Мора да ги прифатите Условите за користење и да ја потврдите Политиката за приватност.';

  @override
  String get termsLabel => 'Ги прифаќам Условите за користење';

  @override
  String get privacyLabel => 'Ја прочитав Политиката за приватност';

  @override
  String get marketingOptIn => 'Се согласувам да добивам новости и понуди';

  @override
  String get openTerms => 'Услови за користење';

  @override
  String get openPrivacy => 'Политика за приватност';

  @override
  String get accountSection => 'Сметка';

  @override
  String get guestMode => 'Режим за гости';

  @override
  String get signedIn => 'Најавен/а';

  @override
  String get upgradeHint =>
      'Зачувајте ги вашите размислувања на сите уреди со создавање сметка.';

  @override
  String get upgradeWithGoogle => 'Продолжи со Google';

  @override
  String get signOut => 'Одјави се';

  @override
  String get snackUpgraded => 'Сметката е надградена со Google ✅';

  @override
  String get snackSignedIn => 'Најавени сте со Google ✅';

  @override
  String get snackSignedOut => 'Одјавени сте';

  @override
  String get snackSignedInApple => 'Најавени сте со Apple ✅';

  @override
  String get snackSignedInGoogle => 'Најавени сте со Google ✅';

  @override
  String get snackUpgradedApple => 'Сметката е надградена со Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Сметката е надградена со Google ✅';

  @override
  String get historyTitle => 'Претходни размислувања';

  @override
  String get historyOpenCta => 'Претходни размислувања';

  @override
  String get historyEmpty => 'Сè уште нема зачувани размислувања.';

  @override
  String get historyDeleteTitle => 'Да се избрише размислувањето?';

  @override
  String get historyDeleteBody => 'Ова трајно ќе ја отстрани избраната ставка.';

  @override
  String get deleteCta => 'Избриши';

  @override
  String get historyButton => 'Претходни размислувања';

  @override
  String get historyEmptyTitle => 'Сè уште нема размислувања';

  @override
  String get historyEmptyBody =>
      'Прво создадете нешто — вашите зачувани ставки ќе се појават тука.';

  @override
  String get historyDelete => 'Избриши';

  @override
  String get footerTitle => 'Со Wilaya, Iman и Sabr';

  @override
  String get footerSubtitle => 'Една молитва во исто време';

  @override
  String get genericErrorSnack =>
      'Нешто тргна наопаку — ве молиме обидете се повторно по кратко време.';

  @override
  String get upgradeAccountCta =>
      'Зачувајте ги вашите размислувања на сите уреди – создадете сметка';

  @override
  String get deleteAccount => 'Избриши сметка';

  @override
  String get exportData => 'Извези ги моите податоци';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Полека тигре 🐯\nНа Ayara ѝ треба момент пред следното…';

  @override
  String get rateDailyLimit =>
      'Засега ви снема размислувања.\nДобијте повеќе размислувања или надградете на Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Ги искористивте сите ваши размислувања.\nДополнете или надградете на Wilaya за да продолжите.';

  @override
  String get rateGraceCreditsExhausted =>
      'Засега ви снема размислувања.\nДобијте повеќе размислувања или надградете на Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya отклучува премиум функции, идни категории и посебна значка.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Вашите размислувања моментално се потрошени. План: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Не можевме да ги провериме вашите размислувања: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Нешто тргна наопаку при проверката на вашите размислувања.';

  @override
  String get aiFallbackGeneric =>
      'Нешто тргна наопаку — ве молиме обидете се повторно по кратко време.';

  @override
  String get limitSectionTitle => 'Размислувања';

  @override
  String get limitTodayLabel => 'Користење';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Преостанати размислувања: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'План: $plan';
  }

  @override
  String get limitLoadingLabel => 'Се вчитува…';

  @override
  String get limitLoadingLabelDescription =>
      'Се прикажува на картичката за размислувања додека се презема статистиката за користење.';

  @override
  String get aiLimitTitle => 'Размислувања';

  @override
  String get aiLimitSubtitle =>
      'Секој одговор користи 1 размислување. Стандард вклучува почетни размислувања. Wilaya отклучува премиум категории и овозможува дополнување.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total искористени размислувања';
  }

  @override
  String get creditsSectionTitle => 'Размислувања';

  @override
  String get creditsUsageLabel => 'Користење';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Преостанати размислувања: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'План: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Се вчитува…';

  @override
  String get creditsLoadingLabelDescription =>
      'Се прикажува додека се презема статистиката за размислувањата.';

  @override
  String get creditsTitle => 'Размислувања';

  @override
  String get creditsSubtitle =>
      'Секој одговор користи 1 размислување. Стандард вклучува почетни размислувања. Wilaya отклучува премиум категории и овозможува дополнување.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total искористени размислувања';
  }

  @override
  String get settingsDeleteTitle => 'Избриши сметка';

  @override
  String get settingsDeleteDescription =>
      'Трајно избришете ја вашата сметка и сите поврзани податоци.';

  @override
  String get settingsDeleteButtonLabel => 'Избриши ја мојата сметка';

  @override
  String get settingsDeleteDialogTitle => 'Да се избрише сметката?';

  @override
  String get settingsDeleteDialogBody =>
      'Оваа акција е трајна и не може да се врати назад.\n\nСите ваши разговори, историја и информации за сметката ќе бидат избришани.';

  @override
  String get settingsDeleteDialogCancel => 'Откажи';

  @override
  String get settingsDeleteDialogConfirm => 'Избриши';

  @override
  String get settingsFreeLimitUsedTitle =>
      'Почетните размислувања се искористени';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Почетните размислувања за овој уред се искористени. Надградете на Wilaya или купете повеќе размислувања за да продолжите.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Почетните размислувања се искористени';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Почетните размислувања за овој уред се искористени. Надградете на Wilaya или купете повеќе размислувања за да продолжите.';

  @override
  String get deviceBoundError =>
      'Овој уред веќе е поврзан со друга сметка. Ве молиме најавете се со оригиналната сметка.';

  @override
  String get premiumTitle => 'Wilaya режим';

  @override
  String get premiumSubtitleBasic => 'Отклучете го целосното Ayara искуство.';

  @override
  String get premiumSubtitlePremium =>
      'Вие сте на Wilaya. Ви требаат повеќе размислувања?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Тековен план: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Размислувања: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable =>
      'Купувањата не се достапни во моментов.';

  @override
  String get premiumSignInToPurchase =>
      'Најавете се за да купите размислувања или да отклучите Wilaya.';

  @override
  String get premiumRestorePurchases => 'Врати купувања';

  @override
  String get premiumProcessing => 'Се обработува…';

  @override
  String get premiumRestoreHintTitle =>
      'Дали веќе купивте Wilaya или размислувања на овој или на друг уред?';

  @override
  String get premiumRestoreHintBody =>
      'Вратете ги купувањата ако не се прикажуваат.';

  @override
  String get premiumBuyCredits200 => 'Купи 200 размислувања';

  @override
  String get premiumBuyCredits400 => 'Купи 400 размислувања';

  @override
  String get premiumBecomePremiumOneTime => 'Надгради на Wilaya режим';

  @override
  String get premiumTopupHint =>
      'Со Wilaya можете да дополнувате со дополнителни размислувања секогаш кога ќе ви затребаат.';

  @override
  String get premiumUpgradeCta => 'Надгради';

  @override
  String get premiumRequiredForCategory =>
      'Оваа категорија е достапна само за корисници на Wilaya. Надградете во Поставки за да ја отклучите целата премиум содржина.';

  @override
  String get premiumBenefitsBasic =>
      'Отклучете Wilaya за да добиете дополнителни размислувања, пристап до премиум категории и да продолжите кога ви треба водство.';

  @override
  String get premiumBenefitsPremium =>
      'Вие сте во Wilaya режим. Ако ви се намалуваат, додадете уште размислувања и продолжете без прекини.';

  @override
  String get premiumButtonBecomePremium => 'Отклучи Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Додади 1000 размислувања';

  @override
  String get premiumBadge => 'Wilaya е активна';

  @override
  String get premiumLoadingStore => 'Се вчитува продавницата…';

  @override
  String get premiumProductNotAvailable =>
      'Овој производ сè уште не е достапен во продавницата. Обидете се повторно подоцна.';

  @override
  String get premiumPurchaseError =>
      'Нешто тргна наопаку со купувањето. Обидете се повторно.';

  @override
  String get premiumBuyCredits100 => 'Додади 100 размислувања';

  @override
  String get premiumFeatureLocked =>
      'Отклучете Wilaya за да пристапите до оваа функција.';

  @override
  String get lockedCategoriesHint =>
      'Некои категории се резервирани за членови на Wilaya. Отклучете ги за да го истражите секое размислување на вашето патување.';

  @override
  String get freePlanBlockedTitle =>
      'Ги искористивте вашите почетни размислувања';

  @override
  String get freePlanBlockedBody =>
      'Вие сте на Стандард план со почетни размислувања и го достигнавте лимитот. За да продолжите — и да ги отклучите премиум категориите — надградете на Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium =>
      'Погледнете ги опците за Wilaya подолу';

  @override
  String get graceBlockedTitle => 'Ги искористивте вашите почетни размислувања';

  @override
  String get graceBlockedBody =>
      'Вие сте на Стандард план со почетни размислувања и го достигнавте лимитот. За да продолжите — и да ги отклучите премиум категориите — надградете на Wilaya.';

  @override
  String get graceBlockedCtaGoPremium =>
      'Погледнете ги опците за Wilaya подолу';

  @override
  String get rateGuestMustSignIn =>
      'Најавете се за да ги користите Ayara и вашите размислувања.';

  @override
  String get guestNoCreditsTitle => 'Режим за гости';

  @override
  String get guestNoCreditsBody =>
      'Како гостин можете да ја прелистувате апликацијата, но не можете да користите размислувања. Најавете се подоцна во Поставки за да користите размислувања и да ги отклучите купувањата.';

  @override
  String get guestDialogContinue => 'Продолжи';

  @override
  String get guestDialogLoginInstead => 'Најави се наместо тоа';

  @override
  String get optionalLabel => 'опционално';

  @override
  String get accountDeleteSuccessTitle => 'Сметката е избришана';

  @override
  String get accountDeleteSuccessBody =>
      'Вашата сметка и поврзаните податоци се успешно избришани.';

  @override
  String get accountDeleteSuccessClose => 'Затвори';

  @override
  String get accountDeleteErrorTitle => 'Не можевме да ја избришеме сметката';

  @override
  String get accountDeleteErrorClose => 'Во ред';

  @override
  String get accountDeleteReauthCancelled =>
      'Повторната автентикација беше откажана. Ве молиме најавете се повторно и обидете се со бришењето уште еднаш.';

  @override
  String get accountDeleteReauthRequired =>
      'За бришење на сметката е потребна неодамнешна најава. Ве молиме одјавете се, најавете се повторно и обидете се уште еднаш.';

  @override
  String get settingsDeletePermanentWarning =>
      'Оваа акција е трајна и не може да се врати назад. Сите податоци поврзани со вашата сметка ќе бидат избришани.';

  @override
  String get dailyGraceTitle => 'Дневно водство';

  @override
  String get dailyGraceScriptureLabel => 'АЈЕТ НА ДЕНОТ';

  @override
  String get dailyGraceSaintLabel => 'УЧЕНИОТ НА НЕДЕЛАТА';

  @override
  String get dailyGraceReflectionLabel => 'ВЕЧЕРНО РАЗМИСЛУВАЊЕ';

  @override
  String get dailyGraceCopiedToast =>
      'Ајетот е копиран во привремената меморија';

  @override
  String get locationConsentLabel =>
      'Дозволи Ayara да ја користи мојата локација за насока на Кибла и времиња за намаз';

  @override
  String get locationConsentHint =>
      'Се користи само за овие функции. Вашата локација никогаш не се споделува и не се зачувува.';

  @override
  String get askPageTitle => 'Прашај ја Ayara';

  @override
  String get askPageDescription =>
      'Прашајте што било за верата, молитвата, животот или исламската пракса и добијте водство засновано на Куранот и учењата на Ахл ал-Бајт.';

  @override
  String get askPageInputHint => 'Напишете го вашето прашање тука…';

  @override
  String get askPageSubmitCta => 'Прашај';

  @override
  String get askPageInputEmptyError => 'Ве молиме прво напишете прашање.';

  @override
  String get askResultYourQuestion => 'Вашето прашање';

  @override
  String get guidancePageTitle => 'Кибла';

  @override
  String get qiblaFacingMecca => 'Свртено кон Мека';

  @override
  String get qiblaCompassInstruction =>
      'Завртете го телефонот додека златната игла не покаже нагоре.\nТаа насока покажува кон Кибла (Мека).';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS сигналот е слаб. Излезете надвор и допрете Обиди се повторно.';

  @override
  String get qiblaRetry => 'Обиди се повторно';

  @override
  String get qiblaTitle => 'Насока на Кибла';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km км до Мека';
  }

  @override
  String get qiblaLocationNeededTitle => 'Потребна е локација';

  @override
  String get qiblaLocationNeededBody =>
      'Дозволете пристап до локацијата за Ayara да може да ја пресмета насоката кон Каба во Мека од каде и да се наоѓате.';

  @override
  String get qiblaOpenSettings => 'Отвори Поставки';

  @override
  String get qiblaCompassLoading => 'Ја пронаоѓаме вашата позиција…';

  @override
  String get qiblaTowardMecca => 'Кон Мека';

  @override
  String get prayerTimesTitle => 'Времиња за намаз';

  @override
  String get prayerTimesFajr => 'Фаџр';

  @override
  String get prayerTimesDhuhr => 'Зухр';

  @override
  String get prayerTimesAsr => 'Аср';

  @override
  String get prayerTimesMaghrib => 'Магриб';

  @override
  String get prayerTimesIsha => 'Иша';

  @override
  String get prayerTimesLocationNeededTitle => 'Потребна е локација';

  @override
  String get prayerTimesLocationNeededBody =>
      'Дозволете пристап до локацијата за Ayara да може да ги пресмета точните времиња за намаз за вашиот град.';

  @override
  String get prayerTimesNextLabel => 'Следно';

  @override
  String get prayerTimesDoneLabel => 'Завршено';

  @override
  String get monthlyPrayerTimesTitle => 'Месечни времиња за намаз';

  @override
  String get monthlyPrayerTimesViewButton => 'Прикажи го целиот месец';

  @override
  String get monthlyPrayerTimesNextMonth => 'Следен месец';

  @override
  String get monthlyPrayerTimesDayHeader => 'Ден';

  @override
  String get sharePrayerTimes => 'Сподели времиња за намаз';

  @override
  String get notificationsSectionTitle => 'Известувања';

  @override
  String get notificationsSectionSubtitle =>
      'Потсетници за намаз, календарски настани и повеќе';

  @override
  String get dailyReflectionReminderTitle => 'Дневно размислување';

  @override
  String get dailyReflectionReminderDescription =>
      'Нежен дневен потсетник да ја отворите Ayara и да се поврзете со вашата вера.';

  @override
  String get dailyReflectionReminderEnable => 'Вклучи дневен потсетник';

  @override
  String get dailyReflectionReminderTimeLabel => 'Време на потсетник';

  @override
  String get prayerNotificationsTitle => 'Потсетници за намаз';

  @override
  String get prayerNotificationsDescription =>
      'Добивајте нежен потсетник пред секое време за намаз за да останете поврзани во текот на денот.';

  @override
  String get prayerNotificationsEnable => 'Вклучи потсетници за намаз';

  @override
  String get prayerNotificationsOpenSettings =>
      'Отвори поставки за известувања';

  @override
  String get prayerNotificationsDenied => 'Известувањата се исклучени';

  @override
  String get prayerNotificationsDeniedHint =>
      'Одете во Поставки и дозволете известувања за Ayara за да добивате потсетници за времињата за намаз.';

  @override
  String get notificationsConsentLabel =>
      'Дозволи известувања за времињата за намаз';

  @override
  String get prayerNotifTitleFajr => '🌅 Фаџр — Утринска молитва';

  @override
  String get prayerNotifBodyFajr =>
      'Фаџр е молитвата на утрата на Ахл ал-Бајт. Имам Али (а.с.) рекол: Чувај ја утринската молитва како што го чуваш својот најскапоцен аманет. Стани, очисти се и застани пред Аллах.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Зухр — Пладневна молитва';

  @override
  String get prayerNotifBodyDhuhr =>
      'Имамите на Ахл ал-Бајт го ценеле секој миг на спомнување. Направете пауза во денот, спојте ги Зухр и Аср ако е потребно, и вратете го срцето кон Аллах.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Аср — Попладневна молитва';

  @override
  String get prayerNotifBodyAsr =>
      'Чувај ја молитвата, зашто таа е заветот меѓу тебе и Аллах. Времето за Аср дојде — не дозволувај да помине без спомнување.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Магриб — Зајдисонце молитва';

  @override
  String get prayerNotifBodyMaghrib =>
      'Сонцето зајде — момент што Ахл ал-Бајт го сметале за свет за дови. Извршете Магриб и кренете ги рацете кон Аллах во дова пред да започне ноќта.';

  @override
  String get prayerNotifTitleIsha => '🌙 Иша — Ноќна молитва';

  @override
  String get prayerNotifBodyIsha =>
      'Завршете го денот во друштво на Аллах. Имамите го поттикнувале Салат ал-Лајл по Иша — но најпрво завршете ја Иша и затворете го денот со Неговото спомнување.';

  @override
  String get outOfReflectionsBannerText =>
      'Ги искористивте сите ваши размислувања';

  @override
  String get outOfReflectionsBannerCta => 'Земи повеќе';

  @override
  String get dhikrPageTitle => 'Зикр';

  @override
  String get dhikrTapToCount => 'Допрете го кругот за броење';

  @override
  String get dhikrResetButton => 'Ресетирај';

  @override
  String get dhikrComplete => 'Маша\'Аллах';

  @override
  String get dhikrCompleteMessage =>
      'Завршивте 100 спомнувања на Аллах. Нека бидат светлина за вашето срце.';

  @override
  String get disclaimerTitle => 'За водството во оваа апликација';

  @override
  String get disclaimerBody =>
      'Ayara обезбедува исламски размислувања, потсетници и духовна содржина за да го поддржи вашето лично патување на верата, втемелено во Куранот и учењата на Ахл ал-Бајт. Оваа содржина се нуди само за општи информативни и инспиративни цели.\n\nAyara не ја заменува квалификуваната ученост.\nВодството во оваа апликација не е замена за учен исламски научник, марџа\' или теолошки обучен учител. Во шиитскиот ислам, верското водство е втемелено во џа\'фариската школа на јуриспруденција (фикх) и во традицијата на следење жив Марџа\' (извор на подражавање) — квалификуван правник чии одлуки ги водат верниците во верската практика. Ако имате прашања за верски одлуки, халал и харам прашања, или лични верски обврски, ве молиме побарајте совет од квалификуван Марџа\' или научник во вашата заедница.\n\nОваа апликација не издава верски пресуди.\nAyara не прави авторитативни одредувања за прашања од фикх или лични верски обврски. Ништо овде не треба да се третира како фетва или обврзувачка верска инструкција.\n\nЦентралноста на Ахл ал-Бајт.\nВо шиитскиот ислам, Пратеникот Мухамед ﷺ и неговото прочистено домаќинство — Ахл ал-Бајт — се авторитативните водачи на исламската заедница по Куранот. Дванаесетте Имами од Ахл ал-Бајт се божествено назначени толкувачи на исламското учење. Содржината во оваа апликација ја одразува таа традиција и настојува верно да ја почитува.\n\nПрашања на заедницата.\nОваа апликација има цел да го поттикне вашето вклучување во верата, со длабока почит кон важната улога на вашата локална џамија, исламски центар и верска заедница. Ве охрабруваме да останете поврзани и да учите од квалификувани учители во ваша близина.';

  @override
  String get disclaimerClose => 'Разбирам';

  @override
  String get disclaimerInfoTooltip => 'За водството во оваа апликација';

  @override
  String get disclaimerSettingsSubtitle =>
      'Само за општи информативни цели. Допрете за да го прочитате целосното објаснување.';

  @override
  String get disclaimerSectionHeader =>
      'Одрекување од одговорност за водството';

  @override
  String get navHome => 'Почетна';

  @override
  String get navReflect => 'Размислувај';

  @override
  String get navDuas => 'Дови';

  @override
  String get navCalendar => 'Календар';

  @override
  String get dashboardToday => 'ДЕНЕС';

  @override
  String get dashboardComingUp => 'Следува';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'дена',
      one: 'ден',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Брз пристап';

  @override
  String get quickActionQibla => 'Кибла';

  @override
  String get quickActionDhikr => 'Зикр';

  @override
  String get quickActionDailyGrace => 'Водство';

  @override
  String get quickActionPrayerTimes => 'Времиња за намаз';

  @override
  String get askAyaraTitle => 'Прашај ја Ayara';

  @override
  String get askAyaraSubtitle =>
      'Поставете кое било исламско прашање и добијте внимателен, водечки одговор.';

  @override
  String get askAyaraHint => 'на пр. Кое е значењето на Рамазан?';

  @override
  String get askAyaraSubmit => 'Прашај';

  @override
  String get wisdomOfTheDayTitle => 'Мудрост на денот';

  @override
  String get calendarScreenTitle => 'Исламски календар';

  @override
  String get calendarUpcomingOccasions => 'Претстојни настани';

  @override
  String get calendarOccasionRemindersTitle => 'Потсетници за настани';

  @override
  String get calendarOccasionRemindersHint =>
      'Известување вечерта пред секој настан';

  @override
  String get calendarNotifPermissionDenied =>
      'Дозволата за известувања е одбиена. Овозможете ја во поставките на вашиот уред.';

  @override
  String get calendarNoEvents => 'Не се пронајдени претстојни настани.';

  @override
  String get calendarAddToPhone => 'Додај во телефонскиот календар';

  @override
  String get calendarAddedToPhone => 'Додадено во календарот';

  @override
  String get calendarCountdownToday => 'ДЕНЕС';

  @override
  String get calendarCountdownTomorrow => 'УТРЕ';

  @override
  String calendarCountdownDays(int days) {
    return 'за $days дена';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Јан';

  @override
  String get calendarMonthFeb => 'Фев';

  @override
  String get calendarMonthMar => 'Мар';

  @override
  String get calendarMonthApr => 'Апр';

  @override
  String get calendarMonthMay => 'Мај';

  @override
  String get calendarMonthJun => 'Јун';

  @override
  String get calendarMonthJul => 'Јул';

  @override
  String get calendarMonthAug => 'Авг';

  @override
  String get calendarMonthSep => 'Сеп';

  @override
  String get calendarMonthOct => 'Окт';

  @override
  String get calendarMonthNov => 'Ное';

  @override
  String get calendarMonthDec => 'Дек';

  @override
  String get calendarSeasonMuharramEarly =>
      'Денови на Мухарем — сеќавање на Карбала';

  @override
  String get calendarSeasonAshura => 'Ашура — Ја Хусејн (а.с.)';

  @override
  String get calendarSeasonMuharramLate =>
      'Мухарем — денови на жалост и размислување';

  @override
  String get calendarSeasonArbaeen => 'Арбаин — четириесет дена на Хусејн';

  @override
  String get calendarSeasonRoadToArbaeen => 'Патот кон Арбаин';

  @override
  String get calendarSeasonMabath => 'Маб\'ат мубарак — зората на објавата';

  @override
  String get calendarSeasonMidShaban =>
      'Средина на Ша\'бан — роденден на Имам ал-Махди (AJ)';

  @override
  String get calendarSeasonRamadan => 'Рамазан мубарак — месецот на Куранот';

  @override
  String get calendarSeasonGhadir => 'Еид ал-Гадир мубарак!';

  @override
  String get hijriMonth1 => 'Мухарем';

  @override
  String get hijriMonth2 => 'Сафар';

  @override
  String get hijriMonth3 => 'Раби\' ал-Аввал';

  @override
  String get hijriMonth4 => 'Раби\' ал-Тани';

  @override
  String get hijriMonth5 => 'Џумада ал-Аввал';

  @override
  String get hijriMonth6 => 'Џумада ал-Тани';

  @override
  String get hijriMonth7 => 'Раџаб';

  @override
  String get hijriMonth8 => 'Ша\'бан';

  @override
  String get hijriMonth9 => 'Рамазан';

  @override
  String get hijriMonth10 => 'Шавал';

  @override
  String get hijriMonth11 => 'Зу ал-Ка\'да';

  @override
  String get hijriMonth12 => 'Зу ал-Хиџа';

  @override
  String get duasScreenTitle => 'Дови и Зијарат';

  @override
  String get duasSearchHint => 'Пребарај дови, зијарат…';

  @override
  String get duasFilterAll => 'Сите';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дови и зијарат',
      one: '$count дова',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'Не се пронајдени дови.';

  @override
  String get duaCategoryDaily => 'Дневни';

  @override
  String get duaCategoryWeekly => 'Неделни';

  @override
  String get duaCategoryOccasions => 'Настани';

  @override
  String get duaCategoryZiyarat => 'Зијарат';

  @override
  String get duaCategoryTasbih => 'Тасбих';

  @override
  String get eventTypeBirth => 'Ражање';

  @override
  String get eventTypeMartyrdom => 'Мачеништво';

  @override
  String get eventTypeOccasion => 'Настан';

  @override
  String get duaCopyTooltip => 'Копирај превод';

  @override
  String get duaToggleTransliteration => 'Транслитерација';

  @override
  String get duaToggleTranslation => 'Превод';

  @override
  String get duaAskAiLabel => 'Побарај од Ayara да ја објасни оваа дова';

  @override
  String get duaAskAiLockedLabel => 'Прашај ја Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Објаснувањата на Ayara се достапни за членовите на Wilaya. Надградете во Поставки.';

  @override
  String duaAiComingSoon(String name) {
    return 'Прашај ја Ayara за „$name“ — наскоро!';
  }

  @override
  String get duaCopiedToast => 'Довата е копирана во привремената меморија.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Аллах е Најголем';

  @override
  String get tasbihAlhamdulillahMeaning =>
      'Сета благодарност му припаѓа на Аллах';

  @override
  String get tasbihSubhanallahMeaning => 'Слава му на Аллах';

  @override
  String get tasbihResetTooltip => 'Ресетирај';

  @override
  String get tasbihCompleteTitle => 'Тасбихот е завршен';

  @override
  String get tasbihCompleteMessage => 'Нека Аллах го прифати вашиот зикр.';

  @override
  String get tasbihTapHint => 'Допрете каде било за броење';

  @override
  String get tasbihatScreenTitle => 'Водич за молитва';

  @override
  String get tasbihatScreenSubtitle => 'СЛАВЕЊАТА НА МОЛИТВАТА';

  @override
  String get tasbihatScreenDescription =>
      'Целосен водич за славењата што се кажуваат за време и по дневните молитви — според традицијата на Ахл ал-Бајт (а).';

  @override
  String get tasbihatArba3Title => 'ТАСБИХАТ АЛ-АРБАʿА';

  @override
  String get tasbihatArba3Subtitle => 'Се рецитира во 3-тиот и 4-тиот ракʿах';

  @override
  String get tasbihatArba3Info =>
      'Во шиитската јуриспруденција, Тасбихат ал-Арбаʿа ја заменува Сура ал-Фатиха во 3-тиот и 4-тиот ракʿах на Зухр, Аср, Магриб и Иша. Обврзно е (ваџиб) да се рецитира еднаш, а препорачано (мустахаб) е да се рецитира трипати.';

  @override
  String get tasbihatArba3Translation =>
      'Слава му на Аллах · Сета благодарност му припаѓа на Аллах\nНема друг бог освен Аллах · Аллах е Најголем';

  @override
  String get tasbihatArba3CompleteTitle => 'Рецитирањето е завршено';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Нека вашата молитва биде прифатена — Амин';

  @override
  String get tasbihatArba3TapHint => 'Допрете по секое рецитирање';

  @override
  String get tasbihatZahraSubtitle => 'По секоја молитва · 100 зрнца';

  @override
  String get tasbihatZahraOriginLabel => 'Потекло';

  @override
  String get tasbihatZahraHadith =>
      'Госпоѓа Фатима ал-Захра (са) побарала од Пратеникот ﷺ слуга. Тој рекол: „Да не те упатам ли кон нешто подобро? Кажувај Subḥānallāh 33 пати, Alḥamdulillāh 33 пати и Allāhu Akbar 34 пати по секоја молитва. Тоа е подобро за тебе од слуга.“';

  @override
  String get tasbihatZahraHadithSource => '— Бихар ал-Анвар, том 85';

  @override
  String get tasbihatZahraOpenCounter => 'Отвори бројач за Тасбих';

  @override
  String get tasbihatDuasTitle => 'ПРЕПОРАЧАНИ ДОВИ';

  @override
  String get tasbihatDuasSubtitle => 'По завршување на вашата молитва';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Ајат ал-Курси';

  @override
  String get tasbihatDuaAyatKursiWhen => 'По секоја задолжителна молитва';

  @override
  String get tasbihatDuaAyatKursiSource => 'Сура ал-Бакара 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Кој го рецитира Ајат ал-Курси по секоја задолжителна молитва, ништо не стои меѓу него и рајот освен смртта. Имам ал-Бакир (а) рекол дека тоа е еден од најголемите ајети во Куранот.';

  @override
  String get tasbihatDuaSalawatTitle => 'Салават';

  @override
  String get tasbihatDuaSalawatWhen =>
      'По секоја молитва · ги запечатува сите дови';

  @override
  String get tasbihatDuaSalawatSource => 'Имам ал-Садик (а) — Ал-Кафи';

  @override
  String get tasbihatDuaSalawatNote =>
      'Испраќањето благослови врз Пратеникот ﷺ и неговото прочистено семејство (Ал Мухаммад) е препорачано за да се запечати секоја дова. Имам ал-Садик (а) рекол: „Секоја дова останува суспендирана сè додека не испратиш салават врз Мухаммад и неговото семејство.“';

  @override
  String get tasbihatDuaFarajTitle => 'Дуʿа ал-Фараџ';

  @override
  String get tasbihatDuaFarajWhen =>
      'По секоја молитва · за Имамот на нашето време';

  @override
  String get tasbihatDuaFarajSource =>
      'Поучена од Имам ал-Хасан ал-ʿАскари (а)';

  @override
  String get tasbihatDuaFarajNote =>
      'Дова за повторното појавување на Имам ал-Махди (аф), дванаесеттиот Имам, поучена од неговиот татко. Шиитските верници ја рецитираат секојдневно по секоја молитва како чин на посветеност кон живиот Имам.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Тасбихот на Госпоѓа Фатима';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'По Магриб и Иша · особено препорачано';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Имам ал-Бакир (а) — Бихар ал-Анвар';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Имам ал-Бакир (а) рекол дека рецитирањето на Тасбих ал-Захра по Иша пред спиење е подобро од 1000 ракʿах доброволна молитва. Нејзината светлина се издигнува до небесата.';

  @override
  String get tasbihFatimaGiftPre => 'Подарок од Пратеникот';

  @override
  String get tasbihFatimaGiftPost => 'се рецитира по секоја молитва';

  @override
  String get prayerTrackerTitle => 'СЛЕДЕЊЕ НА МОЛИТВА';

  @override
  String get prayerTrackerPrayed => 'Извршена';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count дена по ред';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Сите молитви за денес се завршени. Нека Аллах ги прифати.';

  @override
  String get dhikrTrackerTitle => 'ТАСБИХ АЛ-ЗАХРА';

  @override
  String get dhikrTrackerCompletedToday => 'Завршено денес';

  @override
  String get dhikrTrackerNotDoneToday => 'Не е направено денес';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count дена по ред';
  }

  @override
  String get dhikrReminderTitle => 'Потсетник за Тасбих';

  @override
  String get dhikrReminderDescription =>
      'Нежен дневен потсетник да го рецитирате вашиот Тасбих ал-Захра (СА).';

  @override
  String get dhikrReminderEnable => 'Вклучи потсетник за Тасбих';

  @override
  String get dhikrReminderTimeLabel => 'Време на потсетник';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Дневен хадис';

  @override
  String get hadithLabelArabic => 'АРАПСКИ';

  @override
  String get hadithLabelTranslation => 'ПРЕВОД';

  @override
  String get hadithBadge => 'ХАДИС';

  @override
  String get hadithShare => 'Сподели го овој хадис';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nПреку Ayara';
  }

  @override
  String get hadithNavPrevious => 'Претходен';

  @override
  String get hadithNavNext => 'Следен';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '14-те Масумин';

  @override
  String get imamsScreenSubtitle =>
      'Пратеникот, Госпоѓа Фатима и Дванаесетте Имами — непогрешливите водачи на исламот';

  @override
  String get imamLabelBorn => 'Роден';

  @override
  String get imamLabelMartyrdom => 'Мачеништво';

  @override
  String get imamLabelStatus => 'Статус';

  @override
  String get imamSectionBiography => 'БИОГРАФИЈА';

  @override
  String get imamSectionFamousSaying => 'ПОЗНАТА ИЗРЕКА';

  @override
  String get imamRoleProphet => 'Последниот Пратеник';

  @override
  String get imamRoleInfallible => 'Непогрешливиот';

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
  String get duaAudioScreenTitle => 'Слушај дови';

  @override
  String get duaAudioScreenSubtitle =>
      'Изберете дова за слушање. Допрете ја плочката за пуштање или пауза.';

  @override
  String get duaAudioComingSoonMessage =>
      'Аудиото за оваа дова ќе биде достапно во следно ажурирање.';

  @override
  String get duaAudioClose => 'Затвори';

  @override
  String get duaAudioError =>
      'Не можевме да го вчитаме аудиото. Проверете ја вашата врска.';

  @override
  String get duaAudioMetaTransmittedBy => 'Пренесено од';

  @override
  String get duaAudioMetaOccasion => 'Настан';

  @override
  String get duaAudioMetaDuration => 'Времетраење';

  @override
  String get quickActionDailyHadith => 'Дневен хадис';

  @override
  String get quickAction14Masumeen => '14 Масумин';

  @override
  String get quickActionListenDuas => 'Слушај';

  @override
  String get quickActionTasbihat => 'Водич за молитва';

  @override
  String get pilgrimageSectionTitle => 'Светото патување';

  @override
  String get pilgrimageSectionSubtitle =>
      'Целосни водичи за Хаџ и Умра — аџилакот кон Светата Куќа на Аллах во Мека';

  @override
  String get hajjCardTitle => 'Хаџ';

  @override
  String get hajjCardSubtitle => 'Петтиот столб на исламот';

  @override
  String get hajjCardDescription =>
      'Големиот годишен аџилак — задолжителен еднаш во животот за секој муслиман што е способен';

  @override
  String get hajjScreenTitle => 'Водич за Хаџ';

  @override
  String get hajjScreenSubtitle => 'Чекор-по-чекор водич за големиот аџилак';

  @override
  String get umrahCardTitle => 'Умра';

  @override
  String get umrahCardSubtitle => 'Помалиот аџилак';

  @override
  String get umrahCardDescription =>
      'Длабоко наградувачко духовно патување што може да се изврши во кое било време од годината';

  @override
  String get umrahScreenTitle => 'Водич за Умра';

  @override
  String get umrahScreenSubtitle => 'Чекор-по-чекор водич за помалиот аџилак';

  @override
  String get pilgrimageStepsTitle => 'Ритуали и чекори';

  @override
  String get pilgrimageImportantNotesTitle => 'Важни белешки';

  @override
  String get pilgrimageDuaTitle => 'Дуа за овој чекор';

  @override
  String get pilgrimageJafariNoteTitle => 'Забелешка за Џафарскиот фикх';

  @override
  String get pilgrimageComplete => '✓ Завршено';

  @override
  String get pilgrimageMarkDone => 'Означи како завршено';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done од $total чекори';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes минути';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Шиитски аџии';

  @override
  String get pilgrimageShiaNoteBody =>
      'Шиитските аџии традиционално патуваат и во Медина за да го посетат гробот на Пратеникот Мухамед ﷺ во Месџид ал-Набави и гробовите на Имамите во Џеннет ал-Баки. Овие посети имаат огромно духовно значење и се сметаат за составен дел од патувањето за повеќето шиитски муслимани.';

  @override
  String get hajjIntro =>
      'Хаџ е петтиот столб на исламот, задолжителен еднаш во животот за секој муслиман кој е физички и финансиски способен. Се извршува во месецот Зул-Хиџа и ги следи чекорите на Пратеникот Ибрахим (а.с.), неговиот син Исмаил (а.с.) и Госпоѓа Хаџар. За шиитските муслимани, Хаџ го вклучува и длабокиот благослов да се посетат местата на покој на Пратеникот ﷺ и Ахлул Бајт во Медина.';

  @override
  String get umrahIntro =>
      'Умра е помалиот аџилак во Мека и, за разлика од Хаџ, може да се изврши во кое било време од годината. Иако не е задолжителна, носи огромна духовна награда и се смета за многу препорачано дело на обожување. Таа споделува неколку ритуали со Хаџ, но е пократка и се состои од четири главни обреди.';
}
