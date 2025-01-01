import 'dart:developer';
import 'package:biometrics/features/home_page.dart/presentation/bloc/biometric_state.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:local_auth/local_auth.dart';

class BiometricCubit extends Cubit<BiometricState> {
  BiometricCubit() : super(BiometricInitialState());

  Future<void> biometricVerification() async {
    final LocalAuthentication auth = LocalAuthentication();
    emit(BiometricLoadingState());

    try {
      final bool canAuthenticateBiometrics = await auth.canCheckBiometrics;
      log('Can check biometrics: $canAuthenticateBiometrics');
      if (canAuthenticateBiometrics) {
        final bool didAuthenticate = await auth.authenticate(
            localizedReason: 'Please Authenticate to show your Balance',
            options: const AuthenticationOptions(biometricOnly: false));
        log(didAuthenticate.toString());

        if (didAuthenticate) {
          emit(BiometricLoadedState());
        } else {
          emit(BiometricFailureState(errorMessage: 'Error in Authentication'));
        }
      }
    } catch (e) {
      log('Authentication failed: $e');
      emit(BiometricFailureState(errorMessage: "Authentication failed: $e"));
    }
  }
}
