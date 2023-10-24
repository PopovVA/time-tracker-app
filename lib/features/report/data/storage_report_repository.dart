import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_tracker/core/exceptions/parsing_exception.dart';
import 'package:time_tracker/core/exceptions/storage_exception.dart';
import 'package:time_tracker/core/storage/prefs_repository.dart';
import 'package:time_tracker/core/storage/storage_repository.dart';
import 'package:time_tracker/features/report/data/report_repository.dart';
import 'package:time_tracker/features/report/domain/model/report.dart';

final storageReportRepositoryProvider = Provider<IReportRepository>(
  (ref) => StorageReportRepositoryImpl(ref.watch(prefsRepositoryProvider)),
);

class StorageReportRepositoryImpl implements IReportRepository {
  const StorageReportRepositoryImpl(
    this._storageRepository,
  );

  final IStorageRepository _storageRepository;

  final StorageKey _storageKey = '/time-tracking';

  @override
  Future<List<Report>?> getReports() async {
    try {
      final storageData = await _storageRepository.getOne(_storageKey);
      if (storageData == null) {
        return null;
      }
      final jsonData = jsonDecode(storageData) as List;
      return jsonData.map((report) => Report.fromJson(report)).toList();
    } catch (error) {
      throw ParsingException(error.toString());
    }
  }

  @override
  Future<void> saveReports(List<Report> report) async {
    try {
      await _storageRepository.writeOne(
        _storageKey,
        jsonEncode(report.map((e) => e.toJson()).toList()),
      );
    } catch (e) {
      throw StorageException(e.toString());
    }
  }
}
