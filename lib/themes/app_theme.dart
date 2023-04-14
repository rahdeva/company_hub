import 'package:flutter/material.dart';
import '/resources/resources.dart';

class AppTheme {
  static ThemeData buildThemeData(bool darkMode) {
    return ThemeData(
      primaryColor: AppColors.colorPrimary,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.background,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      appBarTheme: lightAppBar(),
      fontFamily: 'Montserrat',
      floatingActionButtonTheme: const FloatingActionButtonThemeData(),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.colorPrimary,
        )
      ),
      bottomNavigationBarTheme: lightNavigation(),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        displayMedium: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
        displaySmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: TextStyle(
          fontSize: 8,
          fontWeight: FontWeight.w500,
        ),
      ),
      inputDecorationTheme: inputDecoration(darkMode), 
      colorScheme: ThemeData().colorScheme.copyWith(
        primary: AppColors.colorPrimary,
        secondary: AppColors.colorSecondary,
      ).copyWith(background: (darkMode) ? AppColors.black : AppColors.white),
    );
  }

  static AppBarTheme lightAppBar() {
    return const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
      color: Colors.white,
      elevation: 0, 
    );
  }

  static BottomNavigationBarThemeData lightNavigation() {
    return const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.deepOrangeAccent,
      elevation: 0,
    );
  }

  static AppBarTheme darkAppBar() {
    return const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white, //change your color here
      ),
      color: Colors.black,
      elevation: 0,
    );
  }

  static BottomNavigationBarThemeData darkNavigation() {
    return const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.deepOrangeAccent,
      elevation: 0,
    );
  }

  // Box Field
  static inputDecoration(bool darkMode) {
    return InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[50],
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.borderColor, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.borderColor, width: 1),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.danger.withOpacity(0.8), width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.danger, width: 1.4),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.colorPrimary, width: 1),
      ),
      labelStyle: TextStyle(
        color: darkMode ? AppColors.white : AppColors.textColour100,
      ),
      hintStyle: const TextStyle(
        color: AppColors.gray700, 
        fontSize: 14
      ),
    );
  }
}
