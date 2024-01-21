import 'package:flutter/foundation.dart';
import 'package:universal_platform/universal_platform.dart';

class OS {
  static bool droid = UniversalPlatform.isAndroid;
  static bool ios = UniversalPlatform.isIOS;
  static bool mac = UniversalPlatform.isMacOS;
  static bool lin = UniversalPlatform.isLinux;
  static bool win = UniversalPlatform.isWindows;
  static bool web = kIsWeb;

  static bool get isMobile => droid || ios;
  static bool get isApple => ios || mac;
  static bool get isDroidAndWeb => droid || web;
  static bool get isDesktop => win || mac || lin;
  static bool get isLinuxAndWindows => win || lin;
  static bool get isMobileAndWeb => isMobile || web;
  static bool get isDesktopAndWeb => isDesktop || web;
}