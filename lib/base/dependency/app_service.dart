import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/dependency/biometric/biometric_service.dart';
import 'package:messenger/base/dependency/local_storage/local_storage_service.dart';
import 'package:messenger/base/dependency/network/network_service.dart';
import 'package:messenger/base/dependency/router/router_provider.dart';
import 'package:messenger/base/dependency/router/router_service.dart';
import 'package:messenger/base/dependency/sqflite/sqflite_service.dart';

class AppProvider {
  static final router = Provider((ref) => RouterProvider());

  AppProvider._();
}

class AppService {
  static final router = Provider((ref) {
    return RouterService(routerInterface: ref.watch(AppProvider.router));
  });

  static final network = Provider((ref) => NetworkService(ref));
  static late Provider<LocalStorageService> localStorage;

  static late Provider<SqfLiteService> sqlite;

  static final biometric = Provider((ref) => BiometricService());

  AppService._();
}
