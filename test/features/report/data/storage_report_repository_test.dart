import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracker/core/exceptions/parsing_exception.dart';
@GenerateNiceMocks([MockSpec<PrefsRepositoryImpl>()])
import 'package:time_tracker/core/storage/prefs_repository.dart';
import 'package:time_tracker/features/report/data/storage_report_repository.dart';
import 'package:time_tracker/features/report/domain/model/report.dart';

import 'storage_report_repository_test.mocks.dart';

void main() {
  late final StorageReportRepositoryImpl storageReportRepositoryImpl;
  late final MockPrefsRepositoryImpl mockPrefsRepositoryImpl;
  late final List<Map<String, dynamic>> fakeReport;

  setUpAll(() {
    mockPrefsRepositoryImpl = MockPrefsRepositoryImpl();
    storageReportRepositoryImpl =
        StorageReportRepositoryImpl(mockPrefsRepositoryImpl);
    fakeReport = [
      <String, dynamic>{
        'title': 'work',
        'timeframes': {
          'daily': {
            'current': 10,
            'previous': 0,
          },
          'weekly': {
            'current': 10,
            'previous': 0,
          },
          'monthly': {
            'current': 10,
            'previous': 0,
          },
        }
      }
    ];
  });
  group('Get report from storage repository', () {
    test('Should throw ParsingException if the data is in the wrong format',
        () async {
      when(mockPrefsRepositoryImpl.getOne('/time-tracking')).thenAnswer(
        (_) => Future.value('oops'),
      );
      try {
        await storageReportRepositoryImpl.getReports();
      } catch (error) {
        expect(error.runtimeType, ParsingException);
      }
    });
    test('Should return null if the data does not exist', () async {
      when(mockPrefsRepositoryImpl.getOne('/time-tracking')).thenAnswer(
        (_) => Future.value(null),
      );
      final res = await storageReportRepositoryImpl.getReports();
      expect(res, null);
    });

    test('Should return List<Report> if the storage data is correct', () async {
      when(mockPrefsRepositoryImpl.getOne('/time-tracking')).thenAnswer(
        (_) => Future.value(jsonEncode(fakeReport)),
      );
      final res = await storageReportRepositoryImpl.getReports();
      expect(res.runtimeType, List<Report>);
    });
  });
}
