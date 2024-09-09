import 'package:messenger/base/dependency/firebase/firestore_service.dart';

class UsersRepository {
  final FireStoreService fireStoreService;

  UsersRepository(this.fireStoreService);

  Future<List<Map<String, dynamic>>> getUsers() async {
    final (doc, _) = await fireStoreService.getCollection('users');
    return doc!.docs.map((e) => e.data()).toList();
  }
}
