import 'package:diwali_lamp/main/screens/home.dart';
import 'package:diwali_lamp/main/screens/splash_screen.dart';
import 'package:diwali_lamp/utils/NavRoutes.dart';
import 'package:flutter/material.dart';

class DiwaliLamp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final route = NavRoutes();
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xFF400D54),
      ),
      routes: {
        route.splash: (context) => const SplashScreen(),
        route.main: (context) => const Home(),
      },
    );
  }
}
