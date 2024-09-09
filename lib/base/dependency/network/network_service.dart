import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/dependency/firebase/firestore_service.dart';
import 'package:messenger/base/dependency/network/users/users_repository.dart';

final _fireStoreService = Provider((ref) => FireStoreService());

class NetworkService {
  final Ref ref;
  NetworkService(this.ref);
  late final fireStoreService = ref.watch(_fireStoreService);

  late final usersRepository = UsersRepository(fireStoreService);
}
