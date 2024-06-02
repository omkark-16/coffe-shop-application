import 'package:flutter/material.dart';
import 'package:weirdcafe/menu.dart';

class ordersuccessfull extends StatefulWidget {
  const ordersuccessfull({super.key});

  @override
  State<ordersuccessfull> createState() => _ordersuccessfullState();
}

class _ordersuccessfullState extends State<ordersuccessfull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue.shade200,
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 175, left: 100, right: 100),
                child: Image.asset("assets/sign.gif"),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Text(
                  "Order successfully\n           Placed",
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
                  "Enjoy our service",
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
                          MaterialPageRoute(builder: (context) => menu()));
                    },
                    child: Text(
                      "Okey",
                      style: TextStyle(fontSize: 18, color: Color(0xff4c505b)),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
