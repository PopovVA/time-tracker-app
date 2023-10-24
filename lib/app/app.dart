import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/core/router/guards/init_guard.dart';
import 'package:time_tracker/core/router/router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_tracker/app/state/app_state_notifier.dart';
import 'package:time_tracker/app/theme/app_theme.dart';
import 'package:time_tracker/app/theme/app_theme_provider.dart';
import 'package:time_tracker/features/splash/presentation/state/splash_state_provider.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends ConsumerState<MyApp> {
  late final AppRouter appRouter;

  @override
  void initState() {
    super.initState();
    appRouter = AppRouter(
      initGuard: InitGuard(
        () => ref.watch(splashStateProvider).maybeWhen(
              appInited: () => true,
              orElse: () => false,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appStateProvider.select((model) => model.theme));
    return AppThemeProvider(
      theme: theme,
      child: MaterialApp.router(
        restorationScopeId: 'app',
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''), // English, no country code
        ],
        onGenerateTitle: (BuildContext context) =>
            AppLocalizations.of(context)!.appTitle,
        theme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.light,
          scaffoldBackgroundColor: AppTheme.light().colors.primary,
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
          scaffoldBackgroundColor: AppTheme.dark().colors.veryDarkBlue,
        ),
        themeMode: theme.themeMode,
        routerDelegate: AutoRouterDelegate(appRouter),
        routeInformationParser: appRouter.defaultRouteParser(),
      ),
    );
  }
}
