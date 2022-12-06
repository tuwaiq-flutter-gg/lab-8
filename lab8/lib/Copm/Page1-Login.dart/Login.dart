
import 'package:flutter/material.dart';
import 'package:lab8/Copm/Page1-Login.dart/CustomTextField.dart';
import 'package:lab8/constant.dart';

class Login extends StatelessWidget {
  const Login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
             CustomTextField(hintText: "UserName"),
             CustomTextField(hintText: "Password"),

              ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  minimumSize: Size(150, 50)
                ),
                onPressed: (){
                      Navigator.pushReplacementNamed(context, 'LocationPrintItOut');

                }, child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 20),)),
    
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(value: false, onChanged: (v){}),
                    Text("Remmber Me"),
                  ],
                ),
        ],
      ),
    );
  }
}