import 'package:flutter/material.dart';
import 'package:weirdcafe/homescreen.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage1()));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 90, left: 40),
        child: Container(
          height: 400,
          width: 280,
          child: Card(
            color: Colors.blueGrey.shade50,
            elevation: 20,
            shadowColor: Colors.blue.shade300,
            child: Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/omi.png"),
                      radius: 70,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              width: 220,
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Container(
                                    width: 60,
                                    alignment: Alignment.bottomLeft,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            "Name:",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 0.8),
                                          ),
                                          alignment: Alignment.centerLeft,
                                        ),
                                        Container(
                                          child: Text(
                                            "Course:",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 0.8),
                                          ),
                                          alignment: Alignment.centerLeft,
                                        ),
                                        Container(
                                          child: Text(
                                            "Year:",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 0.8),
                                          ),
                                          alignment: Alignment.centerLeft,
                                        ),
                                        Container(
                                          child: Text(
                                            "Dob:",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 0.8),
                                          ),
                                          alignment: Alignment.centerLeft,
                                        ),
                                        Container(
                                          child: Text(
                                            "Mob:",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 0.8),
                                          ),
                                          alignment: Alignment.centerLeft,
                                        ),
                                        Container(
                                          child: Text(
                                            "Add:",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 0.8),
                                          ),
                                          alignment: Alignment.centerLeft,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 140,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Omkar Kavtikwar",
                                            style: TextStyle(
                                                fontSize: 15,
                                                letterSpacing: 0.8),
                                          ),
                                          alignment: Alignment.centerLeft,
                                        ),
                                        Container(
                                          child: Text(
                                            "Computer Engg.",
                                            style: TextStyle(
                                                fontSize: 15,
                                                letterSpacing: 0.8),
                                          ),
                                          alignment: Alignment.centerLeft,
                                        ),
                                        Container(
                                          child: Text(
                                            "Final Year",
                                            style: TextStyle(
                                                fontSize: 15,
                                                letterSpacing: 0.8),
                                          ),
                                          alignment: Alignment.centerLeft,
                                        ),
                                        Container(
                                          child: Text(
                                            "2002/05/16",
                                            style: TextStyle(
                                                fontSize: 15,
                                                letterSpacing: 0.8),
                                          ),
                                          alignment: Alignment.centerLeft,
                                        ),
                                        Container(
                                          child: Text(
                                            "8308940983",
                                            style: TextStyle(
                                                fontSize: 15,
                                                letterSpacing: 0.8),
                                          ),
                                          alignment: Alignment.centerLeft,
                                        ),
                                        Container(
                                          child: Text(
                                            "Visava Nagar",
                                            style: TextStyle(
                                                fontSize: 15,
                                                letterSpacing: 0.8),
                                          ),
                                          alignment: Alignment.centerLeft,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
