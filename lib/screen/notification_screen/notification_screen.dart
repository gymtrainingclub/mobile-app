// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);
  static const String route = '/notification';

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
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
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 80),
            Center(
              child: Text(
                'Notification',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            SizedBox(height: 20),
            for (var i = 0; i < 10; i++)
              notificationItem(
                title: 'Gym Schedule',
                date: Jiffy(DateTime.now()).subtract(days: i).fromNow(),
                subtitle:
                    'Anda mendapatkan jadwal kegiatan pada tanggal ${Jiffy(DateTime.now()).subtract(days: i).format('MMM dd, yyyy')}',
              ),
          ],
        ),
      ),
    );
  }

  notificationItem({
    required String title,
    required String subtitle,
    required String date,
  }) {
    Jiffy jiffy = Jiffy(DateTime.now().subtract(Duration(days: 1)));
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        shadowColor: Colors.black,
        child: ListTile(
          onTap: () {},
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              '$title',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              '$subtitle',
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
                '$date',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
