import 'package:flutter/material.dart';

class ScreenSize extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const ScreenSize({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop help us later
  static bool isSmall(BuildContext context) =>
      MediaQuery.of(context).size.width < 950;

  static bool isMedium(BuildContext context) =>
      MediaQuery.of(context).size.width < 1400 &&
          MediaQuery.of(context).size.width >= 950;

  static bool isLarge(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1400;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // If our width is more than 1400 then we consider it a desktop
    if (size.width >= 1400) {
      return desktop;
    }
    // If width it less then 1100 and more then 750 we consider it as tablet
    else if (size.width >= 950 && tablet != null) {
      return tablet!;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}
