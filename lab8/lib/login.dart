import 'package:flutter/material.dart';
import 'package:lab8/components/spacing.dart';
import 'package:lab8/components/textfields.dart';
import 'package:lab8/home.dart';
import 'package:lab8/main.dart';
import 'package:lab8/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameControler = new TextEditingController();
  TextEditingController pwdControler = new TextEditingController();

  String _msg = "";
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: wcolor,
        body: ListView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 20, 101, 90)),
                ),
              ),
            ),
            Center(child: Image.asset("images/logo.png")),
            Spacing(spacing: 20),
            Container(
              color: Color.fromARGB(255, 20, 101, 90),
              height: MediaQuery.of(context).size.width / 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: wcolor,
                            fontSize: 30),
                      )),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => SignUp()),
                              (Route<dynamic> route) => route is SignUp);
                        });
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: wcolor, fontSize: 30),
                      )),
                ],
              ),
            ),
            Spacing(spacing: 50),
            TextF(label: "Username"),
            Spacing(spacing: 20),
            TextF(label: "Password"),
            Spacing(spacing: 50),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => HomePage()),
                              (Route<dynamic> route) => route is HomePage);
                        });
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                    backgroundColor: Color.fromARGB(255, 60, 112, 106)),
              ),
            ),
            Spacing(spacing: 20),
            Row(
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
            )
          ],
        ));
  }
}
