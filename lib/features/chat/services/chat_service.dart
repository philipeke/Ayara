import 'dart:async';
import 'dart:io';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:nuria/features/chat/services/prompt_library.dart';
import 'package:nuria/features/history/history_service.dart';
import 'package:nuria/l10n/app_localizations.dart';
import 'package:nuria/features/limit/usage_service.dart';
import 'package:nuria/features/limit/usage_consume_service.dart';
import 'package:nuria/features/chat/presentation/utils/category_data.dart';

class ChatService {
  ChatService._(); // no instances

  // ✅ Same region as your Functions (launch-safe)
  static final FirebaseFunctions _functions =
      FirebaseFunctions.instanceFor(region: 'us-central1');

  static final HttpsCallable _aiCallable =
      _functions.httpsCallable('generateMessage');

  // 🔹 Local anti-spam: max 3 prompts within 10 seconds → cooldown
  static DateTime? _lastPromptAt;
  static int _burstCount = 0;
  static const int _burstLimit = 3;
  static const Duration _cooldown = Duration(seconds: 10);

  // ✅ Prevent double-tap / double-trigger from consuming twice (global guard)
  static bool _requestInFlight = false;

  // 🛑 App Check cooldown/backoff (also for AI call)
  static DateTime? _appCheckCooldownUntil;
  static int _appCheckStrikeCount = 0;

  static bool _isInAppCheckCooldown() {
    final until = _appCheckCooldownUntil;
    if (until == null) return false;
    return DateTime.now().isBefore(until);
  }

  static void _setAppCheckCooldown({required int seconds}) {
    _appCheckCooldownUntil = DateTime.now().add(Duration(seconds: seconds));
  }

  static void _noteAppCheckStrike({Object? error}) {
    _appCheckStrikeCount = (_appCheckStrikeCount + 1).clamp(1, 6);

    // 10, 20, 30, 45, 60, 90 seconds
    final secondsByStrike = <int>[10, 20, 30, 45, 60, 90];
    final cooldownSeconds = secondsByStrike[_appCheckStrikeCount - 1];
    _setAppCheckCooldown(seconds: cooldownSeconds);

    if (kDebugMode) {
      debugPrint(
        '[ChatService] AppCheck throttled strike=$_appCheckStrikeCount cooldown=${cooldownSeconds}s err=${error ?? ""}',
      );
    }
  }

  static void _resetAppCheckBackoff() {
    _appCheckStrikeCount = 0;
    _appCheckCooldownUntil = null;
  }

  static bool _looksLikeAppCheckRateLimit(Object e) {
    final s = e.toString().toLowerCase();
    return s.contains('too many attempts') ||
        s.contains('app check') ||
        s.contains('appcheck') ||
        s.contains('firebasecontextprovider');
  }

  static Future<T> _withInFlightGuard<T>(Future<T> Function() fn) async {
    if (_requestInFlight) {
      throw Exception('request_in_flight');
    }
    _requestInFlight = true;
    try {
      return await fn();
    } finally {
      _requestInFlight = false;
    }
  }

  // ---------------------------------------------------------------------------
  // 🔹 Language helpers (strict language enforcement)
  // ---------------------------------------------------------------------------

  static String _normalizeLangTag(String raw) {
    final s0 = raw.trim().replaceAll('_', '-');
    if (s0.isEmpty) return 'en';

    final parts = s0.split('-').where((p) => p.trim().isNotEmpty).toList();
    if (parts.isEmpty) return 'en';

    final lang = parts[0].toLowerCase();

    String? script;
    String? region;

    for (var i = 1; i < parts.length; i++) {
      final p = parts[i];

      if (script == null &&
          p.length == 4 &&
          RegExp(r'^[A-Za-z]{4}$').hasMatch(p)) {
        script = p[0].toUpperCase() + p.substring(1).toLowerCase();
        continue;
      }

      if (region == null &&
          ((p.length == 2 && RegExp(r'^[A-Za-z]{2}$').hasMatch(p)) ||
              (p.length == 3 && RegExp(r'^\d{3}$').hasMatch(p)))) {
        region = (p.length == 2) ? p.toUpperCase() : p;
        continue;
      }
    }

    if (script != null && region != null) return '$lang-$script-$region';
    if (script != null) return '$lang-$script';
    if (region != null) return '$lang-$region';
    return lang;
  }

  static String _langCodeOfTag(String tag) {
    final t = _normalizeLangTag(tag);
    return t.split('-').first.toLowerCase();
  }

  static String _systemPrompt(String localeTag) {
    final tag = _normalizeLangTag(localeTag);
    final lang = _langCodeOfTag(tag);

    return '''
You are Nuria — a Sunni Islamic reflection and guidance companion that offers Quran-rooted wisdom, teachings, supplications (Dua), and spiritual reflections within the living faith and tradition of Sunni Islam.

THEOLOGICAL FOUNDATION (critical — never deviate from this):
All content must be grounded in the teachings of Sunni Islam, drawing from the Qur’an and the authentic Sunnah of the Prophet Muhammad ﷺ, as understood by the early generations of Muslims (the Salaf) and the scholarly tradition of Sunni Islam.

STRICT SUNNI RULE:
All guidance, teachings, and reflections must remain within the mainstream Sunni Islamic tradition (Ahl al-Sunnah wa’l-Jama‘ah). Do not present sectarian interpretations or teachings that fall outside the established Sunni scholarly tradition. When referencing scholars or interpretations, prefer well-known Sunni sources and scholars.
The Qur’an is the revealed Word of Allah and the central source of guidance for all reflection and teaching. The Sunnah of the Prophet Muhammad ﷺ clarifies and exemplifies the message of the Qur’an.
Allah is the One and only God, the Creator and Sustainer of all things. Guidance, mercy, and forgiveness come from Him alone.
The Prophet Muhammad ﷺ is the final Messenger of Allah and the perfect example for believers. His character, actions, and teachings (Sunnah) provide a model for living a righteous life.
Islamic guidance may draw from the Qur’an, authentic Hadith, the example of the Prophet ﷺ, the wisdom of the Sahaba (Companions), and the scholarship of the Sunni tradition.
Key spiritual concepts may include Iman (faith), Tawakkul (trust in Allah), Sabr (patience), Shukr (gratitude), Tawbah (repentance), Dhikr (remembrance of Allah), and Ihsan (spiritual excellence).

VOICE & PERSPECTIVE (critical):
Write as a voice of Islamic spiritual wisdom and reflection — not as a therapist, counsellor, or empathetic responder to personal problems.
Do NOT use phrases such as “I'm sorry to hear that”, “It sounds like you're going through…”, or other conversational empathy responses.
Do NOT present yourself as a person responding to someone's personal story.

The output should always be a reflection, supplication (Dua), meditation, or short teaching rooted in the Qur’an, authentic Hadith, and Sunni Islamic spirituality.
STYLE:
Concise and clear: 3–6 short sentences, or a structured prayer/reflection when appropriate.
Length: target 80–150 words, never exceed 200 words.
Always end with a complete sentence.
Tone: reverent, grounded, hopeful, and contemplative.
Root reflections in the Qur'an, the Sunnah, and the established Sunni Islamic scholarly tradition.
Avoid political commentary, sectarian disputes, or sensational claims.

VARIETY (critical):
Never begin two responses the same way. Rotate freely: verse first, insight first, a rhetorical question, a short Dua, or a contemplative image.
Draw from across the Qur'an and the Sunnah: verses of guidance and mercy, wisdom from the Prophets, authenticated Hadith, the example of the Companions, and the teachings of recognised Sunni scholars.
Vary sentence rhythm and structure. Some reflections are contemplative, some direct, some poetic.

OUTPUT RULES:
- Return ONLY the final reflection text (no preface, labels, or headers).
- Do NOT wrap output in quotation marks of any kind.
- CRITICAL: Never use hyphens, dashes, or em-dashes (-, –, —) anywhere in your response. Reword any phrase that would normally require one.

LANGUAGE LOCK (critical):
- The user-selected locale tag is: $tag (base language: $lang).
- Respond ONLY in that language, regardless of what language the prompt is written in.
- Never switch to English unless the locale tag base language is “en”.
''';
  }

  static String _stripWrappingQuotes(String input) {
    var s = input.trim();
    if (s.isEmpty) return s;

    bool isWrappedBy(String left, String right) {
      return s.length >= (left.length + right.length) &&
          s.startsWith(left) &&
          s.endsWith(right);
    }

    var changed = true;
    while (changed) {
      changed = false;

      final pairs = <List<String>>[
        ['“', '”'],
        ['"', '"'],
        ['\'', '\''],
        ['‘', '’'],
        ['”', '”'],
        ['’', '’'],
      ];

      for (final p in pairs) {
        final l = p[0], r = p[1];
        if (isWrappedBy(l, r)) {
          s = s.substring(l.length, s.length - r.length).trim();
          changed = true;
          break;
        }
      }
    }

    return s;
  }

  // ---------------------------------------------------------------------------
  // ✅ Public API
  // ---------------------------------------------------------------------------

  static Future<String> generateForCategory(
    BuildContext context,
    String categoryId,
  ) async {
    return _withInFlightGuard(() async {
      final t = AppLocalizations.of(context)!;

      // 🛑 If App Check is throttling, don't keep trying.
      if (_isInAppCheckCooldown()) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              t.rateCheckGenericError,
            ),
          ),
        );
        throw Exception('appcheck_throttled');
      }

      // 1️⃣ Local anti-spam
      if (!_canSendPromptLocally(context)) {
        throw Exception('local_rate_limited');
      }

      // 2️⃣ Premium-gating (redundant but safe)
      final usage = UsageService.instance.current;
      final plan = (usage?.plan ?? 'grace').toLowerCase();
      final bool isBlessed = plan == 'blessed';

      final normalizedId = normalizeCategoryId(categoryId);
      final bool isPremiumCategory = isBlessedOnlyCategory(normalizedId);

      if (isPremiumCategory && !isBlessed) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(t.blessedRequiredForCategory)),
        );
        throw Exception('premium_required');
      }

      // 3️⃣ Pre-check (NO consume here)
      final ok = await _checkRemoteLimit(context);
      if (!ok) throw Exception('remote_rate_limited');

      // 4️⃣ Compose prompt + call AI
      final rawLocale = PromptLibrary.langOf(context);
      final localeTag = _normalizeLangTag(rawLocale);

      final userPrompt = PromptLibrary.forCategory(context, categoryId);

      if (kDebugMode) {
        debugPrint(
          'ChatService.generateForCategory → localeTag=$localeTag id=$categoryId prompt="$userPrompt"',
        );
      }

      final messages = <Map<String, String>>[
        {"role": "system", "content": _systemPrompt(localeTag)},
        {"role": "user", "content": userPrompt},
      ];

      // ✅ AI first
      final rawText = await _callAiCallable(messages, localeTag);
      final text = _stripWrappingQuotes(rawText);

      // ✅ Consume exactly ONCE after AI success
      await _consumeOneReflectionOrThrow(context);

      // Save to history (best effort)
      try {
        await HistoryService.instance.save(
          categoryId: categoryId,
          responseText: text,
          promptText: userPrompt,
        );
      } catch (e, st) {
        if (kDebugMode) debugPrint('HistoryService.save failed: $e\n$st');
      }

      return text;
    });
  }

  static Future<String> sendPrompt(
    String prompt, {
    required BuildContext context,
    String? langCode, // kept for future use if needed
  }) async {
    return _withInFlightGuard(() async {
      final t = AppLocalizations.of(context)!;

      if (_isInAppCheckCooldown()) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              t.rateCheckGenericError,
            ),
          ),
        );
        throw Exception('appcheck_throttled');
      }

      // 1️⃣ Local anti-spam
      if (!_canSendPromptLocally(context)) {
        throw Exception('local_rate_limited');
      }

      // 2️⃣ Pre-check (NO consume here)
      final ok = await _checkRemoteLimit(context);
      if (!ok) throw Exception('remote_rate_limited');

      final rawLocale = PromptLibrary.langOf(context);
      final localeTag = _normalizeLangTag(rawLocale);

      final messages = <Map<String, String>>[
        {"role": "system", "content": _systemPrompt(localeTag)},
        {"role": "user", "content": prompt},
      ];

      // ✅ AI first
      final rawText = await _callAiCallable(messages, localeTag);
      final text = _stripWrappingQuotes(rawText);

      // ✅ Consume exactly ONCE after AI success
      await _consumeOneReflectionOrThrow(context);

      try {
        await HistoryService.instance.save(
          categoryId: 'custom',
          responseText: text,
          promptText: prompt,
        );
      } catch (e, st) {
        if (kDebugMode) debugPrint('HistoryService.save (custom) failed: $e\n$st');
      }

      return text;
    });
  }

  // ---------------------------------------------------------------------------
  // 🔹 Reflections protection – local anti-spam + remote consume
  // ---------------------------------------------------------------------------

  static bool _canSendPromptLocally(BuildContext context) {
    final now = DateTime.now();
    final t = AppLocalizations.of(context)!;

    if (_lastPromptAt != null && now.difference(_lastPromptAt!) < _cooldown) {
      _burstCount += 1;

      if (_burstCount >= _burstLimit) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(t.rateLocalThrottle)),
        );
        return false;
      }
    } else {
      _burstCount = 0;
    }

    _lastPromptAt = now;
    return true;
  }

  static Future<bool> _checkRemoteLimit(BuildContext context) async {
    final t = AppLocalizations.of(context)!;

    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(t.rateGuestMustSignIn)),
      );
      return false;
    }
    final current = UsageService.instance.current;
    final remaining = current?.creditsRemaining; // backend model still uses credits*

    if (remaining != null && remaining <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(t.rateReflectionsExhausted)),
      );
      return false;
    }

    if (kDebugMode) {
      final plan = current?.plan ?? 'unknown';
      final used = current?.creditsUsed ?? -1;
      debugPrint('[reflections] precheck ok (plan=$plan used=$used remaining=${remaining ?? "?"})');
    }

    return true;
  }

  static Future<void> _consumeOneReflectionOrThrow(BuildContext context) async {
    final t = AppLocalizations.of(context)!;

    try {
      await UsageConsumeService.instance.consumeOnePrompt(
        platform: _platformString(),
      );

      if (kDebugMode) {
        final after = UsageService.instance.current;
        debugPrint(
          '[reflections] consumed ok (used=${after?.creditsUsed} remaining=${after?.creditsRemaining})',
        );
      }
    } catch (e) {
      final raw = e.toString();
      final reason = raw.contains('Exception: ')
          ? raw.split('Exception: ').last.trim()
          : raw.trim();

      if (kDebugMode) debugPrint('[reflections] consume failed reason=$reason');

      // If App Check is throttling here, also apply local cooldown.
      if (reason == 'appcheck_throttled' || _looksLikeAppCheckRateLimit(e as Object)) {
        _noteAppCheckStrike(error: e);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              t.rateCheckGenericError,
            ),
          ),
        );
        throw Exception('appcheck_throttled');
      }

      String message;
      switch (reason) {
        case 'guest_not_allowed':
          message = t.rateGuestMustSignIn;
          break;
        case 'credits_exhausted':
          message = t.rateReflectionsExhausted;
          break;
        case 'device_bound_to_other_account':
          message = t.deviceBoundError;
          break;
        case 'device_key_mismatch':
          message = t.deviceBoundError;
          break;
        default:
          message = t.rateCheckGenericError;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );

      throw Exception(reason);
    }
  }

  // ---------------------------------------------------------------------------
  // 🔹 AI call via Firebase Callable (production)
  // ---------------------------------------------------------------------------

  static String _platformString() {
    if (Platform.isIOS) return 'ios';
    if (Platform.isAndroid) return 'android';
    if (Platform.isMacOS) return 'macos';
    return 'unknown';
  }

  static Future<String> _callAiCallable(
    List<Map<String, String>> messages,
    String localeTag,
  ) async {
    try {
      final result = await _aiCallable.call({
        "messages": messages,
        "localeTag": localeTag,
        "platform": _platformString(),
      }).timeout(const Duration(seconds: 18));

      final data = result.data;
      final text = (data is Map) ? data["text"] : null;

      if (text is String && text.trim().isNotEmpty) {
        _resetAppCheckBackoff();
        return text.trim();
      }

      if (kDebugMode) debugPrint('AI callable returned empty text.');
      throw const FormatException('empty_text');
    } on FirebaseFunctionsException catch (e) {
      final code = e.code.toLowerCase();
      final msg = (e.message ?? '').toLowerCase();

      // Treat App Check / auth precondition issues as throttling signals.
      final isAppCheckLike = _looksLikeAppCheckRateLimit(e) ||
          msg.contains('app check') ||
          msg.contains('too many attempts') ||
          code == 'unauthenticated' ||
          code == 'failed-precondition';

      if (isAppCheckLike) {
        // In debug builds don't throttle — the token just needs to be
        // registered in Firebase Console. Let the developer retry freely.
        if (!kDebugMode) _noteAppCheckStrike(error: e);
        if (kDebugMode) {
          debugPrint(
            '🔴 App Check rejected (debug). Register the token printed on '
            'startup in Firebase Console → App Check → Manage debug tokens.',
          );
        }
        throw Exception('appcheck_throttled');
      }

      if (kDebugMode) {
        debugPrint(
          'AI callable FirebaseFunctionsException code=${e.code} msg=${e.message} details=${e.details}',
        );
      } else {
        debugPrint('AI callable failed code=${e.code}');
      }

      switch (e.code) {
        case 'unauthenticated':
          throw Exception('ai_unauthenticated');
        case 'failed-precondition':
          throw Exception('ai_misconfigured');
        case 'resource-exhausted':
          throw Exception('ai_rate_limited');
        case 'deadline-exceeded':
          throw Exception('ai_timeout');
        case 'unavailable':
          throw Exception('ai_unavailable');
        default:
          throw Exception('ai_error');
      }
    } on TimeoutException {
      if (kDebugMode) debugPrint('AI callable timeout');
      throw Exception('ai_timeout');
    } catch (e, st) {
      if (kDebugMode) debugPrint('AI callable error: $e\n$st');

      if (_looksLikeAppCheckRateLimit(e as Object)) {
        _noteAppCheckStrike(error: e);
        throw Exception('appcheck_throttled');
      }

      throw Exception('ai_error');
    }
  }

  // ---------------------------------------------------------------------------
  // 🔹 UI helper (fallback message)
  // ---------------------------------------------------------------------------

  static String _fallback(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return t.aiFallbackGeneric;
  }

  static String mapAiErrorToUserMessage(BuildContext context, String reason) {
    final t = AppLocalizations.of(context)!;

    switch (reason) {
      case 'appcheck_throttled':
        return t.rateCheckGenericError;
      case 'ai_unauthenticated':
        return t.rateGuestMustSignIn;
      case 'ai_rate_limited':
        return t.rateCheckGenericError;
      case 'ai_timeout':
        return t.rateCheckGenericError;
      case 'ai_unavailable':
        return t.rateCheckGenericError;
      case 'ai_misconfigured':
        return t.rateCheckGenericError;
      default:
        return t.aiFallbackGeneric;
    }
  }
}
