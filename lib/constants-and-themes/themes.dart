import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modern_recipe_app/constants-and-themes/constants.dart';

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
      color: AppConstants.kdarkThemeTextColor,
    ),
    headline1: GoogleFonts.poppins(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: AppConstants.kdarkThemeTextColor,
    ),
    headline2: GoogleFonts.poppins(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: AppConstants.kdarkThemeTextColor,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: AppConstants.kdarkThemeTextColor,
    ),
    headline4: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: AppConstants.kdarkThemeTextColor,
    ),
    headline5: GoogleFonts.poppins(
      fontSize: 12.0,
      fontWeight: FontWeight.w600,
      color: AppConstants.kdarkThemeTextColor,
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: AppConstants.kdarkThemeTextColor,
    ),
  );

  static const ktitle = 'Baabu-Dishes';
  static const kbgColor = Color(0xFF315ad6);
  static const kdarkAppBarColor = Color(0xFF3675db);
  static const kdarkThemeTextColor = Color(0xFFbabdf2);
  
  static final ThemeData kthemeData = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppConstants.kbgColor,
  );
  
  static Theme kdarkTheme() {
    return Theme(
      data: ThemeData(
        splashColor: Colors.amberAccent
      ),
      child: const Center(),
    );
  } 
}