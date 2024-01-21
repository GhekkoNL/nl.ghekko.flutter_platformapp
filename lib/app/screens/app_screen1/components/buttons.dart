// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:macos_ui/macos_ui.dart';
import '../../../../theme/widget_styling/button_widget_style.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuButtonIntLink(
            onPressed: () {},
            child: LayoutBuilder(builder: (context, constraints) {
              /// Android, linux, Windows & Web
              if (kIsWeb ||
                  Platform.isAndroid ||
                  Platform.isLinux ||
                  Platform.isWindows) {
                return Text('MenuButton for Internal Routing',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center);

                /// iOS, MAC OS
              } else if (Platform.isIOS || Platform.isMacOS) {
                return Text('MenuButton for Internal Routing',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: MacosTheme.of(context)
                        .typography
                        .body
                        .copyWith(fontWeight: FontWeight.bold));

                /// Fuchsia or else
              } else {
                return const Text('MenuButton for Internal Routing',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ));
              }
            })),
        const Gap(15),
        MenuButtonExtLink(
            uri: 'https://ghekko.nl',
            child: LayoutBuilder(builder: (context, constraints) {
              /// Android, linux, Windows & Web
              if (kIsWeb ||
                  Platform.isAndroid ||
                  Platform.isLinux ||
                  Platform.isWindows) {
                return Text('MenuButton for External UrlLauncher links',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center);

                /// iOS, MAC OS
              } else if (Platform.isIOS || Platform.isMacOS) {
                return Text('MenuButton for External UrlLauncher links',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: MacosTheme.of(context)
                        .typography
                        .body
                        .copyWith(fontWeight: FontWeight.bold));

                /// Fuchsia or else
              } else {
                return const Text('MenuButton for External UrlLauncher links',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ));
              }
            })),
        const Gap(15),
        PromoButton(
            onPressed: () {},
            child: LayoutBuilder(builder: (context, constraints) {
              /// Android, linux, Windows & Web
              if (kIsWeb ||
                  Platform.isAndroid ||
                  Platform.isLinux ||
                  Platform.isWindows) {
                return Text('Promo Button',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center);

                /// iOS, MAC OS
              } else if (Platform.isIOS || Platform.isMacOS) {
                return Text('Promo Button',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: MacosTheme.of(context)
                        .typography
                        .body
                        .copyWith(fontWeight: FontWeight.bold));

                /// Fuchsia or else
              } else {
                return const Text('Promo Button',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ));
              }
            })),
        const Gap(15),
        BookingButton(
            onPressed: () {},
            child: LayoutBuilder(builder: (context, constraints) {
              /// Android, linux, Windows & Web
              if (kIsWeb ||
                  Platform.isAndroid ||
                  Platform.isLinux ||
                  Platform.isWindows) {
                return Text('Booking Button',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center);

                /// iOS, MAC OS
              } else if (Platform.isIOS || Platform.isMacOS) {
                return Text('Booking Button',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: MacosTheme.of(context)
                        .typography
                        .body
                        .copyWith(fontWeight: FontWeight.bold));

                /// Fuchsia or else
              } else {
                return const Text('Booking Button',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ));
              }
            })),
      ],
    );
  }
}
