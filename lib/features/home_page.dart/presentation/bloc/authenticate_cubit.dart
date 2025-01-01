import 'package:biometrics/features/home_page.dart/presentation/bloc/authenticate_state.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

class AuthenticateCubit extends Cubit<AuthenticateState> {
  AuthenticateCubit() : super(AuthenticateInitialState());

  void toggleAmountVisibility() {
    if (state is AuthenticateInitialState) {
      emit(AuthenticateLoadedState());
    } else if (state is AuthenticateLoadedState) {
      emit(AuthenticateInitialState());
    }
  }
}
