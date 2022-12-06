import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:lab8/views/signOut.dart';

import '../components/customtextfield.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                              Column(
                                children: [
                                  const Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 32),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 8,
                                    ),
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
                              const Text(
                                "sign Up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 32),
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
                            hint: "Password",
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
                                              const signOut()),
                                      (Route<dynamic> route) =>
                                          route is SignIn);
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff569696)),
                              child: const Text(
                                "Sign in",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
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
      ]),
    );
  }
}
