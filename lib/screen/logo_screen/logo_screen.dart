// ignore_for_file: unnecessary_null_comparison, use_build_context_synchronously

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobileapp/screen/admin_dashboard_screen/admin_dashboard_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../home_screen/home_screen.dart';
import 'logo_viewmodel.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({Key? key}) : super(key: key);
  static const String route = '/logo';

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  late SharedPreferences prefs;
  late String token = 'kosong';
  late String role = 'kosong';
  getSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
    // token = prefs.getString('token') ??
    //     'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImltbWFudWVscGF5QGdtYWlsLmNvbSIsImV4cCI6MTY1NDE0MTY2MiwibmFtZSI6IkltYW51ZWwgUGF5Iiwicm9sZSI6OTksInVzZXJJZCI6MX0.4bpygfzn74hfjAE9TOApaHzVNGYXDq3BIdrSh7MiXiE';
    // prefs.remove('token');
    // prefs.remove('role');
    role = prefs.getString('role') ?? 'kosong';
    token = prefs.getString('token') ?? 'kosong';
    print('token woe: $token');
    print('role woe: $role');
    Provider.of<LogoViewModel>(context, listen: false).token = token;
    Provider.of<LogoViewModel>(context, listen: false).getVerifyResponse(token);
  }

  @override
  void initState() {
    getSharedPreferences();
    super.initState();
  }

  Widget stateScaffold(BuildContext context, LogoViewModel logoViewModel) {
    final isLoading = logoViewModel.state == LogoViewState.loading;
    final isLoaded = logoViewModel.state == LogoViewState.loaded;
    final isError = logoViewModel.state == LogoViewState.error;
    if (isLoading) {
      return Scaffold(
        backgroundColor: const Color.fromRGBO(12, 48, 61, 1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      );
    } else if (isLoaded) {
      if (role == 'admin') {
        Timer(
          const Duration(seconds: 2),
          () => Navigator.of(context).pushNamed(AdminDashboardScreen.route),
        );
      } else {
        Timer(
          const Duration(seconds: 2),
          () => Navigator.of(context).pushNamed(HomeScreen.route),
        );
      }
      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromRGBO(204, 210, 227, 1), width: 2),
                ),
                child: Image.asset(
                  'assets/icon/Subtract.png',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Logging session...',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Selamat datang kak, ${logoViewModel.verifyresponse.data!.name}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Silahkan tunggu sebentar',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      );
    } else if (isError) {
      return Scaffold(
        body: Column(
          children: const [
            Center(
              child: Text('Error'),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text('Something went wrong'),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: const Color.fromRGBO(12, 48, 61, 1),
        body: Center(
          child: Image.asset(
            'assets/images/logo.png',
            width: 200,
            height: 200,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final logoViewModel = Provider.of<LogoViewModel>(context);
    print('token woe: $token');
    print('role woe: $role');
    print('token: $token');
    print('token 2: ${logoViewModel.token}');
    print('status state: ${logoViewModel.state}');
    print('status : ${logoViewModel.verifyresponse.status}');
    print('data : ${logoViewModel.verifyresponse.data}');
    print('data : ${logoViewModel.verifyresponse.data!.name}');
    return stateScaffold(context, logoViewModel);
  }
}
