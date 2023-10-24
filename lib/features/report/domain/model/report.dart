import 'package:freezed_annotation/freezed_annotation.dart';

part 'report.freezed.dart';
part 'report.g.dart';

@freezed
class Report with _$Report {
  const factory Report({
    required String title,
    required Timeframe timeframes,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}

@freezed
class Timeframe with _$Timeframe {
  const factory Timeframe({
    required TimeFrameData daily,
    required TimeFrameData weekly,
    required TimeFrameData monthly,
  }) = _Timeframe;

  factory Timeframe.fromJson(Map<String, dynamic> json) =>
      _$TimeframeFromJson(json);
}

@freezed
class TimeFrameData with _$TimeFrameData {
  const factory TimeFrameData({
    required int current,
    required int previous,
  }) = _TimeframeData;

  factory TimeFrameData.fromJson(Map<String, dynamic> json) =>
      _$TimeFrameDataFromJson(json);
}
