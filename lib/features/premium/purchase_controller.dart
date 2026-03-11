// lib/features/premium/purchase_controller.dart
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

// ✅ Android-only platform addition (safe to import; only used when _isAndroid)
import 'package:in_app_purchase_android/in_app_purchase_android.dart';

import 'premium_service.dart';

/// Product IDs MUST match exactly what you configure in App Store Connect / Play Console.
///
/// Ayara naming:
/// - Plan: Basic (free) and Premium (upgrade)
/// - Currency: Reflections (UI), stored as credits in backend payloads
class PremiumProducts {
  /// 100 reflections top-up (unlocked after Premium)
  ///
  /// TODO: replace with your real Ayara product id.
  static const String reflections100 = 'ayara_reflections_100';

  /// 200 reflections top-up (unlocked after Premium)
  ///
  /// TODO: replace with your real Ayara product id.
  static const String reflections200 = 'ayara_reflections_200';

  /// 400 reflections top-up (unlocked after Premium)
  ///
  /// TODO: replace with your real Ayara product id.
  static const String reflections400 = 'ayara_reflections_400';

  /// Premium one-time upgrade (entitlement + bonus reflections)
  ///
  /// TODO: replace with your real Ayara product id.
  static const String premium = 'com.oakdev.ayara.premium';

  static const Set<String> all = {
    reflections100,
    reflections200,
    reflections400,
    premium,
  };

  static bool isTopup(String id) =>
      id == reflections100 || id == reflections200 || id == reflections400;
}

/// Latest backend ack result (for UI/snackbar/refresh).
class LastIapResult {
  final String productId;
  final String platform;
  final bool ok;

  /// Backend plan: "basic" | "premium" | "guest"
  final String plan;

  /// Backend payload still uses credits fields (source of truth).
  final int creditsTotal;
  final int creditsUsed;
  final int creditsRemaining;

  final bool alreadyGranted;
  final String? errorCode;
  final String? errorMessage;
  final DateTime at;

  LastIapResult({
    required this.productId,
    required this.platform,
    required this.ok,
    required this.plan,
    required this.creditsTotal,
    required this.creditsUsed,
    required this.creditsRemaining,
    required this.alreadyGranted,
    required this.errorCode,
    required this.errorMessage,
    required this.at,
  });
}

/// Controller handling purchases (Android + iOS):
/// - Loads products
/// - Listens to purchaseStream
/// - Sends receipts/tokens to backend via PremiumService / iapAcknowledgeAndGrant
class PurchaseController extends ChangeNotifier {
  PurchaseController._internal();
  static final PurchaseController instance = PurchaseController._internal();

  final InAppPurchase _iap = InAppPurchase.instance;

  bool _available = false;
  bool get isAvailable => _available;

  bool _loading = false;
  bool get isLoading => _loading;

  /// Which product is currently "in progress" (for UI button spinners).
  String? _activeProductId;
  String? get activeProductId => _activeProductId;

  List<ProductDetails> _products = <ProductDetails>[];
  List<ProductDetails> get products => List.unmodifiable(_products);

  StreamSubscription<List<PurchaseDetails>>? _subscription;

  bool get _isAndroid => defaultTargetPlatform == TargetPlatform.android;
  bool get _isIos => defaultTargetPlatform == TargetPlatform.iOS;

  bool _didInit = false;
  bool get didInit => _didInit;

  // Explicit restore flag (UI button)
  bool _restoreInProgress = false;

  // Watchdogs (to prevent UI getting stuck)
  Timer? _watchdog;

  // Track last seen tx per product to detect StoreKit "replay" / duplicate restored.
  final Map<String, String> _lastTxByProduct = <String, String>{};

  // Track last buy attempt to decide how to interpret restored events.
  String? _lastAttemptProductId;
  DateTime? _lastAttemptAt;

  // Latest backend ack result (UI can read & display)
  LastIapResult? _lastResult;
  LastIapResult? get lastResult => _lastResult;

  void _setLastResult(LastIapResult r) {
    _lastResult = r;
    notifyListeners();
  }

  void _log(String msg) {
    if (kDebugMode) debugPrint('🧾 IAP: $msg');
  }

  void _logWarn(String msg) {
    if (kDebugMode) debugPrint('⚠️ IAP: $msg');
  }

  void _logErr(String msg) {
    if (kDebugMode) debugPrint('❌ IAP: $msg');
  }

  void _setLoading(bool v, {String? activeProductId}) {
    _loading = v;
    _activeProductId = v ? activeProductId : null;
    notifyListeners();
  }

  void _startWatchdog({required String tag, required int seconds}) {
    _watchdog?.cancel();
    _watchdog = Timer(Duration(seconds: seconds), () {
      _logWarn(
        '$tag watchdog fired: no purchaseStream updates within ${seconds}s. Releasing loading.',
      );
      _setLoading(false);
      _restoreInProgress = false;
    });
  }

  void _stopWatchdog() {
    _watchdog?.cancel();
    _watchdog = null;
  }

  Future<void> init() async {
    if (_didInit) return;

    _setLoading(true);

    try {
      final available = await _iap.isAvailable();
      _available = available;

      _log('init() available=$_available platform=${defaultTargetPlatform.name}');

      if (!available) {
        _logWarn('IAP not available on this device/session.');
        return;
      }

      _subscription ??= _iap.purchaseStream.listen(
        _onPurchaseUpdated,
        onDone: () {
          _log('purchaseStream done');
          _subscription?.cancel();
          _subscription = null;
        },
        onError: (Object error) {
          _logErr('purchaseStream error: $error');
          _stopWatchdog();
          _setLoading(false);
          _restoreInProgress = false;
        },
      );

      final ProductDetailsResponse response =
          await _iap.queryProductDetails(PremiumProducts.all);

      _log(
        'queryProductDetails: found=${response.productDetails.length} '
        'notFound=${response.notFoundIDs}',
      );

      if (response.error != null) {
        _logErr('queryProductDetails error: ${response.error}');
      }

      _products = response.productDetails;

      for (final p in _products) {
        _log('product: id=${p.id} title="${p.title}" price=${p.price}');
      }

      if (response.notFoundIDs.isNotEmpty) {
        _logWarn(
          'Some product IDs were not found by StoreKit/Play: ${response.notFoundIDs}.',
        );
      }
    } catch (e, st) {
      _logErr('init() failed: $e');
      if (kDebugMode) _logErr('$st');
    } finally {
      _didInit = true;
      _stopWatchdog();
      _setLoading(false);
      if (kDebugMode) {
        _log(
          'IAP DEBUG: init done. available=$_available products=${_products.length}',
        );
      }
    }
  }

  Future<void> _ensureInit() async {
    if (_didInit) return;
    _logWarn('_ensureInit: init() has not completed yet — running init() now.');
    await init();
  }

  ProductDetails? _findProduct(String productId) {
    try {
      return _products.firstWhere((p) => p.id == productId);
    } catch (_) {
      return null;
    }
  }

  ProductDetails _requireProduct(String productId) {
    final product = _findProduct(productId);
    if (product != null) return product;

    final loadedIds = _products.map((p) => p.id).toList()..sort();
    throw StateError(
      'Product not found: $productId. Loaded products: $loadedIds.',
    );
  }

  void _markAttempt(String productId) {
    _lastAttemptProductId = productId;
    _lastAttemptAt = DateTime.now();
  }

  bool _isRecentAttemptFor(String productId, {int seconds = 20}) {
    if (_lastAttemptProductId != productId) return false;
    final t = _lastAttemptAt;
    if (t == null) return false;
    return DateTime.now().difference(t).inSeconds <= seconds;
  }

  Future<void> _buyConsumable(String productId) async {
    await _ensureInit();

    if (!_available) {
      _logWarn('buyConsumable aborted: IAP not available');
      return;
    }

    _log('buyConsumable start: $productId');

    try {
      _markAttempt(productId);

      _setLoading(true, activeProductId: productId);
      _startWatchdog(tag: 'buy:$productId', seconds: 25);

      final product = _requireProduct(productId);
      final purchaseParam = PurchaseParam(productDetails: product);

      if (_isIos) {
        await _iap.buyConsumable(
          purchaseParam: purchaseParam,
          autoConsume: true,
        );
        _log(
          'buyConsumable invoked StoreKit for $productId (iOS autoConsume=true)',
        );
      } else if (_isAndroid) {
        await _iap.buyConsumable(
          purchaseParam: purchaseParam,
          autoConsume: false,
        );
        _log(
          'buyConsumable invoked Play for $productId (Android autoConsume=false)',
        );
      } else {
        _logWarn('Unsupported platform for buyConsumable');
        _stopWatchdog();
        _setLoading(false);
      }
    } catch (e, st) {
      _logErr('buyConsumable failed for $productId: $e');
      if (kDebugMode) _logErr('$st');
      _stopWatchdog();
      _setLoading(false);
      rethrow;
    }
  }

  Future<void> buyReflections100() =>
      _buyConsumable(PremiumProducts.reflections100);
  Future<void> buyReflections200() =>
      _buyConsumable(PremiumProducts.reflections200);
  Future<void> buyReflections400() =>
      _buyConsumable(PremiumProducts.reflections400);

  Future<void> buyPremium() async {
    await _ensureInit();

    if (!_available) {
      _logWarn('buyPremium aborted: IAP not available');
      return;
    }

    final productId = PremiumProducts.premium;
    _log('buyPremium start: $productId');

    try {
      _markAttempt(productId);

      _setLoading(true, activeProductId: productId);
      _startWatchdog(tag: 'buy:$productId', seconds: 25);

      final product = _requireProduct(productId);
      final purchaseParam = PurchaseParam(productDetails: product);

      if (_isAndroid || _isIos) {
        await _iap.buyNonConsumable(purchaseParam: purchaseParam);
        _log('buyNonConsumable invoked StoreKit/Play for $productId');
      } else {
        _logWarn('Unsupported platform for buyPremium');
        _stopWatchdog();
        _setLoading(false);
      }
    } catch (e, st) {
      _logErr('buyPremium failed: $e');
      if (kDebugMode) _logErr('$st');
      _stopWatchdog();
      _setLoading(false);
      rethrow;
    }
  }

  Future<void> restorePurchases() async {
    await _ensureInit();

    if (!_available) {
      _logWarn('restorePurchases aborted: IAP not available');
      return;
    }

    try {
      _restoreInProgress = true;
      _setLoading(true, activeProductId: 'restore');
      _startWatchdog(tag: 'restore', seconds: 25);
      _log('restorePurchases start');

      // ✅ Restore consumable credits from previous guest sessions on this device.
      // StoreKit/Play don't restore consumables — this fills the gap for anonymous
      // users who got a new UID after signing out.
      final deviceRestore = await PremiumService.instance.restoreDevicePurchases();
      if (deviceRestore.creditsRestored > 0 || deviceRestore.entitlementsRestored > 0) {
        _log(
          'Device restore: credits=${deviceRestore.creditsRestored} '
          'entitlements=${deviceRestore.entitlementsRestored}',
        );
      }

      await _iap.restorePurchases();
      _log('restorePurchases called');
    } catch (e, st) {
      _logErr('restorePurchases error: $e');
      if (kDebugMode) _logErr('$st');
      _stopWatchdog();
      _setLoading(false);
      _restoreInProgress = false;
      rethrow;
    }
  }

  Future<void> _onPurchaseUpdated(
    List<PurchaseDetails> purchaseDetailsList,
  ) async {
    _log('purchaseStream update: count=${purchaseDetailsList.length}');
    _stopWatchdog();

    for (final purchase in purchaseDetailsList) {
      final productId = purchase.productID;
      final txId = purchase.purchaseID ?? '';

      _log(
        'purchase update: product=$productId '
        'status=${purchase.status} '
        'pendingComplete=${purchase.pendingCompletePurchase} '
        'purchaseID=${purchase.purchaseID}',
      );

      if (purchase.error != null) {
        _logErr('purchase error: ${purchase.error}');
      }

      final lastTx = _lastTxByProduct[productId];
      final isDuplicateTx =
          txId.isNotEmpty && lastTx != null && lastTx == txId;

      if (txId.isNotEmpty) {
        _lastTxByProduct[productId] = txId;
      }

      final isTopup = PremiumProducts.isTopup(productId);
      final isRecentAttempt = _isRecentAttemptFor(productId);

      try {
        switch (purchase.status) {
          case PurchaseStatus.pending:
            break;

          case PurchaseStatus.error:
          case PurchaseStatus.canceled:
            _restoreInProgress = false;
            _setLoading(false);
            break;

          case PurchaseStatus.purchased:
            await _handleVerifiedPurchase(purchase);
            _restoreInProgress = false;
            _setLoading(false);
            break;

          case PurchaseStatus.restored:
            if (!_restoreInProgress && isTopup && isRecentAttempt) {
              if (isDuplicateTx) {
                _logWarn(
                  'Top-up RESTORED with SAME txId right after buy attempt. '
                  'Likely not consumed yet. product=$productId txId=$txId',
                );
              } else {
                _logWarn(
                  'Top-up RESTORED outside restore flow right after buy attempt. '
                  'product=$productId txId=$txId',
                );
              }
            }

            await _handleVerifiedPurchase(purchase);
            _restoreInProgress = false;
            _setLoading(false);
            break;
        }
      } catch (e, st) {
        _logErr('handle purchase failed for $productId: $e');
        if (kDebugMode) _logErr('$st');
        _restoreInProgress = false;
        _setLoading(false);
      } finally {
        if (purchase.pendingCompletePurchase) {
          try {
            await _iap.completePurchase(purchase);
            _log('completePurchase ok (pendingComplete=true): $productId');
          } catch (e) {
            _logErr(
              'completePurchase failed (pendingComplete=true): $productId err=$e',
            );
          }
        } else if (_isIos) {
          // Defensive completion for iOS
          try {
            await _iap.completePurchase(purchase);
            _log('completePurchase ok (defensive iOS): $productId');
          } catch (e) {
            _logWarn(
              'completePurchase defensive failed: $productId err=$e',
            );
          }
        }
      }
    }

    // ✅ FIX: Release loading if still set after processing all items.
    // Handles the empty-list case (e.g. "nothing to restore") where the for
    // loop above never runs and no case clears _loading.
    if (_loading) {
      _log(
        '_onPurchaseUpdated: releasing residual _loading after processing '
        '${purchaseDetailsList.length} item(s)',
      );
      _restoreInProgress = false;
      _setLoading(false);
    }
  }

  Future<void> _handleVerifiedPurchase(PurchaseDetails purchase) async {
    if (_isAndroid) {
      await _handleAndroidPurchase(purchase);
    } else if (_isIos) {
      await _handleIosPurchase(purchase);
    } else {
      _logWarn('Unsupported platform in _handleVerifiedPurchase');
    }
  }

  Future<void> _consumeAndroidIfTopup(PurchaseDetails purchase) async {
    if (!_isAndroid) return;
    if (!PremiumProducts.isTopup(purchase.productID)) return;

    try {
      final addition =
          _iap.getPlatformAddition<InAppPurchaseAndroidPlatformAddition>();
      await addition.consumePurchase(purchase);
      _log(
        'Android consumePurchase ok (platform addition): ${purchase.productID}',
      );
    } catch (e) {
      _logWarn(
        'Android consumePurchase failed (platform addition): ${purchase.productID} err=$e',
      );
    }
  }

  Future<void> _handleAndroidPurchase(PurchaseDetails purchase) async {
    final productId = purchase.productID;

    final String transactionId =
        purchase.purchaseID ?? purchase.hashCode.toString();
    final String purchaseToken =
        purchase.verificationData.serverVerificationData;

    _log('Android purchase: productId=$productId transactionId=$transactionId');

    final res = await PremiumService.instance.acknowledgeIapPurchase(
      platform: 'android',
      productId: productId,
      transactionId: transactionId,
      purchaseToken: purchaseToken,
    );

    _log(
      'Android IAP result: ok=${res.ok} plan=${res.plan} '
      'total=${res.creditsTotal} remaining=${res.creditsRemaining} '
      'alreadyGranted=${res.alreadyGranted} '
      'errCode=${res.errorCode} errMsg=${res.errorMessage}',
    );

    _setLastResult(
      LastIapResult(
        productId: productId,
        platform: 'android',
        ok: res.ok,
        plan: res.plan,
        creditsTotal: res.creditsTotal,
        creditsUsed: res.creditsUsed,
        creditsRemaining: res.creditsRemaining,
        alreadyGranted: res.alreadyGranted,
        errorCode: res.errorCode,
        errorMessage: res.errorMessage,
        at: DateTime.now(),
      ),
    );

    // ✅ ALWAYS consume Android consumable top-ups after backend call.
    // Backend is idempotent; consuming clears Play state so user can repurchase.
    await _consumeAndroidIfTopup(purchase);
  }

  Future<void> _handleIosPurchase(PurchaseDetails purchase) async {
    final productId = purchase.productID;

    final String transactionId =
        purchase.purchaseID ?? purchase.hashCode.toString();
    final String receipt = purchase.verificationData.serverVerificationData;

    _log('iOS purchase: productId=$productId transactionId=$transactionId');

    final res = await PremiumService.instance.acknowledgePurchaseIos(
      productId: productId,
      transactionId: transactionId,
      receipt: receipt,
    );

    _log(
      'iOS IAP result: ok=${res.ok} plan=${res.plan} '
      'total=${res.creditsTotal} remaining=${res.creditsRemaining} '
      'alreadyGranted=${res.alreadyGranted} '
      'errCode=${res.errorCode} errMsg=${res.errorMessage}',
    );

    _setLastResult(
      LastIapResult(
        productId: productId,
        platform: 'ios',
        ok: res.ok,
        plan: res.plan,
        creditsTotal: res.creditsTotal,
        creditsUsed: res.creditsUsed,
        creditsRemaining: res.creditsRemaining,
        alreadyGranted: res.alreadyGranted,
        errorCode: res.errorCode,
        errorMessage: res.errorMessage,
        at: DateTime.now(),
      ),
    );
  }

  @override
  void dispose() {
    _watchdog?.cancel();
    _watchdog = null;
    _subscription?.cancel();
    _subscription = null;
    super.dispose();
  }
}
