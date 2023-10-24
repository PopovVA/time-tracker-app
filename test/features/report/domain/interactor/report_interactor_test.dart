import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracker/features/report/domain/interactor/report_interactor.dart';
@GenerateNiceMocks([MockSpec<ApiReportRepositoryImpl>()])
import 'package:time_tracker/features/report/data/api_report_repository.dart';
@GenerateNiceMocks([MockSpec<StorageReportRepositoryImpl>()])
import 'package:time_tracker/features/report/data/storage_report_repository.dart';
@GenerateNiceMocks([MockSpec<Report>()])
import 'package:time_tracker/features/report/domain/model/report.dart';
import 'package:time_tracker/features/report/domain/model/time_period.dart';

import 'report_interactor_test.mocks.dart';

void main() {
  late final ReportInteractorImpl reportInteractorImpl;
  late final MockApiReportRepositoryImpl mockApiReportReporsitory;
  late final MockStorageReportRepositoryImpl mockStorageReportRepository;
  late final List<MockReport> mockStorageReport;
  late final List<MockReport> mockApiReport;
  late final Report report;

  setUpAll(() {
    mockApiReportReporsitory = MockApiReportRepositoryImpl();
    mockStorageReportRepository = MockStorageReportRepositoryImpl();
    reportInteractorImpl = ReportInteractorImpl(
      mockApiReportReporsitory,
      mockStorageReportRepository,
    );
    mockStorageReport = [MockReport()];
    mockApiReport = [MockReport()];
  });

  group('Save report', () {
    test('Should save report to the storage only if there is no saved data',
        () async {
      when(mockStorageReportRepository.getReports()).thenAnswer(
        (_) => Future.value([]),
      );
      await reportInteractorImpl.saveReports(mockApiReport);
      verify(mockStorageReportRepository.saveReports(mockApiReport));
    });

    test('Should not save report to the storage if there is saved data',
        () async {
      when(mockStorageReportRepository.getReports()).thenAnswer(
        (_) => Future.value(mockStorageReport),
      );
      await reportInteractorImpl.saveReports(mockApiReport);
      verifyNever(mockStorageReportRepository.saveReports(mockApiReport));
    });
  });
  group('Get report from repository', () {
    test('Should return Report from storage if there is saved data', () async {
      when(mockStorageReportRepository.getReports()).thenAnswer(
        (_) => Future.value(mockStorageReport),
      );
      final res = await reportInteractorImpl.getReports();
      expect(res.length, 1);
      expect(res, mockStorageReport);
    });

    test(
        'Should return Report from api if there is no saved data in the storage',
        () async {
      when(mockStorageReportRepository.getReports()).thenAnswer(
        (_) => Future.value([]),
      );
      when(mockApiReportReporsitory.getReports()).thenAnswer(
        (_) => Future.value(mockApiReport),
      );
      final res = await reportInteractorImpl.getReports();
      expect(res.length, 1);
      expect(res, mockApiReport);
    });
  });

  group('Add time to report', () {
    const hours = 10;
    report = const Report(
      title: 'Work',
      timeframes: Timeframe(
        daily: TimeFrameData(current: 0, previous: 10),
        weekly: TimeFrameData(current: 0, previous: 10),
        monthly: TimeFrameData(current: 0, previous: 10),
      ),
    );
    test('Should update timeframe data depends on a period', () {
      final res = reportInteractorImpl.addTimeToReport(
        inputHours: hours.toString(),
        period: TimePeriod.daily,
        report: report,
        reports: [report, report],
      );
      expect(res.length, 2);
      expect(res.first.timeframes.daily.current, hours);
      expect(res.last.timeframes.daily.current, 0);
    });
  });
}
