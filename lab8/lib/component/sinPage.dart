import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/pages/signUp.dart';

class SinPage extends StatelessWidget {
  SinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 50,
      color: Color(0xff569696),
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: 48),
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 250, top: 40),
          child: Container(
            width: 110,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 4,
                  offset: Offset(1, 1),
                ),
              ],
              color: Colors.white,
            ),
            height: 5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 250, top: 1),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, SignUp.screenSign);
            },
            child: Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ]),
    );
  }
}
