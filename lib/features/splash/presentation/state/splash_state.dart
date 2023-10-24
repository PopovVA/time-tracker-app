import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.appInited() = AppInited;

  const factory SplashState.loading() = AppLoading;
}
