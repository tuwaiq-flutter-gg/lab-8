import 'package:flutter/material.dart';

import 'package:lab_8/assest/Stayl.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key, required this.Control, required this.title});
  final TextEditingController Control;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        //  controller: nameCO,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          fillColor: latGrean,
          labelText: title,
        ),
      ),
    );
  }
}