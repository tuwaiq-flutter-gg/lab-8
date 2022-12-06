import 'package:flutter/material.dart';

class TitleCenter extends StatelessWidget {
  const TitleCenter({super.key, this.titletext});
  final String? titletext;

  @override
  Widget build(BuildContext context) {
    return 
    Center(child: Text(titletext.toString(),style:TextStyle(
      color: Colors.lightGreen,fontSize: 20, fontWeight: FontWeight.bold)))
    ;
  }
}