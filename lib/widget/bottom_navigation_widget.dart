import 'package:flutter/material.dart';
import 'package:mobileapp/screen/admin_administrator_screen/admin_administrator_screen.dart';
import 'package:mobileapp/screen/admin_content_screen/admin_content_screnn.dart';
import 'package:mobileapp/screen/admin_membership_screen/admin_membership_screen.dart';
import 'package:mobileapp/screen/home_screen/home_screen.dart';
import 'package:mobileapp/screen/profile_screen/profile_screen.dart';
import 'package:mobileapp/screen/schedule_screen/schedule_screen.dart';

import '../screen/admin_dashboard_screen/admin_dashboard_screen.dart';
import '../screen/newspaper_screen/newspaper_screen.dart';

// ignore: must_be_immutable
class BottomNavigationWidget extends StatefulWidget {
  int index;
  String role;
  BottomNavigationWidget({
    Key? key,
    required this.index,
    required this.role,
  }) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        if (widget.role == 'member') ...[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'News',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Schedule',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        if (widget.role == 'operator' || widget.role == 'admin') ...[
          const BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          if (widget.role == 'admin')
            const BottomNavigationBarItem(
              icon: Icon(Icons.lock_person),
              label: 'Admin',
            ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_membership),
            label: 'Membership',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Content',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ],
      selectedItemColor: const Color.fromRGBO(0, 103, 132, 1),
      unselectedItemColor: Colors.grey[600],
      currentIndex: widget.index,
      onTap: (int index) {
        if (widget.role == 'member') {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, HomeScreen.route);
              break;
            case 1:
              Navigator.pushNamed(context, NewspaperScreen.route);
              break;
            case 2:
              Navigator.pushNamed(context, ScheduleScreen.route);
              break;
            case 3:
              Navigator.pushNamed(context, ProfileScreen.route);
              break;
          }
        } else if (widget.role == 'operator') {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, AdminDashboardScreen.route);
              break;
            case 1:
              Navigator.pushNamed(context, AdminAdministratorScreen.route);
              break;
            case 2:
              Navigator.pushNamed(context, AdminMembershipScreen.route);
              break;
            case 3:
              Navigator.pushNamed(context, AdminContentScreen.route);
              break;
            case 4:
              Navigator.pushNamed(context, ProfileScreen.route);
              break;
          }
        }
      },
    );
  }
}
