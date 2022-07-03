// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mobileapp/screen/admin_administrator_screen/admin_administrator_add_screen.dart';
import 'package:provider/provider.dart';

import '../../widget/bottom_navigation_widget.dart';
import '../login_screen/login_viewmodel.dart';

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
    return Consumer(builder: (context, LoginViewModel loginProvider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(12, 48, 61, 1),
          automaticallyImplyLeading: false,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Text(
                'Cleo Zambrano',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 15,
              backgroundImage: NetworkImage(
                'https://i.pravatar.cc/300',
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: stateBody(context),
        bottomNavigationBar: BottomNavigationWidget(
          index: 2,
          role: loginProvider.role,
        ),
      );
    });
  }

  stateBody(BuildContext context) => loadedBody(context);

  loadedBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Admin Administrator',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.grey,
            height: 1,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Color.fromRGBO(12, 48, 61, 1),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 14),
                ),
                child: Text('Search'),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(
                  Icons.add_circle_outline_sharp,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pushNamed(
                      context, AdminAdministratorAddScreen.route,
                      arguments: {
                        'state': 'add',
                      });
                },
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (var i = 0; i < 10; i++)
                    Card(
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(8),
                        title: Padding(
                          padding: const EdgeInsets.only(bottom: 8, top: 8),
                          child: Text('Admin Administrator $i'),
                        ),
                        subtitle: Column(
                          children: [
                            Table(
                              columnWidths: {
                                0: FlexColumnWidth(1),
                                1: FlexColumnWidth(2),
                              },
                              children: [
                                TableRow(
                                  children: [
                                    Text('ID'),
                                    Text('0011311394'),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Text('Phone'),
                                    Text('+1 (818) 888-8888'),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Text('Join'),
                                    Text('2020-01-01'),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Text('Password'),
                                    Text('********'),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.edit,
                                size: 20,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  AdminAdministratorAddScreen.route,
                                  arguments: {
                                    'id': i,
                                    'adminName': 'Admin Administrator',
                                    'adminEmail': 'admin@gmail.com',
                                    'adminPassword': 'admin',
                                    'adminJoin': '2020-01-01',
                                    'state': 'Edit',
                                  },
                                );
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.delete,
                                size: 20,
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => Card(
                                    child: AlertDialog(
                                      title: Column(
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Icon(
                                            Icons.delete,
                                            size: 40,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Center(
                                            child: Text('Delete'),
                                          ),
                                        ],
                                      ),
                                      content: Text(
                                          'Deleting this file will be permanent.'),
                                      actionsAlignment:
                                          MainAxisAlignment.center,
                                      actionsPadding: EdgeInsets.all(10),
                                      actions: [
                                        FlatButton(
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            style: TextButton.styleFrom(
                                              primary:
                                                  Color.fromRGBO(12, 48, 61, 1),
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 16,
                                                vertical: 14,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  color: Color.fromRGBO(
                                                      12, 48, 61, 1),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  4,
                                                ),
                                              ),
                                            ),
                                            child: Text('Cancel'),
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        FlatButton(
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            style: TextButton.styleFrom(
                                              primary: Colors.white,
                                              backgroundColor:
                                                  Color.fromRGBO(12, 48, 61, 1),
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 16,
                                                vertical: 14,
                                              ),
                                            ),
                                            child: Text('Delete'),
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
