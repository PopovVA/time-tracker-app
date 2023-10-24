import 'package:flutter/material.dart';

abstract class IThemeRepository {
  Future<void> toogleTheme(ThemeMode themeMode);
  Future<ThemeMode> getCurrentTheme();
}
