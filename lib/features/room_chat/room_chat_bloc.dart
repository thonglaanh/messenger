import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_base.dart';
import 'package:messenger/base/bloc/bloc_provider.dart';
import 'package:messenger/base/dependency/app_service.dart';
import 'package:messenger/base/dependency/network/chats/create/create_chat_request_model.dart';
import 'package:messenger/base/dependency/network/chats/model/chat_model.dart';
import 'package:rxdart/rxdart.dart';

class RoomChatBloc extends BlocBase {
  final Ref ref;

  String uid;

  late final routeService = ref.watch(AppService.router);
  late final networkService = ref.watch(AppService.network);
  final chatModelSubject = BehaviorSubject<ChatModel?>.seeded(null);
  final isLoadingSubject = BehaviorSubject<bool>.seeded(false);
  late final appBloc = ref.watch(BlocProvider.app);
  final sendMessageEditingController = TextEditingController();
  final sendMessageFocusNode = FocusNode();

  RoomChatBloc(this.ref, {required this.uid}) {
    init();
  }

  @override
  void dispose() {
    super.dispose();
    chatModelSubject.close();
  }

  Future<void> init() async {
    final (chat, err) = await networkService.chatsRepository.getChat(uid: uid);
    if (err != null || chat == null) return;
    chatModelSubject.value = chat;
  }

  Future<void> createChat() async {
    final (user, err) = await networkService.usersRepository.getUser(uid: uid);
    if (err != null || user == null) return;
    final unknown = await networkService.chatsRepository.createChat(
        request: CreateChatRequestModel(
      name: user.displayName,
      image: user.avatar,
      messenger: [],
      createdAt: DateTime.now(),
      participants: [user.toJson(), appBloc.userSubject.value?.toJson()],
    ));
  }
}
