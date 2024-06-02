import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weirdcafe/otp/otpverification.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController p1 = TextEditingController();
  TextEditingController p2 = TextEditingController();
  TextEditingController p3 = TextEditingController();
  TextEditingController p4 = TextEditingController();

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
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20),
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 125,
                  child: Image.asset("assets/whitelogo.png"),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Container(
                child: Text(
                  "Otp Verification",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  "Enter 4 digit number that sent to\nYour number",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 70,
                    width: 60,
                    child: TextField(
                      controller: p1,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: "",
                        hintText: "0",
                        hintStyle: TextStyle(color: Colors.black26),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black87)),
                      ),
                      textInputAction: TextInputAction.next,
                      autofocus: true,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 60,
                    child: TextField(
                      controller: p2,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: "",
                        hintText: "0",
                        hintStyle: TextStyle(color: Colors.black26),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black87)),
                      ),
                      textInputAction: TextInputAction.next,
                      autofocus: true,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 60,
                    child: TextField(
                      controller: p3,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: "",
                        hintText: "0",
                        hintStyle: TextStyle(color: Colors.black26),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black87)),
                      ),
                      textInputAction: TextInputAction.next,
                      autofocus: true,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 60,
                    child: TextField(
                      controller: p4,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: "",
                        hintText: "0",
                        hintStyle: TextStyle(color: Colors.black26),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black87)),
                      ),
                      textInputAction: TextInputAction.done,
                      autofocus: true,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                height: 35,
                width: 120,
                child: ElevatedButton(
                    onPressed: () {
                      print(p1.text);
                      print(p2.text);
                      print(p3.text);
                      print(p4.text);

                      if (p1.text == "2" &&
                          p2.text == "0" &&
                          p3.text == "2" &&
                          p4.text == "3") {
                        print("Otp verified");

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => otpVerify()));
                      } else {
                        print("Enter valid otp");

                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter valid otp")));
                      }
                    },
                    child: const Text(
                      "Verify",
                      style: TextStyle(fontSize: 20),
                    )),
              )
            ],
          ),
        )),
      ),
    );
  }
}
