// ignore_for_file: use_build_context_synchronously

import 'package:cavz/pages/intro_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    login();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 380,
              width: 380,
              child: Image.asset('assets/images/cmp_logo1.png'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> login() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => IntroPage(),
    ));
  }
}
