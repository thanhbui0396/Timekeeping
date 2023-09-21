import 'package:app_timekeeping/apps/routers/router_name.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Page Error'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, RouterName.rootPage);
            },
            child: const Text('error'),
          )
        ],
      )),
    );
  }
}
