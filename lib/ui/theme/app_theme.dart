import 'package:alyaoum/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    fontFamily: 'NotoKufiArabic',
    colorScheme:  const ColorScheme.light(
      secondary: kPrimaryColor,
      primary: kPrimaryColor,
    ),
    scaffoldBackgroundColor: kWhiteColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: kWhiteColor,
      elevation: 0.0,
      iconTheme: IconThemeData(color: kBlackColor),
      actionsIconTheme: IconThemeData(color: kBlackColor),
    ),
    iconTheme: const IconThemeData(color: kBlackColor),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: kPrimaryColor),
  );

  static final darkTheme = ThemeData(
    fontFamily: 'NotoKufiArabic',
    colorScheme: const ColorScheme.dark(
      secondary: kPrimaryColor,
      primary: kPrimaryColor,
    ),
    scaffoldBackgroundColor: kPrimaryDarkColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: kPrimaryDarkColor,
      elevation: 0.0,
      iconTheme: IconThemeData(color: kPrimaryColor),
      actionsIconTheme: IconThemeData(color: kPrimaryColor),
    ),
    iconTheme: const IconThemeData(color: kPrimaryColor),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: kPrimaryColor),
  );

  static bool isLightTheme(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light ? true : false;
  }
}
