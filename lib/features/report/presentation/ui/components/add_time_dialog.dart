import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_tracker/app/theme/app_theme_provider.dart';
import 'package:time_tracker/features/report/domain/model/report.dart';
import 'package:time_tracker/features/report/domain/model/time_period.dart';
import 'package:time_tracker/features/report/presentation/state/report_state_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddTimeDialog extends ConsumerStatefulWidget {
  const AddTimeDialog(
    this.period,
    this.report, {
    super.key,
  });

  final TimePeriod period;
  final Report report;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _AddTimeDialogState();
  }
}

class _AddTimeDialogState extends ConsumerState<AddTimeDialog> {
  TimePeriod get period => widget.period;
  Report get report => widget.report;
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _addTime() async {
    await ref.read(reportStateProvider.notifier).addTime(
          report,
          period,
          _controller.text,
        );
    context.router.pop();
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context).theme;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          right: 20,
          left: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 18),
            TextField(
              onEditingComplete: _addTime,
              autofocus: true,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              style: theme.typography.bodyCopy
                  .copyWith(color: theme.colors.textFieldColor),
              autocorrect: false,
              cursorColor: theme.colors.textFieldColor,
              keyboardType: TextInputType.number,
              controller: _controller,
              decoration: InputDecoration(
                hintStyle: theme.typography.bodyCopy.copyWith(
                  color: theme.colors.textFieldColor.withOpacity(0.5),
                ),
                hintText: AppLocalizations.of(context)!.addHours,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: theme.colors.textFieldColor,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: theme.colors.textFieldColor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 9),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(theme.colors.cardColor),
                ),
                onPressed: _addTime,
                child: SizedBox(
                  width: 60,
                  child: Text(
                    AppLocalizations.of(context)!.save,
                    textAlign: TextAlign.center,
                    style: theme.typography.bodyCopy.copyWith(
                      fontSize: 16,
                      color: theme.colors.cardLabel,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 9),
          ],
        ),
      ),
    );
  }
}
