import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_base.dart';
import 'package:messenger/base/dependency/app_service.dart';

class UnknownBloc extends BlocBase {
  final Ref ref;

  late final sqliteService = ref.watch(AppService.sqlite);

  UnknownBloc(this.ref);

}
