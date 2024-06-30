import 'package:flutter/material.dart';

import '../../../utils/context_extensions.dart';

class HomeAppCard extends StatelessWidget {
  const HomeAppCard({
    super.key,
    required this.color,
    required this.title,
    required this.onTap,
  });

  final Color color;
  final String title;
  final Function() onTap;

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
                onTap: onTap,
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
