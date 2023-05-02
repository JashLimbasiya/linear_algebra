import 'dart:async';

import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';
import 'package:linear_algebra/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: background(),
          child: Center(
            child: SizedBox(
                width: 350,
                height: 350,
                child: Image.asset('lib/assets/images/logo.png')),
          ),
        ),
      ),
    );
  }
}
