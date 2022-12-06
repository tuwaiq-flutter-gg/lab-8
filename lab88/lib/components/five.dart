

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Five extends StatefulWidget {
  const Five({super.key});

  @override
  State<Five> createState() => _FiveState();
}

class _FiveState extends State<Five> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


body: Column(children: [
Padding(
  padding: const EdgeInsets.only(top:39.0),
  child:   Container(
  
    width: MediaQuery.of(context).size.width,
  height: 75,

    color: Color(0xff569696),
  
    child:   Row(children: [
  
    
  
    Padding(
      padding: const EdgeInsets.only(left:133.0),
      child: Text("Log Out",style:TextStyle(fontSize: 35,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255) )),
    ),
  
    
  
    
  
    
  
  
    
  
    
  
    
  
    
  
    ],),
  
  ),
)

,Padding(
  padding: const EdgeInsets.all(50.0),
  child:   Text("Confirrm your log out please ! ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
),Padding(
  padding: const EdgeInsets.fromLTRB(10,40,10,10),
  child:   TextField(
  
  decoration: InputDecoration(
  
      border: OutlineInputBorder(),
  
      hintText:'Password' ,fillColor: Color(0xffCADEDE),filled: true,)
  
  
  
  ),
)  

,Padding(
  padding: const EdgeInsets.fromLTRB(0,70,0,10),
  child:   Center(child: Container (
  
    height: 50,
  
    width: 200,
  
    color: Color(0xff569696)
  
    ,
  
    child:Center(child:Text("LogOut",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),) ,)  ,)),
)
],),

    );
  }
}