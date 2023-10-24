// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Report _$$_ReportFromJson(Map<String, dynamic> json) => _$_Report(
      title: json['title'] as String,
      timeframes:
          Timeframe.fromJson(json['timeframes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReportToJson(_$_Report instance) => <String, dynamic>{
      'title': instance.title,
      'timeframes': instance.timeframes,
    };

_$_Timeframe _$$_TimeframeFromJson(Map<String, dynamic> json) => _$_Timeframe(
      daily: TimeFrameData.fromJson(json['daily'] as Map<String, dynamic>),
      weekly: TimeFrameData.fromJson(json['weekly'] as Map<String, dynamic>),
      monthly: TimeFrameData.fromJson(json['monthly'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TimeframeToJson(_$_Timeframe instance) =>
    <String, dynamic>{
      'daily': instance.daily,
      'weekly': instance.weekly,
      'monthly': instance.monthly,
    };

_$_TimeframeData _$$_TimeframeDataFromJson(Map<String, dynamic> json) =>
    _$_TimeframeData(
      current: json['current'] as int,
      previous: json['previous'] as int,
    );

Map<String, dynamic> _$$_TimeframeDataToJson(_$_TimeframeData instance) =>
    <String, dynamic>{
      'current': instance.current,
      'previous': instance.previous,
    };
