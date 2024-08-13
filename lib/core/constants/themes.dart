import 'package:flutter/material.dart';
import 'colors.dart';

class AppThemes {
  static final ThemeData theme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    fontFamily: 'Poppins',
    
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.textFieldBg,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.lineColor),
        borderRadius: BorderRadius.circular(8),
      ),
      hintStyle: const TextStyle(
        color: AppColors.textFieldText,
        fontSize: 12,
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
    ),
    
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 14,
        color: AppColors.titleColor,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 10,
        color: AppColors.titleColor,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontSize: 9,
        color: AppColors.subtitleColor,
        fontWeight: FontWeight.w300,
      ),
      labelLarge: TextStyle(
        fontSize: 10,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold,
      ),     
    ),
  );
}