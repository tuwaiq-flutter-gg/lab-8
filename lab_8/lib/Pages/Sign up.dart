import 'package:flutter/material.dart';

import 'package:lab_8/Comp/Custom%20Button.dart';
import 'package:lab_8/Comp/CustomTextFiekd.dart';
import 'package:lab_8/Pages/Home%20Page.dart';

class signup extends StatelessWidget {
  signup({super.key});
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController passConfi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Customtextfield(
          Control: name,
          title: "Name",
        ),
        Customtextfield(
          Control: email,
          title: "Email",
        ),
        Customtextfield(
          Control: pass,
          title: "Password",
        ),
        Customtextfield(Control: passConfi, title: "Confirm Password"),
        Column(
          children: [
            CustomButton(
              title: "SignUp",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          ],
        ),
      ],
    );
  }
}
