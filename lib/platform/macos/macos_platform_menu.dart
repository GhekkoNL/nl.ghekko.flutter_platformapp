// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' as io;
import 'package:flutter/widgets.dart'
    show
        PlatformMenu,
        PlatformMenuItem,
        PlatformProvidedMenuItem,
        PlatformProvidedMenuItemType;
import 'package:get/get.dart';

List<PlatformMenuItem> menuBarItems() {
  if (kIsWeb) {
    return [];
  } else {
    if (io.Platform.isMacOS) {
      return [
        PlatformMenu(
          label: 'appName'.toString().tr,
          menus: [
            const PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.about,
            ),
            const PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.quit,
            ),
          ],
        ),
        PlatformMenu(
          label: 'view'.toString().tr,
          menus: [
            const PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.toggleFullScreen,
            ),
          ],
        ),
        PlatformMenu(
          label: 'window'.toString().tr,
          menus: [
            const PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.minimizeWindow,
            ),
            const PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.zoomWindow,
            ),
          ],
        ),
      ];
    } else {
      return [];
    }
  }
}
