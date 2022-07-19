// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widget/bottom_navigation_widget.dart';
import '../login_screen/login_viewmodel.dart';
import 'admin_booking_add_screen.dart';

class AdminBookingScreen extends StatefulWidget {
  const AdminBookingScreen({Key? key}) : super(key: key);
  static const route = '/admin/booking';

  @override
  State<AdminBookingScreen> createState() => _AdminBookingScreenState();
}

class _AdminBookingScreenState extends State<AdminBookingScreen> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    String menu = args['menu'] == 'online' ? 'online' : 'offline';

    return Consumer(builder: (context, LoginViewModel loginProvider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(12, 48, 61, 1),
          automaticallyImplyLeading: false,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
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
        body: stateBody(context, loginProvider, menu),
        bottomNavigationBar: BottomNavigationWidget(
          index: 2,
          role: loginProvider.role,
        ),
      );
    });
  }

  stateBody(BuildContext context, LoginViewModel loginProvider, String menu) =>
      loadedBody(context, loginProvider, menu);

  loadedBody(BuildContext context, LoginViewModel loginProvider, String menu) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Booking Class',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: Colors.grey,
            height: 2,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 120,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AdminBookingScreen.route,
                        arguments: {
                          'menu': 'online',
                        },
                      );
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      shadowColor: Colors.black,
                      child: Container(
                        height: 110,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: menu == 'online'
                              ? const Color.fromRGBO(12, 48, 61, 1)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.class_rounded,
                              color: menu == 'online'
                                  ? Colors.white
                                  : const Color.fromRGBO(12, 48, 61, 1),
                              size: 30,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Online Classes Booking',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: menu == 'online'
                                    ? Colors.white
                                    : const Color.fromRGBO(12, 48, 61, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AdminBookingScreen.route,
                        arguments: {
                          'menu': 'offline',
                        },
                      );
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      shadowColor: Colors.black,
                      child: Container(
                        height: 110,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: menu == 'offline'
                              ? const Color.fromRGBO(12, 48, 61, 1)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.wifi_off_outlined,
                              color: menu == 'offline'
                                  ? Colors.white
                                  : const Color.fromRGBO(12, 48, 61, 1),
                              size: 30,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Offline Classes Booking',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: menu == 'offline'
                                    ? Colors.white
                                    : const Color.fromRGBO(12, 48, 61, 1),
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
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: Colors.grey,
            height: 1.5,
          ),
          const SizedBox(
            height: 20,
          ),
          _menuSwitch(menu),
        ],
      ),
    );
  }

  _menuSwitch(String menu) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  menu == 'online'
                      ? 'Online Classes Booking'
                      : 'Offline Classes Booking',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.grey,
              height: 1.5,
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(12, 48, 61, 1),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Expanded(
                    child: Row(
                      children: [
                        RaisedButton(
                          color: const Color.fromRGBO(241, 90, 36, 1),
                          onPressed: () {},
                          child: const Text(
                            'Cardio',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        RaisedButton(
                          onPressed: () {},
                          color: const Color.fromRGBO(12, 48, 61, 1),
                          child: const Text(
                            'Body & Mind',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        RaisedButton(
                          onPressed: () {},
                          color: const Color.fromRGBO(12, 48, 61, 1),
                          child: const Text(
                            'Strength',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: const Color.fromRGBO(12, 48, 61, 1),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
                  ),
                  child: const Text('Search'),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            for (var i = 0; i < 10; i++)
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AdminBookingAddScreen.route,
                    arguments: {
                      'id': i,
                      'nameClass': 'Fitbox $i',
                      'trainer': 'Trainer $i',
                      'dates': '$i Mai 2022',
                      'time': '08:00 - 10:00',
                      'link': 'https://meet.google.com',
                      'duration': '1 jam',
                      'location':
                          'Gedung A - Lantai 1, Jl. Raya Cikarang Barat',
                      'image': 'https://picsum.photos/id/1/200/300',
                      'description':
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                      'state': menu == 'online' ? 'online' : 'offline',
                      'view': 'edit',
                      'menu': menu,
                      'listBooked': [
                        {
                          'name': 'Lil Nas',
                          'membership': 'Gold',
                          'dateBooked': '20/05/2020',
                        },
                        {
                          'name': 'Lil Nas',
                          'membership': 'Gold',
                          'dateBooked': '20/05/2020',
                        },
                        {
                          'name': 'Lil Nas',
                          'membership': 'Gold',
                          'dateBooked': '20/05/2020',
                        },
                        {
                          'name': 'Lil Nas',
                          'membership': 'Gold',
                          'dateBooked': '20/05/2020',
                        },
                        {
                          'name': 'Lil Nas',
                          'membership': 'Gold',
                          'dateBooked': '20/05/2020',
                        },
                        {
                          'name': 'Lil Nas',
                          'membership': 'Gold',
                          'dateBooked': '20/05/2020',
                        },
                      ]
                    },
                  );
                },
                child: Card(
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(8),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8, top: 8),
                      child: Text('Fitbox $i'),
                    ),
                    subtitle: Column(
                      children: [
                        Table(
                          columnWidths: const {
                            0: FlexColumnWidth(2),
                            1: FlexColumnWidth(3),
                          },
                          children: [
                            const TableRow(
                              children: [
                                Text('Link'),
                                Text('https://meet.google.com/'),
                              ],
                            ),
                            const TableRow(
                              children: [
                                Text('Dates'),
                                Text('Senin, Selasa, Rabu'),
                              ],
                            ),
                            TableRow(
                              children: [
                                const Text('Time'),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: const [
                                    Text('07:00 - 08:00'),
                                    Text('08:00 - 09:00'),
                                    Text('09:00 - 10:00'),
                                  ],
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                const Text('Trainer'),
                                Text('Trainer $i'),
                              ],
                            ),
                          ],
                        )
                      ],
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
