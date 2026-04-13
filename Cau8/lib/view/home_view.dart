import 'package:flutter/material.dart';
import '../util/route_names.dart';
import '../widget/app_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  Future<void> _deleteItem(BuildContext context) async {
    final bool? result = await Navigator.pushNamed(
      context,
      RouteNames.confirm,
    ) as bool?;

    if (!context.mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          result == true
              ? 'Bạn đã xác nhận xóa dữ liệu'
              : 'Bạn đã hủy thao tác xóa',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete - MSSV 6451071084'),
        centerTitle: true,
      ),
      body: Center(
        child: AppButton(
          title: 'Delete Item',
          onPressed: () => _deleteItem(context),
        ),
      ),
    );
  }
}