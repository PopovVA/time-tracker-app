import 'package:flutter/material.dart';
import 'package:time_tracker/app/theme/domain/models/color/color_theme.dart';
import 'package:time_tracker/app/theme/domain/models/color/dark_color_theme.dart';
import 'package:time_tracker/app/theme/domain/models/color/light_color_theme.dart';
import 'package:time_tracker/app/theme/domain/models/typography/typography_theme.dart';

class AppTheme {
  const AppTheme({
    required this.colors,
    required this.typography,
    required this.themeMode,
  });

  factory AppTheme.light() => AppTheme(
        colors: LightColorTheme(),
        typography: BaseTypographyTheme(),
        themeMode: ThemeMode.light,
      );
  factory AppTheme.dark() => AppTheme(
        colors: DarkColorTheme(),
        typography: BaseTypographyTheme(),
        themeMode: ThemeMode.dark,
      );

  final AppColorTheme colors;
  final AppTypographyTheme typography;
  final ThemeMode themeMode;
}
