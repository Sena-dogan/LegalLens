import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants/colors.dart';
import '../../utils/context_extensions.dart';
import 'widgets/app_social_login_buttons.dart';
import 'widgets/email_login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            Text(
              'We are here',
              style: context.textTheme.displaySmall?.copyWith(
                color: Colors.white,
              ),
            ),
            Text(
              'to help you!',
              style: context.textTheme.displayMedium?.copyWith(
                color: AppColors.primary,
              ),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Text(
                'Our app helps you make sense of privacy policies and terms of use with a chatbot interface.',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            Container(
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.9,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const GoogleLoginButton(),
                  Visibility(
                    visible: context.isIOS,
                    child: const AppleLoginButton(),
                  ),
                  const Gap(10),
                  const EmailLoginButton(),
                  const Gap(50)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
