import 'package:flutter/material.dart';
import 'package:weirdcafe/cart/ordersuccessfull.dart';

class cappucino extends StatefulWidget {
  const cappucino({super.key});

  @override
  State<cappucino> createState() => _cappucinoState();
}

class _cappucinoState extends State<cappucino> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Cart",
            style: TextStyle(
                letterSpacing: 0.5,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 28),
          ),
          elevation: 20,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 25, top: 50),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 14),
                    alignment: Alignment.bottomLeft,
                    child: SizedBox(
                        height: 180,
                        width: 180,
                        child: Card(
                          shadowColor: Colors.black,
                          elevation: 10,
                          child: Container(
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image.asset("assets/cappucino.jpg"),
                            ),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 70, left: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Item name",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text("Cappucino Coffee",
                                  style: TextStyle(fontSize: 18)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Base price",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text("80.00", style: TextStyle(fontSize: 18)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Taxes",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text("20.00", style: TextStyle(fontSize: 18)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "dilivery charges",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text("30.00", style: TextStyle(fontSize: 18)),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.w500),
                              ),
                              Text("130.00",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                          SizedBox(
                            height: 13,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      child: const Text("Checkout",
                          style: TextStyle(fontSize: 18)),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              scrollable: true,
                              title: const Text("Confirm Order"),
                              content: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Form(
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          labelText: "Mobile number",
                                          icon: Icon(Icons.account_box),
                                        ),
                                      ),
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          labelText: "Adress",
                                          icon: Icon(Icons.location_city),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              actions: [
                                ElevatedButton(
                                  child: const Text("submit"),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ordersuccessfull()));
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
