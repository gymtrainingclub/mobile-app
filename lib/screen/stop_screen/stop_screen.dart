// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../login_screen/login_screen.dart';
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
            child: Image.asset(
              'assets/images/stop_background.png',
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
          // const Center(
          //   child: Icon(
          //     Icons.sports_gymnastics,
          //     size: 128,
          //     color: Colors.black87,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(LoginScreen.route);
                    },
                    color: const Color.fromRGBO(0, 103, 132, 1),
                    padding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(RegisterScreen.route);
                    },
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(
                        color: Color.fromRGBO(0, 103, 132, 1),
                        width: 1,
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
