// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'app.dart';
import 'dart:async';
import 'package:flutter_acrylic/window.dart';
import 'package:flutter_acrylic/window_effect.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:window_manager/window_manager.dart';
import 'constants/os_type.dart';
import 'locale/translations.dart';

Future<void> _configureMacosWindowUtils() async {
  const config = MacosWindowUtilsConfig();
  await config.apply();
}

Future<void> main() async {
  if (!OS.web) {
    if (OS.mac) {
      await _configureMacosWindowUtils();
      await windowManager.ensureInitialized();
      WindowOptions windowOptions = const WindowOptions(
        size: Size(1280, 860),
        center: true,
        backgroundColor: Colors.transparent,
        skipTaskbar: false,
        titleBarStyle: TitleBarStyle.hidden,
      );
      windowManager.waitUntilReadyToShow(windowOptions, () async {
        await windowManager.show();
        await windowManager.focus();
      });
    }

    if (OS.win) {
      WidgetsFlutterBinding.ensureInitialized();
      await Window.initialize();
      await Window.setEffect(
        effect: WindowEffect.aero,
        color: Colors.transparent,
      );
      await windowManager.ensureInitialized();
      WindowOptions windowOptions = const WindowOptions(
        size: Size(1180, 760),
        center: true,
        backgroundColor: Colors.transparent,
        skipTaskbar: false,
      );
      windowManager.waitUntilReadyToShow(windowOptions, () async {
        await windowManager.show();
        await windowManager.focus();
      });
    }
  }

  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: const Locale('en', 'GB'),
      fallbackLocale: const Locale('nl', 'NL'),
      home: const AppStarter(title: 'Platform App')));
}
