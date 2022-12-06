import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8_2/SingIn.dart';
import 'package:lab8_2/combonts/TextFild.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key});

  get dark => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dark,
        title: Text(
          "LogOut",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              children: [
                Text("Confirm your log out please !"),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, right: 40, left: 40, bottom: 40),
                  child: FildTextComnanst(
                    name: "Password",
                  ),
                ),
                InkWell(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => SingIn())));
                    ;
                  }),
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 200,
                    color: dark,
                    child: Text(
                      "Sing In",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
