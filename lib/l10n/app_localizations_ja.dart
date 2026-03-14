// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => '言語を選択してください';

  @override
  String get languageSelectSub => 'これは後で設定から変更できます';

  @override
  String get actionContinue => '続ける';

  @override
  String get languageSuggestedHeader => 'おすすめ';

  @override
  String get languageAllHeader => 'すべての言語';

  @override
  String get languageSuggestedBadge => 'おすすめ';

  @override
  String get languageSearchHint => '検索…';

  @override
  String get planBasic => 'スタンダード';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => '毎日の導き';

  @override
  String get categorySlot02 => 'イーマーンと信頼';

  @override
  String get categorySlot03 => '礼拝の内省';

  @override
  String get categorySlot04 => '忍耐と希望';

  @override
  String get categorySlot05 => '赦しを求める';

  @override
  String get categorySlot06 => '慈悲と思いやり';

  @override
  String get categorySlot07 => '信仰の力';

  @override
  String get categorySlot08 => '感謝の心';

  @override
  String get categorySlot09 => '人生の目的';

  @override
  String get categorySlot10 => '家族の絆';

  @override
  String get categorySlot11 => '心の平安';

  @override
  String get categorySlot12 => '預言者の知恵';

  @override
  String get categorySlot13 => '良き人格';

  @override
  String get categorySlot14 => '誘惑に抗う';

  @override
  String get categorySlot15 => '夜のズィクル';

  @override
  String get categoryCustom => '個人的な内省';

  @override
  String get dhikrMeaningSubhanallah => 'アッラーに栄光あれ';

  @override
  String get dhikrMeaningAlhamdulillah => 'すべての称賛はアッラーに属する';

  @override
  String get dhikrMeaningAllahuAkbar => 'アッラーは最も偉大である';

  @override
  String get quranVerseHeartAtRest => 'まことに、アッラーの念想によって心は安らぐ。';

  @override
  String get promptHint => 'カテゴリーをタップして、イスラームの導きと内省を受け取りましょう';

  @override
  String get currentLanguage => '現在の言語';

  @override
  String get settingsLanguage => '言語設定';

  @override
  String get settingsTitle => '設定';

  @override
  String get chooseLanguage => '言語を選択してください';

  @override
  String get continueCta => '続ける';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count語',
      one: '$count語',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'オプション';

  @override
  String get newCta => '新規';

  @override
  String get actionsTitle => '何をしたいですか？';

  @override
  String get copy => 'コピー';

  @override
  String get share => '共有';

  @override
  String get close => '閉じる';

  @override
  String get copiedToast => 'クリップボードにコピーしました';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => '新しい返信を生成できませんでした';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nもう一度試しますか？';
  }

  @override
  String get cancelCta => 'キャンセル';

  @override
  String get retryCta => 'もう一度試す';

  @override
  String get authTitle => 'アカウントを作成';

  @override
  String get continueAsGuest => 'ゲストとして続ける';

  @override
  String get signInGoogle => 'Googleでサインイン';

  @override
  String get signInApple => 'Appleでサインイン';

  @override
  String get signInEmail => 'メールでサインイン';

  @override
  String get upgradeWithApple => 'Appleで続ける';

  @override
  String get mustAccept => '利用規約に同意し、プライバシーポリシーを確認する必要があります。';

  @override
  String get termsLabel => '利用規約に同意します';

  @override
  String get privacyLabel => 'プライバシーポリシーを読みました';

  @override
  String get marketingOptIn => 'ニュースやオファーの受信に同意します';

  @override
  String get openTerms => '利用規約';

  @override
  String get openPrivacy => 'プライバシーポリシー';

  @override
  String get accountSection => 'アカウント';

  @override
  String get guestMode => 'ゲストモード';

  @override
  String get signedIn => 'サインイン済み';

  @override
  String get upgradeHint => 'アカウントを作成すると、内省を複数の端末で保存できます。';

  @override
  String get upgradeWithGoogle => 'Googleで続ける';

  @override
  String get signOut => 'サインアウト';

  @override
  String get snackUpgraded => 'Googleでアカウントをアップグレードしました ✅';

  @override
  String get snackSignedIn => 'Googleでサインインしました ✅';

  @override
  String get snackSignedOut => 'サインアウトしました';

  @override
  String get snackSignedInApple => 'Appleでサインインしました ✅';

  @override
  String get snackSignedInGoogle => 'Googleでサインインしました ✅';

  @override
  String get snackUpgradedApple => 'Appleでアカウントをアップグレードしました ✅';

  @override
  String get snackUpgradedGoogle => 'Googleでアカウントをアップグレードしました ✅';

  @override
  String get historyTitle => '過去の内省';

  @override
  String get historyOpenCta => '過去の内省';

  @override
  String get historyEmpty => 'まだ保存された内省はありません。';

  @override
  String get historyDeleteTitle => '内省を削除しますか？';

  @override
  String get historyDeleteBody => '選択した項目は完全に削除されます。';

  @override
  String get deleteCta => '削除';

  @override
  String get historyButton => '過去の内省';

  @override
  String get historyEmptyTitle => 'まだ内省はありません';

  @override
  String get historyEmptyBody => 'まず何かを生成してください — 保存した項目がここに表示されます。';

  @override
  String get historyDelete => '削除';

  @override
  String get footerTitle => 'Wilaya、Iman、Sabrとともに';

  @override
  String get footerSubtitle => '一度にひとつの祈りを';

  @override
  String get genericErrorSnack => '問題が発生しました — 少し待ってからもう一度お試しください。';

  @override
  String get upgradeAccountCta => '内省を複数の端末で保存する – アカウントを作成';

  @override
  String get deleteAccount => 'アカウントを削除';

  @override
  String get exportData => '自分のデータをエクスポート';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle => '少し落ち着いて 🐯\nAyara は次の返信まで少し時間が必要です…';

  @override
  String get rateDailyLimit =>
      '今は内省を使い切っています。\nさらに内省を取得するか、Wilaya にアップグレードしてください。';

  @override
  String get rateCreditsExhausted =>
      'すべての内省を使い切りました。\n続けるにはチャージするか、Wilaya にアップグレードしてください。';

  @override
  String get rateGraceCreditsExhausted =>
      '今は内省を使い切っています。\nさらに内省を取得するか、Wilaya にアップグレードしてください。';

  @override
  String get premiumDescription => 'Wilaya ではプレミアム機能、今後のカテゴリー、特別なバッジが利用できます。';

  @override
  String ratePlanExhausted(String plan) {
    return '現在、内省は残っていません。プラン: $plan。';
  }

  @override
  String rateCheckFailed(String message) {
    return '内省を確認できませんでした: $message';
  }

  @override
  String get rateCheckGenericError => '内省の確認中に問題が発生しました。';

  @override
  String get aiFallbackGeneric => '問題が発生しました — 少し待ってからもう一度お試しください。';

  @override
  String get limitSectionTitle => '内省';

  @override
  String get limitTodayLabel => '利用状況';

  @override
  String limitCreditsLabel(Object credits) {
    return '残りの内省: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'プラン: $plan';
  }

  @override
  String get limitLoadingLabel => '読み込み中…';

  @override
  String get limitLoadingLabelDescription => '内省カードで使用状況の統計を取得している間に表示されます。';

  @override
  String get aiLimitTitle => '内省';

  @override
  String get aiLimitSubtitle =>
      '各返信で 1 つの内省を使います。スタンダードには初期内省が含まれます。Wilaya ではプレミアムカテゴリーが解放され、チャージも可能になります。';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return '$used / $total の内省を使用済み';
  }

  @override
  String get creditsSectionTitle => '内省';

  @override
  String get creditsUsageLabel => '利用状況';

  @override
  String creditsRemainingLabel(Object reflections) {
    return '残りの内省: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'プラン: $plan';
  }

  @override
  String get creditsLoadingLabel => '読み込み中…';

  @override
  String get creditsLoadingLabelDescription => '内省の統計を取得している間に表示されます。';

  @override
  String get creditsTitle => '内省';

  @override
  String get creditsSubtitle =>
      '各返信で 1 つの内省を使います。スタンダードには初期内省が含まれます。Wilaya ではプレミアムカテゴリーが解放され、チャージも可能になります。';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return '$used / $total の内省を使用済み';
  }

  @override
  String get settingsDeleteTitle => 'アカウントを削除';

  @override
  String get settingsDeleteDescription => 'アカウントと関連するすべてのデータを完全に削除します。';

  @override
  String get settingsDeleteButtonLabel => 'アカウントを削除する';

  @override
  String get settingsDeleteDialogTitle => 'アカウントを削除しますか？';

  @override
  String get settingsDeleteDialogBody =>
      'この操作は元に戻せません。\n\nすべてのチャット、履歴、アカウント情報が削除されます。';

  @override
  String get settingsDeleteDialogCancel => 'キャンセル';

  @override
  String get settingsDeleteDialogConfirm => '削除';

  @override
  String get settingsFreeLimitUsedTitle => '初期内省を使い切りました';

  @override
  String get settingsFreeLimitUsedDescription =>
      'この端末の初期内省はすでに使い切られています。続けるには Wilaya にアップグレードするか、内省を追加購入してください。';

  @override
  String get settingsStarterCreditsUsedTitle => '初期内省を使い切りました';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'この端末の初期内省はすでに使い切られています。続けるには Wilaya にアップグレードするか、内省を追加購入してください。';

  @override
  String get deviceBoundError =>
      'この端末はすでに別のアカウントに関連付けられています。元のアカウントでサインインしてください。';

  @override
  String get premiumTitle => 'Wilaya モード';

  @override
  String get premiumSubtitleBasic => 'Ayara のフル体験を解放しましょう。';

  @override
  String get premiumSubtitlePremium => '現在 Wilaya をご利用中です。さらに内省が必要ですか？';

  @override
  String premiumCurrentPlan(Object plan) {
    return '現在のプラン: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return '内省: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => '現在、購入は利用できません。';

  @override
  String get premiumSignInToPurchase => '内省を購入するか Wilaya を解放するにはサインインしてください。';

  @override
  String get premiumRestorePurchases => '購入を復元';

  @override
  String get premiumProcessing => '処理中…';

  @override
  String get premiumRestoreHintTitle =>
      'この端末または別の端末で、すでに Wilaya または内省を購入しましたか？';

  @override
  String get premiumRestoreHintBody => '表示されない場合は購入を復元してください。';

  @override
  String get premiumBuyCredits200 => '内省を200回分購入';

  @override
  String get premiumBuyCredits400 => '内省を400回分購入';

  @override
  String get premiumBecomePremiumOneTime => 'Wilaya モードにアップグレード';

  @override
  String get premiumTopupHint => 'Wilaya では、必要なときにいつでも追加の内省をチャージできます。';

  @override
  String get premiumUpgradeCta => 'アップグレード';

  @override
  String get premiumRequiredForCategory =>
      'このカテゴリーは Wilaya ユーザー限定です。設定からアップグレードして、すべてのプレミアムコンテンツを解放してください。';

  @override
  String get premiumBenefitsBasic =>
      'Wilaya を解放すると、追加の内省、プレミアムカテゴリーへのアクセス、必要なときの継続利用が可能になります。';

  @override
  String get premiumBenefitsPremium =>
      '現在 Wilaya モードです。残りが少ない場合は、追加の内省をチャージして中断なく続けられます。';

  @override
  String get premiumButtonBecomePremium => 'Wilaya を解放';

  @override
  String get premiumButtonTopup1000 => '内省を1000回分追加';

  @override
  String get premiumBadge => 'Wilaya 有効';

  @override
  String get premiumLoadingStore => 'ストアを読み込み中…';

  @override
  String get premiumProductNotAvailable => 'この商品はまだストアで利用できません。後でもう一度お試しください。';

  @override
  String get premiumPurchaseError => '購入中に問題が発生しました。もう一度お試しください。';

  @override
  String get premiumBuyCredits100 => '内省を100回分追加';

  @override
  String get premiumFeatureLocked => 'この機能を利用するには Wilaya を解放してください。';

  @override
  String get lockedCategoriesHint =>
      '一部のカテゴリーは Wilaya メンバー限定です。解放して、旅のすべての内省を探求しましょう。';

  @override
  String get freePlanBlockedTitle => '初期内省を使い切りました';

  @override
  String get freePlanBlockedBody =>
      '現在はスタンダードプランで初期内省をご利用中ですが、上限に達しました。続けるには — またプレミアムカテゴリーを解放するには — Wilaya にアップグレードしてください。';

  @override
  String get freePlanBlockedCtaGoPremium => '以下の Wilaya オプションを見る';

  @override
  String get graceBlockedTitle => '初期内省を使い切りました';

  @override
  String get graceBlockedBody =>
      '現在はスタンダードプランで初期内省をご利用中ですが、上限に達しました。続けるには — またプレミアムカテゴリーを解放するには — Wilaya にアップグレードしてください。';

  @override
  String get graceBlockedCtaGoPremium => '以下の Wilaya オプションを見る';

  @override
  String get rateGuestMustSignIn => 'Ayara と内省を利用するにはサインインしてください。';

  @override
  String get guestNoCreditsTitle => 'ゲストモード';

  @override
  String get guestNoCreditsBody =>
      'ゲストとしてアプリを閲覧できますが、内省は利用できません。後で設定からログインすると、内省の利用や購入の解放ができます。';

  @override
  String get guestDialogContinue => '続ける';

  @override
  String get guestDialogLoginInstead => '代わりにログイン';

  @override
  String get optionalLabel => '任意';

  @override
  String get accountDeleteSuccessTitle => 'アカウントを削除しました';

  @override
  String get accountDeleteSuccessBody => 'アカウントと関連データは正常に削除されました。';

  @override
  String get accountDeleteSuccessClose => '閉じる';

  @override
  String get accountDeleteErrorTitle => 'アカウントを削除できませんでした';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      '再認証がキャンセルされました。再度サインインしてから削除をやり直してください。';

  @override
  String get accountDeleteReauthRequired =>
      'アカウント削除には最近のログインが必要です。サインアウトして再度サインインし、削除をやり直してください。';

  @override
  String get settingsDeletePermanentWarning =>
      'この操作は元に戻せません。アカウントに関連するすべてのデータが削除されます。';

  @override
  String get dailyGraceTitle => '毎日の導き';

  @override
  String get dailyGraceScriptureLabel => '今日の聖句';

  @override
  String get dailyGraceSaintLabel => '今週の聖者';

  @override
  String get dailyGraceReflectionLabel => '夜の内省';

  @override
  String get dailyGraceCopiedToast => '聖句をクリップボードにコピーしました';

  @override
  String get locationConsentLabel =>
      'Qibla の方向と礼拝時間のために Ayara が現在地を使用することを許可する';

  @override
  String get locationConsentHint => 'これらの機能のみに使用されます。位置情報が共有または保存されることはありません。';

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
  String get askPageTitle => 'Ayara に尋ねる';

  @override
  String get askPageDescription =>
      '信仰、礼拝、人生、またはイスラーム実践について何でも質問してください。クルアーンとアフル・アル＝バイトの教えに根ざした導きを受け取れます。';

  @override
  String get askPageInputHint => 'ここに質問を入力してください…';

  @override
  String get askPageSubmitCta => '質問する';

  @override
  String get askPageInputEmptyError => 'まず質問を書いてください。';

  @override
  String get askResultYourQuestion => 'あなたの質問';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'マッカの方向を向いています';

  @override
  String get qiblaCompassInstruction =>
      '金色の針が上を向くまでスマートフォンを回してください。\nその方向がキブラ（マッカ）です。';

  @override
  String get qiblaGpsUnavailableBody => 'GPS 信号が弱いです。屋外へ移動して、再試行をタップしてください。';

  @override
  String get qiblaRetry => '再試行';

  @override
  String get qiblaTitle => 'キブラの方向';

  @override
  String qiblaDistanceLabel(String km) {
    return 'マッカまで $km km';
  }

  @override
  String get qiblaLocationNeededTitle => '位置情報が必要です';

  @override
  String get qiblaLocationNeededBody =>
      '現在地へのアクセスを許可すると、今いる場所からマッカのカアバの方向を Ayara が計算できます。';

  @override
  String get qiblaOpenSettings => '設定を開く';

  @override
  String get qiblaCompassLoading => '現在地を確認中…';

  @override
  String get qiblaTowardMecca => 'マッカの方向へ';

  @override
  String get prayerTimesTitle => '礼拝時間';

  @override
  String get prayerTimesFajr => 'ファジュル';

  @override
  String get prayerTimesDhuhr => 'ズフル';

  @override
  String get prayerTimesAsr => 'アスル';

  @override
  String get prayerTimesMaghrib => 'マグリブ';

  @override
  String get prayerTimesIsha => 'イシャー';

  @override
  String get prayerTimesLocationNeededTitle => '位置情報が必要です';

  @override
  String get prayerTimesLocationNeededBody =>
      'Ayara があなたの都市の正確な礼拝時間を計算できるよう、位置情報へのアクセスを許可してください。';

  @override
  String get prayerTimesNextLabel => '次';

  @override
  String get prayerTimesDoneLabel => '完了';

  @override
  String get monthlyPrayerTimesTitle => '月間礼拝時間';

  @override
  String get monthlyPrayerTimesViewButton => '月全体を見る';

  @override
  String get monthlyPrayerTimesNextMonth => '来月';

  @override
  String get monthlyPrayerTimesDayHeader => '日';

  @override
  String get sharePrayerTimes => '礼拝時間を共有';

  @override
  String get notificationsSectionTitle => '通知';

  @override
  String get notificationsSectionSubtitle => '礼拝リマインダー、カレンダーイベントなど';

  @override
  String get dailyReflectionReminderTitle => '毎日の内省';

  @override
  String get dailyReflectionReminderDescription =>
      'Ayara を開いて信仰とつながるための、やさしい毎日のリマインダーです。';

  @override
  String get dailyReflectionReminderEnable => '毎日のリマインダーを有効にする';

  @override
  String get dailyReflectionReminderTimeLabel => 'リマインダー時刻';

  @override
  String get prayerNotificationsTitle => '礼拝リマインダー';

  @override
  String get prayerNotificationsDescription =>
      '一日の中で信仰とつながり続けられるよう、各礼拝時間の前にやさしいリマインダーを受け取ります。';

  @override
  String get prayerNotificationsEnable => '礼拝リマインダーを有効にする';

  @override
  String get prayerNotificationsOpenSettings => '通知設定を開く';

  @override
  String get prayerNotificationsDenied => '通知は無効になっています';

  @override
  String get prayerNotificationsDeniedHint =>
      '設定で Ayara の通知を許可すると、礼拝時間のリマインダーを受け取れます。';

  @override
  String get notificationsConsentLabel => '礼拝時間の通知を許可する';

  @override
  String get prayerNotifTitleFajr => '🌅 ファジュル — 夜明けの礼拝';

  @override
  String get prayerNotifBodyFajr =>
      'ファジュルはアフル・アル＝バイトの朝の礼拝です。イマーム・アリー（AS）はこう言いました。「夜明けの礼拝を、最も大切な信託を守るように守りなさい。」起きて身を清め、アッラーの御前に立ちましょう。';

  @override
  String get prayerNotifTitleDhuhr => '☀️ ズフル — 正午の礼拝';

  @override
  String get prayerNotifBodyDhuhr =>
      'アフル・アル＝バイトのイマームたちは、想起のあらゆる瞬間を大切にしました。一日の流れをいったん止め、必要ならズフルとアスルを合わせ、心を再びアッラーへ向けましょう。';

  @override
  String get prayerNotifTitleAsr => '🌤️ アスル — 午後の礼拝';

  @override
  String get prayerNotifBodyAsr =>
      '礼拝を守りなさい。なぜならそれは、あなたとアッラーとの契約だからです。アスルの時が来ました — 想起なくして通り過ぎさせないでください。';

  @override
  String get prayerNotifTitleMaghrib => '🌇 マグリブ — 日没の礼拝';

  @override
  String get prayerNotifBodyMaghrib =>
      '日が沈みました — アフル・アル＝バイトが祈願のために神聖とした時間です。マグリブの礼拝を行い、夜が始まる前にドゥアーの中で手をアッラーへ差し伸べましょう。';

  @override
  String get prayerNotifTitleIsha => '🌙 イシャー — 夜の礼拝';

  @override
  String get prayerNotifBodyIsha =>
      '一日をアッラーとともに締めくくりましょう。イマームたちは、イシャーの後のサラート・アル＝ライルを勧めました — ただしまずはイシャーを終え、その想起とともに一日を閉じましょう。';

  @override
  String get outOfReflectionsBannerText => 'すべての内省を使い切りました';

  @override
  String get outOfReflectionsBannerCta => 'もっと入手する';

  @override
  String get dhikrPageTitle => 'ズィクル';

  @override
  String get dhikrTapToCount => '円をタップして数える';

  @override
  String get dhikrResetButton => 'リセット';

  @override
  String get dhikrComplete => 'マーシャーアッラー';

  @override
  String get dhikrCompleteMessage =>
      'アッラーへの想起を 100 回完了しました。それがあなたの心の光となりますように。';

  @override
  String get disclaimerTitle => 'このアプリの導きについて';

  @override
  String get disclaimerBody =>
      'Ayara は、クルアーンとアフル・アル＝バイトの教えに根ざしたイスラームの内省、リマインダー、霊的なコンテンツを提供し、あなた個人の信仰の歩みを支えます。このコンテンツは、一般的な情報提供と霊的な励ましのみを目的として提供されています。\n\nAyara は資格ある学識を置き換えるものではありません。\nこのアプリの導きは、学識あるイスラーム学者、マルジャア、または神学的訓練を受けた教師の代わりにはなりません。シーア派イスラームでは、宗教的導きはジャアファリー法学（フィクフ）と、生きたマルジャア（模範の源）に従う伝統に基づいています。これは、宗教実践において信徒を導く資格ある法学者です。宗教的裁定、ハラールとハラーム、あるいは個人的な宗教上の義務に関する質問がある場合は、資格あるマルジャアまたは地域の学者に相談してください。\n\nこのアプリは宗教的裁定を出しません。\nAyara は、フィクフや個人的な宗教的義務に関する権威ある決定を行いません。ここにある内容はファトワーや拘束力のある宗教指示として扱われるべきではありません。\n\nアフル・アル＝バイトの中心性。\nシーア派イスラームでは、預言者ムハンマド ﷺ とその清浄な家族であるアフル・アル＝バイトは、クルアーンに続くイスラーム共同体の権威ある導き手です。アフル・アル＝バイトの十二イマームは、イスラームの教えを解釈するために神によって任命された存在です。このアプリのコンテンツはこの伝統を反映し、それを忠実に敬おうとするものです。\n\n共同体の重要性。\nこのアプリは、あなたが信仰と関わることを励ますことを目的としつつ、地元のモスク、イスラームセンター、宗教共同体の重要な役割を深く尊重しています。近くの資格ある教師とつながり、そこから学び続けることをお勧めします。';

  @override
  String get disclaimerClose => '理解しました';

  @override
  String get disclaimerInfoTooltip => 'このアプリの導きについて';

  @override
  String get disclaimerSettingsSubtitle =>
      '一般的な情報提供のみを目的としています。タップして全文をお読みください。';

  @override
  String get disclaimerSectionHeader => '導きに関する免責事項';

  @override
  String get navHome => 'ホーム';

  @override
  String get navReflect => '内省';

  @override
  String get navDuas => 'ドゥアー';

  @override
  String get navCalendar => 'カレンダー';

  @override
  String get dashboardToday => '今日';

  @override
  String get dashboardComingUp => '今後の予定';

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
  String get dashboardQuickAccess => 'クイックアクセス';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'ズィクル';

  @override
  String get quickActionDailyGrace => '導き';

  @override
  String get quickActionPrayerTimes => '礼拝時間';

  @override
  String get askAyaraTitle => 'Ayara に尋ねる';

  @override
  String get askAyaraSubtitle => 'イスラームに関するどんな質問でも、丁寧で導きのある答えを受け取れます。';

  @override
  String get askAyaraHint => '例: ラマダーンの意義とは何ですか？';

  @override
  String get askAyaraSubmit => '質問する';

  @override
  String get wisdomOfTheDayTitle => '今日の知恵';

  @override
  String get calendarScreenTitle => 'イスラーム暦';

  @override
  String get calendarUpcomingOccasions => '今後の出来事';

  @override
  String get calendarOccasionRemindersTitle => '行事リマインダー';

  @override
  String get calendarOccasionRemindersHint => '各行事の前夜に通知します';

  @override
  String get calendarNotifPermissionDenied => '通知の許可が拒否されました。端末の設定で有効にしてください。';

  @override
  String get calendarNoEvents => '今後のイベントは見つかりませんでした。';

  @override
  String get calendarAddToPhone => '電話のカレンダーに追加';

  @override
  String get calendarAddedToPhone => 'カレンダーに追加されました';

  @override
  String get calendarCountdownToday => '今日';

  @override
  String get calendarCountdownTomorrow => '明日';

  @override
  String calendarCountdownDays(int days) {
    return '$days日後';
  }

  @override
  String get calendarAH => 'AH';

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
  String get calendarSeasonMuharramEarly => 'ムハッラムの日々 — カルバラーを思い起こす';

  @override
  String get calendarSeasonAshura => 'アーシューラー — ヤー・フサイン（AS）';

  @override
  String get calendarSeasonMuharramLate => 'ムハッラム — 追悼と内省の日々';

  @override
  String get calendarSeasonArbaeen => 'アルバイーン — フサインの四十日';

  @override
  String get calendarSeasonRoadToArbaeen => 'アルバイーンへの道';

  @override
  String get calendarSeasonMabath => 'マブアス・ムバーラク — 啓示の夜明け';

  @override
  String get calendarSeasonMidShaban => 'シャアバーン半ば — イマーム・アル＝マフディー（AJ）の誕生日';

  @override
  String get calendarSeasonRamadan => 'ラマダーン・ムバーラク — クルアーンの月';

  @override
  String get calendarSeasonGhadir => 'イード・アル＝ガディール・ムバーラク！';

  @override
  String get hijriMonth1 => 'ムハッラム';

  @override
  String get hijriMonth2 => 'サファル';

  @override
  String get hijriMonth3 => 'ラビーウル＝アウワル';

  @override
  String get hijriMonth4 => 'ラビーウッ＝サーニー';

  @override
  String get hijriMonth5 => 'ジュマーダー・アル＝アウワル';

  @override
  String get hijriMonth6 => 'ジュマーダー・アル＝サーニー';

  @override
  String get hijriMonth7 => 'ラジャブ';

  @override
  String get hijriMonth8 => 'シャアバーン';

  @override
  String get hijriMonth9 => 'ラマダーン';

  @override
  String get hijriMonth10 => 'シャウワール';

  @override
  String get hijriMonth11 => 'ズル＝カアダ';

  @override
  String get hijriMonth12 => 'ズル＝ヒッジャ';

  @override
  String get duasScreenTitle => 'ドゥアーとズィヤーラ';

  @override
  String get duasSearchHint => 'ドゥアー、ズィヤーラを検索…';

  @override
  String get duasFilterAll => 'すべて';

  @override
  String duasCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件のドゥアーとズィヤーラ',
      one: '$count件のドゥアー',
    );
    return '$_temp0';
  }

  @override
  String get duasEmpty => 'ドゥアーが見つかりません。';

  @override
  String get duaCategoryDaily => '毎日';

  @override
  String get duaCategoryWeekly => '毎週';

  @override
  String get duaCategoryOccasions => '行事';

  @override
  String get duaCategoryZiyarat => 'ズィヤーラ';

  @override
  String get duaCategoryTasbih => 'タスビーフ';

  @override
  String get eventTypeBirth => '誕生';

  @override
  String get eventTypeMartyrdom => '殉教';

  @override
  String get eventTypeOccasion => '行事';

  @override
  String get duaCopyTooltip => '翻訳をコピー';

  @override
  String get duaToggleTransliteration => '転写';

  @override
  String get duaToggleTranslation => '翻訳';

  @override
  String get duaAskAiLabel => 'このドゥアーを Ayara に説明してもらう';

  @override
  String get duaAskAiLockedLabel => 'Ayara に尋ねる（Wilaya）';

  @override
  String get duaAiLockedMessage =>
      'Ayara の解説は Wilaya メンバー向けです。設定からアップグレードしてください。';

  @override
  String duaAiComingSoon(String name) {
    return '「$name」について Ayara に尋ねる — 近日公開！';
  }

  @override
  String get duaCopiedToast => 'ドゥアーをクリップボードにコピーしました。';

  @override
  String get tasbihAllahuAkbarMeaning => 'アッラーは最も偉大である';

  @override
  String get tasbihAlhamdulillahMeaning => 'すべての称賛はアッラーに属する';

  @override
  String get tasbihSubhanallahMeaning => 'アッラーに栄光あれ';

  @override
  String get tasbihResetTooltip => 'リセット';

  @override
  String get tasbihCompleteTitle => 'タスビーフ完了';

  @override
  String get tasbihCompleteMessage => 'アッラーがあなたのズィクルを受け入れてくださいますように。';

  @override
  String get tasbihTapHint => 'どこでもタップして数える';

  @override
  String get tasbihatScreenTitle => '礼拝ガイド';

  @override
  String get tasbihatScreenSubtitle => '礼拝の賛美';

  @override
  String get tasbihatScreenDescription =>
      '日々の礼拝の中と後に唱える賛美についての完全ガイド — アフル・アル＝バイト（a）の伝統に従っています。';

  @override
  String get tasbihatArba3Title => 'タスビハート・アル＝アルバア';

  @override
  String get tasbihatArba3Subtitle => '3・4ラクアで唱える';

  @override
  String get tasbihatArba3Info =>
      'シーア派法学では、タスビハート・アル＝アルバアはズフル、アスル、マグリブ、イシャーの第3・第4ラクアにおいてスーラ・アル＝ファーティハに代わるものです。1回唱えることが義務（ワージブ）であり、3回唱えることが推奨（ムスタハッブ）されています。';

  @override
  String get tasbihatArba3Translation =>
      'アッラーに栄光あれ · すべての称賛はアッラーのもの\nアッラーのほかに神はなし · アッラーは最も偉大である';

  @override
  String get tasbihatArba3CompleteTitle => '読誦完了';

  @override
  String get tasbihatArba3CompleteMessage => 'あなたの礼拝が受け入れられますように — アーミーン';

  @override
  String get tasbihatArba3TapHint => '各読誦のあとにタップ';

  @override
  String get tasbihatZahraSubtitle => '毎礼拝の後 · 100珠';

  @override
  String get tasbihatZahraOriginLabel => '由来';

  @override
  String get tasbihatZahraHadith =>
      'ファーティマ・アル＝ザフラー（sa）は預言者 ﷺ に召使いを求めました。すると彼は言いました。「それよりも良いものを教えようか。毎礼拝の後にスブハーナッラーを33回、アルハムドゥリッラーを33回、アッラーフ・アクバルを34回唱えなさい。それはあなたにとって召使いよりも良い。」';

  @override
  String get tasbihatZahraHadithSource => '— ビハール・アル＝アンワール、第85巻';

  @override
  String get tasbihatZahraOpenCounter => 'タスビーフカウンターを開く';

  @override
  String get tasbihatDuasTitle => '推奨されるドゥアー';

  @override
  String get tasbihatDuasSubtitle => '礼拝を終えたあとに';

  @override
  String get tasbihatDuaAyatKursiTitle => 'アーヤトゥル・クルスィー';

  @override
  String get tasbihatDuaAyatKursiWhen => '各義務礼拝の後';

  @override
  String get tasbihatDuaAyatKursiSource => 'スーラ・アル＝バカラ 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      '各義務礼拝の後にアーヤトゥル・クルスィーを唱える者と天国との間にあるのは死だけです。イマーム・アル＝バーキル（a）は、これがクルアーンの最も偉大な節のひとつであると述べました。';

  @override
  String get tasbihatDuaSalawatTitle => 'サラワート';

  @override
  String get tasbihatDuaSalawatWhen => '各礼拝の後 · すべての祈願を締めくくる';

  @override
  String get tasbihatDuaSalawatSource => 'イマーム・アル＝サーディク（a）— アル＝カーフィー';

  @override
  String get tasbihatDuaSalawatNote =>
      '預言者 ﷺ とその清浄な家族（アール・ムハンマド）に祝福を送ることは、すべてのドゥアーを締めくくるために推奨されています。イマーム・アル＝サーディク（a）はこう言いました。「ムハンマドとその家族にサラワートを送るまで、いかなるドゥアーも保留されたままである。」';

  @override
  String get tasbihatDuaFarajTitle => 'ドゥアー・アル＝ファラジュ';

  @override
  String get tasbihatDuaFarajWhen => '各礼拝の後 · 時代のイマームのために';

  @override
  String get tasbihatDuaFarajSource => 'イマーム・アル＝ハサン・アル＝アスカリー（a）によって教えられた';

  @override
  String get tasbihatDuaFarajNote =>
      'イマーム・アル＝マフディ（アフ）の再出現のためのドゥアで、彼の父によって教えられました。多くのシーア派ムスリムが祈りの後に生きているイマームへの献身の行為としてよく唱えます。';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'ファーティマのタスビーフ';

  @override
  String get tasbihatDuaTasbihFatimaWhen => 'マグリブとイシャーの後 · 特に推奨';

  @override
  String get tasbihatDuaTasbihFatimaSource => 'イマーム・アル＝バーキル（a）— ビハール・アル＝アンワール';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'イマーム・アル＝バーキル（a）は、就寝前にイシャーの後でタスビーフ・アル＝ザフラーを唱えることは、1000ラクアの任意礼拝より優れていると述べました。その光は天へ昇ります。';

  @override
  String get tasbihFatimaGiftPre => '預言者からの贈り物';

  @override
  String get tasbihFatimaGiftPost => '毎礼拝の後に唱える';

  @override
  String get prayerTrackerTitle => '礼拝トラッカー';

  @override
  String get prayerTrackerPrayed => '礼拝済み';

  @override
  String prayerTrackerDayStreak(int count) {
    return '$count日連続';
  }

  @override
  String get prayerTrackerAllComplete =>
      '今日のすべての礼拝が完了しました。アッラーが受け入れてくださいますように。';

  @override
  String get dhikrTrackerTitle => 'タスビーフ・アル＝ザフラー';

  @override
  String get dhikrTrackerCompletedToday => '今日は完了';

  @override
  String get dhikrTrackerNotDoneToday => '今日は未実施';

  @override
  String dhikrTrackerDayStreak(int count) {
    return '$count日連続';
  }

  @override
  String get dhikrReminderTitle => 'タスビーフ・リマインダー';

  @override
  String get dhikrReminderDescription =>
      'タスビーフ・アル＝ザフラー（SA）を唱えるための、やさしい毎日のリマインダーです。';

  @override
  String get dhikrReminderEnable => 'タスビーフ・リマインダーを有効にする';

  @override
  String get dhikrReminderTimeLabel => 'リマインダー時刻';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => '今日のハディース';

  @override
  String get hadithLabelArabic => 'アラビア語';

  @override
  String get hadithLabelTranslation => '翻訳';

  @override
  String get hadithBadge => 'ハディース';

  @override
  String get hadithShare => 'このハディースを共有';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nAyaraより';
  }

  @override
  String get hadithNavPrevious => '前へ';

  @override
  String get hadithNavNext => '次へ';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '十四人の無謬者';

  @override
  String get imamsScreenSubtitle =>
      '預言者、ファーティマ女史、そして十二人のイマーム — 十二イマーム派イスラムにおける浄化された無謬の導き手';

  @override
  String get imamLabelBorn => '誕生';

  @override
  String get imamLabelMartyrdom => '殉教';

  @override
  String get imamLabelStatus => '地位';

  @override
  String get imamSectionBiography => '伝記';

  @override
  String get imamSectionFamousSaying => '有名な言葉';

  @override
  String get imamRoleProphet => '最後の預言者';

  @override
  String get imamRoleInfallible => '無謬なる者';

  @override
  String get imamOrdinal1 => '第1代イマーム';

  @override
  String get imamOrdinal2 => '第2代イマーム';

  @override
  String get imamOrdinal3 => '第3代イマーム';

  @override
  String get imamOrdinal4 => '第4代イマーム';

  @override
  String get imamOrdinal5 => '第5代イマーム';

  @override
  String get imamOrdinal6 => '第6代イマーム';

  @override
  String get imamOrdinal7 => '第7代イマーム';

  @override
  String get imamOrdinal8 => '第8代イマーム';

  @override
  String get imamOrdinal9 => '第9代イマーム';

  @override
  String get imamOrdinal10 => '第10代イマーム';

  @override
  String get imamOrdinal11 => '第11代イマーム';

  @override
  String get imamOrdinal12 => '第12代イマーム';

  @override
  String get duaAudioScreenTitle => 'ドゥアーを聴く';

  @override
  String get duaAudioScreenSubtitle =>
      '聴きたいドゥアーを選んでください。タイルをタップすると再生／一時停止できます。';

  @override
  String get duaAudioComingSoonMessage => 'このドゥアーの音声は今後のアップデートで利用可能になります。';

  @override
  String get duaAudioClose => '閉じる';

  @override
  String get duaAudioError => '音声を読み込めませんでした。接続を確認してください。';

  @override
  String get duaAudioMetaTransmittedBy => '伝承者';

  @override
  String get duaAudioMetaOccasion => '行事';

  @override
  String get duaAudioMetaDuration => '長さ';

  @override
  String get quickActionDailyHadith => '今日のハディース';

  @override
  String get quickAction14Masumeen => '十四人の無謬者';

  @override
  String get quickActionListenDuas => '聴く';

  @override
  String get quickActionTasbihat => '礼拝ガイド';

  @override
  String get pilgrimageSectionTitle => '聖なる旅';

  @override
  String get pilgrimageSectionSubtitle => 'ハッジとウムラの完全ガイド — メッカのアッラーの聖なる御家への巡礼';

  @override
  String get hajjCardTitle => 'ハッジ';

  @override
  String get hajjCardSubtitle => 'イスラームの第五の柱';

  @override
  String get hajjCardDescription => '偉大な年次巡礼 — 可能なすべてのムスリムに一生に一度義務づけられるもの';

  @override
  String get hajjScreenTitle => 'ハッジガイド';

  @override
  String get hajjScreenSubtitle => '大巡礼のためのステップバイステップガイド';

  @override
  String get umrahCardTitle => 'ウムラ';

  @override
  String get umrahCardSubtitle => '小巡礼';

  @override
  String get umrahCardDescription => '一年中いつでも行える、非常に報いの大きい霊的旅';

  @override
  String get umrahScreenTitle => 'ウムラガイド';

  @override
  String get umrahScreenSubtitle => '小巡礼のためのステップバイステップガイド';

  @override
  String get pilgrimageStepsTitle => '儀礼と手順';

  @override
  String get pilgrimageImportantNotesTitle => '重要な注意事項';

  @override
  String get pilgrimageDuaTitle => 'このステップのためのドゥア';

  @override
  String get pilgrimageJafariNoteTitle => 'ジャアファリー法学のメモ';

  @override
  String get pilgrimageComplete => '✓ 完了';

  @override
  String get pilgrimageMarkDone => '完了としてマークする';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done / $total ステップ';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes 分';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'シーア派巡礼者';

  @override
  String get pilgrimageShiaNoteBody =>
      '多くのシーア派巡礼者は、マスジド・アル＝ナバウィで預言者ムハンマド（SAW）のズヤラートのためにメディナに旅行し、ジャナト・アル＝バキの墓を訪れます。これらの訪問は深い精神的意義を持っていますが、ハッジの儀式そのものではありません。';

  @override
  String get hajjIntro =>
      'ハッジはイスラムの五本柱の一つであり、身体的および経済的に可能なすべてのムスリムにとって一生に一度の義務です。今日のほとんどの十二イマーム派巡礼者にとって、これはイブラヒム（AS）、彼の息子イスマイル（AS）、およびハジャール女史の足跡を辿るドゥル・ヒッジャ月に行われるハッジ・アル＝タマットゥ\'を意味します。このガイドは、儀式のジャファリの枠組みに従い、メディナでのズヤラートはハッジの前または後の深く大切にされる旅として残ります。';

  @override
  String get umrahIntro =>
      'ウムラはメッカへの小巡礼であり、ハッジとは異なり、一年中いつでも行うことができます。義務ではありませんが、非常に大きな霊的報いがあり、強く推奨される崇拝行為とされています。ハッジといくつかの儀礼を共有していますが、より短く、四つの主要な儀礼から成ります。';

  @override
  String get voiceInputTitle => '音声入力';

  @override
  String get voiceInputMicTitle => 'マイク';

  @override
  String get voiceInputMicSubtitle => '入力をタイプする代わりにAyaraに話しかけてください。';

  @override
  String get voiceInputMicDenied => 'マイクへのアクセスが拒否されました。';

  @override
  String get voiceInputSpeak => '話す';

  @override
  String get voiceInputListening => '聞いています…';

  @override
  String get voiceInputPermissionDenied => '音声入力にはマイクへのアクセスが必要です。';
}
