import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_provider.dart';
import 'package:messenger/base/rx/obs_builder.dart';
import 'package:messenger/features/room_chat/widgets/footer_room_chat.dart';
import 'package:messenger/features/room_chat/widgets/header_room_chat.dart';
import 'package:messenger/shared/widgets/loading/app_loading.dart';

class RoomChatScreen extends ConsumerWidget {
  const RoomChatScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bloc = ref.watch(BlocProvider.roomChat);
    return Scaffold(
      body: SafeArea(
        child:ObsBuilder(
          streams: [
            bloc.isLoadingSubject,
            bloc.chatModelSubject,
          ],
          builder: (context) {
            final isLoading = bloc.isLoadingSubject.value;
            final chat = bloc.chatModelSubject.value;

            return AppLoading(isLoading: isLoading, child: Column(
              children: [
                HeaderRoomChat(
                  avatar:chat?.image ?? '' ,
                  name: chat?.name ?? '',
                ),
                Spacer(),
                FooterRoomChat(),
              ],
            ),);
          },
        ),
      ),
    );
  }
}
