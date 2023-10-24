import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_tracker/features/report/domain/model/time_period.dart';

final periodStateProvider =
    StateNotifierProvider<PeriodStateProvider, TimePeriod>(
  (ref) => PeriodStateProvider(),
);

class PeriodStateProvider extends StateNotifier<TimePeriod> {
  PeriodStateProvider() : super(TimePeriod.daily);

  Future<void> changePeriod(TimePeriod period) async {
    state = period;
  }
}
