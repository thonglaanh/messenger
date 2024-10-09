import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:messenger/base/dependency/firebase/firestore_service.dart';
import 'package:messenger/base/dependency/network/chats/create/create_chat_request_model.dart';
import 'package:messenger/base/dependency/network/chats/model/chat_model.dart';
import 'package:messenger/base/dependency/network/extensions/response_extension.dart';

class ChatsRepository {
  final FireStoreService fireStoreService;

  ChatsRepository(this.fireStoreService);

  Future<(List<ChatModel>?, Object?)> getChats() async {
    final (response, err) = await fireStoreService.getCollection('chats');
    return (
      ResponseExtension.convertQueryToModels(response, ChatModel.fromJson),
      err
    );
  }

  Future<(ChatModel?, Object?)> getChat({required
   String uid}) async {
    final (response, err) = await fireStoreService.getDocument(collection: 'chats', uid: uid);
    return (
    ResponseExtension.convertDocumentToModel(response, ChatModel.fromJson),
    err
    );
  }

  Future<(DocumentReference?, Object?)> createChat({
    required CreateChatRequestModel request,
  }) async {
    final (response, err) = await fireStoreService.postDocument('chats',
        data: request.toJson());
    return (response, err);
  }
}
