import 'package:flutter/material.dart';

extension AppColorHelper on BuildContext {
  AppColors get appColors => Theme.of(this).extension<AppColors>()!;
}

@immutable
class AppColors extends ThemeExtension<AppColors> {
  final Color primaryBlue;
  final Color teal;
  final Color white;
  final Color offWhite;
  final Color grey;
  final Color tealBackground;
  final Color greyBackgroundTextFiled;
  final Color greyNavBar;
  final Color greyMoonlight;
  final Color black;

  const AppColors({
    required this.primaryBlue,
    required this.teal,
    required this.white,
    required this.offWhite,
    required this.grey,
    required this.tealBackground,
    required this.greyBackgroundTextFiled,
    required this.greyNavBar,
    required this.greyMoonlight,
    required this.black,
  });

  @override
  AppColors copyWith({
    Color? primaryBlue,
    Color? teal,
    Color? white,
    Color? offWhite,
    Color? grey,
    Color? tealBackground,
    Color? greyBackgroundTextFiled,
    Color? greyNavBar,
    Color? greyMoonlight,
    Color? black,
  }) {
    return AppColors(
      primaryBlue: primaryBlue ?? this.primaryBlue,
      teal: teal ?? this.teal,
      white: white ?? this.white,
      offWhite: offWhite ?? this.offWhite,
      grey: grey ?? this.grey,
      tealBackground: tealBackground ?? this.tealBackground,
      greyBackgroundTextFiled:
          greyBackgroundTextFiled ?? this.greyBackgroundTextFiled,
      greyNavBar: greyNavBar ?? this.greyNavBar,
      greyMoonlight: greyMoonlight ?? this.greyMoonlight,
      black: black ?? this.black,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      primaryBlue: Color.lerp(primaryBlue, other.primaryBlue, t)!,
      teal: Color.lerp(teal, other.teal, t)!,
      white: Color.lerp(white, other.white, t)!,
      offWhite: Color.lerp(offWhite, other.offWhite, t)!,
      grey: Color.lerp(grey, other.grey, t)!,
      tealBackground: Color.lerp(tealBackground, other.tealBackground, t)!,
      greyBackgroundTextFiled: Color.lerp(
        greyBackgroundTextFiled,
        other.greyBackgroundTextFiled,
        t,
      )!,
      greyNavBar: Color.lerp(greyNavBar, other.greyNavBar, t)!,
      greyMoonlight: Color.lerp(greyMoonlight, other.greyMoonlight, t)!,
      black: Color.lerp(black, other.black, t)!,
    );
  }
}
