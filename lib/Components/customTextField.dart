import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.label, this.hint, this.controllerVal});
  final String? label;
  final String? hint;
  final TextEditingController? controllerVal;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.9,
            child: TextFormField(
                controller: controllerVal,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: label.toString(),
                  hintStyle: TextStyle(
                      color: Color(0xff878484),
                      fontWeight: FontWeight.normal,
                      fontSize: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  fillColor: Color(0xffCADEDE),
                )),
          ),
        ],
      ),
    );
  }
}
