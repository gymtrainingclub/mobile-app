// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobileapp/screen/login_screen/login_screen.dart';
import 'package:provider/provider.dart';

import '../stop_screen/stop_screen.dart';
import 'register_viewmodel.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static const String route = '/register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isVisible = false;

  List<DropdownMenuItem<String>> get dropdownItemsGender {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Male", child: Text("Male")),
      const DropdownMenuItem(value: "Female", child: Text("Female")),
    ];
    return menuItems;
  }

  String selectedValueGender = "Male";
  Widget buildDropdown(BuildContext context) {
    return DropdownButton(
      value: selectedValueGender,
      items: dropdownItemsGender,
      onChanged: (String? value) {},
    );
  }

  List<DropdownMenuItem<String>> get dropdownItemsCity {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Bekasi", child: Text("Bekasi")),
      const DropdownMenuItem(value: "Jakarta", child: Text("Jakarta")),
      const DropdownMenuItem(value: "Surabaya", child: Text("Surabaya")),
      const DropdownMenuItem(value: "Bandung", child: Text("Bandung")),
      const DropdownMenuItem(value: "Medan", child: Text("Medan")),
      const DropdownMenuItem(value: "Palembang", child: Text("Palembang")),
    ];
    return menuItems;
  }

  String selectedValueCity = "Bekasi";
  Widget buildDropdown2(BuildContext context) {
    return DropdownButton(
      value: selectedValueCity,
      items: dropdownItemsCity,
      onChanged: (String? value) {},
    );
  }

  Widget stateBody(BuildContext context, RegisterViewModel registerProvider) {
    final isLoading = registerProvider.state == RegisterViewState.loading;
    final isLoaded = registerProvider.state == RegisterViewState.loaded;
    final isError = registerProvider.state == RegisterViewState.error;
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (isError) {
      return const Center(child: Text('Error'));
    }
    return Container(
      child: isLoaded
          ? _buildLoadedBody(context, registerProvider)
          : _buildInitialBody(context, registerProvider),
    );
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final registerProvider = Provider.of<RegisterViewModel>(context);
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
      body: stateBody(context, registerProvider),
    );
  }

  _buildInitialBody(BuildContext context, RegisterViewModel registerProvider) {
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
            'Registration',
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      labelStyle: const TextStyle(
                        color: Colors.black87,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black87,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87),
                      ),
                    ),
                    style: TextStyle(color: Colors.black87),
                    controller: registerProvider.nameController,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  DropdownButtonFormField(
                    isExpanded: true,
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                        border: OutlineInputBorder(),
                        label: Text('Gender')),
                    itemHeight: 50,
                    value: selectedValueGender,
                    hint: const Text('Gender'),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValueGender = newValue!;
                      });
                    },
                    items: dropdownItemsGender,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  DropdownButtonFormField(
                    isExpanded: true,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(),
                      border: OutlineInputBorder(),
                    ),
                    itemHeight: 50,
                    value: selectedValueCity,
                    hint: const Text('Gender'),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValueCity = newValue!;
                      });
                    },
                    items: dropdownItemsCity,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
                    controller: registerProvider.handphoneController,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    controller: registerProvider.emailController,
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
                    controller: registerProvider.passwordController,
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
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
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
                    controller: registerProvider.confirmPasswordController,
                    obscureText: isVisible,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      if (value != registerProvider.passwordController.text) {
                        return 'Password does not match';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        registerProvider.cityController.text =
                            selectedValueCity;
                        registerProvider.genderController.text =
                            selectedValueGender;
                        registerProvider.register();
                      }
                      // Navigator.of(context).pushNamed(HomeScreen.route);
                    },
                    color: const Color.fromRGBO(0, 103, 132, 1),
                    padding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: const Text(
                      'Help?',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                      textAlign: TextAlign.center,
                    ),
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
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildLoadedBody(BuildContext context, RegisterViewModel registerProvider) {
    if (registerProvider.registerResponse.status == 'error') {
      Timer(
        const Duration(seconds: 5),
        () => Navigator.of(context).pushReplacementNamed(RegisterScreen.route),
      );
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
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
              Text(
                'Register ${registerProvider.registerResponse.status}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Selamat datang kak, ${registerProvider.registerResponse.data?.name}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '${registerProvider.registerResponse.message}',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Please wait...',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'You will be redirected to login page in 5 seconds',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '${registerProvider.registerResponse.data?.city} , ${registerProvider.registerResponse.data?.email} , ${registerProvider.registerResponse.data?.gender} , ${registerProvider.registerResponse.data?.handphone}',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Open Email'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        LoginScreen.route,
                      );
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
