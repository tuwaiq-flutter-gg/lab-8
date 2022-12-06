import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8_2/Home.dart';

import 'package:lab8_2/combonts/AppPagLogInAndsingIn.dart';
import 'package:lab8_2/combonts/LineLogIn&SingeIn.dart';
import 'package:lab8_2/combonts/TextFild.dart';
import 'package:lab8_2/combonts/colors.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AppPage(),
          LineLogIn(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(40),
                child: FildTextComnanst(
                  name: "Uesername",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, right: 40, left: 40, bottom: 40),
                child: FildTextComnanst(
                  name: "Uesername",
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
                    " LogIn",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: isChecked,
                    activeColor: light,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text("Remember me")
                ],
              ),
            ],
          ),
        ],
      )),
    );
  }
}
