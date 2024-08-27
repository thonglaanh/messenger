import 'package:flutter/material.dart';
import 'package:messenger/base/dependency/router/router_provider_interface.dart';
import 'package:messenger/base/dependency/router/utils/route_input.dart';

class RouterProvider extends RouterProviderInterface {
  @override
  late final GlobalKey<NavigatorState> navigatorKey;

  NavigatorState? get _navigatorState => navigatorKey.currentState;

  RouterProvider({GlobalKey<NavigatorState>? key}) {
    navigatorKey = key ?? GlobalKey<NavigatorState>();
  }

  @override
  BuildContext get rootContext => _navigatorState!.context;

  @override
  void pop<T extends Object>({T? result, BuildContext? context}) {
    Navigator.of(context ?? rootContext).pop(result);
  }

  @override
  void popUntil(RoutePredicate predicate, {BuildContext? context}) {
    Navigator.of(context ?? rootContext).popUntil(predicate);
  }

  @override
  Future<T?> push<T extends Object>(
    RouteInput routeInput, {
    BuildContext? context,
  }) async {
    final result = await Navigator.of(context ?? rootContext).pushNamed(
      routeInput.routeName,
      arguments: routeInput.argument,
    );
    return result as T?;
  }

  @override
  Future<T?> pushReplacement<T extends Object?>(
    RouteInput routeInput, {
    BuildContext? context,
  }) async {
    final result =
        await Navigator.of(context ?? rootContext).pushReplacementNamed(
      routeInput.routeName,
      arguments: routeInput.argument,
    );
    return result as T?;
  }

  @override
  Future<T?> pushAndRemoveUntil<T extends Object?>(
    RouteInput routeInput,
    RoutePredicate predicate, {
    BuildContext? context,
  }) async {
    final result =
        await Navigator.of(context ?? rootContext).pushNamedAndRemoveUntil(
      routeInput.routeName,
      predicate,
      arguments: routeInput.argument,
    );
    return result as T?;
  }
}
