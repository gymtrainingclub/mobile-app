// ignore_for_file: deprecated_member_use, avoid_print, prefer_const_constructors

import 'dart:async';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp/screen/home_screen/home_screen.dart';
import 'package:mobileapp/screen/stop_screen/stop_screen.dart';
import 'package:provider/provider.dart';

import '../admin_dashboard_screen/admin_dashboard_screen.dart';
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

  bool isVisible = false;
  bool isChecked = false;
  String isRole = 'member';

  Widget stateBody(BuildContext context, LoginViewModel vm) {
    final isLoading = vm.state == LoginViewState.loading;
    final isLoaded = vm.state == LoginViewState.loaded;
    final isError = vm.state == LoginViewState.error;
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (isError) {
      return const Center(child: Text('Error'));
    }
    return Scaffold(
      body: isLoaded
          ? _buildLoadedBody(context, vm)
          : _buildInitialBody(context, vm),
    );
  }

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginViewModel>(context);
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
      body: stateBody(context, loginProvider),
    );
  }

  Widget _buildInitialBody(BuildContext context, LoginViewModel vm) {
    final loginProvider = Provider.of<LoginViewModel>(context);
    TextEditingController currentEmail = loginProvider.emailController;
    TextEditingController currentPassword = loginProvider.passwordController;
    print('test API');
    print(loginProvider.state);
    print(loginProvider.loginresponse.data?.token);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          if (isRole == 'admin' || isRole == 'operator')
            const Text(
              'Login Admin',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          if (isRole == 'member')
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                if (isRole == 'member') {
                  isRole = 'admin';
                } else if (isRole == 'admin') {
                  isRole = 'operator';
                } else if (isRole == 'operator') {
                  isRole = 'member';
                }
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (isRole == 'member')
                    const Text(
                      'Login Admin',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  if (isRole == 'admin' || isRole == 'operator')
                    const Text(
                      'Login User',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    color: Colors.black87,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Form(
            key: _formKey,
            child: _buildForm(currentEmail, currentPassword, isRole),
          ),
        ],
      ),
    );
  }

  _buildForm(TextEditingController email, TextEditingController password,
      String isRole) {
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
                    .getLoginResponse(email.text, password.text, isRole);
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account? '),
              GestureDetector(
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    color: Color.fromRGBO(18, 106, 138, 1),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('/register');
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  _buildLoadedBody(BuildContext context, LoginViewModel vm) {
    if (isRole == 'member') {
      Timer(
        const Duration(seconds: 2),
        () => Navigator.of(context).pushReplacementNamed(HomeScreen.route),
      );
    } else if (isRole == 'admin') {
      Timer(
        const Duration(seconds: 2),
        () => Navigator.of(context)
            .pushReplacementNamed(AdminDashboardScreen.route),
      );
    } else {
      Timer(
        const Duration(seconds: 2),
        () => Navigator.of(context)
            .pushReplacementNamed(AdminDashboardScreen.route),
      );
    }
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
            Text(
              '${vm.loginresponse.message}',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Please wait...',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'You will be redirected to login page in 5 seconds',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '${vm.loginresponse.data?.email} , ${vm.loginresponse.data?.email} , ${vm.loginresponse.data?.name} , ${vm.loginresponse.data?.token}',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
