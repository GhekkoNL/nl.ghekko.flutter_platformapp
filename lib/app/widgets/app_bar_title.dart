// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/os_type.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (OS.droid || OS.web || OS.lin || OS.win) {
        return Text('appName'.tr,
            style: TextStyle(
              fontFamily: 'Electric Toaster',
              color: Theme.of(context).canvasColor,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ));
      } else if (OS.isApple) {
        return Text('appName'.tr,
            style: const TextStyle(
              fontFamily: 'Electric Toaster',
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ));
      } else {
        return Text('appName'.tr,
            style: const TextStyle(
              fontFamily: 'Electric Toaster',
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ));
      }
    });
  }
}
