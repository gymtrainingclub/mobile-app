import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobileapp/screen/login_screen/login_screen.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);
  static const String route = '/success';

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushReplacementNamed(LoginScreen.route),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromRGBO(204, 210, 227, 1), width: 2),
              ),
              child: Image.asset(
                'assets/icon/Subtract.png',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Akun berhasil dibuat',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Selamat menjadi member kami',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
