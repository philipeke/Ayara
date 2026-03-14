// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class AppLocalizationsKa extends AppLocalizations {
  AppLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'აირჩიეთ ენა';

  @override
  String get languageSelectSub =>
      'თქვენ შეძლებთ ამის შეცვლას მოგვიანებით პარამეტრებიდან';

  @override
  String get actionContinue => 'გაგრძელება';

  @override
  String get languageSuggestedHeader => 'შემოთავაზებული';

  @override
  String get languageAllHeader => 'ყველა ენა';

  @override
  String get languageSuggestedBadge => 'შემოთავაზებული';

  @override
  String get languageSearchHint => 'ძებნა…';

  @override
  String get planBasic => 'სტანდარტული';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'ყოველდღიური წინამძღოლობა';

  @override
  String get categorySlot02 => 'იმანი და ნდობა';

  @override
  String get categorySlot03 => 'ლოცვის გააზრება';

  @override
  String get categorySlot04 => 'მოთმინება და იმედი';

  @override
  String get categorySlot05 => 'შენდობის ძიება';

  @override
  String get categorySlot06 => 'წყალობა და თანაგრძნობა';

  @override
  String get categorySlot07 => 'რწმენის ძალა';

  @override
  String get categorySlot08 => 'მადლიერი გული';

  @override
  String get categorySlot09 => 'ცხოვრების მიზანი';

  @override
  String get categorySlot10 => 'ოჯახური კავშირები';

  @override
  String get categorySlot11 => 'შინაგანი სიმშვიდე';

  @override
  String get categorySlot12 => 'წინასწარმეტყველის სიბრძნე';

  @override
  String get categorySlot13 => 'კარგი ზნეობა';

  @override
  String get categorySlot14 => 'ცდუნებაზე გაძლება';

  @override
  String get categorySlot15 => 'საღამოს ზიქრი';

  @override
  String get categoryCustom => 'პირადი რეფლექსია';

  @override
  String get dhikrMeaningSubhanallah => 'დიდება ალლაჰს';

  @override
  String get dhikrMeaningAlhamdulillah => 'ყოველი ქება ალლაჰს ეკუთვნის';

  @override
  String get dhikrMeaningAllahuAkbar => 'ალლაჰი უზენაესია';

  @override
  String get quranVerseHeartAtRest =>
      'ჭეშმარიტად, ალლაჰის ხსენებით პოვებენ გულები სიმშვიდეს.';

  @override
  String get promptHint =>
      'შეეხეთ კატეგორიას ისლამური წინამძღოლობისა და რეფლექსიისთვის';

  @override
  String get currentLanguage => 'მიმდინარე ენა';

  @override
  String get settingsLanguage => 'ენის პარამეტრები';

  @override
  String get settingsTitle => 'პარამეტრები';

  @override
  String get chooseLanguage => 'აირჩიეთ ენა';

  @override
  String get continueCta => 'გაგრძელება';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count სიტყვა',
      one: '$count სიტყვა',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'ოპციები';

  @override
  String get newCta => 'ახალი';

  @override
  String get actionsTitle => 'რისი გაკეთება გსურთ?';

  @override
  String get copy => 'კოპირება';

  @override
  String get share => 'გაზიარება';

  @override
  String get close => 'დახურვა';

  @override
  String get copiedToast => 'კოპირებულია';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'ახალი პასუხის გენერირება ვერ მოხერხდა';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nგსურთ კიდევ სცადოთ?';
  }

  @override
  String get cancelCta => 'გაუქმება';

  @override
  String get retryCta => 'კიდევ სცადეთ';

  @override
  String get authTitle => 'შექმენით ანგარიში';

  @override
  String get continueAsGuest => 'სტუმრად გაგრძელება';

  @override
  String get signInGoogle => 'Google-ით შესვლა';

  @override
  String get signInApple => 'Apple-ით შესვლა';

  @override
  String get signInEmail => 'ელ-ფოსტით შესვლა';

  @override
  String get upgradeWithApple => 'Apple-ით გაგრძელება';

  @override
  String get mustAccept =>
      'თქვენ უნდა დაეთანხმოთ წესებს და გაეცნოთ კონფიდენციალურობის პოლიტიკას.';

  @override
  String get termsLabel => 'ვეთანხმები მომსახურების პირობებს';

  @override
  String get privacyLabel => 'გავეცანი კონფიდენციალურობის პოლიტიკას';

  @override
  String get marketingOptIn =>
      'ვეთანხმები სიახლეების და შემოთავაზებების მიღებას';

  @override
  String get openTerms => 'მომსახურების პირობები';

  @override
  String get openPrivacy => 'კონფიდენციალურობის პოლიტიკა';

  @override
  String get accountSection => 'ანგარიში';

  @override
  String get guestMode => 'სტუმრის რეჟიმი';

  @override
  String get signedIn => 'შესული ხართ';

  @override
  String get upgradeHint =>
      'შეინახეთ თქვენი რეფლექსიები ყველა მოწყობილობაზე ანგარიშის შექმნით.';

  @override
  String get upgradeWithGoogle => 'Google-ით გაგრძელება';

  @override
  String get signOut => 'გამოსვლა';

  @override
  String get snackUpgraded => 'ანგარიში განახლდა Google-ით ✅';

  @override
  String get snackSignedIn => 'შესვლა წარმატებულია Google-ით ✅';

  @override
  String get snackSignedOut => 'გამოსვლა';

  @override
  String get snackSignedInApple => 'შესვლა წარმატებულია Apple-ით ✅';

  @override
  String get snackSignedInGoogle => 'შესვლა წარმატებულია Google-ით ✅';

  @override
  String get snackUpgradedApple => 'ანგარიში განახლდა Apple-ით ✅';

  @override
  String get snackUpgradedGoogle => 'ანგარიში განახლდა Google-ით ✅';

  @override
  String get historyTitle => 'წინა რეფლექსიები';

  @override
  String get historyOpenCta => 'წინა რეფლექსიები';

  @override
  String get historyEmpty => 'შენახული რეფლექსიები ჯერ არ არის.';

  @override
  String get historyDeleteTitle => 'წავშალოთ რეფლექსია?';

  @override
  String get historyDeleteBody => 'ეს სამუდამოდ წაშლის არჩეულ ელემენტს.';

  @override
  String get deleteCta => 'წაშლა';

  @override
  String get historyButton => 'წინა რეფლექსიები';

  @override
  String get historyEmptyTitle => 'რეფლექსიები ჯერ არ არის';

  @override
  String get historyEmptyBody =>
      'ჯერ რამე დააგენერირეთ — თქვენი შენახული ელემენტები აქ გამოჩნდება.';

  @override
  String get historyDelete => 'წაშლა';

  @override
  String get footerTitle => 'Wilaya-თი, იმანით და საბრით';

  @override
  String get footerSubtitle => 'თითოეული ლოცვით';

  @override
  String get genericErrorSnack =>
      'რაღაც შეფერხდა — გთხოვთ, სცადოთ მოგვიანებით.';

  @override
  String get upgradeAccountCta =>
      'შეინახეთ თქვენი რეფლექსიები ყველა მოწყობილობაზე — შექმენით ანგარიში';

  @override
  String get deleteAccount => 'ანგარიშის წაშლა';

  @override
  String get exportData => 'ჩემი მონაცემების ექსპორტი';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'ნუ ჩქარობთ 🐯\nAyara-ს დრო სჭირდება შემდეგ პასუხამდე…';

  @override
  String get rateDailyLimit =>
      'ამჯერად რეფლექსიები ამოგეწურათ.\nმიიღეთ მეტი ან გადადით Wilaya-ზე.';

  @override
  String get rateCreditsExhausted =>
      'თქვენ გამოიყენეთ ყველა რეფლექსია.\nშეავსეთ ბალანსი ან გადადით Wilaya-ზე გასაგრძელებლად.';

  @override
  String get rateGraceCreditsExhausted =>
      'ამჯერად რეფლექსიები ამოგეწურათ.\nმიიღეთ მეტი ან გადადით Wilaya-ზე.';

  @override
  String get premiumDescription =>
      'Wilaya ხსნის პრემიუმ ფუნქციებს, მომავალ კატეგორიებს და სპეციალურ ნიშანს.';

  @override
  String ratePlanExhausted(String plan) {
    return 'თქვენი რეფლექსიები ამჟამად ცარიელია. ტარიფი: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'რეფლექსიების შემოწმება ვერ მოხერხდა: $message';
  }

  @override
  String get rateCheckGenericError =>
      'რაღაც შეფერხდა რეფლექსიების შემოწმებისას.';

  @override
  String get aiFallbackGeneric =>
      'რაღაც შეფერხდა — გთხოვთ, სცადოთ მოგვიანებით.';

  @override
  String get limitSectionTitle => 'რეფლექსიები';

  @override
  String get limitTodayLabel => 'გამოყენება';

  @override
  String limitCreditsLabel(Object credits) {
    return 'დარჩენილი რეფლექსიები: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'ტარიფი: $plan';
  }

  @override
  String get limitLoadingLabel => 'იტვირთება…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => 'რეფლექსიები';

  @override
  String get aiLimitSubtitle =>
      'თითოეული პასუხი მოიხმარს 1 რეფლექსიას. სტანდარტული ტარიფი მოიცავს საწყის რეფლექსიებს. Wilaya ხსნის პრემიუმ კატეგორიებს და ბალანსის შევსების შესაძლებლობას.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return 'გამოყენებულია $used / $total რეფლექსია';
  }

  @override
  String get creditsSectionTitle => 'რეფლექსიები';

  @override
  String get creditsUsageLabel => 'გამოყენება';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'დარჩენილი რეფლექსიები: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'ტარიფი: $plan';
  }

  @override
  String get creditsLoadingLabel => 'იტვირთება…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => 'რეფლექსიები';

  @override
  String get creditsSubtitle =>
      'თითოეული პასუხი მოიხმარს 1 რეფლექსიას. სტანდარტული ტარიფი მოიცავს საწყის რეფლექსიებს. Wilaya ხსნის პრემიუმ კატეგორიებს და ბალანსის შევსების შესაძლებლობას.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return 'გამოყენებულია $used / $total რეფლექსია';
  }

  @override
  String get settingsDeleteTitle => 'ანგარიშის წაშლა';

  @override
  String get settingsDeleteDescription =>
      'სამუდამოდ წაშალეთ თქვენი ანგარიში და მასთან დაკავშირებული ყველა მონაცემი.';

  @override
  String get settingsDeleteButtonLabel => 'წაშალე ჩემი ანგარიში';

  @override
  String get settingsDeleteDialogTitle => 'წავშალოთ ანგარიში?';

  @override
  String get settingsDeleteDialogBody =>
      'ეს ქმედება შეუქცევადია.\n\nთქვენი ყველა ჩატი, ისტორია და ანგარიშის ინფორმაცია წაიშლება.';

  @override
  String get settingsDeleteDialogCancel => 'გაუქმება';

  @override
  String get settingsDeleteDialogConfirm => 'წაშლა';

  @override
  String get settingsFreeLimitUsedTitle => 'საწყისი რეფლექსიები ამოიწურა';

  @override
  String get settingsFreeLimitUsedDescription =>
      'ამ მოწყობილობისთვის საწყისი რეფლექსიები ამოწურულია. გასაგრძელებლად გადადით Wilaya-ზე ან შეიძინეთ მეტი რეფლექსია.';

  @override
  String get settingsStarterCreditsUsedTitle => 'საწყისი რეფლექსიები ამოიწურა';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'ამ მოწყობილობისთვის საწყისი რეფლექსიები ამოწურულია. გასაგრძელებლად გადადით Wilaya-ზე ან შეიძინეთ მეტი რეფლექსია.';

  @override
  String get deviceBoundError =>
      'ეს მოწყობილობა უკვე დაკავშირებულია სხვა ანგარიშთან. გთხოვთ, შეხვიდეთ ორიგინალი ანგარიშით.';

  @override
  String get premiumTitle => 'Wilaya რეჟიმი';

  @override
  String get premiumSubtitleBasic => 'გახსენით Ayara-ს სრული შესაძლებლობები.';

  @override
  String get premiumSubtitlePremium =>
      'თქვენ ხართ Wilaya-ზე. გსურთ მეტი რეფლექსია?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'მიმდინარე ტარიფი: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'რეფლექსიები: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'შესყიდვები ამჟამად მიუწვდომელია.';

  @override
  String get premiumSignInToPurchase =>
      'შედით ანგარიშზე რეფლექსიების შესაძენად ან Wilaya-ს გასახსნელად.';

  @override
  String get premiumRestorePurchases => 'შესყიდვების აღდგენა';

  @override
  String get premiumProcessing => 'მუშავდება…';

  @override
  String get premiumRestoreHintTitle =>
      'უკვე გაქვთ შეძენილი Wilaya ან რეფლექსიები ამ ან სხვა მოწყობილობაზე?';

  @override
  String get premiumRestoreHintBody =>
      'აღადგინეთ თქვენი შესყიდვები, თუ ისინი არ ჩანს.';

  @override
  String get premiumBuyCredits200 => '200 რეფლექსიის შეძენა';

  @override
  String get premiumBuyCredits400 => '400 რეფლექსიის შეძენა';

  @override
  String get premiumBecomePremiumOneTime => 'გადადით Wilaya რეჟიმზე';

  @override
  String get premiumTopupHint =>
      'Wilaya-თი შეგიძლიათ ნებისმიერ დროს დაამატოთ დამატებითი რეფლექსიები.';

  @override
  String get premiumUpgradeCta => 'განახლება';

  @override
  String get premiumRequiredForCategory =>
      'ეს კატეგორია ხელმისაწვდომია მხოლოდ Wilaya მომხმარებლებისთვის. განაახლეთ პარამეტრებიდან პრემიუმ კონტენტის გასახსნელად.';

  @override
  String get premiumBenefitsBasic =>
      'გახსენით Wilaya და მიიღეთ დამატებითი რეფლექსიები, პრემიუმ კატეგორიები და გააგრძელეთ წინამძღოლობის მიღება ნებისმიერ დროს.';

  @override
  String get premiumBenefitsPremium =>
      'თქვენ ხართ Wilaya რეჟიმში. თუ რეფლექსიები გიმთავრდებათ, დაამატეთ მეტი და გააგრძელეთ შეფერხების გარეშე.';

  @override
  String get premiumButtonBecomePremium => 'Wilaya-ს გახსნა';

  @override
  String get premiumButtonTopup1000 => '1000 რეფლექსიის დამატება';

  @override
  String get premiumBadge => 'Wilaya აქტიურია';

  @override
  String get premiumLoadingStore => 'მაღაზია იტვირთება…';

  @override
  String get premiumProductNotAvailable =>
      'ეს პროდუქტი ჯერ არ არის ხელმისაწვდომი. გთხოვთ, სცადოთ მოგვიანებით.';

  @override
  String get premiumPurchaseError =>
      'შესყიდვისას დაფიქსირდა შეცდომა. გთხოვთ, სცადოთ კიდევ ერთხელ.';

  @override
  String get premiumBuyCredits100 => '100 რეფლექსიის დამატება';

  @override
  String get premiumFeatureLocked =>
      'გახსენით Wilaya ამ ფუნქციაზე წვდომისთვის.';

  @override
  String get lockedCategoriesHint =>
      'ზოგიერთი კატეგორია დაჯავშნილია Wilaya წევრებისთვის. გახსენით ისინი თქვენი გზის სრულყოფილად შესასწავლად.';

  @override
  String get freePlanBlockedTitle => 'საწყისი რეფლექსიები ამოგეწურათ';

  @override
  String get freePlanBlockedBody =>
      'თქვენ ხართ სტანდარტულ ტარიფზე და მიაღწიეთ ლიმიტს. გასაგრძელებლად და პრემიუმ კატეგორიების გასახსნელად — გადადით Wilaya-ზე.';

  @override
  String get freePlanBlockedCtaGoPremium => 'იხილეთ Wilaya-ს ვარიანტები ქვემოთ';

  @override
  String get graceBlockedTitle => 'საწყისი რეფლექსიები ამოგეწურათ';

  @override
  String get graceBlockedBody =>
      'თქვენ ხართ სტანდარტულ ტარიფზე და მიაღწიეთ ლიმიტს. გასაგრძელებლად და პრემიუმ კატეგორიების გასახსნელად — გადადით Wilaya-ზე.';

  @override
  String get graceBlockedCtaGoPremium => 'იხილეთ Wilaya-ს ვარიანტები ქვემოთ';

  @override
  String get rateGuestMustSignIn =>
      'შედით სისტემაში Ayara-სა და თქვენი რეფლექსიების გამოსაყენებლად.';

  @override
  String get guestNoCreditsTitle => 'სტუმრის რეჟიმი';

  @override
  String get guestNoCreditsBody =>
      'სტუმრის სტატუსით შეგიძლიათ დაათვალიეროთ აპლიკაცია, მაგრამ ვერ გამოიყენებთ რეფლექსიებს. გაიარეთ ავტორიზაცია პარამეტრებიდან შესყიდვების გასახსნელად.';

  @override
  String get guestDialogContinue => 'გაგრძელება';

  @override
  String get guestDialogLoginInstead => 'ავტორიზაცია';

  @override
  String get optionalLabel => 'არასავალდებულო';

  @override
  String get accountDeleteSuccessTitle => 'ანგარიში წაშლილია';

  @override
  String get accountDeleteSuccessBody =>
      'თქვენი ანგარიში და მასთან დაკავშირებული მონაცემები წარმატებით წაიშალა.';

  @override
  String get accountDeleteSuccessClose => 'დახურვა';

  @override
  String get accountDeleteErrorTitle => 'ანგარიშის წაშლა ვერ მოხერხდა';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'ავტორიზაცია გაუქმდა. გთხოვთ, შედით ხელახლა და სცადეთ წაშლა.';

  @override
  String get accountDeleteReauthRequired =>
      'ანგარიშის წასაშლელად საჭიროა ახალი ავტორიზაცია. გთხოვთ, გამოხვიდეთ, თავიდან შედით და სცადეთ კიდევ ერთხელ.';

  @override
  String get settingsDeletePermanentWarning =>
      'ეს ქმედება შეუქცევადია. თქვენს ანგარიშთან დაკავშირებული ყველა მონაცემი წაიშლება.';

  @override
  String get dailyGraceTitle => 'ყოველდღიური წინამძღოლობა';

  @override
  String get dailyGraceScriptureLabel => 'დღის აიათი';

  @override
  String get dailyGraceSaintLabel => 'FIGURE OF THE WEEK';

  @override
  String get dailyGraceReflectionLabel => 'საღამოს რეფლექსია';

  @override
  String get dailyGraceCopiedToast => 'აიათი კოპირებულია';

  @override
  String get locationConsentLabel =>
      'მიეცით Ayara-ს უფლება გამოიყენოს თქვენი მდებარეობა ქიბლას მიმართულებისა და ლოცვის დროებისთვის';

  @override
  String get locationConsentHint =>
      'გამოიყენება მხოლოდ ამ ფუნქციებისთვის. თქვენი მდებარეობა არასოდეს ზიარდება ან ინახება.';

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
  String get askPageTitle => 'ჰკითხეთ Ayara-ს';

  @override
  String get askPageDescription =>
      'იკითხეთ ნებისმიერი რამ რწმენის, ლოცვის, ცხოვრების ან ისლამური პრაქტიკის შესახებ და მიიღეთ წინამძღოლობა ყურანსა და აჰლ ალ-ბაითის სწავლებებზე დაყრდნობით.';

  @override
  String get askPageInputHint => 'ჩაწერეთ თქვენი კითხვა აქ…';

  @override
  String get askPageSubmitCta => 'კითხვა';

  @override
  String get askPageInputEmptyError => 'გთხოვთ, ჯერ დაწეროთ კითხვა.';

  @override
  String get askResultYourQuestion => 'თქვენი კითხვა';

  @override
  String get guidancePageTitle => 'ქიბლა';

  @override
  String get qiblaFacingMecca => 'მექას მიმართულებით';

  @override
  String get qiblaCompassInstruction =>
      'დაატრიალეთ ტელეფონი, სანამ ოქროს ისარი ზევით არ მიუთითებს.\nეს მიმართულება მიუთითებს ქიბლას (მექას)კენ.';

  @override
  String get qiblaGpsUnavailableBody =>
      'GPS სიგნალი სუსტია. გადით გარეთ და დააჭირეთ „კიდევ სცადეთ“.';

  @override
  String get qiblaRetry => 'კიდევ სცადეთ';

  @override
  String get qiblaTitle => 'ქიბლას მიმართულება';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km კმ მექამდე';
  }

  @override
  String get qiblaLocationNeededTitle => 'საჭიროა მდებარეობა';

  @override
  String get qiblaLocationNeededBody =>
      'მიეცით წვდომა მდებარეობაზე, რათა Ayara-მ გამოთვალოს ქააბას მიმართულება იქიდან, სადაც ხართ.';

  @override
  String get qiblaOpenSettings => 'პარამეტრების გახსნა';

  @override
  String get qiblaCompassLoading => 'მდებარეობის ძიება…';

  @override
  String get qiblaTowardMecca => 'მექასკენ';

  @override
  String get prayerTimesTitle => 'ლოცვის დროები';

  @override
  String get prayerTimesFajr => 'ფაჯრი';

  @override
  String get prayerTimesDhuhr => 'ზუჰრი';

  @override
  String get prayerTimesAsr => 'ასრი';

  @override
  String get prayerTimesMaghrib => 'მაღრიბი';

  @override
  String get prayerTimesIsha => 'იშა';

  @override
  String get prayerTimesLocationNeededTitle => 'საჭიროა მდებარეობა';

  @override
  String get prayerTimesLocationNeededBody =>
      'მიეცით წვდომა მდებარეობაზე, რათა Ayara-მ ზუსტად გამოთვალოს ლოცვის დროები თქვენი ქალაქისთვის.';

  @override
  String get prayerTimesNextLabel => 'შემდეგი';

  @override
  String get prayerTimesDoneLabel => 'დასრულდა';

  @override
  String get monthlyPrayerTimesTitle => 'თვიური ლოცვის დროები';

  @override
  String get monthlyPrayerTimesViewButton => 'მთელი თვის ნახვა';

  @override
  String get monthlyPrayerTimesNextMonth => 'შემდეგი თვე';

  @override
  String get monthlyPrayerTimesDayHeader => 'დღე';

  @override
  String get sharePrayerTimes => 'ლოცვის დროების გაზიარება';

  @override
  String get notificationsSectionTitle => 'შეტყობინებები';

  @override
  String get notificationsSectionSubtitle =>
      'ლოცვის შეხსენებები, კალენდარული მოვლენები და სხვა';

  @override
  String get dailyReflectionReminderTitle => 'ყოველდღიური რეფლექსია';

  @override
  String get dailyReflectionReminderDescription =>
      'ნაზი ყოველდღიური შეხსენება Ayara-ს გასახსნელად და რწმენასთან დასაკავშირებლად.';

  @override
  String get dailyReflectionReminderEnable => 'ჩართეთ ყოველდღიური შეხსენება';

  @override
  String get dailyReflectionReminderTimeLabel => 'შეხსენების დრო';

  @override
  String get prayerNotificationsTitle => 'ლოცვის შეხსენებები';

  @override
  String get prayerNotificationsDescription =>
      'მიიღეთ შეხსენება ყოველი ლოცვის წინ, რათა შეინარჩუნოთ კავშირი მთელი დღის განმავლობაში.';

  @override
  String get prayerNotificationsEnable => 'ლოცვის შეხსენებების ჩართვა';

  @override
  String get prayerNotificationsOpenSettings =>
      'შეტყობინებების პარამეტრების გახსნა';

  @override
  String get prayerNotificationsDenied => 'შეტყობინებები გამორთულია';

  @override
  String get prayerNotificationsDeniedHint =>
      'გადადით პარამეტრებში და დართეთ Ayara-ს შეტყობინებების უფლება ლოცვის დროების მისაღებად.';

  @override
  String get notificationsConsentLabel =>
      'ლოცვის დროებზე შეტყობინებების დაშვება';

  @override
  String get prayerNotifTitleFajr => '🌅 ფაჯრი — განთიადის ლოცვა';

  @override
  String get prayerNotifBodyFajr =>
      'ფაჯრი აჰლ ალ-ბაითის დილის ლოცვაა. იმამ ალიმ (ა) თქვა: გაუფრთხილდით განთიადის ლოცვას, როგორც უფრთხილდებით თქვენს ყველაზე ძვირფას ამანათს.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ ზუჰრი — შუადღის ლოცვა';

  @override
  String get prayerNotifBodyDhuhr =>
      'აჰლ ალ-ბაითის იმამები აფასებდნენ ხსენების ყოველ წამს. შეისვენეთ, დაუკავშირეთ თქვენი გული ალლაჰს.';

  @override
  String get prayerNotifTitleAsr => '🌤️ ასრი — ნაშუადღევის ლოცვა';

  @override
  String get prayerNotifBodyAsr =>
      'გაუფრთხილდით ლოცვას, რამეთუ ის არის აღთქმა თქვენსა და ალლაჰს შორის. ასრის დრო მოვიდა — არ გაუშვათ ის ხსენების გარეშე.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 მაღრიბი — მზის ჩასვლის ლოცვა';

  @override
  String get prayerNotifBodyMaghrib =>
      'მზე ჩაესვენა — მომენტი, რომელსაც აჰლ ალ-ბაითი წმინდად მიიჩნევდა ვედრებისთვის. აღავლინეთ მაღრიბი და ხელები ალლაჰისკენ აღაპყრეთ.';

  @override
  String get prayerNotifTitleIsha => '🌙 იშა — ღამის ლოცვა';

  @override
  String get prayerNotifBodyIsha =>
      'დაასრულეთ დღე ალლაჰის გარემოცვაში. იმამები მოგვიწოდებდნენ ღამის ლოცვისკენ იშას შემდეგ — ჯერ შეასრულეთ იშა და დღე მისი ხსენებით დახურეთ.';

  @override
  String get outOfReflectionsBannerText => 'თქვენ გამოიყენეთ ყველა რეფლექსია';

  @override
  String get outOfReflectionsBannerCta => 'მიიღეთ მეტი';

  @override
  String get dhikrPageTitle => 'ზიქრი';

  @override
  String get dhikrTapToCount => 'შეეხეთ წრეს დასათვლელად';

  @override
  String get dhikrResetButton => 'განულება';

  @override
  String get dhikrComplete => 'მაშა\'ალლაჰ';

  @override
  String get dhikrCompleteMessage =>
      'თქვენ დაასრულეთ ალლაჰის 100 დიდება. იყოს ის სინათლე თქვენი გულისთვის.';

  @override
  String get disclaimerTitle => 'აპლიკაციის წინამძღოლობის შესახებ';

  @override
  String get disclaimerBody =>
      'Ayara გთავაზობთ ისლამურ რეფლექსიებს, შეხსენებებს და სულიერ კონტენტს თქვენი რწმენის გზის მხარდასაჭერად, რომელიც ეფუძნება ყურანსა და აჰლ ალ-ბაითის სწავლებებს. ეს კონტენტი განკუთვნილია მხოლოდ ზოგადი საინფორმაციო და შთაგონების მიზნებისთვის.\n\nAyara არ ანაცვლებს კვალიფიციურ სწავლულებს.\nეს აპლიკაცია არ არის სწავლული ისლამოლოგის, მარჯას ან თეოლოგიური განათლების მქონე მასწავლებლის შემცვლელი. შიიტურ ისლამში რელიგიური წინამძღოლობა ეფუძნება ჯაფარის სამართლის სკოლას (ფიქჰი) და ცოცხალი მარჯას მიბაძვის ტრადიციას. თუ გაქვთ კითხვები ფიქჰის, ჰალალისა და ჰარამის ან პირადი რელიგიური ვალდებულებების შესახებ, გთხოვთ, მიმართოთ კვალიფიციურ მარჯას ან თქვენს თემში არსებულ სწავლულს.\n\nეს აპლიკაცია არ გამოსცემს რელიგიურ განჩინებებს.\nAyara არ იღებს ავტორიტეტულ გადაწყვეტილებებს ფიქჰის საკითხებზე. არაფერი აქ არ უნდა იქნას მიღებული როგორც ფატვა ან სავალდებულო რელიგიური ინსტრუქცია.\n\nაჰლ ალ-ბაითის ცენტრალურობა.\nშიიტურ ისლამში წინასწარმეტყველი მუჰამედი ﷺ და მისი განწმენდილი ოჯახი — აჰლ ალ-ბაითი — არიან ისლამური თემის ავტორიტეტული წინამძღოლები ყურანის შემდეგ. აჰლ ალ-ბაითის თორმეტი იმამი ისლამური სწავლების ღვთიურად დანიშნული განმმარტებლები არიან. კონტენტი ასახავს ამ ტრადიციას.\n\nთემის მნიშვნელობა.\nეს აპლიკაცია მიზნად ისახავს წაახალისოს თქვენი კავშირი რწმენასთან, ამასთანავე დიდ პატივს სცემს თქვენი ადგილობრივი მეჩეთის, ისლამური ცენტრისა და რელიგიური თემის როლს. მოგიწოდებთ, შეინარჩუნოთ კავშირი კვალიფიციურ მასწავლებლებთან.';

  @override
  String get disclaimerClose => 'გავიგე';

  @override
  String get disclaimerInfoTooltip => 'აპლიკაციის წინამძღოლობის შესახებ';

  @override
  String get disclaimerSettingsSubtitle =>
      'მხოლოდ ზოგადი საინფორმაციო მიზნებისთვის. შეეხეთ სრული ტექსტის წასაკითხად.';

  @override
  String get disclaimerSectionHeader => 'პასუხისმგებლობის უარყოფა';

  @override
  String get navHome => 'მთავარი';

  @override
  String get navReflect => 'რეფლექსია';

  @override
  String get navDuas => 'დუები';

  @override
  String get navCalendar => 'კალენდარი';

  @override
  String get dashboardToday => 'დღეს';

  @override
  String get dashboardComingUp => 'მალე';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'დღე',
      one: 'დღე',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'სწრაფი წვდომა';

  @override
  String get quickActionQibla => 'ქიბლა';

  @override
  String get quickActionDhikr => 'ზიქრი';

  @override
  String get quickActionDailyGrace => 'წინამძღოლობა';

  @override
  String get quickActionPrayerTimes => 'დროები';

  @override
  String get askAyaraTitle => 'ჰკითხეთ Ayara-ს';

  @override
  String get askAyaraSubtitle =>
      'დასვით ნებისმიერი ისლამური კითხვა და მიიღეთ გააზრებული პასუხი.';

  @override
  String get askAyaraHint => 'მაგ: რა მნიშვნელობა აქვს რამადანს?';

  @override
  String get askAyaraSubmit => 'კითხვა';

  @override
  String get wisdomOfTheDayTitle => 'დღის სიბრძნე';

  @override
  String get calendarScreenTitle => 'ისლამური კალენდარი';

  @override
  String get calendarUpcomingOccasions => 'მომავალი მოვლენები';

  @override
  String get calendarOccasionRemindersTitle => 'მოვლენების შეხსენება';

  @override
  String get calendarOccasionRemindersHint =>
      'შეტყობინება ყოველი მოვლენის წინა საღამოს';

  @override
  String get calendarNotifPermissionDenied =>
      'შეტყობინებების უფლება უარყოფილია. ჩართეთ ის პარამეტრებიდან.';

  @override
  String get calendarNoEvents => 'მომავალი მოვლენები ვერ მოიძებნა.';

  @override
  String get calendarAddToPhone => 'მობილური კალენდრის დამატება';

  @override
  String get calendarAddedToPhone => 'კალენდარში დამატებულია';

  @override
  String get calendarCountdownToday => 'დღეს';

  @override
  String get calendarCountdownTomorrow => 'ხვალ';

  @override
  String calendarCountdownDays(int days) {
    return '$days დღეში';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'იან';

  @override
  String get calendarMonthFeb => 'თებ';

  @override
  String get calendarMonthMar => 'მარ';

  @override
  String get calendarMonthApr => 'აპრ';

  @override
  String get calendarMonthMay => 'მაი';

  @override
  String get calendarMonthJun => 'ივნ';

  @override
  String get calendarMonthJul => 'ივლ';

  @override
  String get calendarMonthAug => 'აგვ';

  @override
  String get calendarMonthSep => 'სექ';

  @override
  String get calendarMonthOct => 'ოქტ';

  @override
  String get calendarMonthNov => 'ნოე';

  @override
  String get calendarMonthDec => 'დეკ';

  @override
  String get calendarSeasonMuharramEarly =>
      'მუჰარამის დღეები — გახსოვდეთ ქარბალა';

  @override
  String get calendarSeasonAshura => 'აშურა — ია ჰუსეინ (ა)';

  @override
  String get calendarSeasonMuharramLate =>
      'მუჰარამი — გლოვისა და რეფლექსიის დღეები';

  @override
  String get calendarSeasonArbaeen => 'არბაინი — ჰუსეინის ორმოცი დღე';

  @override
  String get calendarSeasonRoadToArbaeen => 'გზა არბაინისკენ';

  @override
  String get calendarSeasonMabath => 'მაბ\'ათ მუბარაქ — გამოცხადების განთიადი';

  @override
  String get calendarSeasonMidShaban =>
      'შა\'ბანის შუა რიცხვები — იმამ ალ-მაჰდის (აჯ) დაბადების დღე';

  @override
  String get calendarSeasonRamadan => 'რამადან მუბარაქ — ყურანის თვე';

  @override
  String get calendarSeasonGhadir => 'ეიდ ალ-ღადირ მუბარაქ!';

  @override
  String get hijriMonth1 => 'მუჰარამი';

  @override
  String get hijriMonth2 => 'საფარი';

  @override
  String get hijriMonth3 => 'რაბი ალ-ავვალი';

  @override
  String get hijriMonth4 => 'რაბი ას-სანი';

  @override
  String get hijriMonth5 => 'ჯუმადა ალ-ავვალი';

  @override
  String get hijriMonth6 => 'ჯუმადა ას-სანი';

  @override
  String get hijriMonth7 => 'რაჯაბი';

  @override
  String get hijriMonth8 => 'შა\'ბანი';

  @override
  String get hijriMonth9 => 'რამადანი';

  @override
  String get hijriMonth10 => 'შავვალი';

  @override
  String get hijriMonth11 => 'ზულ-ყი\'და';

  @override
  String get hijriMonth12 => 'ზულ-ჰიჯა';

  @override
  String get duasScreenTitle => 'დუები და ზიარათები';

  @override
  String get duasSearchHint => 'ძებნა…';

  @override
  String get duasFilterAll => 'ყველა';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count დუა და ზიარათი',
      one: '$count დუა',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'დუები ვერ მოიძებნა.';

  @override
  String get duaCategoryDaily => 'ყოველდღიური';

  @override
  String get duaCategoryWeekly => 'ყოველკვირეული';

  @override
  String get duaCategoryOccasions => 'მოვლენები';

  @override
  String get duaCategoryZiyarat => 'ზიარათი';

  @override
  String get duaCategoryTasbih => 'თასბიჰი';

  @override
  String get eventTypeBirth => 'დაბადება';

  @override
  String get eventTypeMartyrdom => 'შაჰადათი';

  @override
  String get eventTypeOccasion => 'მოვლენა';

  @override
  String get duaCopyTooltip => 'თარგმანის კოპირება';

  @override
  String get duaToggleTransliteration => 'ტრანსლიტერაცია';

  @override
  String get duaToggleTranslation => 'თარგმანი';

  @override
  String get duaAskAiLabel => 'სთხოვეთ Ayara-ს ამ დუას განმარტება';

  @override
  String get duaAskAiLockedLabel => 'ჰკითხეთ Ayara-ს (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'განმარტებები ხელმისაწვდომია Wilaya წევრებისთვის. განაახლეთ პარამეტრებიდან.';

  @override
  String duaAiComingSoon(String name) {
    return 'ჰკითხეთ Ayara-ს „$name“-ს შესახებ — მალე!';
  }

  @override
  String get duaCopiedToast => 'დუა კოპირებულია.';

  @override
  String get tasbihAllahuAkbarMeaning => 'ალლაჰი უზენაესია';

  @override
  String get tasbihAlhamdulillahMeaning => 'ყოველი ქება ალლაჰს';

  @override
  String get tasbihSubhanallahMeaning => 'დიდება ალლაჰს';

  @override
  String get tasbihResetTooltip => 'განულება';

  @override
  String get tasbihCompleteTitle => 'თასბიჰი დასრულდა';

  @override
  String get tasbihCompleteMessage => 'ალლაჰმა მიიღოს თქვენი ზიქრი.';

  @override
  String get tasbihTapHint => 'შეეხეთ ნებისმიერ ადგილას დასათვლელად';

  @override
  String get tasbihatScreenTitle => 'ლოცვის გზამკვლევი';

  @override
  String get tasbihatScreenSubtitle => 'ლოცვის დიდებანი';

  @override
  String get tasbihatScreenDescription =>
      'ლოცვის დროს და მის შემდეგ წასაკითხი დიდებების სრული გზამკვლევი — აჰლ ალ-ბაითის (ა) ტრადიციის მიხედვით.';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'იკითხება მე-3 და მე-4 რაქათებში';

  @override
  String get tasbihatArba3Info =>
      'შიიტურ ფიქჰში Tasbiḥāt al-Arbaʿa ანაცვლებს ალ-ფათიჰას ზუჰრის, ასრის, მაღრიბისა და იშას მე-3 და მე-4 რაქათებში. ერთხელ წაკითხვა სავალდებულოა (ვაჯიბი), სამჯერ კი — სასურველი (მუსთაჰაბი).';

  @override
  String get tasbihatArba3Translation =>
      'დიდება ალლაჰს · ყოველი ქება ალლაჰს\nარ არსებობს ღვთაება გარდა ალლაჰისა · ალლაჰი უზენაესია';

  @override
  String get tasbihatArba3CompleteTitle => 'წაკითხვა დასრულდა';

  @override
  String get tasbihatArba3CompleteMessage =>
      'ალლაჰმა მიიღოს თქვენი ლოცვა — ამინ';

  @override
  String get tasbihatArba3TapHint => 'შეეხეთ ყოველი წაკითხვის შემდეგ';

  @override
  String get tasbihatZahraSubtitle => 'ყოველი ლოცვის შემდეგ · 100 მძივი';

  @override
  String get tasbihatZahraOriginLabel => 'წარმოშობა';

  @override
  String get tasbihatZahraHadith =>
      'ფატიმა ალ-ზაჰრამ (ს.ა) სთხოვა წინასწარმეტყველს ﷺ დამხმარე. მან უთხრა: „განა არ მიგითითო იმაზე უკეთესზე? წაიკითხე Subḥānallāh 33-ჯერ, Alḥamdulillāh 33-ჯერ და Allāhu Akbar 34-ჯერ ყოველი ლოცვის შემდეგ. ეს შენთვის დამხმარეს ყოლაზე უკეთესია“.';

  @override
  String get tasbihatZahraHadithSource => '— ბიჰარ ალ-ანვარი, ტ. 85';

  @override
  String get tasbihatZahraOpenCounter => 'თასბიჰის მრიცხველის გახსნა';

  @override
  String get tasbihatDuasTitle => 'სასურველი დუები';

  @override
  String get tasbihatDuasSubtitle => 'ლოცვის დასრულების შემდეგ';

  @override
  String get tasbihatDuaAyatKursiTitle => 'აიათ ალ-ქურსი';

  @override
  String get tasbihatDuaAyatKursiWhen => 'ყოველი სავალდებულო ლოცვის შემდეგ';

  @override
  String get tasbihatDuaAyatKursiSource => 'სურა ალ-ბაყარა 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'ვინც წაიკითხავს აიათ ალ-ქურსის ყოველი სავალდებულო ლოცვის შემდეგ, მასა და სამოთხეს შორის მხოლოდ სიკვდილი დგას. იმამ ალ-ბაყირმა (ა) თქვა, რომ ის ყურანის უდიდეს აიათებს შორისაა.';

  @override
  String get tasbihatDuaSalawatTitle => 'სალავათი';

  @override
  String get tasbihatDuaSalawatWhen =>
      'ყოველი ლოცვის შემდეგ · ბეჭდავს ყველა ვედრებას';

  @override
  String get tasbihatDuaSalawatSource => 'იმამ ალ-სადიყი (ა) — ალ-ქაფი';

  @override
  String get tasbihatDuaSalawatNote =>
      'წინასწარმეტყველისა ﷺ და მისი ოჯახის დალოცვა რეკომენდებულია ყოველი დუას დასასრულს. იმამ ალ-სადიყმა (ა) თქვა: „ნებისმიერი დუა შეჩერებულია, სანამ არ წარმოთქვამ სალავათს მუჰამედსა და მის ოჯახზე“.';

  @override
  String get tasbihatDuaFarajTitle => 'დუა ალ-ფარაჯი';

  @override
  String get tasbihatDuaFarajWhen =>
      'ყოველი ლოცვის შემდეგ · ჩვენი დროის იმამისთვის';

  @override
  String get tasbihatDuaFarajSource =>
      'ნასწავლი იმამ ალ-ჰასან ალ-ასქარის (ა) მიერ';

  @override
  String get tasbihatDuaFarajNote =>
      'A dua for the reappearance of Imam al-Mahdī (af), the twelfth Imam, taught by his father. It is often recited by many Shia Muslims after prayer as an act of devotion to the living Imam.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'ფატიმას თასბიჰი';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'მაღრიბისა და იშას შემდეგ · განსაკუთრებით სასურველი';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'იმამ ალ-ბაყირი (ა) — ბიჰარ ალ-ანვარი';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'იმამ ალ-ბაყირმა (ა) თქვა, რომ ზაჰრას თასბიჰის წაკითხვა იშას შემდეგ, დაძინებამდე, 1000 რაქათ ნაფილა ლოცვაზე უკეთესია.';

  @override
  String get tasbihFatimaGiftPre => 'საჩუქარი წინასწარმეტყველისგან';

  @override
  String get tasbihFatimaGiftPost => 'იკითხება ყოველი ლოცვის შემდეგ';

  @override
  String get prayerTrackerTitle => 'ლოცვის ტრეკერი';

  @override
  String get prayerTrackerPrayed => 'შესრულებულია';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count დღიანი სერია';
  }

  @override
  String get prayerTrackerAllComplete =>
      'ყველა ლოცვა შესრულებულია. ალლაჰმა მიიღოს.';

  @override
  String get dhikrTrackerTitle => 'ზაჰრას თასბიჰი';

  @override
  String get dhikrTrackerCompletedToday => 'დღეს შესრულდა';

  @override
  String get dhikrTrackerNotDoneToday => 'დღეს არ შესრულებულა';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count დღიანი სერია';
  }

  @override
  String get dhikrReminderTitle => 'თასბიჰის შეხსენება';

  @override
  String get dhikrReminderDescription =>
      'ყოველდღიური შეხსენება ზაჰრას თასბიჰის წასაკითხად.';

  @override
  String get dhikrReminderEnable => 'თასბიჰის შეხსენების ჩართვა';

  @override
  String get dhikrReminderTimeLabel => 'შეხსენების დრო';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'დღის ჰადისი';

  @override
  String get hadithLabelArabic => 'არაბული';

  @override
  String get hadithLabelTranslation => 'თარგმანი';

  @override
  String get hadithBadge => 'ჰადისი';

  @override
  String get hadithShare => 'გააზიარეთ ეს ჰადისი';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nVia Ayara';
  }

  @override
  String get hadithNavPrevious => 'წინა';

  @override
  String get hadithNavNext => 'შემდეგი';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => 'The Fourteen Infallibles';

  @override
  String get imamsScreenSubtitle =>
      'The Prophet, Lady Fatima, and the Twelve Imams — the purified and infallible guides in Twelver Shia Islam';

  @override
  String get imamLabelBorn => 'დაიბადა';

  @override
  String get imamLabelMartyrdom => 'შაჰადათი';

  @override
  String get imamLabelStatus => 'სტატუსი';

  @override
  String get imamSectionBiography => 'ბიოგრაფია';

  @override
  String get imamSectionFamousSaying => 'ცნობილი გამონათქვამი';

  @override
  String get imamRoleProphet => 'უკანასკნელი წინასწარმეტყველი';

  @override
  String get imamRoleInfallible => 'უცოდველი';

  @override
  String get imamOrdinal1 => '1-ლი იმამი';

  @override
  String get imamOrdinal2 => 'მე-2 იმამი';

  @override
  String get imamOrdinal3 => 'მე-3 იმამი';

  @override
  String get imamOrdinal4 => 'მე-4 იმამი';

  @override
  String get imamOrdinal5 => 'მე-5 იმამი';

  @override
  String get imamOrdinal6 => 'მე-6 იმამი';

  @override
  String get imamOrdinal7 => 'მე-7 იმამი';

  @override
  String get imamOrdinal8 => 'მე-8 იმამი';

  @override
  String get imamOrdinal9 => 'მე-9 იმამი';

  @override
  String get imamOrdinal10 => 'მე-10 იმამი';

  @override
  String get imamOrdinal11 => 'მე-11 იმამი';

  @override
  String get imamOrdinal12 => 'მე-12 იმამი';

  @override
  String get duaAudioScreenTitle => 'მოუსმინეთ დუებს';

  @override
  String get duaAudioScreenSubtitle => 'აირჩიეთ დუა მოსასმენად.';

  @override
  String get duaAudioComingSoonMessage =>
      'აუდიო ვერსია ხელმისაწვდომი იქნება მომავალ განახლებაში.';

  @override
  String get duaAudioClose => 'დახურვა';

  @override
  String get duaAudioError => 'აუდიოს ჩატვირთვა ვერ მოხერხდა.';

  @override
  String get duaAudioMetaTransmittedBy => 'გადმოცემული';

  @override
  String get duaAudioMetaOccasion => 'შემთხვევა';

  @override
  String get duaAudioMetaDuration => 'ხანგრძლივობა';

  @override
  String get quickActionDailyHadith => 'დღის ჰადისი';

  @override
  String get quickAction14Masumeen => 'Fourteen Infallibles';

  @override
  String get quickActionListenDuas => 'მოსმენა';

  @override
  String get quickActionTasbihat => 'გზამკვლევი';

  @override
  String get pilgrimageSectionTitle => 'წმინდა მოგზაურობა';

  @override
  String get pilgrimageSectionSubtitle => 'ჰაჯისა და უმრას სრული გზამკვლევი';

  @override
  String get hajjCardTitle => 'ჰაჯი';

  @override
  String get hajjCardSubtitle => 'ისლამის მეხუთე ბურჯი';

  @override
  String get hajjCardDescription =>
      'ყოველწლიური დიდი პილიგრიმობა — სავალდებულოა სიცოცხლეში ერთხელ';

  @override
  String get hajjScreenTitle => 'ჰაჯის გზამკვლევი';

  @override
  String get hajjScreenSubtitle => 'ნაბიჯ-ნაბიჯ გზამკვლევი';

  @override
  String get umrahCardTitle => 'უმრა';

  @override
  String get umrahCardSubtitle => 'მცირე პილიგრიმობა';

  @override
  String get umrahCardDescription =>
      'სულიერი მოგზაურობა, რომელიც შეიძლება შესრულდეს წლის ნებისმიერ დროს';

  @override
  String get umrahScreenTitle => 'უმრას გზამკვლევი';

  @override
  String get umrahScreenSubtitle => 'ნაბიჯ-ნაბიჯ გზამკვლევი';

  @override
  String get pilgrimageStepsTitle => 'რიტუალები და ნაბიჯები';

  @override
  String get pilgrimageImportantNotesTitle => 'მნიშვნელოვანი შენიშვნები';

  @override
  String get pilgrimageDuaTitle => 'დუა ამ ეტაპისთვის';

  @override
  String get pilgrimageJafariNoteTitle => 'ჯაფარის ფიქჰის შენიშვნა';

  @override
  String get pilgrimageComplete => '✓ დასრულებულია';

  @override
  String get pilgrimageMarkDone => 'დასრულებად მონიშვნა';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done מתוך $total ნაბიჯი';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes წუთი';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'შიიტი მომლოცველები';

  @override
  String get pilgrimageShiaNoteBody =>
      'ბევრი შიიტი მომლოცველი ასევე მიემგზავრება მედინაში, რათა Masjid al-Nabawi-ში მოილოცოს წინასწარმეტყველი მუჰამედი (SAW) და ეწვიოს Jannat al-Baqi-ში მდებარე საფლავებს. ამ ვიზიტებს ღრმა სულიერი მნიშვნელობა აქვს, თუმცა თავად ჰაჯის რიტუალებს არ ეკუთვნის.';

  @override
  String get hajjIntro =>
      'ჰაჯი ისლამის მეხუთე სვეტია და სიცოცხლეში ერთხელ სავალდებულოა ყოველი მუსლიმისთვის, ვინც ფიზიკურად და ფინანსურად შეძლებს მის შესრულებას. დღეს თორმეტიმამელი შიიტი მომლოცველების უმეტესობისთვის ეს ნიშნავს Hajj al-Tamattu\'-ს, რომელიც Dhul Hijjah-ის თვეში სრულდება წინასწარმეტყველი Ibrahim-ის (AS), მისი ძის Ismail-ის (AS) და Lady Hajar-ის კვალდაკვალ. ეს გზამკვლევი რიტუალების Ja\'fari ხაზის მიხედვით არის შედგენილი, ხოლო მედინაში ზიარათი ჰაჯამდე ან ჰაჯის შემდეგაც რჩება ღრმად დაფასებულ სულიერ მოგზაურობად.';

  @override
  String get umrahIntro =>
      'უმრა არის მცირე პილიგრიმობა მექაში და, ჰაჯისგან განსხვავებით, მისი შესრულება ნებისმიერ დროსაა შესაძლებელი. მას დიდი სულიერი ჯილდო მოაქვს.';

  @override
  String get voiceInputTitle => 'ხმის შესატყვისი';

  @override
  String get voiceInputMicTitle => 'მიკროფონი';

  @override
  String get voiceInputMicSubtitle =>
      'თქვენი შესატყვისი თქვით Ask Ayara-ის ნაცვლად.';

  @override
  String get voiceInputMicDenied => 'მიკროფონის წვდომა უარყოფილია.';

  @override
  String get voiceInputSpeak => 'თქვით ნაცვლად';

  @override
  String get voiceInputListening => 'მოსმენა…';

  @override
  String get voiceInputPermissionDenied =>
      'ხმის შესატყვისისთვის მიკროფონის წვდომა აუცილებელია.';
}
