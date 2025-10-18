import 'package:cat_api/core/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:cat_api/core/theme/colors.dart';
import 'package:cat_api/core/theme/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.hintText,
    this.controller,
    this.keyboardType,
  });

  final String hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      cursorColor: context.appColors.greyMoonlight,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'pleaseEnterYour $hintText';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(AppImages.filter),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(AppImages.search),
        ),

        hintStyle: AppStyles.textStyle12(context),
        fillColor: context.appColors.greyMoonlight,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: context.appColors.greyMoonlight),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: context.appColors.greyMoonlight),
        ),
      ),
    );
  }
}
