import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool value=false;
  @override
  Widget build(BuildContext context) {
    return  
    
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          value: this.value,
          onChanged: (value) {
             setState(() {
               this.value = value!;
                });
                },
              ),
              Text("Remember me",style: TextStyle(color: Colors.black,fontSize: 15),)
      ],
    ); //Checkbox;
  }
}