// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReportState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function(List<Report> report) data,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function(List<Report> report)? data,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function(List<Report> report)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReportError value) error,
    required TResult Function(ReportInitial value) initial,
    required TResult Function(ReportData value) data,
    required TResult Function(ReportEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReportError value)? error,
    TResult? Function(ReportInitial value)? initial,
    TResult? Function(ReportData value)? data,
    TResult? Function(ReportEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportError value)? error,
    TResult Function(ReportInitial value)? initial,
    TResult Function(ReportData value)? data,
    TResult Function(ReportEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStateCopyWith<$Res> {
  factory $ReportStateCopyWith(
          ReportState value, $Res Function(ReportState) then) =
      _$ReportStateCopyWithImpl<$Res, ReportState>;
}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res, $Val extends ReportState>
    implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReportErrorCopyWith<$Res> {
  factory _$$ReportErrorCopyWith(
          _$ReportError value, $Res Function(_$ReportError) then) =
      __$$ReportErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReportErrorCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$ReportError>
    implements _$$ReportErrorCopyWith<$Res> {
  __$$ReportErrorCopyWithImpl(
      _$ReportError _value, $Res Function(_$ReportError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReportError implements ReportError {
  const _$ReportError();

  @override
  String toString() {
    return 'ReportState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReportError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function(List<Report> report) data,
    required TResult Function() empty,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function(List<Report> report)? data,
    TResult? Function()? empty,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function(List<Report> report)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReportError value) error,
    required TResult Function(ReportInitial value) initial,
    required TResult Function(ReportData value) data,
    required TResult Function(ReportEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReportError value)? error,
    TResult? Function(ReportInitial value)? initial,
    TResult? Function(ReportData value)? data,
    TResult? Function(ReportEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportError value)? error,
    TResult Function(ReportInitial value)? initial,
    TResult Function(ReportData value)? data,
    TResult Function(ReportEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ReportError implements ReportState {
  const factory ReportError() = _$ReportError;
}

/// @nodoc
abstract class _$$ReportInitialCopyWith<$Res> {
  factory _$$ReportInitialCopyWith(
          _$ReportInitial value, $Res Function(_$ReportInitial) then) =
      __$$ReportInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReportInitialCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$ReportInitial>
    implements _$$ReportInitialCopyWith<$Res> {
  __$$ReportInitialCopyWithImpl(
      _$ReportInitial _value, $Res Function(_$ReportInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReportInitial implements ReportInitial {
  const _$ReportInitial();

  @override
  String toString() {
    return 'ReportState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReportInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function(List<Report> report) data,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function(List<Report> report)? data,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function(List<Report> report)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReportError value) error,
    required TResult Function(ReportInitial value) initial,
    required TResult Function(ReportData value) data,
    required TResult Function(ReportEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReportError value)? error,
    TResult? Function(ReportInitial value)? initial,
    TResult? Function(ReportData value)? data,
    TResult? Function(ReportEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportError value)? error,
    TResult Function(ReportInitial value)? initial,
    TResult Function(ReportData value)? data,
    TResult Function(ReportEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ReportInitial implements ReportState {
  const factory ReportInitial() = _$ReportInitial;
}

/// @nodoc
abstract class _$$ReportDataCopyWith<$Res> {
  factory _$$ReportDataCopyWith(
          _$ReportData value, $Res Function(_$ReportData) then) =
      __$$ReportDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Report> report});
}

/// @nodoc
class __$$ReportDataCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$ReportData>
    implements _$$ReportDataCopyWith<$Res> {
  __$$ReportDataCopyWithImpl(
      _$ReportData _value, $Res Function(_$ReportData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? report = null,
  }) {
    return _then(_$ReportData(
      report: null == report
          ? _value._report
          : report // ignore: cast_nullable_to_non_nullable
              as List<Report>,
    ));
  }
}

/// @nodoc

class _$ReportData implements ReportData {
  const _$ReportData({required final List<Report> report}) : _report = report;

  final List<Report> _report;
  @override
  List<Report> get report {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_report);
  }

  @override
  String toString() {
    return 'ReportState.data(report: $report)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportData &&
            const DeepCollectionEquality().equals(other._report, _report));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_report));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportDataCopyWith<_$ReportData> get copyWith =>
      __$$ReportDataCopyWithImpl<_$ReportData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function(List<Report> report) data,
    required TResult Function() empty,
  }) {
    return data(report);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function(List<Report> report)? data,
    TResult? Function()? empty,
  }) {
    return data?.call(report);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function(List<Report> report)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(report);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReportError value) error,
    required TResult Function(ReportInitial value) initial,
    required TResult Function(ReportData value) data,
    required TResult Function(ReportEmpty value) empty,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReportError value)? error,
    TResult? Function(ReportInitial value)? initial,
    TResult? Function(ReportData value)? data,
    TResult? Function(ReportEmpty value)? empty,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportError value)? error,
    TResult Function(ReportInitial value)? initial,
    TResult Function(ReportData value)? data,
    TResult Function(ReportEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ReportData implements ReportState {
  const factory ReportData({required final List<Report> report}) = _$ReportData;

  List<Report> get report;
  @JsonKey(ignore: true)
  _$$ReportDataCopyWith<_$ReportData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReportEmptyCopyWith<$Res> {
  factory _$$ReportEmptyCopyWith(
          _$ReportEmpty value, $Res Function(_$ReportEmpty) then) =
      __$$ReportEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReportEmptyCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$ReportEmpty>
    implements _$$ReportEmptyCopyWith<$Res> {
  __$$ReportEmptyCopyWithImpl(
      _$ReportEmpty _value, $Res Function(_$ReportEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReportEmpty implements ReportEmpty {
  const _$ReportEmpty();

  @override
  String toString() {
    return 'ReportState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReportEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function(List<Report> report) data,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function(List<Report> report)? data,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function(List<Report> report)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReportError value) error,
    required TResult Function(ReportInitial value) initial,
    required TResult Function(ReportData value) data,
    required TResult Function(ReportEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReportError value)? error,
    TResult? Function(ReportInitial value)? initial,
    TResult? Function(ReportData value)? data,
    TResult? Function(ReportEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportError value)? error,
    TResult Function(ReportInitial value)? initial,
    TResult Function(ReportData value)? data,
    TResult Function(ReportEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ReportEmpty implements ReportState {
  const factory ReportEmpty() = _$ReportEmpty;
}
