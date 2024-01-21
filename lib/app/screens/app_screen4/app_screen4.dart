// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/material.dart';
import 'package:flutter_platformapp/app/screens/app_screen1/components/item_container_card1.dart';
import 'package:flutter_platformapp/app/screens/app_screen1/components/main_container_card1.dart';
import 'package:flutter_platformapp/app/screens/app_screen1/components/main_container_card3.dart';
import '../../../constants/os_type.dart';
import '../../../constants/screen_size.dart';
import '../../../theme/design_elements.dart';
import '../app_screen1/components/buttons.dart';
import '../app_screen1/components/main_container_card2.dart';

class AppScreen4 extends StatelessWidget {
  const AppScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (OS.isMobileAndWeb || OS.isLinuxAndWindows) {
        return const SafeArea(child: Scaffold(body: Screen4Content()));
      } else if (OS.mac) {
        return const SafeArea(child: Screen4Content());
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}

class Screen4Content extends StatelessWidget {
  const Screen4Content({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: false,
      child: Column(children: [
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            flex: 6,
            child: Column(children: [
              const MainContainerCard(
                  label: 'Main Container Card 1',
                  children: <Widget>[
                    MainContainerCard1(),
                  ]),
              const MainContainerCard(
                  label: 'Main Container Card 2',
                  children: <Widget>[
                    MainContainerCard2(),
                  ]),

              /// Single Row view / Phone view
              if (ScreenSize.isSmall(context))
                const Column(children: [
                  MainContainerCard(
                      label: 'Main Container Card 3',
                      children: <Widget>[
                        MainContainerCard3(),
                      ]),
                  ItemContainerCard(
                      children: <Widget>[ItemContainerCard1()]),
                  MainContainerCard(
                      label: 'Main Container Card 4',
                      children: <Widget>[
                        CustomButtons(),
                      ]),
                ])
            ]),
          ),

          /// Second Row view / Tablet and Larger view
          if (!ScreenSize.isSmall(context))
            const Expanded(
                flex: 6,
                child: Column(children: [
                  MainContainerCard(
                      label: 'Main Container Card 3',
                      children: <Widget>[
                        MainContainerCard3(),
                      ]),
                  ItemContainerCard(
                      children: <Widget>[ItemContainerCard1()]),
                  MainContainerCard(
                      label: 'Main Container Card 4',
                      children: <Widget>[
                        CustomButtons(),
                      ]),
                ])),
        ]),
      ]),
    );
  }
}
