import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weirdcafe/homescreen.dart';
import 'package:weirdcafe/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    Timer(
        Duration(seconds: 4),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Loginpage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/splash.gif"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
              child: Text(
                "Weird coffee Shop",
                style: GoogleFonts.pacifico(
                  fontSize: 40,
                  color: Colors.black87,
                ),
              ),
            ),
            Container(
              height: 402,
              child: GestureDetector(
                onHorizontalDragEnd: (details) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage1()));
                },
              ),
            ),
            SizedBox(
              height: 180,
            ),
            Container(
              height: 100,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage1()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
