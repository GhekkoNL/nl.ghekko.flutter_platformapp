// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_GB': {
      "appName" : "Platform App",

      "Main Navigation": " - - - App - - - ",
      "menuScreen1": "Home",
      "menuScreen2": "Contact",
      "menuScreen3": "About",
      "menuScreen4": "More",

      "Android": " - - - Theme - - - ",
      "darkMode": "Brightness",
      "darkModeSwitch": "Dark Mode",

      "MacOS": " - - - MacOS - - - ",
      "view": "View",
      "window": "Window",
      "sideBarToggle": "Toggle Sidebar",

      "Locale": " - - - Translations - - - ",
      "languages": "Languages",
      "language": "Choose Language",
      "english": "English",
      "dutch": "Nederlands",

      "emptyText": " ",

      "# This App Content": "",
      "thisApp": "About this app",
      "changelog": "Changelog",
      "currentVersion": "Current Version",
      "developmentBy": "Developed by:",
      "developer": "Ghekko App & Web Dev.",
      "version": "Version",
    },

    'nl_NL': {
      "appName" : "Platform App",

      "Main Navigation": " - - - App - - - ",
      "menuScreen1": "Thuis",
      "menuScreen2": "Contact",
      "menuScreen3": "Over",
      "menuScreen4": "Meer",

      "darkMode": "Helderheid",
      "darkModeSwitch": "Donkere Modus",

      "MacOS": " - - - MacOS - - - ",
      "view": "Bekijk",
      "window": "Window",
      "sideBarToggle": "Zijbalk Switch",

      "languages": "Talen",
      "language": "Taal Keuze",
      "english": "English",
      "dutch": "Nederlands",

      "emptyText": " ",

      "# This App Content": "",
      "thisApp": "Over deze App",
      "changelog": "Wijzigingenlijst",
      "currentVersion": "Huidige Versie",
      "developmentBy": "Ontwikkeld door:",
      "developer": "Ghekko App & Web Dev.",
      "version": "Versie",
    },
  };
}