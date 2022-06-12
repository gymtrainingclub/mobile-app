// ignore_for_file: deprecated_member_use

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../membership_payment_screen/membership_payment_screen.dart';

class MembershipRegisterScreen extends StatefulWidget {
  const MembershipRegisterScreen({Key? key}) : super(key: key);
  static const String route = '/membership_register';

  @override
  State<MembershipRegisterScreen> createState() =>
      _MembershipRegisterScreenState();
}

class _MembershipRegisterScreenState extends State<MembershipRegisterScreen> {
  final _formKey = GlobalKey<FormState>();
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

  bool isChecked = false;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: Container(
          padding: const EdgeInsets.all(2),
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 14,
            ),
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                'Membership Register',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              Form(
                key: _formKey,
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
                      // controller: email,
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
                      // controller: email,
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
                      // controller: email,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                          checkColor: Colors.white,
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                        ),
                        const Text(
                          'I agree to the terms and conditions',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, MembershipPaymentScreen.route);
                      },
                      color: const Color.fromRGBO(0, 103, 132, 1),
                      padding: const EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        'Send',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
