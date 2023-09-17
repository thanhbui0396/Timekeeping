import 'package:flutter/material.dart';
import 'package:timekeeping_app/apps/untils/app_colors.dart';

class OptionesPage extends StatefulWidget {
  const OptionesPage({super.key});

  @override
  State<OptionesPage> createState() => _OptionesPageState();
}

class _OptionesPageState extends State<OptionesPage> {
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
                  'Tổ chức',
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
