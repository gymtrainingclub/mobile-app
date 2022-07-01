// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, avoid_print, unused_local_variable

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobileapp/screen/schedule_screen/schedule_screen.dart';
import 'package:provider/provider.dart';

import '../login_screen/login_viewmodel.dart';
import 'claas_booking_viewmodel.dart';

class ClassBookingScreen extends StatefulWidget {
  const ClassBookingScreen({Key? key}) : super(key: key);
  static const String route = '/class_booking';

  @override
  State<ClassBookingScreen> createState() => _ClassBookingScreenState();
}

class _ClassBookingScreenState extends State<ClassBookingScreen> {
  @override
  Widget build(BuildContext context) {
    final classBookingProvider = Provider.of<ClassBookingViewModel>(context);
    final arg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    // print(classBookingProvider.state);
    // if (classBookingProvider.state == ClassBookingViewState.loaded) {
    //   if (arg['id'] == null) {
    //     classBookingProvider.state = ClassBookingViewState.initial;
    //     print('reload');
    //   } else {
    //     print('no reload');
    //   }
    // }
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
        body: stateBody(context, classBookingProvider, loginProvider),
      );
    });
  }

  stateBody(BuildContext context, ClassBookingViewModel classBookingProvider,
      LoginViewModel loginProvider) {
    final isLoading =
        classBookingProvider.state == ClassBookingViewState.loading;
    final isLoaded = classBookingProvider.state == ClassBookingViewState.loaded;
    final isError = classBookingProvider.state == ClassBookingViewState.error;
    final isInitial =
        classBookingProvider.state == ClassBookingViewState.initial;
    if (isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (isLoaded) {
      Timer(
        const Duration(seconds: 2),
        () => ScheduleScreen.route,
      );
      return Center(
        child: Text(
          'Done',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    } else if (isError) {
      return Center(
        child: Text('Error'),
      );
    } else if (isInitial) {
      return Center(
        child: _initialBody(context, classBookingProvider, loginProvider),
      );
    } else {
      return Center(
        child: Text('Unknown'),
      );
    }
  }
}

_initialBody(BuildContext context, ClassBookingViewModel classBookingProvider,
    LoginViewModel loginProvider) {
  return SingleChildScrollView(
    child: Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Class Booking',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromRGBO(234, 234, 234, 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Fit Rush',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Date',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('12 Juni 2020'),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Time',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('12:00 PM - 1:00 PM')
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Duration',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('1 Hour')
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Class',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Offline')
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Cardio')
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Instructor',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('John Doe')
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Address',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Jl. Kebon Kacang No. 1, Jakarta Barat')
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          RaisedButton(
            onPressed: () {
              Timer(
                const Duration(seconds: 2),
                () => Navigator.pop(context),
              );
              classBookingProvider.state = ClassBookingViewState.loaded;
            },
            color: const Color.fromRGBO(0, 103, 132, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: const Text(
              'Schedule',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: BorderSide(
                color: const Color.fromRGBO(121, 116, 126, 1),
                width: 1,
              ),
            ),
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: const Text(
              'Kembali',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 103, 132, 1),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
