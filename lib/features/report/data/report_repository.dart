import 'package:time_tracker/features/report/domain/model/report.dart';

abstract class IReportRepository {
  Future<List<Report>?> getReports();
  Future<void> saveReports(List<Report> report);
}
