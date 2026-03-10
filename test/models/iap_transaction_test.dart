import 'package:flutter_test/flutter_test.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:nuria/models/iap_transaction.dart';

void main() {
  group('IapTransaction (Nuria)', () {
    test('parses granted consumable transaction', () {
      final now = DateTime(2026, 2, 15, 12, 0);

      final tx = IapTransaction.fromMap('ios:tx_123', <String, dynamic>{
        'uid': 'uid123',
        'platform': 'ios',
        'productId': 'nuria_reflections_200',
        'type': 'consumable',
        'transactionId': 'tx_123',
        'status': 'granted',
        'deviceId': 'dev1',
        'receiptHash': 'rh',
        'purchaseTokenHash': null,
        'createdAt': Timestamp.fromDate(now),
        'verifiedAt': Timestamp.fromDate(now),
        'grantedAt': Timestamp.fromDate(now),
        'granted': <String, dynamic>{'credits': 200},
        'apple': <String, dynamic>{
          'environment': 'Sandbox',
          'bundleId': 'com.oakdev.nuria',
          'originalTransactionId': 'orig',
          'productId': 'nuria_reflections_200',
        },
      });

      expect(tx.id, 'ios:tx_123');
      expect(tx.uid, 'uid123');
      expect(tx.platform, 'ios');
      expect(tx.productId, 'nuria_reflections_200');
      expect(tx.type, 'consumable');
      expect(tx.transactionId, 'tx_123');
      expect(tx.status, 'granted');
      expect(tx.isGranted, true);
      expect(tx.granted, isNotNull);
      expect(tx.granted!.credits, 200);
      expect(tx.apple, isNotNull);
      expect(tx.apple!.environment, 'Sandbox');
    });

    test('parses rejected transaction with reason', () {
      final tx = IapTransaction.fromMap('ios:tx_999', <String, dynamic>{
        'uid': 'uid123',
        'platform': 'ios',
        'productId': 'nuria_reflections_400',
        'type': 'consumable',
        'transactionId': 'tx_999',
        'status': 'rejected',
        'reason': 'TOPUP_REQUIRES_BLESSED',
      });

      expect(tx.isRejected, true);
      expect(tx.reason, 'TOPUP_REQUIRES_BLESSED');
    });

    test('parses entitlement grant payload', () {
      final tx = IapTransaction.fromMap('ios:tx_blessed', <String, dynamic>{
        'uid': 'uid123',
        'platform': 'ios',
        'productId': 'com.oakdev.nuria.premium',
        'type': 'entitlement',
        'transactionId': 'tx_blessed',
        'status': 'granted',
        'granted': <String, dynamic>{
          'entitlement': 'blessed',
          'bonusCredits': 300,
        },
      });

      expect(tx.isGranted, true);
      expect(tx.granted, isNotNull);
      expect(tx.granted!.entitlement, 'blessed');
      expect(tx.granted!.bonusCredits, 300);
    });
  });
}
