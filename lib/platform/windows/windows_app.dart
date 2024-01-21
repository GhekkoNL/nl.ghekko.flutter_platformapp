// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/material.dart';

class WindowsApp extends StatelessWidget {
  const WindowsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Container(
        alignment: Alignment.center,
        child: const Text('Set to Android App!'),
      ),
    );
  }
}
