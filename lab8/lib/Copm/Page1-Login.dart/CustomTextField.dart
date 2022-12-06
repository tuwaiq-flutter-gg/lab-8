
import 'package:flutter/material.dart';
import 'package:lab8/constant.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({
    super.key,
    this.hintText,
  });
      String? hintText;


  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: lightColor,
            border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none),
            hintText: hintText.toString()),
      );
  }
}