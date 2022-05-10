// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.black12,
    ),
    headline1: GoogleFonts.poppins(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black12,
    ),
    headline2: GoogleFonts.poppins(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.black12,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black12,
    ),
    headline4: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: Colors.black12,
    ),
    headline5: GoogleFonts.poppins(
      fontSize: 12.0,
      fontWeight: FontWeight.w600,
      color: Colors.black12,
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black12,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: kdarkThemeTextColor,
    ),
    headline1: GoogleFonts.poppins(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: kdarkThemeTextColor,
    ),
    headline2: GoogleFonts.poppins(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: kdarkThemeTextColor,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: kdarkThemeTextColor,
    ),
    headline4: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: kdarkThemeTextColor,
    ),
    headline5: GoogleFonts.poppins(
      fontSize: 12.0,
      fontWeight: FontWeight.w600,
      color: kdarkThemeTextColor,
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: kdarkThemeTextColor,
    ),
  );

  static const ktitle = 'Baabu Dishes';
  static const kdarkButtonColor = Color.fromARGB(255, 4, 29, 50);
  static const kbgColor = Color.fromARGB(173, 237, 237, 255);
  static const kdarkBgColor = Color.fromARGB(153, 28, 33, 45);
  static const kdarkThemeTextColor = Color.fromARGB(255, 179, 180, 210);
  static const Color green = Color(0xff158442);
  static const Color lightGrey = Color(0xff5f6367);
  static const Color shim = Color(0x7f000000);

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: kbgColor,
    colorScheme: const ColorScheme.light(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: lightTextTheme,
  );
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: kdarkBgColor,
    colorScheme: const ColorScheme.dark(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: darkTextTheme,
  );
}
