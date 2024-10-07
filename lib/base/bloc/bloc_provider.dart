import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/features/friends/friends_bloc.dart';
import 'package:messenger/features/home/home_bloc.dart';
import 'package:messenger/features/login/login_bloc.dart';
import 'package:messenger/features/room_chat/room_chat_bloc.dart';
import 'package:messenger/shared/bloc/app_bloc.dart';

class BlocProvider {
  static final app = Provider((ref) => AppBloc(ref));
  static late AutoDisposeProvider<LoginBloc> login;
  static late AutoDisposeProvider<HomeBloc> home;
  static late AutoDisposeProvider<FriendsBloc> friends;
  static late AutoDisposeProvider<RoomChatBloc> roomChat;
}
