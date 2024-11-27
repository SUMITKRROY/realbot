



// ignore_for_file: camel_case_types

import 'dart:async';



import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:realbot/utils/styles.dart';
import 'package:realbot/welcome.dart';

import 'Login/Login_Screen.dart';
import 'chat_app.dart';





class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 03), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const LoginScreen()
          ));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        /*  Text(
            "Welcome  real bot",
            style:  Styles.headingStyle,
            textAlign: TextAlign.center,
          ),*/
          Container(
            //alignment: Alignment.center,
            child: (Image.asset(
              'assets/images/rtc.png',
              //fit: BoxFit.cover,
            )),
          ),




        ],
      ),)
    );
  }






}