// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../schedule_detail_screen/schedule_detail_screen.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);
  static const String route = '/schedule';

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  List<DropdownMenuItem<String>> get dropdownItemsClass {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "All Class", child: Text("All Class")),
      const DropdownMenuItem(value: "Class 1", child: Text("Class 1")),
      const DropdownMenuItem(value: "Class 2", child: Text("Class 2")),
    ];
    return menuItems;
  }

  String selectedValusClass = "All Class";
  Widget buildDropdown(BuildContext context) {
    return DropdownButton(
      value: selectedValusClass,
      items: dropdownItemsClass,
      onChanged: (String? value) {},
    );
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 270,
            decoration: const BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage("assets/category/category.png"),
              //   fit: BoxFit.cover,
              // ),
              color: Color.fromRGBO(18, 106, 138, 1),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 210,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Form(
                            child: DropdownButtonFormField(
                              isExpanded: true,
                              decoration: const InputDecoration(
                                label: Text('Class'),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                              itemHeight: 50,
                              value: selectedValusClass,
                              hint: const Text('Class'),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValusClass = newValue!;
                                });
                              },
                              items: dropdownItemsClass,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Schedule',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 50,
                              margin: const EdgeInsets.only(
                                  right: 4, left: 4, bottom: 16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, ScheduleDetailScreen.route);
                      },
                      child: Container(
                        height: 110,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: const Color.fromRGBO(217, 217, 217, 1),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Fit Rush',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Monday, 12 Jan 2022 | 12:00 PM | 1 hour',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text('Mr. John Doe')
                                  ],
                                )
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
