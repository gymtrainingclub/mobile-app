// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widget/bottom_navigation_widget.dart';
import '../login_screen/login_viewmodel.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);
  static const String route = '/about';

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, LoginViewModel loginProvider, _) {
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
          index: 3,
          role: loginProvider.role,
        ),
      );
    });
  }

  stateBody(BuildContext context, LoginViewModel loginProvider) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 80),
          Text(
            'Tentang Aplikasi',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
          SizedBox(height: 16),
          Text(
            'Capstone GYM ada aplikasi Project akhir yang dibuat untuk memenuhi tugas dari Kampus Merdeka Mitra Altera Academy, yang dimana berisi berbagai macam bidang dalam pembangunannya mulai dari UI/UX,Front End,Back End dan QE.',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.black87),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
