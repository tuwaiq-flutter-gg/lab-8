import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore: camel_case_types
class TextLogIn extends StatelessWidget {
  const TextLogIn(
      {super.key,
      required this.text,
      required this.UnderLine,
      required this.calassNeam
      
      });
  final String text;
  final bool UnderLine;
  final Function calassNeam;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        children: [
          InkWell(
            onTap: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => calassNeam())));
            }),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          UnderLine == true ? const Divider(color: Colors.white) : Text(""),
        ],
      ),
    );
  }
}
