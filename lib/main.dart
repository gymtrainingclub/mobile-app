import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'screen/logo_screen/logo_screen.dart';
import 'screen/splash_screen/splash_screen.dart';
import 'screen/stop_screen/stop_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

PageRouteBuilder routeBuilder(
  Widget widget,
  RouteSettings routeSettings,
) {
  return PageRouteBuilder(
    settings: routeSettings,
    pageBuilder: (_, __, ___) => widget,
    transitionsBuilder: (_, animation, __, child) {
      final tween = Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).chain(CurveTween(curve: Curves.easeInOut));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.openSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (set) {
        switch (set.name) {
          case LogoScreen.route:
            return routeBuilder(const LogoScreen(), set);
          case SplashScreen.route:
            return routeBuilder(const SplashScreen(), set);
          case StopScreen.route:
            return routeBuilder(const StopScreen(), set);
          default:
            return routeBuilder(const LogoScreen(), set);
        }
      },
    );
  }
}
