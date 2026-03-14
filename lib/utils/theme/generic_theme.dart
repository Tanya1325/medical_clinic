import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_clinic/constants/color_constants.dart';

class AppTheme {
  static String? fontFamily = GoogleFonts.inter().fontFamily;
  static String? secondaryFontFamily = GoogleFonts.leagueSpartan().fontFamily;
  static ThemeData lightTheme = ThemeData(
    fontFamily: fontFamily,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
        color: textColor,
      ),
      headlineMedium: TextStyle(
        fontFamily: secondaryFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
        color: textColor,
      ),
      headlineSmall: TextStyle(
        fontFamily: secondaryFontFamily,
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
        color: textColor,
      ),
      titleLarge: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        color: textColor,
      ),
      titleMedium: TextStyle(
        fontFamily: secondaryFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
        color: textColor,
      ),
      titleSmall: TextStyle(
        fontFamily: secondaryFontFamily,
        fontWeight: FontWeight.normal,
        fontSize: 20.0,
        color: textColor,
      ),
      displayLarge: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
        color: textColor,
      ),
      displayMedium: TextStyle(
        fontFamily: secondaryFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
        color: textColor,
      ),
      displaySmall: TextStyle(
        fontFamily: secondaryFontFamily,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
        color: textColor,
      ),
      labelLarge: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
        color: textColor,
      ),
      labelMedium: TextStyle(
        fontFamily: secondaryFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
        color: textColor,
      ),
      labelSmall: TextStyle(
        fontFamily: secondaryFontFamily,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
        color: textColor,
      ),
      bodyLarge: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 14.0,
        color: textColor,
      ),
      bodyMedium: TextStyle(
        fontFamily: secondaryFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        color: textColor,
      ),
      bodySmall: TextStyle(
        fontFamily: secondaryFontFamily,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
        color: textColor,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    fontFamily: fontFamily,
    scaffoldBackgroundColor: Colors.black54,
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
      headlineMedium: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
      ),
      headlineSmall: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.normal,
        fontSize: 20.0,
      ),
      titleLarge: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
      titleMedium: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      ),
      titleSmall: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      ),
      displayLarge: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
      displayMedium: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      ),
      displaySmall: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      ),
      labelLarge: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
      labelMedium: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      ),
      labelSmall: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      ),
      bodyLarge: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 14.0,
      ),
      bodyMedium: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      ),
      bodySmall: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      ),
    ),
  );
}
