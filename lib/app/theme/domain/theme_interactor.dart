import 'package:time_tracker/app/theme/app_theme.dart';

abstract class IThemeInteractor {
  Future<void> toogleTheme();
  Future<AppTheme> getCurrentTheme();
}
