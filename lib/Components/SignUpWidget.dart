import 'package:flutter/material.dart';
import 'package:lab8/Components/customButton.dart';
import 'package:lab8/Components/customTextField.dart';
import 'package:lab8/views/LocationScreen.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomTextField(
          label: "Username",
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        CustomTextField(
          label: "Email",
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        CustomTextField(
          label: "Password",
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        CustomTextField(
          label: "Confirm Password",
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        CustomButton(
          title: "Sign Up",
          onPressed: () {
                 Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: ((context) {
                return LocationScreen();
              })), (route) => false);
          },
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
      ],
    );
  }
}
