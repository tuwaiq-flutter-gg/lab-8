// ignore_for_file: file_names, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lab8/components/Button.dart';
import 'package:lab8/components/TextField.dart';
import 'package:lab8/data/Colors.dart';
import 'package:lab8/data/Users.dart';
import 'package:lab8/src/home.dart';

class LogIn extends StatefulWidget {
  LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController UserName = TextEditingController();
  TextEditingController Password = TextEditingController();
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomTextField(
          controller: UserName,
          title: 'UserName',
        ),
        CustomTextField(
          controller: Password,
          title: 'Password',
        ),
        CustomButton(
          title: "Login",
          onPressed: () {
            if (users[UserName.text] == Password.text) {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Home()));
            } else {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: MainColor,
                  insetPadding: EdgeInsets.zero,
                  content: Text(
                    "UserName or Password is Wrong",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: AlertColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }
          },
        ),
        Row(
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
        )
      ],
    );
  }
}
