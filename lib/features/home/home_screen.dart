import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../common/app_bar_gone.dart';
import '../../constants/colors.dart';
import '../../router/app_router.dart';
import '../../utils/context_extensions.dart';
import 'widgets/home_app_card.dart';
import 'widgets/search_bar.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const EmptyAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  textAlign: TextAlign.start,
                  'Discover Your',
                  style: context.textTheme.labelLarge?.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  textAlign: TextAlign.start,
                  'Digital Rights!',
                  style: context.textTheme.labelLarge?.copyWith(
                    color: AppColors.quaternary,
                  ),
                ),
              ],
            ),
            const HomeSearchBar(),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  HomeAppCard(
                    color: AppColors.primary,
                    title: 'getcontact',
                    onTap: () {
                      context.push(SGRoute.chatbot.route);
                    },
                  ),
                  HomeAppCard(
                    color: AppColors.secondary,
                    title: 'eSIMio',
                    onTap: () {
                      context.push(SGRoute.chatbot.route);
                    },
                  ),
                  HomeAppCard(
                    color: AppColors.primary,
                    title: 'WhatsApp',
                    onTap: () {
                      context.push(SGRoute.chatbot.route);
                    },
                  ),
                  HomeAppCard(
                    color: AppColors.secondary,
                    title: 'Instagram',
                    onTap: () {
                      context.push(SGRoute.chatbot.route);
                    },
                  ),
                  HomeAppCard(
                    color: AppColors.primary,
                    title: 'Facebook',
                    onTap: () {
                      context.push(SGRoute.chatbot.route);
                    },
                  ),
                  HomeAppCard(
                    color: AppColors.secondary,
                    title: 'Twitter',
                    onTap: () {
                      context.push(SGRoute.chatbot.route);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
