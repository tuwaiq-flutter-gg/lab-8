import 'package:flutter/material.dart';

import 'package:lab_8/Comp/Custom%20Button.dart';
import 'package:lab_8/Comp/CustomTextFiekd.dart';
import 'package:lab_8/assest/Stayl.dart';

class logout extends StatelessWidget {
  logout({super.key});
  TextEditingController psCO = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "LogOut",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        backgroundColor: Grean,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "Confirrm your log out please ! ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Customtextfield(Control: psCO, title: "Password"),
            SizedBox(
              height: 50,
            ),
            Center(
              child: CustomButton(
                title: "LogOut",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(
              height: 300,
            ),
          ],
        ),
      ),
    ));
  }
}
