// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Report _$ReportFromJson(Map<String, dynamic> json) {
  return _Report.fromJson(json);
}

/// @nodoc
mixin _$Report {
  String get title => throw _privateConstructorUsedError;
  Timeframe get timeframes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportCopyWith<Report> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res, Report>;
  @useResult
  $Res call({String title, Timeframe timeframes});

  $TimeframeCopyWith<$Res> get timeframes;
}

/// @nodoc
class _$ReportCopyWithImpl<$Res, $Val extends Report>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? timeframes = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      timeframes: null == timeframes
          ? _value.timeframes
          : timeframes // ignore: cast_nullable_to_non_nullable
              as Timeframe,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeframeCopyWith<$Res> get timeframes {
    return $TimeframeCopyWith<$Res>(_value.timeframes, (value) {
      return _then(_value.copyWith(timeframes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReportCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$$_ReportCopyWith(_$_Report value, $Res Function(_$_Report) then) =
      __$$_ReportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, Timeframe timeframes});

  @override
  $TimeframeCopyWith<$Res> get timeframes;
}

/// @nodoc
class __$$_ReportCopyWithImpl<$Res>
    extends _$ReportCopyWithImpl<$Res, _$_Report>
    implements _$$_ReportCopyWith<$Res> {
  __$$_ReportCopyWithImpl(_$_Report _value, $Res Function(_$_Report) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? timeframes = null,
  }) {
    return _then(_$_Report(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      timeframes: null == timeframes
          ? _value.timeframes
          : timeframes // ignore: cast_nullable_to_non_nullable
              as Timeframe,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Report implements _Report {
  const _$_Report({required this.title, required this.timeframes});

  factory _$_Report.fromJson(Map<String, dynamic> json) =>
      _$$_ReportFromJson(json);

  @override
  final String title;
  @override
  final Timeframe timeframes;

  @override
  String toString() {
    return 'Report(title: $title, timeframes: $timeframes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Report &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.timeframes, timeframes) ||
                other.timeframes == timeframes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, timeframes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportCopyWith<_$_Report> get copyWith =>
      __$$_ReportCopyWithImpl<_$_Report>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportToJson(
      this,
    );
  }
}

abstract class _Report implements Report {
  const factory _Report(
      {required final String title,
      required final Timeframe timeframes}) = _$_Report;

  factory _Report.fromJson(Map<String, dynamic> json) = _$_Report.fromJson;

  @override
  String get title;
  @override
  Timeframe get timeframes;
  @override
  @JsonKey(ignore: true)
  _$$_ReportCopyWith<_$_Report> get copyWith =>
      throw _privateConstructorUsedError;
}

Timeframe _$TimeframeFromJson(Map<String, dynamic> json) {
  return _Timeframe.fromJson(json);
}

/// @nodoc
mixin _$Timeframe {
  TimeFrameData get daily => throw _privateConstructorUsedError;
  TimeFrameData get weekly => throw _privateConstructorUsedError;
  TimeFrameData get monthly => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeframeCopyWith<Timeframe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeframeCopyWith<$Res> {
  factory $TimeframeCopyWith(Timeframe value, $Res Function(Timeframe) then) =
      _$TimeframeCopyWithImpl<$Res, Timeframe>;
  @useResult
  $Res call({TimeFrameData daily, TimeFrameData weekly, TimeFrameData monthly});

  $TimeFrameDataCopyWith<$Res> get daily;
  $TimeFrameDataCopyWith<$Res> get weekly;
  $TimeFrameDataCopyWith<$Res> get monthly;
}

/// @nodoc
class _$TimeframeCopyWithImpl<$Res, $Val extends Timeframe>
    implements $TimeframeCopyWith<$Res> {
  _$TimeframeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daily = null,
    Object? weekly = null,
    Object? monthly = null,
  }) {
    return _then(_value.copyWith(
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as TimeFrameData,
      weekly: null == weekly
          ? _value.weekly
          : weekly // ignore: cast_nullable_to_non_nullable
              as TimeFrameData,
      monthly: null == monthly
          ? _value.monthly
          : monthly // ignore: cast_nullable_to_non_nullable
              as TimeFrameData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeFrameDataCopyWith<$Res> get daily {
    return $TimeFrameDataCopyWith<$Res>(_value.daily, (value) {
      return _then(_value.copyWith(daily: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeFrameDataCopyWith<$Res> get weekly {
    return $TimeFrameDataCopyWith<$Res>(_value.weekly, (value) {
      return _then(_value.copyWith(weekly: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeFrameDataCopyWith<$Res> get monthly {
    return $TimeFrameDataCopyWith<$Res>(_value.monthly, (value) {
      return _then(_value.copyWith(monthly: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TimeframeCopyWith<$Res> implements $TimeframeCopyWith<$Res> {
  factory _$$_TimeframeCopyWith(
          _$_Timeframe value, $Res Function(_$_Timeframe) then) =
      __$$_TimeframeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TimeFrameData daily, TimeFrameData weekly, TimeFrameData monthly});

  @override
  $TimeFrameDataCopyWith<$Res> get daily;
  @override
  $TimeFrameDataCopyWith<$Res> get weekly;
  @override
  $TimeFrameDataCopyWith<$Res> get monthly;
}

/// @nodoc
class __$$_TimeframeCopyWithImpl<$Res>
    extends _$TimeframeCopyWithImpl<$Res, _$_Timeframe>
    implements _$$_TimeframeCopyWith<$Res> {
  __$$_TimeframeCopyWithImpl(
      _$_Timeframe _value, $Res Function(_$_Timeframe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daily = null,
    Object? weekly = null,
    Object? monthly = null,
  }) {
    return _then(_$_Timeframe(
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as TimeFrameData,
      weekly: null == weekly
          ? _value.weekly
          : weekly // ignore: cast_nullable_to_non_nullable
              as TimeFrameData,
      monthly: null == monthly
          ? _value.monthly
          : monthly // ignore: cast_nullable_to_non_nullable
              as TimeFrameData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Timeframe implements _Timeframe {
  const _$_Timeframe(
      {required this.daily, required this.weekly, required this.monthly});

  factory _$_Timeframe.fromJson(Map<String, dynamic> json) =>
      _$$_TimeframeFromJson(json);

  @override
  final TimeFrameData daily;
  @override
  final TimeFrameData weekly;
  @override
  final TimeFrameData monthly;

  @override
  String toString() {
    return 'Timeframe(daily: $daily, weekly: $weekly, monthly: $monthly)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Timeframe &&
            (identical(other.daily, daily) || other.daily == daily) &&
            (identical(other.weekly, weekly) || other.weekly == weekly) &&
            (identical(other.monthly, monthly) || other.monthly == monthly));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, daily, weekly, monthly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeframeCopyWith<_$_Timeframe> get copyWith =>
      __$$_TimeframeCopyWithImpl<_$_Timeframe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeframeToJson(
      this,
    );
  }
}

abstract class _Timeframe implements Timeframe {
  const factory _Timeframe(
      {required final TimeFrameData daily,
      required final TimeFrameData weekly,
      required final TimeFrameData monthly}) = _$_Timeframe;

  factory _Timeframe.fromJson(Map<String, dynamic> json) =
      _$_Timeframe.fromJson;

  @override
  TimeFrameData get daily;
  @override
  TimeFrameData get weekly;
  @override
  TimeFrameData get monthly;
  @override
  @JsonKey(ignore: true)
  _$$_TimeframeCopyWith<_$_Timeframe> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeFrameData _$TimeFrameDataFromJson(Map<String, dynamic> json) {
  return _TimeframeData.fromJson(json);
}

/// @nodoc
mixin _$TimeFrameData {
  int get current => throw _privateConstructorUsedError;
  int get previous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeFrameDataCopyWith<TimeFrameData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeFrameDataCopyWith<$Res> {
  factory $TimeFrameDataCopyWith(
          TimeFrameData value, $Res Function(TimeFrameData) then) =
      _$TimeFrameDataCopyWithImpl<$Res, TimeFrameData>;
  @useResult
  $Res call({int current, int previous});
}

/// @nodoc
class _$TimeFrameDataCopyWithImpl<$Res, $Val extends TimeFrameData>
    implements $TimeFrameDataCopyWith<$Res> {
  _$TimeFrameDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? previous = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      previous: null == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimeframeDataCopyWith<$Res>
    implements $TimeFrameDataCopyWith<$Res> {
  factory _$$_TimeframeDataCopyWith(
          _$_TimeframeData value, $Res Function(_$_TimeframeData) then) =
      __$$_TimeframeDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int current, int previous});
}

/// @nodoc
class __$$_TimeframeDataCopyWithImpl<$Res>
    extends _$TimeFrameDataCopyWithImpl<$Res, _$_TimeframeData>
    implements _$$_TimeframeDataCopyWith<$Res> {
  __$$_TimeframeDataCopyWithImpl(
      _$_TimeframeData _value, $Res Function(_$_TimeframeData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? previous = null,
  }) {
    return _then(_$_TimeframeData(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      previous: null == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeframeData implements _TimeframeData {
  const _$_TimeframeData({required this.current, required this.previous});

  factory _$_TimeframeData.fromJson(Map<String, dynamic> json) =>
      _$$_TimeframeDataFromJson(json);

  @override
  final int current;
  @override
  final int previous;

  @override
  String toString() {
    return 'TimeFrameData(current: $current, previous: $previous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeframeData &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.previous, previous) ||
                other.previous == previous));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current, previous);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeframeDataCopyWith<_$_TimeframeData> get copyWith =>
      __$$_TimeframeDataCopyWithImpl<_$_TimeframeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeframeDataToJson(
      this,
    );
  }
}

abstract class _TimeframeData implements TimeFrameData {
  const factory _TimeframeData(
      {required final int current,
      required final int previous}) = _$_TimeframeData;

  factory _TimeframeData.fromJson(Map<String, dynamic> json) =
      _$_TimeframeData.fromJson;

  @override
  int get current;
  @override
  int get previous;
  @override
  @JsonKey(ignore: true)
  _$$_TimeframeDataCopyWith<_$_TimeframeData> get copyWith =>
      throw _privateConstructorUsedError;
}
