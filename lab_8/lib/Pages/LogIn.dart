/*import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lab_8/Comp/CustomTextFiekd.dart';
import 'package:lab_8/assest/Stayl.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  static bool underline = true;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(
              height: 35,
            ),
            TextButton(
              onPressed: () {},
              child: Text("Welcome",
                  style: TextStyle(
                      color: Grean, fontSize: 32, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 142,
              width: 121,
              child: Image.asset(
                "images/App icon.png",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Grean,
              // height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
            )
          ],
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';

import 'package:lab_8/Comp/Custom%20Button.dart';
import 'package:lab_8/Comp/CustomTextFiekd.dart';
import 'package:lab_8/Pages/LogOut.dart';
import 'package:lab_8/Pages/Sign%20up.dart';

class LogIn extends StatefulWidget {
  LogIn({super.key});

  @override
  State<LogIn> createState() => _loginState();
}

class _loginState extends State<LogIn> {
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Customtextfield(
            Control: name,
            title: 'Name',
          ),
          Customtextfield(Control: pass, title: 'Password'),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              CustomButton(
                title: "Login",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => logout()));
                },
              ),
            ],
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
      ),
    );
  }
}
