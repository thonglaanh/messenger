import 'package:cloud_firestore/cloud_firestore.dart';

typedef FromJson<T> = T Function(Map<String, dynamic> json);

class ResponseExtension {
  static T? convertDocumentToModel<T>(
      DocumentSnapshot<Map<String, dynamic>>? doc, FromJson<T> fromJson) {
    if (doc != null && doc.data() != null) {
      return fromJson({'id': doc.id}..addAll(doc.data()!));
    }
    return null;
  }

  static List<T> convertQueryToModels<T>(
      QuerySnapshot<Map<String, dynamic>>? snapshot, FromJson<T> fromJson) {
    if (snapshot == null) {
      return [];
    }
    return snapshot.docs
        .map((doc) => fromJson({'id': doc.id}..addAll(doc.data())))
        .toList();
  }
}
