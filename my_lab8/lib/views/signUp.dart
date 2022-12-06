import 'package:flutter/material.dart';
import 'package:my_lab8/views/home.dart';
import 'package:my_lab8/views/mylogin.dart';

import '../component/customTextFeild.dart';
import '../component/myButon.dart';

class MySignUpp extends StatelessWidget {
  const MySignUpp({super.key});

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
                     InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder:((context) =>  loginPafe()) )),

                       child: myCustomButtom(
                                 
                                   width: MediaQuery.of(context).size.width * .5,
                                   text: "Login",
                                   underLine:false,
                                 ),
                     ),
      
                    myCustomButtom(
            
              width: MediaQuery.of(context).size.width * .5,
              text: "Sign in",
              underLine:true,
            ),
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
                   SizedBox(height: MediaQuery.of(context).size.height*.04,),
                  myCustomTextField(text: "Email",),
                  SizedBox(height: MediaQuery.of(context).size.height*.04,),

                  myCustomTextField(text: "Password",),
                  SizedBox(height: MediaQuery.of(context).size.height*.04,),

                  myCustomTextField(text: "Confirm password",),
                  SizedBox(height: MediaQuery.of(context).size.height*.06,),

                  InkWell(
                    
                   onTap: () => Navigator.push(context, MaterialPageRoute(builder:((context) =>  myHome()) )),

                    
                    child: myCustomButtom(width:  MediaQuery.of(context).size.width*.4, text: "Sign up",)),

                 

             
                   
               
                ],
              )))
          ],

          
        ),
      ),
    );
  }
}
