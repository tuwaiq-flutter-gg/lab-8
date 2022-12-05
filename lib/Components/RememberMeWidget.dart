import 'package:flutter/material.dart';

class RememberMeWidget extends StatelessWidget {
  const RememberMeWidget({super.key, this.checkValue, this.onChanged});
  final bool? checkValue;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          fillColor: MaterialStateProperty.all<Color>(Color(0xffCADEDE)),
          checkColor: Colors.white,
          value: checkValue,
          onChanged: onChanged,
        ),
        Text(
          "Remember me",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
