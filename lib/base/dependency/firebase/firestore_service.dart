import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreService {
  late final FirebaseFirestore _fireStore;
  FireStoreService() {
    _fireStore = FirebaseFirestore.instance;
  }

  Future<(QuerySnapshot<Map<String, dynamic>>?, Object?)> getCollection(
    String collection,
  ) async {
    try {
      final response = await _fireStore.collection(collection).get();
      return (response, null);
    } catch (e) {
      return (null, e);
    }
  }

  Future<(DocumentSnapshot<Map<String, dynamic>>?, Object?)> getDocument({
    required String collection,
    required String uid,
  }) async {
    try {
      final document = _fireStore.collection(collection).doc(uid);
      final response = await document.get();
      return (response, null);
    } catch (e) {
      return (null, e);
    }
  }

  Future<(DocumentReference?, Object?)> postDocument(
    String collection, {
    required Map<String, dynamic> data,
    String? uid,
  }) async {
    try {
      DocumentReference document;
      if (uid != null) {
        document = _fireStore.collection(collection).doc(uid);
        await document.set(data);
      } else {
        document = await _fireStore.collection(collection).add(data);
      }
      return (document, null);
    } catch (e) {
      return (null, e);
    }
  }

  Future<(void, Object?)> updateDocument({
    required String collection,
    required String uid,
    required Map<String, dynamic> data,
  }) async {
    try {
      final document = _fireStore.collection(collection).doc(uid);
      await document.update(data);
      return (document, null);
    } catch (e) {
      return (null, e);
    }
  }

  Future<(void, Object?)> deleteDocument(String path) async {
    try {
      final document = _fireStore.doc(path);
      await document.delete();
      return (null, null);
    } catch (e) {
      return (null, e);
    }
  }
}
