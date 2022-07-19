// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:provider/provider.dart';

import '../../widget/bottom_navigation_widget.dart';
import '../login_screen/login_viewmodel.dart';
import 'admin_classes_add_screen.dart';

class AdminClassesScreen extends StatefulWidget {
  const AdminClassesScreen({Key? key}) : super(key: key);
  static const route = '/admin_classes_screen';

  @override
  State<AdminClassesScreen> createState() => _AdminClassesScreenState();
}

class _AdminClassesScreenState extends State<AdminClassesScreen> {
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

  stateBody(BuildContext context, LoginViewModel loginProvider, String menu) {
    return loadedBody(context, loginProvider, menu);
  }

  loadedBody(BuildContext context, LoginViewModel loginProvider, String menu) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Classes',
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
            height: 100,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AdminClassesScreen.route,
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
                        height: 90,
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
                              'Online Classes',
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
                        AdminClassesScreen.route,
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
                        height: 90,
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
                              'Offline Classes',
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
                  menu == 'online' ? 'Online Classes' : 'Offline Classes',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.add_circle_outline,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AdminClassesAddScreen.route,
                      arguments: {
                        'menu': 'add',
                      },
                    );
                  },
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
                    AdminClassesAddScreen.route,
                    arguments: {
                      'id': i,
                      'nameClass': 'Fitbox $i',
                      'trainer': 'Trainer $i',
                      'dates': 'Senin, Selasa, Rabu',
                      'time': '08:00 - 10:00, 12:00 - 14:00, 16:00 - 18:00',
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
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.edit,
                            size: 20,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              AdminClassesAddScreen.route,
                              arguments: {
                                'id': i,
                                'name': 'user $i',
                                'email': 'user@gmail.com',
                                'phone': '081234567890',
                                'address': 'Jl. Raya No. $i',
                                'membership': 'Gold',
                                'startjoin': Jiffy(DateTime.now())
                                    .subtract(
                                      duration: Duration(
                                        days: 1 * i,
                                      ),
                                    )
                                    .format('dd MMMM yyyy'),
                                'endjoin': Jiffy(DateTime.now())
                                    .subtract(
                                      duration: Duration(
                                        days: 365 + i,
                                      ),
                                    )
                                    .format('dd MMMM yyyy'),
                                'gender': 'Male',
                                'state': 'membership',
                                'view': 'view',
                              },
                            );
                          },
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.delete,
                            size: 20,
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => Card(
                                child: AlertDialog(
                                  title: Column(
                                    children: const [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Icon(
                                        Icons.delete,
                                        size: 40,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Center(
                                        child: Text('Delete'),
                                      ),
                                    ],
                                  ),
                                  content: const Text(
                                      'Deleting this file will be permanent.'),
                                  actionsAlignment: MainAxisAlignment.center,
                                  actionsPadding: const EdgeInsets.all(10),
                                  actions: [
                                    FlatButton(
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        style: TextButton.styleFrom(
                                          primary: const Color.fromRGBO(
                                              12, 48, 61, 1),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16,
                                            vertical: 14,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                              color:
                                                  Color.fromRGBO(12, 48, 61, 1),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        child: const Text('Cancel'),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    FlatButton(
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor: const Color.fromRGBO(
                                              12, 48, 61, 1),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16,
                                            vertical: 14,
                                          ),
                                        ),
                                        child: const Text('Delete'),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
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
