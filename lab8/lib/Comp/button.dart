import 'package:flutter/material.dart';

import 'package:lab8/main.dart';

class button extends StatelessWidget {
  const button({super.key, required this.title, this.onPressed});
  final String title;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: gr,
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
