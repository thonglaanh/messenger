import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_base.dart';
import 'package:messenger/base/dependency/app_service.dart';
import 'package:messenger/base/dependency/local_storage/local_storage_key.dart';
import 'package:messenger/base/dependency/network/users/model/user_model.dart';
import 'package:messenger/features/root/enums/navigation_bottom_tab_enum.dart';
import 'package:rxdart/rxdart.dart';

class AppBloc extends BlocBase {
  final Ref ref;
  late final networkService = ref.watch(AppService.network);
  late final localStorageService = ref.watch(AppService.localStorage);
  final selectedBottomTabSubject =
      BehaviorSubject<NavigatorBottomTabEnum>.seeded(
    NavigatorBottomTabEnum.home,
  );
  final userSubject = BehaviorSubject<UserModel?>.seeded(null);
  AppBloc(this.ref) {
    init();
  }

  Future<void> init() async {
    final uid = localStorageService.getString(LocalStorageKey.uid);
    if (uid == null) return;
    final (user, _) = await networkService.usersRepository.getUser(uid: uid);
    userSubject.value = user;
  }

  @override
  void dispose() {
    super.dispose();
    selectedBottomTabSubject.close();
  }

  void onBottomTabChange(NavigatorBottomTabEnum currentTab) {
    selectedBottomTabSubject.value = currentTab;
  }
}
