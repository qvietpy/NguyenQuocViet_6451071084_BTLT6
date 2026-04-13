import 'package:flutter/material.dart';
import '../util/route_names.dart';
import '../widget/app_button.dart';

class Page2View extends StatelessWidget {
  const Page2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2 - MSSV 6451071084'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButton(
              title: 'Next',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Đây là màn hình cuối'),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            AppButton(
              title: 'Go Home',
              onPressed: () {
                Navigator.popUntil(
                  context,
                  ModalRoute.withName(RouteNames.home),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}