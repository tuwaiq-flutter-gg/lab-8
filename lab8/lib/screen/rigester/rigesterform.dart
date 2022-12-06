import 'package:flutter/material.dart';
import 'package:lao8/Components/custom.dart';

class rigsterform extends StatelessWidget {
  const rigsterform({super.key, this.text, this.press});
  final String? text;
  final Function? press;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 30, left: 30),
      child: TextButton(
        onPressed: press as void Function()?,
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class loginfprm extends StatelessWidget {
  const loginfprm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10, left: 10),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customTextFeild(hinttext: 'UserName'),
            SizedBox(
              height: 30,
            ),
            customTextFeild(hinttext: 'Password'),
          ],
        ),
      ),
    );
  }
}
