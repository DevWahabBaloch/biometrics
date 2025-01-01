import 'package:biometrics/features/home_page.dart/presentation/bloc/authenticate_cubit.dart';
import 'package:biometrics/features/home_page.dart/presentation/bloc/authenticate_state.dart';
import 'package:biometrics/features/home_page.dart/presentation/widgets/app_floatingbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<AuthenticateCubit, AuthenticateState>(
          builder: (context, state) {
            final isHide = state is AuthenticateInitialState;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Account Balance',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
                ),
                Text(
                  isHide ? '*******' : '\$ 25,987',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            );
          },
        ),
      ),
      floatingActionButton: const AppFloatingButton(),
    );
  }
}
