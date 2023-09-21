import 'package:app_timekeeping/apps/routers/router_name.dart';
import 'package:app_timekeeping/apps/untils/app_colors.dart';
import 'package:app_timekeeping/providers/check.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OptionsPage extends StatefulWidget {
  const OptionsPage({super.key});

  @override
  State<OptionsPage> createState() => _OptionsPageState();
}

class _OptionsPageState extends State<OptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColors.colorGradient1,
            AppColors.colorGradient3,
            Colors.white,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<CheckLogin>().checkLogin();
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      RouterName.rootPage, (Route<dynamic> route) => false);
                },
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    elevation: 5,
                    backgroundColor: const Color(0xFFFE5901)),
                child: const Text(
                  'Cá nhân',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    elevation: 5,
                    backgroundColor: const Color(0xFFFE5901)),
                child: const Text(
                  'Doanh nghiệp',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
