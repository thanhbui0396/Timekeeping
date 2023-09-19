import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:timekeeping_app/apps/router/router_name.dart';
import 'package:timekeeping_app/apps/untils/app_colors.dart';
import 'package:timekeeping_app/pages/home/option_person/home_page/widget/item_book.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFFF1F3F4),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'DANH SÁCH SỔ CHẤM CÔNG(0) :',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      GoRouter.of(context).pushNamed(RouterName.createBookPage);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.colorMain.withOpacity(0.05),
                      elevation: 0,
                      foregroundColor: Colors.blue,
                      shadowColor: AppColors.colorMain,
                    ),
                    child: const Text(
                      'Tạo',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return const ItemBook();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
