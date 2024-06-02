import 'package:flutter/material.dart';

class tp1 extends StatefulWidget {
  const tp1({super.key});

  @override
  State<tp1> createState() => _tp1State();
}

class _tp1State extends State<tp1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          backgroundColor: Colors.yellow.shade900,
          body: Container(
            color: Colors.black87,
            height: 799,
            width: 356,
          )),
    );
  }
}
