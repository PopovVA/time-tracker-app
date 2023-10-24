import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:time_tracker/app/theme/app_theme_provider.dart';
import 'package:time_tracker/core/extensions/report_extension.dart';
import 'package:time_tracker/features/report/domain/model/report.dart';
import 'package:time_tracker/features/report/domain/model/time_period.dart';
import 'package:time_tracker/features/report/presentation/ui/components/add_time_dialog.dart';
import 'package:time_tracker/utils/formatters.dart';

class TimeframeCard extends StatelessWidget {
  const TimeframeCard(
    this.period,
    this.report, {
    super.key,
  });

  final TimePeriod period;
  final Report report;

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context).theme;
    return SizedBox(
      height: 160,
      child: Stack(
        children: [
          _ReportTypeCard(report.reportType),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: theme.colors.cardColor,
              ),
              padding: const EdgeInsets.all(18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        report.title,
                        style: theme.typography.bodyCopy.copyWith(
                          color: theme.colors.cardLabel,
                        ),
                      ),
                      const SizedBox(height: 18),
                      _CurrentTime(
                        report.timeframes,
                        period,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: false,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(18),
                              ),
                            ),
                            elevation: 0,
                            context: context,
                            backgroundColor: theme.colors.bottomSheetBg,
                            builder: (_) => AddTimeDialog(period, report),
                          );
                        },
                        borderRadius: BorderRadius.circular(18),
                        child: Icon(
                          Icons.adaptive.more,
                          color: theme.colors.paleBlue,
                        ),
                      ),
                      const SizedBox(height: 24),
                      _PreviousTime(
                        report.timeframes,
                        period,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ReportTypeCard extends StatelessWidget {
  const _ReportTypeCard(
    this.reportType,
  );

  final ReportType reportType;

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context).theme;
    Color color = theme.colors.lightRed;
    String iconPath;
    switch (reportType) {
      case ReportType.work:
        color = theme.colors.lightRed;
        iconPath = 'assets/images/icon-work.svg';
        break;
      case ReportType.play:
        color = theme.colors.softBlue;
        iconPath = 'assets/images/icon-play.svg';
        break;
      case ReportType.study:
        color = theme.colors.lightRedStudy;
        iconPath = 'assets/images/icon-study.svg';
        break;
      case ReportType.exercise:
        color = theme.colors.limeGreen;
        iconPath = 'assets/images/icon-exercise.svg';
        break;
      case ReportType.social:
        color = theme.colors.violet;
        iconPath = 'assets/images/icon-social.svg';
        break;
      case ReportType.selfCare:
        color = theme.colors.softOrange;
        iconPath = 'assets/images/icon-self-care.svg';
        break;
      case ReportType.undefined:
        iconPath = '';
        break;
    }
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      alignment: const Alignment(0.8, -1),
      child: iconPath.isNotEmpty
          ? SvgPicture.asset(iconPath)
          : const SizedBox.shrink(),
    );
  }
}

class _CurrentTime extends StatelessWidget {
  const _CurrentTime(this.timeframe, this.period);

  final Timeframe timeframe;
  final TimePeriod period;

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context).theme;
    int hours = 0;
    switch (period) {
      case TimePeriod.daily:
        hours = timeframe.daily.current;
        break;
      case TimePeriod.weekly:
        hours = timeframe.weekly.current;
        break;
      case TimePeriod.monthly:
        hours = timeframe.monthly.current;
        break;
    }
    return Text(
      '$hours ${Formatters.formatHours(hours)}',
      style: theme.typography.bodyCopy.copyWith(
        fontSize: 22,
        color: theme.colors.cardLabel,
      ),
    );
  }
}

class _PreviousTime extends StatelessWidget {
  const _PreviousTime(this.timeframe, this.period);

  final Timeframe timeframe;
  final TimePeriod period;

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context).theme;
    int hours = 0;
    String label = '';
    switch (period) {
      case TimePeriod.daily:
        label = AppLocalizations.of(context)!.yesterday;
        hours = timeframe.daily.previous;
        break;
      case TimePeriod.weekly:
        label = AppLocalizations.of(context)!.lastWeek;
        hours = timeframe.weekly.previous;
        break;
      case TimePeriod.monthly:
        label = AppLocalizations.of(context)!.lastMonth;
        hours = timeframe.monthly.previous;
        break;
    }
    return Text(
      '$label $hours ${Formatters.formatHours(hours)}',
      style: theme.typography.bodyCopy.copyWith(
        fontSize: 14,
        color: theme.colors.paleBlue,
      ),
    );
  }
}
