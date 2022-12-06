

import 'package:flutter/material.dart';

class TextFiled extends StatelessWidget {
  const TextFiled({super.key, this.title});
final String? title;
  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
       Padding(
         padding: const EdgeInsets.only(left: 50, right: 50),
         child: TextField(
      decoration: InputDecoration(
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5),
            ),
            fillColor: Color.fromARGB(255, 167, 210, 168),
            hintText:title.toString()),
             ),
       )
    ]);
          
  }
}