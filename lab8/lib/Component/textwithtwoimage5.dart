import 'package:flutter/material.dart';
import 'package:lab8/Page/FivePage.dart';

class TextwithTwoImage5 extends StatefulWidget {
  const TextwithTwoImage5({super.key});

  @override
  State<TextwithTwoImage5> createState() => _TextwithTwoImage5State();
}

class _TextwithTwoImage5State extends State<TextwithTwoImage5> {
  @override
  Widget build(BuildContext context) {
    return 
    Container(color: Colors.green,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(icon: Icon(Icons.location_on),color: Colors.white, onPressed: () { },),
          Text("Home",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
          IconButton(icon: Icon(Icons.logout),color: Colors.white, onPressed: () {Navigator.of(context)
           .push(MaterialPageRoute(builder: (context) => const FivePage())); },),
        ],
      ),
    )
    ;
  }
}