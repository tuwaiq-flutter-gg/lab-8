// ignore_for_file: non_constant_identifier_names, must_be_immutable, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lab8/components/Button.dart';
import 'package:lab8/components/TextField.dart';
import 'package:lab8/data/Colors.dart';
import 'package:lab8/src/Welcome.dart';

class LogOut extends StatelessWidget {
  LogOut({super.key});
  TextEditingController Password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "LogOut",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        backgroundColor: MainColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "Confirm your log out please ! ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          CustomTextField(controller: Password, title: "Password"),
          SizedBox(
            height: 50,
          ),
          Center(
            child: CustomButton(
              title: "LogOut",
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => Welcome()),
                    (Route<dynamic> route) => false);
              },
            ),
          ),
          SizedBox(
            height: 300,
          ),
        ],
      ),
    ));
  }
}
