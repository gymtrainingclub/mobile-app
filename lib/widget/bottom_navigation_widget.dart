import 'package:flutter/material.dart';

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
      selectedItemColor: Colors.green[800],
      unselectedItemColor: Colors.grey[600],
      currentIndex: widget.index,
      onTap: (int index) {
        if (index == 0) {
          Navigator.of(context).pushNamed('/home');
        }
        if (index == 1) {
          Navigator.of(context).pushNamed('/news');
        }
        if (index == 2) {
          Navigator.of(context).pushNamed('/schedule');
        }
        if (index == 3) {
          Navigator.of(context).pushNamed('/profile');
        }
      },
    );
  }
}
