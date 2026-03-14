// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Ayara';

  @override
  String get languageSelectTitle => 'Chọn ngôn ngữ của bạn';

  @override
  String get languageSelectSub => 'Bạn có thể thay đổi sau trong phần Cài đặt';

  @override
  String get actionContinue => 'Tiếp tục';

  @override
  String get languageSuggestedHeader => 'Đề xuất';

  @override
  String get languageAllHeader => 'Tất cả ngôn ngữ';

  @override
  String get languageSuggestedBadge => 'Đề xuất';

  @override
  String get languageSearchHint => 'Tìm kiếm…';

  @override
  String get planBasic => 'Tiêu chuẩn';

  @override
  String get planPremium => 'Wilaya';

  @override
  String get categorySlot01 => 'Hướng dẫn hằng ngày';

  @override
  String get categorySlot02 => 'Đức tin và sự tín thác';

  @override
  String get categorySlot03 => 'Suy ngẫm về lời nguyện';

  @override
  String get categorySlot04 => 'Kiên nhẫn và hy vọng';

  @override
  String get categorySlot05 => 'Cầu xin sự tha thứ';

  @override
  String get categorySlot06 => 'Lòng thương xót và trắc ẩn';

  @override
  String get categorySlot07 => 'Sức mạnh đức tin';

  @override
  String get categorySlot08 => 'Trái tim biết ơn';

  @override
  String get categorySlot09 => 'Mục đích sống';

  @override
  String get categorySlot10 => 'Tình thân gia đình';

  @override
  String get categorySlot11 => 'Bình an nội tâm';

  @override
  String get categorySlot12 => 'Sự minh triết của Nhà Tiên tri';

  @override
  String get categorySlot13 => 'Phẩm hạnh tốt đẹp';

  @override
  String get categorySlot14 => 'Kháng cự cám dỗ';

  @override
  String get categorySlot15 => 'Dhikr buổi tối';

  @override
  String get categoryCustom => 'Suy ngẫm cá nhân';

  @override
  String get dhikrMeaningSubhanallah => 'Vinh quang thuộc về Allah';

  @override
  String get dhikrMeaningAlhamdulillah => 'Mọi lời ca ngợi đều thuộc về Allah';

  @override
  String get dhikrMeaningAllahuAkbar => 'Allah là Đấng Vĩ đại nhất';

  @override
  String get quranVerseHeartAtRest =>
      'Quả thật, chỉ trong sự tưởng nhớ Allah mà trái tim được an yên.';

  @override
  String get promptHint =>
      'Chạm vào một danh mục để nhận hướng dẫn và suy ngẫm Hồi giáo';

  @override
  String get currentLanguage => 'Ngôn ngữ hiện tại';

  @override
  String get settingsLanguage => 'Cài đặt ngôn ngữ';

  @override
  String get settingsTitle => 'Cài đặt';

  @override
  String get chooseLanguage => 'Chọn ngôn ngữ của bạn';

  @override
  String get continueCta => 'Tiếp tục';

  @override
  String wordCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count từ',
      one: '$count từ',
    );
    return '$_temp0';
  }

  @override
  String get optionsCta => 'Tùy chọn';

  @override
  String get newCta => 'Mới';

  @override
  String get actionsTitle => 'Bạn muốn làm gì?';

  @override
  String get copy => 'Sao chép';

  @override
  String get share => 'Chia sẻ';

  @override
  String get close => 'Đóng';

  @override
  String get copiedToast => 'Đã sao chép vào khay nhớ tạm';

  @override
  String shareSubject(String category) {
    return 'Ayara — $category';
  }

  @override
  String get regenerateErrorTitle => 'Không thể tạo phản hồi mới';

  @override
  String regenerateErrorBody(String error) {
    return '$error\n\nBạn có muốn thử lại không?';
  }

  @override
  String get cancelCta => 'Hủy';

  @override
  String get retryCta => 'Thử lại';

  @override
  String get authTitle => 'Tạo tài khoản của bạn';

  @override
  String get continueAsGuest => 'Tiếp tục với tư cách khách';

  @override
  String get signInGoogle => 'Đăng nhập bằng Google';

  @override
  String get signInApple => 'Đăng nhập bằng Apple';

  @override
  String get signInEmail => 'Đăng nhập bằng Email';

  @override
  String get upgradeWithApple => 'Tiếp tục với Apple';

  @override
  String get mustAccept =>
      'Bạn phải chấp nhận Điều khoản dịch vụ và xác nhận Chính sách quyền riêng tư.';

  @override
  String get termsLabel => 'Tôi chấp nhận Điều khoản dịch vụ';

  @override
  String get privacyLabel => 'Tôi đã đọc Chính sách quyền riêng tư';

  @override
  String get marketingOptIn => 'Tôi đồng ý nhận tin tức và ưu đãi';

  @override
  String get openTerms => 'Điều khoản dịch vụ';

  @override
  String get openPrivacy => 'Chính sách quyền riêng tư';

  @override
  String get accountSection => 'Tài khoản';

  @override
  String get guestMode => 'Chế độ khách';

  @override
  String get signedIn => 'Đã đăng nhập';

  @override
  String get upgradeHint =>
      'Lưu các suy ngẫm của bạn trên nhiều thiết bị bằng cách tạo tài khoản.';

  @override
  String get upgradeWithGoogle => 'Tiếp tục với Google';

  @override
  String get signOut => 'Đăng xuất';

  @override
  String get snackUpgraded => 'Tài khoản đã được nâng cấp bằng Google ✅';

  @override
  String get snackSignedIn => 'Đã đăng nhập bằng Google ✅';

  @override
  String get snackSignedOut => 'Đã đăng xuất';

  @override
  String get snackSignedInApple => 'Đã đăng nhập bằng Apple ✅';

  @override
  String get snackSignedInGoogle => 'Đã đăng nhập bằng Google ✅';

  @override
  String get snackUpgradedApple => 'Tài khoản đã được nâng cấp bằng Apple ✅';

  @override
  String get snackUpgradedGoogle => 'Tài khoản đã được nâng cấp bằng Google ✅';

  @override
  String get historyTitle => 'Các suy ngẫm trước đây';

  @override
  String get historyOpenCta => 'Các suy ngẫm trước đây';

  @override
  String get historyEmpty => 'Chưa có suy ngẫm nào được lưu.';

  @override
  String get historyDeleteTitle => 'Xóa suy ngẫm này?';

  @override
  String get historyDeleteBody => 'Việc này sẽ xóa vĩnh viễn mục đã chọn.';

  @override
  String get deleteCta => 'Xóa';

  @override
  String get historyButton => 'Các suy ngẫm trước đây';

  @override
  String get historyEmptyTitle => 'Chưa có suy ngẫm nào';

  @override
  String get historyEmptyBody =>
      'Hãy tạo nội dung trước — các mục đã lưu của bạn sẽ xuất hiện ở đây.';

  @override
  String get historyDelete => 'Xóa';

  @override
  String get footerTitle => 'Với Wilaya, Iman và Sabr';

  @override
  String get footerSubtitle => 'Từng lời nguyện một';

  @override
  String get genericErrorSnack =>
      'Đã xảy ra lỗi — vui lòng thử lại sau ít phút.';

  @override
  String get upgradeAccountCta =>
      'Lưu các suy ngẫm của bạn trên nhiều thiết bị – tạo tài khoản';

  @override
  String get deleteAccount => 'Xóa tài khoản';

  @override
  String get exportData => 'Xuất dữ liệu của tôi';

  @override
  String userUidLabel(String uid) {
    return 'UID: $uid';
  }

  @override
  String get rateLocalThrottle =>
      'Chậm lại nào 🐯\nAyara cần một chút thời gian trước lần tiếp theo…';

  @override
  String get rateDailyLimit =>
      'Hiện tại bạn đã hết lượt suy ngẫm.\nHãy nhận thêm lượt hoặc nâng cấp lên Wilaya.';

  @override
  String get rateCreditsExhausted =>
      'Bạn đã dùng hết tất cả lượt suy ngẫm.\nNạp thêm hoặc nâng cấp lên Wilaya để tiếp tục.';

  @override
  String get rateGraceCreditsExhausted =>
      'Hiện tại bạn đã hết lượt suy ngẫm.\nHãy nhận thêm lượt hoặc nâng cấp lên Wilaya.';

  @override
  String get premiumDescription =>
      'Wilaya mở khóa các tính năng cao cấp, danh mục trong tương lai và một huy hiệu đặc biệt.';

  @override
  String ratePlanExhausted(String plan) {
    return 'Hiện tại lượt suy ngẫm của bạn đã hết. Gói: $plan.';
  }

  @override
  String rateCheckFailed(String message) {
    return 'Không thể kiểm tra lượt suy ngẫm của bạn: $message';
  }

  @override
  String get rateCheckGenericError =>
      'Đã xảy ra lỗi khi kiểm tra lượt suy ngẫm của bạn.';

  @override
  String get aiFallbackGeneric =>
      'Đã xảy ra lỗi — vui lòng thử lại sau ít phút.';

  @override
  String get limitSectionTitle => 'Lượt suy ngẫm';

  @override
  String get limitTodayLabel => 'Mức sử dụng';

  @override
  String limitCreditsLabel(Object credits) {
    return 'Lượt suy ngẫm còn lại: $credits';
  }

  @override
  String limitPlanLabel(String plan) {
    return 'Gói: $plan';
  }

  @override
  String get limitLoadingLabel => 'Đang tải…';

  @override
  String get limitLoadingLabelDescription =>
      'Hiển thị trong thẻ lượt suy ngẫm khi đang tải thống kê sử dụng.';

  @override
  String get aiLimitTitle => 'Lượt suy ngẫm';

  @override
  String get aiLimitSubtitle =>
      'Mỗi phản hồi sử dụng 1 lượt suy ngẫm. Gói Tiêu chuẩn bao gồm lượt khởi đầu. Wilaya mở khóa danh mục cao cấp và cho phép nạp thêm.';

  @override
  String aiLimitProgressLabel(Object used, Object total) {
    return 'Đã dùng $used / $total lượt suy ngẫm';
  }

  @override
  String get creditsSectionTitle => 'Lượt suy ngẫm';

  @override
  String get creditsUsageLabel => 'Mức sử dụng';

  @override
  String creditsRemainingLabel(Object reflections) {
    return 'Lượt suy ngẫm còn lại: $reflections';
  }

  @override
  String creditsPlanLabel(String plan) {
    return 'Gói: $plan';
  }

  @override
  String get creditsLoadingLabel => 'Đang tải…';

  @override
  String get creditsLoadingLabelDescription =>
      'Hiển thị khi đang tải thống kê lượt suy ngẫm.';

  @override
  String get creditsTitle => 'Lượt suy ngẫm';

  @override
  String get creditsSubtitle =>
      'Mỗi phản hồi sử dụng 1 lượt suy ngẫm. Gói Tiêu chuẩn bao gồm lượt khởi đầu. Wilaya mở khóa danh mục cao cấp và cho phép nạp thêm.';

  @override
  String creditsProgressLabel(Object used, Object total) {
    return 'Đã dùng $used / $total lượt suy ngẫm';
  }

  @override
  String get settingsDeleteTitle => 'Xóa tài khoản';

  @override
  String get settingsDeleteDescription =>
      'Xóa vĩnh viễn tài khoản của bạn và toàn bộ dữ liệu liên quan.';

  @override
  String get settingsDeleteButtonLabel => 'Xóa tài khoản của tôi';

  @override
  String get settingsDeleteDialogTitle => 'Xóa tài khoản?';

  @override
  String get settingsDeleteDialogBody =>
      'Hành động này là vĩnh viễn và không thể hoàn tác.\n\nToàn bộ cuộc trò chuyện, lịch sử và thông tin tài khoản của bạn sẽ bị xóa.';

  @override
  String get settingsDeleteDialogCancel => 'Hủy';

  @override
  String get settingsDeleteDialogConfirm => 'Xóa';

  @override
  String get settingsFreeLimitUsedTitle => 'Đã dùng hết lượt suy ngẫm khởi đầu';

  @override
  String get settingsFreeLimitUsedDescription =>
      'Lượt suy ngẫm khởi đầu cho thiết bị này đã được sử dụng. Nâng cấp lên Wilaya hoặc mua thêm lượt để tiếp tục.';

  @override
  String get settingsStarterCreditsUsedTitle =>
      'Đã dùng hết lượt suy ngẫm khởi đầu';

  @override
  String get settingsStarterCreditsUsedDescription =>
      'Lượt suy ngẫm khởi đầu cho thiết bị này đã được sử dụng. Nâng cấp lên Wilaya hoặc mua thêm lượt để tiếp tục.';

  @override
  String get deviceBoundError =>
      'Thiết bị này đã được liên kết với một tài khoản khác. Vui lòng đăng nhập bằng tài khoản gốc.';

  @override
  String get premiumTitle => 'Chế độ Wilaya';

  @override
  String get premiumSubtitleBasic => 'Mở khóa trải nghiệm Ayara trọn vẹn.';

  @override
  String get premiumSubtitlePremium =>
      'Bạn đang ở gói Wilaya. Cần thêm lượt suy ngẫm?';

  @override
  String premiumCurrentPlan(Object plan) {
    return 'Gói hiện tại: $plan';
  }

  @override
  String premiumCreditsStatus(Object remaining, Object total) {
    return 'Lượt suy ngẫm: $remaining / $total';
  }

  @override
  String get premiumPurchasesUnavailable => 'Hiện không thể mua hàng.';

  @override
  String get premiumSignInToPurchase =>
      'Đăng nhập để mua lượt suy ngẫm hoặc mở khóa Wilaya.';

  @override
  String get premiumRestorePurchases => 'Khôi phục giao dịch mua';

  @override
  String get premiumProcessing => 'Đang xử lý…';

  @override
  String get premiumRestoreHintTitle =>
      'Bạn đã mua Wilaya hoặc lượt suy ngẫm trên thiết bị này hoặc thiết bị khác chưa?';

  @override
  String get premiumRestoreHintBody =>
      'Khôi phục giao dịch mua nếu chúng chưa hiển thị.';

  @override
  String get premiumBuyCredits200 => 'Mua 200 lượt suy ngẫm';

  @override
  String get premiumBuyCredits400 => 'Mua 400 lượt suy ngẫm';

  @override
  String get premiumBecomePremiumOneTime => 'Nâng cấp lên chế độ Wilaya';

  @override
  String get premiumTopupHint =>
      'Với Wilaya, bạn có thể nạp thêm lượt suy ngẫm bất cứ khi nào cần.';

  @override
  String get premiumUpgradeCta => 'Nâng cấp';

  @override
  String get premiumRequiredForCategory =>
      'Danh mục này chỉ dành cho người dùng Wilaya. Nâng cấp trong phần Cài đặt để mở khóa toàn bộ nội dung cao cấp.';

  @override
  String get premiumBenefitsBasic =>
      'Mở khóa Wilaya để nhận thêm lượt suy ngẫm, truy cập danh mục cao cấp và tiếp tục bất cứ khi nào bạn cần sự hướng dẫn.';

  @override
  String get premiumBenefitsPremium =>
      'Bạn đang ở chế độ Wilaya. Nếu sắp hết lượt, hãy thêm lượt suy ngẫm để tiếp tục không gián đoạn.';

  @override
  String get premiumButtonBecomePremium => 'Mở khóa Wilaya';

  @override
  String get premiumButtonTopup1000 => 'Thêm 1000 lượt suy ngẫm';

  @override
  String get premiumBadge => 'Wilaya đang hoạt động';

  @override
  String get premiumLoadingStore => 'Đang tải cửa hàng…';

  @override
  String get premiumProductNotAvailable =>
      'Sản phẩm này hiện chưa có trong cửa hàng. Vui lòng thử lại sau.';

  @override
  String get premiumPurchaseError =>
      'Đã xảy ra lỗi khi mua hàng. Vui lòng thử lại.';

  @override
  String get premiumBuyCredits100 => 'Thêm 100 lượt suy ngẫm';

  @override
  String get premiumFeatureLocked => 'Mở khóa Wilaya để sử dụng tính năng này.';

  @override
  String get lockedCategoriesHint =>
      'Một số danh mục chỉ dành cho thành viên Wilaya. Hãy mở khóa để khám phá mọi suy ngẫm trên hành trình của bạn.';

  @override
  String get freePlanBlockedTitle => 'Bạn đã dùng hết lượt suy ngẫm khởi đầu';

  @override
  String get freePlanBlockedBody =>
      'Bạn đang dùng gói Tiêu chuẩn với lượt suy ngẫm khởi đầu và đã đạt giới hạn. Để tiếp tục — và mở khóa các danh mục cao cấp — hãy nâng cấp lên Wilaya.';

  @override
  String get freePlanBlockedCtaGoPremium => 'Xem các tùy chọn Wilaya bên dưới';

  @override
  String get graceBlockedTitle => 'Bạn đã dùng hết lượt suy ngẫm khởi đầu';

  @override
  String get graceBlockedBody =>
      'Bạn đang dùng gói Tiêu chuẩn với lượt suy ngẫm khởi đầu và đã đạt giới hạn. Để tiếp tục — và mở khóa các danh mục cao cấp — hãy nâng cấp lên Wilaya.';

  @override
  String get graceBlockedCtaGoPremium => 'Xem các tùy chọn Wilaya bên dưới';

  @override
  String get rateGuestMustSignIn =>
      'Đăng nhập để sử dụng Ayara và lượt suy ngẫm của bạn.';

  @override
  String get guestNoCreditsTitle => 'Chế độ khách';

  @override
  String get guestNoCreditsBody =>
      'Khi ở chế độ khách, bạn có thể duyệt ứng dụng nhưng không thể sử dụng lượt suy ngẫm. Hãy đăng nhập sau trong phần Cài đặt để sử dụng lượt suy ngẫm và mở khóa các giao dịch mua.';

  @override
  String get guestDialogContinue => 'Tiếp tục';

  @override
  String get guestDialogLoginInstead => 'Đăng nhập thay thế';

  @override
  String get optionalLabel => 'tùy chọn';

  @override
  String get accountDeleteSuccessTitle => 'Đã xóa tài khoản';

  @override
  String get accountDeleteSuccessBody =>
      'Tài khoản và dữ liệu liên quan của bạn đã được xóa thành công.';

  @override
  String get accountDeleteSuccessClose => 'Đóng';

  @override
  String get accountDeleteErrorTitle => 'Không thể xóa tài khoản';

  @override
  String get accountDeleteErrorClose => 'OK';

  @override
  String get accountDeleteReauthCancelled =>
      'Việc xác thực lại đã bị hủy. Vui lòng đăng nhập lại và thử xóa lần nữa.';

  @override
  String get accountDeleteReauthRequired =>
      'Việc xóa tài khoản yêu cầu đăng nhập gần đây. Vui lòng đăng xuất, đăng nhập lại rồi thử lại.';

  @override
  String get settingsDeletePermanentWarning =>
      'Hành động này là vĩnh viễn và không thể hoàn tác. Tất cả dữ liệu liên quan đến tài khoản của bạn sẽ bị xóa.';

  @override
  String get dailyGraceTitle => 'Hướng dẫn hằng ngày';

  @override
  String get dailyGraceScriptureLabel => 'CÂU KINH TRONG NGÀY';

  @override
  String get dailyGraceSaintLabel => 'HỌC GIẢ TRONG TUẦN';

  @override
  String get dailyGraceReflectionLabel => 'SUY NGẪM BUỔI TỐI';

  @override
  String get dailyGraceCopiedToast => 'Đã sao chép câu kinh vào khay nhớ tạm';

  @override
  String get locationConsentLabel =>
      'Cho phép Ayara sử dụng vị trí của tôi để xác định hướng Qibla và thời gian cầu nguyện';

  @override
  String get locationConsentHint =>
      'Chỉ dùng cho các tính năng này. Vị trí của bạn không bao giờ được chia sẻ hay lưu trữ.';

  @override
  String get askPageTitle => 'Hỏi Ayara';

  @override
  String get askPageDescription =>
      'Hỏi bất cứ điều gì về đức tin, lời nguyện, cuộc sống hoặc thực hành Hồi giáo và nhận hướng dẫn dựa trên Kinh Qur\'an và giáo huấn của Ahl al-Bayt.';

  @override
  String get askPageInputHint => 'Nhập câu hỏi của bạn tại đây…';

  @override
  String get askPageSubmitCta => 'Hỏi';

  @override
  String get askPageInputEmptyError => 'Vui lòng viết một câu hỏi trước.';

  @override
  String get askResultYourQuestion => 'Câu hỏi của bạn';

  @override
  String get guidancePageTitle => 'Qibla';

  @override
  String get qiblaFacingMecca => 'Hướng về Makkah';

  @override
  String get qiblaCompassInstruction =>
      'Xoay điện thoại cho đến khi kim vàng chỉ thẳng lên trên.\nHướng đó là hướng Qibla (Makkah).';

  @override
  String get qiblaGpsUnavailableBody =>
      'Tín hiệu GPS yếu. Hãy ra ngoài trời và chạm vào Thử lại.';

  @override
  String get qiblaRetry => 'Thử lại';

  @override
  String get qiblaTitle => 'Hướng Qibla';

  @override
  String qiblaDistanceLabel(String km) {
    return '$km km đến Makkah';
  }

  @override
  String get qiblaLocationNeededTitle => 'Cần vị trí';

  @override
  String get qiblaLocationNeededBody =>
      'Cho phép truy cập vị trí để Ayara có thể tính hướng đến Kaaba ở Makkah từ nơi bạn đang đứng.';

  @override
  String get qiblaOpenSettings => 'Mở Cài đặt';

  @override
  String get qiblaCompassLoading => 'Đang xác định vị trí của bạn…';

  @override
  String get qiblaTowardMecca => 'Về phía Makkah';

  @override
  String get prayerTimesTitle => 'Giờ cầu nguyện';

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
  String get prayerTimesLocationNeededTitle => 'Cần vị trí';

  @override
  String get prayerTimesLocationNeededBody =>
      'Cho phép truy cập vị trí để Ayara có thể tính chính xác giờ cầu nguyện cho thành phố của bạn.';

  @override
  String get prayerTimesNextLabel => 'Tiếp theo';

  @override
  String get prayerTimesDoneLabel => 'Xong';

  @override
  String get monthlyPrayerTimesTitle => 'Giờ cầu nguyện theo tháng';

  @override
  String get monthlyPrayerTimesViewButton => 'Xem cả tháng';

  @override
  String get monthlyPrayerTimesNextMonth => 'Tháng sau';

  @override
  String get monthlyPrayerTimesDayHeader => 'Ngày';

  @override
  String get sharePrayerTimes => 'Chia sẻ giờ cầu nguyện';

  @override
  String get notificationsSectionTitle => 'Thông báo';

  @override
  String get notificationsSectionSubtitle =>
      'Nhắc giờ cầu nguyện, sự kiện lịch và hơn thế nữa';

  @override
  String get dailyReflectionReminderTitle => 'Suy ngẫm hằng ngày';

  @override
  String get dailyReflectionReminderDescription =>
      'Một lời nhắc nhẹ nhàng hằng ngày để mở Ayara và kết nối với đức tin của bạn.';

  @override
  String get dailyReflectionReminderEnable => 'Bật lời nhắc hằng ngày';

  @override
  String get dailyReflectionReminderTimeLabel => 'Thời gian nhắc';

  @override
  String get prayerNotificationsTitle => 'Nhắc giờ cầu nguyện';

  @override
  String get prayerNotificationsDescription =>
      'Nhận lời nhắc nhẹ nhàng trước mỗi giờ cầu nguyện để giúp bạn luôn gắn kết suốt cả ngày.';

  @override
  String get prayerNotificationsEnable => 'Bật nhắc giờ cầu nguyện';

  @override
  String get prayerNotificationsOpenSettings => 'Mở cài đặt thông báo';

  @override
  String get prayerNotificationsDenied => 'Thông báo đã bị tắt';

  @override
  String get prayerNotificationsDeniedHint =>
      'Vào phần Cài đặt và cho phép thông báo cho Ayara để nhận nhắc giờ cầu nguyện.';

  @override
  String get notificationsConsentLabel =>
      'Cho phép thông báo về giờ cầu nguyện';

  @override
  String get prayerNotifTitleFajr => '🌅 Fajr — Lời nguyện bình minh';

  @override
  String get prayerNotifBodyFajr =>
      'Fajr là lời nguyện của buổi sớm theo truyền thống Ahl al-Bayt. Imam Ali (AS) nói: Hãy gìn giữ lời nguyện bình minh như bạn gìn giữ điều quý giá nhất được giao phó cho mình. Hãy thức dậy, thanh tẩy bản thân và đứng trước Allah.';

  @override
  String get prayerNotifTitleDhuhr => '☀️ Dhuhr — Lời nguyện giữa trưa';

  @override
  String get prayerNotifBodyDhuhr =>
      'Các Imam của Ahl al-Bayt quý trọng từng khoảnh khắc tưởng nhớ. Hãy tạm dừng ngày của bạn, kết hợp Dhuhr với Asr nếu cần, và hướng trái tim trở lại với Allah.';

  @override
  String get prayerNotifTitleAsr => '🌤️ Asr — Lời nguyện buổi chiều';

  @override
  String get prayerNotifBodyAsr =>
      'Hãy gìn giữ lời nguyện, bởi đó là giao ước giữa bạn và Allah. Giờ Asr đã đến — đừng để nó trôi qua mà không có sự tưởng nhớ.';

  @override
  String get prayerNotifTitleMaghrib => '🌇 Maghrib — Lời nguyện lúc hoàng hôn';

  @override
  String get prayerNotifBodyMaghrib =>
      'Mặt trời đã lặn — khoảnh khắc mà Ahl al-Bayt xem là thiêng liêng cho lời cầu xin. Hãy dâng Maghrib và giơ tay cầu nguyện với Allah trước khi đêm xuống.';

  @override
  String get prayerNotifTitleIsha => '🌙 Isha — Lời nguyện ban đêm';

  @override
  String get prayerNotifBodyIsha =>
      'Hãy kết thúc ngày của bạn trong sự hiện diện của Allah. Các Imam khuyến khích Salat al-Layl sau Isha — nhưng trước tiên, hãy hoàn thành Isha và khép lại ngày bằng sự tưởng nhớ Ngài.';

  @override
  String get outOfReflectionsBannerText =>
      'Bạn đã dùng hết tất cả lượt suy ngẫm';

  @override
  String get outOfReflectionsBannerCta => 'Nhận thêm';

  @override
  String get dhikrPageTitle => 'Dhikr';

  @override
  String get dhikrTapToCount => 'Chạm vào vòng tròn để đếm';

  @override
  String get dhikrResetButton => 'Đặt lại';

  @override
  String get dhikrComplete => 'Masha\'Allah';

  @override
  String get dhikrCompleteMessage =>
      'Bạn đã hoàn thành 100 lần tưởng nhớ Allah. Cầu mong đó là ánh sáng cho trái tim bạn.';

  @override
  String get disclaimerTitle => 'Về phần hướng dẫn trong ứng dụng này';

  @override
  String get disclaimerBody =>
      'Ayara cung cấp những suy ngẫm Hồi giáo, lời nhắc và nội dung tâm linh nhằm hỗ trợ hành trình đức tin cá nhân của bạn, bắt nguồn từ Qur\'an và giáo huấn của Ahl al-Bayt. Nội dung này chỉ được cung cấp cho mục đích thông tin và truyền cảm hứng chung.\n\nAyara không thay thế học giả có chuyên môn.\nPhần hướng dẫn trong ứng dụng này không thay thế cho một học giả Hồi giáo uyên bác, marja\', hay người thầy được đào tạo thần học. Trong Hồi giáo Shia, sự hướng dẫn tôn giáo bắt nguồn từ trường phái luật Ja\'fari (fiqh) và truyền thống theo một Marja\' đang sống (nguồn mô phỏng) — một học giả luật đủ năng lực với các phán quyết hướng dẫn tín đồ trong thực hành tôn giáo. Nếu bạn có câu hỏi về các phán quyết tôn giáo, vấn đề halal và haram, hoặc nghĩa vụ tôn giáo cá nhân, xin hãy tìm lời khuyên từ một Marja\' đủ năng lực hoặc học giả trong cộng đồng của bạn.\n\nỨng dụng này không đưa ra phán quyết tôn giáo.\nAyara không đưa ra những kết luận có thẩm quyền về các vấn đề fiqh hoặc nghĩa vụ tôn giáo cá nhân. Không nội dung nào ở đây nên được xem là fatwa hay chỉ dẫn tôn giáo mang tính ràng buộc.\n\nTính trung tâm của Ahl al-Bayt.\nTrong Hồi giáo Shia, Nhà Tiên tri Muhammad ﷺ và gia quyến tinh sạch của ngài — Ahl al-Bayt — là những người hướng dẫn có thẩm quyền của cộng đồng Hồi giáo sau Qur\'an. Mười hai Imam của Ahl al-Bayt là những người diễn giải giáo huấn Hồi giáo do Allah chỉ định. Nội dung trong ứng dụng này phản ánh truyền thống đó và cố gắng tôn vinh nó một cách trung thành.\n\nVai trò của cộng đồng.\nỨng dụng này nhằm khuyến khích bạn gắn bó với đức tin, đồng thời tôn trọng sâu sắc vai trò thiết yếu của nhà thờ Hồi giáo địa phương, trung tâm Hồi giáo và cộng đồng tôn giáo của bạn. Chúng tôi khuyến khích bạn duy trì kết nối và học hỏi từ những giáo viên đủ năng lực ở gần bạn.';

  @override
  String get disclaimerClose => 'Tôi hiểu';

  @override
  String get disclaimerInfoTooltip => 'Về phần hướng dẫn trong ứng dụng này';

  @override
  String get disclaimerSettingsSubtitle =>
      'Chỉ dành cho mục đích thông tin chung. Chạm để đọc toàn bộ tuyên bố miễn trừ.';

  @override
  String get disclaimerSectionHeader => 'Tuyên bố miễn trừ về hướng dẫn';

  @override
  String get navHome => 'Trang chủ';

  @override
  String get navReflect => 'Suy ngẫm';

  @override
  String get navDuas => 'Dua';

  @override
  String get navCalendar => 'Lịch';

  @override
  String get dashboardToday => 'HÔM NAY';

  @override
  String get dashboardComingUp => 'Sắp tới';

  @override
  String dashboardDaysUnit(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ngày',
      one: 'ngày',
    );
    return '$_temp0';
  }

  @override
  String get dashboardQuickAccess => 'Truy cập nhanh';

  @override
  String get quickActionQibla => 'Qibla';

  @override
  String get quickActionDhikr => 'Dhikr';

  @override
  String get quickActionDailyGrace => 'Hướng dẫn';

  @override
  String get quickActionPrayerTimes => 'Giờ cầu nguyện';

  @override
  String get askAyaraTitle => 'Hỏi Ayara';

  @override
  String get askAyaraSubtitle =>
      'Hãy đặt bất kỳ câu hỏi Hồi giáo nào và nhận một câu trả lời chu đáo, đầy định hướng.';

  @override
  String get askAyaraHint => 'ví dụ: Ý nghĩa của Ramadan là gì?';

  @override
  String get askAyaraSubmit => 'Hỏi';

  @override
  String get wisdomOfTheDayTitle => 'Lời minh triết trong ngày';

  @override
  String get calendarScreenTitle => 'Lịch Hồi giáo';

  @override
  String get calendarUpcomingOccasions => 'Các dịp sắp tới';

  @override
  String get calendarOccasionRemindersTitle => 'Nhắc nhở các dịp đặc biệt';

  @override
  String get calendarOccasionRemindersHint =>
      'Thông báo vào tối hôm trước mỗi dịp';

  @override
  String get calendarNotifPermissionDenied =>
      'Quyền thông báo bị từ chối. Hãy bật trong cài đặt thiết bị của bạn.';

  @override
  String get calendarNoEvents => 'Không tìm thấy sự kiện sắp tới nào.';

  @override
  String get calendarAddToPhone => 'Thêm vào Lịch Điện Thoại';

  @override
  String get calendarAddedToPhone => 'Đã thêm vào Lịch';

  @override
  String get calendarCountdownToday => 'HÔM NAY';

  @override
  String get calendarCountdownTomorrow => 'NGÀY MAI';

  @override
  String calendarCountdownDays(int days) {
    return 'sau $days ngày';
  }

  @override
  String get calendarAH => 'AH';

  @override
  String get calendarMonthJan => 'Th1';

  @override
  String get calendarMonthFeb => 'Th2';

  @override
  String get calendarMonthMar => 'Th3';

  @override
  String get calendarMonthApr => 'Th4';

  @override
  String get calendarMonthMay => 'Th5';

  @override
  String get calendarMonthJun => 'Th6';

  @override
  String get calendarMonthJul => 'Th7';

  @override
  String get calendarMonthAug => 'Th8';

  @override
  String get calendarMonthSep => 'Th9';

  @override
  String get calendarMonthOct => 'Th10';

  @override
  String get calendarMonthNov => 'Th11';

  @override
  String get calendarMonthDec => 'Th12';

  @override
  String get calendarSeasonMuharramEarly =>
      'Những ngày đầu Muharram — hãy nhớ Karbala';

  @override
  String get calendarSeasonAshura => 'Ashura — Ya Husayn (AS)';

  @override
  String get calendarSeasonMuharramLate =>
      'Muharram — những ngày tang thương và suy ngẫm';

  @override
  String get calendarSeasonArbaeen => 'Arbaeen — bốn mươi ngày của Husayn';

  @override
  String get calendarSeasonRoadToArbaeen => 'Con đường đến Arbaeen';

  @override
  String get calendarSeasonMabath =>
      'Mab\'ath Mubarak — bình minh của mặc khải';

  @override
  String get calendarSeasonMidShaban =>
      'Giữa Sha\'ban — ngày sinh của Imam al-Mahdi (AJ)';

  @override
  String get calendarSeasonRamadan => 'Ramadan Mubarak — tháng của Qur\'an';

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
  String get duasSearchHint => 'Tìm dua, ziyarat…';

  @override
  String get duasFilterAll => 'Tất cả';

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
  String get duasEmpty => 'Không tìm thấy dua nào.';

  @override
  String get duaCategoryDaily => 'Hằng ngày';

  @override
  String get duaCategoryWeekly => 'Hằng tuần';

  @override
  String get duaCategoryOccasions => 'Các dịp';

  @override
  String get duaCategoryZiyarat => 'Ziyarat';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get eventTypeBirth => 'Sinh';

  @override
  String get eventTypeMartyrdom => 'Tử đạo';

  @override
  String get eventTypeOccasion => 'Dịp';

  @override
  String get duaCopyTooltip => 'Sao chép bản dịch';

  @override
  String get duaToggleTransliteration => 'Phiên âm';

  @override
  String get duaToggleTranslation => 'Bản dịch';

  @override
  String get duaAskAiLabel => 'Yêu cầu Ayara giải thích dua này';

  @override
  String get duaAskAiLockedLabel => 'Hỏi Ayara (Wilaya)';

  @override
  String get duaAiLockedMessage =>
      'Phần giải thích của Ayara chỉ dành cho thành viên Wilaya. Hãy nâng cấp trong phần Cài đặt.';

  @override
  String duaAiComingSoon(String name) {
    return 'Hỏi Ayara về \"$name\" — sắp ra mắt!';
  }

  @override
  String get duaCopiedToast => 'Đã sao chép dua vào khay nhớ tạm.';

  @override
  String get tasbihAllahuAkbarMeaning => 'Allah là Đấng Vĩ đại nhất';

  @override
  String get tasbihAlhamdulillahMeaning => 'Mọi lời ca ngợi đều thuộc về Allah';

  @override
  String get tasbihSubhanallahMeaning => 'Vinh quang thuộc về Allah';

  @override
  String get tasbihResetTooltip => 'Đặt lại';

  @override
  String get tasbihCompleteTitle => 'Hoàn thành Tasbih';

  @override
  String get tasbihCompleteMessage => 'Cầu mong Allah chấp nhận dhikr của bạn.';

  @override
  String get tasbihTapHint => 'Chạm vào bất cứ đâu để đếm';

  @override
  String get tasbihatScreenTitle => 'Hướng dẫn cầu nguyện';

  @override
  String get tasbihatScreenSubtitle => 'NHỮNG LỜI TÔN VINH TRONG CẦU NGUYỆN';

  @override
  String get tasbihatScreenDescription =>
      'Hướng dẫn đầy đủ về những lời tôn vinh được đọc trong và sau các buổi cầu nguyện hằng ngày — theo truyền thống của Ahl al-Bayt (a).';

  @override
  String get tasbihatArba3Title => 'TASBIḤĀT AL-ARBAʿA';

  @override
  String get tasbihatArba3Subtitle => 'Được đọc trong rakʿah thứ 3 và thứ 4';

  @override
  String get tasbihatArba3Info =>
      'Trong luật học Shia, Tasbiḥāt al-Arbaʿa thay thế Surah al-Fatiha ở rakʿah thứ 3 và thứ 4 của Dhuhr, Asr, Maghrib và Isha. Bắt buộc (wājib) phải đọc một lần, và được khuyến nghị (mustaḥabb) đọc ba lần.';

  @override
  String get tasbihatArba3Translation =>
      'Vinh quang thuộc về Allah · Mọi lời ca ngợi thuộc về Allah\nKhông có thần linh nào ngoài Allah · Allah là Đấng Vĩ đại nhất';

  @override
  String get tasbihatArba3CompleteTitle => 'Hoàn tất việc tụng đọc';

  @override
  String get tasbihatArba3CompleteMessage =>
      'Cầu mong lời nguyện của bạn được chấp nhận — Āmīn';

  @override
  String get tasbihatArba3TapHint => 'Chạm sau mỗi lần tụng đọc';

  @override
  String get tasbihatZahraSubtitle => 'Sau mỗi lần cầu nguyện · 100 hạt';

  @override
  String get tasbihatZahraOriginLabel => 'Nguồn gốc';

  @override
  String get tasbihatZahraHadith =>
      'Phu nhân Fatima al-Zahra (sa) đã xin Nhà Tiên tri ﷺ một người hầu. Ngài nói: \"Ta sẽ chỉ cho con điều gì tốt hơn thế chăng? Hãy đọc Subḥānallāh 33 lần, Alḥamdulillāh 33 lần, và Allāhu Akbar 34 lần sau mỗi lần cầu nguyện. Điều đó tốt hơn cho con so với một người hầu.\"';

  @override
  String get tasbihatZahraHadithSource => '— Bihar al-Anwār, Tập 85';

  @override
  String get tasbihatZahraOpenCounter => 'Mở bộ đếm Tasbīḥ';

  @override
  String get tasbihatDuasTitle => 'DUA ĐƯỢC KHUYẾN NGHỊ';

  @override
  String get tasbihatDuasSubtitle => 'Sau khi hoàn thành lời nguyện của bạn';

  @override
  String get tasbihatDuaAyatKursiTitle => 'Āyat al-Kursī';

  @override
  String get tasbihatDuaAyatKursiWhen => 'Sau mỗi lời nguyện bắt buộc';

  @override
  String get tasbihatDuaAyatKursiSource => 'Surah al-Baqarah 2:255';

  @override
  String get tasbihatDuaAyatKursiNote =>
      'Ai đọc Āyat al-Kursī sau mỗi lời nguyện bắt buộc, không có gì ngăn cách họ với thiên đàng ngoài cái chết. Imam al-Bāqir (a) nói đây là một trong những câu kinh vĩ đại nhất trong Qur\'an.';

  @override
  String get tasbihatDuaSalawatTitle => 'Ṣalawāt';

  @override
  String get tasbihatDuaSalawatWhen => 'Sau mỗi lời nguyện · hoàn tất mọi dua';

  @override
  String get tasbihatDuaSalawatSource => 'Imam al-Ṣādiq (a) — Al-Kāfī';

  @override
  String get tasbihatDuaSalawatNote =>
      'Việc gửi lời chúc phúc lên Nhà Tiên tri ﷺ và gia quyến thanh sạch của ngài (Āl Muḥammad) được khuyến nghị để kết thúc mọi dua. Imam al-Ṣādiq (a) nói: \"Mọi dua đều bị treo lại cho đến khi bạn gửi ṣalawāt đến Muhammad và gia đình của ngài.\"';

  @override
  String get tasbihatDuaFarajTitle => 'Duʿā al-Faraj';

  @override
  String get tasbihatDuaFarajWhen =>
      'Sau mỗi lời nguyện · dành cho Imam của thời đại chúng ta';

  @override
  String get tasbihatDuaFarajSource =>
      'Được dạy bởi Imam al-Ḥasan al-ʿAskarī (a)';

  @override
  String get tasbihatDuaFarajNote =>
      'Một dua cầu cho sự tái xuất hiện của Imam al-Mahdī (af), Imam thứ mười hai, được dạy bởi cha của ngài. Được tín đồ Shia đọc hằng ngày sau mỗi lời nguyện như một hành động tận hiến đối với Imam đang sống.';

  @override
  String get tasbihatDuaTasbihFatimaTitle => 'Tasbīḥ của Phu nhân Fāṭima';

  @override
  String get tasbihatDuaTasbihFatimaWhen =>
      'Sau Maghrib và Isha · đặc biệt được khuyến nghị';

  @override
  String get tasbihatDuaTasbihFatimaSource =>
      'Imam al-Bāqir (a) — Biḥār al-Anwār';

  @override
  String get tasbihatDuaTasbihFatimaNote =>
      'Imam al-Bāqir (a) nói rằng đọc Tasbīḥ al-Zahrā sau Isha trước khi ngủ tốt hơn 1000 rakʿah cầu nguyện tự nguyện. Ánh sáng của nó bay lên trời cao.';

  @override
  String get tasbihFatimaGiftPre => 'Món quà từ Nhà Tiên tri';

  @override
  String get tasbihFatimaGiftPost => 'được đọc sau mỗi lần cầu nguyện';

  @override
  String get prayerTrackerTitle => 'THEO DÕI CẦU NGUYỆN';

  @override
  String get prayerTrackerPrayed => 'Đã cầu nguyện';

  @override
  String prayerTrackerDayStreak(int count) {
    return 'chuỗi $count ngày';
  }

  @override
  String get prayerTrackerAllComplete =>
      'Tất cả lời nguyện hôm nay đã hoàn thành. Cầu mong Allah chấp nhận.';

  @override
  String get dhikrTrackerTitle => 'TASBĪḤ AL-ZAHRĀ';

  @override
  String get dhikrTrackerCompletedToday => 'Đã hoàn thành hôm nay';

  @override
  String get dhikrTrackerNotDoneToday => 'Chưa thực hiện hôm nay';

  @override
  String dhikrTrackerDayStreak(int count) {
    return 'chuỗi $count ngày';
  }

  @override
  String get dhikrReminderTitle => 'Nhắc Tasbīḥ';

  @override
  String get dhikrReminderDescription =>
      'Một lời nhắc nhẹ nhàng hằng ngày để đọc Tasbīḥ al-Zahrā (SA).';

  @override
  String get dhikrReminderEnable => 'Bật nhắc Tasbīḥ';

  @override
  String get dhikrReminderTimeLabel => 'Thời gian nhắc';

  @override
  String prayerTrackerProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get hadithScreenTitle => 'Hadith hằng ngày';

  @override
  String get hadithLabelArabic => 'TIẾNG Ả RẬP';

  @override
  String get hadithLabelTranslation => 'BẢN DỊCH';

  @override
  String get hadithBadge => 'HADITH';

  @override
  String get hadithShare => 'Chia sẻ Hadith này';

  @override
  String hadithShareText(String text, String imam, String source) {
    return '\"$text\"\n\n— $imam\n$source\n\nQua Ayara';
  }

  @override
  String get hadithNavPrevious => 'Trước';

  @override
  String get hadithNavNext => 'Sau';

  @override
  String hadithCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get imamsScreenTitle => '14 Masumeen';

  @override
  String get imamsScreenSubtitle =>
      'Nhà Tiên tri, Phu nhân Fatima, và Mười Hai Imam — những người hướng dẫn không sai lầm của Hồi giáo';

  @override
  String get imamLabelBorn => 'Sinh';

  @override
  String get imamLabelMartyrdom => 'Tử đạo';

  @override
  String get imamLabelStatus => 'Trạng thái';

  @override
  String get imamSectionBiography => 'TIỂU SỬ';

  @override
  String get imamSectionFamousSaying => 'CÂU NÓI NỔI TIẾNG';

  @override
  String get imamRoleProphet => 'Nhà Tiên tri Cuối cùng';

  @override
  String get imamRoleInfallible => 'Đấng không sai lầm';

  @override
  String get imamOrdinal1 => 'Imam thứ 1';

  @override
  String get imamOrdinal2 => 'Imam thứ 2';

  @override
  String get imamOrdinal3 => 'Imam thứ 3';

  @override
  String get imamOrdinal4 => 'Imam thứ 4';

  @override
  String get imamOrdinal5 => 'Imam thứ 5';

  @override
  String get imamOrdinal6 => 'Imam thứ 6';

  @override
  String get imamOrdinal7 => 'Imam thứ 7';

  @override
  String get imamOrdinal8 => 'Imam thứ 8';

  @override
  String get imamOrdinal9 => 'Imam thứ 9';

  @override
  String get imamOrdinal10 => 'Imam thứ 10';

  @override
  String get imamOrdinal11 => 'Imam thứ 11';

  @override
  String get imamOrdinal12 => 'Imam thứ 12';

  @override
  String get duaAudioScreenTitle => 'Nghe Dua';

  @override
  String get duaAudioScreenSubtitle =>
      'Chọn một dua để nghe. Chạm vào ô để phát hoặc tạm dừng.';

  @override
  String get duaAudioComingSoonMessage =>
      'Âm thanh cho dua này sẽ có trong bản cập nhật sắp tới.';

  @override
  String get duaAudioClose => 'Đóng';

  @override
  String get duaAudioError =>
      'Không thể tải âm thanh. Vui lòng kiểm tra kết nối của bạn.';

  @override
  String get duaAudioMetaTransmittedBy => 'Được truyền lại bởi';

  @override
  String get duaAudioMetaOccasion => 'Dịp';

  @override
  String get duaAudioMetaDuration => 'Thời lượng';

  @override
  String get quickActionDailyHadith => 'Hadith hằng ngày';

  @override
  String get quickAction14Masumeen => '14 Masumeen';

  @override
  String get quickActionListenDuas => 'Nghe';

  @override
  String get quickActionTasbihat => 'Hướng dẫn cầu nguyện';

  @override
  String get pilgrimageSectionTitle => 'Hành trình Thiêng liêng';

  @override
  String get pilgrimageSectionSubtitle =>
      'Hướng dẫn đầy đủ về Hajj và Umrah — cuộc hành hương đến Ngôi Nhà Thiêng liêng của Allah tại Mecca';

  @override
  String get hajjCardTitle => 'Hajj';

  @override
  String get hajjCardSubtitle => 'Trụ cột thứ năm của Hồi giáo';

  @override
  String get hajjCardDescription =>
      'Cuộc hành hương lớn hằng năm — bắt buộc một lần trong đời đối với mỗi người Hồi giáo có đủ khả năng';

  @override
  String get hajjScreenTitle => 'Hướng dẫn Hajj';

  @override
  String get hajjScreenSubtitle =>
      'Hướng dẫn từng bước cho cuộc đại hành hương';

  @override
  String get umrahCardTitle => 'Umrah';

  @override
  String get umrahCardSubtitle => 'Cuộc hành hương nhỏ';

  @override
  String get umrahCardDescription =>
      'Một hành trình tâm linh đầy phần thưởng có thể thực hiện vào bất kỳ thời điểm nào trong năm';

  @override
  String get umrahScreenTitle => 'Hướng dẫn Umrah';

  @override
  String get umrahScreenSubtitle =>
      'Hướng dẫn từng bước cho cuộc hành hương nhỏ';

  @override
  String get pilgrimageStepsTitle => 'Nghi lễ & Các bước';

  @override
  String get pilgrimageImportantNotesTitle => 'Lưu ý quan trọng';

  @override
  String get pilgrimageDuaTitle => 'Dua cho bước này';

  @override
  String get pilgrimageJafariNoteTitle => 'Ghi chú Fiqh Ja\'fari';

  @override
  String get pilgrimageComplete => '✓ Hoàn thành';

  @override
  String get pilgrimageMarkDone => 'Đánh dấu là hoàn thành';

  @override
  String pilgrimageProgress(int done, int total) {
    return '$done trong $total bước';
  }

  @override
  String pilgrimageReadTime(int minutes) {
    return '~$minutes phút';
  }

  @override
  String get pilgrimageShiaNoteTitle => 'Người hành hương Shia';

  @override
  String get pilgrimageShiaNoteBody =>
      'Theo truyền thống, người hành hương Shia cũng đến Medina để viếng mộ Nhà Tiên tri Muhammad ﷺ tại Masjid al-Nabawi, và mộ các Imam tại Jannat al-Baqi. Những chuyến viếng thăm này mang ý nghĩa tâm linh to lớn và được xem là phần không thể thiếu của hành trình đối với đa số người Hồi giáo Shia.';

  @override
  String get hajjIntro =>
      'Hajj là trụ cột thứ năm của Hồi giáo, bắt buộc một lần trong đời đối với mỗi người Hồi giáo đủ khả năng về thể chất và tài chính. Hajj được thực hiện vào tháng Dhul Hijjah và đi theo dấu chân của Nhà Tiên tri Ibrahim (AS), con trai ngài Ismail (AS), và Phu nhân Hajar. Đối với người Hồi giáo Shia, Hajj còn bao gồm ân phúc sâu sắc của việc viếng thăm nơi an nghỉ của Nhà Tiên tri ﷺ và Ahlul Bayt ở Medina.';

  @override
  String get umrahIntro =>
      'Umrah là cuộc hành hương nhỏ đến Mecca và, không giống như Hajj, có thể được thực hiện vào bất kỳ thời điểm nào trong năm. Mặc dù không bắt buộc, nó mang lại phần thưởng tâm linh lớn lao và được xem là hành động thờ phượng rất được khuyến khích. Nó chia sẻ một số nghi lễ với Hajj nhưng ngắn hơn, gồm bốn nghi thức chính.';
}
