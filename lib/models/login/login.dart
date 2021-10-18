import 'package:flutter/material.dart';
import 'package:payflow/models/Home/home.dart';
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
    // final appBar = AppBar(title: Text('Exemplo'));
    final size = MediaQuery.of(context).size;
    bool isIOS = Theme.of(context).platform == TargetPlatform.iOS;
    // final screenHeight = (size.height - appBar.preferredSize.height) - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              color: AppColors.primary,
              width: size.width,
              height: size.height * .4,
            ),
            Positioned(
              top: isIOS ? size.height * .0 : size.height * .1,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImages.person,
                width: 208,
                height: isIOS ? size.height * 0.6 : size.height * 0.4,
              ),
            ),
            Positioned(
              top: isIOS ? size.height * 0.5 : size.height * 0.55,
              left: size.width * .2,
              right: size.width * .2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.logoMini,
                    height: isIOS ? size.height * 0.10 : size.height * .05,
                  ),
                  Text(
                    "Organize seus boletos em um só lugar",
                    textAlign: TextAlign.center,
                    style: TextStyles.titleHome,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
