import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:messenger/base/bloc/bloc_base.dart';
import 'package:messenger/base/bloc/bloc_provider.dart';
import 'package:messenger/base/dependency/app_service.dart';
import 'package:messenger/base/dependency/router/utils/route_input.dart';
import 'package:messenger/base/dependency/router/utils/route_name.dart';
import 'package:messenger/features/root/enums/navigation_bottom_tab_enum.dart';

class HomeBloc extends BlocBase {
  final Ref ref;
  HomeBloc(this.ref);
  late final routerService = ref.watch(AppService.router);
  late final appBloc = ref.watch(BlocProvider.app);
  late final networkService = ref.watch(AppService.network);

  Future<void> onHandleLogout() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
    await FacebookAuth.instance.logOut();
    routerService.pushAndRemoveUntil(
      RouteInput.login(),
      (route) => route.settings.name == RouteName.login,
    );
    appBloc.selectedBottomTabSubject.value = NavigatorBottomTabEnum.home;
  }
}
