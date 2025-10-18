
import 'package:cat_api/core/constants/images.dart';
import 'package:cat_api/core/theme/colors.dart';
import 'package:cat_api/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height / 3,
      width: context.width,
      decoration: BoxDecoration(
        color: context.appColors.tealBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Center(child: Image.asset(AppImages.dog2)),
    );
  }
}
