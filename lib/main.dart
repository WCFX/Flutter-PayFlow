import 'package:flutter/material.dart';
import 'package:payflow/models/Login/login.dart';
import 'package:payflow/models/SplashScreen/splash_screen.dart';
import 'package:payflow/styles/themes/colors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: Login(),
    );
  }
}
