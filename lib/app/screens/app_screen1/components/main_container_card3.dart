// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:macos_ui/macos_ui.dart';

class MainContainerCard3 extends StatelessWidget {
  const MainContainerCard3({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      /// Android, iOS, linux, Windows & Web
      if (kIsWeb ||
          Platform.isAndroid ||
          Platform.isLinux ||
          Platform.isWindows) {
        return Column(
          children: [
            Text(
                'Text in the Container for Android, Linux, Windows and Web',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center),
            const Gap(15),
            Text(
                'This is the first element that will adjust to screensize '
                    'when it\'s a tablet or larger.',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center),
          ],
        );

        /// MAC OS
      } else if (Platform.isIOS ||Platform.isMacOS) {
        return Column(
          children: [
            Text('Text in the Container for iOS & MacOS',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: MacosTheme.of(context).typography.body
                    .copyWith(fontWeight: FontWeight.bold)),
            const Gap(15),
            Text(
                'This is the first element that will adjust to screensize '
                    'when it\'s a tablet or larger.',
                style: MacosTheme.of(context).typography.caption1
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          ],
        );

        /// Fuchsia or else
      } else {
        return const SizedBox();
      }
    });
  }
}
