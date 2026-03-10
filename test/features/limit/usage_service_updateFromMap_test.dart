import 'package:flutter_test/flutter_test.dart';

import 'package:nuria/features/limit/usage_service.dart';

void main() {
  group('UsageService.updateFromMap (Nuria)', () {
    test('parses nested credits (total/used/remaining) and recomputes usage', () {
      final s = UsageService.instance;
      s.clear();

      s.updateFromMap(<String, dynamic>{
        'allowed': true,
        'plan': 'grace',
        'credits': <String, dynamic>{
          'total': 150,
          'used': 10,
          'remaining': 140,
        },
      });

      final snap = s.current!;
      expect(snap.plan, 'grace');
      expect(snap.creditsTotal, 150);
      expect(snap.creditsUsed, 10);
      expect(snap.creditsRemaining, 140);

      // Generic usage mirrors credits
      expect(snap.usageLimit, 150);
      expect(snap.usageUsed, 10);
    });

    test('merge-safe: plan-only update must not zero credits', () {
      final s = UsageService.instance;
      s.clear();

      s.updateFromMap(<String, dynamic>{
        'plan': 'grace',
        'creditsTotal': 150,
        'creditsUsed': 5,
        'creditsRemaining': 145,
      });

      s.updateFromMap(<String, dynamic>{
        'plan': 'blessed', // no credits in payload
      });

      final snap = s.current!;
      expect(snap.plan, 'blessed');
      expect(snap.creditsTotal, 150);
      expect(snap.creditsUsed, 5);
      expect(snap.creditsRemaining, 145);
    });

    test('computes remaining when missing remaining (nested)', () {
      final s = UsageService.instance;
      s.clear();

      s.updateFromMap(<String, dynamic>{
        'plan': 'grace',
        'credits': <String, dynamic>{
          'total': 150,
          'used': 7,
          // remaining omitted
        },
      });

      final snap = s.current!;
      expect(snap.creditsTotal, 150);
      expect(snap.creditsUsed, 7);
      expect(snap.creditsRemaining, 143);
    });

    test('computes remaining when missing remaining (top-level)', () {
      final s = UsageService.instance;
      s.clear();

      s.updateFromMap(<String, dynamic>{
        'plan': 'grace',
        'creditsTotal': 150,
        'creditsUsed': 9,
        // creditsRemaining omitted
      });

      final snap = s.current!;
      expect(snap.creditsRemaining, 141);
    });

    test('legacy monthly fields override usageUsed/usageLimit when present', () {
      final s = UsageService.instance;
      s.clear();

      s.updateFromMap(<String, dynamic>{
        'plan': 'grace',
        'creditsTotal': 150,
        'creditsUsed': 10,
        'creditsRemaining': 140,
      });

      // legacy monthly should override generic usage numbers
      s.updateFromMap(<String, dynamic>{
        'monthlyLimit': 2000,
        'monthlyUsed': 123,
      });

      final snap = s.current!;
      expect(snap.usageLimit, 2000);
      expect(snap.usageUsed, 123);

      // credits should remain unchanged (because no credits fields sent)
      expect(snap.creditsTotal, 150);
      expect(snap.creditsUsed, 10);
      expect(snap.creditsRemaining, 140);
    });

    test('never allows negative remaining', () {
      final s = UsageService.instance;
      s.clear();

      s.updateFromMap(<String, dynamic>{
        'plan': 'grace',
        'creditsTotal': 10,
        'creditsUsed': 25,
      });

      final snap = s.current!;
      expect(snap.creditsRemaining, 0);
    });
  });
}
