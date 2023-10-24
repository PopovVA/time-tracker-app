import 'package:auto_route/auto_route.dart';
import 'package:time_tracker/core/router/router.gr.dart';

typedef IsInited = bool Function();

class InitGuard extends AutoRouteGuard {
  InitGuard(this.isInited);

  final IsInited isInited;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (!isInited()) {
      router.push(SplashRoute(
        onLoad: () {
          resolver.next();
          router.removeWhere((route) => route.name == SplashRoute.name);
        },
      ));
    } else {
      resolver.next();
    }
  }
}
