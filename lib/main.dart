// ignore_for_file: no_duplicate_case_values

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobileapp/screen/admin_administrator_screen/admin_administrator_add_screen.dart';
import 'package:mobileapp/screen/admin_administrator_screen/admin_administrator_screen.dart';
import 'package:mobileapp/screen/admin_content_screen/admin_content_screen.dart';
import 'package:mobileapp/screen/admin_instructor_screen/admin_instructor_viewmodel.dart';
import 'package:mobileapp/screen/admin_membership_screen/admin_membership_screen.dart';
import 'package:mobileapp/screen/admin_menu_screen/admin_menu_screen.dart';
import 'package:mobileapp/screen/admin_menu_screen/admin_menu_viewmodel.dart';
import 'package:mobileapp/screen/admin_profile_screen/admin_profile_screen.dart';
import 'package:mobileapp/screen/admin_profile_screen/admin_profile_viewmodel.dart';
import 'package:mobileapp/screen/class_booking_screen/claas_booking_viewmodel.dart';
import 'package:mobileapp/screen/class_booking_screen/class_booking_screen.dart';
import 'package:mobileapp/screen/class_screen/class_viewmodel.dart';
import 'package:mobileapp/screen/my_profile_screen/my_profile_screen.dart';
import 'package:mobileapp/screen/my_profile_screen/my_profile_viewmodel.dart';
import 'package:mobileapp/screen/newsletter_detail_screen/newsletter_detail_screen.dart';
import 'package:mobileapp/screen/newsletter_detail_screen/newsletter_detail_viewmodel.dart';
import 'package:mobileapp/screen/newsletter_screen/newsletter_screen.dart';
import 'package:mobileapp/screen/newsletter_screen/newsletter_viewmodel.dart';
import 'package:mobileapp/screen/notification_screen/notification_viewmodel.dart';
import '/screen/admin_dashboard_screen/admin_dashboard_screen.dart';
import '/screen/category_screen/category_screen.dart';
import '/screen/class_screen/class_screen.dart';
import '/screen/membership_payment_screen/membership_payment_screen.dart';
import '/screen/membership_register_screen/membership_register_screen.dart';
import '/screen/membership_screen/membership_screen.dart';
import '/screen/schedule_detail_screen/schedule_detail_screen.dart';
import '/screen/schedule_screen/schedule_screen.dart';
import 'screen/admin_administrator_screen/admin_administrator_viewmodel.dart';
import 'screen/admin_classes_screen/admin_classes_add_screen.dart';
import 'screen/admin_classes_screen/admin_classes_screen.dart';
import 'screen/admin_classes_screen/admin_classes_viewmodel.dart';
import 'screen/admin_content_screen/admin_content_viewmodel.dart';
import 'screen/admin_dashboard_screen/admin_dashboard_viewmodel.dart';
import 'screen/admin_instructor_screen/admin_instructor_screen.dart';
import 'screen/admin_membership_screen/admin_membership_detail_screen.dart';
import 'screen/admin_membership_screen/admin_membership_viewmodel.dart';
import 'screen/admin_notification_screen/admin_notification_screen.dart';
import 'screen/admin_notification_screen/admin_notification_viewmodel.dart';
import 'screen/category_screen/category_viewmodel.dart';
import 'screen/home_screen/home_screen.dart';
import 'screen/home_screen/home_viewmodel.dart';
import 'screen/login_screen/login_screen.dart';
import 'screen/login_screen/login_viewmodel.dart';
import 'screen/logo_screen/logo_viewmodel.dart';
import 'screen/membership_detail_screen/membership_detail_screen.dart';
import 'screen/membership_detail_screen/membership_detail_viewmodel.dart';
import 'screen/membership_screen/membership_viewmodel.dart';
import 'screen/my_membership_screen/my_membership_screen.dart';
import 'screen/my_membership_screen/my_membership_viewmodel.dart';
import 'screen/notification_screen/notification_screen.dart';
import 'screen/profile_screen/profile_screen.dart';
import 'screen/profile_screen/profile_viewmodel.dart';
import 'screen/register_screen/register_screen.dart';
import 'package:provider/provider.dart';
import 'screen/logo_screen/logo_screen.dart';
import 'screen/register_screen/register_viewmodel.dart';
import 'screen/schedule_detail_screen/schedule_detail_viewmodel.dart';
import 'screen/schedule_screen/schedule_viewmodel.dart';
import 'screen/splash_screen/splash_screen.dart';
import 'screen/stop_screen/stop_screen.dart';
import 'screen/success_screen/success_screen.dart';
import 'screen/welcome_screen/welcome_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LogoViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => LoginViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => RegisterViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => HomeViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => NewsletterViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => ClassViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => ClassBookingViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => MembershipViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => CategoryViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => ScheduleViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => ScheduleDetailViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => MembershipDetailViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => MyMembershipViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProfileViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => AdminDashboardViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => AdminContentViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => AdminAdministratorViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => NewsletterDetailViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => MyProfileViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => NotificationViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => AdminInstructorViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => AdminNotificationViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => AdminMenuViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => AdminProfileViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => AdminMembershipViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => AdminClassesViewModel(),
        ),
      ],
      child: const MyApp(),
    ),
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
        textTheme: GoogleFonts.interTextTheme(
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
          case WelcomeScreen.route:
            return routeBuilder(const WelcomeScreen(), set);
          case SuccessScreen.route:
            return routeBuilder(const SuccessScreen(), set);
          case CategoryScreen.route:
            return routeBuilder(const CategoryScreen(), set);
          case ClassScreen.route:
            return routeBuilder(const ClassScreen(), set);
          case NewsletterDetailScreen.route:
            return routeBuilder(const NewsletterDetailScreen(), set);
          case NewsletterScreen.route:
            return routeBuilder(const NewsletterScreen(), set);
          case MembershipScreen.route:
            return routeBuilder(const MembershipScreen(), set);
          case MembershipDetailScreen.route:
            return routeBuilder(const MembershipDetailScreen(), set);
          case MembershipRegisterScreen.route:
            return routeBuilder(const MembershipRegisterScreen(), set);
          case MembershipPaymentScreen.route:
            return routeBuilder(const MembershipPaymentScreen(), set);
          case MyMembershipScreen.route:
            return routeBuilder(const MyMembershipScreen(), set);
          case ScheduleScreen.route:
            return routeBuilder(const ScheduleScreen(), set);
          case ScheduleDetailScreen.route:
            return routeBuilder(const ScheduleDetailScreen(), set);
          case AdminDashboardScreen.route:
            return routeBuilder(const AdminDashboardScreen(), set);
          case AdminAdministratorScreen.route:
            return routeBuilder(const AdminAdministratorScreen(), set);
          case AdminMembershipScreen.route:
            return routeBuilder(const AdminMembershipScreen(), set);
          case AdminContentScreen.route:
            return routeBuilder(const AdminContentScreen(), set);
          case ClassBookingScreen.route:
            return routeBuilder(const ClassBookingScreen(), set);
          case MembershipPaymentScreen.route:
            return routeBuilder(const MembershipPaymentScreen(), set);
          case MyProfileScreen.route:
            return routeBuilder(const MyProfileScreen(), set);
          case NotificationScreen.route:
            return routeBuilder(const NotificationScreen(), set);
          case AdminInstructorScreen.route:
            return routeBuilder(const AdminInstructorScreen(), set);
          case AdminNotificationScreen.route:
            return routeBuilder(const AdminNotificationScreen(), set);
          case AdminMenuScreen.route:
            return routeBuilder(const AdminMenuScreen(), set);
          case AdminProfileScreen.route:
            return routeBuilder(const AdminProfileScreen(), set);
          case AdminAdministratorAddScreen.route:
            return routeBuilder(const AdminAdministratorAddScreen(), set);
          case AdminMembershipDetailScreen.route:
            return routeBuilder(const AdminMembershipDetailScreen(), set);
          case AdminClassesScreen.route:
            return routeBuilder(const AdminClassesScreen(), set);
          case AdminClassesAddScreen.route:
            return routeBuilder(const AdminClassesAddScreen(), set);
          default:
            return routeBuilder(const LogoScreen(), set);
        }
      },
    );
  }
}
