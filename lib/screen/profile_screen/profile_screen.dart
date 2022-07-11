// ignore_for_file: deprecated_member_use, avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobileapp/screen/about_screen/about_screen.dart';
import 'package:mobileapp/screen/change_password_screen/change_password_screen.dart';
import 'package:mobileapp/screen/stop_screen/stop_screen.dart';
import 'package:provider/provider.dart';

import '../../widget/bottom_navigation_widget.dart';
import '../login_screen/login_viewmodel.dart';
import '../my_profile_screen/my_profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const String route = '/profile';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // late SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, LoginViewModel loginProvider, _) {
      int index = 3;
      if (loginProvider.role == 'admin') {
        index = 4;
      } else if (loginProvider.role == 'member' ||
          loginProvider.role == 'operator') {
        index = 3;
      }
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
        ),
        body: stateBody(context, loginProvider),
        bottomNavigationBar: BottomNavigationWidget(
          index: index,
          role: loginProvider.role,
        ),
      );
    });
  }

  stateBody(BuildContext context, LoginViewModel loginProvider) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 80),
            const Text(
              'Profile',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              shadowColor: Colors.black,
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyProfileScreen.route);
                },
                title: Text(
                  'Personal Information',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              shadowColor: Colors.black,
              child: ListTile(
                title: Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              shadowColor: Colors.black,
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, ChangePasswordScreen.route);
                },
                title: Text(
                  'Change Password',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              shadowColor: Colors.black,
              child: ListTile(
                title: Text(
                  'Language',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              shadowColor: Colors.black,
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, AboutScreen.route);
                },
                title: Text(
                  'About App',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              shadowColor: Colors.black,
              child: ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Are you sure?'),
                      content: const Text('This action cannot be undone.'),
                      actions: [
                        FlatButton(
                          child: const Text('Cancel'),
                          onPressed: () => Navigator.pop(context),
                        ),
                        FlatButton(
                          child: const Text('Logout'),
                          onPressed: () {
                            loginProvider.logout();
                            Navigator.pushNamedAndRemoveUntil(
                                context, StopScreen.route, (route) => false);
                          },
                        ),
                      ],
                    ),
                  );
                },
                title: Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
