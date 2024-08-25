import 'package:flutter/material.dart';
import 'package:messenger/base/dependency/router/router_provider_interface.dart';
import 'package:messenger/base/dependency/router/utils/route_input.dart';

class RouterService {
  final RouterProviderInterface routerInterface;

  RouterService({required this.routerInterface});

  GlobalKey<NavigatorState> get navigatorKey => routerInterface.navigatorKey;

  BuildContext get rootContext => routerInterface.rootContext;

  void pop<T extends Object>({T? result, BuildContext? context}) {
    routerInterface.pop(result: result, context: context);
  }

  void popUntil(RoutePredicate predicate, {BuildContext? context}) {
    routerInterface.popUntil(predicate, context: context);
  }

  Future<T?> push<T extends Object>(
    RouteInput routeInput, {
    BuildContext? context,
  }) async {
    return routerInterface.push(routeInput, context: context);
  }

  Future<T?> pushReplacement<T extends Object?>(
    RouteInput routeInput, {
    BuildContext? context,
  }) async {
    return routerInterface.pushReplacement(routeInput, context: context);
  }

  Future<T?> pushAndRemoveUntil<T extends Object?>(
    RouteInput routeInput,
    RoutePredicate predicate, {
    BuildContext? context,
  }) async {
    return routerInterface.pushAndRemoveUntil(
      routeInput,
      predicate,
      context: context,
    );
  }
}
