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
      case RouteName.roomChat:
        return RouteScreen.roomChatPageRoute(settings);
      default:
        return RouteScreen.unknownPageRoute(settings);
    }
  }

  static Route<dynamic>? onGenerateHomeRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home:
        return RouteScreen.homePageRoute(settings);
    }
    return RouteScreen.unknownPageRoute(settings);
  }

  static Route<dynamic>? onGenerateFriendsRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.friends:
        return RouteScreen.friendsPageRoute(settings);
    }
    return RouteScreen.unknownPageRoute(settings);
  }
}
