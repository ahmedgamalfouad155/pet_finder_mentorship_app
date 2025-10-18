import 'package:cat_api/core/theme/colors.dart';
import 'package:cat_api/core/theme/styles.dart';
import 'package:flutter/material.dart';

class InfoWidet extends StatelessWidget {
  const InfoWidet({super.key, required this.title, required this.stubTitle});
  final String title, stubTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: context.appColors.tealBackground,
      ),
      child: Column(
        children: [
          Text(title, style: AppStyles.textStyle18(context)),
          const SizedBox(height: 5),
          Text(stubTitle, style: AppStyles.textStyle14(context)),
        ],
      ),
    );
  }
}
