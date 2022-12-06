import 'package:flutter/material.dart';
import 'package:lab8/Component/Button.dart';
import 'package:lab8/Component/Containerwithtext.dart';
import 'package:lab8/Component/checkBox.dart';
import 'package:lab8/Component/text.dart';
import 'package:lab8/Component/textfiled.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          TitleCenter(titletext: "Welcome"),
          SizedBox(height: 20,),
          CircleAvatar(
            backgroundImage: const AssetImage("images/download 1.png"), 
            radius: 50,),
            SizedBox(height: 20,),
          TextTwoSide(title: "Login",title1: "Sign Up"),
          SizedBox(height: 60,),
          TextFiled(title: "Username"),
          SizedBox(height: 30,),
          TextFiled(title: "Password"),
          SizedBox(height: 30,),
          Button(title: "login"), 
          SizedBox(height: 30,),
          CheckBox(),
        ],
      ),

    );
  }
}