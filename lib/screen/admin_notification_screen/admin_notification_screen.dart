// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:provider/provider.dart';

import '../../widget/bottom_navigation_widget.dart';
import '../login_screen/login_viewmodel.dart';

class AdminNotificationScreen extends StatefulWidget {
  const AdminNotificationScreen({Key? key}) : super(key: key);
  static const route = '/admin-notification-screen';

  @override
  State<AdminNotificationScreen> createState() =>
      _AdminNotificationScreenState();
}

class _AdminNotificationScreenState extends State<AdminNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, LoginViewModel loginProvider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(12, 48, 61, 1),
          automaticallyImplyLeading: false,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
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
        body: stateBody(),
        bottomNavigationBar: BottomNavigationWidget(
          index: 1,
          role: loginProvider.role,
        ),
      );
    });
  }

  stateBody() => loadedBody();

  loadedBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Notification',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.grey,
            height: 1,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Recent Notifications',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  for (var i = 0; i < 3; i++)
                    notificationItem(
                      title: 'Gym Schedule',
                      date: Jiffy(DateTime.now()).subtract(days: i).fromNow(),
                      subtitle:
                          'Anda mendapatkan jadwal kegiatan pada tanggal ${Jiffy(DateTime.now()).subtract(days: i).format('MMM dd, yyyy')}',
                      passWeek: false,
                    ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pass Weeks',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Clear All',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  for (var i = 0; i < 5; i++)
                    notificationItem(
                      title: 'Gym Schedule',
                      date:
                          Jiffy(DateTime.now()).subtract(days: i + 7).fromNow(),
                      subtitle:
                          'Anda mendapatkan jadwal kegiatan pada tanggal ${Jiffy(DateTime.now()).subtract(days: i).format('MMM dd, yyyy')}',
                      passWeek: true,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  notificationItem({
    required String title,
    required String subtitle,
    required String date,
    required bool passWeek,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: passWeek ? Colors.white : Color.fromRGBO(233, 233, 233, 1),
      shadowColor: Colors.black,
      child: ListTile(
        onTap: () {},
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Text(
            subtitle,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              date,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
