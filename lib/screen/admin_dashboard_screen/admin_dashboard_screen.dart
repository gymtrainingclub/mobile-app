import 'package:flutter/material.dart';

import '../../widget/bottom_navigation_widget.dart';

class AdminDashboardScreen extends StatefulWidget {
  const AdminDashboardScreen({Key? key}) : super(key: key);
  static const String route = '/admin_dashboard';

  @override
  State<AdminDashboardScreen> createState() => _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends State<AdminDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
      ),
      body: const Center(
        child: Text('Admin Dashboard'),
      ),
      bottomNavigationBar: BottomNavigationWidget(
        index: 0,
        role: 'operator',
      ),
    );
  }
}
