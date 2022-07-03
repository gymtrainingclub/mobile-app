// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../login_screen/login_viewmodel.dart';

class AdminAdministratorAddScreen extends StatefulWidget {
  const AdminAdministratorAddScreen({Key? key}) : super(key: key);
  static const String route = '/admin_administrator_add';

  @override
  State<AdminAdministratorAddScreen> createState() =>
      _AdminAdministratorAddScreenState();
}

class _AdminAdministratorAddScreenState
    extends State<AdminAdministratorAddScreen> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
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
        body: stateBody(context, args),
      );
    });
  }

  stateBody(BuildContext context, Map<String, dynamic> args) {
    String state = args['state'];
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Admin Administrator ${state == 'add' ? 'Add' : 'Edit'}',
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${args['adminName'] ?? 'New Administrator'} ${args['state'] == 'add' ? '' : '${args['id']}'}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: formBuild(context, args),
            ),
          ),
        ],
      ),
    );
  }

  formBuild(BuildContext context, Map<String, dynamic> args) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          'Name',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
          controller: TextEditingController(
            text: args['adminName'],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Email',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
          controller: TextEditingController(
            text: args['adminEmail'],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Password',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
          controller: TextEditingController(
            text: args['adminPassword'],
          ),
        ),
        if (args['state'] == 'add') ...[
          SizedBox(
            height: 20,
          ),
          Text(
            'Confirm Password',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            controller: TextEditingController(
              text: args['adminConfirmPassword'],
            ),
          ),
        ],
        SizedBox(
          height: 20,
        ),
        Text(
          'Role',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
          controller: TextEditingController(
            text: args['adminRole'],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Status',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
          controller: TextEditingController(
            text: args['adminStatus'],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          onPressed: () {},
          color: const Color.fromRGBO(12, 48, 61, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Text(
            args['state'] == 'add' ? 'Add Admin' : 'Save Changes',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
