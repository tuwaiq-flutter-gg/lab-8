import 'package:flutter/material.dart';
import 'package:lao8/Components/style.dart';

class customTextFeild extends StatelessWidget {
  final hinttext;
  const customTextFeild({super.key, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 30, left: 30),
      child: Container(
        padding: EdgeInsets.only(left: 10, bottom: 10),
        decoration: BoxDecoration(
            color: textfiledcolor1, borderRadius: BorderRadius.circular(5)),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hinttext,
              hintStyle: TextStyle(color: textfiledcolor2)),
        ),
      ),
    );
  }
}

class coustombuttom extends StatelessWidget {
  const coustombuttom({super.key, required this.Title,required this.ontap});
  final String? Title; 
  final Function? ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap as void Function()?,
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width / 3,
        color: Primarycolor,
        child: Center(
          child: Text(
            Title!,
            style: TextStyle(
                fontSize: 26, color: whait, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
