import 'package:flutter/material.dart';
import '../util/route_names.dart';
import '../widget/app_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home - MSSV 6451071084'),
        centerTitle: true,
      ),
      body: Center(
        child: AppButton(
          title: 'Next',
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.page1);
          },
        ),
      ),
    );
  }
}