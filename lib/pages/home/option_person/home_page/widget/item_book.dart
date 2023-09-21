import 'package:flutter/material.dart';

class ItemBook extends StatelessWidget {
  const ItemBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 60,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.5, 1),
            blurRadius: 0.5,
            spreadRadius: 0.5,
          )
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Tên sổ',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Ngày tạo: 18/9/2023',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
