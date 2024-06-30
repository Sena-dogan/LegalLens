import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/colors.dart';
import '../../utils/context_extensions.dart';
import '../home/controller/home_controller.dart';
import '../home/home_ui_model.dart';
import '../home/models/question_model.dart';
import 'widgets/message_bubble.dart';
import 'widgets/user_input.dart';

class ChatBotScreen extends ConsumerWidget {
  const ChatBotScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeUiModel state = ref.watch(homeControllerProvider);
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Legal Lens',
            style: context.textTheme.labelSmall?.copyWith(
              color: Colors.white,
            ),
          ),
        ),
        body: 
        Column(
          children: <Widget>[
            Divider(
              color: Colors.grey.withOpacity(0.1),
            ),
            Expanded(
            child: ListView.builder(
              itemCount: state.questions.length,
              itemBuilder: (BuildContext context, int index) {
                final String question = state.questions[index];
                final QuestionResponse answer = state.answers[index]; // Assuming QuestionResponse has a 'response' field
                return Column(
                  children: <Widget>[
                    _buildMessageItem(question, true), // Display question
                    _buildMessageItem(answer.answer?.original?.message ?? '', false), // Display answer
                  ],
                );
              },
            ),
          ),
            Align(
              alignment: Alignment.bottomCenter,
              child: UserInput(onSendMessage: (String question) async {
                await ref.read(homeControllerProvider.notifier).askQuestion(question);
              }),
            )
          ],
        ));
  }
}

Widget _buildMessageItem(String message, bool isCurrentUser) {
    final Alignment alignment =
        isCurrentUser ? Alignment.centerRight : Alignment.centerLeft;
    return Container(
      alignment: alignment,
      child: Column(
        crossAxisAlignment:
            isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          ChatBubble(
            message: message,
            isCurrentUser: isCurrentUser,
          ),
        ],
      ),
    );
  }