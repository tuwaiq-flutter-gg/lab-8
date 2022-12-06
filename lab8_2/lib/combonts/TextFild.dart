import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:lab8_2/combonts/colors.dart';
//import 'package:lap8/combonts/colors.dart';

class FildTextComnanst extends StatelessWidget {
  const FildTextComnanst({super.key, required this.name});

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 50,
      child: TextField(
        decoration: InputDecoration(
            labelText: name,
            filled: true,
            fillColor: light,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: light),
                borderRadius: BorderRadius.circular(5))),
      ),
    );
  }
}
