// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, body_might_complete_normally_nullable

import 'package:flutter/material.dart';

class AdminInstructorAddScreen extends StatefulWidget {
  const AdminInstructorAddScreen({Key? key}) : super(key: key);
  static const route = '/admin_instructor_screen';

  @override
  State<AdminInstructorAddScreen> createState() =>
      _AdminInstructorAddScreenState();
}

class _AdminInstructorAddScreenState extends State<AdminInstructorAddScreen> {
  String selectedValueTypeClass = "Fit Rush";
  Widget buildDropdown2(BuildContext context) {
    return DropdownButton(
      value: selectedValueTypeClass,
      items: dropdownItemsTypeClass,
      onChanged: (String? value) {},
    );
  }

  List<DropdownMenuItem<String>> get dropdownItemsTypeClass {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Fit Rush", child: Text("Fit Rush")),
      const DropdownMenuItem(value: "Zumba", child: Text("Zumba")),
      const DropdownMenuItem(value: "Yoga", child: Text("Yoga")),
      const DropdownMenuItem(value: "Pilates", child: Text("Pilates")),
      const DropdownMenuItem(value: "Body Pump", child: Text("Body Pump")),
      const DropdownMenuItem(value: "Body Combat", child: Text("Body Combat")),
      const DropdownMenuItem(value: "Body Sculpt", child: Text("Body Sculpt")),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(12, 48, 61, 1),
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Text(
              'Cleo Zambrano',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 15,
            backgroundImage: NetworkImage(
              'https://i.pravatar.cc/300',
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Trainer',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Text(
                    'New Trainer',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Trainer Name',
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
                          validator: (value) {},
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Trainer Email',
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
                          validator: (value) {},
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Trainer Phone',
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
                          validator: (value) {},
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Class Name',
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
                          validator: (value) {},
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
                          value: selectedValueTypeClass,
                          hint: const Text('Select Class'),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValueTypeClass = newValue!;
                            });
                          },
                          items: dropdownItemsTypeClass,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        RaisedButton(
                          onPressed: () {},
                          color: const Color.fromRGBO(12, 48, 61, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 16.0),
                          child: const Text(
                            'Save',
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
