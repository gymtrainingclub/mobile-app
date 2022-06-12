// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ClassScreen extends StatefulWidget {
  const ClassScreen({Key? key}) : super(key: key);
  static const String route = '/class';

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        // leading: Container(
        //   padding: const EdgeInsets.all(2),
        //   margin: const EdgeInsets.all(12),
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(4),
        //   ),
        //   child: IconButton(
        //     icon: const Icon(
        //       Icons.arrow_back,
        //       size: 14,
        //     ),
        //     color: Colors.black,
        //     onPressed: () => Navigator.pop(context),
        //   ),
        // ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/icon/strength.png',
                          width: 40,
                          height: 40,
                        ),
                        const Text(
                          'Strength',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Zumba',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Online / Offline',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            const SizedBox(height: 16),
            Padding(
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
                  const Text(
                    'Zumba is a group fitness exercise that consists of a series of aerobic exercises that are designed to improve the strength, flexibility, and coordination of the body.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: const [
                      Text(
                        'Instructor : ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Text(
                        'Location : ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Jalan Darmo No. 1, Jakarta Barat, Jakarta',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Date',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
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
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
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
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
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
                  const SizedBox(height: 8.0),
                  RaisedButton(
                    onPressed: () {},
                    color: const Color.fromRGBO(0, 103, 132, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
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
            ),
          ],
        ),
      ),
    );
  }
}
