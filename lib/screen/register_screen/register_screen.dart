// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

import '../success_screen/success_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static const String route = '/register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
            // controller: _passwordController,
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
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Password',
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
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              filled: false,
              suffixIcon: GestureDetector(
                onTap: () {},
                child: Icon(
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
            height: 20,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(SuccessScreen.route);
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
        ],
      ),
    );
  }
}
