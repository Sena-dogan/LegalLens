import 'package:flutter/material.dart';

import '../../../../utils/context_extensions.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.message,
    required this.isCurrentUser,
  });

  final String message;
  final bool isCurrentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isCurrentUser
            ? context.colorScheme.primary
            : context.colorScheme.onTertiaryContainer,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(15),
          topRight: const Radius.circular(15),
          bottomLeft: Radius.circular(isCurrentUser ? 15 : 5),
          bottomRight: Radius.circular(isCurrentUser ? 5 : 15),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
      child: Text(
        message,
        style: context.textTheme.titleSmall?.copyWith(
          color: isCurrentUser ? Colors.white : Colors.black.withOpacity(0.7),
        ),
      ),
    );
  }
}
