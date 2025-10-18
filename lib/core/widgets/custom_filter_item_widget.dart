import 'package:cat_api/core/theme/colors.dart';
import 'package:cat_api/core/theme/styles.dart';
import 'package:cat_api/core/widgets/custom_filters_widget.dart';
import 'package:flutter/material.dart';

class CustomFilterItemWidget extends StatelessWidget {
  const CustomFilterItemWidget({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
    this.layoutType = SpecialLayoutType.wrap,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onTap;
  final SpecialLayoutType layoutType;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected
              ? context.appColors.teal
              : context.appColors.tealBackground,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: AppStyles.textStyle16(
            context,
          ).copyWith(color: isSelected ? Colors.white : context.appColors.teal),
        ),
      ),
    );
  }
}
