import 'package:flutter/material.dart';
import 'package:furpixs/theme/elevated_button_theme.dart';
import 'package:furpixs/theme/outline_button_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme =ThemeData(brightness: Brightness.light,
  textTheme: TextTheme(
      headline2: GoogleFonts.montserrat(
      color: Colors.black87,
  ),
  subtitle2: GoogleFonts.poppins(
      color:  Colors.black54,
  fontSize: 24,
      )
  ),
  outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
  elevatedButtonTheme: TElevatedTheme.lightElevatedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(brightness: Brightness.dark,
  textTheme: TextTheme(
  headline2: GoogleFonts.montserrat(
  color: Colors.white70,
  ),
  subtitle2: GoogleFonts.poppins(
  color: Colors.white60,
  fontSize: 24,
  )
  ),
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlineButtonTheme,
    elevatedButtonTheme: TElevatedTheme.darkElevatedButtonTheme,
  );
}
