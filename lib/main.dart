import 'package:biometrics/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}
