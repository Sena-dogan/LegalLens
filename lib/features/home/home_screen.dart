import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../common/app_bar_gone.dart';
import '../../constants/colors.dart';
import '../../router/app_router.dart';
import '../../utils/context_extensions.dart';
import 'controller/home_controller.dart';
import 'home_ui_model.dart';
import 'models/app_model.dart';
import 'widgets/home_app_card.dart';
import 'widgets/search_bar.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //final HomeController homeLogic = ref.watch(homeControllerProvider.notifier);
    final HomeUiModel state = ref.watch(homeControllerProvider);
    final AsyncValue<AppResponse> appData = ref.watch(fetchAppsProvider);
    debugPrint('HomeScreen: $state');
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const EmptyAppBar(),
      body: appData.when(
          data: (AppResponse data) {
            return _buildBody(context, state);
          },
          error: (Object error, StackTrace stackTrace) {
            return Center(
              child: Text(
                'Error: $error',
                style: context.textTheme.labelLarge,
              ),
            );
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }

  Padding _buildBody(BuildContext context, HomeUiModel state) {
    return Padding(
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
          //TODO: Refactor this to not use the shrinkWrap property
          ListView.builder(
              shrinkWrap: true,
              itemCount: state.apps.length,
              itemBuilder: (BuildContext context, int index) {
                final AppModel app = state.apps[index];
                return HomeAppCard(
                  color: index.isEven ? AppColors.primary : AppColors.secondary,
                  title: app.name ?? '',
                  onTap: () {
                    context.go(SGRoute.chatbot.route);
                  },
                );
              }),
          // SingleChildScrollView(
          //   child: Column(
          //     children: <Widget>[
          //       HomeAppCard(
          //         color: AppColors.primary,
          //         title: 'getcontact',
          //         onTap: () {
          //           context.push(SGRoute.chatbot.route);
          //         },
          //       ),
          //       HomeAppCard(
          //         color: AppColors.secondary,
          //         title: 'eSIMio',
          //         onTap: () {
          //           context.push(SGRoute.chatbot.route);
          //         },
          //       ),
          //       HomeAppCard(
          //         color: AppColors.primary,
          //         title: 'WhatsApp',
          //         onTap: () {
          //           context.push(SGRoute.chatbot.route);
          //         },
          //       ),
          //       HomeAppCard(
          //         color: AppColors.secondary,
          //         title: 'Instagram',
          //         onTap: () {
          //           context.push(SGRoute.chatbot.route);
          //         },
          //       ),
          //       HomeAppCard(
          //         color: AppColors.primary,
          //         title: 'Facebook',
          //         onTap: () {
          //           context.push(SGRoute.chatbot.route);
          //         },
          //       ),
          //       HomeAppCard(
          //         color: AppColors.secondary,
          //         title: 'Twitter',
          //         onTap: () {
          //           context.push(SGRoute.chatbot.route);
          //         },
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
