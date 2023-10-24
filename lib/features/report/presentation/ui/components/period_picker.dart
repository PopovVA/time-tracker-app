import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_tracker/app/theme/app_theme_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:time_tracker/features/report/domain/model/time_period.dart';
import 'package:time_tracker/features/report/presentation/state/period_state_provider.dart';

class PeriodPicker extends ConsumerWidget {
  const PeriodPicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = AppThemeProvider.of(context).theme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
        ),
        color: theme.colors.pickerBackground,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _PeriodButton(
            TimePeriod.daily,
            AppLocalizations.of(context)!.daily,
          ),
          _PeriodButton(
              TimePeriod.weekly, AppLocalizations.of(context)!.weekly),
          _PeriodButton(
            TimePeriod.monthly,
            AppLocalizations.of(context)!.monthly,
          ),
        ],
      ),
    );
  }
}

class _PeriodButton extends ConsumerWidget {
  const _PeriodButton(
    this.period,
    this.title,
  );

  final TimePeriod period;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = AppThemeProvider.of(context).theme;
    final activePeriod = ref.watch(periodStateProvider);
    return TextButton(
      onPressed: () {
        ref.read(periodStateProvider.notifier).changePeriod(period);
      },
      child: Text(
        title,
        style: theme.typography.bodyCopy.copyWith(
          fontSize: 16,
          color: activePeriod == period
              ? theme.colors.cardLabel
              : theme.colors.cardLabel.withOpacity(0.7),
        ),
      ),
    );
  }
}
