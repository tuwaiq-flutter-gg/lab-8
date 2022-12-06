import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/views/signIn.dart';

import '../components/customtextfield.dart';

// ignore: camel_case_types
class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
          Column(
        children: [
          const Center(
            child: Text("Welcome",
                style: TextStyle(
                    fontSize: 34,
                    color: Color(0xff569696),
                    fontWeight: FontWeight.w900)),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 130,
                  width: 160,
                  decoration: const BoxDecoration(
                    color: Color(0xff569696),
                  ),
                  child: Image.asset(
                    "images/Image1.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 27),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: const Color(0xff569696),
                      height: 63,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 11),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 32),
                            ),
                            Column(
                              children: [
                                const Text(
                                  "sign Up",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 32),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Container(
                                    width: 110,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 4,
                                          offset: Offset(1, 1),
                                        ),
                                      ],
                                      color: Colors.white,
                                    ),
                                    height: 5,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: CustomTextField(
                            hint: "Username",
                          ),
                        ),
                        CustomTextField(
                          hint: "E-mail",
                        ),
                        CustomTextField(
                          hint: "Password",
                        ),
                        CustomTextField(
                          hint: "Confirm Password",
                        ),
                        Container(
                  width: 160,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const SignIn()),
                            (Route<dynamic> route) => route is SignIn);
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff569696)),
                    child: const Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )
      ]
      ),
    );
  }
}

