// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:macos_ui/macos_ui.dart';
import '../../../../constants/os_type.dart';

class TypographyStyle extends StatelessWidget {
  const TypographyStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      /// Android, linux, Windows & Web
      if (OS.droid || OS.web || OS.isLinuxAndWindows) {
        return Column(
          children: [
            const Gap(10),
            Text('Typography of the AppTheme',
                style: Theme.of(context).textTheme.titleMedium),
            const Gap(20),
            const Divider(),
            const Gap(5),
            Text('Headline Large',
                style: Theme.of(context).textTheme.headlineLarge),
            const Gap(5),
            Text('Font Family: Montserrat & Adaptive',
                style: Theme.of(context).textTheme.bodySmall),
            const Gap(5),
            const Divider(),
            const Gap(5),
            Text('Headline Medium',
                style: Theme.of(context).textTheme.headlineMedium),
            const Gap(5),
            Text('Font Family: WorkSans',
                style: Theme.of(context).textTheme.bodySmall),
            const Gap(5),
            const Divider(),
            const Gap(5),
            Text('Headline Small',
                style: Theme.of(context).textTheme.headlineSmall),
            const Gap(5),
            Text('Font Family: GoogleSans',
                style: Theme.of(context).textTheme.bodySmall),
            const Gap(5),
            const Divider(),
            const Gap(5),
            Text('Title Large', style: Theme.of(context).textTheme.titleLarge),
            const Gap(5),
            Text('Font Family: Montserrat & Adaptive',
                style: Theme.of(context).textTheme.bodySmall),
            const Gap(5),
            const Divider(),
            const Gap(5),
            Text('Title Medium',
                style: Theme.of(context).textTheme.titleMedium),
            const Gap(5),
            Text('Font Family: WorkSans',
                style: Theme.of(context).textTheme.bodySmall),
            const Gap(5),
            const Divider(),
            const Gap(5),
            Text('Title Small', style: Theme.of(context).textTheme.titleSmall),
            const Gap(5),
            Text('Font Family: GoogleSans',
                style: Theme.of(context).textTheme.bodySmall),
            const Gap(5),
            const Divider(),
            const Gap(5),
            Text('Body Large', style: Theme.of(context).textTheme.bodyLarge),
            const Gap(5),
            Text('Font Family: Montserrat & Adaptive',
                style: Theme.of(context).textTheme.bodySmall),
            const Gap(5),
            const Divider(),
            const Gap(5),
            Text('Body Medium', style: Theme.of(context).textTheme.bodyMedium),
            const Gap(5),
            Text('Font Family: WorkSans',
                style: Theme.of(context).textTheme.bodySmall),
            const Gap(5),
            const Divider(),
            const Gap(5),
            Text('Body Small', style: Theme.of(context).textTheme.bodySmall),
            const Gap(5),
            Text('Font Family: GoogleSans',
                style: Theme.of(context).textTheme.bodySmall),
            const Gap(5),
            const Divider(),
            const Gap(5),
            Text('Label Large', style: Theme.of(context).textTheme.labelLarge),
            const Gap(5),
            Text('Font Family: Montserrat & Adaptive',
                style: Theme.of(context).textTheme.bodySmall),
            const Gap(5),
            const Divider(),
            const Gap(5),
            Text('Label Medium',
                style: Theme.of(context).textTheme.labelMedium),
            const Gap(5),
            Text('Font Family: WorkSans',
                style: Theme.of(context).textTheme.bodySmall),
            const Gap(5),
            const Divider(),
            const Gap(5),
            Text('Label Small', style: Theme.of(context).textTheme.labelSmall),
            const Gap(5),
            Text('Font Family: GoogleSans',
                style: Theme.of(context).textTheme.bodySmall),
            const Gap(20),
          ],
        );

        /// iOS, MAC OS
      } else if (OS.mac || OS.ios) {
        return Column(
          children: [
            const Gap(10),
            Text('LargeTitle', style: MacosTypography.of(context).largeTitle),
            const Gap(5),
            Text(
              'LargeTitle',
              style: MacosTypography.of(context)
                  .largeTitle
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            const Gap(15),
            Text('Title1', style: MacosTypography.of(context).title1),
            const Gap(5),
            Text(
              'Title1',
              style: MacosTypography.of(context)
                  .title1
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            const Gap(15),
            Text('Title2', style: MacosTypography.of(context).title2),
            const Gap(5),
            Text(
              'Title2',
              style: MacosTypography.of(context)
                  .title2
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            const Gap(15),
            Text('Title3', style: MacosTypography.of(context).title3),
            const Gap(5),
            Text(
              'Title3',
              style: MacosTypography.of(context)
                  .title3
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            const Gap(15),
            Text('Headline', style: MacosTypography.of(context).headline),
            const Gap(5),
            Text(
              'Headline',
              style: MacosTypography.of(context)
                  .headline
                  .copyWith(fontWeight: MacosFontWeight.w860),
            ),
            const Gap(15),
            Text('Body', style: MacosTypography.of(context).body),
            const Gap(5),
            Text(
              'Body',
              style: MacosTypography.of(context)
                  .body
                  .copyWith(fontWeight: MacosFontWeight.w590),
            ),
            const Gap(15),
            Text('Callout', style: MacosTypography.of(context).callout),
            const Gap(5),
            Text(
              'Callout',
              style: MacosTypography.of(context)
                  .callout
                  .copyWith(fontWeight: MacosFontWeight.w590),
            ),
            const Gap(15),
            Text('Subheadline', style: MacosTypography.of(context).subheadline),
            const Gap(5),
            Text(
              'Subheadline',
              style: MacosTypography.of(context)
                  .subheadline
                  .copyWith(fontWeight: MacosFontWeight.w590),
            ),
            const Gap(15),
            Text('Footnote', style: MacosTypography.of(context).subheadline),
            const Gap(5),
            Text(
              'Footnote',
              style: MacosTypography.of(context)
                  .subheadline
                  .copyWith(fontWeight: MacosFontWeight.w590),
            ),
            const Gap(15),
            Text('Caption1', style: MacosTypography.of(context).caption1),
            const Gap(5),
            Text(
              'Caption1',
              style: MacosTypography.of(context)
                  .caption1
                  .copyWith(fontWeight: MacosFontWeight.w510),
            ),
            const Gap(15),
            Text('Caption2', style: MacosTypography.of(context).caption2),
            const Gap(5),
            Text(
              'Caption2',
              style: MacosTypography.of(context)
                  .caption2
                  .copyWith(fontWeight: MacosFontWeight.w590),
            ),
          ],
        );

        /// Fuchsia or else
      } else {
        return const SizedBox();
      }
    });
  }
}
