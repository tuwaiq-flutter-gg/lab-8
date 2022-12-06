//import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:lab_8/pages/Home.dart';
import 'package:lab_8/pages/signup.dart';
import 'package:lab_8/pages/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var medHi = MediaQuery.of(context).size.height;
    var medWd = MediaQuery.of(context).size.width;
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    var value = false;
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Text(
              "Welcome",
              style: TextStyle(
                  color: backcolor,
                  fontSize: 33,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Container(
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.all(11.8),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(22)),
                height: medHi / 6,
                width: medWd / 2.5,
                child: Image.asset("images/eth.png", fit: BoxFit.cover)),
          ),
          Container(
            height: medHi / 13,
            width: medWd,
            color: backcolor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: (() {
                      PreviousFocusAction;
                    }),
                    child: Text(
                      "login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w900),
                    )),
                TextButton(
                    onPressed: (() {
                      Navigator.pushAndRemoveUntil<void>(
                        context,
                        MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const signUpPage()),
                        ModalRoute.withName('/'),
                      );
                      PreviousFocusAction;
                    }),
                    child: Text(
                      "sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w900),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              height: medHi / 2.5,
              width: medWd / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Color.fromARGB(255, 222, 236, 222),
                      filled: true,
                      focusColor: backcolor,
                      labelText: 'Username',
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Color.fromARGB(255, 222, 236, 222),
                      filled: true,
                      focusColor: backcolor,
                      labelText: 'Password',
                    ),
                  ),
                  TextButton( 
                    
                    style: TextButton.styleFrom(foregroundColor:Colors.white,backgroundColor: backcolor,minimumSize: Size(150, 42)),
                      onPressed: (() {
                                                Navigator.pushAndRemoveUntil<void>(
                        context,
                        MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const Home()),
                        ModalRoute.withName('/'),
                      );
 
                       
                      }),
                      child: Text("login")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: value,
                        onChanged: (bool? newValue) {
                          setState(() {
                            var _throwShotAway = !newValue!;
                          });
                        },
                        checkColor: backcolor,
                        hoverColor: backcolor,
                      ),
                      Text("Remember me")
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
