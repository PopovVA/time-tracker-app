import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_tracker/app/theme/app_theme.dart';
import 'package:time_tracker/app/theme/data/prefs_theme_repository.dart';
import 'package:time_tracker/app/theme/data/theme_repository.dart';
import 'package:time_tracker/app/theme/domain/theme_interactor.dart';

final prefsThemeInteractorProvider = Provider<IThemeInteractor>(
  (ref) => PrefsThemeInteractorImpl(ref.watch(prefsThemeRepositoryProvider)),
);

class PrefsThemeInteractorImpl implements IThemeInteractor {
  PrefsThemeInteractorImpl(
    this._repository,
  );

  final IThemeRepository _repository;

  @override
  Future<AppTheme> getCurrentTheme() async {
    final themeMode = await _repository.getCurrentTheme();
    final platformBrightness =
        SchedulerBinding.instance.window.platformBrightness;
    switch (themeMode) {
      case ThemeMode.dark:
        return AppTheme.dark();
      case ThemeMode.light:
        return AppTheme.light();
      case ThemeMode.system:
        return platformBrightness == Brightness.dark
            ? AppTheme.dark()
            : AppTheme.light();
    }
  }

  @override
  Future<void> toogleTheme() async {
    final currentTheme = await getCurrentTheme();
    switch (currentTheme.themeMode) {
      case ThemeMode.dark:
        await _repository.toogleTheme(ThemeMode.light);
        break;
      case ThemeMode.light:
        await _repository.toogleTheme(ThemeMode.dark);
        break;
      default:
        throw UnimplementedError('Somthenig went wrong');
    }
  }
}
