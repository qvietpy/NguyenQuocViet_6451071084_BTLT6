import 'package:flutter/material.dart';
import '../widget/app_button.dart';

class ConfirmView extends StatelessWidget {
  const ConfirmView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirm Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bạn có chắc muốn xóa dữ liệu không?',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            AppButton(
              title: 'Yes',
              onPressed: () {
                Navigator.pop(context, true);
              },
            ),
            const SizedBox(height: 12),
            AppButton(
              title: 'No',
              onPressed: () {
                Navigator.pop(context, false);
              },
            ),
          ],
        ),
      ),
    );
  }
}