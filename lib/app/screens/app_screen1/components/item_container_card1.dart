// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:macos_ui/macos_ui.dart';

class ItemContainerCard1 extends StatelessWidget {
  const ItemContainerCard1({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      /// Android, linux, Windows & Web
      if (kIsWeb ||
          Platform.isAndroid ||
          Platform.isLinux ||
          Platform.isWindows) {
        return Column(
          children: [
            Text('Item Container Card for Android, Linux, Windows and Web',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center),
            const Gap(15),
            Text(
                'This Container Card is a MaterialWidget so it can be placed'
                    ' in any framework or platform.',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        );

        /// iOS, MAC OS
      } else if (Platform.isIOS || Platform.isMacOS) {
        return Column(
          children: [
            Text('Item Container Card for for iOS & MacOS',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: MacosTheme.of(context).typography.body
                    .copyWith(fontWeight: FontWeight.bold)),
            const Gap(15),
            Text(
                'This Container Card is a MaterialWidget so it can be placed'
                    ' in any framework or platform.',
                style: MacosTheme.of(context).typography.caption1
                    .copyWith(fontWeight: FontWeight.bold)),
          ],
        );

        /// Fuchsia or else
      } else {
        return const SizedBox();
      }
    });
  }
}
