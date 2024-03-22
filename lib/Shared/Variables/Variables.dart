import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Variables{
  // -- Colors
  static Color colorBackground = Colors.white10;
  static Color colorBlackTransparent = Color.fromARGB(16, 0, 0, 0);
  static Color colorNearToBlack = Color.fromARGB(255, 9, 9, 9);
  static Color colorWhite = Colors.white;
  static Color colorWhiteTransparent = Colors.white70;
  static Color colorLightBlack = Color.fromARGB(255, 30, 30, 30);
  static Color colorBlack = Colors.black;

  // -- Padding
  static EdgeInsets paddingSmall = EdgeInsets.all(5);
  static EdgeInsets paddingMedium = EdgeInsets.all(10);
  static EdgeInsets paddingLarge = EdgeInsets.all(15);

  // -- Margin
  static EdgeInsets marginSmall = EdgeInsets.all(5);
  static EdgeInsets marginMedium = EdgeInsets.all(10);
  static EdgeInsets marginLarge = EdgeInsets.all(15);

  // -- Radius
  static BorderRadius radiusSmall=  BorderRadius.circular(10);
  static BorderRadius radiusMedium = BorderRadius.circular(20);
  static BorderRadius radiusLarge = BorderRadius.circular(30);

  // -- Fonts
  static TextStyle fontBlackTransparentLarge = GoogleFonts.getFont("Philosopher" , textStyle: TextStyle(color: colorWhiteTransparent, fontWeight: FontWeight.bold ,fontSize: 50));
  static TextStyle fontBlackTransparentSmall = GoogleFonts.getFont("IBM Plex Sans Arabic" , textStyle: TextStyle(color: colorWhiteTransparent, fontSize: 12));

  static TextStyle fontBlackSmall = GoogleFonts.getFont("IBM Plex Sans Arabic" , textStyle: TextStyle(color: colorWhite));

}