import 'package:flutter/material.dart';
import 'package:news/layout/home_screen.dart';
import 'package:news/screens/settings.dart';
import 'package:news/screens/splash_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName:(context)=>SplashScreen(),

        HomeScreen.routeName:(context)=>HomeScreen(),
        Settings.routeName:(context)=>Settings(),


      },
    );
  }
}
