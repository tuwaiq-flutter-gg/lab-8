import 'package:flutter/material.dart';
import 'package:lab8/Component/Containerwithtext.dart';
import 'package:lab8/Component/text.dart';
import 'package:lab8/Component/textfiled.dart';
import 'package:lab8/Page/ThirdPage.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          TitleCenter(titletext: "Welcome"),
          SizedBox(height: 15,),
          CircleAvatar(
            backgroundImage: const AssetImage("images/download 1.png"), 
            radius: 50,),
            SizedBox(height: 20,),
          TextTwoSide(title1: "Login",title: "Sign Up"),
          SizedBox(height: 45,),
          TextFiled(title: "Username"),
          SizedBox(height: 27,),
          TextFiled(title: "Email"),
          SizedBox(height: 27,),
          TextFiled(title: "Password"),
          SizedBox(height: 27,),
          TextFiled(title: "Confirm Password"),
          SizedBox(height: 27,),
         // Button(title: "Sign Up"), 
          ElevatedButton(
          child: Text("Sign Up"),
          style: ElevatedButton.styleFrom(
            
            primary: Colors.green,
            textStyle: const TextStyle(
                color: Colors.white,
                 fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onPressed: () {Navigator.of(context)
           .push(MaterialPageRoute(builder: (context) => const ThirdPage()));},
        )
          
        ],
      ),

    );
  }
}