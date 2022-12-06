import 'package:flutter/material.dart';
import 'package:lab8/Component/permission.dart';
import 'package:lab8/Component/textwithtwoimage.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lab8/Page/Forthpage.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  Position? position;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:     
       Column(
         children: [
          // TextwithTwoImage(),
          Container(color: Colors.green,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(icon: Icon(Icons.location_on),color: Colors.white, onPressed: () { },),
          Text("Home",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
          IconButton(icon: Icon(Icons.logout),color: Colors.white, onPressed: () {
            Navigator.of(context)
           .push(MaterialPageRoute(builder: (context) =>  ForthPage(position:position!))); },),
        ],
      ),
    ),
           SizedBox(height: 40,),
           IconButton(icon: Icon(Icons.location_on),color: Colors.green, onPressed: () { 


           },),
            IconButton(icon: Icon(Icons.map),color: Colors.green, onPressed: () { },),
            Center(child: Text("This app will help you locate your",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold),)),
            Center(child: Text("place andd print out easily",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold),)),
            SizedBox(height: 40,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              color: Colors.lightGreen,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                   Center(child: Text("if you need your location you can see it now!",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold),)),
                    SizedBox(height: 60,),
            
                     ElevatedButton(onPressed: () async {
                    try {
                      await determinePosition();
                      position = await Geolocator.getCurrentPosition( desiredAccuracy: LocationAccuracy.high);
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              insetPadding: EdgeInsets.symmetric(horizontal: 50,vertical: 100),
                              backgroundColor: Colors.green,
                              content: Column(
                                children: [
                                  Center(
                                    child: Text( "Your location is:", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                  ),
                                  SizedBox(height: 40,),
                                  Center(child: Text( position.toString(),textAlign: TextAlign.center,style: TextStyle( color:Colors.white),)),
                                ],
                              ),
                              
                            );
                          });
                    } catch (error) {
                      print("Error");
                    }
                  },
                  child: Text("Print it out",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green),
                ),
              ],
            ),
          )
        ],
      ),
          
       
    );
  }
}