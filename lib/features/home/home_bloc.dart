import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:messenger/base/bloc/bloc_base.dart';
import 'package:messenger/base/bloc/bloc_provider.dart';
import 'package:messenger/base/dependency/app_service.dart';
import 'package:messenger/base/dependency/network/users/model/user_model.dart';
import 'package:messenger/base/dependency/router/utils/route_input.dart';
import 'package:messenger/base/dependency/router/utils/route_name.dart';
import 'package:messenger/features/root/enums/navigation_bottom_tab_enum.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc extends BlocBase {
  final Ref ref;
  late final routerService = ref.watch(AppService.router);
  late final appBloc = ref.watch(BlocProvider.app);
  late final networkService = ref.watch(AppService.network);
  late final localStorageService = ref.watch(AppService.localStorage);
  //
  final searchController = TextEditingController();
  final listUsersSubject = BehaviorSubject<List<UserModel>>.seeded([]);

  HomeBloc(this.ref) {
    _init();
  }
  Future<void> _init() async {
    final (users, err) = await networkService.usersRepository.getUsers();
    if (err != null || users == null) return;
    listUsersSubject.value = users..sort((a, b) => b.status ?? false ? 1 : -1);
  }

  Future<void> onHandleLogout() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
    await FacebookAuth.instance.logOut();
    localStorageService.clear();
    appBloc.userSubject.value = null;
    routerService.pushAndRemoveUntil(
      RouteInput.login(),
      (route) => route.settings.name == RouteName.login,
    );
    appBloc.selectedBottomTabSubject.value = NavigatorBottomTabEnum.home;
  }

  Future<void> onTapRoomChat(String id) async {
    routerService.push(RouteInput.roomChat((id: id)));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    listUsersSubject.close();
    searchController.dispose();
  }
}
