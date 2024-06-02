import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class coffetile extends StatelessWidget {
  const coffetile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 5),
            child: SizedBox(
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 5)],
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12)),
                      child: Image.asset("assets/latte.jpg"),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      width: 150,
                      child: Text(
                        "Latte",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      width: 150,
                      child: Text(
                        "Best coffee",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "60rs",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 5),
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Icon(
                              CupertinoIcons.add,
                              size: 20,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
