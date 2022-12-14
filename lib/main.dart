import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_details_screen.dart';
import 'package:shop_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop App',
      home: const SplashScreen(),
      theme: ThemeData(
        primaryColor: const Color(0xFF53B175),
      ),
    );
  }
}
