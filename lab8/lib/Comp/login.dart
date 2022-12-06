import 'package:flutter/material.dart';

import 'package:lab8/Comp/button.dart';
import 'package:lab8/Comp/textfield.dart';
import 'package:lab8/src/LogOut.dart';

class log extends StatefulWidget {
  log({super.key});

  @override
  State<log> createState() => _loginState();
}

class _loginState extends State<log> {
  TextEditingController nameCO = TextEditingController();
  TextEditingController psCO = TextEditingController();
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        textfield(
          co: nameCO,
          Title: 'Name',
        ),
        textfield(
          co: psCO,
          Title: 'Password',
        ),
        button(
          title: "Login",
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => logout()));
          },
        ),
        Padding(
          padding: const EdgeInsets.only(right: 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: check,
                onChanged: (bool? value) {
                  setState(() {
                    check = value!;
                  });
                },
              ),
              Text("Remember me")
            ],
          ),
        )
      ],
    );
  }
}
