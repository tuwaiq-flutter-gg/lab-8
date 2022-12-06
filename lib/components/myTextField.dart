import 'package:flutter/material.dart';

import '../style.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key, required this.controller, required this.hintText});
  final TextEditingController controller;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 28, left: 28, bottom: 45),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(),
          fillColor: greenBlueWhiter,
          filled: true,
        ),
      ),
    );
  }
}
