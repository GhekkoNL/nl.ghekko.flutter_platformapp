// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter_platformapp/app/screens/app_screen2/app_screen2.dart';
import 'package:gap/gap.dart';
import 'package:flutter/cupertino.dart';
import '../../../app/widgets/app_bar_title.dart';

class IOSScreen2 extends StatelessWidget {
  const IOSScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            leading: Column(children: [Gap(10), AppBarTitle()])),
        child: AppScreen2());
  }
}
