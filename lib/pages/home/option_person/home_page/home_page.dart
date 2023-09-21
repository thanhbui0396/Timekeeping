import 'package:app_timekeeping/apps/routers/router_name.dart';
import 'package:app_timekeeping/apps/untils/app_colors.dart';
import 'package:app_timekeeping/pages/home/option_person/home_page/widget/item_book.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorMain,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'UserName',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
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
                      Navigator.pushNamed(context, RouterName.createBookPage);
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
