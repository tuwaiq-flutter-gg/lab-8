import 'package:flutter/material.dart';


class mySimpleAppBar extends StatelessWidget {
  Widget? left,right,center;
   mySimpleAppBar({super.key,this.center,this.left,this.right});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      
      widthFactor: 1,
   
      
      child: Row(
    
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

    
        children: [
         
          Container(child: left,),
           Container(child: center,),
          Container(child: right,),

       
        ],
    
    
      ),
    );
  }
}