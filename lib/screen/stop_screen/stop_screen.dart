// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mobileapp2/screen/login_screen/login_screen.dart';

import '../register_screen/register_screen.dart';

class StopScreen extends StatelessWidget {
  const StopScreen({Key? key}) : super(key: key);
  static const String route = '/stop';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(
              Icons.info,
              color: Colors.white,
              size: 18,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            child: Image.network(
              'https://source.unsplash.com/random/800x600/',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.2),
                ],
              ),
            ),
          ),
          const Center(
            child: Icon(
              Icons.sports_gymnastics,
              size: 128,
              color: Colors.black87,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 140,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(LoginScreen.route);
                    },
                    child: const Text('Login'),
                  ),
                ),
                SizedBox(
                  width: 140,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(RegisterScreen.route);
                    },
                    child: const Text('Register'),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
