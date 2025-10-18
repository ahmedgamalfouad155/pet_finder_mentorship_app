import 'package:cat_api/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(color: context.appColors.teal, thickness: .5);
  }
}
