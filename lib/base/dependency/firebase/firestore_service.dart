import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreService {
  late final FirebaseFirestore _fireStore;
  FireStoreService() {
    _fireStore = FirebaseFirestore.instance;
  }

  Future<(QuerySnapshot<Map<String, dynamic>>?, Object?)> getCollection(
    String path,
  ) async {
    try {
      final collection = _fireStore.collection(path);
      final response = await collection.get();
      return (response, null);
    } catch (e) {
      return (null, e);
    }
  }

  Future<(DocumentSnapshot<Map<String, dynamic>>?, Object?)> getDocument(
    String path,
  ) async {
    try {
      final document = _fireStore.doc(path);
      final response = await document.get();
      return (response, null);
    } catch (e) {
      return (null, e);
    }
  }

  Future<(DocumentReference?, Object?)> postDocument(
    String path, {
    required Map<String, dynamic> data,
  }) async {
    try {
      final collection = _fireStore.collection(path);
      final response = await collection.add(data);
      return (response, null);
    } catch (e) {
      return (null, e);
    }
  }

  Future<(void, Object?)> updateDocument(
    String path, {
    required Map<String, dynamic> data,
  }) async {
    try {
      final document = _fireStore.doc(path);
      await document.update(data);
      return (null, null);
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
