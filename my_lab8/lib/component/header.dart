import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_lab8/component/myButon.dart';

class myHeader extends StatelessWidget {
  bool signUp;
  bool? login;
   myHeader({super.key, required this.signUp}){
     if(this.signUp){
       login=false;

     }else{
       login=true;
     }
   }

  @override
  Widget build(BuildContext context) {
    return Container(
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
              underLine:(login),
            ),
      
                    myCustomButtom(
            
              width: MediaQuery.of(context).size.width * .5,
              text: "Sign in",
              underLine:signUp,
            ),
                 ],
               ),
          )
            
          ],
        ),
      ),
    );
  }
}