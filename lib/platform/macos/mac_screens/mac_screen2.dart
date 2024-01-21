// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/cupertino.dart';
import 'package:flutter_platformapp/app/screens/app_screen2/app_screen2.dart';
import 'package:get/get.dart';
import 'package:macos_ui/macos_ui.dart';

class MacScreen2 extends StatelessWidget {
  const MacScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      children: [
        ContentArea(
          builder: (context, scrollController) {
            return CustomScrollView(
              slivers: [
                SliverToolBar(
                  title: Text('menuScreen2'.tr),
                  leading: MacosTooltip(
                    message: 'sideBarToggle'.toString().tr,
                    useMousePosition: false,
                    child: MacosIconButton(
                      icon: MacosIcon(
                        CupertinoIcons.sidebar_left,
                        color: MacosTheme.brightnessOf(context).resolve(
                          const Color.fromRGBO(0, 0, 0, 0.5),
                          const Color.fromRGBO(255, 255, 255, 0.5),
                        ),
                        size: 20.0,
                      ),
                      boxConstraints: const BoxConstraints(
                        minHeight: 20,
                        minWidth: 20,
                        maxWidth: 48,
                        maxHeight: 38,
                      ),
                      onPressed: () =>
                          MacosWindowScope.of(context).toggleSidebar(),
                    ),
                  ),
                  floating: true,
                  pinned: false,
                ),
                const SliverPadding(
                    padding: EdgeInsets.all(16),
                    sliver: SliverToBoxAdapter(
                      child: AppScreen2(),
                    )),
              ],
            );
          },
        ),
      ],
    );
  }
}
