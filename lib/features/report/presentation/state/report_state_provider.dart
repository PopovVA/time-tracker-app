import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_tracker/features/report/domain/interactor/report_interactor.dart';
import 'package:time_tracker/features/report/domain/model/report.dart';
import 'package:time_tracker/features/report/domain/model/time_period.dart';
import 'package:time_tracker/features/report/presentation/state/report_state.dart';

final reportStateProvider =
    StateNotifierProvider<ReportStateProvider, ReportState>(
  (ref) => ReportStateProvider(
    ref.watch(reportInteractorProvider),
  ),
);

class ReportStateProvider extends StateNotifier<ReportState> {
  ReportStateProvider(
    this._reportInteractor,
  ) : super(const ReportState.initial());

  final IReportInteractor _reportInteractor;

  Future<void> init() async {
    try {
      final report = await _reportInteractor.getReports();
      await _reportInteractor.saveReports(report);
      state = report.isNotEmpty
          ? ReportState.data(report: report)
          : const ReportState.empty();
    } catch (e) {
      state = const ReportState.error();
      rethrow;
    }
  }

  Future<void> addTime(
    Report report,
    TimePeriod period,
    String inputHours,
  ) async {
    final latestState = state as ReportData;
    final List<Report> updatedReports = _reportInteractor.addTimeToReport(
      period: period,
      report: report,
      reports: List<Report>.from(latestState.report),
      inputHours: inputHours,
    );
    await _reportInteractor.updateReports(updatedReports);
    state = ReportState.data(report: updatedReports);
  }

  Future<void> getReport() async {
    try {
      state = const ReportState.initial();
      final report = await _reportInteractor.getReports();
      await _reportInteractor.saveReports(report);
      state = report.isNotEmpty
          ? ReportState.data(report: report)
          : const ReportState.empty();
    } catch (e) {
      state = const ReportState.error();
      rethrow;
    }
  }
}
