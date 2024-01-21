// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/material.dart';
import 'package:flutter_platformapp/app/screens/app_screen1/components/item_container_card1.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../constants/os_type.dart';
import '../../../constants/screen_size.dart';
import '../../../theme/design_elements.dart';

class AppScreen2 extends StatelessWidget {
  const AppScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (OS.isMobileAndWeb || OS.isLinuxAndWindows) {
        return const SafeArea(child: Scaffold(body: Screen2Content()));
      } else if (OS.mac) {
        return const SafeArea(child: Screen2Content());
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}

class Screen2Content extends StatelessWidget {
  const Screen2Content({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: false,
      child: Column(children: [
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            flex: 6,
            child: Column(children: [
              MainContainerCard(
                  label: 'Package Responsive Sizer',
                  children: <Widget>[
                    Device.orientation == Orientation.portrait
                        ? Container(   // Widget for Portrait
                      color: Colors.orangeAccent,
                      width: 100.w,
                      height: 20.5.h,
                    )
                        : Container(   // Widget for Landscape
                      color: Colors.red,
                      width: 100.w,
                      height: 12.5.h,
                    ),
                  ]),
              MainContainerCard(
                  label: 'Main Container Card 2',
                  children: <Widget>[
                    Device.screenType == ScreenType.tablet
                        ? Container(   // Widget for Tablet
                      color: Colors.orangeAccent,
                      width: 100.w,
                      height: 20.5.h,
                    )
                        : Container(   // Widget for Mobile
                      color: Colors.red,
                      width: 100.w,
                      height: 12.5.h,
                    ),
                  ]),

              /// Single Row view / Phone view
              if (ScreenSize.isSmall(context))
                Column(children: [
                  MainContainerCard(
                      label: 'Main Container Card 3',
                      children: <Widget>[
                        Container(
                            color: Colors.red,
                            width: Adaptive.w(20),    // This will take 20% of the screen's width
                            height: 30.5.h     // This will take 30.5% of the screen's height
                        ),
                      ]),
                  const ItemContainerCard(
                      children: <Widget>[ItemContainerCard1()]),
                  MainContainerCard(
                      label: 'Main Container Card 4',
                      children: <Widget>[
                        Text(
                          'Responsive Sizer',
                          style: TextStyle(fontSize: 15.sp, color: Theme.of(context).primaryColor),
                          // 15.sp can also be used instead of .dp
                          // To know their differences, check #FAQ
                        ),
                      ]),
                ])
            ]),
          ),

          /// Second Row view / Tablet and Larger view
          if (!ScreenSize.isSmall(context))
            Expanded(
                flex: 6,
                child: Column(children: [
                  MainContainerCard(
                      label: 'Main Container Card 3',
                      children: <Widget>[
                        Container(
                          color: Colors.red,
                            width: Adaptive.w(20),    // This will take 20% of the screen's width
                            height: 30.5.h     // This will take 30.5% of the screen's height
                        ),
                      ]),
                  const ItemContainerCard(
                      children: <Widget>[ItemContainerCard1()]),
                  MainContainerCard(
                      label: 'Main Container Card 4',
                      children: <Widget>[
                        Text(
                          'Responsive Sizer',
                          style: TextStyle(fontSize: 15.sp, color: Theme.of(context).primaryColor),
                          // 15.sp can also be used instead of .dp
                          // To know their differences, check #FAQ
                        ),
                      ]),
                ])),
        ]),
      ]),
    );
  }
}
