import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/dependency/app_service.dart';
import 'package:messenger/base/dependency/local_storage/local_storage_service.dart';
import 'package:messenger/base/dependency/router/utils/route_name.dart';
import 'package:messenger/base/dependency/router/utils/route_page.dart';
import 'package:messenger/base/dependency/sqflite/sqflite_service.dart';
import 'package:messenger/firebase_options.dart';
import 'package:messenger/shared/utilities/fcm.dart';

Future<void> initDependencies() async {
  final localStorage = LocalStorageService();
  await localStorage.initialize();
  final sqlite = SqfLiteService();
  await sqlite.initialize();

  AppService.localStorage = Provider((ref) => localStorage);
  AppService.sqlite = Provider((ref) => sqlite);
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseMessagingUtils.initNotification();
  await initDependencies();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(context, ref) {
    final routerService = ref.watch(AppService.router);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutePage.onGenerateRoute,
      initialRoute: RouteName.unknown,
      navigatorKey: routerService.navigatorKey,
    );
  }
}
