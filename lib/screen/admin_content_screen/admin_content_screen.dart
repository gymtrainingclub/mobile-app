import 'package:flutter/material.dart';

import '../../widget/bottom_navigation_widget.dart';

class AdminContentScreen extends StatefulWidget {
  const AdminContentScreen({Key? key}) : super(key: key);
  static const String route = '/admin_content';

  @override
  State<AdminContentScreen> createState() => _AdminContentScreenState();
}

class _AdminContentScreenState extends State<AdminContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Content'),
      ),
      body: const Center(
        child: Text('Admin Content'),
      ),
      bottomNavigationBar: BottomNavigationWidget(
        index: 3,
        role: 'operator',
      ),
    );
  }
}
