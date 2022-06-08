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
    return Scaffold(
      backgroundColor: const Color.fromRGBO(12, 48, 61, 1),
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
