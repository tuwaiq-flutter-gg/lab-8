import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/Components/RememberMeWidget.dart';
import 'package:lab8/Components/customButton.dart';
import 'package:lab8/Components/customTextField.dart';
import 'package:lab8/views/LocationScreen.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    bool? checkValue;
    return ListView(
      children: [
        CustomTextField(
          label: "Username",
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        CustomTextField(
          label: "Password",
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        CustomButton(
          title: "Login",
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
        RememberMeWidget(
          checkValue: true,
          onChanged: (value) {
            setState(() {
              checkValue = value;
            });
          },
        ),
      ],
    );
  }
}
