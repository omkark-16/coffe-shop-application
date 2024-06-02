import 'dart:async';
import 'package:flutter/material.dart';
import 'package:weirdcafe/homescreen.dart';

class otpVerify extends StatefulWidget {
  const otpVerify({super.key});

  @override
  State<otpVerify> createState() => _otpVerifyState();
}

class _otpVerifyState extends State<otpVerify> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue.shade200,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 225, left: 100, right: 100),
              child: Image.asset("assets/sign.gif"),
            ),
            Container(
              padding: EdgeInsets.only(top: 60, left: 70, right: 70),
              child: Text(
                "Succesfully\n   Verified",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    // color: Colors.lightGreenAccent.shade400,
                    color: Color(0xFF2E7D32),
                    fontSize: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
