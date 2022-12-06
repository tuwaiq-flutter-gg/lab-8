

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/styles/styles.dart';
import 'package:lab8/views/Login.dart';
import 'package:lab8/views/SignUp.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 170,
          backgroundColor: primaryColor,
          centerTitle: true,
          title: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
    
                // big welcome
                const Center(child: Text("Welcome" , style: TextStyle(color: primaryColor , fontWeight: FontWeight.bold , fontSize: 32),)),
                
                // welcome image
                Center(child: Image.asset("images/undraw_cabin_hkfr 1.png")),
                
              ],
            ),
          ),
    
          // Tabs
          bottom: const TabBar(
            
            tabs: [
              Tab(child: Text("Login" , style: const TextStyle( color: textColor , fontSize: 32 , fontWeight: FontWeight.bold ),),),
              Tab(child: Text("Sign Up" , style: const TextStyle( color: textColor , fontSize: 32 , fontWeight: FontWeight.bold ),),),
            ],
    
          ),
        
        ),
    
        body: const TabBarView(
          children: [
            
            // Login Tab
            Login(),
    
            // Sign Up Tab
            SignUp(),
            
          ],
        ),
      ),
    );
  }
}