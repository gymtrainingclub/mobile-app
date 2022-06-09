// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mobileapp/screen/stop_screen/stop_screen.dart';

import '../../widget/slider_dot.dart';
import '../../widget/splash_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String route = '/splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _currentPage = 0;

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(
              Icons.info,
              color: Colors.white,
              size: 18,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 18,
          ),
          onPressed: () {
            setState(() {
              _currentPage++;
              if (_currentPage == 3) {
                _currentPage = 0;
              }
              _onPageChanged(_currentPage);
            });
          },
        ),
      ),
      body: Builder(builder: (context) {
        return Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              child: Image.asset(
                'assets/images/splash_background$_currentPage.png',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.2),
                  ],
                ),
              ),
            ),
            PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              onPageChanged: _onPageChanged,
              controller: PageController(
                initialPage: _currentPage,
                keepPage: false,
              ),
              itemBuilder: (context, index) {
                return SplashWidget(
                  index: index,
                  currentPage: _currentPage,
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int index = 0; index < 3; index++)
                        if (index == _currentPage)
                          SliderDotWidget(
                            isActive: true,
                          )
                        else
                          SliderDotWidget(
                            isActive: false,
                          ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          _currentPage++;
                          if (_currentPage == 3) {
                            _currentPage = 0;
                            Navigator.of(context).pushNamed(StopScreen.route);
                          }
                          _onPageChanged(_currentPage);
                        });
                      },
                      color: const Color.fromRGBO(0, 103, 132, 1),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 103, 132, 1),
                        decoration: TextDecoration.underline,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () => Navigator.of(context).pushNamed('/stop'),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
