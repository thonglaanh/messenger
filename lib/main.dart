import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/dependency/app_service.dart';
import 'package:messenger/base/dependency/router/utils/route_name.dart';
import 'package:messenger/base/dependency/router/utils/route_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(context, ref) {
    final routerService = ref.watch(AppService.router);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutePage.onGenerateRoute,
      initialRoute: RouteName.login,
      navigatorKey: routerService.navigatorKey,
    );
  }
}
