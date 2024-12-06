import 'package:flutter/material.dart';
import 'package:team8/helper/constants/app_colors.dart';

@immutable
class AppTheme {
  static ThemeData light() => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    tabBarTheme: TabBarTheme(
      splashFactory: InkRipple.splashFactory,
      overlayColor: WidgetStateProperty.resolveWith((states) => const Color(0xFF6F4B16))
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.primary, 
      selectionColor: AppColors.primary,
      selectionHandleColor: AppColors.primary,
    ),
    scaffoldBackgroundColor: AppColors.black60,
    primaryTextTheme: const TextTheme(
      titleLarge: TextStyle(color: AppColors.textDark)
    ),
  );
}