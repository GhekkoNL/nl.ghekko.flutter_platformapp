// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum ScreenSelected {
  screen1(0),
  screen2(1),
  screen3(2),
  screen4(3);

  const ScreenSelected(this.value);
  final int value;
}
 List<NavigationDestination> appDestinations = [
   NavigationDestination(
    icon: const Icon(Icons.home),
    label: 'menuScreen1'.toString().tr,
    selectedIcon: const Icon(Icons.home),
  ),
  NavigationDestination(
    icon: const Icon(Icons.chat_bubble_outline),
    label: 'menuScreen2'.toString().tr,
    selectedIcon: const Icon(Icons.chat_bubble_outline),
  ),
  NavigationDestination(
    icon: const Icon(Icons.person),
    label: 'menuScreen3'.toString().tr,
    selectedIcon: const Icon(Icons.person),
  ),
  NavigationDestination(
    icon: const Icon(Icons.menu),
    label: 'menuScreen4'.toString().tr,
    selectedIcon: const Icon(Icons.menu),
  )
];

final List<NavigationRailDestination> navRailDestinations = appDestinations
    .map(
      (destination) => NavigationRailDestination(
    icon: Tooltip(
      message: destination.label.tr,
      child: destination.icon,
    ),
    selectedIcon: Tooltip(
      message: destination.label.tr,
      child: destination.selectedIcon,
    ),
    label: Text(destination.label.tr),
  ),
).toList();
