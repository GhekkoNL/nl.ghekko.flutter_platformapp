// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platformapp/theme/widget_styling/container_styles.dart';
import 'package:gap/gap.dart';
import 'package:macos_ui/macos_ui.dart';

class MainContainerCard2 extends StatelessWidget {
  const MainContainerCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.08,
              color: Colors.orangeAccent,
              child: LayoutBuilder(builder: (context, constraints) {
                /// Android, linux, Windows & Web
                if (kIsWeb ||
                    Platform.isAndroid ||
                    Platform.isLinux ||
                    Platform.isWindows) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Orange Container',
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.center),
                      const Gap(15),
                      Text('Android, Linux, Windows & Web',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  );

                  /// iOS, MAC OS
                } else if (Platform.isIOS || Platform.isMacOS) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Orange Container',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: MacosTheme.of(context)
                              .typography
                              .body
                              .copyWith(fontWeight: FontWeight.bold)),
                      const Gap(15),
                      Text('iOS MacOS',
                          style: MacosTheme.of(context)
                              .typography
                              .caption1
                              .copyWith(fontWeight: FontWeight.bold)),
                    ],
                  );

                  /// Fuchsia or else
                } else {
                  return const SizedBox();
                }
              }),
            )),
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.08,
              color: Colors.greenAccent,
              child: LayoutBuilder(builder: (context, constraints) {
                /// Android, linux, Windows & Web
                if (kIsWeb ||
                    Platform.isAndroid ||
                    Platform.isLinux ||
                    Platform.isWindows) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Green Container',
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.center),
                      const Gap(15),
                      Text('Android, Linux, Windows & Web',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  );

                  /// iOS, MAC OS
                } else if (Platform.isIOS || Platform.isMacOS) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Green Container',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: MacosTheme.of(context)
                              .typography
                              .body
                              .copyWith(fontWeight: FontWeight.bold)),
                      const Gap(15),
                      Text('iOS MacOS',
                          style: MacosTheme.of(context)
                              .typography
                              .caption1
                              .copyWith(fontWeight: FontWeight.bold)),
                    ],
                  );

                  /// Fuchsia or else
                } else {
                  return const SizedBox();
                }
              }),
            ))
          ],
        ),
        const Gap(15),
        Container(
            decoration: listView,
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: LayoutBuilder(builder: (context, constraints) {
              /// Android, linux, Windows & Web
              if (kIsWeb ||
                  Platform.isAndroid ||
                  Platform.isLinux ||
                  Platform.isWindows) {
                return Center(
                    child: Text('listView ContainerStyle',
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center));

                /// iOS, MAC OS
              } else if (Platform.isIOS || Platform.isMacOS) {
                return Center(
                    child: Text('listView ContainerStyle',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: MacosTheme.of(context)
                            .typography
                            .body
                            .copyWith(fontWeight: FontWeight.bold)));

                /// Fuchsia or else
              } else {
                return const Center(
                    child: Text('listView ContainerStyle',
                        textAlign: TextAlign.center));
              }
            })),
        const Gap(15),
        Container(
            decoration: dealButton,
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: LayoutBuilder(builder: (context, constraints) {
              /// Android, linux, Windows & Web
              if (kIsWeb ||
                  Platform.isAndroid ||
                  Platform.isLinux ||
                  Platform.isWindows) {
                return Center(
                    child: Text('dealButton ContainerStyle',
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center));

                /// iOS, MAC OS
              } else if (Platform.isIOS || Platform.isMacOS) {
                return Center(
                    child: Text('dealButton ContainerStyle',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: MacosTheme.of(context)
                            .typography
                            .body
                            .copyWith(fontWeight: FontWeight.bold)));

                /// Fuchsia or else
              } else {
                return const Center(
                    child: Text('dealButton ContainerStyle',
                        textAlign: TextAlign.center));
              }
            })),
        const Gap(15),
        Container(
            decoration: readMoreButton,
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: LayoutBuilder(builder: (context, constraints) {
              /// Android, linux, Windows & Web
              if (kIsWeb ||
                  Platform.isAndroid ||
                  Platform.isLinux ||
                  Platform.isWindows) {
                return Center(
                    child: Text('readMoreButton ContainerStyle',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center));

                /// iOS, MAC OS
              } else if (Platform.isIOS || Platform.isMacOS) {
                return Center(
                    child: Text('readMoreButton ContainerStyle',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: MacosTheme.of(context).typography.body.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold)));

                /// Fuchsia or else
              } else {
                return const Center(
                    child: Text('readMoreButton ContainerStyle',
                        textAlign: TextAlign.center));
              }
            })),
        const Gap(15),
        Container(
            decoration: blueContainerStyle,
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: LayoutBuilder(builder: (context, constraints) {
              /// Android, linux, Windows & Web
              if (kIsWeb ||
                  Platform.isAndroid ||
                  Platform.isLinux ||
                  Platform.isWindows) {
                return Center(
                    child: Text('blueContainerStyle',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center));

                /// iOS, MAC OS
              } else if (Platform.isIOS || Platform.isMacOS) {
                return Center(
                    child: Text('blueContainerStyle',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: MacosTheme.of(context).typography.body.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold)));

                /// Fuchsia or else
              } else {
                return const Center(
                    child: Text('blueContainerStyle',
                        textAlign: TextAlign.center));
              }
            })),
        const Gap(15),
        Container(
            decoration: bookingButtonContainerStyle,
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: LayoutBuilder(builder: (context, constraints) {
              /// Android, linux, Windows & Web
              if (kIsWeb ||
                  Platform.isAndroid ||
                  Platform.isLinux ||
                  Platform.isWindows) {
                return Center(
                    child: Text('bookingButtonContainerStyle',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center));

                /// iOS, MAC OS
              } else if (Platform.isIOS || Platform.isMacOS) {
                return Center(
                    child: Text('bookingButtonContainerStyle',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: MacosTheme.of(context).typography.body.copyWith(
                            fontWeight: FontWeight.bold)));

                /// Fuchsia or else
              } else {
                return const Center(
                    child: Text('bookingButtonContainerStyle',
                        textAlign: TextAlign.center));
              }
            })),
        const Gap(15),
        Container(
            decoration: greyContainerStyle,
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: LayoutBuilder(builder: (context, constraints) {
              /// Android, linux, Windows & Web
              if (kIsWeb ||
                  Platform.isAndroid ||
                  Platform.isLinux ||
                  Platform.isWindows) {
                return Center(
                    child: Text('greyContainerStyle',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center));

                /// iOS, MAC OS
              } else if (Platform.isIOS || Platform.isMacOS) {
                return Center(
                    child: Text('greyContainerStyle',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: MacosTheme.of(context).typography.body.copyWith(
                            fontWeight: FontWeight.bold)));

                /// Fuchsia or else
              } else {
                return const Center(
                    child: Text('greyContainerStyle',
                        textAlign: TextAlign.center));
              }
            })),
        const Gap(15),
        Container(
            decoration: whiteContainerStyle,
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: LayoutBuilder(builder: (context, constraints) {
              /// Android, linux, Windows & Web
              if (kIsWeb ||
                  Platform.isAndroid ||
                  Platform.isLinux ||
                  Platform.isWindows) {
                return Center(
                    child: Text('whiteContainerStyle',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center));

                /// iOS, MAC OS
              } else if (Platform.isIOS || Platform.isMacOS) {
                return Center(
                    child: Text('whiteContainerStyle',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: MacosTheme.of(context).typography.body.copyWith(
                            fontWeight: FontWeight.bold)));

                /// Fuchsia or else
              } else {
                return const Center(
                    child: Text('whiteContainerStyle',
                        textAlign: TextAlign.center));
              }
            })),
        const Gap(15),
        Container(
            decoration: blackContainerStyle,
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: LayoutBuilder(builder: (context, constraints) {
              /// Android, linux, Windows & Web
              if (kIsWeb ||
                  Platform.isAndroid ||
                  Platform.isLinux ||
                  Platform.isWindows) {
                return Center(
                    child: Text('blackContainerStyle',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center));

                /// iOS, MAC OS
              } else if (Platform.isIOS || Platform.isMacOS) {
                return Center(
                    child: Text('blackContainerStyle',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: MacosTheme.of(context).typography.body.copyWith(
                            fontWeight: FontWeight.bold)));

                /// Fuchsia or else
              } else {
                return const Center(
                    child: Text('blackContainerStyle',
                        textAlign: TextAlign.center));
              }
            })),
      ],
    );
  }
}
