// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mobileapp/screen/login_screen/login_screen.dart';
import 'package:mobileapp/screen/membership_screen/membership_screen.dart';
import 'package:provider/provider.dart';

import '../../widget/bottom_navigation_widget.dart';
import '../login_screen/login_viewmodel.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const String route = '/profile';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginViewModel>(context);
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'John Doe',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Gold Membership'),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.black87,
                              size: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black.withOpacity(0.2),
                height: 50,
                thickness: 1,
              ),
              const ListTile(
                title: Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
                leading: Icon(
                  Icons.person,
                  size: 32,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed(MembershipScreen.route);
                },
                title: const Text(
                  'Membership',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
                leading: const Icon(
                  Icons.card_membership,
                  size: 32,
                ),
              ),
              const ListTile(
                title: Text(
                  'Classes',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
                leading: Icon(
                  Icons.class_,
                  size: 32,
                ),
              ),
              const ListTile(
                title: Text(
                  'Payment',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
                leading: Icon(
                  Icons.payment,
                  size: 32,
                ),
              ),
              const ListTile(
                title: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
                leading: Icon(
                  Icons.settings,
                  size: 32,
                ),
              ),
              const ListTile(
                title: Text(
                  'Help',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
                leading: Icon(
                  Icons.help,
                  size: 32,
                ),
              ),
              ListTile(
                title: const Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                leading: const Icon(
                  Icons.exit_to_app,
                  size: 32,
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Are you sure?'),
                      content: const Text('Do you want to logout?'),
                      actions: [
                        FlatButton(
                          child: const Text('No'),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        FlatButton(
                          child: const Text('Yes'),
                          onPressed: () {
                            loginProvider.logout();
                            Navigator.of(context).pop();
                            Navigator.of(context).pushReplacementNamed(
                              LoginScreen.route,
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(index: 3),
    );
  }
}
