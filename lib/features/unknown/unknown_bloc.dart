import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_base.dart';

class UnknownBloc extends BlocBase {
  final Ref ref;

  UnknownBloc(this.ref) {
    handleGetBatteryLevel();
  }

  Future<void> handleGetBatteryLevel() async {
    const platform = MethodChannel('battery_level');
    try {
      final battery = await platform.invokeMethod('getBatteryLevel');
      print(battery);
    } on PlatformException catch (e) {
      print(e);
    }
  }
}
