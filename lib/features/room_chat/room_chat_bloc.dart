import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_base.dart';

class RoomChatBloc extends BlocBase {
  final Ref ref;

  String? uid;

  RoomChatBloc(this.ref, {this.uid}) {
    print(uid);
  }
}
