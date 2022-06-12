import 'package:flutter/material.dart';

import '../../widget/bottom_navigation_widget.dart';

class AdminAdministratorScreen extends StatefulWidget {
  const AdminAdministratorScreen({Key? key}) : super(key: key);
  static const String route = '/admin_administrator';

  @override
  State<AdminAdministratorScreen> createState() =>
      _AdminAdministratorScreenState();
}

class _AdminAdministratorScreenState extends State<AdminAdministratorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Administrator'),
      ),
      body: const Center(
        child: Text('Admin Administrator'),
      ),
      bottomNavigationBar: BottomNavigationWidget(
        index: 1,
        role: 'operator',
      ),
    );
  }
}
