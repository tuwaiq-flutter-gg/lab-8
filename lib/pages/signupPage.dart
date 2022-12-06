import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab8/components/myTextField.dart';
import 'package:lab8/main.dart';
import 'package:lab8/pages/homePage.dart';
import 'package:lab8/pages/loginPage.dart';
import '../classes/user.dart';
import '../style.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key, required this.tempUser});
  final user tempUser;
  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                "Welcome",
                style: GoogleFonts.poppins(
                  color: greenBlue,
                  fontWeight: FontWeight.w900,
                  fontSize: 32,
                ),
              ),
              SvgPicture.asset("assets/images/undraw_cabin_hkfr 1.svg"),
              Container(
                height: 63,
                margin: const EdgeInsets.only(top: 20, bottom: 62),
                color: greenBlue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  LoginPage(tempUser: tempUser)),
                          (route) => false,
                        );
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 32,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Sign Up",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 32,
                          ),
                        ),
                        Expanded(
                            child: SvgPicture.asset("assets/images/Line 1.svg"))
                      ],
                    )
                  ],
                ),
              ),
              MyTextField(
                controller: usernameController,
                hintText: "username",
              ),
              MyTextField(
                controller: passwordController,
                hintText: "email",
              ),
              MyTextField(
                controller: passwordController,
                hintText: "password",
              ),
              MyTextField(
                controller: usernameController,
                hintText: "Comfirm password",
              ),
              Container(
                width: 217,
                child: ElevatedButton(
                  onPressed: () {
                    try {
                      // if (usernameController.text == tempUser.username &&
                      //     passwordController.text == tempUser.password) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(tempUser: u),
                        ),
                        (route) => false,
                      );
                      // }
                    } catch (error) {}
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: greenBlue,
                  ),
                  child: Text(
                    "Sign up",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
