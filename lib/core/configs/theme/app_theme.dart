import 'package:flutter/material.dart';
import 'package:mobile_app/core/configs/theme/app_colors.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: AppColors.primary,
  // scaffoldBackgroundColor: AppColors.background,
  brightness: Brightness.light,
  visualDensity: VisualDensity.adaptivePlatformDensity,

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.secondBackground,
    hintStyle: const TextStyle(
      color: Color(0xFFA7A7A7),
      fontWeight: FontWeight.w500,
    ),
    contentPadding: const EdgeInsets.all(20),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide.none,
    ),
  ),
);
