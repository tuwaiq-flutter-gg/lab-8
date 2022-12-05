import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab88/components/page3.dart';
import 'package:lab88/components/singup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffFFFFFF),
body: Column(children: [

  Padding(
    padding: const EdgeInsets.fromLTRB(100,30,100,20),
    child: Center(child: Text("welcome",style:TextStyle(fontSize: 40,fontWeight: FontWeight.bold, color: Color(0xff569696) ),),),
  )

,Center(child:Image.asset("images/undraw_cabin_hkfr 1 (1).png") ,)

,Padding(
  padding: const EdgeInsets.only(top: 16),
  child:   Container(
  
    width: MediaQuery.of(context).size.width,
  
    height: 50,
  
  color: Color(0xff569696),  
  
    child:Row(
  
      mainAxisAlignment: MainAxisAlignment.spaceAround,
  
      children: [
  
  
  
 InkWell(
     onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Singup()),);
    

  },
    
    
    
    child: Container(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold))))

  
  ,Text("singUp",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold))

  
  

  
  ],) ,),
)

,Padding(
  padding: const EdgeInsets.fromLTRB(10,70,10,10),
  child:   TextField(
  
  decoration: InputDecoration(
  
      border: OutlineInputBorder(),
  
      hintText:'UserName' ,fillColor: Color(0xffCADEDE),filled: true,)
  
  
  
  ),
)  
,
Padding(
  padding: const EdgeInsets.fromLTRB(10,40,10,10),
  child:   TextField(
  
  decoration: InputDecoration(
  
      border: OutlineInputBorder(),
  
      hintText:'Password' ,fillColor: Color(0xffCADEDE),filled: true,)
  
  
  
  ),
)  
,InkWell(

onTap: (() {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Thrid()),);
}),

  
  child:   Padding(
  
    padding: const EdgeInsets.fromLTRB(0,70,0,10),
  
    child:   Center(child: Container (
  
    
  
      height: 50,
  
    
  
      width: 200,
  
    
  
      color: Color(0xff569696)
  
    
  
      ,
  
    
  
      child:Center(child:Text("Login",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),) ,)  ,)),
  
  ),
)

,Padding(
  padding: const EdgeInsets.only(left: 130),
  child:   Row(
  
    
  
  
  
    children: [
  
  
  
  Checkbox(value: 
  
  
  
  (mounted), onChanged: ((value) {
  
    
  
  }))
  
  
  
  ,Text("Remember me",style: TextStyle(color: Color(0xff878484),fontSize: 15),)
  
        ],),
)



],),


      
    );
  }
}