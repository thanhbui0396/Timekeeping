import 'package:app_timekeeping/providers/check.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
