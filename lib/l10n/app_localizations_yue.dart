// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Yue Chinese Cantonese (`yue`).
class AppLocalizationsYue extends AppLocalizations {
  AppLocalizationsYue([String locale = 'yue']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => '選擇你嘅語言';

  @override
  String get languageSelectSub => '你可以之後喺設定度改改';

  @override
  String get actionContinue => '繼續';

  @override
  String get languageSuggestedHeader => '推薦';

  @override
  String get languageAllHeader => '所有語言';

  @override
  String get languageSuggestedBadge => '推薦';

  @override
  String get languageSearchHint => '搵…';

  @override
  String get planBasic => '標準版';

  @override
  String get planPremium => '威拉亞';

  @override
  String get categorySlot01 => '日常指引';

  @override
  String get categorySlot02 => '信念與信任';

  @override
  String get categorySlot03 => '禮拜反思';

  @override
  String get categorySlot04 => '耐心與希望';

  @override
  String get categorySlot05 => '尋求寬恕';

  @override
  String get categorySlot06 => '慈悲與同情';

  @override
  String get categorySlot07 => '信仰與力量';

  @override
  String get categorySlot08 => '感恩之心';

  @override
  String get categorySlot09 => '人生目的';

  @override
  String get categorySlot10 => '家庭紐帶';

  @override
  String get categorySlot11 => '內心平靜';

  @override
  String get categorySlot12 => '先知智慧';

  @override
  String get categorySlot13 => '良好品德';

  @override
  String get categorySlot14 => '抗拒誘惑';

  @override
  String get categorySlot15 => '晚間紀念';

  @override
  String get categoryCustom => '個人反思';

  @override
  String get dhikrMeaningSubhanallah => '讚美真主';

  @override
  String get dhikrMeaningAlhamdulillah => '一切讚美歸於真主';

  @override
  String get dhikrMeaningAllahuAkbar => '真主最偉大';

  @override
  String get quranVerseHeartAtRest => '誠然，喺紀念真主嘅時候，心靈先能得到安寧。';

  @override
  String get promptHint => '輕按一個分類來獲得伊斯蘭指引同反思';

  @override
  String get currentLanguage => '目前語言';

  @override
  String get settingsLanguage => '語言設定';

  @override
  String get settingsTitle => '設定';

  @override
  String get chooseLanguage => '選擇你嘅語言';

  @override
  String get continueCta => '繼續';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 個字',
      one: '$count 個字',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => '選項';

  @override
  String get newCta => '新增';

  @override
  String get actionsTitle => '你想做啲咩？';

  @override
  String get copy => '複製';

  @override
  String get share => '分享';

  @override
  String get close => '關閉';

  @override
  String get copiedToast => '已複製到剪貼簿';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => '無法生成新回覆';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\n你想再試一次嗎？';
  }

  @override
  String get cancelCta => '取消';

  @override
  String get retryCta => '再試一次';

  @override
  String get authTitle => '建立你嘅帳戶';

  @override
  String get continueAsGuest => '以訪客身份繼續';

  @override
  String get signInGoogle => '用 Google 帳戶登入';

  @override
  String get signInApple => '用 Apple 帳戶登入';

  @override
  String get signInEmail => '用電郵登入';

  @override
  String get upgradeWithApple => '用 Apple 帳戶繼續';

  @override
  String get mustAccept => '你必須同意服務條款同承認隱私政策。';

  @override
  String get termsLabel => '我同意服務條款';

  @override
  String get privacyLabel => '我已閱讀隱私政策';

  @override
  String get marketingOptIn => '我同意接收新聞同優惠';

  @override
  String get openTerms => '服務條款';

  @override
  String get openPrivacy => '隱私政策';

  @override
  String get accountSection => '帳戶';

  @override
  String get guestMode => '訪客模式';

  @override
  String get signedIn => '已登入';

  @override
  String get upgradeHint => '通過建立帳戶，喺各個設備上保存你嘅反思。';

  @override
  String get upgradeWithGoogle => '用 Google 帳戶繼續';

  @override
  String get signOut => '登出';

  @override
  String get snackUpgraded => '帳戶已用 Google 升級 ✅';

  @override
  String get snackSignedIn => '已用 Google 登入 ✅';

  @override
  String get snackSignedOut => '已登出';

  @override
  String get snackSignedInApple => '已用 Apple 登入 ✅';

  @override
  String get snackSignedInGoogle => '已用 Google 登入 ✅';

  @override
  String get snackUpgradedApple => '帳戶已用 Apple 升級 ✅';

  @override
  String get snackUpgradedGoogle => '帳戶已用 Google 升級 ✅';

  @override
  String get historyTitle => '之前嘅反思';

  @override
  String get historyOpenCta => '之前嘅反思';

  @override
  String get historyEmpty => '仲未有保存嘅反思。';

  @override
  String get historyDeleteTitle => '刪除反思？';

  @override
  String get historyDeleteBody => '呢個會永久移除選中嘅項目。';

  @override
  String get deleteCta => '刪除';

  @override
  String get historyButton => '之前嘅反思';

  @override
  String get historyEmptyTitle => '仲未有反思';

  @override
  String get historyEmptyBody => '先生成啲嘢 — 你保存嘅項目會喺度出現。';

  @override
  String get historyDelete => '刪除';

  @override
  String get footerTitle => '用威拉亞、信念同耐心';

  @override
  String get footerSubtitle => '一次禮拜一次';

  @override
  String get genericErrorSnack => '有啲嘢出問題咗 — 請稍後再試。';

  @override
  String get upgradeAccountCta => '喺各個設備上保存你嘅反思 – 建立帳戶';

  @override
  String get deleteAccount => '刪除帳戶';

  @override
  String get exportData => '匯出我嘅資料';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle => '唔好咁急 🐯\nAyara 需要稍停先再來…';

  @override
  String get rateDailyLimit => '而家冇咗反思。\n獲取更多反思或升級到威拉亞。';

  @override
  String get rateCreditsExhausted => '你已經用咗所有反思。\n補充或升級到威拉亞以繼續。';

  @override
  String get rateGraceCreditsExhausted => '而家冇咗反思。\n獲取更多反思或升級到威拉亞。';

  @override
  String get premiumDescription => '威拉亞解鎖高級功能、未來分類同特別徽章。';

  @override
  String ratePlanExhausted(String plan) {
    return '你嘅反思而家空咗。計劃：$plan。';
  }

  @override
  String rateCheckFailed(String message) {
    return '無法檢查你嘅反思：$message';
  }

  @override
  String get rateCheckGenericError => '檢查你嘅反思時出咗問題。';

  @override
  String get aiFallbackGeneric => '有啲嘢出問題咗 — 請稍後再試。';

  @override
  String get limitSectionTitle => '反思';

  @override
  String get limitTodayLabel => '使用情況';

  @override
  String limitCreditsLabel(Object credits) {
    return '剩餘反思：$credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return '計劃：$plan';
  }

  @override
  String get limitLoadingLabel => '載入中…';

  @override
  String get limitLoadingLabelDescription =>
      'Shown in reflections card while usage stats are being fetched.';

  @override
  String get aiLimitTitle => '反思';

  @override
  String get aiLimitSubtitle => '每個回覆使用 1 個反思。標準版包括入門反思。威拉亞解鎖高級分類同啟用補充。';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total 個反思已使用';
  }

  @override
  String get creditsSectionTitle => '反思';

  @override
  String get creditsUsageLabel => '使用情況';

  @override
  String creditsRemainingLabel(Object reflections) {
    return '剩餘反思：$reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return '計劃：$plan';
  }

  @override
  String get creditsLoadingLabel => '載入中…';

  @override
  String get creditsLoadingLabelDescription =>
      'Shown while reflection stats are being fetched.';

  @override
  String get creditsTitle => '反思';

  @override
  String get creditsSubtitle => '每個回覆使用 1 個反思。標準版包括入門反思。威拉亞解鎖高級分類同啟用補充。';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total 個反思已使用';
  }

  @override
  String get settingsDeleteTitle => '刪除帳戶';

  @override
  String get settingsDeleteDescription => '永久刪除你嘅帳戶同所有相關資料。';

  @override
  String get settingsDeleteButtonLabel => '刪除我嘅帳戶';

  @override
  String get settingsDeleteDialogTitle => '刪除帳戶？';

  @override
  String get settingsDeleteDialogBody =>
      '呢個行動係永久嘅，無法復原。\n\n你所有嘅對話、記錄同帳戶資訊都會被刪除。';

  @override
  String get settingsDeleteDialogCancel => '取消';

  @override
  String get settingsDeleteDialogConfirm => '刪除';

  @override
  String get settingsFreeLimitUsedTitle => '入門反思已用完';

  @override
  String get settingsFreeLimitUsedDescription =>
      '呢部裝置嘅入門反思已經用完。升級到威拉亞或購買更多反思以繼續。';

  @override
  String get settingsStarterCreditsUsedTitle => '入門反思已用完';

  @override
  String get settingsStarterCreditsUsedDescription =>
      '呢部裝置嘅入門反思已經用完。升級到威拉亞或購買更多反思以繼續。';

  @override
  String get deviceBoundError => '呢部裝置已經連結到另一個帳戶。請用原始帳戶登入。';

  @override
  String get premiumTitle => '威拉亞模式';

  @override
  String get premiumSubtitleBasic => '解鎖完整嘅 Ayara 體驗。';

  @override
  String get premiumSubtitlePremium => '你用緊威拉亞。需要更多反思？';

  @override
  String premiumCurrentPlan(Object plan) {
    return '目前計劃：$plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return '反思：$remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => '而家無法購買。';

  @override
  String get premiumSignInToPurchase => '登入以購買反思或解鎖威拉亞。';

  @override
  String get premiumRestorePurchases => '復原購買';

  @override
  String get premiumProcessing => '處理中…';

  @override
  String get premiumRestoreHintTitle => '已經喺呢部裝置或其他裝置上購買過威拉亞或反思？';

  @override
  String get premiumRestoreHintBody => '如果購買唔見咗，復原你嘅購買。';

  @override
  String get premiumBuyCredits200 => '購買 200 個反思';

  @override
  String get premiumBuyCredits400 => '購買 400 個反思';

  @override
  String get premiumBecomePremiumOneTime => '升級到威拉亞模式';

  @override
  String get premiumTopupHint => '用威拉亞，你可以喺需要嘅時候隨時補充額外反思。';

  @override
  String get premiumUpgradeCta => '升級';

  @override
  String get premiumRequiredForCategory => '呢個分類只供威拉亞用户使用。喺設定到升級以解鎖所有高級內容。';

  @override
  String get premiumBenefitsBasic => '解鎖威拉亞以獲得額外反思、存取高級分類，同喺需要指引嘅時候繼續。';

  @override
  String get premiumBenefitsPremium => '你用緊威拉亞模式。如果反思唔夠，補充額外反思並無中斷地繼續。';

  @override
  String get premiumButtonBecomePremium => '解鎖威拉亞';

  @override
  String get premiumButtonTopup1000 => '補充 1000 個反思';

  @override
  String get premiumBadge => '威拉亞啟用';

  @override
  String get premiumLoadingStore => '載入商店中…';

  @override
  String get premiumProductNotAvailable => '呢個產品暫時喺商店入面唔提供。請稍後再試。';

  @override
  String get premiumPurchaseError => '購買時出咗問題。請再試一次。';

  @override
  String get premiumBuyCredits100 => '補充 100 個反思';

  @override
  String get premiumFeatureLocked => '解鎖威拉亞以存取呢個功能。';

  @override
  String get lockedCategoriesHint => '部分分類保留俾威拉亞會員。解鎖佢哋以探索你心靈旅途上嘅每個反思。';

  @override
  String get freePlanBlockedTitle => '你已經用完入門反思';

  @override
  String get freePlanBlockedBody =>
      '你用緊標準計劃同入門反思，已經到達上限。要繼續 — 同解鎖高級分類 — 升級到威拉亞。';

  @override
  String get freePlanBlockedCtaGoPremium => '睇下面嘅威拉亞選項';

  @override
  String get graceBlockedTitle => '你已經用完入門反思';

  @override
  String get graceBlockedBody => '你用緊標準計劃同入門反思，已經到達上限。要繼續 — 同解鎖高級分類 — 升級到威拉亞。';

  @override
  String get graceBlockedCtaGoPremium => '睇下面嘅威拉亞選項';

  @override
  String get rateGuestMustSignIn => '登入以使用 Ayara 同你嘅反思。';

  @override
  String get guestNoCreditsTitle => '訪客模式';

  @override
  String get guestNoCreditsBody => '以訪客身份，你可以瀏覽應用，但無法使用反思。之後喺設定登入以使用反思同解鎖購買。';

  @override
  String get guestDialogContinue => '繼續';

  @override
  String get guestDialogLoginInstead => '登入代替';

  @override
  String get optionalLabel => '可選';

  @override
  String get accountDeleteSuccessTitle => '帳戶已刪除';

  @override
  String get accountDeleteSuccessBody => '你嘅帳戶同相關資料已成功刪除。';

  @override
  String get accountDeleteSuccessClose => '關閉';

  @override
  String get accountDeleteErrorTitle => '無法刪除帳戶';

  @override
  String get accountDeleteErrorClose => '確定';

  @override
  String get accountDeleteReauthCancelled => '重新認證已取消。請重新登入並重試刪除。';

  @override
  String get accountDeleteReauthRequired => '帳戶刪除需要最近嘅登入。請登出、重新登入，然後重試。';

  @override
  String get settingsDeletePermanentWarning =>
      '呢個行動係永久嘅，無法復原。所有與你帳戶相關聯嘅資料都會被刪除。';

  @override
  String get dailyGraceTitle => '日常指引';

  @override
  String get dailyGraceScriptureLabel => '今日經文';

  @override
  String get dailyGraceSaintLabel => '本週學者';

  @override
  String get dailyGraceReflectionLabel => '晚間反思';

  @override
  String get dailyGraceCopiedToast => '經文已複製到剪貼簿';

  @override
  String get locationConsentLabel => '允許 Ayara 使用我嘅位置以提供克卜拉方向同禱告時間';

  @override
  String get locationConsentHint => '僅用於呢啲功能。你嘅位置從不分享或儲存。';

  @override
  String get askPageTitle => '問 Ayara';

  @override
  String get askPageDescription =>
      '問關於信念、禱告、人生或伊斯蘭實踐嘅任何嘢，並獲得植根於《古蘭經》同聖親族教導嘅指引。';

  @override
  String get askPageInputHint => '喺度輸入你嘅問題…';

  @override
  String get askPageSubmitCta => '提問';

  @override
  String get askPageInputEmptyError => '請先寫好問題。';

  @override
  String get askResultYourQuestion => '你嘅問題';

  @override
  String get guidancePageTitle => '克卜拉';

  @override
  String get qiblaFacingMecca => '面向麥加';

  @override
  String get qiblaCompassInstruction => '旋轉你嘅手機直到金色針指向上方。\n呢個方向就指向克卜拉（麥加）。';

  @override
  String get qiblaGpsUnavailableBody => 'GPS 訊號弱。移到室外並輕按重試。';

  @override
  String get qiblaRetry => '重試';

  @override
  String get qiblaTitle => '克卜拉方向';

  @override
  String qiblaDistanceLabel(String km) {
    return '距麥加 $km 公里';
  }

  @override
  String get qiblaLocationNeededTitle => '需要位置';

  @override
  String get qiblaLocationNeededBody => '允許位置存取咁 Ayara 先至可以計算你無論喺邊嘅方向到聖殿嘅方向。';

  @override
  String get qiblaOpenSettings => '開啟設定';

  @override
  String get qiblaCompassLoading => '尋搵你嘅位置…';

  @override
  String get qiblaTowardMecca => '指向麥加';

  @override
  String get prayerTimesTitle => '禱告時間';

  @override
  String get prayerTimesFajr => '晨禮';

  @override
  String get prayerTimesDhuhr => '晌禮';

  @override
  String get prayerTimesAsr => '晡禮';

  @override
  String get prayerTimesMaghrib => '昏禮';

  @override
  String get prayerTimesIsha => '宵禮';

  @override
  String get prayerTimesLocationNeededTitle => '需要位置';

  @override
  String get prayerTimesLocationNeededBody =>
      '允許位置存取咁 Ayara 先至可以為你嘅城市計算準確嘅禱告時間。';

  @override
  String get prayerTimesNextLabel => '下一個';

  @override
  String get prayerTimesDoneLabel => '完成';

  @override
  String get monthlyPrayerTimesTitle => '每月禱告時間';

  @override
  String get monthlyPrayerTimesViewButton => '查看整個月份';

  @override
  String get monthlyPrayerTimesNextMonth => '下個月';

  @override
  String get monthlyPrayerTimesDayHeader => '日期';

  @override
  String get sharePrayerTimes => '分享禱告時間';

  @override
  String get notificationsSectionTitle => '通知';

  @override
  String get notificationsSectionSubtitle => '禱告提醒、日曆事件及更多';

  @override
  String get dailyReflectionReminderTitle => '日常反思';

  @override
  String get dailyReflectionReminderDescription =>
      '一個溫柔嘅每日提醒，鼓勵你開啟 Ayara 並與你嘅信念相連。';

  @override
  String get dailyReflectionReminderEnable => '啟用每日提醒';

  @override
  String get dailyReflectionReminderTimeLabel => '提醒時間';

  @override
  String get prayerNotificationsTitle => '禱告提醒';

  @override
  String get prayerNotificationsDescription => '喺每個禱告時間前收到溫柔提醒，幫助你全日保持連繫。';

  @override
  String get prayerNotificationsEnable => '啟用禱告提醒';

  @override
  String get prayerNotificationsOpenSettings => '開啟通知設定';

  @override
  String get prayerNotificationsDenied => '通知已停用';

  @override
  String get prayerNotificationsDeniedHint => '去設定同允許 Ayara 嘅通知以接收禱告時間提醒。';

  @override
  String get notificationsConsentLabel => '允許禱告時間通知';

  @override
  String get prayerNotifTitleFajr => '🌅 晨禮';

  @override
  String get prayerNotifBodyFajr =>
      '晨禮係聖親族嘅早晨禱告。阿里伊瑪目(願真主祝福他)說：守衛晨禮如同守衛你最珍貴嘅信託。醒來、淨化自己，站喺真主面前。';

  @override
  String get prayerNotifTitleDhuhr => '☀️ 晌禮';

  @override
  String get prayerNotifBodyDhuhr =>
      '聖親族嘅伊瑪目重視每一刻嘅紀念。暫停你嘅日常，如果需要可以合併晌禮同晡禮，然後將你嘅心歸向真主。';

  @override
  String get prayerNotifTitleAsr => '🌤️ 晡禮';

  @override
  String get prayerNotifBodyAsr => '守衛禱告，因為佢係你同真主之間嘅契約。晡禮時間到咗 — 唔好匆匆而過而無紀念。';

  @override
  String get prayerNotifTitleMaghrib => '🌇 昏禮';

  @override
  String get prayerNotifBodyMaghrib =>
      '太陽下山 — 呢個時刻聖親族認為係神聖嘅，用來祈禱。獻上昏禮同喺夜晚開始前打開你嘅雙手向真主祈禱。';

  @override
  String get prayerNotifTitleIsha => '🌙 宵禮';

  @override
  String get prayerNotifBodyIsha =>
      '喺真主陪伴下結束你嘅一天。伊瑪目鼓勵宵禮後進行夜間禮拜 — 但首先，完成你嘅宵禮同用祂嘅紀念結束一天。';

  @override
  String get outOfReflectionsBannerText => '你已經用完所有反思';

  @override
  String get outOfReflectionsBannerCta => '獲取更多';

  @override
  String get dhikrPageTitle => '紀念';

  @override
  String get dhikrTapToCount => '輕按圓圈來計數';

  @override
  String get dhikrResetButton => '重設';

  @override
  String get dhikrComplete => '馬沙真主';

  @override
  String get dhikrCompleteMessage => '你已經完成 100 次紀念真主。願佢哋係你心靈嘅光芒。';

  @override
  String get disclaimerTitle => '關於呢個應用嘅指引';

  @override
  String get disclaimerBody =>
      'Ayara 提供伊斯蘭反思、提醒同精神內容以支持你個人嘅信仰旅程，植根於《古蘭經》同聖親族嘅教導。呢啲內容僅作一般資訊同靈感用途提供。\n\nAyara 唔代替合資格嘅學問。\n呢個應用嘅指引唔係學過伊斯蘭嘅學者、馬爾賈或神學受訓教師嘅替代品。喺什葉伊斯蘭中，宗教指引植根於賈法里教法學派(Fiqh)同跟隨一位活著嘅馬爾賈(效仿源泉) — 一位有資格嘅法學家，其裁決指導信徒嘅宗教實踐。如果你對宗教裁決、清真同禁止事項或個人宗教義務有疑問，請向一位有資格嘅馬爾賈或你社區嘅學者尋求建議。\n\n呢個應用唔發出宗教裁決。\nAyara 唔對教法學(Fiqh)或個人宗教義務事項做權威性判定。呢度任何嘢都唔應被視為宗教判決或具約束力嘅宗教指示。\n\n聖親族嘅中心地位。\n喺什葉伊斯蘭中，先知穆罕默德願真主祝福他同他純潔嘅家族 — 聖親族 — 係古蘭經之後伊斯蘭社區嘅權威指引。十二位聖親族嘅伊瑪目係伊斯蘭教導嘅神聖指定釋解者。呢個應用嘅內容反映呢個傳統同尋求忠實榮耀佢。\n\n社區事務。\n呢個應用旨在鼓勵你參與信仰，同時深深尊重你當地清真寺、伊斯蘭中心同宗教社區嘅重要角色。我們鼓勵你與你身邊嘅有資格教師保持聯繫同學習。';

  @override
  String get disclaimerClose => '我明白';

  @override
  String get disclaimerInfoTooltip => '關於呢個應用嘅指引';

  @override
  String get disclaimerSettingsSubtitle => '僅供一般資訊用。輕按以閱讀完整免責聲明。';

  @override
  String get disclaimerSectionHeader => '指引免責聲明';

  @override
  String get navHome => '主頁';

  @override
  String get navReflect => '反思';

  @override
  String get navDuas => '祈禱詞';

  @override
  String get navCalendar => '日曆';

  @override
  String get dashboardToday => '今日';

  @override
  String get dashboardComingUp => '即將來臨';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '日',
      one: '日',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => '快速存取';

  @override
  String get quickActionQibla => '克卜拉';

  @override
  String get quickActionDhikr => '紀念';

  @override
  String get quickActionDailyGrace => '指引';

  @override
  String get quickActionPrayerTimes => '禱告時間';

  @override
  String get askAyaraTitle => '問 Ayara';

  @override
  String get askAyaraSubtitle => '問任何伊斯蘭問題並獲得深思熟慮嘅引導答案。';

  @override
  String get askAyaraHint => '例：齋月嘅意義係咩？';

  @override
  String get askAyaraSubmit => '提問';

  @override
  String get wisdomOfTheDayTitle => '今日智慧';

  @override
  String get calendarScreenTitle => '伊斯蘭日曆';

  @override
  String get calendarUpcomingOccasions => '即將來臨嘅場合';

  @override
  String get calendarOccasionRemindersTitle => '場合提醒';

  @override
  String get calendarOccasionRemindersHint => '喺每個場合前一晚通知';

  @override
  String get calendarNotifPermissionDenied => '通知權限被拒絕。喺你嘅裝置設定中啟用。';

  @override
  String get calendarNoEvents => '未發現即將來臨嘅事件。';

  @override
  String get calendarAddToPhone => '添加到電話日曆';

  @override
  String get calendarAddedToPhone => '已添加到日曆';

  @override
  String get calendarCountdownToday => '今日';

  @override
  String get calendarCountdownTomorrow => '明日';

  @override
  String calendarCountdownDays(int days) {
    return '喺 $days 日後';
  }

  @override
  String get calendarAH => '希吉拉紀年';

  @override
  String get calendarMonthJan => '1月';

  @override
  String get calendarMonthFeb => '2月';

  @override
  String get calendarMonthMar => '3月';

  @override
  String get calendarMonthApr => '4月';

  @override
  String get calendarMonthMay => '5月';

  @override
  String get calendarMonthJun => '6月';

  @override
  String get calendarMonthJul => '7月';

  @override
  String get calendarMonthAug => '8月';

  @override
  String get calendarMonthSep => '9月';

  @override
  String get calendarMonthOct => '10月';

  @override
  String get calendarMonthNov => '11月';

  @override
  String get calendarMonthDec => '12月';

  @override
  String get calendarSeasonMuharramEarly => '穆哈蘭月嘅日子 — 紀念卡爾巴拉';

  @override
  String get calendarSeasonAshura => '阿舒拉 — 願胡賽因(願真主祝福他)平安';

  @override
  String get calendarSeasonMuharramLate => '穆哈蘭月 — 哀悼同反思嘅日子';

  @override
  String get calendarSeasonArbaeen => '阿爾巴因 — 胡賽因四十日';

  @override
  String get calendarSeasonRoadToArbaeen => '通往阿爾巴因嘅道路';

  @override
  String get calendarSeasonMabath => '穆巴斯祝福 — 啟示嘅曙光';

  @override
  String get calendarSeasonMidShaban => '舍班月中 — 伊瑪目馬赫迪(願真主加速他嘅降臨)誕辰';

  @override
  String get calendarSeasonRamadan => '齋月祝福 — 古蘭經嘅月份';

  @override
  String get calendarSeasonGhadir => '蓋迪爾節祝福！';

  @override
  String get hijriMonth1 => '穆哈蘭';

  @override
  String get hijriMonth2 => '薩法爾';

  @override
  String get hijriMonth3 => '賴比月初';

  @override
  String get hijriMonth4 => '賴比月末';

  @override
  String get hijriMonth5 => '主馬達月初';

  @override
  String get hijriMonth6 => '主馬達月末';

  @override
  String get hijriMonth7 => '賴哲卜';

  @override
  String get hijriMonth8 => '舍班';

  @override
  String get hijriMonth9 => '齋月';

  @override
  String get hijriMonth10 => '閃瓦魯';

  @override
  String get hijriMonth11 => '都爾蓋爾迪';

  @override
  String get hijriMonth12 => '都爾海吉';

  @override
  String get duasScreenTitle => '祈禱詞與訪聖詞';

  @override
  String get duasSearchHint => '搵祈禱詞、訪聖詞…';

  @override
  String get duasFilterAll => '全部';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 個祈禱詞與訪聖詞',
      one: '$count 個祈禱詞',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => '未找到祈禱詞。';

  @override
  String get duaCategoryDaily => '日常';

  @override
  String get duaCategoryWeekly => '每週';

  @override
  String get duaCategoryOccasions => '場合';

  @override
  String get duaCategoryZiyarat => '訪聖詞';

  @override
  String get duaCategoryTasbih => '讚頌詞';

  @override
  String get eventTypeBirth => '誕辰';

  @override
  String get eventTypeMartyrdom => '殉難';

  @override
  String get eventTypeOccasion => '場合';

  @override
  String get duaCopyTooltip => '複製翻譯';

  @override
  String get duaToggleTransliteration => '譯音';

  @override
  String get duaToggleTranslation => '翻譯';

  @override
  String get duaAskAiLabel => '請 Ayara 解釋呢個祈禱詞';

  @override
  String get duaAskAiLockedLabel => '請 Ayara 解釋(威拉亞)';

  @override
  String get duaAiLockedMessage => 'Ayara 解釋僅供威拉亞會員使用。喺設定中升級。';

  @override
  String duaAiComingSoon(String name) {
    return '請 Ayara 解釋\"$name\" — 即將推出！';
  }

  @override
  String get duaCopiedToast => '祈禱詞已複製到剪貼簿。';

  @override
  String get tasbihAllahuAkbarMeaning => '真主最偉大';

  @override
  String get tasbihAlhamdulillahMeaning => '所有讚美歸於真主';

  @override
  String get tasbihSubhanallahMeaning => '讚美真主';

  @override
  String get tasbihResetTooltip => '重設';

  @override
  String get tasbihCompleteTitle => '讚頌詞完成';

  @override
  String get tasbihCompleteMessage => '願真主接受你嘅紀念。';

  @override
  String get tasbihTapHint => '任何地方輕按來計數';

  @override
  String get tasbihatScreenTitle => '禮拜指南';

  @override
  String get tasbihatScreenSubtitle => '禮拜讚頌詞';

  @override
  String get tasbihatScreenDescription =>
      '完整嘅禮拜期間同之後背誦嘅讚頌詞指南 — 遵循聖親族(願真主祝福他們)嘅傳統。';

  @override
  String get tasbihatArba3Title => '四句讚頌詞';

  @override
  String get tasbihatArba3Subtitle => '喺第 3 同第 4 拜中背誦';

  @override
  String get tasbihatArba3Info =>
      '喺什葉教法中，四句讚頌詞代替晌禮、晡禮、昏禮同宵禮嘅第 3 同第 4 拜中嘅《開篇章》。背誦一次係義務(瓦吉卜)，背誦三次係推薦(穆斯塔哈卜)。';

  @override
  String get tasbihatArba3Translation => '讚美真主 · 所有讚美歸於真主\n萬物非主唯有真主 · 真主最偉大';

  @override
  String get tasbihatArba3CompleteTitle => '背誦完成';

  @override
  String get tasbihatArba3CompleteMessage => '願你嘅禮拜被接受 — 誠如所願';

  @override
  String get tasbihatArba3TapHint => '每次背誦後輕按';

  @override
  String get tasbihatZahraSubtitle => '每個禮拜後 · 100 顆念珠';

  @override
  String get tasbihatZahraOriginLabel => '起源';

  @override
  String get tasbihatZahraHadith =>
      '法蒂瑪·扎赫拉(願真主祝福她)向先知(願真主祝福他)要求一個僕人。他說：\"我何不引導你走向更好嘅道路呢？喺每個禮拜後背誦讚美真主 33 次、所有讚美歸於真主 33 次、真主最偉大 34 次。呢個對你比一個僕人更好。\"';

  @override
  String get tasbihatZahraHadithSource => '— 照亮山河 85 卷';

  @override
  String get tasbihatZahraOpenCounter => '開啟讚頌詞計數器';

  @override
  String get tasbihatDuasTitle => '推薦祈禱詞';

  @override
  String get tasbihatDuasSubtitle => '完成禮拜後';

  @override
  String get tasbihatDuaAyatKursiTitle => '古蘭經 2:255';

  @override
  String get tasbihatDuaAyatKursiWhen => '每個義務禮拜後';

  @override
  String get tasbihatDuaAyatKursiSource => '蘇拉特·巴卡拉 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      '誰喺每個義務禮拜後背誦古蘭經 2:255，天堂同他之間只有死亡嘅距離。伊瑪目·巴基爾(願真主祝福他)說佢係古蘭經中最偉大嘅經文。';

  @override
  String get tasbihatDuaSalawatTitle => '祝福';

  @override
  String get tasbihatDuaSalawatWhen => '每個禮拜後 · 印證所有祈禱詞';

  @override
  String get tasbihatDuaSalawatSource => '伊瑪目·薩迪克(願真主祝福他) — 古蘭經智慧';

  @override
  String get tasbihatDuaSalawatNote =>
      '向先知(願真主祝福他)同他純潔嘅家族(穆罕默德嘅後代)祝福係推薦嘅做法，用來印證每個祈禱詞。伊瑪目·薩迪克(願真主祝福他)說：\"任何祈禱詞都係懸浮嘅直到你向穆罕默德同他嘅家族祝福。\"';

  @override
  String get tasbihatDuaFarajTitle => '救援祈禱詞';

  @override
  String get tasbihatDuaFarajWhen => '每個禮拜後 · 為我們時代嘅伊瑪目';

  @override
  String get tasbihatDuaFarajSource => '伊瑪目·哈桑·阿斯克里(願真主祝福他)教導';

  @override
  String get tasbihatDuaFarajNote =>
      '為伊瑪目·馬赫迪(願真主加速他嘅降臨)再現祈禱，由他嘅父親教導。什葉信眾喺每個禮拜後每日背誦作為對現存伊瑪目嘅虔誠行為。';

  @override
  String get tasbihatDuaTasbihFatimaTitle => '法蒂瑪嘅讚頌詞';

  @override
  String get tasbihatDuaTasbihFatimaWhen => '昏禮同宵禮後 · 特別推薦';

  @override
  String get tasbihatDuaTasbihFatimaSource => '伊瑪目·巴基爾(願真主祝福他) — 照亮山河';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      '伊瑪目·巴基爾(願真主祝福他)說，喺宵禮後睡前背誦法蒂瑪嘅讚頌詞比 1000 拜可選禮拜更好。佢嘅光輝升上天堂。';

  @override
  String get tasbihFatimaGiftPre => '先知嘅禮物';

  @override
  String get tasbihFatimaGiftPost => '喺每個禮拜後背誦';

  @override
  String get prayerTrackerTitle => '禮拜追蹤';

  @override
  String get prayerTrackerPrayed => '已禮拜';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count 日連續';
  }

  @override
  String get prayerTrackerAllComplete => '今日所有禮拜已完成。願真主接受。';

  @override
  String get dhikrTrackerTitle => '法蒂瑪讚頌詞';

  @override
  String get dhikrTrackerCompletedToday => '今日已完成';

  @override
  String get dhikrTrackerNotDoneToday => '今日未完成';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count 日連續';
  }

  @override
  String get dhikrReminderTitle => '讚頌詞提醒';

  @override
  String get dhikrReminderDescription => '一個溫柔嘅每日提醒，鼓勵你背誦法蒂瑪讚頌詞(願真主祝福她)。';

  @override
  String get dhikrReminderEnable => '啟用讚頌詞提醒';

  @override
  String get dhikrReminderTimeLabel => '提醒時間';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => '日常聖訓';

  @override
  String get hadithLabelArabic => '阿拉伯語';

  @override
  String get hadithLabelTranslation => '翻譯';

  @override
  String get hadithBadge => '聖訓';

  @override
  String get hadithShare => '分享呢個聖訓';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\n經由 Ayara';
  }

  @override
  String get hadithNavPrevious => '上一個';

  @override
  String get hadithNavNext => '下一個';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '14 位無罪者';

  @override
  String get imamsScreenSubtitle => '先知、法蒂瑪同十二位伊瑪目 — 伊斯蘭嘅無罪指引者';

  @override
  String get imamLabelBorn => '誕生';

  @override
  String get imamLabelMartyrdom => '殉難';

  @override
  String get imamLabelStatus => '地位';

  @override
  String get imamSectionBiography => '傳記';

  @override
  String get imamSectionFamousSaying => '名言';

  @override
  String get imamRoleProphet => '最後嘅先知';

  @override
  String get imamRoleInfallible => '無罪者';

  @override
  String get imamOrdinal1 => '第 1 位伊瑪目';

  @override
  String get imamOrdinal2 => '第 2 位伊瑪目';

  @override
  String get imamOrdinal3 => '第 3 位伊瑪目';

  @override
  String get imamOrdinal4 => '第 4 位伊瑪目';

  @override
  String get imamOrdinal5 => '第 5 位伊瑪目';

  @override
  String get imamOrdinal6 => '第 6 位伊瑪目';

  @override
  String get imamOrdinal7 => '第 7 位伊瑪目';

  @override
  String get imamOrdinal8 => '第 8 位伊瑪目';

  @override
  String get imamOrdinal9 => '第 9 位伊瑪目';

  @override
  String get imamOrdinal10 => '第 10 位伊瑪目';

  @override
  String get imamOrdinal11 => '第 11 位伊瑪目';

  @override
  String get imamOrdinal12 => '第 12 位伊瑪目';

  @override
  String get duaAudioScreenTitle => '聽祈禱詞';

  @override
  String get duaAudioScreenSubtitle => '選擇一個祈禱詞來聽。輕按標題以播放或暫停。';

  @override
  String get duaAudioComingSoonMessage => '呢個祈禱詞嘅音頻將喺即將到來嘅更新中提供。';

  @override
  String get duaAudioClose => '關閉';

  @override
  String get duaAudioError => '無法載入音頻。請檢查你嘅連接。';

  @override
  String get duaAudioMetaTransmittedBy => '傳述者';

  @override
  String get duaAudioMetaOccasion => '場合';

  @override
  String get duaAudioMetaDuration => '時長';

  @override
  String get quickActionDailyHadith => '日常聖訓';

  @override
  String get quickAction14Masumeen => '14 位無罪者';

  @override
  String get quickActionListenDuas => '聽';

  @override
  String get quickActionTasbihat => '禮拜指南';

  @override
  String get pilgrimageSectionTitle => '神聖之旅';

  @override
  String get pilgrimageSectionSubtitle => '朝覲同副朝完整指南 — 麥加真主聖殿朝聖';

  @override
  String get hajjCardTitle => '朝覲';

  @override
  String get hajjCardSubtitle => '伊斯蘭五功第五';

  @override
  String get hajjCardDescription => '偉大嘅年度朝聖 — 對每個有能力嘅穆斯林終身一次義務';

  @override
  String get hajjScreenTitle => '朝覲指南';

  @override
  String get hajjScreenSubtitle => '偉大朝聖分步驟指南';

  @override
  String get umrahCardTitle => '副朝';

  @override
  String get umrahCardSubtitle => '小朝覲';

  @override
  String get umrahCardDescription => '一次深刻有意義嘅精神之旅，可喺全年任何時候進行';

  @override
  String get umrahScreenTitle => '副朝指南';

  @override
  String get umrahScreenSubtitle => '小朝覲分步驟指南';

  @override
  String get pilgrimageStepsTitle => '儀式與步驟';

  @override
  String get pilgrimageImportantNotesTitle => '重要註記';

  @override
  String get pilgrimageDuaTitle => '這一步的祈禱';

  @override
  String get pilgrimageJafariNoteTitle => '賈法里法學註解';

  @override
  String get pilgrimageComplete => '✓ 完成';

  @override
  String get pilgrimageMarkDone => '標記為完成';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done / $total 步驟';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes 分鐘';
  }

  @override
  String get pilgrimageShiaNoteTitle => '什葉朝聖者';

  @override
  String get pilgrimageShiaNoteBody =>
      '什葉朝聖者傳統上還會前往麥地那訪問先知穆罕默德(願真主祝福他)喺聖寺嘅陵墓同聖親族伊瑪目嘅陵墓喺天堂公墓。呢啲訪問具有深遠嘅精神意義，對大多數什葉穆斯林而言被認為係旅途不可或缺嘅一部分。';

  @override
  String get hajjIntro =>
      '朝覲係伊斯蘭五功第五，對每個身體同經濟能力嘅穆斯林而言終身一次係義務。喺都爾海吉月進行，佢追蹤先知易卜拉欣(願真主祝福他)、他嘅兒子易司馬儀(願真主祝福他)同夏甲女士嘅足跡。對什葉穆斯林，朝覲亦包括訪問先知(願真主祝福他)同聖親族喺麥地那嘅安息之地呢個深刻嘅祝福。';

  @override
  String get umrahIntro =>
      '副朝係小朝覲麥加，同朝覲唔同，可喺全年任何時候進行。雖然唔係義務，但佢具有巨大精神獎賞，被認為係高度推薦嘅拜功行為。佢與朝覲分享幾個儀式但更短，包括四個主要儀式。';
}
