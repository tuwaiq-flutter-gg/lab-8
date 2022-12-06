import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_lab8/component/customTextFeild.dart';
import 'package:my_lab8/component/header.dart';
import 'package:my_lab8/component/myButon.dart';
import 'package:my_lab8/views/home.dart';
import 'package:my_lab8/views/signUp.dart';

class loginPafe extends StatefulWidget {
  const loginPafe({super.key});

  @override
  State<loginPafe> createState() => _loginPafeState();
}

class _loginPafeState extends State<loginPafe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // myCustomButtom(
            
            //   width: MediaQuery.of(context).size.width * .5,
            //   text: "Sign in",
            //   underLine:false,
            // ),
      
            // myHeader(signUp: false,),
Container(
    height: MediaQuery.of(context).size.height*.4,
      child: FractionallySizedBox(
        heightFactor: 1,
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment,
          children:  [
            const Text("Welcome", style: TextStyle(
              color: Color(0xff569696),
              fontSize: 32,
              fontWeight: FontWeight.w800
            ),),
      
      
      
          Image.asset("images/pic1.png"),
      
          Container(
               color: Color(0xff569696),
               width: MediaQuery.of(context).size.width,
               
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                     myCustomButtom(
            
              width: MediaQuery.of(context).size.width * .5,
              text: "Login",
              underLine:true,
            ),
      
                  InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder:((context) =>  MySignUpp()) )),
                    child:  myCustomButtom(
            
              width: MediaQuery.of(context).size.width * .5,
              text: "Sign in",
              underLine:false,
            ),)
                 ],
               ),
          )
            
          ],
        ),
      ),
    ),


            Center(child: FractionallySizedBox(
              
          
              
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*.04,),
                   myCustomTextField(text: "UserName",),
                   SizedBox(height: MediaQuery.of(context).size.height*.05,),
                  myCustomTextField(text: "Password",),
                  SizedBox(height: MediaQuery.of(context).size.height*.05,),

                InkWell(
                  
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder:((context) =>  myHome()) )),

                   child: myCustomButtom(width:  MediaQuery.of(context).size.width*.4, text: "Login",)),

                   SizedBox(height: MediaQuery.of(context).size.height*.05,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                   
                    children: [
                 Container(
                   height: 20,
                   width: 20,
                   margin: EdgeInsets.only(right: 10),
                   color: Color(0xffCADEDE),
                 ),
                  
                    
                   
                    Text("Remember me", style: TextStyle(color: Color(0xff878484), fontSize: 20),),
                  ],)
                ],
              )))
          ],

          
        ),
      ),
    );
  }
}
