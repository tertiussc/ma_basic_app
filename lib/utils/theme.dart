import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Make theme private
  AppTheme._();
  // Light Theme
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.amber),
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: Colors.amberAccent)),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.amber[500],
        side: BorderSide(color: Colors.amber),
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: Colors.amber),
    ),
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.black, foregroundColor: Colors.amber),
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.amberAccent, foregroundColor: Colors.black),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.amber[500],
        side: BorderSide(color: Colors.amber),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.amber, foregroundColor: Colors.black),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: Colors.amberAccent),
    ),
  );
}
