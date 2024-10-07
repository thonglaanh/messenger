import 'package:messenger/base/dependency/firebase/firestore_service.dart';

class ChatsRepository {
  final FireStoreService fireStoreService;

  ChatsRepository(this.fireStoreService);

  // Future<(List<ChatModel>?, Object?)> getChats() async {
  //   final (response, err) = await fireStoreService.getCollection('chats');
  //   return (
  //     ResponseExtension.convertQueryToModels(response, ChatModel.fromJson),
  //     err
  //   );
  // }
}
