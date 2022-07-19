// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../login_screen/login_viewmodel.dart';

class AdminClassesAddScreen extends StatefulWidget {
  const AdminClassesAddScreen({Key? key}) : super(key: key);
  static const String route = '/admin_classes_add';

  @override
  State<AdminClassesAddScreen> createState() => _AdminClassesAddScreenState();
}

class _AdminClassesAddScreenState extends State<AdminClassesAddScreen> {
  String selectedValueTypeClass = "Online";
  String selectedValueTrainer = "Trainer 1";
  List<String> dates = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];
  List<String> times = [
    "8:00 AM",
    "8:30 AM",
    "9:00 AM",
    "9:30 AM",
    "10:00 AM",
    "10:30 AM",
    "11:00 AM",
    "11:30 AM",
    "12:00 PM",
    "12:30 PM",
    "1:00 PM",
    "1:30 PM",
    "2:00 PM",
    "2:30 PM",
    "3:00 PM",
    "3:30 PM",
    "4:00 PM",
    "4:30 PM",
    "5:00 PM",
    "5:30 PM",
    "6:00 PM",
  ];
  Widget buildDropdown(BuildContext context) {
    return DropdownButton(
      value: selectedValueTypeClass,
      items: dropdownItemsTypeClass,
      onChanged: (String? value) {},
    );
  }

  List<DropdownMenuItem<String>> get dropdownItemsTypeClass {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Online", child: Text("Online")),
      const DropdownMenuItem(value: "Offline", child: Text("Offline")),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItemsTrainer {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Trainer 1", child: Text("Trainer 1")),
      const DropdownMenuItem(value: "Trainer 2", child: Text("Trainer 2")),
      const DropdownMenuItem(value: "Trainer 3", child: Text("Trainer 3")),
      const DropdownMenuItem(value: "Trainer 4", child: Text("Trainer 4")),
      const DropdownMenuItem(value: "Trainer 5", child: Text("Trainer 5")),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return Consumer(builder: (context, LoginViewModel loginProvider, _) {
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
        body: stateBody(context, args),
      );
    });
  }

  stateBody(BuildContext context, Map<String, dynamic> args) {
    String menu = args['state'];
    if (menu == 'add') {
      return _loadedBody(context, args);
    } else if (menu == 'edit') {
      return _loadedBody(context, args);
    } else {
      return _loadedBody(context, args);
    }
  }

  _loadedBody(BuildContext context, Map<String, dynamic> args) {
    String datesArgs = args['dates'] ?? '';
    List<String> listDates = datesArgs.split(',');

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Classes',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Text(
                  args['menu'] == 'add' ? 'New Class' : 'Edit Class',
                  style: const TextStyle(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Class Name',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      controller: TextEditingController(
                        text: args['nameClass'],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Type of Class',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownButtonFormField(
                      isExpanded: true,
                      decoration: const InputDecoration(
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
                      height: 20,
                    ),
                    const Text(
                      'Trainer',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownButtonFormField(
                      isExpanded: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      itemHeight: 50,
                      value: selectedValueTrainer,
                      hint: const Text('Select Class'),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValueTrainer = newValue!;
                        });
                      },
                      items: dropdownItemsTrainer,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Dates of Class',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 120,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 4,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: dates.length,
                        itemBuilder: (BuildContext context, int index) {
                          bool colors = false;
                          if (listDates.isNotEmpty) {
                            if (listDates.contains(dates[index])) {
                              colors = true;
                            } else {
                              colors = false;
                            }
                          }
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              color:
                                  colors == true ? Colors.green : Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                dates[index],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Time of Class',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 200,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 4,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: times.length,
                        itemBuilder: (BuildContext context, int index) {
                          bool colors = false;
                          if (listDates.isNotEmpty) {
                            if (listDates.contains(times[index])) {
                              colors = true;
                            } else {
                              colors = false;
                            }
                          }
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              color:
                                  colors == true ? Colors.green : Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                times[index],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Location / Link of Class',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      controller: TextEditingController(
                        text: selectedValueTypeClass == 'Online'
                            ? args['link']
                            : args['location'],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      onPressed: () {},
                      color: const Color.fromRGBO(12, 48, 61, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
                      child: Text(
                        args['state'] == 'add' ? 'Add Admin' : 'Save Changes',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
