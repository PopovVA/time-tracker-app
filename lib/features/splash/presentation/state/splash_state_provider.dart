import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_tracker/app/state/app_state_notifier.dart';
import 'package:time_tracker/features/report/presentation/state/report_state_provider.dart';
import 'package:time_tracker/features/splash/presentation/state/splash_state.dart';

final splashStateProvider =
    StateNotifierProvider<SplashStateProvider, SplashState>(
  (ref) => SplashStateProvider(
    ref.watch(appStateProvider),
    ref.watch(reportStateProvider.notifier),
  )..init(),
);

class SplashStateProvider extends StateNotifier<SplashState> {
  SplashStateProvider(
    this._appStateProvider,
    this._reportStateProvider,
  ) : super(const SplashState.loading());

  final AppState _appStateProvider;
  final ReportStateProvider _reportStateProvider;

  Future<void> init() async {
    //Fake loading (can be removed)
    await Future.delayed(const Duration(seconds: 1));
    await _appStateProvider.init();
    await _reportStateProvider.init();
    state = const SplashState.appInited();
  }
}
