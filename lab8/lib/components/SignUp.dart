// ignore_for_file: file_names, non_constant_identifier_names, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:lab8/components/Button.dart';
import 'package:lab8/components/TextField.dart';
import 'package:lab8/data/Users.dart';
import 'package:lab8/src/home.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController UserName = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController ConfirmPassword = TextEditingController();
  TextEditingController Email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: UserName,
          title: "UserName",
        ),
        CustomTextField(
          controller: Email,
          title: "Email",
        ),
        CustomTextField(
          controller: Password,
          title: "Password",
        ),
        CustomTextField(
          controller: ConfirmPassword,
          title: "Confirm PAssword",
        ),
        CustomButton(
          title: "SignUp",
          onPressed: () {
            users.addAll({UserName.text: Password.text});
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),
      ],
    );
  }
}
