import 'package:flutter/material.dart';
import 'package:weirdcafe/about.dart';
import 'package:weirdcafe/homepage.dart';
import 'package:weirdcafe/menu.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  int currentindex = 0;
  List page = [home(), menu(), about()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (value) {
            setState(() {
              currentindex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
          ]),
      body: page[currentindex],
    );
  }
}
