// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainContainerCard extends StatelessWidget {
  const MainContainerCard({
    super.key,
    required this.label,
    required this.children,
    this.borderRadius,
  });

  final BorderRadiusGeometry? borderRadius;
  final String label;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(6);
    return FocusTraversalGroup(
      child: Card(
        elevation: 0,
        borderOnForeground: false,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        margin: const EdgeInsets.all(Insets.medium),
        color: Colors.grey.withOpacity(0.1),
        shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
            side: BorderSide(
                color: Theme.of(context).colorScheme.outline.withOpacity(0.3),
                width: 1.0)),
        child: Container(
          padding: const EdgeInsets.all(Insets.medium),
          child: Center(
            child: Column(
              children: [
                colDivider,
                LayoutBuilder(builder: (context, constraints) {
                  if (kIsWeb ||
                      Platform.isAndroid ||
                      Platform.isLinux ||
                      Platform.isWindows) {
                    return Text(label,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: GoogleFonts.oswald(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: Theme.of(context).canvasColor,
                            textStyle: Theme.of(context).textTheme.titleSmall));
                  } else if (Platform.isIOS || Platform.isMacOS) {
                    return Text(label,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: MacosTheme.of(context)
                            .typography
                            .title3
                            .copyWith(fontWeight: FontWeight.bold));
                  } else {
                    return Text(label,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(fontSize: 14));
                  }
                }),
                colDivider,
                const DivLine120(),
                colDivider,
                ...children
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemContainerCard extends StatelessWidget {
  const ItemContainerCard({super.key, required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return FocusTraversalGroup(
      child: Card(
        elevation: 0,
        borderOnForeground: false,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        margin: const EdgeInsets.all(Insets.medium),
        color: Colors.grey.withOpacity(0.1),
        shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            side: BorderSide(
                color: Theme.of(context).colorScheme.outline.withOpacity(0.3),
                width: 1.0)),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(Insets.medium),
          child: Column(
            children: [...children],
          ),
        ),
      ),
    );
  }
}

class MaterialCard extends StatelessWidget {
  const MaterialCard({super.key, required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return FocusTraversalGroup(
      child: Card(
          elevation: 0,
          borderOnForeground: false,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Colors.transparent,
          child: Column(children: [...children])),
    );
  }
}

class DivLine120 extends StatelessWidget {
  const DivLine120({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 120,
        child: Divider(height: 1, color: Colors.red, thickness: 1),
      ),
    );
  }
}

class Insets {
  static const double xsmall = 3;
  static const double small = 6;
  static const double medium = 9;
  static const double large = 12;
  static const double xLarge = 15;
}

const rowDivider = SizedBox(width: 12);
const colDivider = SizedBox(height: 6);

const double narrowScreenWidthThreshold = 550;
const double mediumWidthBreakpoint = 950;
const double largeWidthBreakpoint = 1400;

const double transitionLength = 500;

const tinySpacing = 3.0;
const smallSpacing = 10.0;
const double cardWidth = 115;
const double widthConstraint = 450;
