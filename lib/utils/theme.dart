import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ma_base_app/constants/colors.dart';

class AppTheme {
  // Make theme private
  AppTheme._();
  // Light Theme
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: tMeliorateRed),
    brightness: Brightness.light,
    // Color scheme is for light theme only
    colorScheme: ColorScheme.fromSeed(seedColor: tMeliorateRed),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: tMeliorateRed, foregroundColor: Colors.white),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: tMeliorateRed,
        side: BorderSide(color: tMeliorateRed),
      ),
    ),
    textTheme: AppTheme.textTheme,
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.black, foregroundColor: tMeliorateRed),
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: tMeliorateRed, foregroundColor: Colors.black),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: tMeliorateRed,
        side: BorderSide(color: tMeliorateRed),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: tMeliorateRed, foregroundColor: Colors.black),
    textTheme: AppTheme.textTheme,
  );

  // Text Theme for both light and dark
  static TextTheme textTheme = TextTheme(
    headlineLarge: GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: tMeliorateRed),
    headlineMedium: GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: tMeliorateRed),
  );
  // Swipe screen styles
  static TextStyle swipeTitle = GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22);
  static TextStyle swipeText = GoogleFonts.montserrat(color: Colors.white, fontSize: 20);
}
