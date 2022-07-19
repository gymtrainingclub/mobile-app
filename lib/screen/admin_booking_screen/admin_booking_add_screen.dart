// ignore_for_file: unnecessary_const, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../login_screen/login_viewmodel.dart';

class AdminBookingAddScreen extends StatefulWidget {
  const AdminBookingAddScreen({Key? key}) : super(key: key);
  static const route = '/admin/booking/add';

  @override
  State<AdminBookingAddScreen> createState() => _AdminBookingAddScreenState();
}

class _AdminBookingAddScreenState extends State<AdminBookingAddScreen> {
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
    String menu = args['menu'];
    if (menu == 'add') {
      return _loadedBody(context, args);
    } else if (menu == 'edit') {
      return _loadedBody(context, args);
    } else {
      return _loadedBody(context, args);
    }
  }

  _loadedBody(BuildContext context, Map<String, dynamic> args) {
    String stateArgs = args['state'];
    List list = args['listBooked'];

    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                stateArgs == "online"
                    ? "Online Class Booking"
                    : "Offline Class Booking",
                style: const TextStyle(
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
                const Text(
                  "Detail Booling",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "${args['nameClass']}",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Table(
                  columnWidths: const {
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(3),
                  },
                  children: [
                    TableRow(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Class Date'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('${args['dates']}'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Class Time'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('${args['time']}'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Trainer'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('${args['trainer']}'),
                        ),
                      ],
                    ),
                    if (stateArgs == "online")
                      TableRow(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Link'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('${args['link']}'),
                          ),
                        ],
                      ),
                    if (stateArgs == "offline")
                      TableRow(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Location'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('${args['location']}'),
                          ),
                        ],
                      ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const Text(
                      "List Member Class",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    RaisedButton(
                      color: const Color.fromRGBO(74, 180, 79, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: Text(
                        '${list.length} Member',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Card(
                  child: Table(
                    columnWidths: const {
                      0: FlexColumnWidth(1),
                      1: FlexColumnWidth(3),
                      2: FlexColumnWidth(2),
                      3: FlexColumnWidth(2),
                    },
                    children: [
                      const TableRow(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: const Text('No'),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Nember Name'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Membership'),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: const Text('Date Booked'),
                          ),
                        ],
                      ),
                      for (int i = 0; i < list.length; i++)
                        TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('${i + 1}',
                                  style: const TextStyle(fontSize: 12)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('${list[i]['name']}',
                                  style: const TextStyle(fontSize: 12)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('${list[i]['membership']}',
                                  style: const TextStyle(fontSize: 12)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('${list[i]['dateBooked']}',
                                  style: const TextStyle(fontSize: 12)),
                            ),
                          ],
                        ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
