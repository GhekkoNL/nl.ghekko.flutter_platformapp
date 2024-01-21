// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/material.dart';
import 'package:flutter_platformapp/app/screens/app_screen1/components/item_container_card1.dart';
import 'package:flutter_platformapp/app/screens/app_screen1/components/main_container_card3.dart';
import 'package:responsive/flex_widget.dart';
import 'package:responsive/responsive_row.dart';
import '../../../constants/os_type.dart';
import '../../../constants/screen_size.dart';
import '../../../theme/design_elements.dart';
import '../app_screen1/components/buttons.dart';
import '../app_screen1/components/main_container_card2.dart';

class AppScreen3 extends StatelessWidget {
  const AppScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (OS.isMobileAndWeb || OS.isLinuxAndWindows) {
        return const SafeArea(child: Scaffold(body: Screen3Content()));
      } else if (OS.mac) {
        return const SafeArea(child: Screen3Content());
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}

class Screen3Content extends StatelessWidget {
  const Screen3Content({super.key});

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
                  label: 'Package Responsive',
                  children: <Widget>[
                    ResponsiveRow(
                      columnsCount: 12,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: <Widget>[
                        FlexWidget(
                          xs: 4,
                          sm: 3,
                          md: 2,
                          lg: 1,
                          xsLand: 4,
                          smLand: 2,
                          mdLand: 1,
                          lgLand: 1,
                          child: Container(
                            height: 100,
                            color: Colors.amber,
                          ),
                        ),
                        FlexWidget(
                          xs: 4,
                          sm: 3,
                          md: 2,
                          lg: 1,
                          xsLand: 4,
                          smLand: 2,
                          mdLand: 1,
                          lgLand: 1,
                          child: Container(
                            height: 100,
                            color: Colors.red,
                          ),
                        ),
                        FlexWidget(
                          xs: 4,
                          sm: 3,
                          md: 2,
                          lg: 1,
                          xsLand: 4,
                          smLand: 2,
                          mdLand: 1,
                          lgLand: 1,
                          child: Container(
                            height: 100,
                            color: Colors.indigo,
                          ),
                        ),
                        FlexWidget(
                          xs: 6,
                          sm: 3,
                          md: 2,
                          lg: 1,
                          xsLand: 4,
                          smLand: 2,
                          mdLand: 1,
                          lgLand: 1,
                          child: Container(
                            height: 100,
                            color: Colors.lime,
                          ),
                        ),
                        FlexWidget(
                          xs: 6,
                          sm: 3,
                          md: 2,
                          lg: 1,
                          xsLand: 4,
                          smLand: 2,
                          mdLand: 1,
                          lgLand: 1,
                          child: Container(
                            height: 100,
                            color: Colors.teal,
                          ),
                        ),
                        FlexWidget(
                          xs: 6,
                          sm: 3,
                          md: 2,
                          lg: 1,
                          xsLand: 4,
                          smLand: 2,
                          mdLand: 1,
                          lgLand: 1,
                          child: Container(
                            height: 100,
                            color: Colors.green,
                          ),
                        ),
                        FlexWidget(
                          xs: 6,
                          sm: 3,
                          md: 2,
                          lg: 1,
                          xsLand: 4,
                          smLand: 2,
                          mdLand: 1,
                          lgLand: 1,
                          child: Container(
                            height: 100,
                            color: Colors.deepOrange,
                          ),
                        ),
                        FlexWidget(
                          xs: 6,
                          sm: 3,
                          md: 2,
                          lg: 1,
                          xsLand: 4,
                          smLand: 2,
                          mdLand: 1,
                          lgLand: 1,
                          child: Container(
                            height: 100,
                            color: Colors.amber,
                          ),
                        ),
                        FlexWidget(
                          xs: 6,
                          sm: 3,
                          md: 2,
                          lg: 1,
                          xsLand: 4,
                          smLand: 2,
                          mdLand: 1,
                          lgLand: 1,
                          child: Container(
                            height: 100,
                            color: Colors.grey,
                          ),
                        ),
                        FlexWidget(
                          xs: 6,
                          sm: 3,
                          md: 2,
                          lg: 1,
                          xsLand: 4,
                          smLand: 2,
                          mdLand: 1,
                          lgLand: 1,
                          child: Container(
                            height: 100,
                            color: Colors.black,
                          ),
                        ),
                        FlexWidget(
                          xs: 6,
                          sm: 3,
                          md: 2,
                          lg: 1,
                          xsLand: 4,
                          smLand: 2,
                          mdLand: 1,
                          lgLand: 1,
                          child: Container(
                            height: 100,
                            color: Colors.brown,
                          ),
                        ),
                        FlexWidget(
                          xs: 6,
                          sm: 3,
                          md: 2,
                          lg: 1,
                          xsLand: 4,
                          smLand: 2,
                          mdLand: 1,
                          lgLand: 1,
                          child: Container(
                            height: 100,
                            color: Colors.cyan,
                          ),
                        ),
                      ],
                    ),
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
