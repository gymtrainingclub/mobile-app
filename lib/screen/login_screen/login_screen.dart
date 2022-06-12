// ignore_for_file: deprecated_member_use, avoid_print

import 'dart:async';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp/screen/home_screen/home_screen.dart';
import 'package:mobileapp/screen/stop_screen/stop_screen.dart';
import 'package:provider/provider.dart';

import 'login_viewmodel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String route = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // Provider.of<LoginViewModel>(context, listen: false).getLoginResponse();
  }

  Widget stateBody(LoginViewModel vm) {
    final isLoading = vm.state == LoginViewState.loading;
    final isLoaded = vm.state == LoginViewState.loaded;
    final isError = vm.state == LoginViewState.error;
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (isError) {
      return const Center(child: Text('Error'));
    }
    return Scaffold(
      body: isLoaded ? _buildLoadedBody(vm) : _buildInitialBody(vm),
    );
  }

  bool isVisible = false;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginViewModel>(context);
    // TextEditingController currentEmail = loginProvider.emailController;
    // TextEditingController currentPassword = loginProvider.passwordController;
    // print('test API');
    // print(loginProvider.state);
    // print(loginProvider.loginresponse.data?.token);
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
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black87,
            size: 18,
          ),
          onPressed: () => Navigator.of(context).pushNamed(StopScreen.route),
        ),
      ),
      body: stateBody(loginProvider),
    );
  }

  Widget _buildInitialBody(LoginViewModel vm) {
    final loginProvider = Provider.of<LoginViewModel>(context);
    TextEditingController currentEmail = loginProvider.emailController;
    TextEditingController currentPassword = loginProvider.passwordController;
    print('test API');
    print(loginProvider.state);
    print(loginProvider.loginresponse.data?.token);
    return SingleChildScrollView(
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
            child: _buildForm(currentEmail, currentPassword),
          ),
        ],
      ),
    );
  }

  _buildForm(TextEditingController email, TextEditingController password) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return const Color.fromRGBO(0, 103, 132, 1);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email / No. Handphone',
              labelStyle: TextStyle(
                color: Colors.black87,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black87,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black87),
              ),
            ),
            controller: email,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email or phone number';
              }
              if (!value.contains('@') || value.length < 6) {
                return 'Please enter a valid email address';
              }
              final bool isValid = EmailValidator.validate(value);
              if (!isValid) {
                return 'Please enter a valid email address';
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
                onTap: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                child: isVisible
                    ? const Icon(
                        Icons.visibility,
                        color: Colors.black87,
                      )
                    : const Icon(
                        Icons.visibility_off,
                        color: Colors.black87,
                      ),
              ),
            ),
            controller: password,
            obscureText: isVisible,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                  ),
                  const Text(
                    'Remember me',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 12,
                    ),
                  ),
                ],
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
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          RaisedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                print('valid');
                Provider.of<LoginViewModel>(context, listen: false)
                    .getLoginResponse(email.text, password.text);
              }
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

  _buildLoadedBody(LoginViewModel vm) {
    Timer(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushReplacementNamed(HomeScreen.route),
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
              'Logging in...',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Selamat datang kak, ${vm.loginresponse.data?.name}',
              style: const TextStyle(
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
