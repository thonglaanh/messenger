import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_base.dart';
import 'package:messenger/base/dependency/app_service.dart';
import 'package:messenger/base/dependency/router/utils/route_input.dart';

class LoginBloc extends BlocBase {
  final Ref ref;
  LoginBloc(this.ref);

  late final routerService = ref.watch(AppService.router);

  void onHandleLogin() {
    routerService.pushReplacement(RouteInput.root());
  }
}
