import 'package:flutter/material.dart';
import 'package:payflow/styles/themes/colors.dart';
import 'package:payflow/styles/themes/images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(children: [
        Center(child: Image.asset(AppImages.union)),
        Center(child: Image.asset(AppImages.logoFull)),
      ]),
    );
  }
}
