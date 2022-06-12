// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ScheduleDetailScreen extends StatefulWidget {
  const ScheduleDetailScreen({Key? key}) : super(key: key);
  static const String route = '/schedule_detail';

  @override
  State<ScheduleDetailScreen> createState() => _ScheduleDetailScreenState();
}

class _ScheduleDetailScreenState extends State<ScheduleDetailScreen> {
  @override
  Widget build(BuildContext context) {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage("assets/category/category.png"),
              //   fit: BoxFit.cover,
              // ),
              color: Color.fromRGBO(18, 106, 138, 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "Schedule Detail",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      'Mat Pilates',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Monday | Mrs. Smith | 45 min',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.blueGrey,
                            blurRadius: 2,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Date : 07 June 2022',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Time : 12:00 PM',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Duration : 1 hour',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Instructor : Mr. John Doe',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Class : Online',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Participant : 10 Member',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Status : Confirmed',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.blueGrey,
                            blurRadius: 2,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Link Google Meet',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'https://meet.google.com/dasd-dasd-dasd',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    RaisedButton(
                      onPressed: () {},
                      color: const Color.fromRGBO(0, 103, 132, 1),
                      padding: const EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        'Join Meeting',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    RaisedButton(
                      onPressed: () {},
                      color: const Color.fromRGBO(0, 103, 132, 1),
                      padding: const EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        'Confirm',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
