// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/link.dart';
import 'mac_screens/mac_screen1.dart';
import 'mac_screens/mac_screen2.dart';
import 'mac_screens/mac_screen3.dart';
import 'mac_screens/mac_screen4.dart';
import 'macos_platform_menu.dart';

class MacApp extends StatefulWidget {
  const MacApp({super.key, required this.title});
  final String title;

  @override
  State createState() => MacAppState();
}

class MacAppState extends State<MacApp> {
  @override
  void initState() {
    super.initState();
    canLaunchUrl(Uri(scheme: 'https')).then((bool result) {
      setState(() {});
    });
  }

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final typography = MacosTypography.of(context);
    return PlatformMenuBar(
      menus: menuBarItems(),
      child: MacosWindow(
        sidebar: Sidebar(
            minWidth: 200,
            builder: (context, scrollController) {
              return SidebarItems(
                currentIndex: pageIndex,
                onChanged: (i) {
                  setState(() => pageIndex = i);
                },
                scrollController: scrollController,
                itemSize: SidebarItemSize.large,
                items: [
                  SidebarItem(
                    leading: const MacosIcon(CupertinoIcons.home),
                    label: Text('menuScreen1'.tr),
                  ),
                  SidebarItem(
                    leading: const MacosIcon(CupertinoIcons.chat_bubble),
                    label: Text('menuScreen2'.tr),
                  ),
                  SidebarItem(
                    leading: const MacosIcon(CupertinoIcons.person),
                    label: Text('menuScreen3'.tr),
                  ),
                  SidebarItem(
                    leading: const MacosIcon(CupertinoIcons.line_horizontal_3),
                    label: Text('menuScreen4'.tr),
                  ),
                ],
              );
            },
            bottom: Column(
              children: [
                Link(
                    uri: Uri.parse('https://ghekko.nl/'),
                    target: LinkTarget.blank,
                    builder: (BuildContext ctx, FollowLink? openLink) {
                      return PushButton(
                          controlSize: ControlSize.large,
                          secondary: true,
                          onPressed: openLink,
                          child: Text(
                            'Ext Link',
                            style: typography.headline,
                          ));
                    }),
              ],
            )),
        child: [
          CupertinoTabView(builder: (_) => const MacScreen1()),
          const MacScreen2(),
          const MacScreen3(),
          const MacScreen4(),
        ][pageIndex],
      ),
    );
  }
}
