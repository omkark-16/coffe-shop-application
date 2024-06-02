import 'package:flutter/material.dart';
import 'package:weirdcafe/forgotpass/resetotp.dart';

class forgot extends StatefulWidget {
  const forgot({super.key});

  @override
  State<forgot> createState() => _forgotState();
}

class _forgotState extends State<forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Text(
                        "Reset Password",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Enter your email adress to \n send otp for verification",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueGrey.shade600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(45),
                        child: Card(
                          shadowColor: Colors.black,
                          elevation: 5,
                          margin: EdgeInsets.only(top: 20),
                          child: Container(
                            height: 60,
                            child: TextField(
                              style:
                                  TextStyle(fontSize: 20, letterSpacing: 1.5),
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle:
                                    TextStyle(fontSize: 19, letterSpacing: 0.8),
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none),
                              ),
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => otpreset()));
                          },
                          child: Text("Send", style: TextStyle(fontSize: 25)))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
