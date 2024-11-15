import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class BiometricService {
  final LocalAuthentication _localAuthentication = LocalAuthentication();

  BiometricService();

  // device support biometrics
  Future<bool> isDeviceSupported() async {
    try {
      final isDeviceSupported = await _localAuthentication.isDeviceSupported();
      return isDeviceSupported;
    } catch (e) {
      return false;
    }
  }

  // device have biometrics but not register
  Future<bool> checkBiometricsAvailability() async {
    try {
      final canCheckBiometrics = await _localAuthentication.canCheckBiometrics;
      return canCheckBiometrics;
    } catch (e) {
      return false;
    }
  }

  Future<bool> isBiometricsAvailable() async {
    final availableBiometrics = await getAvailableBiometrics();
    return availableBiometrics.isNotEmpty;
  }

  Future<List<BiometricType>> getAvailableBiometrics() async {
    try {
      final availableBiometrics =
          await _localAuthentication.getAvailableBiometrics();
      return availableBiometrics;
    } catch (e) {
      return [];
    }
  }

  Future<bool> authenticateWithBiometrics() async {
    try {
      final isAuthenticated = await _localAuthentication.authenticate(
        localizedReason: 'Please authenticate to proceed',
        options: const AuthenticationOptions(
          // sensitiveTransaction: true,
          biometricOnly: true,
        ),
      );
      return isAuthenticated;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<void> openSettingsBiometric() async {
    MethodChannel channel = const MethodChannel('open_settings');
    await channel.invokeMethod('openSettingsBiometrics');
  }
}
