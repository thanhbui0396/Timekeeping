import 'package:app_timekeeping/apps/untils/app_colors.dart';
import 'package:flutter/material.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorMain,
        title: const Text(
          'Username',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        centerTitle: false,
      ),
      body: null,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.colorMain,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (int tappedIndex) {},
      ),
    );
  }
}
