// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../home_screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String route = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.info,
              color: Colors.black87,
              size: 18,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Center(
              child: Image.asset(
                'assets/images/logo2.png',
                height: 128,
                width: 128,
              ),
            ),
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: _buildForm(),
            ),
          ],
        ),
      ),
    );
  }

  _buildForm() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email / No. Handphone',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email or phone number';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: const TextStyle(
                color: Colors.black87,
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black87,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black87),
              ),
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              filled: false,
              suffixIcon: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.visibility,
                  color: Colors.black87,
                ),
              ),
            ),
            obscureText: true,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            child: const Text(
              'Forgot password?',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 12,
              ),
              textAlign: TextAlign.end,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/forgot-password');
            },
          ),
          const SizedBox(
            height: 16,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(HomeScreen.route);
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
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            child: const Text(
              'Help?',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.center,
            ),
            onTap: () {},
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
