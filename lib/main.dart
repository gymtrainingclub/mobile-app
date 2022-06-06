import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen/home_screen/home_screen.dart';
import 'screen/login_screen/login_screen.dart';
import 'screen/profile_screen/profile_screen.dart';
import 'screen/register_screen/register_screen.dart';
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
          case RegisterScreen.route:
            return routeBuilder(const RegisterScreen(), set);
          case LoginScreen.route:
            return routeBuilder(const LoginScreen(), set);
          case HomeScreen.route:
            return routeBuilder(const HomeScreen(), set);
          case ProfileScreen.route:
            return routeBuilder(const ProfileScreen(), set);
          default:
            return routeBuilder(const LogoScreen(), set);
        }
      },
    );
  }
}
