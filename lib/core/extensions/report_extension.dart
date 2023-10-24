import 'package:time_tracker/features/report/domain/model/report.dart';

enum ReportType {
  work,
  play,
  study,
  exercise,
  social,
  selfCare,
  undefined,
}

extension ReportExtension on Report {
  ReportType get reportType {
    switch (title.toLowerCase()) {
      case 'work':
        return ReportType.work;
      case 'play':
        return ReportType.play;
      case 'study':
        return ReportType.study;
      case 'exercise':
        return ReportType.exercise;
      case 'social':
        return ReportType.social;
      case 'self care':
        return ReportType.selfCare;
      default:
        return ReportType.undefined;
    }
  }
}
