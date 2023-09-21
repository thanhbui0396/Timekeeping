import 'package:flutter/material.dart';

class InputBodyCreate extends StatelessWidget {
  InputBodyCreate({super.key, required this.label, required this.controller});
  String label;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
    );
  }
}
