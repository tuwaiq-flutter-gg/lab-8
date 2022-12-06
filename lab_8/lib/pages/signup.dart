//import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:lab_8/pages/Home.dart';
import 'package:lab_8/pages/loginpage.dart';
import 'package:lab_8/pages/theme.dart';

class signUpPage extends StatefulWidget {
  const signUpPage({super.key});

  @override
  State<signUpPage> createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
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
                  color:backcolor,
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
            color:backcolor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: (() {
                      Navigator.pushAndRemoveUntil<void>(
                        context,
                        MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const LoginPage()),
                        ModalRoute.withName('/'),
                      );
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
                      PreviousFocusAction;
                    }),
                    child: Text(
                      "sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.w900,
                      ),
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
              height: medHi / 2.2,
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
                      focusColor:backcolor,
                      labelText: 'Email',
                    ),
                  ),
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Color.fromARGB(255, 222, 236, 222),
                      filled: true,
                      focusColor:backcolor,
                      labelText: 'Password',
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Color.fromARGB(255, 222, 236, 222),
                      filled: true,
                      focusColor: backcolor,
                      labelText: 'Confirm Password',
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor:Colors.white,backgroundColor: backcolor,minimumSize: Size(150, 42)),
                    //style: ButtonStyle(backgroundColor:MaterialStateProperty<Color> Colors.green),
                      onPressed: (() {
                        
                        Navigator.pushAndRemoveUntil<void>(
                        context,
                        MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const Home()),
                        ModalRoute.withName('/'),
                      );
 
                      }),
                     child: Expanded(child: Container(child: Text("sign Up",selectionColor: Colors.white,))),
                     ),
                 
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
