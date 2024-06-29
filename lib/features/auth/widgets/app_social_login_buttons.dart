import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

import '../../../constants/colors.dart';
import '../../../router/app_router.dart';

class AppleLoginButton extends ConsumerWidget {
  const AppleLoginButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SocialLoginButton(
          backgroundColor: Colors.white,
          textColor: AppColors.tertieryText,
          buttonType: SocialLoginButtonType.apple,
          text: 'Apple ile devam et',
          onPressed: () {},
          borderRadius: 30),
    );
  }
}

class GoogleLoginButton extends ConsumerWidget {
  const GoogleLoginButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SocialLoginButton(
          buttonType: SocialLoginButtonType.google,
          backgroundColor: Colors.white,
          text: 'Google ile devam et',
          textColor: AppColors.tertieryText,
          onPressed: () {
            context.go(SGRoute.home.route);
          },
          borderRadius: 30),
    );
  }
}
