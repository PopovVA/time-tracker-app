import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_tracker/app/theme/app_theme.dart';
import 'package:time_tracker/app/theme/domain/prefs_theme_interactor.dart';
import 'package:time_tracker/app/theme/domain/theme_interactor.dart';
import 'package:time_tracker/core/api/api_repository.dart';
import 'package:time_tracker/core/storage/prefs_repository.dart';
import 'package:time_tracker/core/storage/storage_repository.dart';

final appStateProvider = ChangeNotifierProvider<AppState>(
  (ref) => AppState(
    ref.watch(prefsThemeInteractorProvider),
    ref.watch(prefsRepositoryProvider),
    ref.watch(restApiRepositoryProvider),
  ),
);

class AppState extends ChangeNotifier {
  AppState(
    this._themeInteractor,
    this._storageRepository,
    this._apiRepository,
  );

  final IThemeInteractor _themeInteractor;
  final IStorageRepository _storageRepository;
  final IApiRepository _apiRepository;

  Future<void> init() async {
    await _apiRepository.init();
    await _storageRepository.init();
    theme = await _themeInteractor.getCurrentTheme();
  }

  Future<void> toogleTheme() async {
    await _themeInteractor.toogleTheme();
    theme =
        theme.themeMode == ThemeMode.dark ? AppTheme.light() : AppTheme.dark();
    notifyListeners();
  }

  AppTheme theme = AppTheme.dark();
}
