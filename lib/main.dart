import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/dependency/app_service.dart';
import 'package:messenger/base/dependency/router/utils/route_name.dart';
import 'package:messenger/base/dependency/router/utils/route_page.dart';
import 'package:messenger/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    print("Firebase đã được khởi tạo thành công!");
  } catch (e) {
    print("Khởi tạo Firebase thất bại: $e");
  }
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
