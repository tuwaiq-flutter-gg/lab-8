// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lab8/data/Colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, this.onPressed});
  final String title;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: MainColor,
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