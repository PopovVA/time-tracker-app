import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_tracker/app/theme/data/theme_repository.dart';
import 'package:time_tracker/core/storage/prefs_repository.dart';
import 'package:time_tracker/core/storage/storage_repository.dart';

final prefsThemeRepositoryProvider = Provider<IThemeRepository>(
  (ref) => PrefsThemeRepositoryImpl(
    ref.watch(prefsRepositoryProvider),
  ),
);

class PrefsThemeRepositoryImpl implements IThemeRepository {
  PrefsThemeRepositoryImpl(
    this._storageRepository,
  );

  final IStorageRepository _storageRepository;

  final StorageKey themeKey = 'theme';

  @override
  Future<ThemeMode> getCurrentTheme() async {
    final data = await _storageRepository.getOne(themeKey);
    return ThemeMode.values.firstWhere(
      (mode) => mode.name == data,
      orElse: () => ThemeMode.system,
    );
  }

  @override
  Future<void> toogleTheme(ThemeMode themeMode) async {
    await _storageRepository.writeOne(
      themeKey,
      themeMode.name,
    );
  }
}
