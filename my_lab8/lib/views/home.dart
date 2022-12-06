import 'package:flutter/material.dart';
import 'package:my_lab8/component/myButon.dart';
import 'package:geolocator/geolocator.dart';
import 'package:my_lab8/views/logout.dart';
import 'package:my_lab8/views/myMap.dart';

import '../Services/checkPermision.dart';

class myHome extends StatefulWidget {
  const myHome({super.key});

  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  String? path="images/Vector-1.png";
  Position? position;
  double? lat,long;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(backgroundColor: Color(0xff569696), 
      title: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder:((context) =>  MyMap(lat: lat,long: long,)) )),
              
              child:Image.asset("images/arcticons_google-maps-alt.png"),),
            Text("Home", style: TextStyle(
              color:Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w700
            ),),

               InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder:((context) =>  logOut()) )),

                 child: Image.asset("images/entypo_log-out.png")),
          ],
        ),
      ),
      automaticallyImplyLeading: false,
      centerTitle: true,
      ),


body: Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
  SizedBox(height: MediaQuery.of(context).size.height*.08,),
Image.asset("images/Vector.png"),
Image.asset("$path"),
SizedBox(height: MediaQuery.of(context).size.height*.03,),
Text("This app will help you locate your", style: TextStyle(color: Color(0xff005F73), fontSize: 20, fontWeight: FontWeight.w800),),
Text("place and print out easily", style: TextStyle(color: Color(0xff005F73), fontSize: 20, fontWeight: FontWeight.w800),)
,
SizedBox(height: MediaQuery.of(context).size.height*.12,),
Container(
width: MediaQuery.of(context).size.width,
height: MediaQuery.of(context).size.height*.28,
color: Color(0xffCADEDE),
child: Column(
  children: [
    SizedBox(height: MediaQuery.of(context).size.height*.03,),
    Text("If you need your location you can see it", style: TextStyle(color: Color(0xff005F73), fontSize: 20, fontWeight: FontWeight.w800),),
Text("now!", style: TextStyle(color: Color(0xff005F73), fontSize: 20, fontWeight: FontWeight.w800),),
SizedBox(height: MediaQuery.of(context).size.height*.09,),
Container(
  
  width: MediaQuery.of(context).size.width*.45,
  child: InkWell(
    onTap: () async{
        await determinePosition();

      position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      
      lat=position!.latitude;
      long=position!.longitude;

        setState(() {
          
        });
        showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xff569696),
          title: Center(child: const Text('Your location is', style: TextStyle(color: Colors.white),)),
          content: Container(
          height: MediaQuery.of(context).size.height*.33,
          width: MediaQuery.of(context).size.width*.9,
          color: Color(0xff569696),
          child: Center(child: Text('Your location is.. Lat=$lat   long=$long', style: TextStyle(color: Colors.white),)),
        
      //AIzaSyAMx_ku-zIWHHzJn8CBO7_GAdw7Pb43MNQ
        ),
      
        );
    });
    
    },
    
    child: myCustomButtom(text: "Print it out",)))
  ],
),

)

],

),
    );
  }
}