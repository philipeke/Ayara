// lib/core/utils/error_ui.dart
import 'package:flutter/material.dart';

import 'package:ayara/core/utils/app_error.dart';
import 'package:ayara/l10n/app_localizations.dart';

void showAppErrorSnack(
  BuildContext context,
  Object error, {
  StackTrace? stackTrace,
  String? fallbackMessage,
}) {
  final t = AppLocalizations.of(context)!;
  final appErr = AppError.from(error, stackTrace);

  // Silent errors are intentional UX (already messaged elsewhere).
  if (appErr.shouldBeSilent) {
    appErr.debugLog('Silent');
    return;
  }

  String msg;
  if (appErr.isGuestNotAllowed) {
    msg = t.rateGuestMustSignIn;
  } else if (appErr.isCreditsExhausted) {
    // Ayara terminology: reflections (not credits).
    msg = t.rateReflectionsExhausted;
  } else if (appErr.isDeviceBound) {
    msg = t.deviceBoundError;
  } else if (appErr.isNetwork) {
    msg = t.rateCheckGenericError; // keep generic for now
  } else {
    msg = fallbackMessage ?? t.genericErrorSnack;
  }

  appErr.debugLog('Snack');

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(msg)),
  );
}
