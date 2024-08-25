import 'package:flutter/material.dart';
import 'package:messenger/base/bloc/bloc_base.dart';
import 'package:messenger/base/bloc/bloc_provider.dart';
import 'package:messenger/features/login/login_bloc.dart';
import 'package:messenger/features/login/login_screen.dart';
import 'package:messenger/features/root/root_screen.dart';
import 'package:messenger/features/unknown/unknown_screen.dart';

class RouteScreen {
  static PageRoute rootPageRoute(RouteSettings settings) => MaterialPageRoute(
        settings: settings,
        builder: (_) => RootScreen(),
      );
  static PageRoute loginPageRoute(RouteSettings settings) {
    BlocProvider.login = createAutoDisposeBloc((ref) => LoginBloc(ref));
    return MaterialPageRoute(
      settings: settings,
      builder: (_) => LoginScreen(),
    );
  }

  static PageRoute unknownPageRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (_) => const UnknownScreen(),
    );
  }
}
