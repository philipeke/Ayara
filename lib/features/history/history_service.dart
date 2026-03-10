// lib/features/history/history_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:nuria/models/history_item.dart';

class HistoryService {
  HistoryService._();
  static final instance = HistoryService._();

  FirebaseFirestore get _db => FirebaseFirestore.instance;
  FirebaseAuth get _auth => FirebaseAuth.instance;

  /// Collection path: user_history/{uid}/posts
  CollectionReference<Map<String, dynamic>> _col(String uid) =>
      _db.collection('user_history').doc(uid).collection('posts');

  /// Save a post for the current user, with TTL (default 7 days).
  ///
  /// Firestore fields:
  /// - categoryId
  /// - text (prompt) [back-compat]
  /// - response (answer) [back-compat]
  /// - createdAt (serverTimestamp)
  /// - expireAt (Timestamp)
  Future<String> save({
    required String categoryId,
    required String responseText,
    String promptText = '',
    Duration ttl = const Duration(days: 7),
  }) async {
    final user = _auth.currentUser;
    if (user == null) {
      throw Exception('No user – cannot save history.');
    }

    final expireAt = DateTime.now().add(ttl);

    final docRef = await _col(user.uid).add({
      'categoryId': categoryId,

      // Backward compatible keys (keep!)
      'text': promptText,
      'response': responseText,

      // New keys (ok to include; mapper supports both)
      'promptText': promptText,
      'responseText': responseText,

      'createdAt': FieldValue.serverTimestamp(),
      'expireAt': Timestamp.fromDate(expireAt),
    });

    return docRef.id;
  }

  /// Fetch last N posts (default 25).
  Future<List<HistoryItem>> listRecent({int limit = 25}) async {
    final user = _auth.currentUser;
    if (user == null) return [];

    final snap = await _col(user.uid)
        .orderBy('createdAt', descending: true)
        .limit(limit)
        .get();

    return snap.docs.map(_mapDocToHistoryItem).toList(growable: false);
  }

  /// Real-time stream (for UI list).
  Stream<List<HistoryItem>> streamRecent({int limit = 50}) {
    final user = _auth.currentUser;
    if (user == null) {
      return const Stream<List<HistoryItem>>.empty();
    }

    return _col(user.uid)
        .orderBy('createdAt', descending: true)
        .limit(limit)
        .snapshots()
        .map(
          (snap) => snap.docs.map(_mapDocToHistoryItem).toList(growable: false),
        );
  }

  /// Delete a post.
  Future<void> delete(String postId) async {
    final user = _auth.currentUser;
    if (user == null) return;
    await _col(user.uid).doc(postId).delete();
  }

  /// Client-side cleanup: delete expired items (optional).
  Future<void> deleteExpiredClientSide() async {
    final user = _auth.currentUser;
    if (user == null) return;

    final snap = await _col(user.uid).get();
    final now = DateTime.now();
    final batch = _db.batch();

    for (final d in snap.docs) {
      final exp = (d.data()['expireAt'] as Timestamp?)?.toDate();
      if (exp != null && exp.isBefore(now)) {
        batch.delete(d.reference);
      }
    }

    await batch.commit();
  }

  // ---------------------------------------------------------------------------
  // Mapping (backward compatible)
  // ---------------------------------------------------------------------------

  HistoryItem _mapDocToHistoryItem(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data() ?? <String, dynamic>{};

    final categoryId = (data['categoryId'] ?? '').toString();

    // Backward compatible keys:
    // prompt: 'text' (old) or 'promptText' (new)
    // response: 'response' (old) or 'responseText' (new)
    final promptText = (data['text'] ?? data['promptText'] ?? '').toString();
    final responseText =
        (data['response'] ?? data['responseText'] ?? '').toString();

    DateTime? createdAt;
    final rawCreated = data['createdAt'];
    if (rawCreated is Timestamp) createdAt = rawCreated.toDate();
    if (rawCreated is DateTime) createdAt = rawCreated;

    return HistoryItem(
      id: doc.id,
      categoryId: categoryId.isNotEmpty ? categoryId : 'unknown',
      promptText: promptText,
      responseText: responseText,
      createdAt: createdAt,
    );
  }
}
