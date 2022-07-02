// ignore_for_file: deprecated_member_use, prefer_const_constructors, unnecessary_null_comparison

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
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    if (args == null) {
      return Scaffold(
        body: Center(
          child: Text('No data'),
        ),
      );
    }
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
      body: stateBody(context, args),
    );
  }

  stateBody(BuildContext context, Map<String, dynamic> args) {
    return Column(
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
                  Text(
                    'Fit Rush ${args['id']}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8.0),
                    child: Table(
                      columnWidths: const {
                        0: FlexColumnWidth(1.0),
                        1: FlexColumnWidth(2.0),
                      },
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: [
                        TableRow(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                'Date',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                ':  ${args['classDate']}',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(83, 82, 84, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                'Time',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                ':  ${args['classTime']}',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(83, 82, 84, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                'Duration',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                ':  ${args['classDuration']}',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(83, 82, 84, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                'Class',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                ':  ${args['classType']}',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(83, 82, 84, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                'Category',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                ':  ${args['classCategory']}',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(83, 82, 84, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                'Instructor',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                ':  ${args['classInstructor']}',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(83, 82, 84, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (args['classType'] == 'Offline')
                          TableRow(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Text(
                                  'Address',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Text(
                                  ':  ${args['classAddress']}',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(83, 82, 84, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        if (args['classType'] == 'Online')
                          TableRow(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Text(
                                  'Link',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Text(
                                  ':  ${args['classLink']}',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(83, 82, 84, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (args['classType'] == 'Offline') ...[
                          Text(
                            'Maps',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16),
                          maps(
                            latitude: args['classLatitude'],
                            longitude: args['classLongitude'],
                          ),
                          SizedBox(height: 16),
                          RaisedButton(
                            onPressed: () {
                              launch(
                                  'https://www.google.com/maps/search/?api=1&query=${args['classLatitude']},${args['classLongitude']}');
                            },
                            color: Colors.white,
                            padding: const EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(
                                  color: Color.fromRGBO(121, 116, 126, 1),
                                  width: 1),
                            ),
                            child: const Text(
                              'Get Direction',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(0, 103, 132, 1),
                              ),
                            ),
                          ),
                        ],
                        if (args['classType'] == 'Online') ...[
                          Text(
                            'Apps',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            width: 100,
                            alignment: Alignment.topLeft,
                            child: Image.asset(
                              'assets/meet/gmeet.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(height: 16),
                          RaisedButton(
                            onPressed: () {
                              launch(args['classLink']);
                            },
                            color: Colors.white,
                            padding: const EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(
                                  color: Color.fromRGBO(121, 116, 126, 1),
                                  width: 1),
                            ),
                            child: const Text(
                              'Get App',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(0, 103, 132, 1),
                              ),
                            ),
                          ),
                        ]
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  maps({required latitude, required longitude}) {
    // return Container(
    //   height: 200,
    //   child: GoogleMap(
    //     initialCameraPosition: CameraPosition(
    //       target: LatLng(latitude, longitude),
    //       zoom: 15,
    //     ),
    //     markers: {
    //       Marker(
    //         markerId: MarkerId('marker'),
    //         position: LatLng(latitude, longitude),
    //       ),
    //     },
    //   ),
    // );
    return SizedBox(
      height: 200,
      child: Image.network(
        'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=15&size=400x200&markers=color:red%7C$latitude,$longitude&key=AIzaSyD-9tSrke72PouQMnMX-a7eZSW0jkFMBWY',
        fit: BoxFit.cover,
      ),
    );
  }

  void launch(String s) {
    launch(s);
  }
}
