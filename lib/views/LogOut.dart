import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/Components/customButton.dart';
import 'package:lab8/Components/customTextField.dart';
import 'package:lab8/views/HomeScreen.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff569696),
        leading: Text(""),
        title: Text(
          "Log Out",
          style: TextStyle(
              color: Color(0xffffffff),
              fontSize: 32,
              fontWeight: FontWeight.w900),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Text(
            "Confirm your log out please !",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xff000000),
                fontSize: 20,
                fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          CustomTextField(
            label: "Password",
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          CustomButton(
            title: "Log Out",
            onPressed: () {
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: ((context) {
                return Home();
              })), (route) => false);
            },
          )
        ],
      ),
    );
  }
}
