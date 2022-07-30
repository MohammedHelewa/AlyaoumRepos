import 'package:alyaoum/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    fontFamily: 'Tajawal',
    scaffoldBackgroundColor: kWhiteColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: kWhiteColor,
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: kBlackColor,
      )
    ),
    iconTheme: const IconThemeData(
      color: kBlackColor,
    )
  );
}