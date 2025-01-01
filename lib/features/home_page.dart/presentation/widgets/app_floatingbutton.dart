import 'package:biometrics/features/home_page.dart/presentation/bloc/authenticate_cubit.dart';
import 'package:biometrics/features/home_page.dart/presentation/bloc/authenticate_state.dart';
import 'package:biometrics/features/home_page.dart/presentation/bloc/biometric_cubit.dart';
import 'package:biometrics/features/home_page.dart/presentation/bloc/biometric_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppFloatingButton extends StatelessWidget {
  const AppFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        final biometricCubit = context.read<BiometricCubit>();
        final authenticateCubit = context.read<AuthenticateCubit>();

        await biometricCubit.biometricVerification();

        if (biometricCubit.state is BiometricLoadedState) {
          authenticateCubit.toggleAmountVisibility();
        } else {
          // ignore: use_build_context_synchronously
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Biometric Authentication is failed')));
        }
      },
      child: BlocBuilder<AuthenticateCubit, AuthenticateState>(
        builder: (context, state) {
          return Icon(state.isHide ? Icons.lock_open : Icons.lock);
        },
      ),
    );
  }
}
