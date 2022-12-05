import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab_8/login.dart';
import 'package:lab_8/sign_up.dart';

class Text_1 extends StatelessWidget {
  Text_1({super.key});
  String? name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Welcome the hader text
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            "Welcome",
            style: TextStyle(fontSize: 34, color: Color(0xff569696)),
          ),
        ),
        //Imges
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            height: 170,
            width: 170,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(170)),
            child: Image.asset("imag/p.png"),
          ),
        ),
        //Login and sign up
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            color: Color(0xff569696),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => const login(),
                          ),
                        );
                      },
                      child: Text(
                        "Login",
                        style:
                            TextStyle(fontSize: 26, color: Color(0xffFFFFFF)),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => const Sign_Up(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign UP",
                        style:
                            TextStyle(fontSize: 26, color: Color(0xffFFFFFF)),
                      ))
                ]),
          ),
        )
      ],
    );
  }
}
