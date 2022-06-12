import 'package:flutter/material.dart';

import '../../widget/bottom_navigation_widget.dart';

class AdminMembershipScreen extends StatefulWidget {
  const AdminMembershipScreen({Key? key}) : super(key: key);
  static const String route = '/admin_membership';

  @override
  State<AdminMembershipScreen> createState() => _AdminMembershipScreenState();
}

class _AdminMembershipScreenState extends State<AdminMembershipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Membership'),
      ),
      body: const Center(
        child: Text('Admin Membership'),
      ),
      bottomNavigationBar: BottomNavigationWidget(
        index: 2,
        role: 'operator',
      ),
    );
  }
}
