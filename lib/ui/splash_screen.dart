import 'dart:async';

import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = "splash screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
    );

    return Scaffold(
        body: Image.asset('assets/images/splash_background.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover));
  }
}
