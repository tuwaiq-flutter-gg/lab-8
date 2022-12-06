import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8_2/Home.dart';
import 'package:lab8_2/combonts/AppPagLogInAndsingIn.dart';
import 'package:lab8_2/combonts/LineLogIn&SingeIn.dart';
import 'package:lab8_2/combonts/TextFild.dart';
import 'package:lab8_2/combonts/colors.dart';

class SingIn extends StatelessWidget {
  const SingIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AppPage(),
          LineLogIn(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, right: 40, left: 40, bottom: 20),
                child: FildTextComnanst(
                  name: "Uesername",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40, left: 40, bottom: 20),
                child: FildTextComnanst(
                  name: "Uesername",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40, left: 40, bottom: 20),
                child: FildTextComnanst(
                  name: "Email",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40, left: 40, bottom: 20),
                child: FildTextComnanst(
                  name: "Passward",
                ),
              ),
              InkWell(
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Home())));
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
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      )),
    );
  }
}
