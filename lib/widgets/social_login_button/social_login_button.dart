import 'package:flutter/material.dart';
import 'package:payflow/styles/themes/colors.dart';
import 'package:payflow/styles/themes/images.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;

  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.shape,
          border: Border.fromBorderSide(
            BorderSide(color: AppColors.stroke),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                border: Border.fromBorderSide(
                  BorderSide(color: AppColors.stroke),
                ),
              ),
              child: Image.asset(AppImages.google),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text('Sign in with Google'),
            ),
          ],
        ),
      ),
    );
  }
}
