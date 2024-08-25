import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/features/login/login_bloc.dart';
import 'package:messenger/shared/bloc/app_bloc.dart';

class BlocProvider {
  static final app = Provider((ref) => AppBloc());
  static late AutoDisposeProvider<LoginBloc> login;
}
