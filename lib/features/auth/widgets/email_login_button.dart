import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/colors.dart';
import '../../../utils/context_extensions.dart';

class EmailLoginButton extends ConsumerWidget {
  const EmailLoginButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.9,
      height: 55,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 30),
        ),
        child: Text(
          'E-posta ile giris yap',
          style: context.textTheme.bodyLarge!.copyWith(
            color: AppColors.tertieryText,
          ),
        ),
      ),
    );
  }
}
