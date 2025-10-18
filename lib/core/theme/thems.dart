import 'package:cat_api/core/theme/colors.dart';
import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  fontFamily: 'cairo',
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.white,
    centerTitle: true,
    foregroundColor: Colors.white,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
  brightness: Brightness.light,
  useMaterial3: true,
  extensions: const [
    AppColors(
      primaryBlue: Color.fromARGB(255, 38, 54, 110),
      teal: Color(0xff44bdb6),
      white: Color(0xffFFFFFF),
      offWhite: Color(0xffD1D1D1),
      grey: Color(0xff8b8b8b),
      tealBackground: Color(0xffedf9f7),
      greyBackgroundTextFiled: Color(0xfff4f4f5),
      greyNavBar: Color(0xffcccccc),
      greyMoonlight: Color(0xffeeeeef),
      black: Color.fromARGB(255, 0, 0, 0),
    ),
  ],
);

final darkTheme = ThemeData(
  fontFamily: 'cairo',
  brightness: Brightness.dark,
  useMaterial3: true,
  extensions: const [
    AppColors(
      primaryBlue: Color.fromARGB(255, 234, 175, 27),
      teal: Color(0xffFF7A33),
      white: Color.fromARGB(255, 36, 36, 36),
      offWhite: Color(0xff1E1E1E),
      grey: Color(0xff666666),
      tealBackground: Color(0xfff2f2f7),
      greyBackgroundTextFiled: Color(0xfff4f4f5),
      greyNavBar: Color(0xffcccccc),
      greyMoonlight: Color(0xffeeeeef),
      black: Color(0xff4CAF50),
    ),
  ],
);
