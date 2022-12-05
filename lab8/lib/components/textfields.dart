import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextF extends StatefulWidget {
  TextF({super.key, required this.label, this.controllers});
  String? label;
  TextEditingController? controllers = new TextEditingController();

  @override
  State<TextF> createState() => _TextFState();
}

class _TextFState extends State<TextF> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35, vertical: 16),
      child: TextField(
          controller: widget.controllers,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 126, 171, 166),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            labelText: widget.label,
          )),
    );
  }
}
