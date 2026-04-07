import 'package:flutter/material.dart';
import '../app/route_names.dart';
import '../view/home_screen.dart';
import '../view/about_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Company App',
      initialRoute: RouteNames.home,
      routes: {
        RouteNames.home: (context) => const HomeScreen(),
        RouteNames.about: (context) => const AboutScreen(),
      },
    );
  }
}