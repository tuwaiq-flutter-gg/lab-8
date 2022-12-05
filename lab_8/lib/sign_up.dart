import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab_8/com/genera.dart';
import 'package:lab_8/com/text_filed.dart';
import 'package:lab_8/login.dart';

class Sign_Up extends StatelessWidget {
  const Sign_Up({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style1 = ElevatedButton.styleFrom(
        backgroundColor: Color(0xff569696), fixedSize: Size(200, 10));
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: ListView(
        children: [
          Text_1(),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Fext_filed(
                  varname: "Username",
                ),
                Fext_filed(
                  varname: "Email",
                ),
                Fext_filed(
                  varname: "Password",
                ),
                Fext_filed(
                  varname: "Confirm Password",
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                          style: style1,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const login(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
