import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_base.dart';
import 'package:messenger/base/dependency/app_service.dart';

class UnknownBloc extends BlocBase {
  final Ref ref;

  late final sqliteService = ref.watch(AppService.sqlite);
  late final biometricService = ref.watch(AppService.biometric);

  UnknownBloc(this.ref) {
    handleBiometric();
  }

  void handleBiometric() async {
    final deviceSupport = await biometricService.isDeviceSupported();
    print('deviceSupport: $deviceSupport');
    final canCheckBiometrics =
        await biometricService.checkBiometricsAvailability();
    print('canCheckBiometrics: $canCheckBiometrics');
    final isBiometricsAvailable =
        await biometricService.getAvailableBiometrics();
    print('isBiometricsAvailable: $isBiometricsAvailable');
  }

  Future<void> onTapBiometric() async {
    final results = await Future.wait([
      biometricService.isDeviceSupported(),
      biometricService.checkBiometricsAvailability(),
      biometricService.isBiometricsAvailable(),
    ]);
    final isDeviceSupported = !results[0];
    final canCheckBiometric = !results[1];
    final isBiometricAvailable = !results[2];

    if (isDeviceSupported) {
      print('Device not supported Biometric');
      return;
    }

    if (canCheckBiometric || isBiometricAvailable) {
      biometricService.openSettingsBiometric();
      print('Biometric not available');
      return;
    }
    final isAuthenticated = await biometricService.authenticateWithBiometrics();
    print('isAuthenticated: $isAuthenticated');
  }
}
