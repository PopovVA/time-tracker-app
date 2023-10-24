import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_tracker/features/report/domain/model/report.dart';

part 'report_state.freezed.dart';

@freezed
abstract class ReportState with _$ReportState {
  const factory ReportState.error() = ReportError;
  const factory ReportState.initial() = ReportInitial;
  const factory ReportState.data({
    required List<Report> report,
  }) = ReportData;
  const factory ReportState.empty() = ReportEmpty;
}
