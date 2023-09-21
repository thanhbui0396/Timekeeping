import 'package:app_timekeeping/apps/untils/app_colors.dart';
import 'package:app_timekeeping/pages/home/option_person/home_page/create_book/widget/input_body.dart';
import 'package:flutter/material.dart';


class CreateBookPage extends StatelessWidget {
  const CreateBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerName = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorMain,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Tạo Sổ Chấm Công',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            InputBodyCreate(label: 'Tên', controller: controllerName),
            InputBodyCreate(label: 'Tên', controller: controllerName),
          ],
        ),
      ),
    );
  }
}
