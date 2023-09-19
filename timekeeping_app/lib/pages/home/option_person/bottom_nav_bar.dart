import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:timekeeping_app/apps/untils/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key, required this.navigationShell})
      : super(key: key);

  final StatefulNavigationShell navigationShell;

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
      body: navigationShell,
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
        currentIndex: navigationShell.currentIndex,
        onTap: (int tappedIndex) {
          navigationShell.goBranch(tappedIndex);
        },
      ),
    );
  }

  // static int _calculateSelectedIndex(BuildContext context) {
  //   final String location = GoRouterState.of(context).uri.toString();
  //   if (location.startsWith(RouterPath.homePage)) {
  //     return 0;
  //   }
  //   if (location.startsWith(RouterPath.settingsPage)) {
  //     return 1;
  //   }

  //   return 0;
  // }

  // void _onItemTapped(int index, BuildContext context) {
  //   switch (index) {
  //     case 0:
  //       GoRouter.of(context).go(RouterPath.homePage);
  //       break;
  //     case 1:
  //       GoRouter.of(context).go(RouterPath.settingsPage);
  //       break;
  //   }
  // }
}
