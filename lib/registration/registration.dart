import 'package:flutter/material.dart';
import 'package:weirdcafe/loginpage.dart';
import 'package:weirdcafe/registration/regsuccessfully.dart';
import 'package:fluttertoast/fluttertoast.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/register.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.012),
                    alignment: Alignment.centerRight,
                    height: 125,
                    width: 290,
                    child: Image.asset("assets/whitelogo.png"),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.03,
                        left: MediaQuery.of(context).size.width * 0.07),
                    child: Text(
                      "Create\nAccount",
                      style: TextStyle(
                          fontSize: 33,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.0),
                    ),
                    alignment: AlignmentDirectional.centerStart,
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Container(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.02,
                          right: 35,
                          left: 35),
                      child: Column(
                        children: [
                          Card(
                            shadowColor: Colors.black87,
                            elevation: 7,
                            child: Container(
                              margin: EdgeInsets.only(top: 2),
                              height: 50,
                              child: TextField(
                                controller: name,
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  hintText: "Enter your name...",
                                  hintStyle: TextStyle(
                                      fontSize: 19, letterSpacing: 0.8),
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Card(
                            shadowColor: Colors.black87,
                            elevation: 7,
                            child: Container(
                              margin: EdgeInsets.only(top: 2),
                              height: 50,
                              child: TextField(
                                controller: name,
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  hintText: "Enter email here...",
                                  hintStyle: TextStyle(
                                      fontSize: 19, letterSpacing: 0.8),
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Card(
                            shadowColor: Colors.black87,
                            elevation: 7,
                            child: Container(
                              margin: EdgeInsets.only(top: 2),
                              height: 50,
                              child: TextField(
                                controller: name,
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  hintText: "Enter mobile number...",
                                  hintStyle: TextStyle(
                                      fontSize: 19, letterSpacing: 0.8),
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Card(
                            shadowColor: Colors.black87,
                            elevation: 7,
                            child: Container(
                              margin: EdgeInsets.only(top: 2),
                              height: 50,
                              child: TextField(
                                controller: name,
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  hintText: "Create Password",
                                  hintStyle: TextStyle(
                                      fontSize: 19, letterSpacing: 0.8),
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Register",
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
                                      if (name.text == "Omkar" &&
                                          email.text == "Omkar@gmail" &&
                                          pass.text == "1652") {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    regVerify()));
                                      } else {
                                        Fluttertoast.showToast(
                                            msg: "Please fill the all details",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.BOTTOM,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor:
                                                Colors.red.shade300,
                                            textColor: Colors.white,
                                            fontSize: 16.0);
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
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Loginpage()));
                                  },
                                  child: Text(
                                    "Already account? Sign in",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xff4c505b),
                                        decoration: TextDecoration.underline),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
