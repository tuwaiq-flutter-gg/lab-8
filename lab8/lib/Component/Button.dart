import 'package:flutter/material.dart';
import 'package:lab8/Page/SecoundPage.dart';

class Button extends StatelessWidget {
  const Button({super.key, this.title});
final String? title;
  @override
  Widget build(BuildContext context) {
    return 
     ElevatedButton(
          child: Text(title.toString()),
          style: ElevatedButton.styleFrom(
            
            primary: Colors.green,
            textStyle: const TextStyle(
                color: Colors.white,
                 fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onPressed: () {Navigator.of(context)
           .push(MaterialPageRoute(builder: (context) => const SignUp()));},
        )

    ;
  }
}