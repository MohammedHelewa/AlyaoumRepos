import 'package:alyaoum/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    fontFamily: 'Tajawal',
    colorScheme: ColorScheme.fromSwatch(accentColor: AppColors.primaryColor,primarySwatch: Colors.blue),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: AppColors.primaryColor),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: AppColors.primaryColor)
    ),
  );
}