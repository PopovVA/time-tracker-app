import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTypographyTheme {
  TextStyle get bodyCopy;
}

class BaseTypographyTheme implements AppTypographyTheme {
  @override
  TextStyle get bodyCopy => GoogleFonts.rubik(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );
}
