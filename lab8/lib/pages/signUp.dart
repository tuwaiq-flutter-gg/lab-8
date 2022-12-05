import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/component/log&sin.dart';
import 'package:lab8/component/sinPage.dart';
import 'package:lab8/component/textFiled.dart';
import 'package:lab8/component/welcome.dart';
import 'package:lab8/pages/locationPage.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  static const String screenSign = "SignUp_Screen";

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameCon = new TextEditingController();
  TextEditingController emailCon = new TextEditingController();
  TextEditingController passCon = new TextEditingController();
  TextEditingController pass2con = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Expanded(
            child: Column(
              children: [
                Welcome(),
                SizedBox(
                  height: 25,
                ),
                SinPage(),
                SizedBox(
                  height: 40,
                ),
                TextFiledCustome(
                  hint: "Username",
                ),
                TextFiledCustome(
                  hint: "Email",
                ),
                TextFiledCustome(
                  hint: "Password",
                ),
                TextFiledCustome(
                  hint: "Confirm Password",
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
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff569696)),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ));
  }
}
