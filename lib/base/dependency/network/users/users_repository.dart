import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:messenger/base/dependency/firebase/firestore_service.dart';
import 'package:messenger/base/dependency/network/extensions/response_extension.dart';
import 'package:messenger/base/dependency/network/users/create/create_user_request_model.dart';
import 'package:messenger/base/dependency/network/users/model/user_model.dart';

class UsersRepository {
  final FireStoreService fireStoreService;

  UsersRepository(this.fireStoreService);

  Future<(List<UserModel>?, Object?)> getUsers() async {
    final (response, err) = await fireStoreService.getCollection('users');
    return (
      ResponseExtension.convertQueryToModels(response, UserModel.fromJson),
      err
    );
  }

  Future<(DocumentReference?, Object?)> createUser({
    required CreateUserRequestModel request,
    required String uid,
  }) async {
    final (response, err) = await fireStoreService.postDocument('users',
        data: request.toJson(), uid: uid);
    return (response, err);
  }

  Future<(UserModel?, Object?)> getUser({
    required String uid,
  }) async {
    final (response, err) =
        await fireStoreService.getDocument(uid: uid, collection: 'users');
    return (
      ResponseExtension.convertDocumentToModel(response, UserModel.fromJson),
      err
    );
  }
}
