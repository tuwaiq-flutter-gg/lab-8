import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/allPages/welcome.dart';

class logout extends StatefulWidget {
  const logout({super.key});

  @override
  State<logout> createState() => _logoutState();
}

class _logoutState extends State<logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Color(0xff569696) ,
        title:Text( "Log Out" , style: TextStyle(color: Colors.white , fontSize: 30 , fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:60),
                child: Text("confirm your log out please ! " ,style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              
            ),
            SizedBox(height: 20,),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width-40,
              child: TextField(
                decoration: InputDecoration(
                  
                  labelText: "Password",
                  filled: true,
                  fillColor:  Color(0xffCADEDE),),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 46,
              width: 120,
              color: Color(0xff569696) ,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xff569696)),
                onPressed: (){
                  Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => welcomepage()));
                }, child: Text("Log Out ",style: TextStyle(fontWeight: FontWeight.bold))),
            )
          ],
        ),
      ),
    );
  }
}