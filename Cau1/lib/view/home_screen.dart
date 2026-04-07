import 'package:flutter/material.dart';
import '../../app/route_names.dart';
import '../../widget/primary_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Nguyen Quoc Viet - 6451071084',
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            PrimaryButton(
              text: 'Go to About',
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.about);
              },
            ),
          ],
        ),
      ),
    );
  }
}