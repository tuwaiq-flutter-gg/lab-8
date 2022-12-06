import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({super.key, this.hint});
  String? hint;
  TextEditingController? controller = new TextEditingController();
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 80,
      child: TextField(
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: const TextStyle(color: Colors.white),
            filled: true,
            fillColor: const Color(0xff569696),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
          )),
    );
  }
}
  