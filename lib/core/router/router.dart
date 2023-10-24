import 'package:auto_route/auto_route.dart';
import 'package:time_tracker/features/report/presentation/ui/report_page.dart';
import 'package:time_tracker/features/splash/presentation/ui/splash_page.dart';

import 'guards/init_guard.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage),
    CustomRoute(
      path: '/',
      page: ReportPage,
      initial: true,
      guards: [InitGuard],
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
