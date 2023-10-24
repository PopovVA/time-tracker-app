import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_tracker/app/theme/app_theme_provider.dart';
import 'package:time_tracker/features/report/domain/model/report.dart';
import 'package:time_tracker/features/report/presentation/state/period_state_provider.dart';
import 'package:time_tracker/features/report/presentation/state/report_state_provider.dart';
import 'package:time_tracker/features/report/presentation/ui/components/period_picker.dart';
import 'package:time_tracker/features/report/presentation/ui/components/profile_header.dart';
import 'package:time_tracker/features/report/presentation/ui/components/timeframe_card.dart';

class ReportPage extends ConsumerWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerState = ref.watch(reportStateProvider);
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  _Header(),
                  const SizedBox(height: 18),
                  providerState.maybeWhen(
                    data: (report) => _Body(report),
                    empty: () =>
                        _Error(AppLocalizations.of(context)!.emptyReport),
                    error: () => _Error(
                        AppLocalizations.of(context)!.somethingWentWrong),
                    orElse: () => const SizedBox.shrink(),
                  ),
                ],
              ),
            ),
            providerState.maybeWhen(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              orElse: () => const SizedBox.shrink(),
            )
          ],
        ),
      ),
    );
  }
}

class _Error extends ConsumerWidget {
  const _Error(
    this.error,
  );

  final String error;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = AppThemeProvider.of(context).theme;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            error,
            style: theme.typography.bodyCopy.copyWith(
              color: theme.colors.errorColor,
            ),
          ),
          const SizedBox(height: 18),
          OutlinedButton(
            onPressed: () {
              ref.read(reportStateProvider.notifier).getReport();
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.replay_outlined,
                  color: theme.colors.errorColor,
                ),
                const SizedBox(width: 8),
                Text(
                  AppLocalizations.of(context)!.tryAgain,
                  style: theme.typography.bodyCopy.copyWith(
                    color: theme.colors.errorColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context).theme;
    return Container(
      height: 155,
      decoration: BoxDecoration(
        color: theme.colors.pickerBackground,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: const [
          ProfileHeader(),
          PeriodPicker(),
        ],
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body(this.data);

  final List<Report> data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activePeriod = ref.watch(periodStateProvider);
    return Column(
      children: data.map(
        (report) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: TimeframeCard(
              activePeriod,
              report,
            ),
          );
        },
      ).toList(),
    );
  }
}
