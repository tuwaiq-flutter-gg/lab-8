import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/component/log&sin.dart';
import 'package:lab8/component/textFiled.dart';
import 'package:lab8/component/welcome.dart';
import 'package:lab8/pages/locationPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameControler = new TextEditingController();
  TextEditingController passControler = new TextEditingController();

  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              Welcome(),
              SizedBox(
                height: 25,
              ),
              Logsin(),
              SizedBox(
                height: 70,
              ),
              TextFiledCustome(
                hint: "Username",
              ),
              SizedBox(
                height: 30,
              ),
              TextFiledCustome(
                hint: "Password",
              ),
              Container(
                width: 160,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  LocationPage()),
                          (Route<dynamic> route) => route is LocationPage);
                    });
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff569696)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 120,
                  ),
                  Material(
                    child: Checkbox(
                      value: check,
                      onChanged: (value) {
                        setState(() {
                          check = value ?? false;
                        });
                      },
                    ),
                  ),
                  Text(
                    "Remember me",
                    style: TextStyle(color: Color(0xff878484)),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
