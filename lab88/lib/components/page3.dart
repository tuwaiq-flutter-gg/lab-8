import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab88/components/Forth.dart';

class Thrid extends StatefulWidget {
  const Thrid({super.key});

  @override
  State<Thrid> createState() => _ThridState();
}

class _ThridState extends State<Thrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Column(
  children: [
    Padding(
      padding: const EdgeInsets.only(top: 39),
      child: Container(
        color: Color(0xff569696),
        height: 55,
        width: MediaQuery.of(context).size.width,



        
        
        
        child:   Row(children: [

Image.asset("images/Vector.png")

,Padding(
  padding: const EdgeInsets.fromLTRB(130,5,5,5),
  child:   Text("Home",style: TextStyle(fontSize: 32,color: Colors.white,fontWeight: FontWeight.bold),),
)

,Padding(
  padding: const EdgeInsets.only(left: 111),
  child:   InkWell(
    onTap: (() {
      

       Navigator.pop(context);
    }),
    
    
    child: Container(child: Image.asset("images/entypo_log-out (1).png"))),
)


        ],) ,),
    )
 
 ,Padding(
   padding: const EdgeInsets.only(top:80.0),
   child: Container(child: 
   Column(children: [

Image.asset("images/material-symbols_location-on-rounded.png")
,Image.asset("images/ic_twotone-map.png")
   ],),),
 )
 
 
 
 ,Padding(
   padding: const EdgeInsets.only(top: 30),
   child: Container(
width: 290,
height: 50,

    child: Center(child: Text("This app will help you locate your place and print out easily",style: TextStyle(fontSize: 20,color:Color(0xff005F73),fontWeight: FontWeight.bold ),))),
 )
 

,Padding(
  padding: const EdgeInsets.only(top: 100),
  child:   Container(
  
    
  
    width: MediaQuery.of(context).size.width,
  height: 200,
    
  
    color: Color(0xffCADEDE),
  
    child: Column(children: [
  
  
  
  
  
  Padding(
    padding: const EdgeInsets.fromLTRB(5,16,5,50),
    child: Text("If you need your location you can see it now!",style: TextStyle(fontSize: 20,color:Color(0xff005F73),fontWeight: FontWeight.bold )),
  )
  
  
  
  
  ,InkWell(

 onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Forth()),);
    

  },
    

    child: Container(
      width: 200,
      height: 50,
      
      color: Color(0xff569696),
      
      child:Center(child:Text("Print it Out",style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold )) ,)  ,),
  )
  
  
  
  
  ]),),
)



  ],
),


    );
  }
}