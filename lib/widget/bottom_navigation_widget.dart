import 'package:flutter/material.dart';
import 'package:mobileapp/screen/home_screen/home_screen.dart';
import 'package:mobileapp/screen/profile_screen/profile_screen.dart';

import '../screen/newspaper_screen/newspaper_screen.dart';

// ignore: must_be_immutable
class BottomNavigationWidget extends StatefulWidget {
  int index;
  BottomNavigationWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.newspaper),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: 'Schedule',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      selectedItemColor: const Color.fromRGBO(0, 103, 132, 1),
      unselectedItemColor: Colors.grey[600],
      currentIndex: widget.index,
      onTap: (int index) {
        if (index == 0) {
          Navigator.of(context).pushNamed(HomeScreen.route);
        }
        if (index == 1) {
          Navigator.of(context).pushNamed(NewspaperScreen.route);
        }
        if (index == 2) {
          Navigator.of(context).pushNamed('/schedule');
        }
        if (index == 3) {
          Navigator.of(context).pushNamed(ProfileScreen.route);
        }
      },
    );
  }
}
