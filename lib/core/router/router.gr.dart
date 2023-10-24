// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../features/report/presentation/ui/report_page.dart' as _i2;
import '../../features/splash/presentation/ui/splash_page.dart' as _i1;
import 'guards/init_guard.dart' as _i5;

class AppRouter extends _i3.RootStackRouter {
  AppRouter({
    _i4.GlobalKey<_i4.NavigatorState>? navigatorKey,
    required this.initGuard,
  }) : super(navigatorKey);

  final _i5.InitGuard initGuard;

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.SplashPage(
          args.onLoad,
          key: args.key,
        ),
      );
    },
    ReportRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.ReportPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          SplashRoute.name,
          path: '/splash-page',
        ),
        _i3.RouteConfig(
          ReportRoute.name,
          path: '/',
          guards: [initGuard],
        ),
        _i3.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i3.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    required void Function() onLoad,
    _i4.Key? key,
  }) : super(
          SplashRoute.name,
          path: '/splash-page',
          args: SplashRouteArgs(
            onLoad: onLoad,
            key: key,
          ),
        );

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({
    required this.onLoad,
    this.key,
  });

  final void Function() onLoad;

  final _i4.Key? key;

  @override
  String toString() {
    return 'SplashRouteArgs{onLoad: $onLoad, key: $key}';
  }
}

/// generated route for
/// [_i2.ReportPage]
class ReportRoute extends _i3.PageRouteInfo<void> {
  const ReportRoute()
      : super(
          ReportRoute.name,
          path: '/',
        );

  static const String name = 'ReportRoute';
}
