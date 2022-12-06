import 'package:flutter/material.dart';
import 'package:lab8/Component/textfiled.dart';

class FivePage extends StatefulWidget {
  const FivePage({super.key});

  @override
  State<FivePage> createState() => _FivePageState();
}

class _FivePageState extends State<FivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(color: Colors.green,
          width: MediaQuery.of(context).size.width,
          height: 60,
          child: Center(child: Text("Log out",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),))
           ),
           SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text("Confirm your log out please!",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            TextFiled(title: "Pasword"),
            SizedBox(height: 50,),
            Center(
              child: ElevatedButton(
                child: Text("Log Out"),style: ElevatedButton.styleFrom(
              primary: Colors.green,
              textStyle: const TextStyle(
                  color: Colors.white,
                   fontSize: 15, fontWeight: FontWeight.bold),
          ),
              onPressed: (){}),
            )

        ],
      )
    );
  }
}