import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timekeeping_app/providers/check.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              context.read<CheckLogin>().checkLogOut();
            },
            child: const Text('Đăng xuất')),
      ),
    );
  }
}
