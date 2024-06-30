import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/colors.dart';
import '../../../utils/context_extensions.dart';

class UserInput extends ConsumerStatefulWidget {
  const UserInput({
    super.key,
    required this.onSendMessage,
  });

  final Future<void> Function(String) onSendMessage;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserInputState();
}

class _UserInputState extends ConsumerState<UserInput> {
  late final TextEditingController _messageController;

  @override
  void initState() {
    super.initState();
    _messageController = TextEditingController();
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.only(
        bottom: size.height * 0.05,
        left: size.width * 0.05,
        right: size.width * 0.05,
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            height: 55,
            width: size.width * 0.75,
            child: TextField(
              cursorColor: AppColors.primary,
              controller: _messageController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                hoverColor: AppColors.quaternary,
                border: _messageFieldBorder(context),
                enabledBorder: _messageFieldBorder(context),
                focusedBorder: _messageFieldBorder(context),
                hintText: 'What do you want to learn?',
                hintStyle: context.textTheme.bodyMedium?.copyWith(
                  color: Colors.grey.withOpacity(0.7),
                ),
              ),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: ShapeDecoration(
              color: AppColors.tertiary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            margin: EdgeInsets.only(left: size.width * 0.05),
            child: IconButton(
              icon: const Icon(
                Icons.send,
                size: 20,
                color: Colors.white,
              ),
              onPressed: () {
                final String message = _messageController.text;
                _messageController.clear();
                widget.onSendMessage(message);
              },
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder _messageFieldBorder(BuildContext context) {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.quaternary,
        width: 0.7,
      ),
      borderRadius: BorderRadius.circular(20),
    );
  }
}
