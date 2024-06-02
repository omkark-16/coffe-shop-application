import 'package:flutter/material.dart';

class tp extends StatefulWidget {
  const tp({super.key});

  @override
  State<tp> createState() => _tpState();
}

class _tpState extends State<tp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Container(
            child: Text(
              "            Opps 😑\n  We will soon update\n          this page",
              style: TextStyle(
                  letterSpacing: 0.5,
                  color: Colors.redAccent,
                  fontWeight: FontWeight.w500,
                  fontSize: 28),
            ),
          ),
        ),
      ),
    );
  }
}
