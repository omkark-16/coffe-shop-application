import 'package:flutter/material.dart';
import 'package:weirdcafe/loginpage.dart';

class regVerify extends StatefulWidget {
  const regVerify({super.key});

  @override
  State<regVerify> createState() => _regVerifyState();
}

class _regVerifyState extends State<regVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue.shade200,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 100, left: 100, right: 100),
              child: Image.asset("assets/sign.gif"),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 70, right: 70),
              child: Text(
                "Succesfully\n",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF2E7D32),
                    fontSize: 40),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 10),
              child: Text(
                "Your Account has been\n             Created",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black54,
                    fontSize: 25),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginpage()));
                  },
                  child: Text(
                    "OKEY",
                    style: TextStyle(fontSize: 18, color: Color(0xff4c505b)),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
