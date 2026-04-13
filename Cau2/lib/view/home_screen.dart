import 'package:flutter/material.dart';
import '../util/user_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _nameController = TextEditingController();

  String? _errorText;
  bool _isValid = false;

  void _validateName(String value) {
    final text = value.trim();

    if(text.isEmpty){
      setState(() {
        _errorText = 'Vui lòng nhập tên người dùng';
        _isValid = false;
      });
      return;
    }

    final isExists = UserData.users.any(
          (user) => user.toLowerCase() == text.toLowerCase(),
    );

    setState(() {
      if (isExists) {
        _errorText = null;
        _isValid = true;
      } else {
        _errorText = 'Tên này không có trong danh sách';
        _isValid = false;
      }
    });
  }

  void _goToProfile() {
    if (!_isValid) return;

    final username = _nameController.text.trim();

    Navigator.pushNamed(
      context,
      '/profile',
      arguments: username,
    );
  }

  @override
  void initState() {
    super.initState();
    _nameController.addListener(() {
      _validateName(_nameController.text);
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final suggestions = UserData.users
        .where(
          (user) => user.toLowerCase().contains(
        _nameController.text.trim().toLowerCase(),
      ),
    )
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Tìm kiếm người dùng',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Nhập tên người dùng',
                    hintText: '',
                    prefixIcon: const Icon(Icons.search),
                    errorText: _errorText,
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _isValid ? _goToProfile : null,
                  child: const Text('Go to Profile'),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}