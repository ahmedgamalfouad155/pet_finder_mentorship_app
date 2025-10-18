import 'package:flutter/cupertino.dart';
import 'package:cat_api/core/theme/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppStyles {
  static TextStyle textStyle32(BuildContext context) =>
      TextStyle(fontSize: 32, fontWeight: FontWeight.bold);

  static TextStyle textStyle18(BuildContext context) => TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: context.appColors.black,
  );

  static TextStyle textStyle20(BuildContext context) => TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    color: context.appColors.greyNavBar,
  );

  static TextStyle textStyle14(BuildContext context) =>
      TextStyle(fontSize: 14.sp, color: context.appColors.grey);

  static TextStyle textStyle16(BuildContext context) => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: context.appColors.black,
  );
  static TextStyle textStyle16w400(BuildContext context) => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: context.appColors.black,
  );

  static TextStyle textStyle24(BuildContext context) => TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: context.appColors.black,
  );

  static TextStyle textStyle12(BuildContext context) => TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: context.appColors.greyNavBar,
  );

  static TextStyle textStyle22(BuildContext context) => TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w700,
    color: context.appColors.black,
  );
}
