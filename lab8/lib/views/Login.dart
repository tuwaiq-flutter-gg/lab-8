

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/styles/styles.dart';
import 'package:lab8/views/Home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        // username field
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Username',
          ),
        ),
        
        // password field
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
        ),
        
        // loginButton
        ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(primaryColor),
          ),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
        }, child: const Text("Login",style: TextStyle(color: textColor,fontWeight: FontWeight.w900, fontSize: 32),)),

        // Remember me row
        Row(
          children: [
            Checkbox(value: false, onChanged: (val){}),
            const Text("Remember me", style: TextStyle(color: primaryColor, fontSize: 20),),
          ],
        )

      ],
    );
  }
}