// ignore_for_file: use_build_context_synchronously
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shop_app/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int durationInSeconds = 5;
  late Timer splashDuration;

  @override
  initState() {
    super.initState();
    loading();
  }

  @override
  void dispose() {
    super.dispose();
    splashDuration.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF53B175),
      body: Center(
        child: Image(image: AssetImage('assets/images/logo.png'),),
      ),
    );
  }

  loading() async {
    splashDuration = Timer(Duration(seconds: durationInSeconds), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
    });
  }
}
