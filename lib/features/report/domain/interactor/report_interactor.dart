import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_tracker/features/report/data/api_report_repository.dart';
import 'package:time_tracker/features/report/data/report_repository.dart';
import 'package:time_tracker/features/report/data/storage_report_repository.dart';
import 'package:time_tracker/features/report/domain/model/report.dart';
import 'package:time_tracker/features/report/domain/model/time_period.dart';

abstract class IReportInteractor {
  Future<void> updateReports(List<Report> reports);
  Future<List<Report>> getReports();
  Future<void> saveReports(List<Report> reports);
  List<Report> addTimeToReport({
    required TimePeriod period,
    required Report report,
    required List<Report> reports,
    required String inputHours,
  });
}

final reportInteractorProvider = Provider((ref) => ReportInteractorImpl(
      ref.watch(apiReportRepositoryProvider),
      ref.watch(storageReportRepositoryProvider),
    ));

class ReportInteractorImpl implements IReportInteractor {
  ReportInteractorImpl(
    this._apiReportRepository,
    this._storageReportRepository,
  );

  final IReportRepository _apiReportRepository;
  final IReportRepository _storageReportRepository;

  @override
  Future<List<Report>> getReports() async {
    try {
      final storageReport = await _storageReportRepository.getReports();
      if (storageReport?.isNotEmpty ?? false) {
        return storageReport!;
      }
      final report = await _apiReportRepository.getReports();
      return report!;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updateReports(List<Report> reports) async {
    try {
      await _storageReportRepository.saveReports(reports);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> saveReports(List<Report> reports) async {
    try {
      final storageReport = await _storageReportRepository.getReports();
      if (storageReport?.isEmpty ?? true) {
        await _storageReportRepository.saveReports(reports);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  List<Report> addTimeToReport({
    required TimePeriod period,
    required Report report,
    required List<Report> reports,
    required String inputHours,
  }) {
    final int hours = int.parse(inputHours.trim());
    final updatedTimeFrame = report.timeframes.copyWith(
      daily: report.timeframes.daily.copyWith(
        current: report.timeframes.daily.current +
            (period == TimePeriod.daily ? hours : 0),
        previous: report.timeframes.daily.previous,
      ),
      weekly: report.timeframes.weekly.copyWith(
        current: report.timeframes.weekly.current +
            (period == TimePeriod.weekly ? hours : 0),
        previous: report.timeframes.weekly.previous,
      ),
      monthly: report.timeframes.monthly.copyWith(
        current: report.timeframes.monthly.current +
            (period == TimePeriod.monthly ? hours : 0),
        previous: report.timeframes.monthly.previous,
      ),
    );
    final updatedReport = report.copyWith(timeframes: updatedTimeFrame);
    final int index = reports.indexOf(report);
    reports.replaceRange(index, index + 1, [updatedReport]);
    return reports;
  }
}
