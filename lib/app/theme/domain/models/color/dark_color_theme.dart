import 'package:flutter/material.dart';
import 'package:time_tracker/app/theme/domain/models/color/color_theme.dart';

class DarkColorTheme implements AppColorTheme {
  @override
  Color get textFieldColor => Colors.white;

  @override
  Color get bottomSheetBg => darkBlue;

  @override
  Color get errorColor => Colors.white;

  @override
  Color get cardLabel => Colors.white;

  @override
  Color get primary => const Color(0xff1C1F4A);

  @override
  Color get cardColor => primary;

  @override
  Color get pickerBackground => darkBlue;

  //### Primary
  // - Blue: hsl(246, 80%, 60%)
  @override
  Color get blue => const Color(0xff5847EB);

  // - Light red (work): hsl(15, 100%, 70%)
  @override
  Color get lightRed => const Color(0xffFF8C66);

  // - Soft blue (play): hsl(195, 74%, 62%)
  @override
  Color get softBlue => const Color(0xff56C2E6);

  // - Light red (study): hsl(348, 100%, 68%)
  @override
  Color get lightRedStudy => const Color(0xffFF5C7C);

  // - Lime green (exercise): hsl(145, 58%, 55%)
  @override
  Color get limeGreen => const Color(0xff4ACF81);

  // - Violet (social): hsl(264, 64%, 52%)
  @override
  Color get violet => const Color(0xff7536D3);

  // - Soft orange (self care): hsl(43, 84%, 65%)
  @override
  Color get softOrange => const Color(0xffF1C65B);

  // ### Neutral

  // - Very dark blue: hsl(226, 43%, 10%)
  @override
  Color get veryDarkBlue => const Color(0xff0F1424);

  // - Dark blue: hsl(235, 46%, 20%)
  @override
  Color get darkBlue => const Color(0xff1C1F4A);

  // - Desaturated blue: hsl(235, 45%, 61%)
  @override
  Color get desaturatedblue => const Color(0xff6F76C8);

  // - Pale Blue: hsl(236, 100%, 87%)
  @override
  Color get paleBlue => const Color(0xffBDC1FF);

  @override
  Brightness get brightness => Brightness.dark;
}
