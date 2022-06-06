import 'package:flutter/material.dart';
import 'package:mobileapp2/widget/bottom_navigation_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String route = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black.withOpacity(0.1),
                ),
                child: const Center(
                  child: Text(
                    'Unactive Membership',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Classes',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 120.0,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 180.0,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Container(
                      width: 180.0,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Container(
                      width: 180.0,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Container(
                      height: 180.0,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 180.0,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Center(
                child: Text(
                  '"The is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..."',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Content',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 20,
              ),
              // SizedBox(
              //   height: 360.0,
              SizedBox(
                height: 360.0,
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView(
                    // This next line does the trick.
                    shrinkWrap: true,
                    children: <Widget>[
                      Container(
                        height: 180.0,
                        decoration: BoxDecoration(
                          color: Colors.yellow.withOpacity(0.1),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        height: 180.0,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        height: 180.0,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        height: 180.0,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        height: 180.0,
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.1),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(
        index: 0,
      ),
    );
  }
}
