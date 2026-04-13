import 'package:flutter/material.dart';
import '../util/route_names.dart';
import '../view/home_view.dart';
import '../view/page1_view.dart';
import '../view/page2_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.home,
      routes: {
        RouteNames.home: (context) => const HomeView(),
        RouteNames.page1: (context) => const Page1View(),
        RouteNames.page2: (context) => const Page2View(),
      },
    );
  }
}