import 'package:flutter/material.dart';
import 'package:payflow/styles/themes/colors.dart';
import 'package:payflow/styles/themes/fonts.dart';
import 'package:payflow/styles/themes/images.dart';
import 'package:payflow/widgets/social_login_button/social_login_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              color: AppColors.primary,
              width: size.width,
              height: size.height * 0.30,
            ),
            Positioned(
              top: 40,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImages.person,
                width: 208,
                height: 300,
              ),
            ),
            Positioned(
              top: size.height * 0.38,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logoMini),
                  Padding(
                    padding: const EdgeInsets.only(left: 70, right: 70),
                    child: Text(
                      "Organize seus boletos em um só lugar",
                      textAlign: TextAlign.center,
                      style: TextStyles.titleHome,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: size.height * 0.05,
              left: size.width * 0.2,
              right: size.width * 0.2,
              child: SocialLoginButton(
                onTap: () {
                  print('Vem ki vem ki vem kikando');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
