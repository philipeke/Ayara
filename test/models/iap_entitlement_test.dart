import 'package:flutter_test/flutter_test.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:nuria/models/iap_entitlement.dart';

void main() {
  group('IapEntitlement (Nuria)', () {
    test('parses active blessed entitlement', () {
      final now = DateTime(2026, 2, 15, 12, 0);

      final ent = IapEntitlement.fromMap('uid123', <String, dynamic>{
        // Firestore schema may still say isChampion - OK if model expects it.
        'isChampion': true,
        'productId': 'com.oakdev.nuria.premium',
        'platform': 'ios',
        'status': 'active',
        'lastVerifiedAt': Timestamp.fromDate(now),
        'originalTransactionId': 'origTx',
        'environment': 'Sandbox',
      });

      expect(ent.uid, 'uid123');
      expect(ent.isBlessed, true);
      expect(ent.status, 'active');
      expect(ent.platform, 'ios');
      expect(ent.productId, 'com.oakdev.nuria.premium');
      expect(ent.lastVerifiedAt, isNotNull);
      expect(ent.isActive, true);
      expect(ent.environment, 'Sandbox');
    });

    test('defaults status to inactive when missing/blank', () {
      final ent = IapEntitlement.fromMap('uid123', <String, dynamic>{
        'isChampion': false,
        'status': '   ',
      });

      expect(ent.status, 'inactive');
      expect(ent.isActive, false);
    });

    test('parses bool from string/num safely', () {
      final ent1 = IapEntitlement.fromMap('u1', <String, dynamic>{
        'isChampion': 'true',
        'status': 'active',
      });
      final ent2 = IapEntitlement.fromMap('u2', <String, dynamic>{
        'isChampion': 1,
        'status': 'active',
      });
      final ent3 = IapEntitlement.fromMap('u3', <String, dynamic>{
        'isChampion': 0,
        'status': 'active',
      });

      expect(ent1.isBlessed, true);
      expect(ent2.isBlessed, true);
      expect(ent3.isBlessed, false);
    });
  });
}
