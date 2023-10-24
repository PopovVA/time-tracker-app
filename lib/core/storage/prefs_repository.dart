import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:time_tracker/core/storage/storage_repository.dart';

final prefsRepositoryProvider =
    Provider<IStorageRepository>((ref) => PrefsRepositoryImpl());

class PrefsRepositoryImpl implements IStorageRepository {
  late final SharedPreferences _prefs;
  late final Set<String> _keys;

  @override
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    _keys = _prefs.getKeys();
  }

  @override
  Future<List<JsonValue>> getAll() async {
    final List<JsonValue> data = [];
    for (final key in _keys) {
      final JsonValue? value = _prefs.getString(key);
      if (value != null) {
        data.add(value);
      }
    }
    return data;
  }

  @override
  Future<JsonValue?> getOne(StorageKey key) async {
    final data = _prefs.getString(key);
    return data != null ? jsonDecode(data) : null;
  }

  @override
  Future<void> removeAll() async {
    await _prefs.clear();
    _keys.clear();
  }

  @override
  Future<void> removeOne(StorageKey key) async {
    await _prefs.remove(key);
    _keys.remove(key);
  }

  @override
  Future<void> writeOne(StorageKey key, JsonValue value) async {
    await _prefs.setString(key, jsonEncode(value));
    _keys.add(key);
  }
}
