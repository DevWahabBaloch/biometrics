abstract class BiometricState {}

class BiometricInitialState extends BiometricState {}

class BiometricLoadingState extends BiometricState {}

class BiometricLoadedState extends BiometricState {}

class BiometricFailureState extends BiometricState {
  final String errorMessage;
  BiometricFailureState({required this.errorMessage});
}
