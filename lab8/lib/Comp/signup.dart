import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/Comp/button.dart';
import 'package:lab8/Comp/textfield.dart';
import 'package:lab8/src/home.dart';

class signup extends StatelessWidget {
  signup({super.key});
  TextEditingController nameCO = TextEditingController();
  TextEditingController psCO = TextEditingController();
  TextEditingController ps1CO = TextEditingController();
  TextEditingController emailco = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textfield(co: nameCO, Title: "Name"),
        textfield(co: emailco, Title: "Email"),
        textfield(co: psCO, Title: "Password"),
        textfield(co: ps1CO, Title: "Confirm PAssword"),
        button(
          title: "SignUp",
          onPressed: () {
               Navigator.push(context,
                 MaterialPageRoute(builder: (context) => home()));
          },
        ),
      ],
    );
  }
}
