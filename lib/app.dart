// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/cupertino.dart';
import 'package:flutter_platformapp/platform/android/android_app.dart';
import 'package:flutter_platformapp/platform/ios/ios_app.dart';
import 'package:flutter_platformapp/platform/macos/mac_app.dart';
import 'package:flutter_platformapp/theme/app_theme.dart';
import 'package:flutter_platformapp/theme/cupertino_theme.dart';
import 'package:flutter_platformapp/theme/masos_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'constants/os_type.dart';

class AppStarter extends StatefulWidget {
  const AppStarter({super.key, required this.title});
  final String title;

  @override
  State createState() => AppStarterState();
}

class AppStarterState extends State<AppStarter> {
  late Future googleFontsPending;
  ThemeMode themeMode = ThemeMode.system;
  bool get useLightMode {
    switch (themeMode) {
      case ThemeMode.system:
        return View.of(context).platformDispatcher.platformBrightness ==
            Brightness.light;
      case ThemeMode.light:
        return true;
      case ThemeMode.dark:
        return false;
    }
  }

  void handleBrightnessChange(bool useLightMode) {
    setState(() {
      themeMode = useLightMode ? ThemeMode.light : ThemeMode.dark;
    });
  }

  @override
  void initState() {
    super.initState();
    googleFontsPending = GoogleFonts.pendingFonts([
      GoogleFonts.ubuntu(),
      GoogleFonts.comfortaa(),
      GoogleFonts.workSans(),
      GoogleFonts.roboto(),
      GoogleFonts.lato(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (OS.droid || OS.web || OS.win || OS.lin) {
        return ResponsiveSizer(builder: (context, orientation, screenType) {
          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: !OS.web && OS.droid
                ? Brightness.dark
                : Brightness.light,
            systemNavigationBarColor: Colors.white,
            systemNavigationBarDividerColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.dark,
          ));
          return MaterialApp(
              title: widget.title,
              debugShowCheckedModeBanner: false,
              themeMode: themeMode,
              theme: lightTheme,
              darkTheme: darkTheme,
              // home: const SplashScreen());
              home: AndroidApp(
                  title: widget.title,
                  useLightMode: useLightMode,
                  handleBrightnessChange: handleBrightnessChange));
        });
      } else if (OS.ios) {
        return ResponsiveSizer(builder: (context, orientation, screenType) {
          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: !OS.web && OS.droid
                ? Brightness.dark
                : Brightness.light,
            systemNavigationBarColor: Colors.white,
            systemNavigationBarDividerColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.dark,
          ));
          return CupertinoApp(
              debugShowCheckedModeBanner: false,
              title: widget.title,
              theme: cupertinoLight,
              home: IosApp(title: widget.title));
        });
      } else if (OS.mac) {
        return ChangeNotifierProvider(
            create: (_) => MacAppTheme(),
            builder: (context, _) {
              final appTheme = context.watch<MacAppTheme>();
              return MacosApp(
                  title: widget.title,
                  debugShowCheckedModeBanner: false,
                  theme: MacosThemeData.light(),
                  darkTheme: MacosThemeData.dark(),
                  themeMode: appTheme.mode,
                  home: MacApp(title: widget.title));
            });
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
