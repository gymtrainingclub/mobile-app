import 'package:flutter/material.dart';
import 'dart:async';

import '../splash_screen/splash_screen.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({Key? key}) : super(key: key);
  static const String route = '/logo';

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushReplacementNamed(SplashScreen.route),
    );
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Icon(
          Icons.sports_gymnastics,
          size: 128,
          color: Colors.black87,
        ),
      ),
    );
  }
}
