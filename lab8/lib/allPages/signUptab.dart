import 'package:flutter/material.dart';
import 'package:lab8/allPages/Home.dart';

class signuptab extends StatefulWidget {
  const signuptab({super.key});

  @override
  State<signuptab> createState() => _signuptabState();
}

class _signuptabState extends State<signuptab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
      children: [
        SizedBox(height: 20,),
          Container(
            height: 61,
            width: 380,
            child: TextField(
              
              decoration: InputDecoration(
                  filled: true,
                  labelText: "User Name",
                  fillColor: Color(0xffCADEDE)),
            ),
          ),
       
          Container(
            height: 61,
            width: 380,
            child: TextField(
              
              decoration: InputDecoration(
                  filled: true,
                  labelText: "Email",
                  fillColor: Color(0xffCADEDE)),
            ),
          ),
          Container(
            height: 61,
            width: 380,
            child: TextField(
              
              decoration: InputDecoration(
                  filled: true,
                  labelText: "password",
                  fillColor: Color(0xffCADEDE)),
            ),
          ),
           Container(
            height: 61,
            width: 380,
            child: TextField(
              
              decoration: InputDecoration(
                  filled: true,
                  labelText: "confirm password",
                  fillColor: Color(0xffCADEDE)),
            ),
          ),
          Container(
                height: 46,
                width: 120,
                color: Color(0xff569696) ,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xff569696)),
                  onPressed: (){
                    Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => Home()));
                  }, child: Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold))),
              )
          
          
       
      ],
    ),
        ));
  }
}
