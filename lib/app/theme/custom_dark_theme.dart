// ignore_for_file: prefer_typing_uninitialized_variables, type_annotate_public_apis, inference_failure_on_uninitialized_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class CustomDarkTheme {
  CustomDarkTheme() {
    themeData = ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      textTheme: TextTheme(
        bodySmall: GoogleFonts.quicksand(),
        bodyMedium: GoogleFonts.quicksand(),
        bodyLarge: GoogleFonts.quicksand(),
        titleSmall: GoogleFonts.quicksand(),
        titleMedium: GoogleFonts.quicksand(),
        titleLarge: GoogleFonts.quicksand(),
        labelSmall: GoogleFonts.quicksand(),
        labelMedium: GoogleFonts.quicksand(),
        labelLarge: GoogleFonts.quicksand(),
        headlineSmall: GoogleFonts.quicksand(),
        headlineMedium: GoogleFonts.quicksand(),
        headlineLarge: GoogleFonts.quicksand(),
      ),
    );
  }
  static ThemeData themeData = ThemeData();
}
