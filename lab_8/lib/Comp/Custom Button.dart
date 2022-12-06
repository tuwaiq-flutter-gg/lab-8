import 'package:flutter/material.dart';

import 'package:lab_8/assest/Stayl.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, this.onPressed});
  final String title;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Grean,
        minimumSize: Size(200, 35),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(fontSize: 32),
      ),
    );
  }
}
