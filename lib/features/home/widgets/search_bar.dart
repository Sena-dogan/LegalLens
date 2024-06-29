import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/colors.dart';

class HomeSearchBar extends ConsumerWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search...',
        prefixIcon: const Icon(Icons.search),
        hoverColor: AppColors.secondary,
        border: _messageFieldBorder(context),
        enabledBorder: _messageFieldBorder(context),
        focusedBorder: _messageFieldBorder(context),
        filled: true,
        fillColor: AppColors.card,
      ),
    );
  }

  OutlineInputBorder _messageFieldBorder(BuildContext context) {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.secondary,
        width: 0.7,
      ),
      borderRadius: BorderRadius.circular(21),
    );
  }
}
