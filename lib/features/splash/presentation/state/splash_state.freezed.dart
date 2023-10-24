// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appInited,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appInited,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appInited,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInited value) appInited,
    required TResult Function(AppLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInited value)? appInited,
    TResult? Function(AppLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInited value)? appInited,
    TResult Function(AppLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppInitedCopyWith<$Res> {
  factory _$$AppInitedCopyWith(
          _$AppInited value, $Res Function(_$AppInited) then) =
      __$$AppInitedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppInitedCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$AppInited>
    implements _$$AppInitedCopyWith<$Res> {
  __$$AppInitedCopyWithImpl(
      _$AppInited _value, $Res Function(_$AppInited) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppInited implements AppInited {
  const _$AppInited();

  @override
  String toString() {
    return 'SplashState.appInited()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppInited);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appInited,
    required TResult Function() loading,
  }) {
    return appInited();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appInited,
    TResult? Function()? loading,
  }) {
    return appInited?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appInited,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (appInited != null) {
      return appInited();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInited value) appInited,
    required TResult Function(AppLoading value) loading,
  }) {
    return appInited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInited value)? appInited,
    TResult? Function(AppLoading value)? loading,
  }) {
    return appInited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInited value)? appInited,
    TResult Function(AppLoading value)? loading,
    required TResult orElse(),
  }) {
    if (appInited != null) {
      return appInited(this);
    }
    return orElse();
  }
}

abstract class AppInited implements SplashState {
  const factory AppInited() = _$AppInited;
}

/// @nodoc
abstract class _$$AppLoadingCopyWith<$Res> {
  factory _$$AppLoadingCopyWith(
          _$AppLoading value, $Res Function(_$AppLoading) then) =
      __$$AppLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppLoadingCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$AppLoading>
    implements _$$AppLoadingCopyWith<$Res> {
  __$$AppLoadingCopyWithImpl(
      _$AppLoading _value, $Res Function(_$AppLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppLoading implements AppLoading {
  const _$AppLoading();

  @override
  String toString() {
    return 'SplashState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appInited,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appInited,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appInited,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInited value) appInited,
    required TResult Function(AppLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInited value)? appInited,
    TResult? Function(AppLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInited value)? appInited,
    TResult Function(AppLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AppLoading implements SplashState {
  const factory AppLoading() = _$AppLoading;
}
