import 'package:flutter/material.dart';

class TextTwoSide extends StatelessWidget {
  const TextTwoSide({super.key, this.title, this.title1});
  final String? title,title1;
  @override
  Widget build(BuildContext context) {
    return Container(
             color: Colors.lightGreen,
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(title.toString(),style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(title1.toString(),style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                ],
                ),
                );
  }
}