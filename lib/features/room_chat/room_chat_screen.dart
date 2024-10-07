import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/features/room_chat/widgets/header_room_chat.dart';

class RoomChatScreen extends ConsumerWidget {
  const RoomChatScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [HeaderRoomChat()],
        ),
      ),
    );
  }
}
