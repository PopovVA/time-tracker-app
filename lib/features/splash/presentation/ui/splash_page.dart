import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_tracker/features/splash/presentation/state/splash_state_provider.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage(
    this.onLoad, {
    super.key,
  });

  final VoidCallback onLoad;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(splashStateProvider);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      state.maybeMap(
        appInited: (value) => onLoad(),
        orElse: () => null,
      );
    });
    return const Scaffold(
      backgroundColor: Color(0xff0F1424),
      body: SafeArea(
        child: Center(
          //ToDo can be replaced with app logo
          child: FlutterLogo(
            size: 120,
            curve: Curves.bounceInOut,
            style: FlutterLogoStyle.stacked,
            duration: Duration(seconds: 2),
          ),
        ),
      ),
    );
  }
}
