import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

import '../../../constants/colors.dart';
import '../../../router/app_router.dart';
import '../../../utils/context_extensions.dart';
import '../controller/auth_controller.dart';

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
          onPressed: () async {
            await ref
                .read(authControllerProvider.notifier)
                .signInWithGoogle()
                // .then((bool value) => value
                //     ? context.go(SGRoute.home.route)
                //     : context.showErrorSnackBar(
                //         message: 'Bir hata oluştu. Lütfen tekrar deneyiniz.'));
                .catchError((Object error) {
              context.showErrorSnackBar(
                  message: 'Bir hata oluştu. Lütfen tekrar deneyiniz.');
              throw error;
            });
            context.go(SGRoute.home.route);
          },
          borderRadius: 30),
    );
  }
}
