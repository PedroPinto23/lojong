import 'package:flutter/material.dart';
import 'package:flutter_html/style.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static Color get primaryColor => const Color.fromARGB(255, 224, 144, 144);

  static Color get secundaryColor => const Color.fromARGB(255, 238, 218, 219);

  static TextStyle get appbar => GoogleFonts.asap(
        letterSpacing: 1,
        fontWeight: FontWeight.w700,
        fontSize: 16,
      );

  static const radius = Radius.circular(15);

  static BorderRadiusGeometry? get roundedBoxDecoration =>
      const BorderRadius.only(
        topLeft: radius,
        topRight: radius,
      );

  static Style get infoTitle => Style.fromTextStyle(GoogleFonts.asap(
        fontWeight: FontWeight.w600,
        height: 4,
        fontSize: 18,
        letterSpacing: 0.1,
      ));

  static Style get infoSubTitle => Style.fromTextStyle(nameLabel);

  static TextStyle get videoDescription => GoogleFonts.asap(
        fontWeight: FontWeight.w400,
        fontSize: 13,
      );

  static TextStyle get nameLabel => GoogleFonts.asap(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        letterSpacing: 0.2,
      );

  static TextStyle get tileTitle => GoogleFonts.asap(
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );
  static TextStyle get verMais => GoogleFonts.asap(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: primaryColor,
      );

  static TextStyle get thumbText => GoogleFonts.asap(
        fontWeight: FontWeight.w700,
        fontSize: 18,
        letterSpacing: 0.2,
      );
  static TextStyle get closeButton => GoogleFonts.asap(
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontSize: 14,
      );
}
