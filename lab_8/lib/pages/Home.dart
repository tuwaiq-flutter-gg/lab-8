import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lab_8/pages/theme.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Home extends StatefulWidget {
  const Home({super.key});
  

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Future<Widget> build(BuildContext context) async {
    Position position;
    var medHi = MediaQuery.of(context).size.height;
    var medWd = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backcolor,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: 
        
        Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Icon(Icons.map_rounded),
            Text("Home",style: TextStyle(color: Colors.white ,fontSize: 33,fontWeight: FontWeight.bold),),
            Icon(Icons.exit_to_app),
            
            
                           //map_outlinede // dit_location_alt_sharp
          ],
          
        ),
     ),
      body: ListView
      
      (children: [
        Expanded(
          child: Container(
            height: medHi/4,
           
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Icon(Icons.location_on_rounded),
                Icon(Icons.map_rounded),
                Padding(
                  padding: EdgeInsets.only(left: 45,right: 45),
                  
                  child: Text("\nthis app will help yout locate your p;ace and print out easily",
                  textAlign: TextAlign.center,style: 
                  TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff659495)),),
                )
              
              ],
            ),
             ),
             
        ),
        Container(
          padding: EdgeInsets.all(35),
          margin: EdgeInsets.only(top: 95),
          color: Color.fromARGB(255, 201, 223, 223),
          height: medHi/4,
          width: medWd,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("if you need your location you can see it now! ",
              textAlign: TextAlign.center,style: 
                  TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                 TextButton(
                  style: TextButton.styleFrom(foregroundColor:Colors.white,backgroundColor: backcolor,minimumSize: Size(150, 42)),
                    onPressed: ((
                      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);                      
////

        
////
                    ) {
                   
                 }), child: Text("Print it out",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
            ],
          ),

        )
      ]),
      extendBody: true,
    );
  }
}