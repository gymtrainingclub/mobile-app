import 'package:flutter/material.dart';
import 'package:mobileapp2/widget/splash_widget.dart';

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
      ),
      body: Builder(builder: (context) {
        return Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              child: Image.network(
                'https://source.unsplash.com/random/800x600/?index=$_currentPage',
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
              itemBuilder: (context, index) {
                return SplashWidget(
                  index: index,
                  currentPage: _currentPage,
                );
              },
            ),
          ],
        );
      }),
    );
  }
}
