import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weirdcafe/about.dart';
import 'package:weirdcafe/cart/cinnamon_offer.dart';
import 'package:weirdcafe/cart/latte.dart';
import 'package:weirdcafe/extra.dart';
import 'package:weirdcafe/loginpage.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Weird Cafe",
            style: GoogleFonts.pacifico(fontSize: 24),
          ),
          // backgroundColor: Colors.black45,
          elevation: 20,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => lattecart()));
              },
              icon: Icon(Icons.shopping_cart),
              iconSize: 31,
              color: Colors.black,
            ),
          ],
        ),
        drawer: Drawer(
          child: Container(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                      "assets/whitelogo.png",
                    ),
                  ),
                  currentAccountPictureSize: Size.square(75),
                  accountName: Text(
                    "Kavtikwar Omkar",
                  ),
                  accountEmail: Text(
                    "Kavtikwaromkar@gmail.com",
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    size: 20,
                  ),
                  title: Text("Setting"),
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => tp()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.info,
                    size: 20,
                  ),
                  title: Text("Information"),
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => tp()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 20,
                  ),
                  title: Text("About"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => about()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.help,
                    size: 20,
                  ),
                  title: Text("help"),
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => tp()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    size: 20,
                  ),
                  title: Text("Logout"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginpage()));
                  },
                ),
              ],
            ),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Text("FIND THE BEST \nCOFFEE FOR YOU",
                      style: GoogleFonts.bebasNeue(fontSize: 40)),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.black.withOpacity(0.4),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Colors.lightBlueAccent)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.black45,
                          ),
                        ),
                        hintText: "Find your coffee...",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Expanded(
                //     child: ListView(
                //   scrollDirection: Axis.horizontal,
                //   children: [
                //     coffetile(),
                //   ],
                // )),
                Container(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 300,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage("assets/imgy.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(),
                                  boxShadow: [
                                    // BoxShadow(
                                    //   color: Colors.black87,
                                    //   spreadRadius: 0.2,
                                    //   blurRadius: 4,
                                    // ),
                                    // BoxShadow(
                                    //   color: Colors.white70,
                                    //   spreadRadius: 0.2,
                                    //   blurRadius: 10,
                                    // )
                                  ]),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 300,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage("assets/snacksh.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(),
                                  boxShadow: [
                                    // BoxShadow(
                                    //   color: Colors.black87,
                                    //   spreadRadius: 0.2,
                                    //   blurRadius: 4,
                                    // ),
                                    // BoxShadow(
                                    //   color: Colors.white70,
                                    //   spreadRadius: 0.2,
                                    //   blurRadius: 10,
                                    // )
                                  ]),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 300,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage("assets/desserth.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(),
                                  boxShadow: [
                                    // BoxShadow(
                                    //   color: Colors.black87,
                                    //   spreadRadius: 0.2,
                                    //   blurRadius: 4,
                                    // ),
                                    // BoxShadow(
                                    //   color: Colors.white70,
                                    //   spreadRadius: 0.2,
                                    //   blurRadius: 10,
                                    // )
                                  ]),
                            ),
                            // Container(
                            //   child: Card(
                            //     shadowColor: Colors.black,
                            //     elevation: 10,
                            //     child: Container(
                            //       height: 200,
                            //       width: 150,
                            //       child: ClipRRect(
                            //           borderRadius: BorderRadius.only(
                            //               topLeft: Radius.circular(12),
                            //               topRight: Radius.circular(12),
                            //               bottomLeft: Radius.circular(12),
                            //               bottomRight: Radius.circular(12)),
                            //           child: Image.asset(
                            //             "assets/cf.gif",
                            //             fit: BoxFit.cover,
                            //           )),
                            //     ),
                            //   ),
                            // ),
                            // SizedBox(
                            //   width: 10,
                            // ),
                            // Container(
                            //   child: Card(
                            //     shadowColor: Colors.black,
                            //     elevation: 10,
                            //     child: Container(
                            //       height: 200,
                            //       width: 150,
                            //       child: ClipRRect(
                            //         borderRadius: BorderRadius.only(
                            //             topLeft: Radius.circular(12),
                            //             topRight: Radius.circular(12),
                            //             bottomLeft: Radius.circular(12),
                            //             bottomRight: Radius.circular(12)),
                            //         child: Image.asset("assets/clgf.gif"),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // SizedBox(
                            //   width: 10,
                            // ),
                            // Container(
                            //   child: Card(
                            //     shadowColor: Colors.black,
                            //     elevation: 10,
                            //     child: Container(
                            //       height: 200,
                            //       width: 150,
                            //       child: ClipRRect(
                            //         borderRadius: BorderRadius.only(
                            //             topLeft: Radius.circular(12),
                            //             topRight: Radius.circular(12),
                            //             bottomLeft: Radius.circular(12),
                            //             bottomRight: Radius.circular(12)),
                            //         child: Image.asset("assets/snacks.gif"),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // SizedBox(
                            //   width: 10,
                            // ),
                            // Container(
                            //   child: Card(
                            //     shadowColor: Colors.black,
                            //     elevation: 10,
                            //     child: Container(
                            //       height: 200,
                            //       width: 150,
                            //       child: ClipRRect(
                            //         borderRadius: BorderRadius.only(
                            //             topLeft: Radius.circular(12),
                            //             topRight: Radius.circular(12),
                            //             bottomLeft: Radius.circular(12),
                            //             bottomRight: Radius.circular(12)),
                            //         child: Image.asset("assets/dessert.gif"),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // SizedBox(
                            //   width: 10,
                            // ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 225,
                            width: 348,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage("assets/offer.png"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black87,
                                    spreadRadius: 0.2,
                                    blurRadius: 4,
                                  ),
                                  BoxShadow(
                                    color: Colors.white70,
                                    spreadRadius: 0.2,
                                    blurRadius: 10,
                                  )
                                ]),

                            // child: Card(
                            //   shadowColor: Colors.black,
                            //   elevation: 5,
                            //   child: Container(
                            //     child: ClipRRect(
                            //       borderRadius: BorderRadius.only(
                            //           topLeft: Radius.circular(12),
                            //           topRight: Radius.circular(12),
                            //           bottomLeft: Radius.circular(12),
                            //           bottomRight: Radius.circular(12)),
                            //       child: Image.asset(
                            //         "assets/offer.png",
                            //         fit: BoxFit.cover,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 170, left: 33),
                            child: Container(
                              width: 105,
                              height: 30,
                              decoration: BoxDecoration(),
                              child: FloatingActionButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                cinnamon_offer()));
                                  },
                                  child: Text(
                                    "Order Now",
                                    style: TextStyle(fontSize: 18),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ));
  }
}
