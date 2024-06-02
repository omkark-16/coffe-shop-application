import 'package:flutter/material.dart';
import 'package:weirdcafe/loginpage.dart';

class resetVerify extends StatefulWidget {
  const resetVerify({super.key});

  @override
  State<resetVerify> createState() => _resetVerifyState();
}

class _resetVerifyState extends State<resetVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue.shade200,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 170, left: 100, right: 100),
              child: Image.asset("assets/sign.gif"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Text(
                "Password Updated",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF2E7D32),
                    fontSize: 35),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 10),
              child: Text(
                "Now you can login using \n     updated password",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black54,
                    fontSize: 22),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginpage()));
                  },
                  child: Text(
                    "sign in",
                    style: TextStyle(fontSize: 18, color: Color(0xff4c505b)),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
