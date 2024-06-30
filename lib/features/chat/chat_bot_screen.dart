import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/colors.dart';
import '../../utils/context_extensions.dart';

class ChatBotScreen extends ConsumerWidget {
  const ChatBotScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'PolicyAnalyzer',
          style: context.textTheme.labelSmall?.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'Chat Bot Screen',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
