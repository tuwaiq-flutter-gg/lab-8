

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/styles/styles.dart';
import 'package:lab8/views/FirstScreen.dart';
import 'package:lab8/views/Location.dart';
import 'package:lab8/views/Logout.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Location()));
            } , 
            icon: Icon(Icons.location_on, color: textColor,)
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          
          Icon(Icons.location_on, color: primaryColor,),
          Icon(Icons.map, color: primaryColor,),
          Expanded(child: Text(
            "This app will help you locate your place and print out easily",
            style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold, fontSize: 20),
          )),

          Container(
            color: lightPrimaryColor,
            child: Column(children: [
              Text("If you need your location you can see it now!" , style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold, fontSize: 20),),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(primaryColor),
                ),
                onPressed: () {
                  showDialog(
                    context: context, 
                    builder: (BuildContext context) => AlertDialog(
                      content: Text("Your Location is ", style: TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.bold),),
                      backgroundColor: primaryColor,
                    ));
              }, child: const Text("Print it out",style: TextStyle(color: textColor,fontWeight: FontWeight.w900, fontSize: 32),)),

            ],),
          ),

        ],
      ),
    );
  }
}