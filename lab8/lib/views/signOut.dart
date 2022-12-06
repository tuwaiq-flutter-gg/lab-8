import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:lab8/components/customButton.dart';
import 'package:lab8/components/customtextfield.dart';
import 'package:lab8/views/signUp.dart';

class signOut extends StatefulWidget {
  const signOut({super.key});

  @override
  State<signOut> createState() => _signOutState();
}

class _signOutState extends State<signOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff569696),
        title: Text(
          "Log Out",
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w700),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * .45,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Confirrm your log out please ! ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            Container(
                padding: EdgeInsets.only(left: 20),
                child: CustomTextField(
                  hint: "Passowrd",
                )),
            Center(
                child: InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => signUp()))),
                    child: CustomButton(
                      title: "LogOut",
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => signUp()),
                            (Route<dynamic> route) => false);
                      },
                    ))),
          ],
        ),
      ),
    );
  }
}
