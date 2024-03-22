import 'package:flutter/material.dart';
import 'package:news/layout/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "splashScreen";

  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
            (route) => false);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/images/logo (2).png")),
    );
  }
}
