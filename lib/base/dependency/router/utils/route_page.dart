import 'package:flutter/cupertino.dart';
import 'package:messenger/base/dependency/router/utils/route_name.dart';
import 'package:messenger/base/dependency/router/utils/route_screen.dart';

class RoutePage {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.root:
        return RouteScreen.rootPageRoute(settings);
      case RouteName.login:
        return RouteScreen.loginPageRoute(settings);
      default:
        return RouteScreen.unknownPageRoute(settings);
    }
  }
}
