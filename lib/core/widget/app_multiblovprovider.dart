import 'package:biometrics/features/home_page.dart/presentation/bloc/authenticate_cubit.dart';
import 'package:biometrics/features/home_page.dart/presentation/bloc/biometric_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppMultiblovprovider extends StatelessWidget {
  final Widget child;
  const AppMultiblovprovider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<BiometricCubit>(
        create: (_) => BiometricCubit(),
      ),
      BlocProvider<AuthenticateCubit>(
        create: (_) => AuthenticateCubit(),
      ),
    ], child: child);
  }
}
