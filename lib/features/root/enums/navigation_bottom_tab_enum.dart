import 'package:messenger/base/dependency/router/utils/route_name.dart';

enum NavigatorBottomTabEnum {
  home(route: RouteName.home),
  friends(route: RouteName.friends);

  const NavigatorBottomTabEnum({required this.route});
  final String route;
}
