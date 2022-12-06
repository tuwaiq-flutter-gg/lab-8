

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/styles/styles.dart';
import 'package:lab8/views/FirstScreen.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Home" , style: TextStyle(fontWeight: FontWeight.w900, fontSize: 32, color: textColor),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Logout()));
            } , 
            icon: Icon(Icons.logout, color: textColor,)
          ),

          IconButton(
            onPressed: () {

            } , 
            icon: Icon(Icons.location_on, color: textColor,)
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Confirrm your log out please ! " , style: TextStyle(color: Colors.black , fontSize: 20 , fontWeight: FontWeight.bold),),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          
          ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(primaryColor),
          ),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const FirstScreen()));
        }, child: const Text("Logout",style: TextStyle(color: textColor,fontWeight: FontWeight.w900, fontSize: 32),)),

        ]
      ) ,
    );
  }
}