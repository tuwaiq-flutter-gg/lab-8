
import 'package:flutter/material.dart';
import 'package:lab8/Copm/Page1-Login.dart/CustomTextField.dart';
import 'package:lab8/constant.dart';

class SingUp extends StatelessWidget {
  const SingUp({
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
            CustomTextField(hintText: "Email"),
            CustomTextField(hintText: "Password"),
            CustomTextField(hintText: "ConfirmPassword"),
           ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  minimumSize: Size(150, 50)
                ),
                onPressed: (){}, child: Text("Sing Up", style: TextStyle(color: Colors.white, fontSize: 20),)),
        ],
      ),
    );
  }
}