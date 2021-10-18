import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payflow/models/Login/login.dart';
import 'package:payflow/models/SplashScreen/splash_screen.dart';
import 'package:payflow/styles/themes/colors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.primary,
      statusBarBrightness: Brightness.dark,
    ));
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
