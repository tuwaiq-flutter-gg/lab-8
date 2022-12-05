import 'package:flutter/material.dart';

class TextFiledCustome extends StatefulWidget {
  TextFiledCustome({super.key, this.hint});
  String? hint;
  TextEditingController? controller = new TextEditingController();
  @override
  State<TextFiledCustome> createState() => _TextFiledCustomeState();
}

class _TextFiledCustomeState extends State<TextFiledCustome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 80,
      child: TextField(
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hint,
            filled: true,
            fillColor: Color(0xffCADEDE),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          )),
    );
  }
}
