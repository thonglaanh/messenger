import 'package:messenger/base/dependency/router/utils/route_name.dart';

class RouteInput {
  String routeName;
  Object? argument;

  RouteInput({required this.routeName, this.argument});
  RouteInput.root() : routeName = RouteName.root;
  RouteInput.login() : routeName = RouteName.login;
  RouteInput.friends() : routeName = RouteName.friends;
}
