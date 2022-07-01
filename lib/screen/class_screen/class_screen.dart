// ignore_for_file: deprecated_member_use, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobileapp/screen/class_booking_screen/class_booking_screen.dart';
import 'package:mobileapp/screen/class_screen/class_viewmodel.dart';
import 'package:provider/provider.dart';

import '../class_booking_screen/claas_booking_viewmodel.dart';
import '../login_screen/login_viewmodel.dart';

class ClassScreen extends StatefulWidget {
  const ClassScreen({Key? key}) : super(key: key);
  static const String route = '/class';

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  @override
  Widget build(BuildContext context) {
    final classProvider = Provider.of<ClassViewModel>(context);
    final arg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    print(classProvider.state);
    if (classProvider.state == ClassViewState.loaded) {
      if (arg['id'] != classProvider.classGetByIdResponse.data?.id) {
        classProvider.state = ClassViewState.initial;
        print('reload');
      } else {
        print('no reload');
      }
    }
    return Consumer(builder: (context, LoginViewModel loginProvider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          elevation: 0,
          leading: Container(
            padding: const EdgeInsets.all(2),
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 14,
              ),
              color: Colors.black,
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
        body: stateBody(context, classProvider, loginProvider, arg),
      );
    });
  }

  stateBody(BuildContext context, ClassViewModel classProvider,
      LoginViewModel loginProvider, Map<String, dynamic> arg) {
    final isLoading = classProvider.state == ClassViewState.loading;
    final isLoaded = classProvider.state == ClassViewState.loaded;
    final isError = classProvider.state == ClassViewState.error;
    final isInitial = classProvider.state == ClassViewState.initial;
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (isLoaded) {
      return _loadedBody(context, classProvider, loginProvider, arg);
    } else if (isError) {
      return const Center(
        child: Text('Error'),
      );
    } else if (isInitial) {
      Timer(
        const Duration(seconds: 2),
        () => classProvider.getClassById(arg['id']),
      );
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            const SizedBox(height: 10),
            Text('Loading...It will take few seconds'),
          ],
        ),
      );
    }
  }

  _loadedBody(BuildContext context, ClassViewModel classProvider,
      LoginViewModel loginProvider, Map<String, dynamic> arg) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          bannerClassWidget(context, classProvider, loginProvider, arg),
          const SizedBox(height: 16),
          bodyClassWidger(context, classProvider, loginProvider, arg),
        ],
      ),
    );
  }

  bodyClassWidger(BuildContext context, ClassViewModel classProvider,
      LoginViewModel loginProvider, Map<String, dynamic> arg) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Description',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '${classProvider.classGetByIdResponse.data?.description}',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Text(
                'Instructor : ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                '${classProvider.classGetByIdResponse.data?.instructor?.name}',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Location : ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: Text(
                  '${classProvider.classGetByIdResponse.data?.address}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  softWrap: true,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Date',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8, bottom: 8),
            height: 50.0,
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    width: 70.0,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color.fromRGBO(18, 106, 138, 1),
                    ),
                    child: Column(
                      children: const [
                        Text(
                          '13 Jun',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        Text(
                          'Sen',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Container(
                    width: 70.0,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      children: const [
                        Text(
                          '14 Jun',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Sel',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Container(
                    width: 70.0,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      children: const [
                        Text(
                          '15 Jun',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Rab',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Container(
                    width: 70.0,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      children: const [
                        Text(
                          '16 Jun',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Kam',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Container(
                    width: 70.0,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color.fromRGBO(216, 216, 216, 1),
                    ),
                    child: Column(
                      children: const [
                        Text(
                          '17 Jun',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(121, 116, 126, 1),
                          ),
                        ),
                        Text(
                          'Sab',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(121, 116, 126, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Container(
                    width: 70.0,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      children: const [
                        Text(
                          '18 Jun',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Jum',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Container(
                    width: 70.0,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      children: const [
                        Text(
                          '19 Jun',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Sab',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Text(
            'Time',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            height: 30.0,
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 70.0,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color.fromRGBO(18, 106, 138, 1),
                    ),
                    child: const Text(
                      '08:00',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Container(
                    width: 70.0,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: const Text(
                      '09:00',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Container(
                    width: 70.0,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color.fromRGBO(216, 216, 216, 1),
                    ),
                    child: const Text(
                      '09:00',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(121, 116, 126, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Text(
            'Type Class',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            height: 30.0,
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 70.0,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: const Text(
                      'Online',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Container(
                    width: 70.0,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color.fromRGBO(18, 106, 138, 1),
                    ),
                    child: const Text(
                      'Offline',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          RaisedButton(
            onPressed: () {
              final classBookingProvider =
                  Provider.of<ClassBookingViewModel>(context, listen: false);
              if (classBookingProvider.state == ClassBookingViewState.loaded) {
                classBookingProvider.changeState(ClassBookingViewState.initial);
              }
              Navigator.pushNamed(
                context,
                ClassBookingScreen.route,
                arguments: {
                  'classId': '1',
                  'className': 'English',
                  'classImage': 'https://i.picsum.photos/id/10/200/300.jpg',
                  'classDescription': 'English class',
                  'classPrice': 'Rp. 100.000',
                },
              );
            },
            color: const Color.fromRGBO(0, 103, 132, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: const Text(
              'Booking',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Container bannerClassWidget(
      BuildContext context,
      ClassViewModel classProvider,
      LoginViewModel loginProvider,
      Map<String, dynamic> arg) {
    return Container(
        height: 228,
        padding: const EdgeInsets.only(
          top: 40,
          bottom: 20,
          left: 20,
          right: 20,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/class/zumba.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${classProvider.classGetByIdResponse.data?.category?.name}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.end,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${classProvider.classGetByIdResponse.data?.name} ${classProvider.classGetByIdResponse.data?.id} / ${arg['id']}',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '${classProvider.classGetByIdResponse.data?.type}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
