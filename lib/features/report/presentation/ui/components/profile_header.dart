import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_tracker/app/state/app_state_notifier.dart';
import 'package:time_tracker/app/theme/app_theme_provider.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context).theme;
    const avatarRadius = 30.0;
    const avatarBorderRadius = (avatarRadius + 2) * 2;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: theme.colors.blue,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                constraints: const BoxConstraints(
                  minHeight: avatarBorderRadius,
                  minWidth: avatarBorderRadius,
                  maxWidth: avatarBorderRadius,
                  maxHeight: avatarBorderRadius,
                ),
                decoration: BoxDecoration(
                  color: theme.colors.paleBlue,
                  shape: BoxShape.circle,
                ),
              ),
              const CircleAvatar(
                minRadius: avatarRadius,
                maxRadius: avatarRadius,
                backgroundImage: AssetImage('assets/images/image-jeremy.png'),
              ),
            ],
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.reportFor,
                style: theme.typography.bodyCopy.copyWith(
                  fontSize: 16,
                  color: theme.colors.paleBlue,
                ),
              ),
              Text(
                'Jeremy Robson',
                style: theme.typography.bodyCopy.copyWith(
                  fontSize: 20,
                  color: theme.colors.paleBlue,
                ),
              ),
            ],
          ),
          const Spacer(),
          Consumer(
            builder: (context, ref, child) {
              final bool isDarkTheme =
                  ref.read(appStateProvider).theme.themeMode == ThemeMode.dark;
              return IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  ref.read(appStateProvider.notifier).toogleTheme();
                },
                icon: Icon(
                  isDarkTheme ? Icons.dark_mode : Icons.light_mode,
                  color: theme.colors.primary,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
