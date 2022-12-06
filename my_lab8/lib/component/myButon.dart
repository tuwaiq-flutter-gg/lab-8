import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class myCustomButtom extends StatelessWidget {
  double? width;
  bool? underLine;
  String? text;

  myCustomButtom({super.key, this.width, this.text, this.underLine});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.only(top :5, bottom: 5),
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Color(0xff569696),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$text",
              style: const TextStyle(
                    
                  color: Colors.white, fontSize: 32, fontWeight: FontWeight.w800),
            ),

            underLine==true? const Divider(
              color: Colors.white,
              thickness: 5,
              indent: 50,
              endIndent: 50,
             
            
            ): SizedBox(),
          ],
        ),
      ),
    );
  }
}
