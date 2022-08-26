import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Custom Color
const Color darkBlue = Color(0xFF02020D);
const Color lightBlue = Color(0xFF0A0A18);
const Color white = Color(0xFFFFFFFF);
const Color orange = Color(0xFFE8630A);
const Color gray = Color(0xFFD9D9D9);

// Custom Text
final TextStyle superTitleText =
    GoogleFonts.roboto(fontSize: 32, fontWeight: FontWeight.bold, color: white);
final TextStyle titleText =
    GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold, color: white);
final TextStyle littleTitleText =
    GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold, color: white);
final TextStyle mediumLiteTitleText =
    GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold, color: white);
final TextStyle liteTitleText =
    GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.bold, color: white);
final TextStyle boldDescriptionText =
    GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold, color: white);
final TextStyle descriptionText = GoogleFonts.roboto(
    fontSize: 20, fontWeight: FontWeight.normal, color: white);
final TextStyle mediumDescriptionText = GoogleFonts.roboto(
    fontSize: 16, fontWeight: FontWeight.normal, color: white);
final TextStyle littleDescriptionText = GoogleFonts.roboto(
    fontSize: 14, fontWeight: FontWeight.normal, color: white);
final TextStyle liteDescriptionText = GoogleFonts.roboto(
    fontSize: 12, fontWeight: FontWeight.normal, color: white);
final TextStyle infoText = GoogleFonts.roboto(
    fontSize: 16, fontWeight: FontWeight.bold, color: orange);

// Custom Theme
const customTheme = ColorScheme(
    brightness: Brightness.dark,
    primary: white,
    onPrimary: darkBlue,
    secondary: darkBlue,
    onSecondary: white,
    error: orange,
    onError: orange,
    background: darkBlue,
    onBackground: darkBlue,
    surface: darkBlue,
    onSurface: white);
