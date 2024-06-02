import 'package:flutter/material.dart';
import 'package:weirdcafe/forgotpass/forgotpass.dart';
import 'package:weirdcafe/otp/otp.dart';
import 'package:weirdcafe/registration/registration.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/login.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  height: 125,
                  width: 290,
                  padding: EdgeInsets.only(top: 10, right: 0),
                  child: Image.asset("assets/whitelogo.png"),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  child: Text(
                    "Welcome\nback",
                    style: TextStyle(
                        fontSize: 33,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.0),
                  ),
                  alignment: AlignmentDirectional.centerStart,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(40),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Card(
                          shadowColor: Colors.black,
                          elevation: 5,
                          margin: EdgeInsets.only(top: 20),
                          child: Container(
                            height: 60,
                            child: TextField(
                              controller: email,
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
                        SizedBox(
                          height: 35,
                        ),
                        Card(
                          shadowColor: Colors.black,
                          elevation: 5,
                          child: Container(
                            height: 60,
                            child: TextField(
                              controller: pass,
                              style:
                                  TextStyle(fontSize: 20, letterSpacing: 1.5),
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle:
                                    TextStyle(fontSize: 19, letterSpacing: 0.8),
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sign in",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff4c505b)),
                            ),
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xff4c505b),
                              child: IconButton(
                                  onPressed: () {
                                    if (email.text == "Omkar@gmail" &&
                                        pass.text == "1652") {
                                      print("login successfully");
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Otp()));
                                    } else {
                                      print("invalid creditials");
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content:
                                                  Text("Invalid creditials")));
                                    }
                                  },
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => signup()));
                                },
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff4c505b),
                                      decoration: TextDecoration.underline),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => forgot()));
                                },
                                child: Text("forgot password?",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xff4c505b),
                                        decoration: TextDecoration.underline)))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
