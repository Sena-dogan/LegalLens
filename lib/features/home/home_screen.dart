import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/app_bar_gone.dart';
import '../../constants/colors.dart';
import '../../utils/context_extensions.dart';
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
            const SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  HomeAppCard(
                    color: AppColors.primary,
                    title: 'getcontact',
                  ),
                  HomeAppCard(
                    color: AppColors.secondary,
                    title: 'eSIMio',
                  ),
                  HomeAppCard(
                    color: AppColors.primary,
                    title: 'WhatsApp',
                  ),
                  HomeAppCard(
                    color: AppColors.secondary,
                    title: 'Instagram',
                  ),
                  HomeAppCard(
                    color: AppColors.primary,
                    title: 'Facebook',
                  ),
                  HomeAppCard(
                    color: AppColors.secondary,
                    title: 'Twitter',
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

class HomeAppCard extends StatelessWidget {
  const HomeAppCard({
    super.key,
    required this.color,
    required this.title,
  });

  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.005),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        color: color,
        child: SizedBox(
            height: size.height * 0.08,
            width: size.width * 0.9,
            child: Center(
              child: ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                title: Text(
                  title,
                  style: context.textTheme.labelMedium?.copyWith(
                    color: Colors.black,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.black,
                ),
              ),
            )),
      ),
    );
  }
}
