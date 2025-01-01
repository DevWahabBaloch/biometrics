import 'package:biometrics/core/widget/app_multiblovprovider.dart';
import 'package:biometrics/features/home_page.dart/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppMultiblovprovider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
