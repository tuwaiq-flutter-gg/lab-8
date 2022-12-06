import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_lab8/views/mylogin.dart';

import '../component/customTextFeild.dart';
import '../component/myButon.dart';

class logOut extends StatelessWidget {
  const logOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff569696), 
      title: Text("Log Out", style: TextStyle(
        color:Colors.white,
        fontSize: 32,
        fontWeight: FontWeight.w700
      ),),
      automaticallyImplyLeading: false,
      centerTitle: true,
      ),

body:     Container(
  height: MediaQuery.of(context).size.height*.45,
  width: MediaQuery.of(context).size.width,
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
      Container(
        
         padding: EdgeInsets.only(left: 20),
        child: Text("Confirrm your log out please ! ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),

       Container(
         padding: EdgeInsets.only(left: 20),
         child: myCustomTextField(text: "Password",)),

                         Center(child: InkWell(
                           
        onTap: () => Navigator.push(context, MaterialPageRoute(builder:((context) => loginPafe()) )),

                           child: myCustomButtom(width:  MediaQuery.of(context).size.width*.4, text: "Log Out",))),

      ],
      
      ),
),


    );
  }
}